
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 2e 00 	jmp	0x5c	; 0x5c <__dtors_end>
   4:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
   8:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
   c:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  10:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  14:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  18:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  1c:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  20:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  24:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  28:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  2c:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  30:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  34:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  38:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  3c:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  40:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  44:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  48:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  4c:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	6f 03       	fmul	r22, r23
  56:	33 04       	cpc	r3, r3
  58:	37 04       	cpc	r3, r7

0000005a <__ctors_end>:
  5a:	3b 04       	cpc	r3, r11

0000005c <__dtors_end>:
  5c:	11 24       	eor	r1, r1
  5e:	1f be       	out	0x3f, r1	; 63
  60:	cf e5       	ldi	r28, 0x5F	; 95
  62:	d4 e0       	ldi	r29, 0x04	; 4
  64:	de bf       	out	0x3e, r29	; 62
  66:	cd bf       	out	0x3d, r28	; 61

00000068 <__do_copy_data>:
  68:	10 e0       	ldi	r17, 0x00	; 0
  6a:	a0 e6       	ldi	r26, 0x60	; 96
  6c:	b0 e0       	ldi	r27, 0x00	; 0
  6e:	ee e8       	ldi	r30, 0x8E	; 142
  70:	fb e0       	ldi	r31, 0x0B	; 11
  72:	02 c0       	rjmp	.+4      	; 0x78 <__do_copy_data+0x10>
  74:	05 90       	lpm	r0, Z+
  76:	0d 92       	st	X+, r0
  78:	a8 38       	cpi	r26, 0x88	; 136
  7a:	b1 07       	cpc	r27, r17
  7c:	d9 f7       	brne	.-10     	; 0x74 <__do_copy_data+0xc>

0000007e <__do_clear_bss>:
  7e:	20 e0       	ldi	r18, 0x00	; 0
  80:	a8 e8       	ldi	r26, 0x88	; 136
  82:	b0 e0       	ldi	r27, 0x00	; 0
  84:	01 c0       	rjmp	.+2      	; 0x88 <.do_clear_bss_start>

00000086 <.do_clear_bss_loop>:
  86:	1d 92       	st	X+, r1

00000088 <.do_clear_bss_start>:
  88:	ae 3c       	cpi	r26, 0xCE	; 206
  8a:	b2 07       	cpc	r27, r18
  8c:	e1 f7       	brne	.-8      	; 0x86 <.do_clear_bss_loop>

0000008e <__do_global_ctors>:
  8e:	10 e0       	ldi	r17, 0x00	; 0
  90:	cd e2       	ldi	r28, 0x2D	; 45
  92:	d0 e0       	ldi	r29, 0x00	; 0
  94:	04 c0       	rjmp	.+8      	; 0x9e <__do_global_ctors+0x10>
  96:	21 97       	sbiw	r28, 0x01	; 1
  98:	fe 01       	movw	r30, r28
  9a:	0e 94 87 04 	call	0x90e	; 0x90e <__tablejump2__>
  9e:	ca 32       	cpi	r28, 0x2A	; 42
  a0:	d1 07       	cpc	r29, r17
  a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
  a4:	0e 94 c3 00 	call	0x186	; 0x186 <main>
  a8:	0c 94 ba 05 	jmp	0xb74	; 0xb74 <__do_global_dtors>

000000ac <__bad_interrupt>:
  ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN6CBlinkD1Ev>:
  b0:	08 95       	ret

000000b2 <_ZN6CBlinkD0Ev>:
  b2:	0c 94 85 04 	jmp	0x90a	; 0x90a <_ZdlPv>

000000b6 <_ZN6CBlinkclEv>:
  b6:	fc 01       	movw	r30, r24
  b8:	83 81       	ldd	r24, Z+3	; 0x03
  ba:	94 81       	ldd	r25, Z+4	; 0x04
  bc:	00 97       	sbiw	r24, 0x00	; 0
  be:	19 f0       	breq	.+6      	; 0xc6 <_ZN6CBlinkclEv+0x10>
  c0:	01 97       	sbiw	r24, 0x01	; 1
  c2:	39 f0       	breq	.+14     	; 0xd2 <_ZN6CBlinkclEv+0x1c>
  c4:	08 95       	ret
  c6:	dd 9a       	sbi	0x1b, 5	; 27
  c8:	81 e0       	ldi	r24, 0x01	; 1
  ca:	90 e0       	ldi	r25, 0x00	; 0
  cc:	94 83       	std	Z+4, r25	; 0x04
  ce:	83 83       	std	Z+3, r24	; 0x03
  d0:	08 95       	ret
  d2:	dd 98       	cbi	0x1b, 5	; 27
  d4:	14 82       	std	Z+4, r1	; 0x04
  d6:	13 82       	std	Z+3, r1	; 0x03
  d8:	08 95       	ret

000000da <_Z10motor_testP6CMotor>:
  da:	cf 93       	push	r28
  dc:	df 93       	push	r29
  de:	ec 01       	movw	r28, r24
  e0:	40 e0       	ldi	r20, 0x00	; 0
  e2:	50 e0       	ldi	r21, 0x00	; 0
  e4:	68 ec       	ldi	r22, 0xC8	; 200
  e6:	70 e0       	ldi	r23, 0x00	; 0
  e8:	0e 94 4b 04 	call	0x896	; 0x896 <_ZN6CMotor3runEii>
  ec:	44 ef       	ldi	r20, 0xF4	; 244
  ee:	51 e0       	ldi	r21, 0x01	; 1
  f0:	60 e0       	ldi	r22, 0x00	; 0
  f2:	70 e0       	ldi	r23, 0x00	; 0
  f4:	8c e8       	ldi	r24, 0x8C	; 140
  f6:	90 e0       	ldi	r25, 0x00	; 0
  f8:	0e 94 ff 03 	call	0x7fe	; 0x7fe <_ZN8CRTTimer8delay_msEm>
  fc:	40 e0       	ldi	r20, 0x00	; 0
  fe:	50 e0       	ldi	r21, 0x00	; 0
 100:	68 e3       	ldi	r22, 0x38	; 56
 102:	7f ef       	ldi	r23, 0xFF	; 255
 104:	ce 01       	movw	r24, r28
 106:	0e 94 4b 04 	call	0x896	; 0x896 <_ZN6CMotor3runEii>
 10a:	44 ef       	ldi	r20, 0xF4	; 244
 10c:	51 e0       	ldi	r21, 0x01	; 1
 10e:	60 e0       	ldi	r22, 0x00	; 0
 110:	70 e0       	ldi	r23, 0x00	; 0
 112:	8c e8       	ldi	r24, 0x8C	; 140
 114:	90 e0       	ldi	r25, 0x00	; 0
 116:	0e 94 ff 03 	call	0x7fe	; 0x7fe <_ZN8CRTTimer8delay_msEm>
 11a:	48 ec       	ldi	r20, 0xC8	; 200
 11c:	50 e0       	ldi	r21, 0x00	; 0
 11e:	60 e0       	ldi	r22, 0x00	; 0
 120:	70 e0       	ldi	r23, 0x00	; 0
 122:	ce 01       	movw	r24, r28
 124:	0e 94 4b 04 	call	0x896	; 0x896 <_ZN6CMotor3runEii>
 128:	44 ef       	ldi	r20, 0xF4	; 244
 12a:	51 e0       	ldi	r21, 0x01	; 1
 12c:	60 e0       	ldi	r22, 0x00	; 0
 12e:	70 e0       	ldi	r23, 0x00	; 0
 130:	8c e8       	ldi	r24, 0x8C	; 140
 132:	90 e0       	ldi	r25, 0x00	; 0
 134:	0e 94 ff 03 	call	0x7fe	; 0x7fe <_ZN8CRTTimer8delay_msEm>
 138:	48 e3       	ldi	r20, 0x38	; 56
 13a:	5f ef       	ldi	r21, 0xFF	; 255
 13c:	60 e0       	ldi	r22, 0x00	; 0
 13e:	70 e0       	ldi	r23, 0x00	; 0
 140:	ce 01       	movw	r24, r28
 142:	0e 94 4b 04 	call	0x896	; 0x896 <_ZN6CMotor3runEii>
 146:	44 ef       	ldi	r20, 0xF4	; 244
 148:	51 e0       	ldi	r21, 0x01	; 1
 14a:	60 e0       	ldi	r22, 0x00	; 0
 14c:	70 e0       	ldi	r23, 0x00	; 0
 14e:	8c e8       	ldi	r24, 0x8C	; 140
 150:	90 e0       	ldi	r25, 0x00	; 0
 152:	0e 94 ff 03 	call	0x7fe	; 0x7fe <_ZN8CRTTimer8delay_msEm>
 156:	48 ec       	ldi	r20, 0xC8	; 200
 158:	50 e0       	ldi	r21, 0x00	; 0
 15a:	68 ec       	ldi	r22, 0xC8	; 200
 15c:	70 e0       	ldi	r23, 0x00	; 0
 15e:	ce 01       	movw	r24, r28
 160:	0e 94 4b 04 	call	0x896	; 0x896 <_ZN6CMotor3runEii>
 164:	44 ef       	ldi	r20, 0xF4	; 244
 166:	51 e0       	ldi	r21, 0x01	; 1
 168:	60 e0       	ldi	r22, 0x00	; 0
 16a:	70 e0       	ldi	r23, 0x00	; 0
 16c:	8c e8       	ldi	r24, 0x8C	; 140
 16e:	90 e0       	ldi	r25, 0x00	; 0
 170:	0e 94 ff 03 	call	0x7fe	; 0x7fe <_ZN8CRTTimer8delay_msEm>
 174:	40 e0       	ldi	r20, 0x00	; 0
 176:	50 e0       	ldi	r21, 0x00	; 0
 178:	60 e0       	ldi	r22, 0x00	; 0
 17a:	70 e0       	ldi	r23, 0x00	; 0
 17c:	ce 01       	movw	r24, r28
 17e:	df 91       	pop	r29
 180:	cf 91       	pop	r28
 182:	0c 94 4b 04 	jmp	0x896	; 0x896 <_ZN6CMotor3runEii>

