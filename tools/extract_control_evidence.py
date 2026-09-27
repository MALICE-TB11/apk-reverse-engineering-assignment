"""Extract control evidence for the recorded sample; run after Decompile.java and ExtractControlSmali.java.

Source ranges deliberately target SHA-256 49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0.
Paths are resolved relative to this script. Does not execute or send sample code.
"""
from pathlib import Path
import hashlib
import re

ROOT = Path(__file__).resolve().parent.parent
SRC = ROOT / 'work/jadx/sources'
OUT = ROOT / 'src-extract/control'
SHA = '49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0'

# Guard provenance before creating directories or writing any evidence.
digest = hashlib.sha256()
with (ROOT / 'sample.apk').open('rb') as sample:
    for chunk in iter(lambda: sample.read(1024 * 1024), b''):
        digest.update(chunk)
actual_sha = digest.hexdigest()
if actual_sha != SHA:
    raise SystemExit(f'APK SHA-256 mismatch: expected {SHA}, got {actual_sha}; no evidence written')
OUT.mkdir(exist_ok=True)

HEADER = f'''// APK: sample.apk; SHA-256: {SHA}
// DEX: classes6.dex; Tool: JADX 1.5.6 (noReplaceConsts, noInlineMethods).
// Verbatim selected decompiler output; not a buildable source file.
// Original paths and decompiler-output line numbers accompany each excerpt.
// Decompiler-inferred local names are not asserted to be original source names.
'''

def source_label(path):
    # Preserve the original excerpt labels on every host platform.
    return path.as_posix().replace('/', '\\')

def method(path, name):
    lines = (SRC/path).read_text(encoding='utf-8').splitlines()
    start = next(i for i,l in enumerate(lines) if re.search(r'\b'+re.escape(name)+r'\([^;]*\)\s*\{',l) and re.match(r'\s*(public|private|protected|static) ',l))
    balance = 0
    for end in range(start,len(lines)):
        balance += lines[end].count('{') - lines[end].count('}')
        if balance == 0:
            return f'\n// Original: {source_label(path)}:{start+1}; method {name}\n'+'\n'.join(lines[start:end+1])+'\n'
    raise ValueError(name)

def ranges(path, selected):
    lines=(SRC/path).read_text(encoding='utf-8').splitlines()
    return ''.join(f'\n// Original: {source_label(path)}:{a}-{b}\n'+'\n'.join(lines[a-1:b])+'\n' for a,b in selected)

def write(name,body):
    (OUT/name).write_text(HEADER+body,encoding='utf-8',newline='\n')

base=Path('com/tzh/wifi/wificam/model/base/BaseCmd.java')
write('01-BaseCmd-packet.java.txt', ''.join(method(base,n) for n in ['IBaseCmd_Init','IBaseNewCmd_Init','ISnapCmd_Init','IBaseCmd_Byte2Int','IBaseCmd_Odd','IBaseCmdNew_odd','ISnapCmd_Odd','IBaseCmd_RightData','takeOneKeyFly','takOneKeyLand','takeOneKeyMergency','setCheckOutFlg','setRotate','setNoHeadModle','setStayHigh','onAccNotify','onDirNotify','setTune','setCameraType']))
write('02-BaseCmd-scheduler.java.txt', ranges(base,[(10,38)])+''.join(method(base,n) for n in ['clearCheckOutFlg','clearOneKeyFly','clearOneKeyStop','clearOneKeyMergency','dealWithStart','dealWithResume','run','start','resume','stop']))

activity=Path('com/tzh/wifi/wificam/activity/PlayActivity.java')
presenter=Path('com/tzh/wifi/wificam/presenter/WiFiPresenter.java')
model=Path('com/tzh/wifi/wificam/model/WiFiModelImpl.java')
rudder=Path('com/tzh/wifi/wificam/view/rudder/Rudder.java')
body=ranges(activity,[(536,538),(558,562),(657,659),(743,748),(1436,1445),(1501,1508)])
body+=''.join(method(activity,n) for n in ['onAccNotify','onDirNotify','onSliderNotify'])
body+=''.join(method(presenter,n) for n in ['ICmd_OneKeyFly','ICmd_OneKeyLand','ICmd_OneKeyMergency','ICmd_AccNotify','ICmd_DirNotify'])
body+=''.join(method(model,n) for n in ['WiFiModelImpl','ICameraType','ICmd_OneKeyFly','ICmd_OneKeyLand','ICmd_OneKeyMergency','ICmd_AccNotify','ICmd_DirNotify','ICmd_Start','ICmd_Resume','ICmd_Stop'])
body+=''.join(method(rudder,n) for n in ['dealWithAccRudder','dealWidhDirRudder','registerListener'])
write('03-input-chain.java.txt',body)

smali=(ROOT/'work/control/BaseCmd.smali').read_text(encoding='utf-8').splitlines()
body=f'# APK SHA-256: {SHA}\n# DEX: classes6.dex\n# Tool: JADX 1.5.6 JavaClass.getSmali(), baksmali 3.0.9\n# Original class: Lcom/tzh/wifi/wificam/model/base/BaseCmd;\n# .line is the original DEX debug source line, not this excerpt line.\n'
for name in ['IBaseCmd_RightData','dealWithPitchValue','takOneKeyLand']:
    start=next(i for i,l in enumerate(smali) if l.startswith('.method ') and name+'(' in l)
    end=next(i for i in range(start,len(smali)) if smali[i]=='.end method')
    body+=f'\n# Original getSmali() lines {start+1}-{end+1}\n'+'\n'.join(smali[start:end+1])+'\n'
(OUT/'04-BaseCmd-bytecode.smali').write_text(body,encoding='utf-8',newline='\n')

body=f'<!-- APK SHA-256: {SHA}; Tool: JADX 1.5.6 resource decoder. Selected XML fragments. -->\n'
for path, rs in [('res/values/public.xml',None),('res/layout/ly_head_second.xml',[(88,95),(101,108)]),('res/layout/activity_play.xml',[(173,180)])]:
    lines=(ROOT/'work/jadx/resources'/path).read_text(encoding='utf-8').splitlines()
    body+=f'\n<!-- Original: {path} -->\n'
    if rs:
        for a,b in rs: body+=f'<!-- lines {a}-{b} -->\n'+'\n'.join(lines[a-1:b])+'\n'
    else:
        for i,l in enumerate(lines):
            if any(n in l for n in ['name="btnPlayOneKeyFly"','name="btnPlayOneKeyLand"','name="btnMengencyStop"','name="btnPlayCheckout"','name="btnPlayLock"']):
                body+=f'<!-- line {i+1} -->\n{l}\n'
(OUT/'05-ui-resources.xml.txt').write_text(body,encoding='utf-8',newline='\n')

for p in sorted(OUT.iterdir()):
    if p.is_file() and p.name!='.gitkeep': print(p, len(p.read_text(encoding='utf-8').splitlines()))
