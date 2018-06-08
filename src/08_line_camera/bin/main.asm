
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 30 00 	jmp	0x60	; 0x60 <__dtors_end>
   4:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
   8:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
   c:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  10:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  14:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  18:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  1c:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  20:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  24:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  28:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  2c:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  30:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  34:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  38:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  3c:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  40:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  44:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  48:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
  4c:	0c 94 71 05 	jmp	0xae2	; 0xae2 <__vector_19>
  50:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>

00000054 <__ctors_start>:
  54:	ea 00       	.word	0x00ea	; ????
  56:	0b 05       	cpc	r16, r11
  58:	b2 05       	cpc	r27, r2
  5a:	b6 05       	cpc	r27, r6

0000005c <__ctors_end>:
  5c:	ee 00       	.word	0x00ee	; ????
  5e:	ba 05       	cpc	r27, r10

00000060 <__dtors_end>:
  60:	11 24       	eor	r1, r1
  62:	1f be       	out	0x3f, r1	; 63
  64:	cf e5       	ldi	r28, 0x5F	; 95
  66:	d4 e0       	ldi	r29, 0x04	; 4
  68:	de bf       	out	0x3e, r29	; 62
  6a:	cd bf       	out	0x3d, r28	; 61

0000006c <__do_copy_data>:
  6c:	10 e0       	ldi	r17, 0x00	; 0
  6e:	a0 e6       	ldi	r26, 0x60	; 96
  70:	b0 e0       	ldi	r27, 0x00	; 0
  72:	e8 e0       	ldi	r30, 0x08	; 8
  74:	ff e0       	ldi	r31, 0x0F	; 15
  76:	02 c0       	rjmp	.+4      	; 0x7c <__do_copy_data+0x10>
  78:	05 90       	lpm	r0, Z+
  7a:	0d 92       	st	X+, r0
  7c:	a4 3b       	cpi	r26, 0xB4	; 180
  7e:	b1 07       	cpc	r27, r17
  80:	d9 f7       	brne	.-10     	; 0x78 <__do_copy_data+0xc>

00000082 <__do_clear_bss>:
  82:	21 e0       	ldi	r18, 0x01	; 1
  84:	a4 eb       	ldi	r26, 0xB4	; 180
  86:	b0 e0       	ldi	r27, 0x00	; 0
  88:	01 c0       	rjmp	.+2      	; 0x8c <.do_clear_bss_start>

0000008a <.do_clear_bss_loop>:
  8a:	1d 92       	st	X+, r1

0000008c <.do_clear_bss_start>:
  8c:	ac 3a       	cpi	r26, 0xAC	; 172
  8e:	b2 07       	cpc	r27, r18
  90:	e1 f7       	brne	.-8      	; 0x8a <.do_clear_bss_loop>

00000092 <__do_global_ctors>:
  92:	10 e0       	ldi	r17, 0x00	; 0
  94:	ce e2       	ldi	r28, 0x2E	; 46
  96:	d0 e0       	ldi	r29, 0x00	; 0
  98:	04 c0       	rjmp	.+8      	; 0xa2 <__do_global_ctors+0x10>
  9a:	21 97       	sbiw	r28, 0x01	; 1
  9c:	fe 01       	movw	r30, r28
  9e:	0e 94 50 06 	call	0xca0	; 0xca0 <__tablejump2__>
  a2:	ca 32       	cpi	r28, 0x2A	; 42
  a4:	d1 07       	cpc	r29, r17
  a6:	c9 f7       	brne	.-14     	; 0x9a <__do_global_ctors+0x8>
  a8:	0e 94 ad 00 	call	0x15a	; 0x15a <main>
  ac:	0c 94 77 07 	jmp	0xeee	; 0xeee <__do_global_dtors>

000000b0 <__bad_interrupt>:
  b0:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b4 <_ZN10LineFollow4mainEv>:
  b4:	cf 93       	push	r28
  b6:	df 93       	push	r29
  b8:	ec 01       	movw	r28, r24
  ba:	84 eb       	ldi	r24, 0xB4	; 180
  bc:	90 e0       	ldi	r25, 0x00	; 0
  be:	0e 94 89 01 	call	0x312	; 0x312 <_ZN10LineCamera4readEv>
  c2:	84 eb       	ldi	r24, 0xB4	; 180
  c4:	90 e0       	ldi	r25, 0x00	; 0
  c6:	0e 94 1b 01 	call	0x236	; 0x236 <_ZN10LineCamera7processEv>
  ca:	84 eb       	ldi	r24, 0xB4	; 180
  cc:	90 e0       	ldi	r25, 0x00	; 0
  ce:	0e 94 94 02 	call	0x528	; 0x528 <_ZN11LinePostion21compute_line_positionEv>
  d2:	84 eb       	ldi	r24, 0xB4	; 180
  d4:	90 e0       	ldi	r25, 0x00	; 0
  d6:	0e 94 55 02 	call	0x4aa	; 0x4aa <_ZN11LinePostion3getEv>
  da:	aa 27       	eor	r26, r26
  dc:	bb 27       	eor	r27, r27
  de:	a8 1b       	sub	r26, r24
  e0:	b9 0b       	sbc	r27, r25
  e2:	24 eb       	ldi	r18, 0xB4	; 180
  e4:	30 e0       	ldi	r19, 0x00	; 0
  e6:	0e 94 49 06 	call	0xc92	; 0xc92 <__usmulhisi3>
  ea:	24 e6       	ldi	r18, 0x64	; 100
  ec:	30 e0       	ldi	r19, 0x00	; 0
  ee:	40 e0       	ldi	r20, 0x00	; 0
  f0:	50 e0       	ldi	r21, 0x00	; 0
  f2:	0e 94 13 06 	call	0xc26	; 0xc26 <__divmodsi4>
  f6:	88 e2       	ldi	r24, 0x28	; 40
  f8:	90 e0       	ldi	r25, 0x00	; 0
  fa:	82 1b       	sub	r24, r18
  fc:	93 0b       	sbc	r25, r19
  fe:	b9 01       	movw	r22, r18
 100:	68 5d       	subi	r22, 0xD8	; 216
 102:	7f 4f       	sbci	r23, 0xFF	; 255
 104:	ac 01       	movw	r20, r24
 106:	ce 01       	movw	r24, r28
 108:	02 96       	adiw	r24, 0x02	; 2
 10a:	df 91       	pop	r29
 10c:	cf 91       	pop	r28
 10e:	0c 94 e2 01 	jmp	0x3c4	; 0x3c4 <_ZN5Motor3runEii>

00000112 <_ZN10LineFollowD1Ev>:
 112:	24 e7       	ldi	r18, 0x74	; 116
 114:	30 e0       	ldi	r19, 0x00	; 0
 116:	fc 01       	movw	r30, r24
 118:	21 93       	st	Z+, r18
 11a:	31 93       	st	Z+, r19
 11c:	cf 01       	movw	r24, r30
 11e:	0c 94 e1 01 	jmp	0x3c2	; 0x3c2 <_ZN5MotorD1Ev>

00000122 <_ZN10LineFollowD0Ev>:
 122:	cf 93       	push	r28
 124:	df 93       	push	r29
 126:	ec 01       	movw	r28, r24
 128:	0e 94 89 00 	call	0x112	; 0x112 <_ZN10LineFollowD1Ev>
 12c:	ce 01       	movw	r24, r28
 12e:	df 91       	pop	r29
 130:	cf 91       	pop	r28
 132:	0c 94 18 05 	jmp	0xa30	; 0xa30 <_ZdlPv>

00000136 <_ZN5Blink4mainEv>:
 136:	fc 01       	movw	r30, r24
 138:	82 81       	ldd	r24, Z+2	; 0x02
 13a:	93 81       	ldd	r25, Z+3	; 0x03
 13c:	00 97       	sbiw	r24, 0x00	; 0
 13e:	19 f0       	breq	.+6      	; 0x146 <_ZN5Blink4mainEv+0x10>
 140:	01 97       	sbiw	r24, 0x01	; 1
 142:	39 f0       	breq	.+14     	; 0x152 <_ZN5Blink4mainEv+0x1c>
 144:	08 95       	ret
 146:	dd 9a       	sbi	0x1b, 5	; 27
 148:	81 e0       	ldi	r24, 0x01	; 1
 14a:	90 e0       	ldi	r25, 0x00	; 0
 14c:	93 83       	std	Z+3, r25	; 0x03
 14e:	82 83       	std	Z+2, r24	; 0x02
 150:	08 95       	ret
 152:	dd 98       	cbi	0x1b, 5	; 27
 154:	13 82       	std	Z+3, r1	; 0x03
 156:	12 82       	std	Z+2, r1	; 0x02
 158:	08 95       	ret

0000015a <main>:
 15a:	cf 93       	push	r28
 15c:	df 93       	push	r29
 15e:	cd b7       	in	r28, 0x3d	; 61
 160:	de b7       	in	r29, 0x3e	; 62
 162:	2d 97       	sbiw	r28, 0x0d	; 13
 164:	0f b6       	in	r0, 0x3f	; 63
 166:	f8 94       	cli
 168:	de bf       	out	0x3e, r29	; 62
 16a:	0f be       	out	0x3f, r0	; 63
 16c:	cd bf       	out	0x3d, r28	; 61
 16e:	8a e6       	ldi	r24, 0x6A	; 106
 170:	90 e0       	ldi	r25, 0x00	; 0
 172:	9a 83       	std	Y+2, r25	; 0x02
 174:	89 83       	std	Y+1, r24	; 0x01
 176:	d5 9a       	sbi	0x1a, 5	; 26
 178:	ce 01       	movw	r24, r28
 17a:	06 96       	adiw	r24, 0x06	; 6
 17c:	0e 94 d9 05 	call	0xbb2	; 0xbb2 <_ZN10LEDDisplayC1Ev>
 180:	1c 82       	std	Y+4, r1	; 0x04
 182:	1b 82       	std	Y+3, r1	; 0x03
 184:	48 ec       	ldi	r20, 0xC8	; 200
 186:	50 e0       	ldi	r21, 0x00	; 0
 188:	be 01       	movw	r22, r28
 18a:	6f 5f       	subi	r22, 0xFF	; 255
 18c:	7f 4f       	sbci	r23, 0xFF	; 255
 18e:	8a e6       	ldi	r24, 0x6A	; 106
 190:	91 e0       	ldi	r25, 0x01	; 1
 192:	0e 94 34 05 	call	0xa68	; 0xa68 <_ZN5Timer8add_taskEP4Taskj>
 196:	84 e7       	ldi	r24, 0x74	; 116
 198:	90 e0       	ldi	r25, 0x00	; 0
 19a:	9c 87       	std	Y+12, r25	; 0x0c
 19c:	8b 87       	std	Y+11, r24	; 0x0b
 19e:	ce 01       	movw	r24, r28
 1a0:	0d 96       	adiw	r24, 0x0d	; 13
 1a2:	0e 94 d5 01 	call	0x3aa	; 0x3aa <_ZN5MotorC1Ev>
 1a6:	ba 98       	cbi	0x17, 2	; 23
 1a8:	c2 9a       	sbi	0x18, 2	; 24
 1aa:	b2 9b       	sbis	0x16, 2	; 22
 1ac:	05 c0       	rjmp	.+10     	; 0x1b8 <main+0x5e>
 1ae:	8a e6       	ldi	r24, 0x6A	; 106
 1b0:	91 e0       	ldi	r25, 0x01	; 1
 1b2:	0e 94 56 05 	call	0xaac	; 0xaac <_ZN5Timer4mainEv>
 1b6:	f9 cf       	rjmp	.-14     	; 0x1aa <main+0x50>
 1b8:	44 e6       	ldi	r20, 0x64	; 100
 1ba:	50 e0       	ldi	r21, 0x00	; 0
 1bc:	be 01       	movw	r22, r28
 1be:	65 5f       	subi	r22, 0xF5	; 245
 1c0:	7f 4f       	sbci	r23, 0xFF	; 255
 1c2:	8a e6       	ldi	r24, 0x6A	; 106
 1c4:	91 e0       	ldi	r25, 0x01	; 1
 1c6:	0e 94 34 05 	call	0xa68	; 0xa68 <_ZN5Timer8add_taskEP4Taskj>
 1ca:	8a e6       	ldi	r24, 0x6A	; 106
 1cc:	91 e0       	ldi	r25, 0x01	; 1
 1ce:	0e 94 56 05 	call	0xaac	; 0xaac <_ZN5Timer4mainEv>
 1d2:	fb cf       	rjmp	.-10     	; 0x1ca <main+0x70>

000001d4 <_GLOBAL__sub_I_line_camera>:
 1d4:	84 eb       	ldi	r24, 0xB4	; 180
 1d6:	90 e0       	ldi	r25, 0x00	; 0
 1d8:	0c 94 25 02 	jmp	0x44a	; 0x44a <_ZN11LinePostionC1Ev>

000001dc <_GLOBAL__sub_D_line_camera>:
 1dc:	84 eb       	ldi	r24, 0xB4	; 180
 1de:	90 e0       	ldi	r25, 0x00	; 0
 1e0:	0c 94 53 02 	jmp	0x4a6	; 0x4a6 <_ZN11LinePostionD1Ev>

