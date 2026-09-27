# Run after installing the pinned dependencies described in tools/README.md.
# This pipeline reads the APK as data; it never starts Android or sample code.
$ErrorActionPreference = 'Stop'
$taskRoot = Split-Path $PSScriptRoot -Parent
$taskPreviousConfig = $env:JADX_CONFIG_DIR
$taskPreviousCache = $env:JADX_CACHE_DIR
$taskPreviousTmp = $env:JADX_TMP_DIR
Push-Location -LiteralPath $taskRoot
try {
    $taskHash = (Get-FileHash -LiteralPath 'sample.apk' -Algorithm SHA256).Hash.ToLowerInvariant()
    if ($taskHash -ne '49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0') {
        throw 'Unexpected sample.apk SHA-256'
    }
    New-Item -ItemType Directory -Force -Path 'work' | Out-Null
    $env:JADX_CONFIG_DIR = Join-Path $taskRoot 'work/jadx-config'
    $env:JADX_CACHE_DIR = Join-Path $taskRoot 'work/jadx-cache'
    $env:JADX_TMP_DIR = Join-Path $taskRoot 'work/jadx-tmp'
    python tools/bootstrap_jadx.py --verify-only --check-version
    if ($LASTEXITCODE -ne 0) { throw 'JADX dependency verification failed' }
    python tools/inventory.py > work/inventory-run.log
    if ($LASTEXITCODE -ne 0) { throw 'Sample inventory failed' }
    java -Xmx4g -cp 'work/tools/jadx-maven/lib/*' tools/Decompile.java sample.apk work/jadx > work/jadx-decompile.log 2>&1
    if ($LASTEXITCODE -ne 0) { throw 'JADX reported errors; inspect work/jadx-decompile.log' }
    java -Xmx3g -cp 'work/tools/jadx-maven/lib/*' tools/ExtractControlSmali.java > work/control-smali.log 2>&1
    if ($LASTEXITCODE -ne 0) { throw 'Smali extraction failed; inspect work/control-smali.log' }
    python tools/extract_evidence.py
    if ($LASTEXITCODE -ne 0) { throw 'Connection evidence extraction failed' }
    python tools/extract_control_evidence.py
    if ($LASTEXITCODE -ne 0) { throw 'Control evidence extraction failed' }
    python tools/analyze-native.py
    if ($LASTEXITCODE -ne 0) { throw 'Native evidence extraction failed' }
    python tools/extract_evidence.py --check
    if ($LASTEXITCODE -ne 0) { throw 'Connection evidence comparison failed' }
    Write-Output 'Static analysis pipeline completed. Review reports for interpretation and limitations.'
}
finally {
    $env:JADX_CONFIG_DIR = $taskPreviousConfig
    $env:JADX_CACHE_DIR = $taskPreviousCache
    $env:JADX_TMP_DIR = $taskPreviousTmp
    Pop-Location
}