00000186 <main>:
 186:	cf 93       	push	r28
 188:	df 93       	push	r29
 18a:	00 d0       	rcall	.+0      	; 0x18c <main+0x6>
 18c:	00 d0       	rcall	.+0      	; 0x18e <main+0x8>
 18e:	1f 92       	push	r1
 190:	cd b7       	in	r28, 0x3d	; 61
 192:	de b7       	in	r29, 0x3e	; 62
 194:	8a e6       	ldi	r24, 0x6A	; 106
 196:	90 e0       	ldi	r25, 0x00	; 0
 198:	9a 83       	std	Y+2, r25	; 0x02
 19a:	89 83       	std	Y+1, r24	; 0x01
 19c:	d5 9a       	sbi	0x1a, 5	; 26
 19e:	1d 82       	std	Y+5, r1	; 0x05
 1a0:	1c 82       	std	Y+4, r1	; 0x04
 1a2:	bb 98       	cbi	0x17, 3	; 23
 1a4:	c3 9a       	sbi	0x18, 3	; 24
 1a6:	48 ec       	ldi	r20, 0xC8	; 200
 1a8:	50 e0       	ldi	r21, 0x00	; 0
 1aa:	be 01       	movw	r22, r28
 1ac:	6f 5f       	subi	r22, 0xFF	; 255
 1ae:	7f 4f       	sbci	r23, 0xFF	; 255
 1b0:	8c e8       	ldi	r24, 0x8C	; 140
 1b2:	90 e0       	ldi	r25, 0x00	; 0
 1b4:	0e 94 a1 03 	call	0x742	; 0x742 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
 1b8:	81 e0       	ldi	r24, 0x01	; 1
 1ba:	90 e0       	ldi	r25, 0x00	; 0
 1bc:	0e 94 83 04 	call	0x906	; 0x906 <_Znwj>
 1c0:	8c 01       	movw	r16, r24
 1c2:	0e 94 3f 04 	call	0x87e	; 0x87e <_ZN6CMotorC1Ev>
 1c6:	b3 9b       	sbis	0x16, 3	; 22
 1c8:	05 c0       	rjmp	.+10     	; 0x1d4 <main+0x4e>
 1ca:	8c e8       	ldi	r24, 0x8C	; 140
 1cc:	90 e0       	ldi	r25, 0x00	; 0
 1ce:	0e 94 c3 03 	call	0x786	; 0x786 <_ZN8CRTTimer4mainEv>
 1d2:	f9 cf       	rjmp	.-14     	; 0x1c6 <main+0x40>
 1d4:	c8 01       	movw	r24, r16
 1d6:	0e 94 6d 00 	call	0xda	; 0xda <_Z10motor_testP6CMotor>
 1da:	f5 cf       	rjmp	.-22     	; 0x1c6 <main+0x40>

000001dc <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
 1dc:	0f 93       	push	r16
 1de:	1f 93       	push	r17
 1e0:	cf 93       	push	r28
 1e2:	df 93       	push	r29
 1e4:	00 d0       	rcall	.+0      	; 0x1e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
 1e6:	1f 92       	push	r1
 1e8:	cd b7       	in	r28, 0x3d	; 61
 1ea:	de b7       	in	r29, 0x3e	; 62
 1ec:	8c 01       	movw	r16, r24
 1ee:	dc 01       	movw	r26, r24
 1f0:	ed 91       	ld	r30, X+
 1f2:	fc 91       	ld	r31, X
 1f4:	01 90       	ld	r0, Z+
 1f6:	f0 81       	ld	r31, Z
 1f8:	e0 2d       	mov	r30, r0
 1fa:	2b 83       	std	Y+3, r18	; 0x03
 1fc:	4a 83       	std	Y+2, r20	; 0x02
 1fe:	69 83       	std	Y+1, r22	; 0x01
 200:	09 95       	icall
 202:	d8 01       	movw	r26, r16
 204:	ed 91       	ld	r30, X+
 206:	fc 91       	ld	r31, X
 208:	04 80       	ldd	r0, Z+4	; 0x04
 20a:	f5 81       	ldd	r31, Z+5	; 0x05
 20c:	e0 2d       	mov	r30, r0
 20e:	69 81       	ldd	r22, Y+1	; 0x01
 210:	c8 01       	movw	r24, r16
 212:	09 95       	icall
 214:	d8 01       	movw	r26, r16
 216:	ed 91       	ld	r30, X+
 218:	fc 91       	ld	r31, X
 21a:	04 80       	ldd	r0, Z+4	; 0x04
 21c:	f5 81       	ldd	r31, Z+5	; 0x05
 21e:	e0 2d       	mov	r30, r0
 220:	4a 81       	ldd	r20, Y+2	; 0x02
 222:	64 2f       	mov	r22, r20
 224:	c8 01       	movw	r24, r16
 226:	09 95       	icall
 228:	d8 01       	movw	r26, r16
 22a:	ed 91       	ld	r30, X+
 22c:	fc 91       	ld	r31, X
 22e:	04 80       	ldd	r0, Z+4	; 0x04
 230:	f5 81       	ldd	r31, Z+5	; 0x05
 232:	e0 2d       	mov	r30, r0
 234:	2b 81       	ldd	r18, Y+3	; 0x03
 236:	62 2f       	mov	r22, r18
 238:	c8 01       	movw	r24, r16
 23a:	09 95       	icall
 23c:	d8 01       	movw	r26, r16
 23e:	ed 91       	ld	r30, X+
 240:	fc 91       	ld	r31, X
 242:	02 80       	ldd	r0, Z+2	; 0x02
 244:	f3 81       	ldd	r31, Z+3	; 0x03
 246:	e0 2d       	mov	r30, r0
 248:	c8 01       	movw	r24, r16
 24a:	0f 90       	pop	r0
 24c:	0f 90       	pop	r0
 24e:	0f 90       	pop	r0
 250:	df 91       	pop	r29
 252:	cf 91       	pop	r28
 254:	1f 91       	pop	r17
 256:	0f 91       	pop	r16
 258:	09 94       	ijmp

0000025a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
 25a:	0f 93       	push	r16
 25c:	1f 93       	push	r17
 25e:	cf 93       	push	r28
 260:	df 93       	push	r29
 262:	00 d0       	rcall	.+0      	; 0x264 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
 264:	00 d0       	rcall	.+0      	; 0x266 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
 266:	cd b7       	in	r28, 0x3d	; 61
 268:	de b7       	in	r29, 0x3e	; 62
 26a:	8c 01       	movw	r16, r24
 26c:	dc 01       	movw	r26, r24
 26e:	ed 91       	ld	r30, X+
 270:	fc 91       	ld	r31, X
 272:	01 90       	ld	r0, Z+
 274:	f0 81       	ld	r31, Z
 276:	e0 2d       	mov	r30, r0
 278:	2c 83       	std	Y+4, r18	; 0x04
 27a:	3b 83       	std	Y+3, r19	; 0x03
 27c:	4a 83       	std	Y+2, r20	; 0x02
 27e:	69 83       	std	Y+1, r22	; 0x01
 280:	09 95       	icall
 282:	d8 01       	movw	r26, r16
 284:	ed 91       	ld	r30, X+
 286:	fc 91       	ld	r31, X
 288:	04 80       	ldd	r0, Z+4	; 0x04
 28a:	f5 81       	ldd	r31, Z+5	; 0x05
 28c:	e0 2d       	mov	r30, r0
 28e:	69 81       	ldd	r22, Y+1	; 0x01
 290:	c8 01       	movw	r24, r16
 292:	09 95       	icall
 294:	d8 01       	movw	r26, r16
 296:	ed 91       	ld	r30, X+
 298:	fc 91       	ld	r31, X
 29a:	04 80       	ldd	r0, Z+4	; 0x04
 29c:	f5 81       	ldd	r31, Z+5	; 0x05
 29e:	e0 2d       	mov	r30, r0
 2a0:	4a 81       	ldd	r20, Y+2	; 0x02
 2a2:	64 2f       	mov	r22, r20
 2a4:	c8 01       	movw	r24, r16
 2a6:	09 95       	icall
 2a8:	d8 01       	movw	r26, r16
 2aa:	ed 91       	ld	r30, X+
 2ac:	fc 91       	ld	r31, X
 2ae:	04 80       	ldd	r0, Z+4	; 0x04
 2b0:	f5 81       	ldd	r31, Z+5	; 0x05
 2b2:	e0 2d       	mov	r30, r0
 2b4:	3b 81       	ldd	r19, Y+3	; 0x03
 2b6:	63 2f       	mov	r22, r19
 2b8:	c8 01       	movw	r24, r16
 2ba:	09 95       	icall
 2bc:	d8 01       	movw	r26, r16
 2be:	ed 91       	ld	r30, X+
 2c0:	fc 91       	ld	r31, X
 2c2:	04 80       	ldd	r0, Z+4	; 0x04
 2c4:	f5 81       	ldd	r31, Z+5	; 0x05
 2c6:	e0 2d       	mov	r30, r0
 2c8:	2c 81       	ldd	r18, Y+4	; 0x04
 2ca:	62 2f       	mov	r22, r18
 2cc:	c8 01       	movw	r24, r16
 2ce:	09 95       	icall
 2d0:	d8 01       	movw	r26, r16
 2d2:	ed 91       	ld	r30, X+
 2d4:	fc 91       	ld	r31, X
 2d6:	02 80       	ldd	r0, Z+2	; 0x02
 2d8:	f3 81       	ldd	r31, Z+3	; 0x03
 2da:	e0 2d       	mov	r30, r0
 2dc:	c8 01       	movw	r24, r16
 2de:	0f 90       	pop	r0
 2e0:	0f 90       	pop	r0
 2e2:	0f 90       	pop	r0
 2e4:	0f 90       	pop	r0
 2e6:	df 91       	pop	r29
 2e8:	cf 91       	pop	r28
 2ea:	1f 91       	pop	r17
 2ec:	0f 91       	pop	r16
 2ee:	09 94       	ijmp