000001e4 <_ZN5BlinkD1Ev>:
 1e4:	2a e6       	ldi	r18, 0x6A	; 106
 1e6:	30 e0       	ldi	r19, 0x00	; 0
 1e8:	fc 01       	movw	r30, r24
 1ea:	31 83       	std	Z+1, r19	; 0x01
 1ec:	20 83       	st	Z, r18
 1ee:	05 96       	adiw	r24, 0x05	; 5
 1f0:	0c 94 be 05 	jmp	0xb7c	; 0xb7c <_ZN10LEDDisplayD1Ev>

000001f4 <_ZN5BlinkD0Ev>:
 1f4:	cf 93       	push	r28
 1f6:	df 93       	push	r29
 1f8:	ec 01       	movw	r28, r24
 1fa:	0e 94 f2 00 	call	0x1e4	; 0x1e4 <_ZN5BlinkD1Ev>
 1fe:	ce 01       	movw	r24, r28
 200:	df 91       	pop	r29
 202:	cf 91       	pop	r28
 204:	0c 94 18 05 	jmp	0xa30	; 0xa30 <_ZdlPv>

00000208 <_ZN5ArrayIaLj128EED1Ev>:
 208:	08 95       	ret

0000020a <_ZN5ArrayIaLj128EE4sizeEv>:
 20a:	80 e8       	ldi	r24, 0x80	; 128
 20c:	90 e0       	ldi	r25, 0x00	; 0
 20e:	08 95       	ret

00000210 <_ZN5ArrayIaLj128EEixEj>:
 210:	6d 5f       	subi	r22, 0xFD	; 253
 212:	7f 4f       	sbci	r23, 0xFF	; 255
 214:	86 0f       	add	r24, r22
 216:	97 1f       	adc	r25, r23
 218:	08 95       	ret

0000021a <_ZN5ArrayIaLj128EED0Ev>:
 21a:	0c 94 18 05 	jmp	0xa30	; 0xa30 <_ZdlPv>

0000021e <_ZN10LineCameraC1Ev>:
 21e:	2e e7       	ldi	r18, 0x7E	; 126
 220:	30 e0       	ldi	r19, 0x00	; 0
 222:	fc 01       	movw	r30, r24
 224:	31 83       	std	Z+1, r19	; 0x01
 226:	20 83       	st	Z, r18
 228:	d2 98       	cbi	0x1a, 2	; 26
 22a:	d3 9a       	sbi	0x1a, 3	; 26
 22c:	d4 9a       	sbi	0x1a, 4	; 26
 22e:	dc 98       	cbi	0x1b, 4	; 27
 230:	db 98       	cbi	0x1b, 3	; 27
 232:	08 95       	ret

00000234 <_ZN10LineCameraD1Ev>:
 234:	08 95       	ret

00000236 <_ZN10LineCamera7processEv>:
 236:	8f 92       	push	r8
 238:	9f 92       	push	r9
 23a:	af 92       	push	r10
 23c:	bf 92       	push	r11
 23e:	ef 92       	push	r14
 240:	ff 92       	push	r15
 242:	0f 93       	push	r16
 244:	1f 93       	push	r17
 246:	cf 93       	push	r28
 248:	df 93       	push	r29
 24a:	ec 01       	movw	r28, r24
 24c:	8c 01       	movw	r16, r24
 24e:	0d 5f       	subi	r16, 0xFD	; 253
 250:	1f 4f       	sbci	r17, 0xFF	; 255
 252:	7c 01       	movw	r14, r24
 254:	83 e8       	ldi	r24, 0x83	; 131
 256:	e8 0e       	add	r14, r24
 258:	f1 1c       	adc	r15, r1
 25a:	f8 01       	movw	r30, r16
 25c:	60 e0       	ldi	r22, 0x00	; 0
 25e:	70 e0       	ldi	r23, 0x00	; 0
 260:	cb 01       	movw	r24, r22
 262:	81 90       	ld	r8, Z+
 264:	08 2c       	mov	r0, r8
 266:	00 0c       	add	r0, r0
 268:	99 08       	sbc	r9, r9
 26a:	aa 08       	sbc	r10, r10
 26c:	bb 08       	sbc	r11, r11
 26e:	68 0d       	add	r22, r8
 270:	79 1d       	adc	r23, r9
 272:	8a 1d       	adc	r24, r10
 274:	9b 1d       	adc	r25, r11
 276:	ee 15       	cp	r30, r14
 278:	ff 05       	cpc	r31, r15
 27a:	99 f7       	brne	.-26     	; 0x262 <_ZN10LineCamera7processEv+0x2c>
 27c:	20 e8       	ldi	r18, 0x80	; 128
 27e:	30 e0       	ldi	r19, 0x00	; 0
 280:	40 e0       	ldi	r20, 0x00	; 0
 282:	50 e0       	ldi	r21, 0x00	; 0
 284:	0e 94 13 06 	call	0xc26	; 0xc26 <__divmodsi4>
 288:	f8 01       	movw	r30, r16
 28a:	80 81       	ld	r24, Z
 28c:	82 1b       	sub	r24, r18
 28e:	81 93       	st	Z+, r24
 290:	8f 01       	movw	r16, r30
 292:	ee 15       	cp	r30, r14
 294:	ff 05       	cpc	r31, r15
 296:	c1 f7       	brne	.-16     	; 0x288 <_ZN10LineCamera7processEv+0x52>
 298:	fe 01       	movw	r30, r28
 29a:	ce 01       	movw	r24, r28
 29c:	80 58       	subi	r24, 0x80	; 128
 29e:	9f 4f       	sbci	r25, 0xFF	; 255
 2a0:	2f ef       	ldi	r18, 0xFF	; 255
 2a2:	31 e0       	ldi	r19, 0x01	; 1
 2a4:	43 81       	ldd	r20, Z+3	; 0x03
 2a6:	14 16       	cp	r1, r20
 2a8:	14 f4       	brge	.+4      	; 0x2ae <_ZN10LineCamera7processEv+0x78>
 2aa:	33 83       	std	Z+3, r19	; 0x03
 2ac:	01 c0       	rjmp	.+2      	; 0x2b0 <_ZN10LineCamera7processEv+0x7a>
 2ae:	23 83       	std	Z+3, r18	; 0x03
 2b0:	31 96       	adiw	r30, 0x01	; 1
 2b2:	8e 17       	cp	r24, r30
 2b4:	9f 07       	cpc	r25, r31
 2b6:	b1 f7       	brne	.-20     	; 0x2a4 <_ZN10LineCamera7processEv+0x6e>
 2b8:	df 91       	pop	r29
 2ba:	cf 91       	pop	r28
 2bc:	1f 91       	pop	r17
 2be:	0f 91       	pop	r16
 2c0:	ff 90       	pop	r15
 2c2:	ef 90       	pop	r14
 2c4:	bf 90       	pop	r11
 2c6:	af 90       	pop	r10
 2c8:	9f 90       	pop	r9
 2ca:	8f 90       	pop	r8
 2cc:	08 95       	ret

000002ce <_ZN10LineCamera8adc_initEh>:
 2ce:	80 e4       	ldi	r24, 0x40	; 64
 2d0:	87 b9       	out	0x07, r24	; 7
 2d2:	83 e8       	ldi	r24, 0x83	; 131
 2d4:	86 b9       	out	0x06, r24	; 6
 2d6:	87 b1       	in	r24, 0x07	; 7
 2d8:	67 70       	andi	r22, 0x07	; 7
 2da:	68 2b       	or	r22, r24
 2dc:	67 b9       	out	0x07, r22	; 7
 2de:	08 95       	ret

000002e0 <_ZN10LineCamera8adc_readEv>:
 2e0:	36 9a       	sbi	0x06, 6	; 6
 2e2:	36 9b       	sbis	0x06, 6	; 6
 2e4:	02 c0       	rjmp	.+4      	; 0x2ea <_ZN10LineCamera8adc_readEv+0xa>
 2e6:	00 00       	nop
 2e8:	fc cf       	rjmp	.-8      	; 0x2e2 <_ZN10LineCamera8adc_readEv+0x2>
 2ea:	84 b1       	in	r24, 0x04	; 4
 2ec:	95 b1       	in	r25, 0x05	; 5
 2ee:	08 95       	ret

000002f0 <_ZN10LineCamera11delay_microEv>:
	...
 310:	08 95       	ret

00000312 <_ZN10LineCamera4readEv>:
 312:	ef 92       	push	r14
 314:	ff 92       	push	r15
 316:	0f 93       	push	r16
 318:	1f 93       	push	r17
 31a:	cf 93       	push	r28
 31c:	df 93       	push	r29
 31e:	ec 01       	movw	r28, r24
 320:	62 e0       	ldi	r22, 0x02	; 2
 322:	0e 94 67 01 	call	0x2ce	; 0x2ce <_ZN10LineCamera8adc_initEh>
 326:	ce 01       	movw	r24, r28
 328:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN10LineCamera11delay_microEv>
 32c:	dc 9a       	sbi	0x1b, 4	; 27
 32e:	ce 01       	movw	r24, r28
 330:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN10LineCamera11delay_microEv>
 334:	db 9a       	sbi	0x1b, 3	; 27
 336:	ce 01       	movw	r24, r28
 338:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN10LineCamera11delay_microEv>
 33c:	dc 98       	cbi	0x1b, 4	; 27
 33e:	ce 01       	movw	r24, r28
 340:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN10LineCamera11delay_microEv>
 344:	db 98       	cbi	0x1b, 3	; 27
 346:	ce 01       	movw	r24, r28
 348:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN10LineCamera11delay_microEv>
 34c:	8e 01       	movw	r16, r28
 34e:	0d 5f       	subi	r16, 0xFD	; 253
 350:	1f 4f       	sbci	r17, 0xFF	; 255
 352:	7e 01       	movw	r14, r28
 354:	83 e8       	ldi	r24, 0x83	; 131
 356:	e8 0e       	add	r14, r24
 358:	f1 1c       	adc	r15, r1
 35a:	db 9a       	sbi	0x1b, 3	; 27
 35c:	ce 01       	movw	r24, r28
 35e:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN10LineCamera11delay_microEv>
 362:	ce 01       	movw	r24, r28
 364:	0e 94 70 01 	call	0x2e0	; 0x2e0 <_ZN10LineCamera8adc_readEv>
 368:	23 e0       	ldi	r18, 0x03	; 3
 36a:	95 95       	asr	r25
 36c:	87 95       	ror	r24
 36e:	2a 95       	dec	r18
 370:	e1 f7       	brne	.-8      	; 0x36a <_ZN10LineCamera4readEv+0x58>
 372:	f8 01       	movw	r30, r16
 374:	81 93       	st	Z+, r24
 376:	8f 01       	movw	r16, r30
 378:	db 98       	cbi	0x1b, 3	; 27
 37a:	ce 01       	movw	r24, r28
 37c:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN10LineCamera11delay_microEv>
 380:	0e 15       	cp	r16, r14
 382:	1f 05       	cpc	r17, r15
 384:	51 f7       	brne	.-44     	; 0x35a <_ZN10LineCamera4readEv+0x48>
 386:	df 91       	pop	r29
 388:	cf 91       	pop	r28
 38a:	1f 91       	pop	r17
 38c:	0f 91       	pop	r16
 38e:	ff 90       	pop	r15
 390:	ef 90       	pop	r14
 392:	08 95       	ret

00000394 <_ZN5USARTC1Ev>:
 394:	10 bc       	out	0x20, r1	; 32
 396:	80 e4       	ldi	r24, 0x40	; 64
 398:	89 b9       	out	0x09, r24	; 9
 39a:	80 b5       	in	r24, 0x20	; 32
 39c:	86 68       	ori	r24, 0x86	; 134
 39e:	80 bd       	out	0x20, r24	; 32
 3a0:	8a b1       	in	r24, 0x0a	; 10
 3a2:	88 61       	ori	r24, 0x18	; 24
 3a4:	8a b9       	out	0x0a, r24	; 10
 3a6:	08 95       	ret

000003a8 <_ZN5USARTD1Ev>:
 3a8:	08 95       	ret

000003aa <_ZN5MotorC1Ev>:
 3aa:	80 ef       	ldi	r24, 0xF0	; 240
 3ac:	81 bb       	out	0x11, r24	; 17
 3ae:	95 98       	cbi	0x12, 5	; 18
 3b0:	81 ea       	ldi	r24, 0xA1	; 161
 3b2:	8f bd       	out	0x2f, r24	; 47
 3b4:	81 e0       	ldi	r24, 0x01	; 1
 3b6:	8e bd       	out	0x2e, r24	; 46
 3b8:	1b bc       	out	0x2b, r1	; 43
 3ba:	1a bc       	out	0x2a, r1	; 42
 3bc:	19 bc       	out	0x29, r1	; 41
 3be:	18 bc       	out	0x28, r1	; 40
 3c0:	08 95       	ret

000003c2 <_ZN5MotorD1Ev>:
 3c2:	08 95       	ret

