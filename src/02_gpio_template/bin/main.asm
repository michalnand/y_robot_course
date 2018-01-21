
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
  4c:	0c 94 96 00 	jmp	0x12c	; 0x12c <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	da 00       	.word	0x00da	; ????
  56:	5d 03       	fmul	r21, r21
  58:	6a 03       	fmul	r22, r18

0000005a <__ctors_end>:
  5a:	6e 03       	fmul	r22, r22

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
  6e:	ea e0       	ldi	r30, 0x0A	; 10
  70:	f7 e0       	ldi	r31, 0x07	; 7
  72:	02 c0       	rjmp	.+4      	; 0x78 <__do_copy_data+0x10>
  74:	05 90       	lpm	r0, Z+
  76:	0d 92       	st	X+, r0
  78:	a8 37       	cpi	r26, 0x78	; 120
  7a:	b1 07       	cpc	r27, r17
  7c:	d9 f7       	brne	.-10     	; 0x74 <__do_copy_data+0xc>

0000007e <__do_clear_bss>:
  7e:	20 e0       	ldi	r18, 0x00	; 0
  80:	a8 e7       	ldi	r26, 0x78	; 120
  82:	b0 e0       	ldi	r27, 0x00	; 0
  84:	01 c0       	rjmp	.+2      	; 0x88 <.do_clear_bss_start>

00000086 <.do_clear_bss_loop>:
  86:	1d 92       	st	X+, r1

00000088 <.do_clear_bss_start>:
  88:	aa 3b       	cpi	r26, 0xBA	; 186
  8a:	b2 07       	cpc	r27, r18
  8c:	e1 f7       	brne	.-8      	; 0x86 <.do_clear_bss_loop>

0000008e <__do_global_ctors>:
  8e:	10 e0       	ldi	r17, 0x00	; 0
  90:	cd e2       	ldi	r28, 0x2D	; 45
  92:	d0 e0       	ldi	r29, 0x00	; 0
  94:	04 c0       	rjmp	.+8      	; 0x9e <__do_global_ctors+0x10>
  96:	21 97       	sbiw	r28, 0x01	; 1
  98:	fe 01       	movw	r30, r28
  9a:	0e 94 72 03 	call	0x6e4	; 0x6e4 <__tablejump2__>
  9e:	ca 32       	cpi	r28, 0x2A	; 42
  a0:	d1 07       	cpc	r29, r17
  a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
  a4:	0e 94 58 00 	call	0xb0	; 0xb0 <main>
  a8:	0c 94 78 03 	jmp	0x6f0	; 0x6f0 <__do_global_dtors>

000000ac <__bad_interrupt>:
  ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <main>:
  b0:	d5 9a       	sbi	0x1a, 5	; 26
  b2:	d6 9a       	sbi	0x1a, 6	; 26
  b4:	dd 98       	cbi	0x1b, 5	; 27
  b6:	de 98       	cbi	0x1b, 6	; 27
  b8:	2f e3       	ldi	r18, 0x3F	; 63
  ba:	8d e0       	ldi	r24, 0x0D	; 13
  bc:	93 e0       	ldi	r25, 0x03	; 3
  be:	21 50       	subi	r18, 0x01	; 1
  c0:	80 40       	sbci	r24, 0x00	; 0
  c2:	90 40       	sbci	r25, 0x00	; 0
  c4:	e1 f7       	brne	.-8      	; 0xbe <main+0xe>
  c6:	00 c0       	rjmp	.+0      	; 0xc8 <main+0x18>
  c8:	00 00       	nop
  ca:	dd 9a       	sbi	0x1b, 5	; 27
  cc:	de 9a       	sbi	0x1b, 6	; 27
  ce:	2f e3       	ldi	r18, 0x3F	; 63
  d0:	87 e7       	ldi	r24, 0x77	; 119
  d2:	9b e1       	ldi	r25, 0x1B	; 27
  d4:	21 50       	subi	r18, 0x01	; 1
  d6:	80 40       	sbci	r24, 0x00	; 0
  d8:	90 40       	sbci	r25, 0x00	; 0
  da:	e1 f7       	brne	.-8      	; 0xd4 <main+0x24>
  dc:	00 c0       	rjmp	.+0      	; 0xde <main+0x2e>
  de:	00 00       	nop
  e0:	e9 cf       	rjmp	.-46     	; 0xb4 <main+0x4>

000000e2 <_ZN6CUSARTC1Ev>:
  e2:	10 bc       	out	0x20, r1	; 32
  e4:	80 e4       	ldi	r24, 0x40	; 64
  e6:	89 b9       	out	0x09, r24	; 9
  e8:	80 b5       	in	r24, 0x20	; 32
  ea:	86 68       	ori	r24, 0x86	; 134
  ec:	80 bd       	out	0x20, r24	; 32
  ee:	8a b1       	in	r24, 0x0a	; 10
  f0:	88 61       	ori	r24, 0x18	; 24
  f2:	8a b9       	out	0x0a, r24	; 10
  f4:	08 95       	ret

000000f6 <_ZN6CUSARTD1Ev>:
  f6:	08 95       	ret