000002f0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
 2f0:	cf 92       	push	r12
 2f2:	df 92       	push	r13
 2f4:	ef 92       	push	r14
 2f6:	ff 92       	push	r15
 2f8:	0f 93       	push	r16
 2fa:	1f 93       	push	r17
 2fc:	cf 93       	push	r28
 2fe:	df 93       	push	r29
 300:	00 d0       	rcall	.+0      	; 0x302 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
 302:	00 d0       	rcall	.+0      	; 0x304 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
 304:	cd b7       	in	r28, 0x3d	; 61
 306:	de b7       	in	r29, 0x3e	; 62
 308:	6c 01       	movw	r12, r24
 30a:	dc 01       	movw	r26, r24
 30c:	ed 91       	ld	r30, X+
 30e:	fc 91       	ld	r31, X
 310:	01 90       	ld	r0, Z+
 312:	f0 81       	ld	r31, Z
 314:	e0 2d       	mov	r30, r0
 316:	2b 83       	std	Y+3, r18	; 0x03
 318:	3c 83       	std	Y+4, r19	; 0x04
 31a:	4a 83       	std	Y+2, r20	; 0x02
 31c:	69 83       	std	Y+1, r22	; 0x01
 31e:	09 95       	icall
 320:	d6 01       	movw	r26, r12
 322:	ed 91       	ld	r30, X+
 324:	fc 91       	ld	r31, X
 326:	04 80       	ldd	r0, Z+4	; 0x04
 328:	f5 81       	ldd	r31, Z+5	; 0x05
 32a:	e0 2d       	mov	r30, r0
 32c:	69 81       	ldd	r22, Y+1	; 0x01
 32e:	c6 01       	movw	r24, r12
 330:	09 95       	icall
 332:	d6 01       	movw	r26, r12
 334:	ed 91       	ld	r30, X+
 336:	fc 91       	ld	r31, X
 338:	04 80       	ldd	r0, Z+4	; 0x04
 33a:	f5 81       	ldd	r31, Z+5	; 0x05
 33c:	e0 2d       	mov	r30, r0
 33e:	4a 81       	ldd	r20, Y+2	; 0x02
 340:	64 2f       	mov	r22, r20
 342:	c6 01       	movw	r24, r12
 344:	09 95       	icall
 346:	2b 81       	ldd	r18, Y+3	; 0x03
 348:	e2 2e       	mov	r14, r18
 34a:	3c 81       	ldd	r19, Y+4	; 0x04
 34c:	f3 2e       	mov	r15, r19
 34e:	0e 0d       	add	r16, r14
 350:	1f 1d       	adc	r17, r15
 352:	d6 01       	movw	r26, r12
 354:	ed 91       	ld	r30, X+
 356:	fc 91       	ld	r31, X
 358:	e0 16       	cp	r14, r16
 35a:	f1 06       	cpc	r15, r17
 35c:	49 f0       	breq	.+18     	; 0x370 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
 35e:	d7 01       	movw	r26, r14
 360:	6d 91       	ld	r22, X+
 362:	7d 01       	movw	r14, r26
 364:	04 80       	ldd	r0, Z+4	; 0x04
 366:	f5 81       	ldd	r31, Z+5	; 0x05
 368:	e0 2d       	mov	r30, r0
 36a:	c6 01       	movw	r24, r12
 36c:	09 95       	icall
 36e:	f1 cf       	rjmp	.-30     	; 0x352 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
 370:	02 80       	ldd	r0, Z+2	; 0x02
 372:	f3 81       	ldd	r31, Z+3	; 0x03
 374:	e0 2d       	mov	r30, r0
 376:	c6 01       	movw	r24, r12
 378:	0f 90       	pop	r0
 37a:	0f 90       	pop	r0
 37c:	0f 90       	pop	r0
 37e:	0f 90       	pop	r0
 380:	df 91       	pop	r29
 382:	cf 91       	pop	r28
 384:	1f 91       	pop	r17
 386:	0f 91       	pop	r16
 388:	ff 90       	pop	r15
 38a:	ef 90       	pop	r14
 38c:	df 90       	pop	r13
 38e:	cf 90       	pop	r12
 390:	09 94       	ijmp

00000392 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
 392:	ef 92       	push	r14
 394:	ff 92       	push	r15
 396:	1f 93       	push	r17
 398:	cf 93       	push	r28
 39a:	df 93       	push	r29
 39c:	1f 92       	push	r1
 39e:	cd b7       	in	r28, 0x3d	; 61
 3a0:	de b7       	in	r29, 0x3e	; 62
 3a2:	7c 01       	movw	r14, r24
 3a4:	16 2f       	mov	r17, r22
 3a6:	dc 01       	movw	r26, r24
 3a8:	ed 91       	ld	r30, X+
 3aa:	fc 91       	ld	r31, X
 3ac:	01 90       	ld	r0, Z+
 3ae:	f0 81       	ld	r31, Z
 3b0:	e0 2d       	mov	r30, r0
 3b2:	49 83       	std	Y+1, r20	; 0x01
 3b4:	09 95       	icall
 3b6:	d7 01       	movw	r26, r14
 3b8:	ed 91       	ld	r30, X+
 3ba:	fc 91       	ld	r31, X
 3bc:	04 80       	ldd	r0, Z+4	; 0x04
 3be:	f5 81       	ldd	r31, Z+5	; 0x05
 3c0:	e0 2d       	mov	r30, r0
 3c2:	61 2f       	mov	r22, r17
 3c4:	c7 01       	movw	r24, r14
 3c6:	09 95       	icall
 3c8:	d7 01       	movw	r26, r14
 3ca:	ed 91       	ld	r30, X+
 3cc:	fc 91       	ld	r31, X
 3ce:	04 80       	ldd	r0, Z+4	; 0x04
 3d0:	f5 81       	ldd	r31, Z+5	; 0x05
 3d2:	e0 2d       	mov	r30, r0
 3d4:	49 81       	ldd	r20, Y+1	; 0x01
 3d6:	64 2f       	mov	r22, r20
 3d8:	c7 01       	movw	r24, r14
 3da:	09 95       	icall
 3dc:	d7 01       	movw	r26, r14
 3de:	ed 91       	ld	r30, X+
 3e0:	fc 91       	ld	r31, X
 3e2:	01 90       	ld	r0, Z+
 3e4:	f0 81       	ld	r31, Z
 3e6:	e0 2d       	mov	r30, r0
 3e8:	c7 01       	movw	r24, r14
 3ea:	09 95       	icall
 3ec:	d7 01       	movw	r26, r14
 3ee:	ed 91       	ld	r30, X+
 3f0:	fc 91       	ld	r31, X
 3f2:	61 2f       	mov	r22, r17
 3f4:	61 60       	ori	r22, 0x01	; 1
 3f6:	04 80       	ldd	r0, Z+4	; 0x04
 3f8:	f5 81       	ldd	r31, Z+5	; 0x05
 3fa:	e0 2d       	mov	r30, r0
 3fc:	c7 01       	movw	r24, r14
 3fe:	09 95       	icall
 400:	d7 01       	movw	r26, r14
 402:	ed 91       	ld	r30, X+
 404:	fc 91       	ld	r31, X
 406:	06 80       	ldd	r0, Z+6	; 0x06
 408:	f7 81       	ldd	r31, Z+7	; 0x07
 40a:	e0 2d       	mov	r30, r0
 40c:	60 e0       	ldi	r22, 0x00	; 0
 40e:	c7 01       	movw	r24, r14
 410:	09 95       	icall
 412:	18 2f       	mov	r17, r24
 414:	d7 01       	movw	r26, r14
 416:	ed 91       	ld	r30, X+
 418:	fc 91       	ld	r31, X
 41a:	02 80       	ldd	r0, Z+2	; 0x02
 41c:	f3 81       	ldd	r31, Z+3	; 0x03
 41e:	e0 2d       	mov	r30, r0
 420:	c7 01       	movw	r24, r14
 422:	09 95       	icall
 424:	81 2f       	mov	r24, r17
 426:	0f 90       	pop	r0
 428:	df 91       	pop	r29
 42a:	cf 91       	pop	r28
 42c:	1f 91       	pop	r17
 42e:	ff 90       	pop	r15
 430:	ef 90       	pop	r14
 432:	08 95       	ret