000003c4 <_ZN5Motor3runEii>:
 3c4:	6f 3f       	cpi	r22, 0xFF	; 255
 3c6:	71 05       	cpc	r23, r1
 3c8:	09 f0       	breq	.+2      	; 0x3cc <_ZN5Motor3runEii+0x8>
 3ca:	3c f4       	brge	.+14     	; 0x3da <_ZN5Motor3runEii+0x16>
 3cc:	61 30       	cpi	r22, 0x01	; 1
 3ce:	8f ef       	ldi	r24, 0xFF	; 255
 3d0:	78 07       	cpc	r23, r24
 3d2:	2c f4       	brge	.+10     	; 0x3de <_ZN5Motor3runEii+0x1a>
 3d4:	61 e0       	ldi	r22, 0x01	; 1
 3d6:	7f ef       	ldi	r23, 0xFF	; 255
 3d8:	02 c0       	rjmp	.+4      	; 0x3de <_ZN5Motor3runEii+0x1a>
 3da:	6f ef       	ldi	r22, 0xFF	; 255
 3dc:	70 e0       	ldi	r23, 0x00	; 0
 3de:	4f 3f       	cpi	r20, 0xFF	; 255
 3e0:	51 05       	cpc	r21, r1
 3e2:	09 f0       	breq	.+2      	; 0x3e6 <_ZN5Motor3runEii+0x22>
 3e4:	44 f4       	brge	.+16     	; 0x3f6 <_ZN5Motor3runEii+0x32>
 3e6:	41 30       	cpi	r20, 0x01	; 1
 3e8:	8f ef       	ldi	r24, 0xFF	; 255
 3ea:	58 07       	cpc	r21, r24
 3ec:	6c f0       	brlt	.+26     	; 0x408 <__LOCK_REGION_LENGTH__+0x8>
 3ee:	14 16       	cp	r1, r20
 3f0:	15 06       	cpc	r1, r21
 3f2:	1c f0       	brlt	.+6      	; 0x3fa <_ZN5Motor3runEii+0x36>
 3f4:	05 c0       	rjmp	.+10     	; 0x400 <__LOCK_REGION_LENGTH__>
 3f6:	4f ef       	ldi	r20, 0xFF	; 255
 3f8:	50 e0       	ldi	r21, 0x00	; 0
 3fa:	4a bd       	out	0x2a, r20	; 42
 3fc:	96 9a       	sbi	0x12, 6	; 18
 3fe:	0b c0       	rjmp	.+22     	; 0x416 <__LOCK_REGION_LENGTH__+0x16>
 400:	41 15       	cp	r20, r1
 402:	51 05       	cpc	r21, r1
 404:	39 f0       	breq	.+14     	; 0x414 <__LOCK_REGION_LENGTH__+0x14>
 406:	02 c0       	rjmp	.+4      	; 0x40c <__LOCK_REGION_LENGTH__+0xc>
 408:	41 e0       	ldi	r20, 0x01	; 1
 40a:	5f ef       	ldi	r21, 0xFF	; 255
 40c:	41 95       	neg	r20
 40e:	4a bd       	out	0x2a, r20	; 42
 410:	96 98       	cbi	0x12, 6	; 18
 412:	01 c0       	rjmp	.+2      	; 0x416 <__LOCK_REGION_LENGTH__+0x16>
 414:	1a bc       	out	0x2a, r1	; 42
 416:	16 16       	cp	r1, r22
 418:	17 06       	cpc	r1, r23
 41a:	1c f4       	brge	.+6      	; 0x422 <__LOCK_REGION_LENGTH__+0x22>
 41c:	68 bd       	out	0x28, r22	; 40
 41e:	97 98       	cbi	0x12, 7	; 18
 420:	08 95       	ret
 422:	61 15       	cp	r22, r1
 424:	71 05       	cpc	r23, r1
 426:	21 f0       	breq	.+8      	; 0x430 <__LOCK_REGION_LENGTH__+0x30>
 428:	61 95       	neg	r22
 42a:	68 bd       	out	0x28, r22	; 40
 42c:	97 9a       	sbi	0x12, 7	; 18
 42e:	08 95       	ret
 430:	18 bc       	out	0x28, r1	; 40
 432:	08 95       	ret

00000434 <_ZN5ArrayIaLj35EED1Ev>:
 434:	08 95       	ret

00000436 <_ZN5ArrayIaLj35EE4sizeEv>:
 436:	83 e2       	ldi	r24, 0x23	; 35
 438:	90 e0       	ldi	r25, 0x00	; 0
 43a:	08 95       	ret

0000043c <_ZN5ArrayIaLj35EEixEj>:
 43c:	6d 5f       	subi	r22, 0xFD	; 253
 43e:	7f 4f       	sbci	r23, 0xFF	; 255
 440:	86 0f       	add	r24, r22
 442:	97 1f       	adc	r25, r23
 444:	08 95       	ret

00000446 <_ZN5ArrayIaLj35EED0Ev>:
 446:	0c 94 18 05 	jmp	0xa30	; 0xa30 <_ZdlPv>

0000044a <_ZN11LinePostionC1Ev>:
 44a:	cf 93       	push	r28
 44c:	df 93       	push	r29
 44e:	ec 01       	movw	r28, r24
 450:	0e 94 0f 01 	call	0x21e	; 0x21e <_ZN10LineCameraC1Ev>
 454:	fe 01       	movw	r30, r28
 456:	e4 57       	subi	r30, 0x74	; 116
 458:	ff 4f       	sbci	r31, 0xFF	; 255
 45a:	8a e8       	ldi	r24, 0x8A	; 138
 45c:	90 e0       	ldi	r25, 0x00	; 0
 45e:	91 83       	std	Z+1, r25	; 0x01
 460:	80 83       	st	Z, r24
 462:	33 96       	adiw	r30, 0x03	; 3
 464:	ce 01       	movw	r24, r28
 466:	8e 54       	subi	r24, 0x4E	; 78
 468:	9f 4f       	sbci	r25, 0xFF	; 255
 46a:	21 e0       	ldi	r18, 0x01	; 1
 46c:	21 93       	st	Z+, r18
 46e:	e8 17       	cp	r30, r24
 470:	f9 07       	cpc	r31, r25
 472:	e1 f7       	brne	.-8      	; 0x46c <__stack+0xd>
 474:	fe 01       	movw	r30, r28
 476:	e6 56       	subi	r30, 0x66	; 102
 478:	ff 4f       	sbci	r31, 0xFF	; 255
 47a:	ce 01       	movw	r24, r28
 47c:	89 55       	subi	r24, 0x59	; 89
 47e:	9f 4f       	sbci	r25, 0xFF	; 255
 480:	2f ef       	ldi	r18, 0xFF	; 255
 482:	21 93       	st	Z+, r18
 484:	8e 17       	cp	r24, r30
 486:	9f 07       	cpc	r25, r31
 488:	e1 f7       	brne	.-8      	; 0x482 <__stack+0x23>
 48a:	fe 01       	movw	r30, r28
 48c:	e8 57       	subi	r30, 0x78	; 120
 48e:	ff 4f       	sbci	r31, 0xFF	; 255
 490:	10 82       	st	Z, r1
 492:	11 82       	std	Z+1, r1	; 0x01
 494:	12 82       	std	Z+2, r1	; 0x02
 496:	13 82       	std	Z+3, r1	; 0x03
 498:	ca 57       	subi	r28, 0x7A	; 122
 49a:	df 4f       	sbci	r29, 0xFF	; 255
 49c:	19 82       	std	Y+1, r1	; 0x01
 49e:	18 82       	st	Y, r1
 4a0:	df 91       	pop	r29
 4a2:	cf 91       	pop	r28
 4a4:	08 95       	ret

000004a6 <_ZN11LinePostionD1Ev>:
 4a6:	0c 94 1a 01 	jmp	0x234	; 0x234 <_ZN10LineCameraD1Ev>

000004aa <_ZN11LinePostion3getEv>:
 4aa:	8a 57       	subi	r24, 0x7A	; 122
 4ac:	9f 4f       	sbci	r25, 0xFF	; 255
 4ae:	fc 01       	movw	r30, r24
 4b0:	80 81       	ld	r24, Z
 4b2:	91 81       	ldd	r25, Z+1	; 0x01
 4b4:	08 95       	ret

000004b6 <_ZN11LinePostion19process_convolutionEj>:
 4b6:	cf 92       	push	r12
 4b8:	df 92       	push	r13
 4ba:	ef 92       	push	r14
 4bc:	ff 92       	push	r15
 4be:	0f 93       	push	r16
 4c0:	1f 93       	push	r17
 4c2:	cf 93       	push	r28
 4c4:	df 93       	push	r29
 4c6:	ac 01       	movw	r20, r24
 4c8:	ec 01       	movw	r28, r24
 4ca:	c1 57       	subi	r28, 0x71	; 113
 4cc:	df 4f       	sbci	r29, 0xFF	; 255
 4ce:	fc 01       	movw	r30, r24
 4d0:	e6 0f       	add	r30, r22
 4d2:	f7 1f       	adc	r31, r23
 4d4:	8c 01       	movw	r16, r24
 4d6:	0e 54       	subi	r16, 0x4E	; 78
 4d8:	1f 4f       	sbci	r17, 0xFF	; 255
 4da:	c1 2c       	mov	r12, r1
 4dc:	d1 2c       	mov	r13, r1
 4de:	76 01       	movw	r14, r12
 4e0:	cf 01       	movw	r24, r30
 4e2:	84 1b       	sub	r24, r20
 4e4:	95 0b       	sbc	r25, r21
 4e6:	80 38       	cpi	r24, 0x80	; 128
 4e8:	91 05       	cpc	r25, r1
 4ea:	70 f4       	brcc	.+28     	; 0x508 <_ZN11LinePostion19process_convolutionEj+0x52>
 4ec:	28 81       	ld	r18, Y
 4ee:	a3 81       	ldd	r26, Z+3	; 0x03
 4f0:	02 2e       	mov	r0, r18
 4f2:	00 0c       	add	r0, r0
 4f4:	33 0b       	sbc	r19, r19
 4f6:	0a 2e       	mov	r0, r26
 4f8:	00 0c       	add	r0, r0
 4fa:	bb 0b       	sbc	r27, r27
 4fc:	0e 94 32 06 	call	0xc64	; 0xc64 <__mulhisi3>
 500:	c6 0e       	add	r12, r22
 502:	d7 1e       	adc	r13, r23
 504:	e8 1e       	adc	r14, r24
 506:	f9 1e       	adc	r15, r25
 508:	21 96       	adiw	r28, 0x01	; 1
 50a:	31 96       	adiw	r30, 0x01	; 1
 50c:	c0 17       	cp	r28, r16
 50e:	d1 07       	cpc	r29, r17
 510:	39 f7       	brne	.-50     	; 0x4e0 <_ZN11LinePostion19process_convolutionEj+0x2a>
 512:	c7 01       	movw	r24, r14
 514:	b6 01       	movw	r22, r12
 516:	df 91       	pop	r29
 518:	cf 91       	pop	r28
 51a:	1f 91       	pop	r17
 51c:	0f 91       	pop	r16
 51e:	ff 90       	pop	r15
 520:	ef 90       	pop	r14
 522:	df 90       	pop	r13
 524:	cf 90       	pop	r12
 526:	08 95       	ret

00000528 <_ZN11LinePostion21compute_line_positionEv>:
 528:	af 92       	push	r10
 52a:	bf 92       	push	r11
 52c:	cf 92       	push	r12
 52e:	df 92       	push	r13
 530:	ef 92       	push	r14
 532:	ff 92       	push	r15
 534:	0f 93       	push	r16
 536:	1f 93       	push	r17
 538:	cf 93       	push	r28
 53a:	df 93       	push	r29
 53c:	ec 01       	movw	r28, r24
 53e:	00 e0       	ldi	r16, 0x00	; 0
 540:	10 e0       	ldi	r17, 0x00	; 0
 542:	c1 2c       	mov	r12, r1
 544:	8f e1       	ldi	r24, 0x1F	; 31
 546:	d8 2e       	mov	r13, r24
 548:	8a e0       	ldi	r24, 0x0A	; 10
 54a:	e8 2e       	mov	r14, r24
 54c:	8a ef       	ldi	r24, 0xFA	; 250
 54e:	f8 2e       	mov	r15, r24
 550:	5e 01       	movw	r10, r28
 552:	86 e8       	ldi	r24, 0x86	; 134
 554:	a8 0e       	add	r10, r24
 556:	b1 1c       	adc	r11, r1
 558:	b8 01       	movw	r22, r16
 55a:	ce 01       	movw	r24, r28
 55c:	0e 94 5b 02 	call	0x4b6	; 0x4b6 <_ZN11LinePostion19process_convolutionEj>
 560:	c6 16       	cp	r12, r22
 562:	d7 06       	cpc	r13, r23
 564:	e8 06       	cpc	r14, r24
 566:	f9 06       	cpc	r15, r25
 568:	2c f4       	brge	.+10     	; 0x574 <_ZN11LinePostion21compute_line_positionEv+0x4c>
 56a:	f5 01       	movw	r30, r10
 56c:	11 83       	std	Z+1, r17	; 0x01
 56e:	00 83       	st	Z, r16
 570:	6b 01       	movw	r12, r22
 572:	7c 01       	movw	r14, r24
 574:	0f 5f       	subi	r16, 0xFF	; 255
 576:	1f 4f       	sbci	r17, 0xFF	; 255
 578:	00 38       	cpi	r16, 0x80	; 128
 57a:	11 05       	cpc	r17, r1
 57c:	69 f7       	brne	.-38     	; 0x558 <_ZN11LinePostion21compute_line_positionEv+0x30>
 57e:	fe 01       	movw	r30, r28
 580:	e8 57       	subi	r30, 0x78	; 120
 582:	ff 4f       	sbci	r31, 0xFF	; 255
 584:	c0 82       	st	Z, r12
 586:	d1 82       	std	Z+1, r13	; 0x01
 588:	e2 82       	std	Z+2, r14	; 0x02
 58a:	f3 82       	std	Z+3, r15	; 0x03
 58c:	32 97       	sbiw	r30, 0x02	; 2
 58e:	80 81       	ld	r24, Z
 590:	91 81       	ldd	r25, Z+1	; 0x01
 592:	85 36       	cpi	r24, 0x65	; 101
 594:	91 05       	cpc	r25, r1
 596:	14 f0       	brlt	.+4      	; 0x59c <_ZN11LinePostion21compute_line_positionEv+0x74>
 598:	11 82       	std	Z+1, r1	; 0x01
 59a:	10 82       	st	Z, r1
 59c:	80 81       	ld	r24, Z
 59e:	91 81       	ldd	r25, Z+1	; 0x01
 5a0:	81 35       	cpi	r24, 0x51	; 81
 5a2:	91 05       	cpc	r25, r1
 5a4:	24 f0       	brlt	.+8      	; 0x5ae <_ZN11LinePostion21compute_line_positionEv+0x86>
 5a6:	80 e5       	ldi	r24, 0x50	; 80
 5a8:	90 e0       	ldi	r25, 0x00	; 0
 5aa:	91 83       	std	Z+1, r25	; 0x01
 5ac:	80 83       	st	Z, r24
 5ae:	80 81       	ld	r24, Z
 5b0:	91 81       	ldd	r25, Z+1	; 0x01
 5b2:	88 97       	sbiw	r24, 0x28	; 40
 5b4:	91 83       	std	Z+1, r25	; 0x01
 5b6:	80 83       	st	Z, r24
 5b8:	df 91       	pop	r29
 5ba:	cf 91       	pop	r28
 5bc:	1f 91       	pop	r17
 5be:	0f 91       	pop	r16
 5c0:	ff 90       	pop	r15
 5c2:	ef 90       	pop	r14
 5c4:	df 90       	pop	r13
 5c6:	cf 90       	pop	r12
 5c8:	bf 90       	pop	r11
 5ca:	af 90       	pop	r10
 5cc:	08 95       	ret