000000f8 <_ZN5TimerC1Ev>:
  f8:	e9 e7       	ldi	r30, 0x79	; 121
  fa:	f0 e0       	ldi	r31, 0x00	; 0
  fc:	11 82       	std	Z+1, r1	; 0x01
  fe:	10 82       	st	Z, r1
 100:	13 82       	std	Z+3, r1	; 0x03
 102:	12 82       	std	Z+2, r1	; 0x02
 104:	15 82       	std	Z+5, r1	; 0x05
 106:	14 82       	std	Z+4, r1	; 0x04
 108:	16 82       	std	Z+6, r1	; 0x06
 10a:	37 96       	adiw	r30, 0x07	; 7
 10c:	80 e0       	ldi	r24, 0x00	; 0
 10e:	e1 3b       	cpi	r30, 0xB1	; 177
 110:	f8 07       	cpc	r31, r24
 112:	a1 f7       	brne	.-24     	; 0xfc <_ZN5TimerC1Ev+0x4>
 114:	83 b7       	in	r24, 0x33	; 51
 116:	88 60       	ori	r24, 0x08	; 8
 118:	83 bf       	out	0x33, r24	; 51
 11a:	8b e9       	ldi	r24, 0x9B	; 155
 11c:	8c bf       	out	0x3c, r24	; 60
 11e:	83 e0       	ldi	r24, 0x03	; 3
 120:	83 bf       	out	0x33, r24	; 51
 122:	89 b7       	in	r24, 0x39	; 57
 124:	82 60       	ori	r24, 0x02	; 2
 126:	89 bf       	out	0x39, r24	; 57
 128:	78 94       	sei
 12a:	08 95       	ret

0000012c <__vector_19>:
 12c:	1f 92       	push	r1
 12e:	0f 92       	push	r0
 130:	0f b6       	in	r0, 0x3f	; 63
 132:	0f 92       	push	r0
 134:	11 24       	eor	r1, r1
 136:	8f 93       	push	r24
 138:	9f 93       	push	r25
 13a:	af 93       	push	r26
 13c:	bf 93       	push	r27
 13e:	ef 93       	push	r30
 140:	ff 93       	push	r31
 142:	e9 e7       	ldi	r30, 0x79	; 121
 144:	f0 e0       	ldi	r31, 0x00	; 0
 146:	af e7       	ldi	r26, 0x7F	; 127
 148:	b0 e0       	ldi	r27, 0x00	; 0
 14a:	84 81       	ldd	r24, Z+4	; 0x04
 14c:	95 81       	ldd	r25, Z+5	; 0x05
 14e:	00 97       	sbiw	r24, 0x00	; 0
 150:	21 f0       	breq	.+8      	; 0x15a <__vector_19+0x2e>
 152:	01 97       	sbiw	r24, 0x01	; 1
 154:	95 83       	std	Z+5, r25	; 0x05
 156:	84 83       	std	Z+4, r24	; 0x04
 158:	09 c0       	rjmp	.+18     	; 0x16c <__vector_19+0x40>
 15a:	82 81       	ldd	r24, Z+2	; 0x02
 15c:	93 81       	ldd	r25, Z+3	; 0x03
 15e:	95 83       	std	Z+5, r25	; 0x05
 160:	84 83       	std	Z+4, r24	; 0x04
 162:	8c 91       	ld	r24, X
 164:	8f 3f       	cpi	r24, 0xFF	; 255
 166:	11 f0       	breq	.+4      	; 0x16c <__vector_19+0x40>
 168:	8f 5f       	subi	r24, 0xFF	; 255
 16a:	8c 93       	st	X, r24
 16c:	37 96       	adiw	r30, 0x07	; 7
 16e:	17 96       	adiw	r26, 0x07	; 7
 170:	80 e0       	ldi	r24, 0x00	; 0
 172:	e1 3b       	cpi	r30, 0xB1	; 177
 174:	f8 07       	cpc	r31, r24
 176:	49 f7       	brne	.-46     	; 0x14a <__vector_19+0x1e>
 178:	80 91 b1 00 	lds	r24, 0x00B1
 17c:	90 91 b2 00 	lds	r25, 0x00B2
 180:	a0 91 b3 00 	lds	r26, 0x00B3
 184:	b0 91 b4 00 	lds	r27, 0x00B4
 188:	01 96       	adiw	r24, 0x01	; 1
 18a:	a1 1d       	adc	r26, r1
 18c:	b1 1d       	adc	r27, r1
 18e:	80 93 b1 00 	sts	0x00B1, r24
 192:	90 93 b2 00 	sts	0x00B2, r25
 196:	a0 93 b3 00 	sts	0x00B3, r26
 19a:	b0 93 b4 00 	sts	0x00B4, r27
 19e:	ff 91       	pop	r31
 1a0:	ef 91       	pop	r30
 1a2:	bf 91       	pop	r27
 1a4:	af 91       	pop	r26
 1a6:	9f 91       	pop	r25
 1a8:	8f 91       	pop	r24
 1aa:	0f 90       	pop	r0
 1ac:	0f be       	out	0x3f, r0	; 63
 1ae:	0f 90       	pop	r0
 1b0:	1f 90       	pop	r1
 1b2:	18 95       	reti

000001b4 <_GLOBAL__sub_I_g_rt_time>:
 1b4:	88 e7       	ldi	r24, 0x78	; 120
 1b6:	90 e0       	ldi	r25, 0x00	; 0
 1b8:	0c 94 7c 00 	jmp	0xf8	; 0xf8 <_ZN5TimerC1Ev>