00000434 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
 434:	ef 92       	push	r14
 436:	ff 92       	push	r15
 438:	0f 93       	push	r16
 43a:	1f 93       	push	r17
 43c:	cf 93       	push	r28
 43e:	df 93       	push	r29
 440:	1f 92       	push	r1
 442:	cd b7       	in	r28, 0x3d	; 61
 444:	de b7       	in	r29, 0x3e	; 62
 446:	7c 01       	movw	r14, r24
 448:	16 2f       	mov	r17, r22
 44a:	dc 01       	movw	r26, r24
 44c:	ed 91       	ld	r30, X+
 44e:	fc 91       	ld	r31, X
 450:	01 90       	ld	r0, Z+
 452:	f0 81       	ld	r31, Z
 454:	e0 2d       	mov	r30, r0
 456:	49 83       	std	Y+1, r20	; 0x01
 458:	09 95       	icall
 45a:	d7 01       	movw	r26, r14
 45c:	ed 91       	ld	r30, X+
 45e:	fc 91       	ld	r31, X
 460:	04 80       	ldd	r0, Z+4	; 0x04
 462:	f5 81       	ldd	r31, Z+5	; 0x05
 464:	e0 2d       	mov	r30, r0
 466:	61 2f       	mov	r22, r17
 468:	c7 01       	movw	r24, r14
 46a:	09 95       	icall
 46c:	d7 01       	movw	r26, r14
 46e:	ed 91       	ld	r30, X+
 470:	fc 91       	ld	r31, X
 472:	04 80       	ldd	r0, Z+4	; 0x04
 474:	f5 81       	ldd	r31, Z+5	; 0x05
 476:	e0 2d       	mov	r30, r0
 478:	49 81       	ldd	r20, Y+1	; 0x01
 47a:	64 2f       	mov	r22, r20
 47c:	c7 01       	movw	r24, r14
 47e:	09 95       	icall
 480:	d7 01       	movw	r26, r14
 482:	ed 91       	ld	r30, X+
 484:	fc 91       	ld	r31, X
 486:	01 90       	ld	r0, Z+
 488:	f0 81       	ld	r31, Z
 48a:	e0 2d       	mov	r30, r0
 48c:	c7 01       	movw	r24, r14
 48e:	09 95       	icall
 490:	d7 01       	movw	r26, r14
 492:	ed 91       	ld	r30, X+
 494:	fc 91       	ld	r31, X
 496:	61 2f       	mov	r22, r17
 498:	61 60       	ori	r22, 0x01	; 1
 49a:	04 80       	ldd	r0, Z+4	; 0x04
 49c:	f5 81       	ldd	r31, Z+5	; 0x05
 49e:	e0 2d       	mov	r30, r0
 4a0:	c7 01       	movw	r24, r14
 4a2:	09 95       	icall
 4a4:	d7 01       	movw	r26, r14
 4a6:	ed 91       	ld	r30, X+
 4a8:	fc 91       	ld	r31, X
 4aa:	06 80       	ldd	r0, Z+6	; 0x06
 4ac:	f7 81       	ldd	r31, Z+7	; 0x07
 4ae:	e0 2d       	mov	r30, r0
 4b0:	61 e0       	ldi	r22, 0x01	; 1
 4b2:	c7 01       	movw	r24, r14
 4b4:	09 95       	icall
 4b6:	08 2f       	mov	r16, r24
 4b8:	10 e0       	ldi	r17, 0x00	; 0
 4ba:	10 2f       	mov	r17, r16
 4bc:	00 27       	eor	r16, r16
 4be:	d7 01       	movw	r26, r14
 4c0:	ed 91       	ld	r30, X+
 4c2:	fc 91       	ld	r31, X
 4c4:	06 80       	ldd	r0, Z+6	; 0x06
 4c6:	f7 81       	ldd	r31, Z+7	; 0x07
 4c8:	e0 2d       	mov	r30, r0
 4ca:	60 e0       	ldi	r22, 0x00	; 0
 4cc:	c7 01       	movw	r24, r14
 4ce:	09 95       	icall
 4d0:	08 2b       	or	r16, r24
 4d2:	d7 01       	movw	r26, r14
 4d4:	ed 91       	ld	r30, X+
 4d6:	fc 91       	ld	r31, X
 4d8:	02 80       	ldd	r0, Z+2	; 0x02
 4da:	f3 81       	ldd	r31, Z+3	; 0x03
 4dc:	e0 2d       	mov	r30, r0
 4de:	c7 01       	movw	r24, r14
 4e0:	09 95       	icall
 4e2:	c8 01       	movw	r24, r16
 4e4:	0f 90       	pop	r0
 4e6:	df 91       	pop	r29
 4e8:	cf 91       	pop	r28
 4ea:	1f 91       	pop	r17
 4ec:	0f 91       	pop	r16
 4ee:	ff 90       	pop	r15
 4f0:	ef 90       	pop	r14
 4f2:	08 95       	ret

000004f4 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
 4f4:	cf 92       	push	r12
 4f6:	df 92       	push	r13
 4f8:	ef 92       	push	r14
 4fa:	ff 92       	push	r15
 4fc:	0f 93       	push	r16
 4fe:	1f 93       	push	r17
 500:	cf 93       	push	r28
 502:	df 93       	push	r29
 504:	00 d0       	rcall	.+0      	; 0x506 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
 506:	1f 92       	push	r1
 508:	cd b7       	in	r28, 0x3d	; 61
 50a:	de b7       	in	r29, 0x3e	; 62
 50c:	6c 01       	movw	r12, r24
 50e:	f6 2e       	mov	r15, r22
 510:	dc 01       	movw	r26, r24
 512:	ed 91       	ld	r30, X+
 514:	fc 91       	ld	r31, X
 516:	01 90       	ld	r0, Z+
 518:	f0 81       	ld	r31, Z
 51a:	e0 2d       	mov	r30, r0
 51c:	2a 83       	std	Y+2, r18	; 0x02
 51e:	3b 83       	std	Y+3, r19	; 0x03
 520:	49 83       	std	Y+1, r20	; 0x01
 522:	09 95       	icall
 524:	d6 01       	movw	r26, r12
 526:	ed 91       	ld	r30, X+
 528:	fc 91       	ld	r31, X
 52a:	04 80       	ldd	r0, Z+4	; 0x04
 52c:	f5 81       	ldd	r31, Z+5	; 0x05
 52e:	e0 2d       	mov	r30, r0
 530:	6f 2d       	mov	r22, r15
 532:	c6 01       	movw	r24, r12
 534:	09 95       	icall
 536:	d6 01       	movw	r26, r12
 538:	ed 91       	ld	r30, X+
 53a:	fc 91       	ld	r31, X
 53c:	04 80       	ldd	r0, Z+4	; 0x04
 53e:	f5 81       	ldd	r31, Z+5	; 0x05
 540:	e0 2d       	mov	r30, r0
 542:	49 81       	ldd	r20, Y+1	; 0x01
 544:	64 2f       	mov	r22, r20
 546:	c6 01       	movw	r24, r12
 548:	09 95       	icall
 54a:	d6 01       	movw	r26, r12
 54c:	ed 91       	ld	r30, X+
 54e:	fc 91       	ld	r31, X
 550:	01 90       	ld	r0, Z+
 552:	f0 81       	ld	r31, Z
 554:	e0 2d       	mov	r30, r0
 556:	c6 01       	movw	r24, r12
 558:	09 95       	icall
 55a:	d6 01       	movw	r26, r12
 55c:	ed 91       	ld	r30, X+
 55e:	fc 91       	ld	r31, X
 560:	6f 2d       	mov	r22, r15
 562:	61 60       	ori	r22, 0x01	; 1
 564:	04 80       	ldd	r0, Z+4	; 0x04
 566:	f5 81       	ldd	r31, Z+5	; 0x05
 568:	e0 2d       	mov	r30, r0
 56a:	c6 01       	movw	r24, r12
 56c:	09 95       	icall
 56e:	2a 81       	ldd	r18, Y+2	; 0x02
 570:	e2 2e       	mov	r14, r18
 572:	3b 81       	ldd	r19, Y+3	; 0x03
 574:	f3 2e       	mov	r15, r19
 576:	0e 0d       	add	r16, r14
 578:	1f 1d       	adc	r17, r15
 57a:	d6 01       	movw	r26, r12
 57c:	ed 91       	ld	r30, X+
 57e:	fc 91       	ld	r31, X
 580:	e0 16       	cp	r14, r16
 582:	f1 06       	cpc	r15, r17
 584:	51 f0       	breq	.+20     	; 0x59a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0xa6>
 586:	06 80       	ldd	r0, Z+6	; 0x06
 588:	f7 81       	ldd	r31, Z+7	; 0x07
 58a:	e0 2d       	mov	r30, r0
 58c:	61 e0       	ldi	r22, 0x01	; 1
 58e:	c6 01       	movw	r24, r12
 590:	09 95       	icall
 592:	f7 01       	movw	r30, r14
 594:	81 93       	st	Z+, r24
 596:	7f 01       	movw	r14, r30
 598:	f0 cf       	rjmp	.-32     	; 0x57a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x86>
 59a:	02 80       	ldd	r0, Z+2	; 0x02
 59c:	f3 81       	ldd	r31, Z+3	; 0x03
 59e:	e0 2d       	mov	r30, r0
 5a0:	c6 01       	movw	r24, r12
 5a2:	0f 90       	pop	r0
 5a4:	0f 90       	pop	r0
 5a6:	0f 90       	pop	r0
 5a8:	df 91       	pop	r29
 5aa:	cf 91       	pop	r28
 5ac:	1f 91       	pop	r17
 5ae:	0f 91       	pop	r16
 5b0:	ff 90       	pop	r15
 5b2:	ef 90       	pop	r14
 5b4:	df 90       	pop	r13
 5b6:	cf 90       	pop	r12
 5b8:	09 94       	ijmp

000005ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 5ba:	88 23       	and	r24, r24
 5bc:	21 f0       	breq	.+8      	; 0x5c6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 5be:	bf 98       	cbi	0x17, 7	; 23
 5c0:	82 30       	cpi	r24, 0x02	; 2
 5c2:	19 f0       	breq	.+6      	; 0x5ca <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 5c4:	08 95       	ret
 5c6:	bf 9a       	sbi	0x17, 7	; 23
 5c8:	08 95       	ret
 5ca:	c7 9a       	sbi	0x18, 7	; 24
 5cc:	08 95       	ret

000005ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
 5ce:	8a e0       	ldi	r24, 0x0A	; 10
 5d0:	00 00       	nop
 5d2:	81 50       	subi	r24, 0x01	; 1
 5d4:	e9 f7       	brne	.-6      	; 0x5d0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
 5d6:	08 95       	ret