000005ce <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
 5ce:	ff 92       	push	r15
 5d0:	0f 93       	push	r16
 5d2:	1f 93       	push	r17
 5d4:	cf 93       	push	r28
 5d6:	df 93       	push	r29
 5d8:	ec 01       	movw	r28, r24
 5da:	f6 2e       	mov	r15, r22
 5dc:	04 2f       	mov	r16, r20
 5de:	12 2f       	mov	r17, r18
 5e0:	e8 81       	ld	r30, Y
 5e2:	f9 81       	ldd	r31, Y+1	; 0x01
 5e4:	01 90       	ld	r0, Z+
 5e6:	f0 81       	ld	r31, Z
 5e8:	e0 2d       	mov	r30, r0
 5ea:	09 95       	icall
 5ec:	e8 81       	ld	r30, Y
 5ee:	f9 81       	ldd	r31, Y+1	; 0x01
 5f0:	04 80       	ldd	r0, Z+4	; 0x04
 5f2:	f5 81       	ldd	r31, Z+5	; 0x05
 5f4:	e0 2d       	mov	r30, r0
 5f6:	6f 2d       	mov	r22, r15
 5f8:	ce 01       	movw	r24, r28
 5fa:	09 95       	icall
 5fc:	e8 81       	ld	r30, Y
 5fe:	f9 81       	ldd	r31, Y+1	; 0x01
 600:	04 80       	ldd	r0, Z+4	; 0x04
 602:	f5 81       	ldd	r31, Z+5	; 0x05
 604:	e0 2d       	mov	r30, r0
 606:	60 2f       	mov	r22, r16
 608:	ce 01       	movw	r24, r28
 60a:	09 95       	icall
 60c:	e8 81       	ld	r30, Y
 60e:	f9 81       	ldd	r31, Y+1	; 0x01
 610:	04 80       	ldd	r0, Z+4	; 0x04
 612:	f5 81       	ldd	r31, Z+5	; 0x05
 614:	e0 2d       	mov	r30, r0
 616:	61 2f       	mov	r22, r17
 618:	ce 01       	movw	r24, r28
 61a:	09 95       	icall
 61c:	e8 81       	ld	r30, Y
 61e:	f9 81       	ldd	r31, Y+1	; 0x01
 620:	02 80       	ldd	r0, Z+2	; 0x02
 622:	f3 81       	ldd	r31, Z+3	; 0x03
 624:	e0 2d       	mov	r30, r0
 626:	ce 01       	movw	r24, r28
 628:	df 91       	pop	r29
 62a:	cf 91       	pop	r28
 62c:	1f 91       	pop	r17
 62e:	0f 91       	pop	r16
 630:	ff 90       	pop	r15
 632:	09 94       	ijmp

00000634 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
 634:	ef 92       	push	r14
 636:	ff 92       	push	r15
 638:	0f 93       	push	r16
 63a:	1f 93       	push	r17
 63c:	cf 93       	push	r28
 63e:	df 93       	push	r29
 640:	ec 01       	movw	r28, r24
 642:	e6 2e       	mov	r14, r22
 644:	f4 2e       	mov	r15, r20
 646:	12 2f       	mov	r17, r18
 648:	03 2f       	mov	r16, r19
 64a:	e8 81       	ld	r30, Y
 64c:	f9 81       	ldd	r31, Y+1	; 0x01
 64e:	01 90       	ld	r0, Z+
 650:	f0 81       	ld	r31, Z
 652:	e0 2d       	mov	r30, r0
 654:	09 95       	icall
 656:	e8 81       	ld	r30, Y
 658:	f9 81       	ldd	r31, Y+1	; 0x01
 65a:	04 80       	ldd	r0, Z+4	; 0x04
 65c:	f5 81       	ldd	r31, Z+5	; 0x05
 65e:	e0 2d       	mov	r30, r0
 660:	6e 2d       	mov	r22, r14
 662:	ce 01       	movw	r24, r28
 664:	09 95       	icall
 666:	e8 81       	ld	r30, Y
 668:	f9 81       	ldd	r31, Y+1	; 0x01
 66a:	04 80       	ldd	r0, Z+4	; 0x04
 66c:	f5 81       	ldd	r31, Z+5	; 0x05
 66e:	e0 2d       	mov	r30, r0
 670:	6f 2d       	mov	r22, r15
 672:	ce 01       	movw	r24, r28
 674:	09 95       	icall
 676:	e8 81       	ld	r30, Y
 678:	f9 81       	ldd	r31, Y+1	; 0x01
 67a:	04 80       	ldd	r0, Z+4	; 0x04
 67c:	f5 81       	ldd	r31, Z+5	; 0x05
 67e:	e0 2d       	mov	r30, r0
 680:	60 2f       	mov	r22, r16
 682:	ce 01       	movw	r24, r28
 684:	09 95       	icall
 686:	e8 81       	ld	r30, Y
 688:	f9 81       	ldd	r31, Y+1	; 0x01
 68a:	04 80       	ldd	r0, Z+4	; 0x04
 68c:	f5 81       	ldd	r31, Z+5	; 0x05
 68e:	e0 2d       	mov	r30, r0
 690:	61 2f       	mov	r22, r17
 692:	ce 01       	movw	r24, r28
 694:	09 95       	icall
 696:	e8 81       	ld	r30, Y
 698:	f9 81       	ldd	r31, Y+1	; 0x01
 69a:	02 80       	ldd	r0, Z+2	; 0x02
 69c:	f3 81       	ldd	r31, Z+3	; 0x03
 69e:	e0 2d       	mov	r30, r0
 6a0:	ce 01       	movw	r24, r28
 6a2:	df 91       	pop	r29
 6a4:	cf 91       	pop	r28
 6a6:	1f 91       	pop	r17
 6a8:	0f 91       	pop	r16
 6aa:	ff 90       	pop	r15
 6ac:	ef 90       	pop	r14
 6ae:	09 94       	ijmp

000006b0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
 6b0:	cf 92       	push	r12
 6b2:	df 92       	push	r13
 6b4:	ef 92       	push	r14
 6b6:	ff 92       	push	r15
 6b8:	0f 93       	push	r16
 6ba:	1f 93       	push	r17
 6bc:	cf 93       	push	r28
 6be:	df 93       	push	r29
 6c0:	ec 01       	movw	r28, r24
 6c2:	e6 2e       	mov	r14, r22
 6c4:	f4 2e       	mov	r15, r20
 6c6:	69 01       	movw	r12, r18
 6c8:	e8 81       	ld	r30, Y
 6ca:	f9 81       	ldd	r31, Y+1	; 0x01
 6cc:	01 90       	ld	r0, Z+
 6ce:	f0 81       	ld	r31, Z
 6d0:	e0 2d       	mov	r30, r0
 6d2:	09 95       	icall
 6d4:	e8 81       	ld	r30, Y
 6d6:	f9 81       	ldd	r31, Y+1	; 0x01
 6d8:	04 80       	ldd	r0, Z+4	; 0x04
 6da:	f5 81       	ldd	r31, Z+5	; 0x05
 6dc:	e0 2d       	mov	r30, r0
 6de:	6e 2d       	mov	r22, r14
 6e0:	ce 01       	movw	r24, r28
 6e2:	09 95       	icall
 6e4:	e8 81       	ld	r30, Y
 6e6:	f9 81       	ldd	r31, Y+1	; 0x01
 6e8:	04 80       	ldd	r0, Z+4	; 0x04
 6ea:	f5 81       	ldd	r31, Z+5	; 0x05
 6ec:	e0 2d       	mov	r30, r0
 6ee:	6f 2d       	mov	r22, r15
 6f0:	ce 01       	movw	r24, r28
 6f2:	09 95       	icall
 6f4:	76 01       	movw	r14, r12
 6f6:	0c 0d       	add	r16, r12
 6f8:	1d 1d       	adc	r17, r13
 6fa:	e8 81       	ld	r30, Y
 6fc:	f9 81       	ldd	r31, Y+1	; 0x01
 6fe:	e0 16       	cp	r14, r16
 700:	f1 06       	cpc	r15, r17
 702:	49 f0       	breq	.+18     	; 0x716 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x66>
 704:	d7 01       	movw	r26, r14
 706:	6d 91       	ld	r22, X+
 708:	7d 01       	movw	r14, r26
 70a:	04 80       	ldd	r0, Z+4	; 0x04
 70c:	f5 81       	ldd	r31, Z+5	; 0x05
 70e:	e0 2d       	mov	r30, r0
 710:	ce 01       	movw	r24, r28
 712:	09 95       	icall
 714:	f2 cf       	rjmp	.-28     	; 0x6fa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x4a>
 716:	02 80       	ldd	r0, Z+2	; 0x02
 718:	f3 81       	ldd	r31, Z+3	; 0x03
 71a:	e0 2d       	mov	r30, r0
 71c:	ce 01       	movw	r24, r28
 71e:	df 91       	pop	r29
 720:	cf 91       	pop	r28
 722:	1f 91       	pop	r17
 724:	0f 91       	pop	r16
 726:	ff 90       	pop	r15
 728:	ef 90       	pop	r14
 72a:	df 90       	pop	r13
 72c:	cf 90       	pop	r12
 72e:	09 94       	ijmp

00000730 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
 730:	0f 93       	push	r16
 732:	1f 93       	push	r17
 734:	cf 93       	push	r28
 736:	df 93       	push	r29
 738:	ec 01       	movw	r28, r24
 73a:	16 2f       	mov	r17, r22
 73c:	04 2f       	mov	r16, r20
 73e:	e8 81       	ld	r30, Y
 740:	f9 81       	ldd	r31, Y+1	; 0x01
 742:	01 90       	ld	r0, Z+
 744:	f0 81       	ld	r31, Z
 746:	e0 2d       	mov	r30, r0
 748:	09 95       	icall
 74a:	e8 81       	ld	r30, Y
 74c:	f9 81       	ldd	r31, Y+1	; 0x01
 74e:	04 80       	ldd	r0, Z+4	; 0x04
 750:	f5 81       	ldd	r31, Z+5	; 0x05
 752:	e0 2d       	mov	r30, r0
 754:	61 2f       	mov	r22, r17
 756:	ce 01       	movw	r24, r28
 758:	09 95       	icall
 75a:	e8 81       	ld	r30, Y
 75c:	f9 81       	ldd	r31, Y+1	; 0x01
 75e:	04 80       	ldd	r0, Z+4	; 0x04
 760:	f5 81       	ldd	r31, Z+5	; 0x05
 762:	e0 2d       	mov	r30, r0
 764:	60 2f       	mov	r22, r16
 766:	ce 01       	movw	r24, r28
 768:	09 95       	icall
 76a:	e8 81       	ld	r30, Y
 76c:	f9 81       	ldd	r31, Y+1	; 0x01
 76e:	01 90       	ld	r0, Z+
 770:	f0 81       	ld	r31, Z
 772:	e0 2d       	mov	r30, r0
 774:	ce 01       	movw	r24, r28
 776:	09 95       	icall
 778:	61 2f       	mov	r22, r17
 77a:	61 60       	ori	r22, 0x01	; 1
 77c:	e8 81       	ld	r30, Y
 77e:	f9 81       	ldd	r31, Y+1	; 0x01
 780:	04 80       	ldd	r0, Z+4	; 0x04
 782:	f5 81       	ldd	r31, Z+5	; 0x05
 784:	e0 2d       	mov	r30, r0
 786:	ce 01       	movw	r24, r28
 788:	09 95       	icall
 78a:	e8 81       	ld	r30, Y
 78c:	f9 81       	ldd	r31, Y+1	; 0x01
 78e:	06 80       	ldd	r0, Z+6	; 0x06
 790:	f7 81       	ldd	r31, Z+7	; 0x07
 792:	e0 2d       	mov	r30, r0
 794:	60 e0       	ldi	r22, 0x00	; 0
 796:	ce 01       	movw	r24, r28
 798:	09 95       	icall
 79a:	18 2f       	mov	r17, r24
 79c:	e8 81       	ld	r30, Y
 79e:	f9 81       	ldd	r31, Y+1	; 0x01
 7a0:	02 80       	ldd	r0, Z+2	; 0x02
 7a2:	f3 81       	ldd	r31, Z+3	; 0x03
 7a4:	e0 2d       	mov	r30, r0
 7a6:	ce 01       	movw	r24, r28
 7a8:	09 95       	icall
 7aa:	81 2f       	mov	r24, r17
 7ac:	df 91       	pop	r29
 7ae:	cf 91       	pop	r28
 7b0:	1f 91       	pop	r17
 7b2:	0f 91       	pop	r16
 7b4:	08 95       	ret