000001bc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
 1bc:	0f 93       	push	r16
 1be:	1f 93       	push	r17
 1c0:	cf 93       	push	r28
 1c2:	df 93       	push	r29
 1c4:	00 d0       	rcall	.+0      	; 0x1c6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
 1c6:	1f 92       	push	r1
 1c8:	cd b7       	in	r28, 0x3d	; 61
 1ca:	de b7       	in	r29, 0x3e	; 62
 1cc:	8c 01       	movw	r16, r24
 1ce:	dc 01       	movw	r26, r24
 1d0:	ed 91       	ld	r30, X+
 1d2:	fc 91       	ld	r31, X
 1d4:	01 90       	ld	r0, Z+
 1d6:	f0 81       	ld	r31, Z
 1d8:	e0 2d       	mov	r30, r0
 1da:	2b 83       	std	Y+3, r18	; 0x03
 1dc:	4a 83       	std	Y+2, r20	; 0x02
 1de:	69 83       	std	Y+1, r22	; 0x01
 1e0:	09 95       	icall
 1e2:	d8 01       	movw	r26, r16
 1e4:	ed 91       	ld	r30, X+
 1e6:	fc 91       	ld	r31, X
 1e8:	04 80       	ldd	r0, Z+4	; 0x04
 1ea:	f5 81       	ldd	r31, Z+5	; 0x05
 1ec:	e0 2d       	mov	r30, r0
 1ee:	69 81       	ldd	r22, Y+1	; 0x01
 1f0:	c8 01       	movw	r24, r16
 1f2:	09 95       	icall
 1f4:	d8 01       	movw	r26, r16
 1f6:	ed 91       	ld	r30, X+
 1f8:	fc 91       	ld	r31, X
 1fa:	04 80       	ldd	r0, Z+4	; 0x04
 1fc:	f5 81       	ldd	r31, Z+5	; 0x05
 1fe:	e0 2d       	mov	r30, r0
 200:	4a 81       	ldd	r20, Y+2	; 0x02
 202:	64 2f       	mov	r22, r20
 204:	c8 01       	movw	r24, r16
 206:	09 95       	icall
 208:	d8 01       	movw	r26, r16
 20a:	ed 91       	ld	r30, X+
 20c:	fc 91       	ld	r31, X
 20e:	04 80       	ldd	r0, Z+4	; 0x04
 210:	f5 81       	ldd	r31, Z+5	; 0x05
 212:	e0 2d       	mov	r30, r0
 214:	2b 81       	ldd	r18, Y+3	; 0x03
 216:	62 2f       	mov	r22, r18
 218:	c8 01       	movw	r24, r16
 21a:	09 95       	icall
 21c:	d8 01       	movw	r26, r16
 21e:	ed 91       	ld	r30, X+
 220:	fc 91       	ld	r31, X
 222:	02 80       	ldd	r0, Z+2	; 0x02
 224:	f3 81       	ldd	r31, Z+3	; 0x03
 226:	e0 2d       	mov	r30, r0
 228:	c8 01       	movw	r24, r16
 22a:	0f 90       	pop	r0
 22c:	0f 90       	pop	r0
 22e:	0f 90       	pop	r0
 230:	df 91       	pop	r29
 232:	cf 91       	pop	r28
 234:	1f 91       	pop	r17
 236:	0f 91       	pop	r16
 238:	09 94       	ijmp

0000023a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
 23a:	0f 93       	push	r16
 23c:	1f 93       	push	r17
 23e:	cf 93       	push	r28
 240:	df 93       	push	r29
 242:	00 d0       	rcall	.+0      	; 0x244 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
 244:	00 d0       	rcall	.+0      	; 0x246 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
 246:	cd b7       	in	r28, 0x3d	; 61
 248:	de b7       	in	r29, 0x3e	; 62
 24a:	8c 01       	movw	r16, r24
 24c:	dc 01       	movw	r26, r24
 24e:	ed 91       	ld	r30, X+
 250:	fc 91       	ld	r31, X
 252:	01 90       	ld	r0, Z+
 254:	f0 81       	ld	r31, Z
 256:	e0 2d       	mov	r30, r0
 258:	2c 83       	std	Y+4, r18	; 0x04
 25a:	3b 83       	std	Y+3, r19	; 0x03
 25c:	4a 83       	std	Y+2, r20	; 0x02
 25e:	69 83       	std	Y+1, r22	; 0x01
 260:	09 95       	icall
 262:	d8 01       	movw	r26, r16
 264:	ed 91       	ld	r30, X+
 266:	fc 91       	ld	r31, X
 268:	04 80       	ldd	r0, Z+4	; 0x04
 26a:	f5 81       	ldd	r31, Z+5	; 0x05
 26c:	e0 2d       	mov	r30, r0
 26e:	69 81       	ldd	r22, Y+1	; 0x01
 270:	c8 01       	movw	r24, r16
 272:	09 95       	icall
 274:	d8 01       	movw	r26, r16
 276:	ed 91       	ld	r30, X+
 278:	fc 91       	ld	r31, X
 27a:	04 80       	ldd	r0, Z+4	; 0x04
 27c:	f5 81       	ldd	r31, Z+5	; 0x05
 27e:	e0 2d       	mov	r30, r0
 280:	4a 81       	ldd	r20, Y+2	; 0x02
 282:	64 2f       	mov	r22, r20
 284:	c8 01       	movw	r24, r16
 286:	09 95       	icall
 288:	d8 01       	movw	r26, r16
 28a:	ed 91       	ld	r30, X+
 28c:	fc 91       	ld	r31, X
 28e:	04 80       	ldd	r0, Z+4	; 0x04
 290:	f5 81       	ldd	r31, Z+5	; 0x05
 292:	e0 2d       	mov	r30, r0
 294:	3b 81       	ldd	r19, Y+3	; 0x03
 296:	63 2f       	mov	r22, r19
 298:	c8 01       	movw	r24, r16
 29a:	09 95       	icall
 29c:	d8 01       	movw	r26, r16
 29e:	ed 91       	ld	r30, X+
 2a0:	fc 91       	ld	r31, X
 2a2:	04 80       	ldd	r0, Z+4	; 0x04
 2a4:	f5 81       	ldd	r31, Z+5	; 0x05
 2a6:	e0 2d       	mov	r30, r0
 2a8:	2c 81       	ldd	r18, Y+4	; 0x04
 2aa:	62 2f       	mov	r22, r18
 2ac:	c8 01       	movw	r24, r16
 2ae:	09 95       	icall
 2b0:	d8 01       	movw	r26, r16
 2b2:	ed 91       	ld	r30, X+
 2b4:	fc 91       	ld	r31, X
 2b6:	02 80       	ldd	r0, Z+2	; 0x02
 2b8:	f3 81       	ldd	r31, Z+3	; 0x03
 2ba:	e0 2d       	mov	r30, r0
 2bc:	c8 01       	movw	r24, r16
 2be:	0f 90       	pop	r0
 2c0:	0f 90       	pop	r0
 2c2:	0f 90       	pop	r0
 2c4:	0f 90       	pop	r0
 2c6:	df 91       	pop	r29
 2c8:	cf 91       	pop	r28
 2ca:	1f 91       	pop	r17
 2cc:	0f 91       	pop	r16
 2ce:	09 94       	ijmp