000005d8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
 5d8:	1f 93       	push	r17
 5da:	cf 93       	push	r28
 5dc:	df 93       	push	r29
 5de:	16 2f       	mov	r17, r22
 5e0:	bd 98       	cbi	0x17, 5	; 23
 5e2:	80 e0       	ldi	r24, 0x00	; 0
 5e4:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5e8:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5ec:	d8 e0       	ldi	r29, 0x08	; 8
 5ee:	c0 e0       	ldi	r28, 0x00	; 0
 5f0:	cc 0f       	add	r28, r28
 5f2:	81 e0       	ldi	r24, 0x01	; 1
 5f4:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5f8:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5fc:	b5 99       	sbic	0x16, 5	; 22
 5fe:	c1 60       	ori	r28, 0x01	; 1
 600:	80 e0       	ldi	r24, 0x00	; 0
 602:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 606:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 60a:	d1 50       	subi	r29, 0x01	; 1
 60c:	89 f7       	brne	.-30     	; 0x5f0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
 60e:	11 23       	and	r17, r17
 610:	11 f0       	breq	.+4      	; 0x616 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
 612:	bd 9a       	sbi	0x17, 5	; 23
 614:	01 c0       	rjmp	.+2      	; 0x618 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
 616:	bd 98       	cbi	0x17, 5	; 23
 618:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 61c:	81 e0       	ldi	r24, 0x01	; 1
 61e:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 622:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 626:	80 e0       	ldi	r24, 0x00	; 0
 628:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 62c:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 630:	bd 98       	cbi	0x17, 5	; 23
 632:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 636:	8c 2f       	mov	r24, r28
 638:	df 91       	pop	r29
 63a:	cf 91       	pop	r28
 63c:	1f 91       	pop	r17
 63e:	08 95       	ret

00000640 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
 640:	cf 93       	push	r28
 642:	df 93       	push	r29
 644:	d6 2f       	mov	r29, r22
 646:	c8 e0       	ldi	r28, 0x08	; 8
 648:	80 e0       	ldi	r24, 0x00	; 0
 64a:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 64e:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 652:	d7 ff       	sbrs	r29, 7
 654:	02 c0       	rjmp	.+4      	; 0x65a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
 656:	bd 98       	cbi	0x17, 5	; 23
 658:	01 c0       	rjmp	.+2      	; 0x65c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
 65a:	bd 9a       	sbi	0x17, 5	; 23
 65c:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 660:	81 e0       	ldi	r24, 0x01	; 1
 662:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 666:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 66a:	dd 0f       	add	r29, r29
 66c:	c1 50       	subi	r28, 0x01	; 1
 66e:	61 f7       	brne	.-40     	; 0x648 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
 670:	80 e0       	ldi	r24, 0x00	; 0
 672:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 676:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 67a:	bd 98       	cbi	0x17, 5	; 23
 67c:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 680:	81 e0       	ldi	r24, 0x01	; 1
 682:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 686:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 68a:	c6 b3       	in	r28, 0x16	; 22
 68c:	80 e0       	ldi	r24, 0x00	; 0
 68e:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 692:	0e 94 e7 02 	call	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 696:	c5 fb       	bst	r28, 5
 698:	cc 27       	eor	r28, r28
 69a:	c0 f9       	bld	r28, 0
 69c:	81 e0       	ldi	r24, 0x01	; 1
 69e:	8c 27       	eor	r24, r28
 6a0:	df 91       	pop	r29
 6a2:	cf 91       	pop	r28
 6a4:	08 95       	ret

000006a6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
 6a6:	81 e0       	ldi	r24, 0x01	; 1
 6a8:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6ac:	bd 98       	cbi	0x17, 5	; 23
 6ae:	81 e0       	ldi	r24, 0x01	; 1
 6b0:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6b4:	bd 9a       	sbi	0x17, 5	; 23
 6b6:	80 e0       	ldi	r24, 0x00	; 0
 6b8:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6bc:	bd 98       	cbi	0x17, 5	; 23
 6be:	0c 94 e7 02 	jmp	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

000006c2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
 6c2:	80 e0       	ldi	r24, 0x00	; 0
 6c4:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6c8:	bd 9a       	sbi	0x17, 5	; 23
 6ca:	81 e0       	ldi	r24, 0x01	; 1
 6cc:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6d0:	bd 9a       	sbi	0x17, 5	; 23
 6d2:	81 e0       	ldi	r24, 0x01	; 1
 6d4:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6d8:	bd 98       	cbi	0x17, 5	; 23
 6da:	0c 94 e7 02 	jmp	0x5ce	; 0x5ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

000006de <_GLOBAL__sub_I_i2c>:
 6de:	84 e7       	ldi	r24, 0x74	; 116
 6e0:	90 e0       	ldi	r25, 0x00	; 0
 6e2:	90 93 89 00 	sts	0x0089, r25
 6e6:	80 93 88 00 	sts	0x0088, r24
 6ea:	bd 98       	cbi	0x17, 5	; 23
 6ec:	81 e0       	ldi	r24, 0x01	; 1
 6ee:	0e 94 dd 02 	call	0x5ba	; 0x5ba <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6f2:	c5 98       	cbi	0x18, 5	; 24
 6f4:	c7 98       	cbi	0x18, 7	; 24
 6f6:	08 95       	ret

000006f8 <_ZN6CUSARTC1Ev>:
 6f8:	10 bc       	out	0x20, r1	; 32
 6fa:	80 e4       	ldi	r24, 0x40	; 64
 6fc:	89 b9       	out	0x09, r24	; 9
 6fe:	80 b5       	in	r24, 0x20	; 32
 700:	86 68       	ori	r24, 0x86	; 134
 702:	80 bd       	out	0x20, r24	; 32
 704:	8a b1       	in	r24, 0x0a	; 10
 706:	88 61       	ori	r24, 0x18	; 24
 708:	8a b9       	out	0x0a, r24	; 10
 70a:	08 95       	ret

0000070c <_ZN6CUSARTD1Ev>:
 70c:	08 95       	ret

0000070e <_ZN8CRTTimerC1Ev>:
 70e:	ed e8       	ldi	r30, 0x8D	; 141
 710:	f0 e0       	ldi	r31, 0x00	; 0
 712:	11 82       	std	Z+1, r1	; 0x01
 714:	10 82       	st	Z, r1
 716:	13 82       	std	Z+3, r1	; 0x03
 718:	12 82       	std	Z+2, r1	; 0x02
 71a:	15 82       	std	Z+5, r1	; 0x05
 71c:	14 82       	std	Z+4, r1	; 0x04
 71e:	16 82       	std	Z+6, r1	; 0x06
 720:	37 96       	adiw	r30, 0x07	; 7
 722:	80 e0       	ldi	r24, 0x00	; 0
 724:	e5 3c       	cpi	r30, 0xC5	; 197
 726:	f8 07       	cpc	r31, r24
 728:	a1 f7       	brne	.-24     	; 0x712 <_ZN8CRTTimerC1Ev+0x4>
 72a:	83 b7       	in	r24, 0x33	; 51
 72c:	88 60       	ori	r24, 0x08	; 8
 72e:	83 bf       	out	0x33, r24	; 51
 730:	8b e9       	ldi	r24, 0x9B	; 155
 732:	8c bf       	out	0x3c, r24	; 60
 734:	83 e0       	ldi	r24, 0x03	; 3
 736:	83 bf       	out	0x33, r24	; 51
 738:	89 b7       	in	r24, 0x39	; 57
 73a:	82 60       	ori	r24, 0x02	; 2
 73c:	89 bf       	out	0x39, r24	; 57
 73e:	78 94       	sei
 740:	08 95       	ret

00000742 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>:
 742:	f8 94       	cli
 744:	ed e8       	ldi	r30, 0x8D	; 141
 746:	f0 e0       	ldi	r31, 0x00	; 0
 748:	80 e0       	ldi	r24, 0x00	; 0
 74a:	90 e0       	ldi	r25, 0x00	; 0
 74c:	20 81       	ld	r18, Z
 74e:	31 81       	ldd	r19, Z+1	; 0x01
 750:	23 2b       	or	r18, r19
 752:	81 f4       	brne	.+32     	; 0x774 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x32>
 754:	27 e0       	ldi	r18, 0x07	; 7
 756:	28 9f       	mul	r18, r24
 758:	f0 01       	movw	r30, r0
 75a:	29 9f       	mul	r18, r25
 75c:	f0 0d       	add	r31, r0
 75e:	11 24       	eor	r1, r1
 760:	e3 57       	subi	r30, 0x73	; 115
 762:	ff 4f       	sbci	r31, 0xFF	; 255
 764:	71 83       	std	Z+1, r23	; 0x01
 766:	60 83       	st	Z, r22
 768:	53 83       	std	Z+3, r21	; 0x03
 76a:	42 83       	std	Z+2, r20	; 0x02
 76c:	55 83       	std	Z+5, r21	; 0x05
 76e:	44 83       	std	Z+4, r20	; 0x04
 770:	16 82       	std	Z+6, r1	; 0x06
 772:	07 c0       	rjmp	.+14     	; 0x782 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x40>
 774:	01 96       	adiw	r24, 0x01	; 1
 776:	37 96       	adiw	r30, 0x07	; 7
 778:	88 30       	cpi	r24, 0x08	; 8
 77a:	91 05       	cpc	r25, r1
 77c:	39 f7       	brne	.-50     	; 0x74c <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0xa>
 77e:	8f ef       	ldi	r24, 0xFF	; 255
 780:	9f ef       	ldi	r25, 0xFF	; 255
 782:	78 94       	sei
 784:	08 95       	ret