000007b6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
 7b6:	0f 93       	push	r16
 7b8:	1f 93       	push	r17
 7ba:	cf 93       	push	r28
 7bc:	df 93       	push	r29
 7be:	ec 01       	movw	r28, r24
 7c0:	16 2f       	mov	r17, r22
 7c2:	04 2f       	mov	r16, r20
 7c4:	e8 81       	ld	r30, Y
 7c6:	f9 81       	ldd	r31, Y+1	; 0x01
 7c8:	01 90       	ld	r0, Z+
 7ca:	f0 81       	ld	r31, Z
 7cc:	e0 2d       	mov	r30, r0
 7ce:	09 95       	icall
 7d0:	e8 81       	ld	r30, Y
 7d2:	f9 81       	ldd	r31, Y+1	; 0x01
 7d4:	04 80       	ldd	r0, Z+4	; 0x04
 7d6:	f5 81       	ldd	r31, Z+5	; 0x05
 7d8:	e0 2d       	mov	r30, r0
 7da:	61 2f       	mov	r22, r17
 7dc:	ce 01       	movw	r24, r28
 7de:	09 95       	icall
 7e0:	e8 81       	ld	r30, Y
 7e2:	f9 81       	ldd	r31, Y+1	; 0x01
 7e4:	04 80       	ldd	r0, Z+4	; 0x04
 7e6:	f5 81       	ldd	r31, Z+5	; 0x05
 7e8:	e0 2d       	mov	r30, r0
 7ea:	60 2f       	mov	r22, r16
 7ec:	ce 01       	movw	r24, r28
 7ee:	09 95       	icall
 7f0:	e8 81       	ld	r30, Y
 7f2:	f9 81       	ldd	r31, Y+1	; 0x01
 7f4:	01 90       	ld	r0, Z+
 7f6:	f0 81       	ld	r31, Z
 7f8:	e0 2d       	mov	r30, r0
 7fa:	ce 01       	movw	r24, r28
 7fc:	09 95       	icall
 7fe:	61 2f       	mov	r22, r17
 800:	61 60       	ori	r22, 0x01	; 1
 802:	e8 81       	ld	r30, Y
 804:	f9 81       	ldd	r31, Y+1	; 0x01
 806:	04 80       	ldd	r0, Z+4	; 0x04
 808:	f5 81       	ldd	r31, Z+5	; 0x05
 80a:	e0 2d       	mov	r30, r0
 80c:	ce 01       	movw	r24, r28
 80e:	09 95       	icall
 810:	e8 81       	ld	r30, Y
 812:	f9 81       	ldd	r31, Y+1	; 0x01
 814:	06 80       	ldd	r0, Z+6	; 0x06
 816:	f7 81       	ldd	r31, Z+7	; 0x07
 818:	e0 2d       	mov	r30, r0
 81a:	61 e0       	ldi	r22, 0x01	; 1
 81c:	ce 01       	movw	r24, r28
 81e:	09 95       	icall
 820:	08 2f       	mov	r16, r24
 822:	10 e0       	ldi	r17, 0x00	; 0
 824:	10 2f       	mov	r17, r16
 826:	00 27       	eor	r16, r16
 828:	e8 81       	ld	r30, Y
 82a:	f9 81       	ldd	r31, Y+1	; 0x01
 82c:	06 80       	ldd	r0, Z+6	; 0x06
 82e:	f7 81       	ldd	r31, Z+7	; 0x07
 830:	e0 2d       	mov	r30, r0
 832:	60 e0       	ldi	r22, 0x00	; 0
 834:	ce 01       	movw	r24, r28
 836:	09 95       	icall
 838:	08 2b       	or	r16, r24
 83a:	e8 81       	ld	r30, Y
 83c:	f9 81       	ldd	r31, Y+1	; 0x01
 83e:	02 80       	ldd	r0, Z+2	; 0x02
 840:	f3 81       	ldd	r31, Z+3	; 0x03
 842:	e0 2d       	mov	r30, r0
 844:	ce 01       	movw	r24, r28
 846:	09 95       	icall
 848:	c8 01       	movw	r24, r16
 84a:	df 91       	pop	r29
 84c:	cf 91       	pop	r28
 84e:	1f 91       	pop	r17
 850:	0f 91       	pop	r16
 852:	08 95       	ret

00000854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
 854:	cf 92       	push	r12
 856:	df 92       	push	r13
 858:	ef 92       	push	r14
 85a:	ff 92       	push	r15
 85c:	0f 93       	push	r16
 85e:	1f 93       	push	r17
 860:	cf 93       	push	r28
 862:	df 93       	push	r29
 864:	ec 01       	movw	r28, r24
 866:	f6 2e       	mov	r15, r22
 868:	e4 2e       	mov	r14, r20
 86a:	69 01       	movw	r12, r18
 86c:	e8 81       	ld	r30, Y
 86e:	f9 81       	ldd	r31, Y+1	; 0x01
 870:	01 90       	ld	r0, Z+
 872:	f0 81       	ld	r31, Z
 874:	e0 2d       	mov	r30, r0
 876:	09 95       	icall
 878:	e8 81       	ld	r30, Y
 87a:	f9 81       	ldd	r31, Y+1	; 0x01
 87c:	04 80       	ldd	r0, Z+4	; 0x04
 87e:	f5 81       	ldd	r31, Z+5	; 0x05
 880:	e0 2d       	mov	r30, r0
 882:	6f 2d       	mov	r22, r15
 884:	ce 01       	movw	r24, r28
 886:	09 95       	icall
 888:	e8 81       	ld	r30, Y
 88a:	f9 81       	ldd	r31, Y+1	; 0x01
 88c:	04 80       	ldd	r0, Z+4	; 0x04
 88e:	f5 81       	ldd	r31, Z+5	; 0x05
 890:	e0 2d       	mov	r30, r0
 892:	6e 2d       	mov	r22, r14
 894:	ce 01       	movw	r24, r28
 896:	09 95       	icall
 898:	e8 81       	ld	r30, Y
 89a:	f9 81       	ldd	r31, Y+1	; 0x01
 89c:	01 90       	ld	r0, Z+
 89e:	f0 81       	ld	r31, Z
 8a0:	e0 2d       	mov	r30, r0
 8a2:	ce 01       	movw	r24, r28
 8a4:	09 95       	icall
 8a6:	6f 2d       	mov	r22, r15
 8a8:	61 60       	ori	r22, 0x01	; 1
 8aa:	e8 81       	ld	r30, Y
 8ac:	f9 81       	ldd	r31, Y+1	; 0x01
 8ae:	04 80       	ldd	r0, Z+4	; 0x04
 8b0:	f5 81       	ldd	r31, Z+5	; 0x05
 8b2:	e0 2d       	mov	r30, r0
 8b4:	ce 01       	movw	r24, r28
 8b6:	09 95       	icall
 8b8:	76 01       	movw	r14, r12
 8ba:	0c 0d       	add	r16, r12
 8bc:	1d 1d       	adc	r17, r13
 8be:	e8 81       	ld	r30, Y
 8c0:	f9 81       	ldd	r31, Y+1	; 0x01
 8c2:	e0 16       	cp	r14, r16
 8c4:	f1 06       	cpc	r15, r17
 8c6:	51 f0       	breq	.+20     	; 0x8dc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x88>
 8c8:	06 80       	ldd	r0, Z+6	; 0x06
 8ca:	f7 81       	ldd	r31, Z+7	; 0x07
 8cc:	e0 2d       	mov	r30, r0
 8ce:	61 e0       	ldi	r22, 0x01	; 1
 8d0:	ce 01       	movw	r24, r28
 8d2:	09 95       	icall
 8d4:	f7 01       	movw	r30, r14
 8d6:	81 93       	st	Z+, r24
 8d8:	7f 01       	movw	r14, r30
 8da:	f1 cf       	rjmp	.-30     	; 0x8be <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x6a>
 8dc:	02 80       	ldd	r0, Z+2	; 0x02
 8de:	f3 81       	ldd	r31, Z+3	; 0x03
 8e0:	e0 2d       	mov	r30, r0
 8e2:	ce 01       	movw	r24, r28
 8e4:	df 91       	pop	r29
 8e6:	cf 91       	pop	r28
 8e8:	1f 91       	pop	r17
 8ea:	0f 91       	pop	r16
 8ec:	ff 90       	pop	r15
 8ee:	ef 90       	pop	r14
 8f0:	df 90       	pop	r13
 8f2:	cf 90       	pop	r12
 8f4:	09 94       	ijmp

000008f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 8f6:	88 23       	and	r24, r24
 8f8:	21 f0       	breq	.+8      	; 0x902 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 8fa:	bf 98       	cbi	0x17, 7	; 23
 8fc:	82 30       	cpi	r24, 0x02	; 2
 8fe:	19 f0       	breq	.+6      	; 0x906 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 900:	08 95       	ret
 902:	bf 9a       	sbi	0x17, 7	; 23
 904:	08 95       	ret
 906:	c7 9a       	sbi	0x18, 7	; 24
 908:	08 95       	ret

0000090a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
 90a:	00 00       	nop
 90c:	00 00       	nop
 90e:	08 95       	ret

00000910 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
 910:	81 e0       	ldi	r24, 0x01	; 1
 912:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 916:	bd 98       	cbi	0x17, 5	; 23
 918:	81 e0       	ldi	r24, 0x01	; 1
 91a:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 91e:	bd 9a       	sbi	0x17, 5	; 23
 920:	80 e0       	ldi	r24, 0x00	; 0
 922:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 926:	bd 98       	cbi	0x17, 5	; 23
 928:	0c 94 85 04 	jmp	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000092c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
 92c:	80 e0       	ldi	r24, 0x00	; 0
 92e:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 932:	bd 9a       	sbi	0x17, 5	; 23
 934:	81 e0       	ldi	r24, 0x01	; 1
 936:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 93a:	bd 9a       	sbi	0x17, 5	; 23
 93c:	81 e0       	ldi	r24, 0x01	; 1
 93e:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 942:	bd 98       	cbi	0x17, 5	; 23
 944:	0c 94 85 04 	jmp	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000948 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
 948:	cf 93       	push	r28
 94a:	df 93       	push	r29
 94c:	d6 2f       	mov	r29, r22
 94e:	c8 e0       	ldi	r28, 0x08	; 8
 950:	80 e0       	ldi	r24, 0x00	; 0
 952:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 956:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 95a:	d7 ff       	sbrs	r29, 7
 95c:	02 c0       	rjmp	.+4      	; 0x962 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
 95e:	bd 98       	cbi	0x17, 5	; 23
 960:	01 c0       	rjmp	.+2      	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
 962:	bd 9a       	sbi	0x17, 5	; 23
 964:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 968:	81 e0       	ldi	r24, 0x01	; 1
 96a:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 96e:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 972:	dd 0f       	add	r29, r29
 974:	c1 50       	subi	r28, 0x01	; 1
 976:	61 f7       	brne	.-40     	; 0x950 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
 978:	80 e0       	ldi	r24, 0x00	; 0
 97a:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 97e:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 982:	bd 98       	cbi	0x17, 5	; 23
 984:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 988:	81 e0       	ldi	r24, 0x01	; 1
 98a:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 98e:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 992:	c6 b3       	in	r28, 0x16	; 22
 994:	80 e0       	ldi	r24, 0x00	; 0
 996:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 99a:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 99e:	c5 fb       	bst	r28, 5
 9a0:	cc 27       	eor	r28, r28
 9a2:	c0 f9       	bld	r28, 0
 9a4:	81 e0       	ldi	r24, 0x01	; 1
 9a6:	8c 27       	eor	r24, r28
 9a8:	df 91       	pop	r29
 9aa:	cf 91       	pop	r28
 9ac:	08 95       	ret