000002d0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
 2d0:	cf 92       	push	r12
 2d2:	df 92       	push	r13
 2d4:	ef 92       	push	r14
 2d6:	ff 92       	push	r15
 2d8:	0f 93       	push	r16
 2da:	1f 93       	push	r17
 2dc:	cf 93       	push	r28
 2de:	df 93       	push	r29
 2e0:	00 d0       	rcall	.+0      	; 0x2e2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
 2e2:	00 d0       	rcall	.+0      	; 0x2e4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
 2e4:	cd b7       	in	r28, 0x3d	; 61
 2e6:	de b7       	in	r29, 0x3e	; 62
 2e8:	6c 01       	movw	r12, r24
 2ea:	dc 01       	movw	r26, r24
 2ec:	ed 91       	ld	r30, X+
 2ee:	fc 91       	ld	r31, X
 2f0:	01 90       	ld	r0, Z+
 2f2:	f0 81       	ld	r31, Z
 2f4:	e0 2d       	mov	r30, r0
 2f6:	2b 83       	std	Y+3, r18	; 0x03
 2f8:	3c 83       	std	Y+4, r19	; 0x04
 2fa:	4a 83       	std	Y+2, r20	; 0x02
 2fc:	69 83       	std	Y+1, r22	; 0x01
 2fe:	09 95       	icall
 300:	d6 01       	movw	r26, r12
 302:	ed 91       	ld	r30, X+
 304:	fc 91       	ld	r31, X
 306:	04 80       	ldd	r0, Z+4	; 0x04
 308:	f5 81       	ldd	r31, Z+5	; 0x05
 30a:	e0 2d       	mov	r30, r0
 30c:	69 81       	ldd	r22, Y+1	; 0x01
 30e:	c6 01       	movw	r24, r12
 310:	09 95       	icall
 312:	d6 01       	movw	r26, r12
 314:	ed 91       	ld	r30, X+
 316:	fc 91       	ld	r31, X
 318:	04 80       	ldd	r0, Z+4	; 0x04
 31a:	f5 81       	ldd	r31, Z+5	; 0x05
 31c:	e0 2d       	mov	r30, r0
 31e:	4a 81       	ldd	r20, Y+2	; 0x02
 320:	64 2f       	mov	r22, r20
 322:	c6 01       	movw	r24, r12
 324:	09 95       	icall
 326:	2b 81       	ldd	r18, Y+3	; 0x03
 328:	e2 2e       	mov	r14, r18
 32a:	3c 81       	ldd	r19, Y+4	; 0x04
 32c:	f3 2e       	mov	r15, r19
 32e:	0e 0d       	add	r16, r14
 330:	1f 1d       	adc	r17, r15
 332:	d6 01       	movw	r26, r12
 334:	ed 91       	ld	r30, X+
 336:	fc 91       	ld	r31, X
 338:	e0 16       	cp	r14, r16
 33a:	f1 06       	cpc	r15, r17
 33c:	49 f0       	breq	.+18     	; 0x350 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
 33e:	d7 01       	movw	r26, r14
 340:	6d 91       	ld	r22, X+
 342:	7d 01       	movw	r14, r26
 344:	04 80       	ldd	r0, Z+4	; 0x04
 346:	f5 81       	ldd	r31, Z+5	; 0x05
 348:	e0 2d       	mov	r30, r0
 34a:	c6 01       	movw	r24, r12
 34c:	09 95       	icall
 34e:	f1 cf       	rjmp	.-30     	; 0x332 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
 350:	02 80       	ldd	r0, Z+2	; 0x02
 352:	f3 81       	ldd	r31, Z+3	; 0x03
 354:	e0 2d       	mov	r30, r0
 356:	c6 01       	movw	r24, r12
 358:	0f 90       	pop	r0
 35a:	0f 90       	pop	r0
 35c:	0f 90       	pop	r0
 35e:	0f 90       	pop	r0
 360:	df 91       	pop	r29
 362:	cf 91       	pop	r28
 364:	1f 91       	pop	r17
 366:	0f 91       	pop	r16
 368:	ff 90       	pop	r15
 36a:	ef 90       	pop	r14
 36c:	df 90       	pop	r13
 36e:	cf 90       	pop	r12
 370:	09 94       	ijmp