00000786 <_ZN8CRTTimer4mainEv>:
 786:	cf 93       	push	r28
 788:	df 93       	push	r29
 78a:	c3 e9       	ldi	r28, 0x93	; 147
 78c:	d0 e0       	ldi	r29, 0x00	; 0
 78e:	fe 01       	movw	r30, r28
 790:	36 97       	sbiw	r30, 0x06	; 6
 792:	80 81       	ld	r24, Z
 794:	91 81       	ldd	r25, Z+1	; 0x01
 796:	00 97       	sbiw	r24, 0x00	; 0
 798:	59 f0       	breq	.+22     	; 0x7b0 <_ZN8CRTTimer4mainEv+0x2a>
 79a:	28 81       	ld	r18, Y
 79c:	22 23       	and	r18, r18
 79e:	41 f0       	breq	.+16     	; 0x7b0 <_ZN8CRTTimer4mainEv+0x2a>
 7a0:	18 82       	st	Y, r1
 7a2:	dc 01       	movw	r26, r24
 7a4:	ed 91       	ld	r30, X+
 7a6:	fc 91       	ld	r31, X
 7a8:	04 80       	ldd	r0, Z+4	; 0x04
 7aa:	f5 81       	ldd	r31, Z+5	; 0x05
 7ac:	e0 2d       	mov	r30, r0
 7ae:	09 95       	icall
 7b0:	27 96       	adiw	r28, 0x07	; 7
 7b2:	b0 e0       	ldi	r27, 0x00	; 0
 7b4:	cb 3c       	cpi	r28, 0xCB	; 203
 7b6:	db 07       	cpc	r29, r27
 7b8:	51 f7       	brne	.-44     	; 0x78e <_ZN8CRTTimer4mainEv+0x8>
 7ba:	df 91       	pop	r29
 7bc:	cf 91       	pop	r28
 7be:	08 95       	ret

000007c0 <_ZN8CRTTimer8get_timeEv>:
 7c0:	cf 93       	push	r28
 7c2:	df 93       	push	r29
 7c4:	00 d0       	rcall	.+0      	; 0x7c6 <_ZN8CRTTimer8get_timeEv+0x6>
 7c6:	00 d0       	rcall	.+0      	; 0x7c8 <_ZN8CRTTimer8get_timeEv+0x8>
 7c8:	cd b7       	in	r28, 0x3d	; 61
 7ca:	de b7       	in	r29, 0x3e	; 62
 7cc:	f8 94       	cli
 7ce:	80 91 c5 00 	lds	r24, 0x00C5
 7d2:	90 91 c6 00 	lds	r25, 0x00C6
 7d6:	a0 91 c7 00 	lds	r26, 0x00C7
 7da:	b0 91 c8 00 	lds	r27, 0x00C8
 7de:	89 83       	std	Y+1, r24	; 0x01
 7e0:	9a 83       	std	Y+2, r25	; 0x02
 7e2:	ab 83       	std	Y+3, r26	; 0x03
 7e4:	bc 83       	std	Y+4, r27	; 0x04
 7e6:	78 94       	sei
 7e8:	69 81       	ldd	r22, Y+1	; 0x01
 7ea:	7a 81       	ldd	r23, Y+2	; 0x02
 7ec:	8b 81       	ldd	r24, Y+3	; 0x03
 7ee:	9c 81       	ldd	r25, Y+4	; 0x04
 7f0:	0f 90       	pop	r0
 7f2:	0f 90       	pop	r0
 7f4:	0f 90       	pop	r0
 7f6:	0f 90       	pop	r0
 7f8:	df 91       	pop	r29
 7fa:	cf 91       	pop	r28
 7fc:	08 95       	ret

000007fe <_ZN8CRTTimer8delay_msEm>:
 7fe:	cf 92       	push	r12
 800:	df 92       	push	r13
 802:	ef 92       	push	r14
 804:	ff 92       	push	r15
 806:	0f 93       	push	r16
 808:	1f 93       	push	r17
 80a:	cf 93       	push	r28
 80c:	df 93       	push	r29
 80e:	00 d0       	rcall	.+0      	; 0x810 <_ZN8CRTTimer8delay_msEm+0x12>
 810:	00 d0       	rcall	.+0      	; 0x812 <_ZN8CRTTimer8delay_msEm+0x14>
 812:	cd b7       	in	r28, 0x3d	; 61
 814:	de b7       	in	r29, 0x3e	; 62
 816:	8c 01       	movw	r16, r24
 818:	6a 01       	movw	r12, r20
 81a:	7b 01       	movw	r14, r22
 81c:	0e 94 e0 03 	call	0x7c0	; 0x7c0 <_ZN8CRTTimer8get_timeEv>
 820:	c6 0e       	add	r12, r22
 822:	d7 1e       	adc	r13, r23
 824:	e8 1e       	adc	r14, r24
 826:	f9 1e       	adc	r15, r25
 828:	c9 82       	std	Y+1, r12	; 0x01
 82a:	da 82       	std	Y+2, r13	; 0x02
 82c:	eb 82       	std	Y+3, r14	; 0x03
 82e:	fc 82       	std	Y+4, r15	; 0x04
 830:	c8 01       	movw	r24, r16
 832:	0e 94 e0 03 	call	0x7c0	; 0x7c0 <_ZN8CRTTimer8get_timeEv>
 836:	c9 80       	ldd	r12, Y+1	; 0x01
 838:	da 80       	ldd	r13, Y+2	; 0x02
 83a:	eb 80       	ldd	r14, Y+3	; 0x03
 83c:	fc 80       	ldd	r15, Y+4	; 0x04
 83e:	6c 15       	cp	r22, r12
 840:	7d 05       	cpc	r23, r13
 842:	8e 05       	cpc	r24, r14
 844:	9f 05       	cpc	r25, r15
 846:	10 f4       	brcc	.+4      	; 0x84c <_ZN8CRTTimer8delay_msEm+0x4e>
 848:	00 00       	nop
 84a:	f2 cf       	rjmp	.-28     	; 0x830 <_ZN8CRTTimer8delay_msEm+0x32>
 84c:	0f 90       	pop	r0
 84e:	0f 90       	pop	r0
 850:	0f 90       	pop	r0
 852:	0f 90       	pop	r0
 854:	df 91       	pop	r29
 856:	cf 91       	pop	r28
 858:	1f 91       	pop	r17
 85a:	0f 91       	pop	r16
 85c:	ff 90       	pop	r15
 85e:	ef 90       	pop	r14
 860:	df 90       	pop	r13
 862:	cf 90       	pop	r12
 864:	08 95       	ret

00000866 <_GLOBAL__sub_I_g_rt_time>:
 866:	8c e8       	ldi	r24, 0x8C	; 140
 868:	90 e0       	ldi	r25, 0x00	; 0
 86a:	0c 94 87 03 	jmp	0x70e	; 0x70e <_ZN8CRTTimerC1Ev>

0000086e <_GLOBAL__sub_I_terminal>:
 86e:	89 ec       	ldi	r24, 0xC9	; 201
 870:	90 e0       	ldi	r25, 0x00	; 0
 872:	0c 94 7c 03 	jmp	0x6f8	; 0x6f8 <_ZN6CUSARTC1Ev>

00000876 <_GLOBAL__sub_D_terminal>:
 876:	89 ec       	ldi	r24, 0xC9	; 201
 878:	90 e0       	ldi	r25, 0x00	; 0
 87a:	0c 94 86 03 	jmp	0x70c	; 0x70c <_ZN6CUSARTD1Ev>

0000087e <_ZN6CMotorC1Ev>:
 87e:	80 ef       	ldi	r24, 0xF0	; 240
 880:	81 bb       	out	0x11, r24	; 17
 882:	95 98       	cbi	0x12, 5	; 18
 884:	81 ea       	ldi	r24, 0xA1	; 161
 886:	8f bd       	out	0x2f, r24	; 47
 888:	81 e0       	ldi	r24, 0x01	; 1
 88a:	8e bd       	out	0x2e, r24	; 46
 88c:	1b bc       	out	0x2b, r1	; 43
 88e:	1a bc       	out	0x2a, r1	; 42
 890:	19 bc       	out	0x29, r1	; 41
 892:	18 bc       	out	0x28, r1	; 40
 894:	08 95       	ret

00000896 <_ZN6CMotor3runEii>:
 896:	6f 3f       	cpi	r22, 0xFF	; 255
 898:	71 05       	cpc	r23, r1
 89a:	09 f0       	breq	.+2      	; 0x89e <_ZN6CMotor3runEii+0x8>
 89c:	3c f4       	brge	.+14     	; 0x8ac <_ZN6CMotor3runEii+0x16>
 89e:	61 30       	cpi	r22, 0x01	; 1
 8a0:	8f ef       	ldi	r24, 0xFF	; 255
 8a2:	78 07       	cpc	r23, r24
 8a4:	2c f4       	brge	.+10     	; 0x8b0 <_ZN6CMotor3runEii+0x1a>
 8a6:	61 e0       	ldi	r22, 0x01	; 1
 8a8:	7f ef       	ldi	r23, 0xFF	; 255
 8aa:	02 c0       	rjmp	.+4      	; 0x8b0 <_ZN6CMotor3runEii+0x1a>
 8ac:	6f ef       	ldi	r22, 0xFF	; 255
 8ae:	70 e0       	ldi	r23, 0x00	; 0
 8b0:	4f 3f       	cpi	r20, 0xFF	; 255
 8b2:	51 05       	cpc	r21, r1
 8b4:	09 f0       	breq	.+2      	; 0x8b8 <_ZN6CMotor3runEii+0x22>
 8b6:	44 f4       	brge	.+16     	; 0x8c8 <_ZN6CMotor3runEii+0x32>
 8b8:	41 30       	cpi	r20, 0x01	; 1
 8ba:	8f ef       	ldi	r24, 0xFF	; 255
 8bc:	58 07       	cpc	r21, r24
 8be:	6c f0       	brlt	.+26     	; 0x8da <_ZN6CMotor3runEii+0x44>
 8c0:	14 16       	cp	r1, r20
 8c2:	15 06       	cpc	r1, r21
 8c4:	1c f0       	brlt	.+6      	; 0x8cc <_ZN6CMotor3runEii+0x36>
 8c6:	05 c0       	rjmp	.+10     	; 0x8d2 <_ZN6CMotor3runEii+0x3c>
 8c8:	4f ef       	ldi	r20, 0xFF	; 255
 8ca:	50 e0       	ldi	r21, 0x00	; 0
 8cc:	4a bd       	out	0x2a, r20	; 42
 8ce:	96 9a       	sbi	0x12, 6	; 18
 8d0:	0b c0       	rjmp	.+22     	; 0x8e8 <_ZN6CMotor3runEii+0x52>
 8d2:	41 15       	cp	r20, r1
 8d4:	51 05       	cpc	r21, r1
 8d6:	39 f0       	breq	.+14     	; 0x8e6 <_ZN6CMotor3runEii+0x50>
 8d8:	02 c0       	rjmp	.+4      	; 0x8de <_ZN6CMotor3runEii+0x48>
 8da:	41 e0       	ldi	r20, 0x01	; 1
 8dc:	5f ef       	ldi	r21, 0xFF	; 255
 8de:	41 95       	neg	r20
 8e0:	4a bd       	out	0x2a, r20	; 42
 8e2:	96 98       	cbi	0x12, 6	; 18
 8e4:	01 c0       	rjmp	.+2      	; 0x8e8 <_ZN6CMotor3runEii+0x52>
 8e6:	1a bc       	out	0x2a, r1	; 42
 8e8:	16 16       	cp	r1, r22
 8ea:	17 06       	cpc	r1, r23
 8ec:	1c f4       	brge	.+6      	; 0x8f4 <_ZN6CMotor3runEii+0x5e>
 8ee:	68 bd       	out	0x28, r22	; 40
 8f0:	97 98       	cbi	0x12, 7	; 18
 8f2:	08 95       	ret
 8f4:	61 15       	cp	r22, r1
 8f6:	71 05       	cpc	r23, r1
 8f8:	21 f0       	breq	.+8      	; 0x902 <_ZN6CMotor3runEii+0x6c>
 8fa:	61 95       	neg	r22
 8fc:	68 bd       	out	0x28, r22	; 40
 8fe:	97 9a       	sbi	0x12, 7	; 18
 900:	08 95       	ret
 902:	18 bc       	out	0x28, r1	; 40
 904:	08 95       	ret