000009ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
 9ae:	1f 93       	push	r17
 9b0:	cf 93       	push	r28
 9b2:	df 93       	push	r29
 9b4:	16 2f       	mov	r17, r22
 9b6:	bd 98       	cbi	0x17, 5	; 23
 9b8:	80 e0       	ldi	r24, 0x00	; 0
 9ba:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 9be:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 9c2:	d8 e0       	ldi	r29, 0x08	; 8
 9c4:	c0 e0       	ldi	r28, 0x00	; 0
 9c6:	cc 0f       	add	r28, r28
 9c8:	81 e0       	ldi	r24, 0x01	; 1
 9ca:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 9ce:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 9d2:	b5 99       	sbic	0x16, 5	; 22
 9d4:	c1 60       	ori	r28, 0x01	; 1
 9d6:	80 e0       	ldi	r24, 0x00	; 0
 9d8:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 9dc:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 9e0:	d1 50       	subi	r29, 0x01	; 1
 9e2:	89 f7       	brne	.-30     	; 0x9c6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
 9e4:	11 23       	and	r17, r17
 9e6:	11 f0       	breq	.+4      	; 0x9ec <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
 9e8:	bd 9a       	sbi	0x17, 5	; 23
 9ea:	01 c0       	rjmp	.+2      	; 0x9ee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
 9ec:	bd 98       	cbi	0x17, 5	; 23
 9ee:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 9f2:	81 e0       	ldi	r24, 0x01	; 1
 9f4:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 9f8:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 9fc:	80 e0       	ldi	r24, 0x00	; 0
 9fe:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 a02:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 a06:	bd 98       	cbi	0x17, 5	; 23
 a08:	0e 94 85 04 	call	0x90a	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 a0c:	8c 2f       	mov	r24, r28
 a0e:	df 91       	pop	r29
 a10:	cf 91       	pop	r28
 a12:	1f 91       	pop	r17
 a14:	08 95       	ret

00000a16 <_GLOBAL__sub_I_i2c>:
 a16:	86 e9       	ldi	r24, 0x96	; 150
 a18:	90 e0       	ldi	r25, 0x00	; 0
 a1a:	90 93 67 01 	sts	0x0167, r25	; 0x800167 <i2c+0x1>
 a1e:	80 93 66 01 	sts	0x0166, r24	; 0x800166 <i2c>
 a22:	bd 98       	cbi	0x17, 5	; 23
 a24:	81 e0       	ldi	r24, 0x01	; 1
 a26:	0e 94 7b 04 	call	0x8f6	; 0x8f6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 a2a:	c5 98       	cbi	0x18, 5	; 24
 a2c:	c7 98       	cbi	0x18, 7	; 24
 a2e:	08 95       	ret

00000a30 <_ZdlPv>:
 a30:	0c 94 ee 06 	jmp	0xddc	; 0xddc <free>

00000a34 <_ZN5TimerC1Ev>:
 a34:	eb e6       	ldi	r30, 0x6B	; 107
 a36:	f1 e0       	ldi	r31, 0x01	; 1
 a38:	11 82       	std	Z+1, r1	; 0x01
 a3a:	10 82       	st	Z, r1
 a3c:	13 82       	std	Z+3, r1	; 0x03
 a3e:	12 82       	std	Z+2, r1	; 0x02
 a40:	15 82       	std	Z+5, r1	; 0x05
 a42:	14 82       	std	Z+4, r1	; 0x04
 a44:	16 82       	std	Z+6, r1	; 0x06
 a46:	37 96       	adiw	r30, 0x07	; 7
 a48:	81 e0       	ldi	r24, 0x01	; 1
 a4a:	e3 3a       	cpi	r30, 0xA3	; 163
 a4c:	f8 07       	cpc	r31, r24
 a4e:	a1 f7       	brne	.-24     	; 0xa38 <_ZN5TimerC1Ev+0x4>
 a50:	83 b7       	in	r24, 0x33	; 51
 a52:	88 60       	ori	r24, 0x08	; 8
 a54:	83 bf       	out	0x33, r24	; 51
 a56:	8b e9       	ldi	r24, 0x9B	; 155
 a58:	8c bf       	out	0x3c, r24	; 60
 a5a:	83 e0       	ldi	r24, 0x03	; 3
 a5c:	83 bf       	out	0x33, r24	; 51
 a5e:	89 b7       	in	r24, 0x39	; 57
 a60:	82 60       	ori	r24, 0x02	; 2
 a62:	89 bf       	out	0x39, r24	; 57
 a64:	78 94       	sei
 a66:	08 95       	ret

00000a68 <_ZN5Timer8add_taskEP4Taskj>:
 a68:	f8 94       	cli
 a6a:	eb e6       	ldi	r30, 0x6B	; 107
 a6c:	f1 e0       	ldi	r31, 0x01	; 1
 a6e:	80 e0       	ldi	r24, 0x00	; 0
 a70:	90 e0       	ldi	r25, 0x00	; 0
 a72:	20 81       	ld	r18, Z
 a74:	31 81       	ldd	r19, Z+1	; 0x01
 a76:	23 2b       	or	r18, r19
 a78:	81 f4       	brne	.+32     	; 0xa9a <_ZN5Timer8add_taskEP4Taskj+0x32>
 a7a:	27 e0       	ldi	r18, 0x07	; 7
 a7c:	28 9f       	mul	r18, r24
 a7e:	f0 01       	movw	r30, r0
 a80:	29 9f       	mul	r18, r25
 a82:	f0 0d       	add	r31, r0
 a84:	11 24       	eor	r1, r1
 a86:	e5 59       	subi	r30, 0x95	; 149
 a88:	fe 4f       	sbci	r31, 0xFE	; 254
 a8a:	71 83       	std	Z+1, r23	; 0x01
 a8c:	60 83       	st	Z, r22
 a8e:	53 83       	std	Z+3, r21	; 0x03
 a90:	42 83       	std	Z+2, r20	; 0x02
 a92:	55 83       	std	Z+5, r21	; 0x05
 a94:	44 83       	std	Z+4, r20	; 0x04
 a96:	16 82       	std	Z+6, r1	; 0x06
 a98:	07 c0       	rjmp	.+14     	; 0xaa8 <_ZN5Timer8add_taskEP4Taskj+0x40>
 a9a:	01 96       	adiw	r24, 0x01	; 1
 a9c:	37 96       	adiw	r30, 0x07	; 7
 a9e:	88 30       	cpi	r24, 0x08	; 8
 aa0:	91 05       	cpc	r25, r1
 aa2:	39 f7       	brne	.-50     	; 0xa72 <_ZN5Timer8add_taskEP4Taskj+0xa>
 aa4:	8f ef       	ldi	r24, 0xFF	; 255
 aa6:	9f ef       	ldi	r25, 0xFF	; 255
 aa8:	78 94       	sei
 aaa:	08 95       	ret

00000aac <_ZN5Timer4mainEv>:
 aac:	cf 93       	push	r28
 aae:	df 93       	push	r29
 ab0:	cb e6       	ldi	r28, 0x6B	; 107
 ab2:	d1 e0       	ldi	r29, 0x01	; 1
 ab4:	88 81       	ld	r24, Y
 ab6:	99 81       	ldd	r25, Y+1	; 0x01
 ab8:	00 97       	sbiw	r24, 0x00	; 0
 aba:	59 f0       	breq	.+22     	; 0xad2 <_ZN5Timer4mainEv+0x26>
 abc:	2e 81       	ldd	r18, Y+6	; 0x06
 abe:	22 23       	and	r18, r18
 ac0:	41 f0       	breq	.+16     	; 0xad2 <_ZN5Timer4mainEv+0x26>
 ac2:	1e 82       	std	Y+6, r1	; 0x06
 ac4:	dc 01       	movw	r26, r24
 ac6:	ed 91       	ld	r30, X+
 ac8:	fc 91       	ld	r31, X
 aca:	04 80       	ldd	r0, Z+4	; 0x04
 acc:	f5 81       	ldd	r31, Z+5	; 0x05
 ace:	e0 2d       	mov	r30, r0
 ad0:	09 95       	icall
 ad2:	27 96       	adiw	r28, 0x07	; 7
 ad4:	b1 e0       	ldi	r27, 0x01	; 1
 ad6:	c3 3a       	cpi	r28, 0xA3	; 163
 ad8:	db 07       	cpc	r29, r27
 ada:	61 f7       	brne	.-40     	; 0xab4 <_ZN5Timer4mainEv+0x8>
 adc:	df 91       	pop	r29
 ade:	cf 91       	pop	r28
 ae0:	08 95       	ret

00000ae2 <__vector_19>:
 ae2:	1f 92       	push	r1
 ae4:	0f 92       	push	r0
 ae6:	0f b6       	in	r0, 0x3f	; 63
 ae8:	0f 92       	push	r0
 aea:	11 24       	eor	r1, r1
 aec:	8f 93       	push	r24
 aee:	9f 93       	push	r25
 af0:	af 93       	push	r26
 af2:	bf 93       	push	r27
 af4:	ef 93       	push	r30
 af6:	ff 93       	push	r31
 af8:	eb e6       	ldi	r30, 0x6B	; 107
 afa:	f1 e0       	ldi	r31, 0x01	; 1
 afc:	84 81       	ldd	r24, Z+4	; 0x04
 afe:	95 81       	ldd	r25, Z+5	; 0x05
 b00:	00 97       	sbiw	r24, 0x00	; 0
 b02:	21 f0       	breq	.+8      	; 0xb0c <__vector_19+0x2a>
 b04:	01 97       	sbiw	r24, 0x01	; 1
 b06:	95 83       	std	Z+5, r25	; 0x05
 b08:	84 83       	std	Z+4, r24	; 0x04
 b0a:	09 c0       	rjmp	.+18     	; 0xb1e <__vector_19+0x3c>
 b0c:	82 81       	ldd	r24, Z+2	; 0x02
 b0e:	93 81       	ldd	r25, Z+3	; 0x03
 b10:	95 83       	std	Z+5, r25	; 0x05
 b12:	84 83       	std	Z+4, r24	; 0x04
 b14:	86 81       	ldd	r24, Z+6	; 0x06
 b16:	8f 3f       	cpi	r24, 0xFF	; 255
 b18:	11 f0       	breq	.+4      	; 0xb1e <__vector_19+0x3c>
 b1a:	8f 5f       	subi	r24, 0xFF	; 255
 b1c:	86 83       	std	Z+6, r24	; 0x06
 b1e:	37 96       	adiw	r30, 0x07	; 7
 b20:	81 e0       	ldi	r24, 0x01	; 1
 b22:	e3 3a       	cpi	r30, 0xA3	; 163
 b24:	f8 07       	cpc	r31, r24
 b26:	51 f7       	brne	.-44     	; 0xafc <__vector_19+0x1a>
 b28:	80 91 a3 01 	lds	r24, 0x01A3	; 0x8001a3 <g_rt_time>
 b2c:	90 91 a4 01 	lds	r25, 0x01A4	; 0x8001a4 <g_rt_time+0x1>
 b30:	a0 91 a5 01 	lds	r26, 0x01A5	; 0x8001a5 <g_rt_time+0x2>
 b34:	b0 91 a6 01 	lds	r27, 0x01A6	; 0x8001a6 <g_rt_time+0x3>
 b38:	01 96       	adiw	r24, 0x01	; 1
 b3a:	a1 1d       	adc	r26, r1
 b3c:	b1 1d       	adc	r27, r1
 b3e:	80 93 a3 01 	sts	0x01A3, r24	; 0x8001a3 <g_rt_time>
 b42:	90 93 a4 01 	sts	0x01A4, r25	; 0x8001a4 <g_rt_time+0x1>
 b46:	a0 93 a5 01 	sts	0x01A5, r26	; 0x8001a5 <g_rt_time+0x2>
 b4a:	b0 93 a6 01 	sts	0x01A6, r27	; 0x8001a6 <g_rt_time+0x3>
 b4e:	ff 91       	pop	r31
 b50:	ef 91       	pop	r30
 b52:	bf 91       	pop	r27
 b54:	af 91       	pop	r26
 b56:	9f 91       	pop	r25
 b58:	8f 91       	pop	r24
 b5a:	0f 90       	pop	r0
 b5c:	0f be       	out	0x3f, r0	; 63
 b5e:	0f 90       	pop	r0
 b60:	1f 90       	pop	r1
 b62:	18 95       	reti

00000b64 <_GLOBAL__sub_I_g_rt_time>:
 b64:	8a e6       	ldi	r24, 0x6A	; 106
 b66:	91 e0       	ldi	r25, 0x01	; 1
 b68:	0c 94 1a 05 	jmp	0xa34	; 0xa34 <_ZN5TimerC1Ev>

00000b6c <_GLOBAL__sub_I_terminal>:
 b6c:	87 ea       	ldi	r24, 0xA7	; 167
 b6e:	91 e0       	ldi	r25, 0x01	; 1
 b70:	0c 94 ca 01 	jmp	0x394	; 0x394 <_ZN5USARTC1Ev>

00000b74 <_GLOBAL__sub_D_terminal>:
 b74:	87 ea       	ldi	r24, 0xA7	; 167
 b76:	91 e0       	ldi	r25, 0x01	; 1
 b78:	0c 94 d4 01 	jmp	0x3a8	; 0x3a8 <_ZN5USARTD1Ev>

00000b7c <_ZN10LEDDisplayD1Ev>:
 b7c:	08 95       	ret

00000b7e <_ZN10LEDDisplay4mainEv>:
 b7e:	fc 01       	movw	r30, r24
 b80:	82 81       	ldd	r24, Z+2	; 0x02
 b82:	88 23       	and	r24, r24
 b84:	19 f0       	breq	.+6      	; 0xb8c <_ZN10LEDDisplay4mainEv+0xe>
 b86:	81 30       	cpi	r24, 0x01	; 1
 b88:	51 f0       	breq	.+20     	; 0xb9e <_ZN10LEDDisplay4mainEv+0x20>
 b8a:	08 95       	ret
 b8c:	88 b3       	in	r24, 0x18	; 24
 b8e:	83 60       	ori	r24, 0x03	; 3
 b90:	88 bb       	out	0x18, r24	; 24
 b92:	83 81       	ldd	r24, Z+3	; 0x03
 b94:	85 bb       	out	0x15, r24	; 21
 b96:	c0 98       	cbi	0x18, 0	; 24
 b98:	81 e0       	ldi	r24, 0x01	; 1
 b9a:	82 83       	std	Z+2, r24	; 0x02
 b9c:	08 95       	ret
 b9e:	88 b3       	in	r24, 0x18	; 24
 ba0:	83 60       	ori	r24, 0x03	; 3
 ba2:	88 bb       	out	0x18, r24	; 24
 ba4:	84 81       	ldd	r24, Z+4	; 0x04
 ba6:	85 bb       	out	0x15, r24	; 21
 ba8:	c1 98       	cbi	0x18, 1	; 24
 baa:	12 82       	std	Z+2, r1	; 0x02
 bac:	08 95       	ret