00000372 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
 372:	ef 92       	push	r14
 374:	ff 92       	push	r15
 376:	1f 93       	push	r17
 378:	cf 93       	push	r28
 37a:	df 93       	push	r29
 37c:	1f 92       	push	r1
 37e:	cd b7       	in	r28, 0x3d	; 61
 380:	de b7       	in	r29, 0x3e	; 62
 382:	7c 01       	movw	r14, r24
 384:	16 2f       	mov	r17, r22
 386:	dc 01       	movw	r26, r24
 388:	ed 91       	ld	r30, X+
 38a:	fc 91       	ld	r31, X
 38c:	01 90       	ld	r0, Z+
 38e:	f0 81       	ld	r31, Z
 390:	e0 2d       	mov	r30, r0
 392:	49 83       	std	Y+1, r20	; 0x01
 394:	09 95       	icall
 396:	d7 01       	movw	r26, r14
 398:	ed 91       	ld	r30, X+
 39a:	fc 91       	ld	r31, X
 39c:	04 80       	ldd	r0, Z+4	; 0x04
 39e:	f5 81       	ldd	r31, Z+5	; 0x05
 3a0:	e0 2d       	mov	r30, r0
 3a2:	61 2f       	mov	r22, r17
 3a4:	c7 01       	movw	r24, r14
 3a6:	09 95       	icall
 3a8:	d7 01       	movw	r26, r14
 3aa:	ed 91       	ld	r30, X+
 3ac:	fc 91       	ld	r31, X
 3ae:	04 80       	ldd	r0, Z+4	; 0x04
 3b0:	f5 81       	ldd	r31, Z+5	; 0x05
 3b2:	e0 2d       	mov	r30, r0
 3b4:	49 81       	ldd	r20, Y+1	; 0x01
 3b6:	64 2f       	mov	r22, r20
 3b8:	c7 01       	movw	r24, r14
 3ba:	09 95       	icall
 3bc:	d7 01       	movw	r26, r14
 3be:	ed 91       	ld	r30, X+
 3c0:	fc 91       	ld	r31, X
 3c2:	01 90       	ld	r0, Z+
 3c4:	f0 81       	ld	r31, Z
 3c6:	e0 2d       	mov	r30, r0
 3c8:	c7 01       	movw	r24, r14
 3ca:	09 95       	icall
 3cc:	d7 01       	movw	r26, r14
 3ce:	ed 91       	ld	r30, X+
 3d0:	fc 91       	ld	r31, X
 3d2:	61 2f       	mov	r22, r17
 3d4:	61 60       	ori	r22, 0x01	; 1
 3d6:	04 80       	ldd	r0, Z+4	; 0x04
 3d8:	f5 81       	ldd	r31, Z+5	; 0x05
 3da:	e0 2d       	mov	r30, r0
 3dc:	c7 01       	movw	r24, r14
 3de:	09 95       	icall
 3e0:	d7 01       	movw	r26, r14
 3e2:	ed 91       	ld	r30, X+
 3e4:	fc 91       	ld	r31, X
 3e6:	06 80       	ldd	r0, Z+6	; 0x06
 3e8:	f7 81       	ldd	r31, Z+7	; 0x07
 3ea:	e0 2d       	mov	r30, r0
 3ec:	60 e0       	ldi	r22, 0x00	; 0
 3ee:	c7 01       	movw	r24, r14
 3f0:	09 95       	icall
 3f2:	18 2f       	mov	r17, r24
 3f4:	d7 01       	movw	r26, r14
 3f6:	ed 91       	ld	r30, X+
 3f8:	fc 91       	ld	r31, X
 3fa:	02 80       	ldd	r0, Z+2	; 0x02
 3fc:	f3 81       	ldd	r31, Z+3	; 0x03
 3fe:	e0 2d       	mov	r30, r0
 400:	c7 01       	movw	r24, r14
 402:	09 95       	icall
 404:	81 2f       	mov	r24, r17
 406:	0f 90       	pop	r0
 408:	df 91       	pop	r29
 40a:	cf 91       	pop	r28
 40c:	1f 91       	pop	r17
 40e:	ff 90       	pop	r15
 410:	ef 90       	pop	r14
 412:	08 95       	ret

