; Static disassembly excerpt; no sampled code executed.
; APK SHA256: 49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0
; Library: lib/arm64-v8a/libCamera.so; SHA256: e001492721af2cd8e089440a5752f320a2441ca07584be92ae0b28ff53cae928
; Architecture: AArch64 little-endian; addresses are ELF virtual offsets (load base = 0).
; Decoder versions: capstone 5.0.6, pyelftools 0.32; script: tools/analyze-native.py
; registered: labels come from the verified JNI table, not exported native symbols.
; Semicolon PLT labels are resolved from relocation entries. Raw bytes are retained.


; VA range [0x32d10, 0x32e0c)

_ZN8C_Method14registerMethodEv:
00032d10  080040f9  ldr      x8, [x0]
00032d14  a80700b4  cbz      x8, #0x32e08
00032d18  fd7bbea9  stp      x29, x30, [sp, #-0x20]!
00032d1c  f30b00f9  str      x19, [sp, #0x10]
00032d20  fd030091  mov      x29, sp
00032d24  f30300aa  mov      x19, x0
00032d28  000840f9  ldr      x0, [x0, #0x10]
00032d2c  a00600b4  cbz      x0, #0x32e00
00032d30  610640f9  ldr      x1, [x19, #8]
00032d34  610600b4  cbz      x1, #0x32e00
00032d38  080040f9  ldr      x8, [x0]
00032d3c  42fffff0  adrp     x2, #0x1d000
00032d40  42e80691  add      x2, x2, #0x1ba
00032d44  63ffff90  adrp     x3, #0x1e000
00032d48  63942591  add      x3, x3, #0x965
00032d4c  08c541f9  ldr      x8, [x8, #0x388]
00032d50  00013fd6  blr      x8
00032d54  680a40f9  ldr      x8, [x19, #0x10]
00032d58  601600f9  str      x0, [x19, #0x28]
00032d5c  a80100b4  cbz      x8, #0x32d90
00032d60  610640f9  ldr      x1, [x19, #8]
00032d64  610100b4  cbz      x1, #0x32d90
00032d68  090140f9  ldr      x9, [x8]
00032d6c  42fffff0  adrp     x2, #0x1d000
00032d70  42883991  add      x2, x2, #0xe62
00032d74  63ffff90  adrp     x3, #0x1e000
00032d78  63c43691  add      x3, x3, #0xdb1
00032d7c  e00308aa  mov      x0, x8
00032d80  29c541f9  ldr      x9, [x9, #0x388]
00032d84  20013fd6  blr      x9
00032d88  e80300aa  mov      x8, x0
00032d8c  08000014  b        #0x32dac
00032d90  1f2003d5  nop
00032d94  c1b5f530  adr      x1, #0x1e44d
00032d98  42fffff0  adrp     x2, #0x1d000
00032d9c  42400f91  add      x2, x2, #0x3d0
00032da0  c0008052  mov      w0, #6
00032da4  0fc20094  bl       #0x635e0 ; __android_log_print@plt
00032da8  e8031faa  mov      x8, xzr
00032dac  600a40f9  ldr      x0, [x19, #0x10]
00032db0  681a00f9  str      x8, [x19, #0x30]
00032db4  600100b4  cbz      x0, #0x32de0
00032db8  610640f9  ldr      x1, [x19, #8]
00032dbc  210100b4  cbz      x1, #0x32de0
00032dc0  080040f9  ldr      x8, [x0]
00032dc4  62ffff90  adrp     x2, #0x1e000
00032dc8  42a40891  add      x2, x2, #0x229
00032dcc  63ffff90  adrp     x3, #0x1e000
00032dd0  63c43691  add      x3, x3, #0xdb1
00032dd4  08c541f9  ldr      x8, [x8, #0x388]
00032dd8  00013fd6  blr      x8
00032ddc  08000014  b        #0x32dfc
00032de0  1f2003d5  nop
00032de4  41b3f530  adr      x1, #0x1e44d
00032de8  42fffff0  adrp     x2, #0x1d000
00032dec  42400f91  add      x2, x2, #0x3d0
00032df0  c0008052  mov      w0, #6
00032df4  fbc10094  bl       #0x635e0 ; __android_log_print@plt
00032df8  e0031faa  mov      x0, xzr
00032dfc  601e00f9  str      x0, [x19, #0x38]
00032e00  f30b40f9  ldr      x19, [sp, #0x10]
00032e04  fd7bc2a8  ldp      x29, x30, [sp], #0x20
00032e08  c0035fd6  ret

; VA range [0x330f4, 0x33134)

_ZN8C_Method17onNotifyWiFiStateEi:
000330f4  e80300aa  mov      x8, x0
000330f8  000840f9  ldr      x0, [x0, #0x10]
000330fc  800100b4  cbz      x0, #0x3312c
00033100  e303012a  mov      w3, w1
00033104  010540f9  ldr      x1, [x8, #8]
00033108  210100b4  cbz      x1, #0x3312c
0003310c  021940f9  ldr      x2, [x8, #0x30]
00033110  e20000b4  cbz      x2, #0x3312c
00033114  fd7bbfa9  stp      x29, x30, [sp, #-0x10]!
00033118  fd030091  mov      x29, sp
0003311c  f9c20094  bl       #0x63d00 ; _ZN7_JNIEnv20CallStaticVoidMethodEP7_jclassP10_jmethodIDz@plt
00033120  e0031f2a  mov      w0, wzr
00033124  fd7bc1a8  ldp      x29, x30, [sp], #0x10
00033128  c0035fd6  ret
0003312c  a0028012  mov      w0, #-0x16
00033130  c0035fd6  ret

; VA range [0x3374c, 0x338e4)
0003374c  1f090071  cmp      w8, #2
00033750  81080054  b.ne     #0x33860
00033754  e013c03d  ldr      q0, [sp, #0x40]
00033758  fc0314aa  mov      x28, x20
0003375c  02108052  mov      w2, #0x80
00033760  e017803d  str      q0, [sp, #0x50]
00033764  00e4006f  movi     v0.2d, #0000000000000000
00033768  808f823c  str      q0, [x28, #0x28]!
0003376c  808340b9  ldr      w0, [x28, #0x80]
00033770  e1031caa  mov      x1, x28
00033774  808300ad  stp      q0, q0, [x28, #0x10]
00033778  808301ad  stp      q0, q0, [x28, #0x30]
0003377c  808302ad  stp      q0, q0, [x28, #0x50]
00033780  801f803d  str      q0, [x28, #0x70]
00033784  8fc10094  bl       #0x63dc0 ; __FD_SET_chk@plt
00033788  888340b9  ldr      w8, [x28, #0x80]
0003378c  e4430191  add      x4, sp, #0x50
00033790  e1031caa  mov      x1, x28
00033794  e2031faa  mov      x2, xzr
00033798  e3031faa  mov      x3, xzr
0003379c  00050011  add      w0, w8, #1
000337a0  8cc10094  bl       #0x63dd0 ; select@plt
000337a4  1f000071  cmp      w0, #0
000337a8  ad070054  b.le     #0x3389c
000337ac  80aa40b9  ldr      w0, [x20, #0xa8]
000337b0  e1830191  add      x1, sp, #0x60
000337b4  84420091  add      x4, x20, #0x10
000337b8  85820091  add      x5, x20, #0x20
000337bc  02b88052  mov      w2, #0x5c0
000337c0  e3031f2a  mov      w3, wzr
000337c4  87c10094  bl       #0x63de0 ; recvfrom@plt
000337c8  fc0300aa  mov      x28, x0
000337cc  9f070071  cmp      w28, #1
000337d0  6b060054  b.lt     #0x3389c
000337d4  c00240f9  ldr      x0, [x22]
000337d8  400100b4  cbz      x0, #0x33800
000337dc  e80100f0  adrp     x8, #0x72000
000337e0  08494eb9  ldr      w8, [x8, #0xe48]
000337e4  1f0d0071  cmp      w8, #3
000337e8  c1000054  b.ne     #0x33800
000337ec  e80100f0  adrp     x8, #0x72000
000337f0  29008052  mov      w9, #1
000337f4  21008052  mov      w1, #1
000337f8  09490eb9  str      w9, [x8, #0xe48]
000337fc  45c10094  bl       #0x63d10 ; _ZN8C_Method17onNotifyWiFiStateEi@plt
00033800  c80100b0  adrp     x8, #0x6c000
00033804  08b943f9  ldr      x8, [x8, #0x770]
00033808  000140f9  ldr      x0, [x8]
0003380c  001500b4  cbz      x0, #0x33aac
00033810  e1830191  add      x1, sp, #0x60
00033814  e2031c2a  mov      w2, w28
00033818  0ac10094  bl       #0x63c40 ; _ZN5Image3putEPhi@plt
0003381c  f7031f2a  mov      w23, wzr
00033820  8b000014  b        #0x33a4c
00033824  c0008052  mov      w0, #6
00033828  e10318aa  mov      x1, x24
0003382c  62ffff90  adrp     x2, #0x1f000
00033830  42ac1491  add      x2, x2, #0x52b
00033834  6bbf0094  bl       #0x635e0 ; __android_log_print@plt
00033838  80aa40b9  ldr      w0, [x20, #0xa8]
0003383c  4005f837  tbnz     w0, #0x1f, #0x338e4
00033840  c10100b0  adrp     x1, #0x6c000
00033844  84420091  add      x4, x20, #0x10
00033848  42008052  mov      w2, #2
0003384c  21e443f9  ldr      x1, [x1, #0x7c8]
00033850  e3031f2a  mov      w3, wzr
00033854  05028052  mov      w5, #0x10
00033858  3ec10094  bl       #0x63d50 ; sendto@plt
0003385c  27000014  b        #0x338f8
00033860  c0008052  mov      w0, #6
00033864  e10318aa  mov      x1, x24
00033868  42fffff0  adrp     x2, #0x1e000
0003386c  42480e91  add      x2, x2, #0x392
00033870  5cbf0094  bl       #0x635e0 ; __android_log_print@plt
00033874  80aa40b9  ldr      w0, [x20, #0xa8]
00033878  c00df837  tbnz     w0, #0x1f, #0x33a30
0003387c  c10100b0  adrp     x1, #0x6c000
00033880  84420091  add      x4, x20, #0x10
00033884  42008052  mov      w2, #2
00033888  21cc43f9  ldr      x1, [x1, #0x798]
0003388c  e3031f2a  mov      w3, wzr
00033890  05028052  mov      w5, #0x10
00033894  2fc10094  bl       #0x63d50 ; sendto@plt
00033898  6b000014  b        #0x33a44
0003389c  ff8e0171  cmp      w23, #0x63
000338a0  4b0e0054  b.lt     #0x33a68
000338a4  c0008052  mov      w0, #6
000338a8  e10318aa  mov      x1, x24
000338ac  42fffff0  adrp     x2, #0x1e000
000338b0  42300491  add      x2, x2, #0x10c
000338b4  4bbf0094  bl       #0x635e0 ; __android_log_print@plt
000338b8  c00240f9  ldr      x0, [x22]
000338bc  68008052  mov      w8, #3
000338c0  284f0eb9  str      w8, [x25, #0xe4c]
000338c4  600000b4  cbz      x0, #0x338d0
000338c8  e1031f2a  mov      w1, wzr
000338cc  11c10094  bl       #0x63d10 ; _ZN8C_Method17onNotifyWiFiStateEi@plt
000338d0  f7031f2a  mov      w23, wzr
000338d4  e80100f0  adrp     x8, #0x72000
000338d8  69008052  mov      w9, #3
000338dc  09490eb9  str      w9, [x8, #0xe48]
000338e0  5b000014  b        #0x33a4c

; VA range [0x33a44, 0x33a74)
00033a44  28008052  mov      w8, #1
00033a48  284f0eb9  str      w8, [x25, #0xe4c]
00033a4c  e00315aa  mov      x0, x21
00033a50  00bf0094  bl       #0x63650 ; pthread_mutex_unlock@plt
00033a54  48034039  ldrb     w8, [x26]
00033a58  e8020034  cbz      w8, #0x33ab4
00033a5c  680340f9  ldr      x8, [x27]
00033a60  68ddffb5  cbnz     x8, #0x3360c
00033a64  14000014  b        #0x33ab4
00033a68  f7060011  add      w23, w23, #1
00033a6c  f8ffff17  b        #0x33a4c
00033a70  bf090071  cmp      w13, #2