00000bae <_ZN10LEDDisplayD0Ev>:
 bae:	0c 94 18 05 	jmp	0xa30	; 0xa30 <_ZdlPv>

00000bb2 <_ZN10LEDDisplayC1Ev>:
 bb2:	fc 01       	movw	r30, r24
 bb4:	8e ea       	ldi	r24, 0xAE	; 174
 bb6:	90 e0       	ldi	r25, 0x00	; 0
 bb8:	91 83       	std	Z+1, r25	; 0x01
 bba:	80 83       	st	Z, r24
 bbc:	12 82       	std	Z+2, r1	; 0x02
 bbe:	8f ef       	ldi	r24, 0xFF	; 255
 bc0:	83 83       	std	Z+3, r24	; 0x03
 bc2:	84 83       	std	Z+4, r24	; 0x04
 bc4:	97 b3       	in	r25, 0x17	; 23
 bc6:	93 60       	ori	r25, 0x03	; 3
 bc8:	97 bb       	out	0x17, r25	; 23
 bca:	98 b3       	in	r25, 0x18	; 24
 bcc:	93 60       	ori	r25, 0x03	; 3
 bce:	98 bb       	out	0x18, r25	; 24
 bd0:	85 bb       	out	0x15, r24	; 21
 bd2:	84 bb       	out	0x14, r24	; 20
 bd4:	45 e0       	ldi	r20, 0x05	; 5
 bd6:	50 e0       	ldi	r21, 0x00	; 0
 bd8:	bf 01       	movw	r22, r30
 bda:	8a e6       	ldi	r24, 0x6A	; 106
 bdc:	91 e0       	ldi	r25, 0x01	; 1
 bde:	0c 94 34 05 	jmp	0xa68	; 0xa68 <_ZN5Timer8add_taskEP4Taskj>

00000be2 <__udivmodsi4>:
 be2:	a1 e2       	ldi	r26, 0x21	; 33
 be4:	1a 2e       	mov	r1, r26
 be6:	aa 1b       	sub	r26, r26
 be8:	bb 1b       	sub	r27, r27
 bea:	fd 01       	movw	r30, r26
 bec:	0d c0       	rjmp	.+26     	; 0xc08 <__udivmodsi4_ep>

00000bee <__udivmodsi4_loop>:
 bee:	aa 1f       	adc	r26, r26
 bf0:	bb 1f       	adc	r27, r27
 bf2:	ee 1f       	adc	r30, r30
 bf4:	ff 1f       	adc	r31, r31
 bf6:	a2 17       	cp	r26, r18
 bf8:	b3 07       	cpc	r27, r19
 bfa:	e4 07       	cpc	r30, r20
 bfc:	f5 07       	cpc	r31, r21
 bfe:	20 f0       	brcs	.+8      	; 0xc08 <__udivmodsi4_ep>
 c00:	a2 1b       	sub	r26, r18
 c02:	b3 0b       	sbc	r27, r19
 c04:	e4 0b       	sbc	r30, r20
 c06:	f5 0b       	sbc	r31, r21

00000c08 <__udivmodsi4_ep>:
 c08:	66 1f       	adc	r22, r22
 c0a:	77 1f       	adc	r23, r23
 c0c:	88 1f       	adc	r24, r24
 c0e:	99 1f       	adc	r25, r25
 c10:	1a 94       	dec	r1
 c12:	69 f7       	brne	.-38     	; 0xbee <__udivmodsi4_loop>
 c14:	60 95       	com	r22
 c16:	70 95       	com	r23
 c18:	80 95       	com	r24
 c1a:	90 95       	com	r25
 c1c:	9b 01       	movw	r18, r22
 c1e:	ac 01       	movw	r20, r24
 c20:	bd 01       	movw	r22, r26
 c22:	cf 01       	movw	r24, r30
 c24:	08 95       	ret

00000c26 <__divmodsi4>:
 c26:	05 2e       	mov	r0, r21
 c28:	97 fb       	bst	r25, 7
 c2a:	1e f4       	brtc	.+6      	; 0xc32 <__divmodsi4+0xc>
 c2c:	00 94       	com	r0
 c2e:	0e 94 2a 06 	call	0xc54	; 0xc54 <__negsi2>
 c32:	57 fd       	sbrc	r21, 7
 c34:	07 d0       	rcall	.+14     	; 0xc44 <__divmodsi4_neg2>
 c36:	0e 94 f1 05 	call	0xbe2	; 0xbe2 <__udivmodsi4>
 c3a:	07 fc       	sbrc	r0, 7
 c3c:	03 d0       	rcall	.+6      	; 0xc44 <__divmodsi4_neg2>
 c3e:	4e f4       	brtc	.+18     	; 0xc52 <__divmodsi4_exit>
 c40:	0c 94 2a 06 	jmp	0xc54	; 0xc54 <__negsi2>

00000c44 <__divmodsi4_neg2>:
 c44:	50 95       	com	r21
 c46:	40 95       	com	r20
 c48:	30 95       	com	r19
 c4a:	21 95       	neg	r18
 c4c:	3f 4f       	sbci	r19, 0xFF	; 255
 c4e:	4f 4f       	sbci	r20, 0xFF	; 255
 c50:	5f 4f       	sbci	r21, 0xFF	; 255

00000c52 <__divmodsi4_exit>:
 c52:	08 95       	ret

00000c54 <__negsi2>:
 c54:	90 95       	com	r25
 c56:	80 95       	com	r24
 c58:	70 95       	com	r23
 c5a:	61 95       	neg	r22
 c5c:	7f 4f       	sbci	r23, 0xFF	; 255
 c5e:	8f 4f       	sbci	r24, 0xFF	; 255
 c60:	9f 4f       	sbci	r25, 0xFF	; 255
 c62:	08 95       	ret

00000c64 <__mulhisi3>:
 c64:	0e 94 3a 06 	call	0xc74	; 0xc74 <__umulhisi3>
 c68:	33 23       	and	r19, r19
 c6a:	12 f4       	brpl	.+4      	; 0xc70 <__mulhisi3+0xc>
 c6c:	8a 1b       	sub	r24, r26
 c6e:	9b 0b       	sbc	r25, r27
 c70:	0c 94 4b 06 	jmp	0xc96	; 0xc96 <__usmulhisi3_tail>

00000c74 <__umulhisi3>:
 c74:	a2 9f       	mul	r26, r18
 c76:	b0 01       	movw	r22, r0
 c78:	b3 9f       	mul	r27, r19
 c7a:	c0 01       	movw	r24, r0
 c7c:	a3 9f       	mul	r26, r19
 c7e:	70 0d       	add	r23, r0
 c80:	81 1d       	adc	r24, r1
 c82:	11 24       	eor	r1, r1
 c84:	91 1d       	adc	r25, r1
 c86:	b2 9f       	mul	r27, r18
 c88:	70 0d       	add	r23, r0
 c8a:	81 1d       	adc	r24, r1
 c8c:	11 24       	eor	r1, r1
 c8e:	91 1d       	adc	r25, r1
 c90:	08 95       	ret

00000c92 <__usmulhisi3>:
 c92:	0e 94 3a 06 	call	0xc74	; 0xc74 <__umulhisi3>

00000c96 <__usmulhisi3_tail>:
 c96:	b7 ff       	sbrs	r27, 7
 c98:	08 95       	ret
 c9a:	82 1b       	sub	r24, r18
 c9c:	93 0b       	sbc	r25, r19
 c9e:	08 95       	ret

00000ca0 <__tablejump2__>:
 ca0:	ee 0f       	add	r30, r30
 ca2:	ff 1f       	adc	r31, r31
 ca4:	05 90       	lpm	r0, Z+
 ca6:	f4 91       	lpm	r31, Z
 ca8:	e0 2d       	mov	r30, r0
 caa:	09 94       	ijmp

00000cac <malloc>:
 cac:	0f 93       	push	r16
 cae:	1f 93       	push	r17
 cb0:	cf 93       	push	r28
 cb2:	df 93       	push	r29
 cb4:	82 30       	cpi	r24, 0x02	; 2
 cb6:	91 05       	cpc	r25, r1
 cb8:	10 f4       	brcc	.+4      	; 0xcbe <malloc+0x12>
 cba:	82 e0       	ldi	r24, 0x02	; 2
 cbc:	90 e0       	ldi	r25, 0x00	; 0
 cbe:	e0 91 aa 01 	lds	r30, 0x01AA	; 0x8001aa <__flp>
 cc2:	f0 91 ab 01 	lds	r31, 0x01AB	; 0x8001ab <__flp+0x1>
 cc6:	20 e0       	ldi	r18, 0x00	; 0
 cc8:	30 e0       	ldi	r19, 0x00	; 0
 cca:	a0 e0       	ldi	r26, 0x00	; 0
 ccc:	b0 e0       	ldi	r27, 0x00	; 0
 cce:	30 97       	sbiw	r30, 0x00	; 0
 cd0:	19 f1       	breq	.+70     	; 0xd18 <malloc+0x6c>
 cd2:	40 81       	ld	r20, Z
 cd4:	51 81       	ldd	r21, Z+1	; 0x01
 cd6:	02 81       	ldd	r16, Z+2	; 0x02
 cd8:	13 81       	ldd	r17, Z+3	; 0x03
 cda:	48 17       	cp	r20, r24
 cdc:	59 07       	cpc	r21, r25
 cde:	c8 f0       	brcs	.+50     	; 0xd12 <malloc+0x66>
 ce0:	84 17       	cp	r24, r20
 ce2:	95 07       	cpc	r25, r21
 ce4:	69 f4       	brne	.+26     	; 0xd00 <malloc+0x54>
 ce6:	10 97       	sbiw	r26, 0x00	; 0
 ce8:	31 f0       	breq	.+12     	; 0xcf6 <malloc+0x4a>
 cea:	12 96       	adiw	r26, 0x02	; 2
 cec:	0c 93       	st	X, r16
 cee:	12 97       	sbiw	r26, 0x02	; 2
 cf0:	13 96       	adiw	r26, 0x03	; 3
 cf2:	1c 93       	st	X, r17
 cf4:	27 c0       	rjmp	.+78     	; 0xd44 <malloc+0x98>
 cf6:	00 93 aa 01 	sts	0x01AA, r16	; 0x8001aa <__flp>
 cfa:	10 93 ab 01 	sts	0x01AB, r17	; 0x8001ab <__flp+0x1>
 cfe:	22 c0       	rjmp	.+68     	; 0xd44 <malloc+0x98>
 d00:	21 15       	cp	r18, r1
 d02:	31 05       	cpc	r19, r1
 d04:	19 f0       	breq	.+6      	; 0xd0c <malloc+0x60>
 d06:	42 17       	cp	r20, r18
 d08:	53 07       	cpc	r21, r19
 d0a:	18 f4       	brcc	.+6      	; 0xd12 <malloc+0x66>
 d0c:	9a 01       	movw	r18, r20
 d0e:	bd 01       	movw	r22, r26
 d10:	ef 01       	movw	r28, r30
 d12:	df 01       	movw	r26, r30
 d14:	f8 01       	movw	r30, r16
 d16:	db cf       	rjmp	.-74     	; 0xcce <malloc+0x22>
 d18:	21 15       	cp	r18, r1
 d1a:	31 05       	cpc	r19, r1
 d1c:	f9 f0       	breq	.+62     	; 0xd5c <malloc+0xb0>
 d1e:	28 1b       	sub	r18, r24
 d20:	39 0b       	sbc	r19, r25
 d22:	24 30       	cpi	r18, 0x04	; 4
 d24:	31 05       	cpc	r19, r1
 d26:	80 f4       	brcc	.+32     	; 0xd48 <malloc+0x9c>
 d28:	8a 81       	ldd	r24, Y+2	; 0x02
 d2a:	9b 81       	ldd	r25, Y+3	; 0x03
 d2c:	61 15       	cp	r22, r1
 d2e:	71 05       	cpc	r23, r1
 d30:	21 f0       	breq	.+8      	; 0xd3a <malloc+0x8e>
 d32:	fb 01       	movw	r30, r22
 d34:	93 83       	std	Z+3, r25	; 0x03
 d36:	82 83       	std	Z+2, r24	; 0x02
 d38:	04 c0       	rjmp	.+8      	; 0xd42 <malloc+0x96>
 d3a:	90 93 ab 01 	sts	0x01AB, r25	; 0x8001ab <__flp+0x1>
 d3e:	80 93 aa 01 	sts	0x01AA, r24	; 0x8001aa <__flp>
 d42:	fe 01       	movw	r30, r28
 d44:	32 96       	adiw	r30, 0x02	; 2
 d46:	44 c0       	rjmp	.+136    	; 0xdd0 <malloc+0x124>
 d48:	fe 01       	movw	r30, r28
 d4a:	e2 0f       	add	r30, r18
 d4c:	f3 1f       	adc	r31, r19
 d4e:	81 93       	st	Z+, r24
 d50:	91 93       	st	Z+, r25
 d52:	22 50       	subi	r18, 0x02	; 2
 d54:	31 09       	sbc	r19, r1
 d56:	39 83       	std	Y+1, r19	; 0x01
 d58:	28 83       	st	Y, r18
 d5a:	3a c0       	rjmp	.+116    	; 0xdd0 <malloc+0x124>
 d5c:	20 91 a8 01 	lds	r18, 0x01A8	; 0x8001a8 <__brkval>
 d60:	30 91 a9 01 	lds	r19, 0x01A9	; 0x8001a9 <__brkval+0x1>
 d64:	23 2b       	or	r18, r19
 d66:	41 f4       	brne	.+16     	; 0xd78 <malloc+0xcc>
 d68:	20 91 62 00 	lds	r18, 0x0062	; 0x800062 <__malloc_heap_start>
 d6c:	30 91 63 00 	lds	r19, 0x0063	; 0x800063 <__malloc_heap_start+0x1>
 d70:	30 93 a9 01 	sts	0x01A9, r19	; 0x8001a9 <__brkval+0x1>
 d74:	20 93 a8 01 	sts	0x01A8, r18	; 0x8001a8 <__brkval>
 d78:	20 91 60 00 	lds	r18, 0x0060	; 0x800060 <__data_start>
 d7c:	30 91 61 00 	lds	r19, 0x0061	; 0x800061 <__data_start+0x1>
 d80:	21 15       	cp	r18, r1
 d82:	31 05       	cpc	r19, r1
 d84:	41 f4       	brne	.+16     	; 0xd96 <malloc+0xea>
 d86:	2d b7       	in	r18, 0x3d	; 61
 d88:	3e b7       	in	r19, 0x3e	; 62
 d8a:	40 91 64 00 	lds	r20, 0x0064	; 0x800064 <__malloc_margin>
 d8e:	50 91 65 00 	lds	r21, 0x0065	; 0x800065 <__malloc_margin+0x1>
 d92:	24 1b       	sub	r18, r20
 d94:	35 0b       	sbc	r19, r21
 d96:	e0 91 a8 01 	lds	r30, 0x01A8	; 0x8001a8 <__brkval>
 d9a:	f0 91 a9 01 	lds	r31, 0x01A9	; 0x8001a9 <__brkval+0x1>
 d9e:	e2 17       	cp	r30, r18
 da0:	f3 07       	cpc	r31, r19
 da2:	a0 f4       	brcc	.+40     	; 0xdcc <malloc+0x120>
 da4:	2e 1b       	sub	r18, r30
 da6:	3f 0b       	sbc	r19, r31
 da8:	28 17       	cp	r18, r24
 daa:	39 07       	cpc	r19, r25
 dac:	78 f0       	brcs	.+30     	; 0xdcc <malloc+0x120>
 dae:	ac 01       	movw	r20, r24
 db0:	4e 5f       	subi	r20, 0xFE	; 254
 db2:	5f 4f       	sbci	r21, 0xFF	; 255
 db4:	24 17       	cp	r18, r20
 db6:	35 07       	cpc	r19, r21
 db8:	48 f0       	brcs	.+18     	; 0xdcc <malloc+0x120>
 dba:	4e 0f       	add	r20, r30
 dbc:	5f 1f       	adc	r21, r31
 dbe:	50 93 a9 01 	sts	0x01A9, r21	; 0x8001a9 <__brkval+0x1>
 dc2:	40 93 a8 01 	sts	0x01A8, r20	; 0x8001a8 <__brkval>
 dc6:	81 93       	st	Z+, r24
 dc8:	91 93       	st	Z+, r25
 dca:	02 c0       	rjmp	.+4      	; 0xdd0 <malloc+0x124>
 dcc:	e0 e0       	ldi	r30, 0x00	; 0
 dce:	f0 e0       	ldi	r31, 0x00	; 0
 dd0:	cf 01       	movw	r24, r30
 dd2:	df 91       	pop	r29
 dd4:	cf 91       	pop	r28
 dd6:	1f 91       	pop	r17
 dd8:	0f 91       	pop	r16
 dda:	08 95       	ret