00000414 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
 414:	ef 92       	push	r14
 416:	ff 92       	push	r15
 418:	0f 93       	push	r16
 41a:	1f 93       	push	r17
 41c:	cf 93       	push	r28
 41e:	df 93       	push	r29
 420:	1f 92       	push	r1
 422:	cd b7       	in	r28, 0x3d	; 61
 424:	de b7       	in	r29, 0x3e	; 62
 426:	7c 01       	movw	r14, r24
 428:	16 2f       	mov	r17, r22
 42a:	dc 01       	movw	r26, r24
 42c:	ed 91       	ld	r30, X+
 42e:	fc 91       	ld	r31, X
 430:	01 90       	ld	r0, Z+
 432:	f0 81       	ld	r31, Z
 434:	e0 2d       	mov	r30, r0
 436:	49 83       	std	Y+1, r20	; 0x01
 438:	09 95       	icall
 43a:	d7 01       	movw	r26, r14
 43c:	ed 91       	ld	r30, X+
 43e:	fc 91       	ld	r31, X
 440:	04 80       	ldd	r0, Z+4	; 0x04
 442:	f5 81       	ldd	r31, Z+5	; 0x05
 444:	e0 2d       	mov	r30, r0
 446:	61 2f       	mov	r22, r17
 448:	c7 01       	movw	r24, r14
 44a:	09 95       	icall
 44c:	d7 01       	movw	r26, r14
 44e:	ed 91       	ld	r30, X+
 450:	fc 91       	ld	r31, X
 452:	04 80       	ldd	r0, Z+4	; 0x04
 454:	f5 81       	ldd	r31, Z+5	; 0x05
 456:	e0 2d       	mov	r30, r0
 458:	49 81       	ldd	r20, Y+1	; 0x01
 45a:	64 2f       	mov	r22, r20
 45c:	c7 01       	movw	r24, r14
 45e:	09 95       	icall
 460:	d7 01       	movw	r26, r14
 462:	ed 91       	ld	r30, X+
 464:	fc 91       	ld	r31, X
 466:	01 90       	ld	r0, Z+
 468:	f0 81       	ld	r31, Z
 46a:	e0 2d       	mov	r30, r0
 46c:	c7 01       	movw	r24, r14
 46e:	09 95       	icall
 470:	d7 01       	movw	r26, r14
 472:	ed 91       	ld	r30, X+
 474:	fc 91       	ld	r31, X
 476:	61 2f       	mov	r22, r17
 478:	61 60       	ori	r22, 0x01	; 1
 47a:	04 80       	ldd	r0, Z+4	; 0x04
 47c:	f5 81       	ldd	r31, Z+5	; 0x05
 47e:	e0 2d       	mov	r30, r0
 480:	c7 01       	movw	r24, r14
 482:	09 95       	icall
 484:	d7 01       	movw	r26, r14
 486:	ed 91       	ld	r30, X+
 488:	fc 91       	ld	r31, X
 48a:	06 80       	ldd	r0, Z+6	; 0x06
 48c:	f7 81       	ldd	r31, Z+7	; 0x07
 48e:	e0 2d       	mov	r30, r0
 490:	61 e0       	ldi	r22, 0x01	; 1
 492:	c7 01       	movw	r24, r14
 494:	09 95       	icall
 496:	08 2f       	mov	r16, r24
 498:	10 e0       	ldi	r17, 0x00	; 0
 49a:	10 2f       	mov	r17, r16
 49c:	00 27       	eor	r16, r16
 49e:	d7 01       	movw	r26, r14
 4a0:	ed 91       	ld	r30, X+
 4a2:	fc 91       	ld	r31, X
 4a4:	06 80       	ldd	r0, Z+6	; 0x06
 4a6:	f7 81       	ldd	r31, Z+7	; 0x07
 4a8:	e0 2d       	mov	r30, r0
 4aa:	60 e0       	ldi	r22, 0x00	; 0
 4ac:	c7 01       	movw	r24, r14
 4ae:	09 95       	icall
 4b0:	08 2b       	or	r16, r24
 4b2:	d7 01       	movw	r26, r14
 4b4:	ed 91       	ld	r30, X+
 4b6:	fc 91       	ld	r31, X
 4b8:	02 80       	ldd	r0, Z+2	; 0x02
 4ba:	f3 81       	ldd	r31, Z+3	; 0x03
 4bc:	e0 2d       	mov	r30, r0
 4be:	c7 01       	movw	r24, r14
 4c0:	09 95       	icall
 4c2:	c8 01       	movw	r24, r16
 4c4:	0f 90       	pop	r0
 4c6:	df 91       	pop	r29
 4c8:	cf 91       	pop	r28
 4ca:	1f 91       	pop	r17
 4cc:	0f 91       	pop	r16
 4ce:	ff 90       	pop	r15
 4d0:	ef 90       	pop	r14
 4d2:	08 95       	ret