00000906 <_Znwj>:
 906:	0c 94 8d 04 	jmp	0x91a	; 0x91a <malloc>

0000090a <_ZdlPv>:
 90a:	0c 94 22 05 	jmp	0xa44	; 0xa44 <free>

0000090e <__tablejump2__>:
 90e:	ee 0f       	add	r30, r30
 910:	ff 1f       	adc	r31, r31
 912:	05 90       	lpm	r0, Z+
 914:	f4 91       	lpm	r31, Z
 916:	e0 2d       	mov	r30, r0
 918:	09 94       	ijmp

0000091a <malloc>:
 91a:	cf 93       	push	r28
 91c:	df 93       	push	r29
 91e:	82 30       	cpi	r24, 0x02	; 2
 920:	91 05       	cpc	r25, r1
 922:	10 f4       	brcc	.+4      	; 0x928 <malloc+0xe>
 924:	82 e0       	ldi	r24, 0x02	; 2
 926:	90 e0       	ldi	r25, 0x00	; 0
 928:	e0 91 cc 00 	lds	r30, 0x00CC
 92c:	f0 91 cd 00 	lds	r31, 0x00CD
 930:	20 e0       	ldi	r18, 0x00	; 0
 932:	30 e0       	ldi	r19, 0x00	; 0
 934:	c0 e0       	ldi	r28, 0x00	; 0
 936:	d0 e0       	ldi	r29, 0x00	; 0
 938:	30 97       	sbiw	r30, 0x00	; 0
 93a:	11 f1       	breq	.+68     	; 0x980 <malloc+0x66>
 93c:	40 81       	ld	r20, Z
 93e:	51 81       	ldd	r21, Z+1	; 0x01
 940:	48 17       	cp	r20, r24
 942:	59 07       	cpc	r21, r25
 944:	c0 f0       	brcs	.+48     	; 0x976 <malloc+0x5c>
 946:	48 17       	cp	r20, r24
 948:	59 07       	cpc	r21, r25
 94a:	61 f4       	brne	.+24     	; 0x964 <malloc+0x4a>
 94c:	82 81       	ldd	r24, Z+2	; 0x02
 94e:	93 81       	ldd	r25, Z+3	; 0x03
 950:	20 97       	sbiw	r28, 0x00	; 0
 952:	19 f0       	breq	.+6      	; 0x95a <malloc+0x40>
 954:	9b 83       	std	Y+3, r25	; 0x03
 956:	8a 83       	std	Y+2, r24	; 0x02
 958:	2b c0       	rjmp	.+86     	; 0x9b0 <malloc+0x96>
 95a:	90 93 cd 00 	sts	0x00CD, r25
 95e:	80 93 cc 00 	sts	0x00CC, r24
 962:	26 c0       	rjmp	.+76     	; 0x9b0 <malloc+0x96>
 964:	21 15       	cp	r18, r1
 966:	31 05       	cpc	r19, r1
 968:	19 f0       	breq	.+6      	; 0x970 <malloc+0x56>
 96a:	42 17       	cp	r20, r18
 96c:	53 07       	cpc	r21, r19
 96e:	18 f4       	brcc	.+6      	; 0x976 <malloc+0x5c>
 970:	9a 01       	movw	r18, r20
 972:	be 01       	movw	r22, r28
 974:	df 01       	movw	r26, r30
 976:	ef 01       	movw	r28, r30
 978:	02 80       	ldd	r0, Z+2	; 0x02
 97a:	f3 81       	ldd	r31, Z+3	; 0x03
 97c:	e0 2d       	mov	r30, r0
 97e:	dc cf       	rjmp	.-72     	; 0x938 <malloc+0x1e>
 980:	21 15       	cp	r18, r1
 982:	31 05       	cpc	r19, r1
 984:	09 f1       	breq	.+66     	; 0x9c8 <malloc+0xae>
 986:	28 1b       	sub	r18, r24
 988:	39 0b       	sbc	r19, r25
 98a:	24 30       	cpi	r18, 0x04	; 4
 98c:	31 05       	cpc	r19, r1
 98e:	90 f4       	brcc	.+36     	; 0x9b4 <malloc+0x9a>
 990:	12 96       	adiw	r26, 0x02	; 2
 992:	8d 91       	ld	r24, X+
 994:	9c 91       	ld	r25, X
 996:	13 97       	sbiw	r26, 0x03	; 3
 998:	61 15       	cp	r22, r1
 99a:	71 05       	cpc	r23, r1
 99c:	21 f0       	breq	.+8      	; 0x9a6 <malloc+0x8c>
 99e:	fb 01       	movw	r30, r22
 9a0:	93 83       	std	Z+3, r25	; 0x03
 9a2:	82 83       	std	Z+2, r24	; 0x02
 9a4:	04 c0       	rjmp	.+8      	; 0x9ae <malloc+0x94>
 9a6:	90 93 cd 00 	sts	0x00CD, r25
 9aa:	80 93 cc 00 	sts	0x00CC, r24
 9ae:	fd 01       	movw	r30, r26
 9b0:	32 96       	adiw	r30, 0x02	; 2
 9b2:	44 c0       	rjmp	.+136    	; 0xa3c <malloc+0x122>
 9b4:	fd 01       	movw	r30, r26
 9b6:	e2 0f       	add	r30, r18
 9b8:	f3 1f       	adc	r31, r19
 9ba:	81 93       	st	Z+, r24
 9bc:	91 93       	st	Z+, r25
 9be:	22 50       	subi	r18, 0x02	; 2
 9c0:	31 09       	sbc	r19, r1
 9c2:	2d 93       	st	X+, r18
 9c4:	3c 93       	st	X, r19
 9c6:	3a c0       	rjmp	.+116    	; 0xa3c <malloc+0x122>
 9c8:	20 91 ca 00 	lds	r18, 0x00CA
 9cc:	30 91 cb 00 	lds	r19, 0x00CB
 9d0:	23 2b       	or	r18, r19
 9d2:	41 f4       	brne	.+16     	; 0x9e4 <malloc+0xca>
 9d4:	20 91 62 00 	lds	r18, 0x0062
 9d8:	30 91 63 00 	lds	r19, 0x0063
 9dc:	30 93 cb 00 	sts	0x00CB, r19
 9e0:	20 93 ca 00 	sts	0x00CA, r18
 9e4:	20 91 60 00 	lds	r18, 0x0060
 9e8:	30 91 61 00 	lds	r19, 0x0061
 9ec:	21 15       	cp	r18, r1
 9ee:	31 05       	cpc	r19, r1
 9f0:	41 f4       	brne	.+16     	; 0xa02 <malloc+0xe8>
 9f2:	2d b7       	in	r18, 0x3d	; 61
 9f4:	3e b7       	in	r19, 0x3e	; 62
 9f6:	40 91 64 00 	lds	r20, 0x0064
 9fa:	50 91 65 00 	lds	r21, 0x0065
 9fe:	24 1b       	sub	r18, r20
 a00:	35 0b       	sbc	r19, r21
 a02:	e0 91 ca 00 	lds	r30, 0x00CA
 a06:	f0 91 cb 00 	lds	r31, 0x00CB
 a0a:	e2 17       	cp	r30, r18
 a0c:	f3 07       	cpc	r31, r19
 a0e:	a0 f4       	brcc	.+40     	; 0xa38 <malloc+0x11e>
 a10:	2e 1b       	sub	r18, r30
 a12:	3f 0b       	sbc	r19, r31
 a14:	28 17       	cp	r18, r24
 a16:	39 07       	cpc	r19, r25
 a18:	78 f0       	brcs	.+30     	; 0xa38 <malloc+0x11e>
 a1a:	ac 01       	movw	r20, r24
 a1c:	4e 5f       	subi	r20, 0xFE	; 254
 a1e:	5f 4f       	sbci	r21, 0xFF	; 255
 a20:	24 17       	cp	r18, r20
 a22:	35 07       	cpc	r19, r21
 a24:	48 f0       	brcs	.+18     	; 0xa38 <malloc+0x11e>
 a26:	4e 0f       	add	r20, r30
 a28:	5f 1f       	adc	r21, r31
 a2a:	50 93 cb 00 	sts	0x00CB, r21
 a2e:	40 93 ca 00 	sts	0x00CA, r20
 a32:	81 93       	st	Z+, r24
 a34:	91 93       	st	Z+, r25
 a36:	02 c0       	rjmp	.+4      	; 0xa3c <malloc+0x122>
 a38:	e0 e0       	ldi	r30, 0x00	; 0
 a3a:	f0 e0       	ldi	r31, 0x00	; 0
 a3c:	cf 01       	movw	r24, r30
 a3e:	df 91       	pop	r29
 a40:	cf 91       	pop	r28
 a42:	08 95       	ret