00000ddc <free>:
 ddc:	cf 93       	push	r28
 dde:	df 93       	push	r29
 de0:	00 97       	sbiw	r24, 0x00	; 0
 de2:	09 f4       	brne	.+2      	; 0xde6 <free+0xa>
 de4:	81 c0       	rjmp	.+258    	; 0xee8 <free+0x10c>
 de6:	fc 01       	movw	r30, r24
 de8:	32 97       	sbiw	r30, 0x02	; 2
 dea:	13 82       	std	Z+3, r1	; 0x03
 dec:	12 82       	std	Z+2, r1	; 0x02
 dee:	a0 91 aa 01 	lds	r26, 0x01AA	; 0x8001aa <__flp>
 df2:	b0 91 ab 01 	lds	r27, 0x01AB	; 0x8001ab <__flp+0x1>
 df6:	10 97       	sbiw	r26, 0x00	; 0
 df8:	81 f4       	brne	.+32     	; 0xe1a <free+0x3e>
 dfa:	20 81       	ld	r18, Z
 dfc:	31 81       	ldd	r19, Z+1	; 0x01
 dfe:	82 0f       	add	r24, r18
 e00:	93 1f       	adc	r25, r19
 e02:	20 91 a8 01 	lds	r18, 0x01A8	; 0x8001a8 <__brkval>
 e06:	30 91 a9 01 	lds	r19, 0x01A9	; 0x8001a9 <__brkval+0x1>
 e0a:	28 17       	cp	r18, r24
 e0c:	39 07       	cpc	r19, r25
 e0e:	51 f5       	brne	.+84     	; 0xe64 <free+0x88>
 e10:	f0 93 a9 01 	sts	0x01A9, r31	; 0x8001a9 <__brkval+0x1>
 e14:	e0 93 a8 01 	sts	0x01A8, r30	; 0x8001a8 <__brkval>
 e18:	67 c0       	rjmp	.+206    	; 0xee8 <free+0x10c>
 e1a:	ed 01       	movw	r28, r26
 e1c:	20 e0       	ldi	r18, 0x00	; 0
 e1e:	30 e0       	ldi	r19, 0x00	; 0
 e20:	ce 17       	cp	r28, r30
 e22:	df 07       	cpc	r29, r31
 e24:	40 f4       	brcc	.+16     	; 0xe36 <free+0x5a>
 e26:	4a 81       	ldd	r20, Y+2	; 0x02
 e28:	5b 81       	ldd	r21, Y+3	; 0x03
 e2a:	9e 01       	movw	r18, r28
 e2c:	41 15       	cp	r20, r1
 e2e:	51 05       	cpc	r21, r1
 e30:	f1 f0       	breq	.+60     	; 0xe6e <free+0x92>
 e32:	ea 01       	movw	r28, r20
 e34:	f5 cf       	rjmp	.-22     	; 0xe20 <free+0x44>
 e36:	d3 83       	std	Z+3, r29	; 0x03
 e38:	c2 83       	std	Z+2, r28	; 0x02
 e3a:	40 81       	ld	r20, Z
 e3c:	51 81       	ldd	r21, Z+1	; 0x01
 e3e:	84 0f       	add	r24, r20
 e40:	95 1f       	adc	r25, r21
 e42:	c8 17       	cp	r28, r24
 e44:	d9 07       	cpc	r29, r25
 e46:	59 f4       	brne	.+22     	; 0xe5e <free+0x82>
 e48:	88 81       	ld	r24, Y
 e4a:	99 81       	ldd	r25, Y+1	; 0x01
 e4c:	84 0f       	add	r24, r20
 e4e:	95 1f       	adc	r25, r21
 e50:	02 96       	adiw	r24, 0x02	; 2
 e52:	91 83       	std	Z+1, r25	; 0x01
 e54:	80 83       	st	Z, r24
 e56:	8a 81       	ldd	r24, Y+2	; 0x02
 e58:	9b 81       	ldd	r25, Y+3	; 0x03
 e5a:	93 83       	std	Z+3, r25	; 0x03
 e5c:	82 83       	std	Z+2, r24	; 0x02
 e5e:	21 15       	cp	r18, r1
 e60:	31 05       	cpc	r19, r1
 e62:	29 f4       	brne	.+10     	; 0xe6e <free+0x92>
 e64:	f0 93 ab 01 	sts	0x01AB, r31	; 0x8001ab <__flp+0x1>
 e68:	e0 93 aa 01 	sts	0x01AA, r30	; 0x8001aa <__flp>
 e6c:	3d c0       	rjmp	.+122    	; 0xee8 <free+0x10c>
 e6e:	e9 01       	movw	r28, r18
 e70:	fb 83       	std	Y+3, r31	; 0x03
 e72:	ea 83       	std	Y+2, r30	; 0x02
 e74:	49 91       	ld	r20, Y+
 e76:	59 91       	ld	r21, Y+
 e78:	c4 0f       	add	r28, r20
 e7a:	d5 1f       	adc	r29, r21
 e7c:	ec 17       	cp	r30, r28
 e7e:	fd 07       	cpc	r31, r29
 e80:	61 f4       	brne	.+24     	; 0xe9a <free+0xbe>
 e82:	80 81       	ld	r24, Z
 e84:	91 81       	ldd	r25, Z+1	; 0x01
 e86:	84 0f       	add	r24, r20
 e88:	95 1f       	adc	r25, r21
 e8a:	02 96       	adiw	r24, 0x02	; 2
 e8c:	e9 01       	movw	r28, r18
 e8e:	99 83       	std	Y+1, r25	; 0x01
 e90:	88 83       	st	Y, r24
 e92:	82 81       	ldd	r24, Z+2	; 0x02
 e94:	93 81       	ldd	r25, Z+3	; 0x03
 e96:	9b 83       	std	Y+3, r25	; 0x03
 e98:	8a 83       	std	Y+2, r24	; 0x02
 e9a:	e0 e0       	ldi	r30, 0x00	; 0
 e9c:	f0 e0       	ldi	r31, 0x00	; 0
 e9e:	12 96       	adiw	r26, 0x02	; 2
 ea0:	8d 91       	ld	r24, X+
 ea2:	9c 91       	ld	r25, X
 ea4:	13 97       	sbiw	r26, 0x03	; 3
 ea6:	00 97       	sbiw	r24, 0x00	; 0
 ea8:	19 f0       	breq	.+6      	; 0xeb0 <free+0xd4>
 eaa:	fd 01       	movw	r30, r26
 eac:	dc 01       	movw	r26, r24
 eae:	f7 cf       	rjmp	.-18     	; 0xe9e <free+0xc2>
 eb0:	8d 91       	ld	r24, X+
 eb2:	9c 91       	ld	r25, X
 eb4:	11 97       	sbiw	r26, 0x01	; 1
 eb6:	9d 01       	movw	r18, r26
 eb8:	2e 5f       	subi	r18, 0xFE	; 254
 eba:	3f 4f       	sbci	r19, 0xFF	; 255
 ebc:	82 0f       	add	r24, r18
 ebe:	93 1f       	adc	r25, r19
 ec0:	20 91 a8 01 	lds	r18, 0x01A8	; 0x8001a8 <__brkval>
 ec4:	30 91 a9 01 	lds	r19, 0x01A9	; 0x8001a9 <__brkval+0x1>
 ec8:	28 17       	cp	r18, r24
 eca:	39 07       	cpc	r19, r25
 ecc:	69 f4       	brne	.+26     	; 0xee8 <free+0x10c>
 ece:	30 97       	sbiw	r30, 0x00	; 0
 ed0:	29 f4       	brne	.+10     	; 0xedc <free+0x100>
 ed2:	10 92 ab 01 	sts	0x01AB, r1	; 0x8001ab <__flp+0x1>
 ed6:	10 92 aa 01 	sts	0x01AA, r1	; 0x8001aa <__flp>
 eda:	02 c0       	rjmp	.+4      	; 0xee0 <free+0x104>
 edc:	13 82       	std	Z+3, r1	; 0x03
 ede:	12 82       	std	Z+2, r1	; 0x02
 ee0:	b0 93 a9 01 	sts	0x01A9, r27	; 0x8001a9 <__brkval+0x1>
 ee4:	a0 93 a8 01 	sts	0x01A8, r26	; 0x8001a8 <__brkval>
 ee8:	df 91       	pop	r29
 eea:	cf 91       	pop	r28
 eec:	08 95       	ret

00000eee <__do_global_dtors>:
 eee:	10 e0       	ldi	r17, 0x00	; 0
 ef0:	ce e2       	ldi	r28, 0x2E	; 46
 ef2:	d0 e0       	ldi	r29, 0x00	; 0
 ef4:	04 c0       	rjmp	.+8      	; 0xefe <__do_global_dtors+0x10>
 ef6:	fe 01       	movw	r30, r28
 ef8:	0e 94 50 06 	call	0xca0	; 0xca0 <__tablejump2__>
 efc:	21 96       	adiw	r28, 0x01	; 1
 efe:	c0 33       	cpi	r28, 0x30	; 48
 f00:	d1 07       	cpc	r29, r17
 f02:	c9 f7       	brne	.-14     	; 0xef6 <__do_global_dtors+0x8>
 f04:	f8 94       	cli

00000f06 <__stop_program>:
 f06:	ff cf       	rjmp	.-2      	; 0xf06 <__stop_program>