000004d4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
 4d4:	cf 92       	push	r12
 4d6:	df 92       	push	r13
 4d8:	ef 92       	push	r14
 4da:	ff 92       	push	r15
 4dc:	0f 93       	push	r16
 4de:	1f 93       	push	r17
 4e0:	cf 93       	push	r28
 4e2:	df 93       	push	r29
 4e4:	00 d0       	rcall	.+0      	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
 4e6:	1f 92       	push	r1
 4e8:	cd b7       	in	r28, 0x3d	; 61
 4ea:	de b7       	in	r29, 0x3e	; 62
 4ec:	6c 01       	movw	r12, r24
 4ee:	f6 2e       	mov	r15, r22
 4f0:	dc 01       	movw	r26, r24
 4f2:	ed 91       	ld	r30, X+
 4f4:	fc 91       	ld	r31, X
 4f6:	01 90       	ld	r0, Z+
 4f8:	f0 81       	ld	r31, Z
 4fa:	e0 2d       	mov	r30, r0
 4fc:	2a 83       	std	Y+2, r18	; 0x02
 4fe:	3b 83       	std	Y+3, r19	; 0x03
 500:	49 83       	std	Y+1, r20	; 0x01
 502:	09 95       	icall
 504:	d6 01       	movw	r26, r12
 506:	ed 91       	ld	r30, X+
 508:	fc 91       	ld	r31, X
 50a:	04 80       	ldd	r0, Z+4	; 0x04
 50c:	f5 81       	ldd	r31, Z+5	; 0x05
 50e:	e0 2d       	mov	r30, r0
 510:	6f 2d       	mov	r22, r15
 512:	c6 01       	movw	r24, r12
 514:	09 95       	icall
 516:	d6 01       	movw	r26, r12
 518:	ed 91       	ld	r30, X+
 51a:	fc 91       	ld	r31, X
 51c:	04 80       	ldd	r0, Z+4	; 0x04
 51e:	f5 81       	ldd	r31, Z+5	; 0x05
 520:	e0 2d       	mov	r30, r0
 522:	49 81       	ldd	r20, Y+1	; 0x01
 524:	64 2f       	mov	r22, r20
 526:	c6 01       	movw	r24, r12
 528:	09 95       	icall
 52a:	d6 01       	movw	r26, r12
 52c:	ed 91       	ld	r30, X+
 52e:	fc 91       	ld	r31, X
 530:	01 90       	ld	r0, Z+
 532:	f0 81       	ld	r31, Z
 534:	e0 2d       	mov	r30, r0
 536:	c6 01       	movw	r24, r12
 538:	09 95       	icall
 53a:	d6 01       	movw	r26, r12
 53c:	ed 91       	ld	r30, X+
 53e:	fc 91       	ld	r31, X
 540:	6f 2d       	mov	r22, r15
 542:	61 60       	ori	r22, 0x01	; 1
 544:	04 80       	ldd	r0, Z+4	; 0x04
 546:	f5 81       	ldd	r31, Z+5	; 0x05
 548:	e0 2d       	mov	r30, r0
 54a:	c6 01       	movw	r24, r12
 54c:	09 95       	icall
 54e:	2a 81       	ldd	r18, Y+2	; 0x02
 550:	e2 2e       	mov	r14, r18
 552:	3b 81       	ldd	r19, Y+3	; 0x03
 554:	f3 2e       	mov	r15, r19
 556:	0e 0d       	add	r16, r14
 558:	1f 1d       	adc	r17, r15
 55a:	d6 01       	movw	r26, r12
 55c:	ed 91       	ld	r30, X+
 55e:	fc 91       	ld	r31, X
 560:	e0 16       	cp	r14, r16
 562:	f1 06       	cpc	r15, r17
 564:	51 f0       	breq	.+20     	; 0x57a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
 566:	06 80       	ldd	r0, Z+6	; 0x06
 568:	f7 81       	ldd	r31, Z+7	; 0x07
 56a:	e0 2d       	mov	r30, r0
 56c:	61 e0       	ldi	r22, 0x01	; 1
 56e:	c6 01       	movw	r24, r12
 570:	09 95       	icall
 572:	f7 01       	movw	r30, r14
 574:	81 93       	st	Z+, r24
 576:	7f 01       	movw	r14, r30
 578:	f0 cf       	rjmp	.-32     	; 0x55a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
 57a:	02 80       	ldd	r0, Z+2	; 0x02
 57c:	f3 81       	ldd	r31, Z+3	; 0x03
 57e:	e0 2d       	mov	r30, r0
 580:	c6 01       	movw	r24, r12
 582:	0f 90       	pop	r0
 584:	0f 90       	pop	r0
 586:	0f 90       	pop	r0
 588:	df 91       	pop	r29
 58a:	cf 91       	pop	r28
 58c:	1f 91       	pop	r17
 58e:	0f 91       	pop	r16
 590:	ff 90       	pop	r15
 592:	ef 90       	pop	r14
 594:	df 90       	pop	r13
 596:	cf 90       	pop	r12
 598:	09 94       	ijmp

0000059a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 59a:	88 23       	and	r24, r24
 59c:	21 f0       	breq	.+8      	; 0x5a6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 59e:	bf 98       	cbi	0x17, 7	; 23
 5a0:	82 30       	cpi	r24, 0x02	; 2
 5a2:	19 f0       	breq	.+6      	; 0x5aa <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 5a4:	08 95       	ret
 5a6:	bf 9a       	sbi	0x17, 7	; 23
 5a8:	08 95       	ret
 5aa:	c7 9a       	sbi	0x18, 7	; 24
 5ac:	08 95       	ret

000005ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
 5ae:	00 00       	nop
 5b0:	00 00       	nop
 5b2:	08 95       	ret

000005b4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
 5b4:	1f 93       	push	r17
 5b6:	cf 93       	push	r28
 5b8:	df 93       	push	r29
 5ba:	16 2f       	mov	r17, r22
 5bc:	bd 98       	cbi	0x17, 5	; 23
 5be:	80 e0       	ldi	r24, 0x00	; 0
 5c0:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5c4:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5c8:	d8 e0       	ldi	r29, 0x08	; 8
 5ca:	c0 e0       	ldi	r28, 0x00	; 0
 5cc:	cc 0f       	add	r28, r28
 5ce:	81 e0       	ldi	r24, 0x01	; 1
 5d0:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5d4:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5d8:	b5 99       	sbic	0x16, 5	; 22
 5da:	c1 60       	ori	r28, 0x01	; 1
 5dc:	80 e0       	ldi	r24, 0x00	; 0
 5de:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5e2:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5e6:	d1 50       	subi	r29, 0x01	; 1
 5e8:	89 f7       	brne	.-30     	; 0x5cc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
 5ea:	11 23       	and	r17, r17
 5ec:	11 f0       	breq	.+4      	; 0x5f2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
 5ee:	bd 9a       	sbi	0x17, 5	; 23
 5f0:	01 c0       	rjmp	.+2      	; 0x5f4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
 5f2:	bd 98       	cbi	0x17, 5	; 23
 5f4:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5f8:	81 e0       	ldi	r24, 0x01	; 1
 5fa:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5fe:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 602:	80 e0       	ldi	r24, 0x00	; 0
 604:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 608:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 60c:	bd 98       	cbi	0x17, 5	; 23
 60e:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 612:	8c 2f       	mov	r24, r28
 614:	df 91       	pop	r29
 616:	cf 91       	pop	r28
 618:	1f 91       	pop	r17
 61a:	08 95       	ret