00000a44 <free>:
 a44:	0f 93       	push	r16
 a46:	1f 93       	push	r17
 a48:	cf 93       	push	r28
 a4a:	df 93       	push	r29
 a4c:	00 97       	sbiw	r24, 0x00	; 0
 a4e:	09 f4       	brne	.+2      	; 0xa52 <free+0xe>
 a50:	8c c0       	rjmp	.+280    	; 0xb6a <free+0x126>
 a52:	fc 01       	movw	r30, r24
 a54:	32 97       	sbiw	r30, 0x02	; 2
 a56:	13 82       	std	Z+3, r1	; 0x03
 a58:	12 82       	std	Z+2, r1	; 0x02
 a5a:	00 91 cc 00 	lds	r16, 0x00CC
 a5e:	10 91 cd 00 	lds	r17, 0x00CD
 a62:	01 15       	cp	r16, r1
 a64:	11 05       	cpc	r17, r1
 a66:	81 f4       	brne	.+32     	; 0xa88 <free+0x44>
 a68:	20 81       	ld	r18, Z
 a6a:	31 81       	ldd	r19, Z+1	; 0x01
 a6c:	82 0f       	add	r24, r18
 a6e:	93 1f       	adc	r25, r19
 a70:	20 91 ca 00 	lds	r18, 0x00CA
 a74:	30 91 cb 00 	lds	r19, 0x00CB
 a78:	28 17       	cp	r18, r24
 a7a:	39 07       	cpc	r19, r25
 a7c:	79 f5       	brne	.+94     	; 0xadc <free+0x98>
 a7e:	f0 93 cb 00 	sts	0x00CB, r31
 a82:	e0 93 ca 00 	sts	0x00CA, r30
 a86:	71 c0       	rjmp	.+226    	; 0xb6a <free+0x126>
 a88:	d8 01       	movw	r26, r16
 a8a:	40 e0       	ldi	r20, 0x00	; 0
 a8c:	50 e0       	ldi	r21, 0x00	; 0
 a8e:	ae 17       	cp	r26, r30
 a90:	bf 07       	cpc	r27, r31
 a92:	50 f4       	brcc	.+20     	; 0xaa8 <free+0x64>
 a94:	12 96       	adiw	r26, 0x02	; 2
 a96:	2d 91       	ld	r18, X+
 a98:	3c 91       	ld	r19, X
 a9a:	13 97       	sbiw	r26, 0x03	; 3
 a9c:	ad 01       	movw	r20, r26
 a9e:	21 15       	cp	r18, r1
 aa0:	31 05       	cpc	r19, r1
 aa2:	09 f1       	breq	.+66     	; 0xae6 <free+0xa2>
 aa4:	d9 01       	movw	r26, r18
 aa6:	f3 cf       	rjmp	.-26     	; 0xa8e <free+0x4a>
 aa8:	9d 01       	movw	r18, r26
 aaa:	da 01       	movw	r26, r20
 aac:	33 83       	std	Z+3, r19	; 0x03
 aae:	22 83       	std	Z+2, r18	; 0x02
 ab0:	60 81       	ld	r22, Z
 ab2:	71 81       	ldd	r23, Z+1	; 0x01
 ab4:	86 0f       	add	r24, r22
 ab6:	97 1f       	adc	r25, r23
 ab8:	82 17       	cp	r24, r18
 aba:	93 07       	cpc	r25, r19
 abc:	69 f4       	brne	.+26     	; 0xad8 <free+0x94>
 abe:	ec 01       	movw	r28, r24
 ac0:	28 81       	ld	r18, Y
 ac2:	39 81       	ldd	r19, Y+1	; 0x01
 ac4:	26 0f       	add	r18, r22
 ac6:	37 1f       	adc	r19, r23
 ac8:	2e 5f       	subi	r18, 0xFE	; 254
 aca:	3f 4f       	sbci	r19, 0xFF	; 255
 acc:	31 83       	std	Z+1, r19	; 0x01
 ace:	20 83       	st	Z, r18
 ad0:	8a 81       	ldd	r24, Y+2	; 0x02
 ad2:	9b 81       	ldd	r25, Y+3	; 0x03
 ad4:	93 83       	std	Z+3, r25	; 0x03
 ad6:	82 83       	std	Z+2, r24	; 0x02
 ad8:	45 2b       	or	r20, r21
 ada:	29 f4       	brne	.+10     	; 0xae6 <free+0xa2>
 adc:	f0 93 cd 00 	sts	0x00CD, r31
 ae0:	e0 93 cc 00 	sts	0x00CC, r30
 ae4:	42 c0       	rjmp	.+132    	; 0xb6a <free+0x126>
 ae6:	13 96       	adiw	r26, 0x03	; 3
 ae8:	fc 93       	st	X, r31
 aea:	ee 93       	st	-X, r30
 aec:	12 97       	sbiw	r26, 0x02	; 2
 aee:	ed 01       	movw	r28, r26
 af0:	49 91       	ld	r20, Y+
 af2:	59 91       	ld	r21, Y+
 af4:	9e 01       	movw	r18, r28
 af6:	24 0f       	add	r18, r20
 af8:	35 1f       	adc	r19, r21
 afa:	e2 17       	cp	r30, r18
 afc:	f3 07       	cpc	r31, r19
 afe:	71 f4       	brne	.+28     	; 0xb1c <free+0xd8>
 b00:	80 81       	ld	r24, Z
 b02:	91 81       	ldd	r25, Z+1	; 0x01
 b04:	84 0f       	add	r24, r20
 b06:	95 1f       	adc	r25, r21
 b08:	02 96       	adiw	r24, 0x02	; 2
 b0a:	11 96       	adiw	r26, 0x01	; 1
 b0c:	9c 93       	st	X, r25
 b0e:	8e 93       	st	-X, r24
 b10:	82 81       	ldd	r24, Z+2	; 0x02
 b12:	93 81       	ldd	r25, Z+3	; 0x03
 b14:	13 96       	adiw	r26, 0x03	; 3
 b16:	9c 93       	st	X, r25
 b18:	8e 93       	st	-X, r24
 b1a:	12 97       	sbiw	r26, 0x02	; 2
 b1c:	e0 e0       	ldi	r30, 0x00	; 0
 b1e:	f0 e0       	ldi	r31, 0x00	; 0
 b20:	d8 01       	movw	r26, r16
 b22:	12 96       	adiw	r26, 0x02	; 2
 b24:	8d 91       	ld	r24, X+
 b26:	9c 91       	ld	r25, X
 b28:	13 97       	sbiw	r26, 0x03	; 3
 b2a:	00 97       	sbiw	r24, 0x00	; 0
 b2c:	19 f0       	breq	.+6      	; 0xb34 <free+0xf0>
 b2e:	f8 01       	movw	r30, r16
 b30:	8c 01       	movw	r16, r24
 b32:	f6 cf       	rjmp	.-20     	; 0xb20 <free+0xdc>
 b34:	8d 91       	ld	r24, X+
 b36:	9c 91       	ld	r25, X
 b38:	98 01       	movw	r18, r16
 b3a:	2e 5f       	subi	r18, 0xFE	; 254
 b3c:	3f 4f       	sbci	r19, 0xFF	; 255
 b3e:	82 0f       	add	r24, r18
 b40:	93 1f       	adc	r25, r19
 b42:	20 91 ca 00 	lds	r18, 0x00CA
 b46:	30 91 cb 00 	lds	r19, 0x00CB
 b4a:	28 17       	cp	r18, r24
 b4c:	39 07       	cpc	r19, r25
 b4e:	69 f4       	brne	.+26     	; 0xb6a <free+0x126>
 b50:	30 97       	sbiw	r30, 0x00	; 0
 b52:	29 f4       	brne	.+10     	; 0xb5e <free+0x11a>
 b54:	10 92 cd 00 	sts	0x00CD, r1
 b58:	10 92 cc 00 	sts	0x00CC, r1
 b5c:	02 c0       	rjmp	.+4      	; 0xb62 <free+0x11e>
 b5e:	13 82       	std	Z+3, r1	; 0x03
 b60:	12 82       	std	Z+2, r1	; 0x02
 b62:	10 93 cb 00 	sts	0x00CB, r17
 b66:	00 93 ca 00 	sts	0x00CA, r16
 b6a:	df 91       	pop	r29
 b6c:	cf 91       	pop	r28
 b6e:	1f 91       	pop	r17
 b70:	0f 91       	pop	r16
 b72:	08 95       	ret

00000b74 <__do_global_dtors>:
 b74:	10 e0       	ldi	r17, 0x00	; 0
 b76:	cd e2       	ldi	r28, 0x2D	; 45
 b78:	d0 e0       	ldi	r29, 0x00	; 0
 b7a:	04 c0       	rjmp	.+8      	; 0xb84 <__do_global_dtors+0x10>
 b7c:	fe 01       	movw	r30, r28
 b7e:	0e 94 87 04 	call	0x90e	; 0x90e <__tablejump2__>
 b82:	21 96       	adiw	r28, 0x01	; 1
 b84:	ce 32       	cpi	r28, 0x2E	; 46
 b86:	d1 07       	cpc	r29, r17
 b88:	c9 f7       	brne	.-14     	; 0xb7c <__do_global_dtors+0x8>
 b8a:	f8 94       	cli

00000b8c <__stop_program>:
 b8c:	ff cf       	rjmp	.-2      	; 0xb8c <__stop_program>
