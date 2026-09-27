; Static disassembly excerpt; no sampled code executed.
; APK SHA256: 49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0
; Library: lib/arm64-v8a/libCamera.so; SHA256: e001492721af2cd8e089440a5752f320a2441ca07584be92ae0b28ff53cae928
; Architecture: AArch64 little-endian; addresses are ELF virtual offsets (load base = 0).
; Decoder versions: capstone 5.0.6, pyelftools 0.32; script: tools/analyze-native.py
; registered: labels come from the verified JNI table, not exported native symbols.
; Semicolon PLT labels are resolved from relocation entries. Raw bytes are retained.


; VA range [0x39920, 0x39a6c)

JNI_OnLoad:
00039920  ff4301d1  sub      sp, sp, #0x50
00039924  fd7b01a9  stp      x29, x30, [sp, #0x10]
00039928  f71300f9  str      x23, [sp, #0x20]
0003992c  f65703a9  stp      x22, x21, [sp, #0x30]
00039930  f44f04a9  stp      x20, x19, [sp, #0x40]
00039934  fd430091  add      x29, sp, #0x10
00039938  56d03bd5  mrs      x22, tpidr_el0
0003993c  82008052  mov      w2, #4
00039940  93008052  mov      w19, #4
00039944  c81640f9  ldr      x8, [x22, #0x28]
00039948  e1030091  mov      x1, sp
0003994c  2200a072  movk     w2, #1, lsl #16
00039950  f40300aa  mov      x20, x0
00039954  3300a072  movk     w19, #1, lsl #16
00039958  e80700f9  str      x8, [sp, #8]
0003995c  080040f9  ldr      x8, [x0]
00039960  ff0300f9  str      xzr, [sp]
00039964  081940f9  ldr      x8, [x8, #0x30]
00039968  00013fd6  blr      x8
0003996c  60000034  cbz      w0, #0x39978
00039970  13008012  mov      w19, #-1
00039974  29000014  b        #0x39a18
00039978  970100f0  adrp     x23, #0x6c000
0003997c  880100f0  adrp     x8, #0x6c000
00039980  f7b643f9  ldr      x23, [x23, #0x768]
00039984  08a944f9  ldr      x8, [x8, #0x950]
00039988  e90240f9  ldr      x9, [x23]
0003998c  140100f9  str      x20, [x8]
00039990  e90000b5  cbnz     x9, #0x399ac
00039994  000b8052  mov      w0, #0x58
00039998  56a70094  bl       #0x636f0 ; _Znwm@plt
0003999c  f50300aa  mov      x21, x0
000399a0  e10314aa  mov      x1, x20
000399a4  e3a80094  bl       #0x63d30 ; _ZN8C_MethodC1EP7_JavaVM@plt
000399a8  f50200f9  str      x21, [x23]
000399ac  f40340f9  ldr      x20, [sp]
000399b0  880100f0  adrp     x8, #0x6c000
000399b4  08ad44f9  ldr      x8, [x8, #0x958]
000399b8  890240f9  ldr      x9, [x20]
000399bc  e00314aa  mov      x0, x20
000399c0  010140f9  ldr      x1, [x8]
000399c4  281940f9  ldr      x8, [x9, #0x30]
000399c8  00013fd6  blr      x8
000399cc  a00100b4  cbz      x0, #0x39a00
000399d0  880240f9  ldr      x8, [x20]
000399d4  e10300aa  mov      x1, x0
000399d8  1f2003d5  nop
000399dc  62ea1b10  adr      x2, #0x71728
000399e0  e00314aa  mov      x0, x20
000399e4  c3028052  mov      w3, #0x16
000399e8  085d43f9  ldr      x8, [x8, #0x6b8]
000399ec  00013fd6  blr      x8
000399f0  4001f836  tbz      w0, #0x1f, #0x39a18
000399f4  22ffffb0  adrp     x2, #0x1e000
000399f8  42f03a91  add      x2, x2, #0xebc
000399fc  03000014  b        #0x39a08
00039a00  22ffff90  adrp     x2, #0x1d000
00039a04  42182e91  add      x2, x2, #0xb86
00039a08  21ffffb0  adrp     x1, #0x1e000
00039a0c  21341191  add      x1, x1, #0x44d
00039a10  c0008052  mov      w0, #6
00039a14  f3a60094  bl       #0x635e0 ; __android_log_print@plt
00039a18  c81640f9  ldr      x8, [x22, #0x28]
00039a1c  e90740f9  ldr      x9, [sp, #8]
00039a20  1f0109eb  cmp      x8, x9
00039a24  21020054  b.ne     #0x39a68
00039a28  e003132a  mov      w0, w19
00039a2c  f44f44a9  ldp      x20, x19, [sp, #0x40]
00039a30  f71340f9  ldr      x23, [sp, #0x20]
00039a34  f65743a9  ldp      x22, x21, [sp, #0x30]
00039a38  fd7b41a9  ldp      x29, x30, [sp, #0x10]
00039a3c  ff430191  add      sp, sp, #0x50
00039a40  c0035fd6  ret
00039a44  f30300aa  mov      x19, x0
00039a48  e00315aa  mov      x0, x21
00039a4c  35a70094  bl       #0x63720 ; _ZdlPv@plt
00039a50  c81640f9  ldr      x8, [x22, #0x28]
00039a54  e90740f9  ldr      x9, [sp, #8]
00039a58  1f0109eb  cmp      x8, x9
00039a5c  61000054  b.ne     #0x39a68
00039a60  e00313aa  mov      x0, x19
00039a64  fe960094  bl       #0x5f65c
00039a68  d2a60094  bl       #0x635b0 ; __stack_chk_fail@plt

; VA range [0x39a78, 0x39ca4)

registered:iCameraInit:
00039a78  fd7bbea9  stp      x29, x30, [sp, #-0x20]!
00039a7c  f44f01a9  stp      x20, x19, [sp, #0x10]
00039a80  fd030091  mov      x29, sp
00039a84  880100f0  adrp     x8, #0x6c000
00039a88  e20301aa  mov      x2, x1
00039a8c  e10300aa  mov      x1, x0
00039a90  08b543f9  ldr      x8, [x8, #0x768]
00039a94  080140f9  ldr      x8, [x8]
00039a98  e00308aa  mov      x0, x8
00039a9c  7da80094  bl       #0x63c90 ; _ZN8C_Method14registerJNIEnvEP7_JNIEnvP7_jclass@plt
00039aa0  20008052  mov      w0, #1
00039aa4  13a70094  bl       #0x636f0 ; _Znwm@plt
00039aa8  f30300aa  mov      x19, x0
00039aac  dda80094  bl       #0x63e20 ; _ZN6SocketC1Ev@plt
00039ab0  880100f0  adrp     x8, #0x6c000
00039ab4  00158052  mov      w0, #0xa8
00039ab8  08e143f9  ldr      x8, [x8, #0x7c0]
00039abc  130100f9  str      x19, [x8]
00039ac0  0ca70094  bl       #0x636f0 ; _Znwm@plt
00039ac4  f30300aa  mov      x19, x0
00039ac8  f6a60094  bl       #0x636a0 ; _ZN10MjpegToAviC1Ev@plt
00039acc  880100f0  adrp     x8, #0x6c000
00039ad0  000a8052  mov      w0, #0x50
00039ad4  086143f9  ldr      x8, [x8, #0x6c0]
00039ad8  130100f9  str      x19, [x8]
00039adc  05a70094  bl       #0x636f0 ; _Znwm@plt
00039ae0  f30300aa  mov      x19, x0
00039ae4  4fa80094  bl       #0x63c20 ; _ZN9AviReaderC1Ev@plt
00039ae8  880100f0  adrp     x8, #0x6c000
00039aec  00088052  mov      w0, #0x40
00039af0  08ad43f9  ldr      x8, [x8, #0x758]
00039af4  130100f9  str      x19, [x8]
00039af8  fea60094  bl       #0x636f0 ; _Znwm@plt
00039afc  f30300aa  mov      x19, x0
00039b00  dca70094  bl       #0x63a70 ; _ZN10MjpegToMp4C1Ev@plt
00039b04  880100f0  adrp     x8, #0x6c000
00039b08  21ffffb0  adrp     x1, #0x1e000
00039b0c  21341191  add      x1, x1, #0x44d
00039b10  088d43f9  ldr      x8, [x8, #0x718]
00039b14  22ffffb0  adrp     x2, #0x1e000
00039b18  42103d91  add      x2, x2, #0xf44
00039b1c  c0008052  mov      w0, #6
00039b20  130100f9  str      x19, [x8]
00039b24  afa60094  bl       #0x635e0 ; __android_log_print@plt
00039b28  e0031f2a  mov      w0, wzr
00039b2c  f44f41a9  ldp      x20, x19, [sp, #0x10]
00039b30  fd7bc2a8  ldp      x29, x30, [sp], #0x20
00039b34  c0035fd6  ret
00039b38  03000014  b        #0x39b44
00039b3c  02000014  b        #0x39b44
00039b40  01000014  b        #0x39b44
00039b44  f40300aa  mov      x20, x0
00039b48  e00313aa  mov      x0, x19
00039b4c  f5a60094  bl       #0x63720 ; _ZdlPv@plt
00039b50  e00314aa  mov      x0, x20
00039b54  c2960094  bl       #0x5f65c

registered:iCameraDeinit:
00039b58  fd7bbca9  stp      x29, x30, [sp, #-0x40]!
00039b5c  f85f01a9  stp      x24, x23, [sp, #0x10]
00039b60  f65702a9  stp      x22, x21, [sp, #0x20]
00039b64  f44f03a9  stp      x20, x19, [sp, #0x30]
00039b68  fd030091  mov      x29, sp
00039b6c  940100f0  adrp     x20, #0x6c000
00039b70  94e243f9  ldr      x20, [x20, #0x7c0]
00039b74  800240f9  ldr      x0, [x20]
00039b78  7aa80094  bl       #0x63d60 ; _ZN6Socket10disconnectEv@plt
00039b7c  950100f0  adrp     x21, #0x6c000
00039b80  b56243f9  ldr      x21, [x21, #0x6c0]
00039b84  b30240f9  ldr      x19, [x21]
00039b88  b30000b4  cbz      x19, #0x39b9c
00039b8c  e00313aa  mov      x0, x19
00039b90  c8a60094  bl       #0x636b0 ; _ZN10MjpegToAviD1Ev@plt
00039b94  e00313aa  mov      x0, x19
00039b98  e2a60094  bl       #0x63720 ; _ZdlPv@plt
00039b9c  960100f0  adrp     x22, #0x6c000
00039ba0  d6ae43f9  ldr      x22, [x22, #0x758]
00039ba4  d30240f9  ldr      x19, [x22]
00039ba8  b30000b4  cbz      x19, #0x39bbc
00039bac  e00313aa  mov      x0, x19
00039bb0  20a80094  bl       #0x63c30 ; _ZN9AviReaderD1Ev@plt
00039bb4  e00313aa  mov      x0, x19
00039bb8  daa60094  bl       #0x63720 ; _ZdlPv@plt
00039bbc  970100f0  adrp     x23, #0x6c000
00039bc0  f78e43f9  ldr      x23, [x23, #0x718]
00039bc4  f30240f9  ldr      x19, [x23]
00039bc8  b30000b4  cbz      x19, #0x39bdc
00039bcc  e00313aa  mov      x0, x19
00039bd0  aca70094  bl       #0x63a80 ; _ZN10MjpegToMp4D1Ev@plt
00039bd4  e00313aa  mov      x0, x19
00039bd8  d2a60094  bl       #0x63720 ; _ZdlPv@plt
00039bdc  980100f0  adrp     x24, #0x6c000
00039be0  18b743f9  ldr      x24, [x24, #0x768]
00039be4  130340f9  ldr      x19, [x24]
00039be8  b30000b4  cbz      x19, #0x39bfc
00039bec  e00313aa  mov      x0, x19
00039bf0  54a80094  bl       #0x63d40 ; _ZN8C_MethodD1Ev@plt
00039bf4  e00313aa  mov      x0, x19
00039bf8  caa60094  bl       #0x63720 ; _ZdlPv@plt
00039bfc  930240f9  ldr      x19, [x20]
00039c00  b30000b4  cbz      x19, #0x39c14
00039c04  e00313aa  mov      x0, x19
00039c08  8aa80094  bl       #0x63e30 ; _ZN6SocketD1Ev@plt
00039c0c  e00313aa  mov      x0, x19
00039c10  c4a60094  bl       #0x63720 ; _ZdlPv@plt
00039c14  bf0200f9  str      xzr, [x21]
00039c18  880100f0  adrp     x8, #0x6c000
00039c1c  21ffffb0  adrp     x1, #0x1e000
00039c20  21341191  add      x1, x1, #0x44d
00039c24  df0200f9  str      xzr, [x22]
00039c28  22ffffb0  adrp     x2, #0x1e000
00039c2c  42403d91  add      x2, x2, #0xf50
00039c30  ff0200f9  str      xzr, [x23]
00039c34  c0008052  mov      w0, #6
00039c38  08a944f9  ldr      x8, [x8, #0x950]
00039c3c  1f0300f9  str      xzr, [x24]
00039c40  9f0200f9  str      xzr, [x20]
00039c44  1f0100f9  str      xzr, [x8]
00039c48  f44f43a9  ldp      x20, x19, [sp, #0x30]
00039c4c  f65742a9  ldp      x22, x21, [sp, #0x20]
00039c50  f85f41a9  ldp      x24, x23, [sp, #0x10]
00039c54  fd7bc4a8  ldp      x29, x30, [sp], #0x40
00039c58  62a60014  b        #0x635e0 ; __android_log_print@plt

registered:iCameraStart:
00039c5c  880100f0  adrp     x8, #0x6c000
00039c60  08e143f9  ldr      x8, [x8, #0x7c0]
00039c64  000140f9  ldr      x0, [x8]
00039c68  e00000b4  cbz      x0, #0x39c84
00039c6c  fd7bbfa9  stp      x29, x30, [sp, #-0x10]!
00039c70  fd030091  mov      x29, sp
00039c74  4ba80094  bl       #0x63da0 ; _ZN6Socket7connectEv@plt
00039c78  e0031f2a  mov      w0, wzr
00039c7c  fd7bc1a8  ldp      x29, x30, [sp], #0x10
00039c80  c0035fd6  ret
00039c84  a0028012  mov      w0, #-0x16
00039c88  c0035fd6  ret

registered:iCameraStop:
00039c8c  880100f0  adrp     x8, #0x6c000
00039c90  08e143f9  ldr      x8, [x8, #0x7c0]
00039c94  000140f9  ldr      x0, [x8]
00039c98  400000b4  cbz      x0, #0x39ca0
00039c9c  31a80014  b        #0x63d60 ; _ZN6Socket10disconnectEv@plt
00039ca0  c0035fd6  ret

; VA range [0x39e84, 0x39f9c)

registered:iCmdStart:
00039e84  e0031f2a  mov      w0, wzr
00039e88  c0035fd6  ret

registered:iCameraRoate:
00039e8c  880100f0  adrp     x8, #0x6c000
00039e90  08e143f9  ldr      x8, [x8, #0x7c0]
00039e94  000140f9  ldr      x0, [x8]
00039e98  a00000b4  cbz      x0, #0x39eac
00039e9c  fd7bbfa9  stp      x29, x30, [sp, #-0x10]!
00039ea0  fd030091  mov      x29, sp
00039ea4  d3a70094  bl       #0x63df0 ; _ZN6Socket14writeRotateCmdEv@plt
00039ea8  fd7bc1a8  ldp      x29, x30, [sp], #0x10
00039eac  e0031f2a  mov      w0, wzr
00039eb0  c0035fd6  ret

registered:iCameraSwitch:
00039eb4  880100f0  adrp     x8, #0x6c000
00039eb8  08e143f9  ldr      x8, [x8, #0x7c0]
00039ebc  000140f9  ldr      x0, [x8]
00039ec0  a00000b4  cbz      x0, #0x39ed4
00039ec4  fd7bbfa9  stp      x29, x30, [sp, #-0x10]!
00039ec8  fd030091  mov      x29, sp
00039ecc  cda70094  bl       #0x63e00 ; _ZN6Socket17writeCameraSwitchEv@plt
00039ed0  fd7bc1a8  ldp      x29, x30, [sp], #0x10
00039ed4  e0031f2a  mov      w0, wzr
00039ed8  c0035fd6  ret

registered:iCmdSend:
00039edc  fd7bbca9  stp      x29, x30, [sp, #-0x40]!
00039ee0  f85f01a9  stp      x24, x23, [sp, #0x10]
00039ee4  f65702a9  stp      x22, x21, [sp, #0x20]
00039ee8  f44f03a9  stp      x20, x19, [sp, #0x30]
00039eec  fd030091  mov      x29, sp
00039ef0  f603032a  mov      w22, w3
00039ef4  f40300aa  mov      x20, x0
00039ef8  f30302aa  mov      x19, x2
00039efc  d87e4093  sxtw     x24, w22
00039f00  e00318aa  mov      x0, x24
00039f04  8ba50094  bl       #0x63530 ; malloc@plt
00039f08  880240f9  ldr      x8, [x20]
00039f0c  f50300aa  mov      x21, x0
00039f10  e00314aa  mov      x0, x20
00039f14  e10313aa  mov      x1, x19
00039f18  e2031faa  mov      x2, xzr
00039f1c  08e142f9  ldr      x8, [x8, #0x5c0]
00039f20  00013fd6  blr      x8
00039f24  f70300aa  mov      x23, x0
00039f28  e00315aa  mov      x0, x21
00039f2c  e20318aa  mov      x2, x24
00039f30  e10317aa  mov      x1, x23
00039f34  cba50094  bl       #0x63660 ; memcpy@plt
00039f38  880100f0  adrp     x8, #0x6c000
00039f3c  08e143f9  ldr      x8, [x8, #0x7c0]
00039f40  000140f9  ldr      x0, [x8]
00039f44  800000b4  cbz      x0, #0x39f54
00039f48  e10315aa  mov      x1, x21
00039f4c  e203162a  mov      w2, w22
00039f50  b0a70094  bl       #0x63e10 ; _ZN6Socket7sendCmdEPhi@plt
00039f54  880240f9  ldr      x8, [x20]
00039f58  e00314aa  mov      x0, x20
00039f5c  e10313aa  mov      x1, x19
00039f60  e20317aa  mov      x2, x23
00039f64  e3031f2a  mov      w3, wzr
00039f68  080143f9  ldr      x8, [x8, #0x600]
00039f6c  00013fd6  blr      x8
00039f70  e00315aa  mov      x0, x21
00039f74  7ba50094  bl       #0x63560 ; free@plt
00039f78  e0031f2a  mov      w0, wzr
00039f7c  f44f43a9  ldp      x20, x19, [sp, #0x30]
00039f80  f65742a9  ldp      x22, x21, [sp, #0x20]
00039f84  f85f41a9  ldp      x24, x23, [sp, #0x10]
00039f88  fd7bc4a8  ldp      x29, x30, [sp], #0x40
00039f8c  c0035fd6  ret

registered:iCmdResume:
00039f90  e0031f2a  mov      w0, wzr
00039f94  c0035fd6  ret

registered:iCmdStop:
00039f98  c0035fd6  ret