0000061c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
 61c:	cf 93       	push	r28
 61e:	df 93       	push	r29
 620:	d6 2f       	mov	r29, r22
 622:	c8 e0       	ldi	r28, 0x08	; 8
 624:	80 e0       	ldi	r24, 0x00	; 0
 626:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 62a:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 62e:	d7 ff       	sbrs	r29, 7
 630:	02 c0       	rjmp	.+4      	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
 632:	bd 98       	cbi	0x17, 5	; 23
 634:	01 c0       	rjmp	.+2      	; 0x638 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
 636:	bd 9a       	sbi	0x17, 5	; 23
 638:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 63c:	81 e0       	ldi	r24, 0x01	; 1
 63e:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 642:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 646:	dd 0f       	add	r29, r29
 648:	c1 50       	subi	r28, 0x01	; 1
 64a:	61 f7       	brne	.-40     	; 0x624 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
 64c:	80 e0       	ldi	r24, 0x00	; 0
 64e:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 652:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 656:	bd 98       	cbi	0x17, 5	; 23
 658:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 65c:	81 e0       	ldi	r24, 0x01	; 1
 65e:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 662:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 666:	c6 b3       	in	r28, 0x16	; 22
 668:	80 e0       	ldi	r24, 0x00	; 0
 66a:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 66e:	0e 94 d7 02 	call	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 672:	c5 fb       	bst	r28, 5
 674:	cc 27       	eor	r28, r28
 676:	c0 f9       	bld	r28, 0
 678:	81 e0       	ldi	r24, 0x01	; 1
 67a:	8c 27       	eor	r24, r28
 67c:	df 91       	pop	r29
 67e:	cf 91       	pop	r28
 680:	08 95       	ret

00000682 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
 682:	81 e0       	ldi	r24, 0x01	; 1
 684:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 688:	bd 98       	cbi	0x17, 5	; 23
 68a:	81 e0       	ldi	r24, 0x01	; 1
 68c:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 690:	bd 9a       	sbi	0x17, 5	; 23
 692:	80 e0       	ldi	r24, 0x00	; 0
 694:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 698:	bd 98       	cbi	0x17, 5	; 23
 69a:	0c 94 d7 02 	jmp	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000069e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
 69e:	80 e0       	ldi	r24, 0x00	; 0
 6a0:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6a4:	bd 9a       	sbi	0x17, 5	; 23
 6a6:	81 e0       	ldi	r24, 0x01	; 1
 6a8:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6ac:	bd 9a       	sbi	0x17, 5	; 23
 6ae:	81 e0       	ldi	r24, 0x01	; 1
 6b0:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6b4:	bd 98       	cbi	0x17, 5	; 23
 6b6:	0c 94 d7 02 	jmp	0x5ae	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

000006ba <_GLOBAL__sub_I_i2c>:
 6ba:	84 e6       	ldi	r24, 0x64	; 100
 6bc:	90 e0       	ldi	r25, 0x00	; 0
 6be:	90 93 b6 00 	sts	0x00B6, r25
 6c2:	80 93 b5 00 	sts	0x00B5, r24
 6c6:	bd 98       	cbi	0x17, 5	; 23
 6c8:	81 e0       	ldi	r24, 0x01	; 1
 6ca:	0e 94 cd 02 	call	0x59a	; 0x59a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6ce:	c5 98       	cbi	0x18, 5	; 24
 6d0:	c7 98       	cbi	0x18, 7	; 24
 6d2:	08 95       	ret

000006d4 <_GLOBAL__sub_I_terminal>:
 6d4:	89 eb       	ldi	r24, 0xB9	; 185
 6d6:	90 e0       	ldi	r25, 0x00	; 0
 6d8:	0c 94 71 00 	jmp	0xe2	; 0xe2 <_ZN6CUSARTC1Ev>

000006dc <_GLOBAL__sub_D_terminal>:
 6dc:	89 eb       	ldi	r24, 0xB9	; 185
 6de:	90 e0       	ldi	r25, 0x00	; 0
 6e0:	0c 94 7b 00 	jmp	0xf6	; 0xf6 <_ZN6CUSARTD1Ev>

000006e4 <__tablejump2__>:
 6e4:	ee 0f       	add	r30, r30
 6e6:	ff 1f       	adc	r31, r31
 6e8:	05 90       	lpm	r0, Z+
 6ea:	f4 91       	lpm	r31, Z
 6ec:	e0 2d       	mov	r30, r0
 6ee:	09 94       	ijmp

000006f0 <__do_global_dtors>:
 6f0:	10 e0       	ldi	r17, 0x00	; 0
 6f2:	cd e2       	ldi	r28, 0x2D	; 45
 6f4:	d0 e0       	ldi	r29, 0x00	; 0
 6f6:	04 c0       	rjmp	.+8      	; 0x700 <__do_global_dtors+0x10>
 6f8:	fe 01       	movw	r30, r28
 6fa:	0e 94 72 03 	call	0x6e4	; 0x6e4 <__tablejump2__>
 6fe:	21 96       	adiw	r28, 0x01	; 1
 700:	ce 32       	cpi	r28, 0x2E	; 46
 702:	d1 07       	cpc	r29, r17
 704:	c9 f7       	brne	.-14     	; 0x6f8 <__do_global_dtors+0x8>
 706:	f8 94       	cli

00000708 <__stop_program>:
 708:	ff cf       	rjmp	.-2      	; 0x708 <__stop_program>
