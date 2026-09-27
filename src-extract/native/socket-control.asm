; Static disassembly excerpt; no sampled code executed.
; APK SHA256: 49b469e51e4a0e849b5f846b9af94b3f98acbf91735ec8d04f8451c514c684b0
; Library: lib/arm64-v8a/libCamera.so; SHA256: e001492721af2cd8e089440a5752f320a2441ca07584be92ae0b28ff53cae928
; Architecture: AArch64 little-endian; addresses are ELF virtual offsets (load base = 0).
; Decoder versions: capstone 5.0.6, pyelftools 0.32; script: tools/analyze-native.py
; registered: labels come from the verified JNI table, not exported native symbols.
; Semicolon PLT labels are resolved from relocation entries. Raw bytes are retained.


; VA range [0x33340, 0x334cc)

_ZN6Socket10disconnectEv:
00033340  c80100b0  adrp     x8, #0x6c000
00033344  08c943f9  ldr      x8, [x8, #0x790]
00033348  1f010039  strb     wzr, [x8]
0003334c  c0035fd6  ret

_ZN6Socket7destroyEv:
00033350  fd7bbea9  stp      x29, x30, [sp, #-0x20]!
00033354  f30b00f9  str      x19, [sp, #0x10]
00033358  fd030091  mov      x29, sp
0003335c  d30100b0  adrp     x19, #0x6c000
00033360  73c243f9  ldr      x19, [x19, #0x780]
00033364  60aa40b9  ldr      w0, [x19, #0xa8]
00033368  8001f837  tbnz     w0, #0x1f, #0x33398
0003336c  c10100b0  adrp     x1, #0x6c000
00033370  64420091  add      x4, x19, #0x10
00033374  42008052  mov      w2, #2
00033378  21cc43f9  ldr      x1, [x1, #0x798]
0003337c  e3031f2a  mov      w3, wzr
00033380  05028052  mov      w5, #0x10
00033384  73c20094  bl       #0x63d50 ; sendto@plt
00033388  60aa40b9  ldr      w0, [x19, #0xa8]
0003338c  cdc10094  bl       #0x63ac0 ; close@plt
00033390  08008012  mov      w8, #-1
00033394  68aa00b9  str      w8, [x19, #0xa8]
00033398  d30100b0  adrp     x19, #0x6c000
0003339c  73c643f9  ldr      x19, [x19, #0x788]
000333a0  60aa40b9  ldr      w0, [x19, #0xa8]
000333a4  8000f837  tbnz     w0, #0x1f, #0x333b4
000333a8  c6c10094  bl       #0x63ac0 ; close@plt
000333ac  08008012  mov      w8, #-1
000333b0  68aa00b9  str      w8, [x19, #0xa8]
000333b4  f30b40f9  ldr      x19, [sp, #0x10]
000333b8  fd7bc2a8  ldp      x29, x30, [sp], #0x20
000333bc  c0035fd6  ret

_ZN6Socket6createEP16_socket_struct_tPKci:
000333c0  fd7bbea9  stp      x29, x30, [sp, #-0x20]!
000333c4  f30b00f9  str      x19, [sp, #0x10]
000333c8  fd030091  mov      x29, sp
000333cc  6908c05a  rev      w9, w3
000333d0  0802c0d2  mov      x8, #0x1000000000
000333d4  e00302aa  mov      x0, x2
000333d8  297d1053  lsr      w9, w9, #0x10
000333dc  28c001f8  stur     x8, [x1, #0x1c]
000333e0  48008052  mov      w8, #2
000333e4  f30301aa  mov      x19, x1
000333e8  3f4001f8  stur     xzr, [x1, #0x14]
000333ec  28200079  strh     w8, [x1, #0x10]
000333f0  29240079  strh     w9, [x1, #0x12]
000333f4  5fc20094  bl       #0x63d70 ; inet_addr@plt
000333f8  e803002a  mov      w8, w0
000333fc  60aa40b9  ldr      w0, [x19, #0xa8]
00033400  681600b9  str      w8, [x19, #0x14]
00033404  1f000071  cmp      w0, #0
00033408  0c030054  b.gt     #0x33468
0003340c  40008052  mov      w0, #2
00033410  41008052  mov      w1, #2
00033414  22028052  mov      w2, #0x11
00033418  5ac20094  bl       #0x63d80 ; socket@plt
0003341c  1f040071  cmp      w0, #1
00033420  60aa00b9  str      w0, [x19, #0xa8]
00033424  2b020054  b.lt     #0x33468
00033428  48ffffd0  adrp     x8, #0x1d000
0003342c  21008052  mov      w1, #1
00033430  82028052  mov      w2, #0x14
00033434  002dc03d  ldr      q0, [x8, #0xb0]
00033438  e30313aa  mov      x3, x19
0003343c  04028052  mov      w4, #0x10
00033440  6002803d  str      q0, [x19]
00033444  53c20094  bl       #0x63d90 ; setsockopt@plt
00033448  60aa40b9  ldr      w0, [x19, #0xa8]
0003344c  1f2003d5  nop
00033450  63081f10  adr      x3, #0x7155c
00033454  21008052  mov      w1, #1
00033458  02018052  mov      w2, #8
0003345c  84008052  mov      w4, #4
00033460  4cc20094  bl       #0x63d90 ; setsockopt@plt
00033464  60aa40b9  ldr      w0, [x19, #0xa8]
00033468  f30b40f9  ldr      x19, [sp, #0x10]
0003346c  fd7bc2a8  ldp      x29, x30, [sp], #0x20
00033470  c0035fd6  ret

_ZN6Socket8sendDataEPhi:
00033474  fd7bbfa9  stp      x29, x30, [sp, #-0x10]!
00033478  fd030091  mov      x29, sp
0003347c  c80100b0  adrp     x8, #0x6c000
00033480  08c143f9  ldr      x8, [x8, #0x780]
00033484  00a940b9  ldr      w0, [x8, #0xa8]
00033488  0001f837  tbnz     w0, #0x1f, #0x334a8
0003348c  427c4093  sxtw     x2, w2
00033490  04410091  add      x4, x8, #0x10
00033494  e3031f2a  mov      w3, wzr
00033498  05028052  mov      w5, #0x10
0003349c  2dc20094  bl       #0x63d50 ; sendto@plt
000334a0  fd7bc1a8  ldp      x29, x30, [sp], #0x10
000334a4  c0035fd6  ret
000334a8  1f2003d5  nop
000334ac  017df530  adr      x1, #0x1e44d
000334b0  42fffff0  adrp     x2, #0x1e000
000334b4  42001791  add      x2, x2, #0x5c0
000334b8  c0008052  mov      w0, #6
000334bc  49c00094  bl       #0x635e0 ; __android_log_print@plt
000334c0  00008012  mov      w0, #-1
000334c4  fd7bc1a8  ldp      x29, x30, [sp], #0x10
000334c8  c0035fd6  ret

; VA range [0x334cc, 0x33748)

_ZN6Socket7connectEv:
000334cc  c80100b0  adrp     x8, #0x6c000
000334d0  08bd43f9  ldr      x8, [x8, #0x778]
000334d4  080140f9  ldr      x8, [x8]
000334d8  1f0100f1  cmp      x8, #0
000334dc  4d000054  b.le     #0x334e4
000334e0  c0035fd6  ret
000334e4  fd7bbfa9  stp      x29, x30, [sp, #-0x10]!
000334e8  fd030091  mov      x29, sp
000334ec  c00100b0  adrp     x0, #0x6c000
000334f0  c20100b0  adrp     x2, #0x6c000
000334f4  e1031faa  mov      x1, xzr
000334f8  00bc43f9  ldr      x0, [x0, #0x778]
000334fc  42d043f9  ldr      x2, [x2, #0x7a0]
00033500  e3031faa  mov      x3, xzr
00033504  83c00094  bl       #0x63710 ; pthread_create@plt
00033508  c00100b0  adrp     x0, #0x6c000
0003350c  c20100b0  adrp     x2, #0x6c000
00033510  e1031faa  mov      x1, xzr
00033514  00d443f9  ldr      x0, [x0, #0x7a8]
00033518  42d843f9  ldr      x2, [x2, #0x7b0]
0003351c  e3031faa  mov      x3, xzr
00033520  7cc00094  bl       #0x63710 ; pthread_create@plt
00033524  1f2003d5  nop
00033528  2179f530  adr      x1, #0x1e44d
0003352c  42fffff0  adrp     x2, #0x1e000
00033530  42dc1191  add      x2, x2, #0x477
00033534  c0008052  mov      w0, #6
00033538  fd7bc1a8  ldp      x29, x30, [sp], #0x10
0003353c  29c00014  b        #0x635e0 ; __android_log_print@plt

_Z18udpSocketEnterancePv:
00033540  fd7bbaa9  stp      x29, x30, [sp, #-0x60]!
00033544  fc6f01a9  stp      x28, x27, [sp, #0x10]
00033548  fa6702a9  stp      x26, x25, [sp, #0x20]
0003354c  f85f03a9  stp      x24, x23, [sp, #0x30]
00033550  f65704a9  stp      x22, x21, [sp, #0x40]
00033554  f44f05a9  stp      x20, x19, [sp, #0x50]
00033558  fd030091  mov      x29, sp
0003355c  ffc318d1  sub      sp, sp, #0x630
00033560  48d03bd5  mrs      x8, tpidr_el0
00033564  d60100b0  adrp     x22, #0x6c000
00033568  e90100f0  adrp     x9, #0x72000
0003356c  e81f00f9  str      x8, [sp, #0x38]
00033570  f90100f0  adrp     x25, #0x72000
00033574  081540f9  ldr      x8, [x8, #0x28]
00033578  d6b643f9  ldr      x22, [x22, #0x768]
0003357c  a8031ff8  stur     x8, [x29, #-0x10]
00033580  68008052  mov      w8, #3
00033584  c00240f9  ldr      x0, [x22]
00033588  28490eb9  str      w8, [x9, #0xe48]
0003358c  3f4f0eb9  str      wzr, [x25, #0xe4c]
00033590  400000b4  cbz      x0, #0x33598
00033594  c3c10094  bl       #0x63ca0 ; _ZN8C_Method12attachThreadEv@plt
00033598  da0100b0  adrp     x26, #0x6c000
0003359c  28008052  mov      w8, #1
000335a0  c00100b0  adrp     x0, #0x6c000
000335a4  5acb43f9  ldr      x26, [x26, #0x790]
000335a8  e1031faa  mov      x1, xzr
000335ac  48030039  strb     w8, [x26]
000335b0  00dc43f9  ldr      x0, [x0, #0x7b8]
000335b4  e7bf0094  bl       #0x63550 ; pthread_mutex_init@plt
000335b8  d40100b0  adrp     x20, #0x6c000
000335bc  d30100b0  adrp     x19, #0x6c000
000335c0  48034039  ldrb     w8, [x26]
000335c4  94c243f9  ldr      x20, [x20, #0x780]
000335c8  73c643f9  ldr      x19, [x19, #0x788]
000335cc  48270034  cbz      w8, #0x33ab4
000335d0  db0100b0  adrp     x27, #0x6c000
000335d4  7be343f9  ldr      x27, [x27, #0x7c0]
000335d8  680340f9  ldr      x8, [x27]
000335dc  c82600b4  cbz      x8, #0x33ab4
000335e0  48ffffd0  adrp     x8, #0x1d000
000335e4  d50100b0  adrp     x21, #0x6c000
000335e8  f7031f2a  mov      w23, wzr
000335ec  002dc03d  ldr      q0, [x8, #0xb0]
000335f0  48ffffb0  adrp     x8, #0x1c000
000335f4  b5de43f9  ldr      x21, [x21, #0x7b8]
000335f8  1f2003d5  nop
000335fc  9872f530  adr      x24, #0x1e44d
00033600  e00b803d  str      q0, [sp, #0x20]
00033604  00d1c33d  ldr      q0, [x8, #0xf40]
00033608  e013803d  str      q0, [sp, #0x40]
0003360c  e00315aa  mov      x0, x21
00033610  08c00094  bl       #0x63630 ; pthread_mutex_lock@plt
00033614  284f4eb9  ldr      w8, [x25, #0xe4c]
00033618  1f050071  cmp      w8, #1
0003361c  8c090054  b.gt     #0x3374c
00033620  28100035  cbnz     w8, #0x33824
00033624  88aa40b9  ldr      w8, [x20, #0xa8]
00033628  1f010071  cmp      w8, #0
0003362c  cc200054  b.gt     #0x33a44
00033630  0802c0d2  mov      x8, #0x1000000000
00033634  40fffff0  adrp     x0, #0x1e000
00033638  00d83691  add      x0, x0, #0xdb6
0003363c  88c201f8  stur     x8, [x20, #0x1c]
00033640  48008052  mov      w8, #2
00033644  e803b272  movk     w8, #0x901f, lsl #16
00033648  9f4201f8  stur     xzr, [x20, #0x14]
0003364c  881200b9  str      w8, [x20, #0x10]
00033650  c8c10094  bl       #0x63d70 ; inet_addr@plt
00033654  88aa40b9  ldr      w8, [x20, #0xa8]
00033658  801600b9  str      w0, [x20, #0x14]
0003365c  1f010071  cmp      w8, #0
00033660  cc020054  b.gt     #0x336b8
00033664  40008052  mov      w0, #2
00033668  41008052  mov      w1, #2
0003366c  22028052  mov      w2, #0x11
00033670  c4c10094  bl       #0x63d80 ; socket@plt
00033674  1f040071  cmp      w0, #1
00033678  80aa00b9  str      w0, [x20, #0xa8]
0003367c  eb010054  b.lt     #0x336b8
00033680  e00bc03d  ldr      q0, [sp, #0x20]
00033684  21008052  mov      w1, #1
00033688  82028052  mov      w2, #0x14
0003368c  e30314aa  mov      x3, x20
00033690  04028052  mov      w4, #0x10
00033694  8002803d  str      q0, [x20]
00033698  bec10094  bl       #0x63d90 ; setsockopt@plt
0003369c  80aa40b9  ldr      w0, [x20, #0xa8]
000336a0  21008052  mov      w1, #1
000336a4  02018052  mov      w2, #8
000336a8  1f2003d5  nop
000336ac  83f51e10  adr      x3, #0x7155c
000336b0  84008052  mov      w4, #4
000336b4  b7c10094  bl       #0x63d90 ; setsockopt@plt
000336b8  0802c0d2  mov      x8, #0x1000000000
000336bc  40fffff0  adrp     x0, #0x1e000
000336c0  00d83691  add      x0, x0, #0xdb6
000336c4  68c201f8  stur     x8, [x19, #0x1c]
000336c8  48008052  mov      w8, #2
000336cc  e843b372  movk     w8, #0x9a1f, lsl #16
000336d0  7f4201f8  stur     xzr, [x19, #0x14]
000336d4  681200b9  str      w8, [x19, #0x10]
000336d8  a6c10094  bl       #0x63d70 ; inet_addr@plt
000336dc  68aa40b9  ldr      w8, [x19, #0xa8]
000336e0  601600b9  str      w0, [x19, #0x14]
000336e4  1f010071  cmp      w8, #0
000336e8  cc020054  b.gt     #0x33740
000336ec  40008052  mov      w0, #2
000336f0  41008052  mov      w1, #2
000336f4  22028052  mov      w2, #0x11
000336f8  a2c10094  bl       #0x63d80 ; socket@plt
000336fc  1f040071  cmp      w0, #1
00033700  60aa00b9  str      w0, [x19, #0xa8]
00033704  eb010054  b.lt     #0x33740
00033708  e00bc03d  ldr      q0, [sp, #0x20]
0003370c  21008052  mov      w1, #1
00033710  82028052  mov      w2, #0x14
00033714  e30313aa  mov      x3, x19
00033718  04028052  mov      w4, #0x10
0003371c  6002803d  str      q0, [x19]
00033720  9cc10094  bl       #0x63d90 ; setsockopt@plt
00033724  60aa40b9  ldr      w0, [x19, #0xa8]
00033728  21008052  mov      w1, #1
0003372c  02018052  mov      w2, #8
00033730  1f2003d5  nop
00033734  43f11e10  adr      x3, #0x7155c
00033738  84008052  mov      w4, #4
0003373c  95c10094  bl       #0x63d90 ; setsockopt@plt
00033740  006a9852  mov      w0, #0xc350
00033744  9bc10094  bl       #0x63db0 ; usleep@plt

; VA range [0x33e1c, 0x33fb4)

_ZN6Socket14writeRotateCmdEv:
00033e1c  fd7bbfa9  stp      x29, x30, [sp, #-0x10]!
00033e20  fd030091  mov      x29, sp
00033e24  c80100b0  adrp     x8, #0x6c000
00033e28  1f2003d5  nop
00033e2c  0131f530  adr      x1, #0x1e44d
00033e30  08f543f9  ldr      x8, [x8, #0x7e8]
00033e34  42ffffd0  adrp     x2, #0x1d000
00033e38  42143491  add      x2, x2, #0xd05
00033e3c  c0008052  mov      w0, #6
00033e40  03014039  ldrb     w3, [x8]
00033e44  04054039  ldrb     w4, [x8, #1]
00033e48  e6bd0094  bl       #0x635e0 ; __android_log_print@plt
00033e4c  c80100b0  adrp     x8, #0x6c000
00033e50  08c143f9  ldr      x8, [x8, #0x780]
00033e54  00a940b9  ldr      w0, [x8, #0xa8]
00033e58  2001f837  tbnz     w0, #0x1f, #0x33e7c
00033e5c  c10100b0  adrp     x1, #0x6c000
00033e60  04410091  add      x4, x8, #0x10
00033e64  42008052  mov      w2, #2
00033e68  21f443f9  ldr      x1, [x1, #0x7e8]
00033e6c  e3031f2a  mov      w3, wzr
00033e70  05028052  mov      w5, #0x10
00033e74  b7bf0094  bl       #0x63d50 ; sendto@plt
00033e78  07000014  b        #0x33e94
00033e7c  1f2003d5  nop
00033e80  612ef530  adr      x1, #0x1e44d
00033e84  42fffff0  adrp     x2, #0x1e000
00033e88  42001791  add      x2, x2, #0x5c0
00033e8c  c0008052  mov      w0, #6
00033e90  d4bd0094  bl       #0x635e0 ; __android_log_print@plt
00033e94  e0031f2a  mov      w0, wzr
00033e98  fd7bc1a8  ldp      x29, x30, [sp], #0x10
00033e9c  c0035fd6  ret

_ZN6Socket17writeCameraSwitchEv:
00033ea0  fd7bbfa9  stp      x29, x30, [sp, #-0x10]!
00033ea4  fd030091  mov      x29, sp
00033ea8  c80100b0  adrp     x8, #0x6c000
00033eac  1f2003d5  nop
00033eb0  e12cf530  adr      x1, #0x1e44d
00033eb4  08f943f9  ldr      x8, [x8, #0x7f0]
00033eb8  42ffffd0  adrp     x2, #0x1d000
00033ebc  42143491  add      x2, x2, #0xd05
00033ec0  c0008052  mov      w0, #6
00033ec4  03014039  ldrb     w3, [x8]
00033ec8  04054039  ldrb     w4, [x8, #1]
00033ecc  c5bd0094  bl       #0x635e0 ; __android_log_print@plt
00033ed0  c80100b0  adrp     x8, #0x6c000
00033ed4  08c143f9  ldr      x8, [x8, #0x780]
00033ed8  00a940b9  ldr      w0, [x8, #0xa8]
00033edc  2001f837  tbnz     w0, #0x1f, #0x33f00
00033ee0  c10100b0  adrp     x1, #0x6c000
00033ee4  04410091  add      x4, x8, #0x10
00033ee8  42008052  mov      w2, #2
00033eec  21f843f9  ldr      x1, [x1, #0x7f0]
00033ef0  e3031f2a  mov      w3, wzr
00033ef4  05028052  mov      w5, #0x10
00033ef8  96bf0094  bl       #0x63d50 ; sendto@plt
00033efc  07000014  b        #0x33f18
00033f00  1f2003d5  nop
00033f04  412af530  adr      x1, #0x1e44d
00033f08  42fffff0  adrp     x2, #0x1e000
00033f0c  42001791  add      x2, x2, #0x5c0
00033f10  c0008052  mov      w0, #6
00033f14  b3bd0094  bl       #0x635e0 ; __android_log_print@plt
00033f18  e0031f2a  mov      w0, wzr
00033f1c  fd7bc1a8  ldp      x29, x30, [sp], #0x10
00033f20  c0035fd6  ret

_ZN6Socket7sendCmdEPhi:
00033f24  fd7bbda9  stp      x29, x30, [sp, #-0x30]!
00033f28  f50b00f9  str      x21, [sp, #0x10]
00033f2c  f44f02a9  stp      x20, x19, [sp, #0x20]
00033f30  fd030091  mov      x29, sp
00033f34  d50100b0  adrp     x21, #0x6c000
00033f38  b5c643f9  ldr      x21, [x21, #0x788]
00033f3c  a8aa40b9  ldr      w8, [x21, #0xa8]
00033f40  4802f837  tbnz     w8, #0x1f, #0x33f88
00033f44  f403022a  mov      w20, w2
00033f48  f30301aa  mov      x19, x1
00033f4c  1f2003d5  nop
00033f50  e127f530  adr      x1, #0x1e44d
00033f54  42fffff0  adrp     x2, #0x1e000
00033f58  42100e91  add      x2, x2, #0x384
00033f5c  c0008052  mov      w0, #6
00033f60  e303142a  mov      w3, w20
00033f64  9fbd0094  bl       #0x635e0 ; __android_log_print@plt
00033f68  a0aa40b9  ldr      w0, [x21, #0xa8]
00033f6c  827e4093  sxtw     x2, w20
00033f70  a4420091  add      x4, x21, #0x10
00033f74  e10313aa  mov      x1, x19
00033f78  e3031f2a  mov      w3, wzr
00033f7c  05028052  mov      w5, #0x10
00033f80  74bf0094  bl       #0x63d50 ; sendto@plt
00033f84  08000014  b        #0x33fa4
00033f88  1f2003d5  nop
00033f8c  0126f530  adr      x1, #0x1e44d
00033f90  42fffff0  adrp     x2, #0x1e000
00033f94  42d80891  add      x2, x2, #0x236
00033f98  c0008052  mov      w0, #6
00033f9c  91bd0094  bl       #0x635e0 ; __android_log_print@plt
00033fa0  00008012  mov      w0, #-1
00033fa4  f44f42a9  ldp      x20, x19, [sp, #0x20]
00033fa8  f50b40f9  ldr      x21, [sp, #0x10]
00033fac  fd7bc3a8  ldp      x29, x30, [sp], #0x30
00033fb0  c0035fd6  ret

; VA range [0x33cb4, 0x33cd8)
00033cb4  c0aa40b9  ldr      w0, [x22, #0xa8]
00033cb8  a16300d1  sub      x1, x29, #0x18
00033cbc  c4420091  add      x4, x22, #0x10
00033cc0  c5820091  add      x5, x22, #0x20
00033cc4  02028052  mov      w2, #0x10
00033cc8  e3031f2a  mov      w3, wzr
00033ccc  45c00094  bl       #0x63de0 ; recvfrom@plt
00033cd0  1f200071  cmp      w0, #8
00033cd4  81020054  b.ne     #0x33d24

; VA range [0x33d8c, 0x33de4)
00033d8c  d40100b0  adrp     x20, #0x6c000
00033d90  94c243f9  ldr      x20, [x20, #0x780]
00033d94  80aa40b9  ldr      w0, [x20, #0xa8]
00033d98  8001f837  tbnz     w0, #0x1f, #0x33dc8
00033d9c  c10100b0  adrp     x1, #0x6c000
00033da0  84420091  add      x4, x20, #0x10
00033da4  42008052  mov      w2, #2
00033da8  21cc43f9  ldr      x1, [x1, #0x798]
00033dac  e3031f2a  mov      w3, wzr
00033db0  05028052  mov      w5, #0x10
00033db4  e7bf0094  bl       #0x63d50 ; sendto@plt
00033db8  80aa40b9  ldr      w0, [x20, #0xa8]
00033dbc  41bf0094  bl       #0x63ac0 ; close@plt
00033dc0  08008012  mov      w8, #-1
00033dc4  88aa00b9  str      w8, [x20, #0xa8]
00033dc8  c0aa40b9  ldr      w0, [x22, #0xa8]
00033dcc  8000f837  tbnz     w0, #0x1f, #0x33ddc
00033dd0  3cbf0094  bl       #0x63ac0 ; close@plt
00033dd4  08008012  mov      w8, #-1
00033dd8  c8aa00b9  str      w8, [x22, #0xa8]
00033ddc  08008092  mov      x8, #-1
00033de0  680200f9  str      x8, [x19]
