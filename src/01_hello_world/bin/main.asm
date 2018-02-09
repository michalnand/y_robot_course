
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
  4c:	0c 94 5e 03 	jmp	0x6bc	; 0x6bc <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	37 03       	mulsu	r19, r23
  56:	a2 03       	fmuls	r18, r18
  58:	a6 03       	fmuls	r18, r22

0000005a <__ctors_end>:
  5a:	aa 03       	fmulsu	r18, r18

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
  6e:	e2 e8       	ldi	r30, 0x82	; 130
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
  9a:	0e 94 ae 03 	call	0x75c	; 0x75c <__tablejump2__>
  9e:	ca 32       	cpi	r28, 0x2A	; 42
  a0:	d1 07       	cpc	r29, r17
  a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
  a4:	0e 94 77 00 	call	0xee	; 0xee <main>
  a8:	0c 94 b4 03 	jmp	0x768	; 0x768 <__do_global_dtors>

000000ac <__bad_interrupt>:
  ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN3Led2onEv>:
  b0:	4b b3       	in	r20, 0x1b	; 27
  b2:	21 e0       	ldi	r18, 0x01	; 1
  b4:	30 e0       	ldi	r19, 0x00	; 0
  b6:	b9 01       	movw	r22, r18
  b8:	fc 01       	movw	r30, r24
  ba:	00 80       	ld	r0, Z
  bc:	02 c0       	rjmp	.+4      	; 0xc2 <_ZN3Led2onEv+0x12>
  be:	66 0f       	add	r22, r22
  c0:	77 1f       	adc	r23, r23
  c2:	0a 94       	dec	r0
  c4:	e2 f7       	brpl	.-8      	; 0xbe <_ZN3Led2onEv+0xe>
  c6:	cb 01       	movw	r24, r22
  c8:	80 95       	com	r24
  ca:	84 23       	and	r24, r20
  cc:	8b bb       	out	0x1b, r24	; 27
  ce:	08 95       	ret

000000d0 <_ZN3Led3offEv>:
  d0:	4b b3       	in	r20, 0x1b	; 27
  d2:	21 e0       	ldi	r18, 0x01	; 1
  d4:	30 e0       	ldi	r19, 0x00	; 0
  d6:	b9 01       	movw	r22, r18
  d8:	fc 01       	movw	r30, r24
  da:	00 80       	ld	r0, Z
  dc:	02 c0       	rjmp	.+4      	; 0xe2 <_ZN3Led3offEv+0x12>
  de:	66 0f       	add	r22, r22
  e0:	77 1f       	adc	r23, r23
  e2:	0a 94       	dec	r0
  e4:	e2 f7       	brpl	.-8      	; 0xde <_ZN3Led3offEv+0xe>
  e6:	cb 01       	movw	r24, r22
  e8:	84 2b       	or	r24, r20
  ea:	8b bb       	out	0x1b, r24	; 27
  ec:	08 95       	ret

000000ee <main>:
  ee:	cf 93       	push	r28
  f0:	df 93       	push	r29
  f2:	00 d0       	rcall	.+0      	; 0xf4 <main+0x6>
  f4:	cd b7       	in	r28, 0x3d	; 61
  f6:	de b7       	in	r29, 0x3e	; 62
  f8:	85 e0       	ldi	r24, 0x05	; 5
  fa:	8a 83       	std	Y+2, r24	; 0x02
  fc:	d5 9a       	sbi	0x1a, 5	; 26
  fe:	ce 01       	movw	r24, r28
 100:	02 96       	adiw	r24, 0x02	; 2
 102:	0e 94 68 00 	call	0xd0	; 0xd0 <_ZN3Led3offEv>
 106:	86 e0       	ldi	r24, 0x06	; 6
 108:	89 83       	std	Y+1, r24	; 0x01
 10a:	d6 9a       	sbi	0x1a, 6	; 26
 10c:	ce 01       	movw	r24, r28
 10e:	01 96       	adiw	r24, 0x01	; 1
 110:	0e 94 68 00 	call	0xd0	; 0xd0 <_ZN3Led3offEv>
 114:	ce 01       	movw	r24, r28
 116:	02 96       	adiw	r24, 0x02	; 2
 118:	0e 94 58 00 	call	0xb0	; 0xb0 <_ZN3Led2onEv>
 11c:	ce 01       	movw	r24, r28
 11e:	01 96       	adiw	r24, 0x01	; 1
 120:	0e 94 58 00 	call	0xb0	; 0xb0 <_ZN3Led2onEv>
 124:	2f e3       	ldi	r18, 0x3F	; 63
 126:	8d e0       	ldi	r24, 0x0D	; 13
 128:	93 e0       	ldi	r25, 0x03	; 3
 12a:	21 50       	subi	r18, 0x01	; 1
 12c:	80 40       	sbci	r24, 0x00	; 0
 12e:	90 40       	sbci	r25, 0x00	; 0
 130:	e1 f7       	brne	.-8      	; 0x12a <main+0x3c>
 132:	00 c0       	rjmp	.+0      	; 0x134 <main+0x46>
 134:	00 00       	nop
 136:	ce 01       	movw	r24, r28
 138:	02 96       	adiw	r24, 0x02	; 2
 13a:	0e 94 68 00 	call	0xd0	; 0xd0 <_ZN3Led3offEv>
 13e:	ce 01       	movw	r24, r28
 140:	01 96       	adiw	r24, 0x01	; 1
 142:	0e 94 68 00 	call	0xd0	; 0xd0 <_ZN3Led3offEv>
 146:	2f e3       	ldi	r18, 0x3F	; 63
 148:	87 e7       	ldi	r24, 0x77	; 119
 14a:	9b e1       	ldi	r25, 0x1B	; 27
 14c:	21 50       	subi	r18, 0x01	; 1
 14e:	80 40       	sbci	r24, 0x00	; 0
 150:	90 40       	sbci	r25, 0x00	; 0
 152:	e1 f7       	brne	.-8      	; 0x14c <main+0x5e>
 154:	00 c0       	rjmp	.+0      	; 0x156 <main+0x68>
 156:	00 00       	nop
 158:	dd cf       	rjmp	.-70     	; 0x114 <main+0x26>

0000015a <_ZN5USARTC1Ev>:
 15a:	10 bc       	out	0x20, r1	; 32
 15c:	80 e4       	ldi	r24, 0x40	; 64
 15e:	89 b9       	out	0x09, r24	; 9
 160:	80 b5       	in	r24, 0x20	; 32
 162:	86 68       	ori	r24, 0x86	; 134
 164:	80 bd       	out	0x20, r24	; 32
 166:	8a b1       	in	r24, 0x0a	; 10
 168:	88 61       	ori	r24, 0x18	; 24
 16a:	8a b9       	out	0x0a, r24	; 10
 16c:	08 95       	ret

0000016e <_ZN5USARTD1Ev>:
 16e:	08 95       	ret

00000170 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
 170:	0f 93       	push	r16
 172:	1f 93       	push	r17
 174:	cf 93       	push	r28
 176:	df 93       	push	r29
 178:	00 d0       	rcall	.+0      	; 0x17a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
 17a:	1f 92       	push	r1
 17c:	cd b7       	in	r28, 0x3d	; 61
 17e:	de b7       	in	r29, 0x3e	; 62
 180:	8c 01       	movw	r16, r24
 182:	dc 01       	movw	r26, r24
 184:	ed 91       	ld	r30, X+
 186:	fc 91       	ld	r31, X
 188:	01 90       	ld	r0, Z+
 18a:	f0 81       	ld	r31, Z
 18c:	e0 2d       	mov	r30, r0
 18e:	2b 83       	std	Y+3, r18	; 0x03
 190:	4a 83       	std	Y+2, r20	; 0x02
 192:	69 83       	std	Y+1, r22	; 0x01
 194:	09 95       	icall
 196:	d8 01       	movw	r26, r16
 198:	ed 91       	ld	r30, X+
 19a:	fc 91       	ld	r31, X
 19c:	04 80       	ldd	r0, Z+4	; 0x04
 19e:	f5 81       	ldd	r31, Z+5	; 0x05
 1a0:	e0 2d       	mov	r30, r0
 1a2:	69 81       	ldd	r22, Y+1	; 0x01
 1a4:	c8 01       	movw	r24, r16
 1a6:	09 95       	icall
 1a8:	d8 01       	movw	r26, r16
 1aa:	ed 91       	ld	r30, X+
 1ac:	fc 91       	ld	r31, X
 1ae:	04 80       	ldd	r0, Z+4	; 0x04
 1b0:	f5 81       	ldd	r31, Z+5	; 0x05
 1b2:	e0 2d       	mov	r30, r0
 1b4:	4a 81       	ldd	r20, Y+2	; 0x02
 1b6:	64 2f       	mov	r22, r20
 1b8:	c8 01       	movw	r24, r16
 1ba:	09 95       	icall
 1bc:	d8 01       	movw	r26, r16
 1be:	ed 91       	ld	r30, X+
 1c0:	fc 91       	ld	r31, X
 1c2:	04 80       	ldd	r0, Z+4	; 0x04
 1c4:	f5 81       	ldd	r31, Z+5	; 0x05
 1c6:	e0 2d       	mov	r30, r0
 1c8:	2b 81       	ldd	r18, Y+3	; 0x03
 1ca:	62 2f       	mov	r22, r18
 1cc:	c8 01       	movw	r24, r16
 1ce:	09 95       	icall
 1d0:	d8 01       	movw	r26, r16
 1d2:	ed 91       	ld	r30, X+
 1d4:	fc 91       	ld	r31, X
 1d6:	02 80       	ldd	r0, Z+2	; 0x02
 1d8:	f3 81       	ldd	r31, Z+3	; 0x03
 1da:	e0 2d       	mov	r30, r0
 1dc:	c8 01       	movw	r24, r16
 1de:	0f 90       	pop	r0
 1e0:	0f 90       	pop	r0
 1e2:	0f 90       	pop	r0
 1e4:	df 91       	pop	r29
 1e6:	cf 91       	pop	r28
 1e8:	1f 91       	pop	r17
 1ea:	0f 91       	pop	r16
 1ec:	09 94       	ijmp

000001ee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
 1ee:	0f 93       	push	r16
 1f0:	1f 93       	push	r17
 1f2:	cf 93       	push	r28
 1f4:	df 93       	push	r29
 1f6:	00 d0       	rcall	.+0      	; 0x1f8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
 1f8:	00 d0       	rcall	.+0      	; 0x1fa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
 1fa:	cd b7       	in	r28, 0x3d	; 61
 1fc:	de b7       	in	r29, 0x3e	; 62
 1fe:	8c 01       	movw	r16, r24
 200:	dc 01       	movw	r26, r24
 202:	ed 91       	ld	r30, X+
 204:	fc 91       	ld	r31, X
 206:	01 90       	ld	r0, Z+
 208:	f0 81       	ld	r31, Z
 20a:	e0 2d       	mov	r30, r0
 20c:	2c 83       	std	Y+4, r18	; 0x04
 20e:	3b 83       	std	Y+3, r19	; 0x03
 210:	4a 83       	std	Y+2, r20	; 0x02
 212:	69 83       	std	Y+1, r22	; 0x01
 214:	09 95       	icall
 216:	d8 01       	movw	r26, r16
 218:	ed 91       	ld	r30, X+
 21a:	fc 91       	ld	r31, X
 21c:	04 80       	ldd	r0, Z+4	; 0x04
 21e:	f5 81       	ldd	r31, Z+5	; 0x05
 220:	e0 2d       	mov	r30, r0
 222:	69 81       	ldd	r22, Y+1	; 0x01
 224:	c8 01       	movw	r24, r16
 226:	09 95       	icall
 228:	d8 01       	movw	r26, r16
 22a:	ed 91       	ld	r30, X+
 22c:	fc 91       	ld	r31, X
 22e:	04 80       	ldd	r0, Z+4	; 0x04
 230:	f5 81       	ldd	r31, Z+5	; 0x05
 232:	e0 2d       	mov	r30, r0
 234:	4a 81       	ldd	r20, Y+2	; 0x02
 236:	64 2f       	mov	r22, r20
 238:	c8 01       	movw	r24, r16
 23a:	09 95       	icall
 23c:	d8 01       	movw	r26, r16
 23e:	ed 91       	ld	r30, X+
 240:	fc 91       	ld	r31, X
 242:	04 80       	ldd	r0, Z+4	; 0x04
 244:	f5 81       	ldd	r31, Z+5	; 0x05
 246:	e0 2d       	mov	r30, r0
 248:	3b 81       	ldd	r19, Y+3	; 0x03
 24a:	63 2f       	mov	r22, r19
 24c:	c8 01       	movw	r24, r16
 24e:	09 95       	icall
 250:	d8 01       	movw	r26, r16
 252:	ed 91       	ld	r30, X+
 254:	fc 91       	ld	r31, X
 256:	04 80       	ldd	r0, Z+4	; 0x04
 258:	f5 81       	ldd	r31, Z+5	; 0x05
 25a:	e0 2d       	mov	r30, r0
 25c:	2c 81       	ldd	r18, Y+4	; 0x04
 25e:	62 2f       	mov	r22, r18
 260:	c8 01       	movw	r24, r16
 262:	09 95       	icall
 264:	d8 01       	movw	r26, r16
 266:	ed 91       	ld	r30, X+
 268:	fc 91       	ld	r31, X
 26a:	02 80       	ldd	r0, Z+2	; 0x02
 26c:	f3 81       	ldd	r31, Z+3	; 0x03
 26e:	e0 2d       	mov	r30, r0
 270:	c8 01       	movw	r24, r16
 272:	0f 90       	pop	r0
 274:	0f 90       	pop	r0
 276:	0f 90       	pop	r0
 278:	0f 90       	pop	r0
 27a:	df 91       	pop	r29
 27c:	cf 91       	pop	r28
 27e:	1f 91       	pop	r17
 280:	0f 91       	pop	r16
 282:	09 94       	ijmp

00000284 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
 284:	cf 92       	push	r12
 286:	df 92       	push	r13
 288:	ef 92       	push	r14
 28a:	ff 92       	push	r15
 28c:	0f 93       	push	r16
 28e:	1f 93       	push	r17
 290:	cf 93       	push	r28
 292:	df 93       	push	r29
 294:	00 d0       	rcall	.+0      	; 0x296 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
 296:	00 d0       	rcall	.+0      	; 0x298 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
 298:	cd b7       	in	r28, 0x3d	; 61
 29a:	de b7       	in	r29, 0x3e	; 62
 29c:	6c 01       	movw	r12, r24
 29e:	dc 01       	movw	r26, r24
 2a0:	ed 91       	ld	r30, X+
 2a2:	fc 91       	ld	r31, X
 2a4:	01 90       	ld	r0, Z+
 2a6:	f0 81       	ld	r31, Z
 2a8:	e0 2d       	mov	r30, r0
 2aa:	2b 83       	std	Y+3, r18	; 0x03
 2ac:	3c 83       	std	Y+4, r19	; 0x04
 2ae:	4a 83       	std	Y+2, r20	; 0x02
 2b0:	69 83       	std	Y+1, r22	; 0x01
 2b2:	09 95       	icall
 2b4:	d6 01       	movw	r26, r12
 2b6:	ed 91       	ld	r30, X+
 2b8:	fc 91       	ld	r31, X
 2ba:	04 80       	ldd	r0, Z+4	; 0x04
 2bc:	f5 81       	ldd	r31, Z+5	; 0x05
 2be:	e0 2d       	mov	r30, r0
 2c0:	69 81       	ldd	r22, Y+1	; 0x01
 2c2:	c6 01       	movw	r24, r12
 2c4:	09 95       	icall
 2c6:	d6 01       	movw	r26, r12
 2c8:	ed 91       	ld	r30, X+
 2ca:	fc 91       	ld	r31, X
 2cc:	04 80       	ldd	r0, Z+4	; 0x04
 2ce:	f5 81       	ldd	r31, Z+5	; 0x05
 2d0:	e0 2d       	mov	r30, r0
 2d2:	4a 81       	ldd	r20, Y+2	; 0x02
 2d4:	64 2f       	mov	r22, r20
 2d6:	c6 01       	movw	r24, r12
 2d8:	09 95       	icall
 2da:	2b 81       	ldd	r18, Y+3	; 0x03
 2dc:	e2 2e       	mov	r14, r18
 2de:	3c 81       	ldd	r19, Y+4	; 0x04
 2e0:	f3 2e       	mov	r15, r19
 2e2:	0e 0d       	add	r16, r14
 2e4:	1f 1d       	adc	r17, r15
 2e6:	d6 01       	movw	r26, r12
 2e8:	ed 91       	ld	r30, X+
 2ea:	fc 91       	ld	r31, X
 2ec:	e0 16       	cp	r14, r16
 2ee:	f1 06       	cpc	r15, r17
 2f0:	49 f0       	breq	.+18     	; 0x304 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
 2f2:	d7 01       	movw	r26, r14
 2f4:	6d 91       	ld	r22, X+
 2f6:	7d 01       	movw	r14, r26
 2f8:	04 80       	ldd	r0, Z+4	; 0x04
 2fa:	f5 81       	ldd	r31, Z+5	; 0x05
 2fc:	e0 2d       	mov	r30, r0
 2fe:	c6 01       	movw	r24, r12
 300:	09 95       	icall
 302:	f1 cf       	rjmp	.-30     	; 0x2e6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
 304:	02 80       	ldd	r0, Z+2	; 0x02
 306:	f3 81       	ldd	r31, Z+3	; 0x03
 308:	e0 2d       	mov	r30, r0
 30a:	c6 01       	movw	r24, r12
 30c:	0f 90       	pop	r0
 30e:	0f 90       	pop	r0
 310:	0f 90       	pop	r0
 312:	0f 90       	pop	r0
 314:	df 91       	pop	r29
 316:	cf 91       	pop	r28
 318:	1f 91       	pop	r17
 31a:	0f 91       	pop	r16
 31c:	ff 90       	pop	r15
 31e:	ef 90       	pop	r14
 320:	df 90       	pop	r13
 322:	cf 90       	pop	r12
 324:	09 94       	ijmp

00000326 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
 326:	ef 92       	push	r14
 328:	ff 92       	push	r15
 32a:	1f 93       	push	r17
 32c:	cf 93       	push	r28
 32e:	df 93       	push	r29
 330:	1f 92       	push	r1
 332:	cd b7       	in	r28, 0x3d	; 61
 334:	de b7       	in	r29, 0x3e	; 62
 336:	7c 01       	movw	r14, r24
 338:	16 2f       	mov	r17, r22
 33a:	dc 01       	movw	r26, r24
 33c:	ed 91       	ld	r30, X+
 33e:	fc 91       	ld	r31, X
 340:	01 90       	ld	r0, Z+
 342:	f0 81       	ld	r31, Z
 344:	e0 2d       	mov	r30, r0
 346:	49 83       	std	Y+1, r20	; 0x01
 348:	09 95       	icall
 34a:	d7 01       	movw	r26, r14
 34c:	ed 91       	ld	r30, X+
 34e:	fc 91       	ld	r31, X
 350:	04 80       	ldd	r0, Z+4	; 0x04
 352:	f5 81       	ldd	r31, Z+5	; 0x05
 354:	e0 2d       	mov	r30, r0
 356:	61 2f       	mov	r22, r17
 358:	c7 01       	movw	r24, r14
 35a:	09 95       	icall
 35c:	d7 01       	movw	r26, r14
 35e:	ed 91       	ld	r30, X+
 360:	fc 91       	ld	r31, X
 362:	04 80       	ldd	r0, Z+4	; 0x04
 364:	f5 81       	ldd	r31, Z+5	; 0x05
 366:	e0 2d       	mov	r30, r0
 368:	49 81       	ldd	r20, Y+1	; 0x01
 36a:	64 2f       	mov	r22, r20
 36c:	c7 01       	movw	r24, r14
 36e:	09 95       	icall
 370:	d7 01       	movw	r26, r14
 372:	ed 91       	ld	r30, X+
 374:	fc 91       	ld	r31, X
 376:	01 90       	ld	r0, Z+
 378:	f0 81       	ld	r31, Z
 37a:	e0 2d       	mov	r30, r0
 37c:	c7 01       	movw	r24, r14
 37e:	09 95       	icall
 380:	d7 01       	movw	r26, r14
 382:	ed 91       	ld	r30, X+
 384:	fc 91       	ld	r31, X
 386:	61 2f       	mov	r22, r17
 388:	61 60       	ori	r22, 0x01	; 1
 38a:	04 80       	ldd	r0, Z+4	; 0x04
 38c:	f5 81       	ldd	r31, Z+5	; 0x05
 38e:	e0 2d       	mov	r30, r0
 390:	c7 01       	movw	r24, r14
 392:	09 95       	icall
 394:	d7 01       	movw	r26, r14
 396:	ed 91       	ld	r30, X+
 398:	fc 91       	ld	r31, X
 39a:	06 80       	ldd	r0, Z+6	; 0x06
 39c:	f7 81       	ldd	r31, Z+7	; 0x07
 39e:	e0 2d       	mov	r30, r0
 3a0:	60 e0       	ldi	r22, 0x00	; 0
 3a2:	c7 01       	movw	r24, r14
 3a4:	09 95       	icall
 3a6:	18 2f       	mov	r17, r24
 3a8:	d7 01       	movw	r26, r14
 3aa:	ed 91       	ld	r30, X+
 3ac:	fc 91       	ld	r31, X
 3ae:	02 80       	ldd	r0, Z+2	; 0x02
 3b0:	f3 81       	ldd	r31, Z+3	; 0x03
 3b2:	e0 2d       	mov	r30, r0
 3b4:	c7 01       	movw	r24, r14
 3b6:	09 95       	icall
 3b8:	81 2f       	mov	r24, r17
 3ba:	0f 90       	pop	r0
 3bc:	df 91       	pop	r29
 3be:	cf 91       	pop	r28
 3c0:	1f 91       	pop	r17
 3c2:	ff 90       	pop	r15
 3c4:	ef 90       	pop	r14
 3c6:	08 95       	ret

000003c8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
 3c8:	ef 92       	push	r14
 3ca:	ff 92       	push	r15
 3cc:	0f 93       	push	r16
 3ce:	1f 93       	push	r17
 3d0:	cf 93       	push	r28
 3d2:	df 93       	push	r29
 3d4:	1f 92       	push	r1
 3d6:	cd b7       	in	r28, 0x3d	; 61
 3d8:	de b7       	in	r29, 0x3e	; 62
 3da:	7c 01       	movw	r14, r24
 3dc:	16 2f       	mov	r17, r22
 3de:	dc 01       	movw	r26, r24
 3e0:	ed 91       	ld	r30, X+
 3e2:	fc 91       	ld	r31, X
 3e4:	01 90       	ld	r0, Z+
 3e6:	f0 81       	ld	r31, Z
 3e8:	e0 2d       	mov	r30, r0
 3ea:	49 83       	std	Y+1, r20	; 0x01
 3ec:	09 95       	icall
 3ee:	d7 01       	movw	r26, r14
 3f0:	ed 91       	ld	r30, X+
 3f2:	fc 91       	ld	r31, X
 3f4:	04 80       	ldd	r0, Z+4	; 0x04
 3f6:	f5 81       	ldd	r31, Z+5	; 0x05
 3f8:	e0 2d       	mov	r30, r0
 3fa:	61 2f       	mov	r22, r17
 3fc:	c7 01       	movw	r24, r14
 3fe:	09 95       	icall
 400:	d7 01       	movw	r26, r14
 402:	ed 91       	ld	r30, X+
 404:	fc 91       	ld	r31, X
 406:	04 80       	ldd	r0, Z+4	; 0x04
 408:	f5 81       	ldd	r31, Z+5	; 0x05
 40a:	e0 2d       	mov	r30, r0
 40c:	49 81       	ldd	r20, Y+1	; 0x01
 40e:	64 2f       	mov	r22, r20
 410:	c7 01       	movw	r24, r14
 412:	09 95       	icall
 414:	d7 01       	movw	r26, r14
 416:	ed 91       	ld	r30, X+
 418:	fc 91       	ld	r31, X
 41a:	01 90       	ld	r0, Z+
 41c:	f0 81       	ld	r31, Z
 41e:	e0 2d       	mov	r30, r0
 420:	c7 01       	movw	r24, r14
 422:	09 95       	icall
 424:	d7 01       	movw	r26, r14
 426:	ed 91       	ld	r30, X+
 428:	fc 91       	ld	r31, X
 42a:	61 2f       	mov	r22, r17
 42c:	61 60       	ori	r22, 0x01	; 1
 42e:	04 80       	ldd	r0, Z+4	; 0x04
 430:	f5 81       	ldd	r31, Z+5	; 0x05
 432:	e0 2d       	mov	r30, r0
 434:	c7 01       	movw	r24, r14
 436:	09 95       	icall
 438:	d7 01       	movw	r26, r14
 43a:	ed 91       	ld	r30, X+
 43c:	fc 91       	ld	r31, X
 43e:	06 80       	ldd	r0, Z+6	; 0x06
 440:	f7 81       	ldd	r31, Z+7	; 0x07
 442:	e0 2d       	mov	r30, r0
 444:	61 e0       	ldi	r22, 0x01	; 1
 446:	c7 01       	movw	r24, r14
 448:	09 95       	icall
 44a:	08 2f       	mov	r16, r24
 44c:	10 e0       	ldi	r17, 0x00	; 0
 44e:	10 2f       	mov	r17, r16
 450:	00 27       	eor	r16, r16
 452:	d7 01       	movw	r26, r14
 454:	ed 91       	ld	r30, X+
 456:	fc 91       	ld	r31, X
 458:	06 80       	ldd	r0, Z+6	; 0x06
 45a:	f7 81       	ldd	r31, Z+7	; 0x07
 45c:	e0 2d       	mov	r30, r0
 45e:	60 e0       	ldi	r22, 0x00	; 0
 460:	c7 01       	movw	r24, r14
 462:	09 95       	icall
 464:	08 2b       	or	r16, r24
 466:	d7 01       	movw	r26, r14
 468:	ed 91       	ld	r30, X+
 46a:	fc 91       	ld	r31, X
 46c:	02 80       	ldd	r0, Z+2	; 0x02
 46e:	f3 81       	ldd	r31, Z+3	; 0x03
 470:	e0 2d       	mov	r30, r0
 472:	c7 01       	movw	r24, r14
 474:	09 95       	icall
 476:	c8 01       	movw	r24, r16
 478:	0f 90       	pop	r0
 47a:	df 91       	pop	r29
 47c:	cf 91       	pop	r28
 47e:	1f 91       	pop	r17
 480:	0f 91       	pop	r16
 482:	ff 90       	pop	r15
 484:	ef 90       	pop	r14
 486:	08 95       	ret

00000488 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
 488:	cf 92       	push	r12
 48a:	df 92       	push	r13
 48c:	ef 92       	push	r14
 48e:	ff 92       	push	r15
 490:	0f 93       	push	r16
 492:	1f 93       	push	r17
 494:	cf 93       	push	r28
 496:	df 93       	push	r29
 498:	00 d0       	rcall	.+0      	; 0x49a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
 49a:	1f 92       	push	r1
 49c:	cd b7       	in	r28, 0x3d	; 61
 49e:	de b7       	in	r29, 0x3e	; 62
 4a0:	6c 01       	movw	r12, r24
 4a2:	f6 2e       	mov	r15, r22
 4a4:	dc 01       	movw	r26, r24
 4a6:	ed 91       	ld	r30, X+
 4a8:	fc 91       	ld	r31, X
 4aa:	01 90       	ld	r0, Z+
 4ac:	f0 81       	ld	r31, Z
 4ae:	e0 2d       	mov	r30, r0
 4b0:	2a 83       	std	Y+2, r18	; 0x02
 4b2:	3b 83       	std	Y+3, r19	; 0x03
 4b4:	49 83       	std	Y+1, r20	; 0x01
 4b6:	09 95       	icall
 4b8:	d6 01       	movw	r26, r12
 4ba:	ed 91       	ld	r30, X+
 4bc:	fc 91       	ld	r31, X
 4be:	04 80       	ldd	r0, Z+4	; 0x04
 4c0:	f5 81       	ldd	r31, Z+5	; 0x05
 4c2:	e0 2d       	mov	r30, r0
 4c4:	6f 2d       	mov	r22, r15
 4c6:	c6 01       	movw	r24, r12
 4c8:	09 95       	icall
 4ca:	d6 01       	movw	r26, r12
 4cc:	ed 91       	ld	r30, X+
 4ce:	fc 91       	ld	r31, X
 4d0:	04 80       	ldd	r0, Z+4	; 0x04
 4d2:	f5 81       	ldd	r31, Z+5	; 0x05
 4d4:	e0 2d       	mov	r30, r0
 4d6:	49 81       	ldd	r20, Y+1	; 0x01
 4d8:	64 2f       	mov	r22, r20
 4da:	c6 01       	movw	r24, r12
 4dc:	09 95       	icall
 4de:	d6 01       	movw	r26, r12
 4e0:	ed 91       	ld	r30, X+
 4e2:	fc 91       	ld	r31, X
 4e4:	01 90       	ld	r0, Z+
 4e6:	f0 81       	ld	r31, Z
 4e8:	e0 2d       	mov	r30, r0
 4ea:	c6 01       	movw	r24, r12
 4ec:	09 95       	icall
 4ee:	d6 01       	movw	r26, r12
 4f0:	ed 91       	ld	r30, X+
 4f2:	fc 91       	ld	r31, X
 4f4:	6f 2d       	mov	r22, r15
 4f6:	61 60       	ori	r22, 0x01	; 1
 4f8:	04 80       	ldd	r0, Z+4	; 0x04
 4fa:	f5 81       	ldd	r31, Z+5	; 0x05
 4fc:	e0 2d       	mov	r30, r0
 4fe:	c6 01       	movw	r24, r12
 500:	09 95       	icall
 502:	2a 81       	ldd	r18, Y+2	; 0x02
 504:	e2 2e       	mov	r14, r18
 506:	3b 81       	ldd	r19, Y+3	; 0x03
 508:	f3 2e       	mov	r15, r19
 50a:	0e 0d       	add	r16, r14
 50c:	1f 1d       	adc	r17, r15
 50e:	d6 01       	movw	r26, r12
 510:	ed 91       	ld	r30, X+
 512:	fc 91       	ld	r31, X
 514:	e0 16       	cp	r14, r16
 516:	f1 06       	cpc	r15, r17
 518:	51 f0       	breq	.+20     	; 0x52e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
 51a:	06 80       	ldd	r0, Z+6	; 0x06
 51c:	f7 81       	ldd	r31, Z+7	; 0x07
 51e:	e0 2d       	mov	r30, r0
 520:	61 e0       	ldi	r22, 0x01	; 1
 522:	c6 01       	movw	r24, r12
 524:	09 95       	icall
 526:	f7 01       	movw	r30, r14
 528:	81 93       	st	Z+, r24
 52a:	7f 01       	movw	r14, r30
 52c:	f0 cf       	rjmp	.-32     	; 0x50e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
 52e:	02 80       	ldd	r0, Z+2	; 0x02
 530:	f3 81       	ldd	r31, Z+3	; 0x03
 532:	e0 2d       	mov	r30, r0
 534:	c6 01       	movw	r24, r12
 536:	0f 90       	pop	r0
 538:	0f 90       	pop	r0
 53a:	0f 90       	pop	r0
 53c:	df 91       	pop	r29
 53e:	cf 91       	pop	r28
 540:	1f 91       	pop	r17
 542:	0f 91       	pop	r16
 544:	ff 90       	pop	r15
 546:	ef 90       	pop	r14
 548:	df 90       	pop	r13
 54a:	cf 90       	pop	r12
 54c:	09 94       	ijmp

0000054e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 54e:	88 23       	and	r24, r24
 550:	21 f0       	breq	.+8      	; 0x55a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 552:	bf 98       	cbi	0x17, 7	; 23
 554:	82 30       	cpi	r24, 0x02	; 2
 556:	19 f0       	breq	.+6      	; 0x55e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 558:	08 95       	ret
 55a:	bf 9a       	sbi	0x17, 7	; 23
 55c:	08 95       	ret
 55e:	c7 9a       	sbi	0x18, 7	; 24
 560:	08 95       	ret

00000562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
 562:	00 00       	nop
 564:	00 00       	nop
 566:	08 95       	ret

00000568 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
 568:	1f 93       	push	r17
 56a:	cf 93       	push	r28
 56c:	df 93       	push	r29
 56e:	16 2f       	mov	r17, r22
 570:	bd 98       	cbi	0x17, 5	; 23
 572:	80 e0       	ldi	r24, 0x00	; 0
 574:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 578:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 57c:	d8 e0       	ldi	r29, 0x08	; 8
 57e:	c0 e0       	ldi	r28, 0x00	; 0
 580:	cc 0f       	add	r28, r28
 582:	81 e0       	ldi	r24, 0x01	; 1
 584:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 588:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 58c:	b5 99       	sbic	0x16, 5	; 22
 58e:	c1 60       	ori	r28, 0x01	; 1
 590:	80 e0       	ldi	r24, 0x00	; 0
 592:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 596:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 59a:	d1 50       	subi	r29, 0x01	; 1
 59c:	89 f7       	brne	.-30     	; 0x580 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
 59e:	11 23       	and	r17, r17
 5a0:	11 f0       	breq	.+4      	; 0x5a6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
 5a2:	bd 9a       	sbi	0x17, 5	; 23
 5a4:	01 c0       	rjmp	.+2      	; 0x5a8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
 5a6:	bd 98       	cbi	0x17, 5	; 23
 5a8:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5ac:	81 e0       	ldi	r24, 0x01	; 1
 5ae:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5b2:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5b6:	80 e0       	ldi	r24, 0x00	; 0
 5b8:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5bc:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5c0:	bd 98       	cbi	0x17, 5	; 23
 5c2:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5c6:	8c 2f       	mov	r24, r28
 5c8:	df 91       	pop	r29
 5ca:	cf 91       	pop	r28
 5cc:	1f 91       	pop	r17
 5ce:	08 95       	ret

000005d0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
 5d0:	cf 93       	push	r28
 5d2:	df 93       	push	r29
 5d4:	d6 2f       	mov	r29, r22
 5d6:	c8 e0       	ldi	r28, 0x08	; 8
 5d8:	80 e0       	ldi	r24, 0x00	; 0
 5da:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5de:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5e2:	d7 ff       	sbrs	r29, 7
 5e4:	02 c0       	rjmp	.+4      	; 0x5ea <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
 5e6:	bd 98       	cbi	0x17, 5	; 23
 5e8:	01 c0       	rjmp	.+2      	; 0x5ec <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
 5ea:	bd 9a       	sbi	0x17, 5	; 23
 5ec:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5f0:	81 e0       	ldi	r24, 0x01	; 1
 5f2:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5f6:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5fa:	dd 0f       	add	r29, r29
 5fc:	c1 50       	subi	r28, 0x01	; 1
 5fe:	61 f7       	brne	.-40     	; 0x5d8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
 600:	80 e0       	ldi	r24, 0x00	; 0
 602:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 606:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 60a:	bd 98       	cbi	0x17, 5	; 23
 60c:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 610:	81 e0       	ldi	r24, 0x01	; 1
 612:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 616:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 61a:	c6 b3       	in	r28, 0x16	; 22
 61c:	80 e0       	ldi	r24, 0x00	; 0
 61e:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 622:	0e 94 b1 02 	call	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 626:	c5 fb       	bst	r28, 5
 628:	cc 27       	eor	r28, r28
 62a:	c0 f9       	bld	r28, 0
 62c:	81 e0       	ldi	r24, 0x01	; 1
 62e:	8c 27       	eor	r24, r28
 630:	df 91       	pop	r29
 632:	cf 91       	pop	r28
 634:	08 95       	ret

00000636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
 636:	81 e0       	ldi	r24, 0x01	; 1
 638:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 63c:	bd 98       	cbi	0x17, 5	; 23
 63e:	81 e0       	ldi	r24, 0x01	; 1
 640:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 644:	bd 9a       	sbi	0x17, 5	; 23
 646:	80 e0       	ldi	r24, 0x00	; 0
 648:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 64c:	bd 98       	cbi	0x17, 5	; 23
 64e:	0c 94 b1 02 	jmp	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000652 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
 652:	80 e0       	ldi	r24, 0x00	; 0
 654:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 658:	bd 9a       	sbi	0x17, 5	; 23
 65a:	81 e0       	ldi	r24, 0x01	; 1
 65c:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 660:	bd 9a       	sbi	0x17, 5	; 23
 662:	81 e0       	ldi	r24, 0x01	; 1
 664:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 668:	bd 98       	cbi	0x17, 5	; 23
 66a:	0c 94 b1 02 	jmp	0x562	; 0x562 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000066e <_GLOBAL__sub_I_i2c>:
 66e:	84 e6       	ldi	r24, 0x64	; 100
 670:	90 e0       	ldi	r25, 0x00	; 0
 672:	90 93 79 00 	sts	0x0079, r25
 676:	80 93 78 00 	sts	0x0078, r24
 67a:	bd 98       	cbi	0x17, 5	; 23
 67c:	81 e0       	ldi	r24, 0x01	; 1
 67e:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 682:	c5 98       	cbi	0x18, 5	; 24
 684:	c7 98       	cbi	0x18, 7	; 24
 686:	08 95       	ret

00000688 <_ZN5TimerC1Ev>:
 688:	ed e7       	ldi	r30, 0x7D	; 125
 68a:	f0 e0       	ldi	r31, 0x00	; 0
 68c:	11 82       	std	Z+1, r1	; 0x01
 68e:	10 82       	st	Z, r1
 690:	13 82       	std	Z+3, r1	; 0x03
 692:	12 82       	std	Z+2, r1	; 0x02
 694:	15 82       	std	Z+5, r1	; 0x05
 696:	14 82       	std	Z+4, r1	; 0x04
 698:	16 82       	std	Z+6, r1	; 0x06
 69a:	37 96       	adiw	r30, 0x07	; 7
 69c:	80 e0       	ldi	r24, 0x00	; 0
 69e:	e5 3b       	cpi	r30, 0xB5	; 181
 6a0:	f8 07       	cpc	r31, r24
 6a2:	a1 f7       	brne	.-24     	; 0x68c <_ZN5TimerC1Ev+0x4>
 6a4:	83 b7       	in	r24, 0x33	; 51
 6a6:	88 60       	ori	r24, 0x08	; 8
 6a8:	83 bf       	out	0x33, r24	; 51
 6aa:	8b e9       	ldi	r24, 0x9B	; 155
 6ac:	8c bf       	out	0x3c, r24	; 60
 6ae:	83 e0       	ldi	r24, 0x03	; 3
 6b0:	83 bf       	out	0x33, r24	; 51
 6b2:	89 b7       	in	r24, 0x39	; 57
 6b4:	82 60       	ori	r24, 0x02	; 2
 6b6:	89 bf       	out	0x39, r24	; 57
 6b8:	78 94       	sei
 6ba:	08 95       	ret

000006bc <__vector_19>:
 6bc:	1f 92       	push	r1
 6be:	0f 92       	push	r0
 6c0:	0f b6       	in	r0, 0x3f	; 63
 6c2:	0f 92       	push	r0
 6c4:	11 24       	eor	r1, r1
 6c6:	8f 93       	push	r24
 6c8:	9f 93       	push	r25
 6ca:	af 93       	push	r26
 6cc:	bf 93       	push	r27
 6ce:	ef 93       	push	r30
 6d0:	ff 93       	push	r31
 6d2:	ed e7       	ldi	r30, 0x7D	; 125
 6d4:	f0 e0       	ldi	r31, 0x00	; 0
 6d6:	a3 e8       	ldi	r26, 0x83	; 131
 6d8:	b0 e0       	ldi	r27, 0x00	; 0
 6da:	84 81       	ldd	r24, Z+4	; 0x04
 6dc:	95 81       	ldd	r25, Z+5	; 0x05
 6de:	00 97       	sbiw	r24, 0x00	; 0
 6e0:	21 f0       	breq	.+8      	; 0x6ea <__vector_19+0x2e>
 6e2:	01 97       	sbiw	r24, 0x01	; 1
 6e4:	95 83       	std	Z+5, r25	; 0x05
 6e6:	84 83       	std	Z+4, r24	; 0x04
 6e8:	09 c0       	rjmp	.+18     	; 0x6fc <__vector_19+0x40>
 6ea:	82 81       	ldd	r24, Z+2	; 0x02
 6ec:	93 81       	ldd	r25, Z+3	; 0x03
 6ee:	95 83       	std	Z+5, r25	; 0x05
 6f0:	84 83       	std	Z+4, r24	; 0x04
 6f2:	8c 91       	ld	r24, X
 6f4:	8f 3f       	cpi	r24, 0xFF	; 255
 6f6:	11 f0       	breq	.+4      	; 0x6fc <__vector_19+0x40>
 6f8:	8f 5f       	subi	r24, 0xFF	; 255
 6fa:	8c 93       	st	X, r24
 6fc:	37 96       	adiw	r30, 0x07	; 7
 6fe:	17 96       	adiw	r26, 0x07	; 7
 700:	80 e0       	ldi	r24, 0x00	; 0
 702:	e5 3b       	cpi	r30, 0xB5	; 181
 704:	f8 07       	cpc	r31, r24
 706:	49 f7       	brne	.-46     	; 0x6da <__vector_19+0x1e>
 708:	80 91 b5 00 	lds	r24, 0x00B5
 70c:	90 91 b6 00 	lds	r25, 0x00B6
 710:	a0 91 b7 00 	lds	r26, 0x00B7
 714:	b0 91 b8 00 	lds	r27, 0x00B8
 718:	01 96       	adiw	r24, 0x01	; 1
 71a:	a1 1d       	adc	r26, r1
 71c:	b1 1d       	adc	r27, r1
 71e:	80 93 b5 00 	sts	0x00B5, r24
 722:	90 93 b6 00 	sts	0x00B6, r25
 726:	a0 93 b7 00 	sts	0x00B7, r26
 72a:	b0 93 b8 00 	sts	0x00B8, r27
 72e:	ff 91       	pop	r31
 730:	ef 91       	pop	r30
 732:	bf 91       	pop	r27
 734:	af 91       	pop	r26
 736:	9f 91       	pop	r25
 738:	8f 91       	pop	r24
 73a:	0f 90       	pop	r0
 73c:	0f be       	out	0x3f, r0	; 63
 73e:	0f 90       	pop	r0
 740:	1f 90       	pop	r1
 742:	18 95       	reti

00000744 <_GLOBAL__sub_I_g_rt_time>:
 744:	8c e7       	ldi	r24, 0x7C	; 124
 746:	90 e0       	ldi	r25, 0x00	; 0
 748:	0c 94 44 03 	jmp	0x688	; 0x688 <_ZN5TimerC1Ev>

0000074c <_GLOBAL__sub_I_terminal>:
 74c:	89 eb       	ldi	r24, 0xB9	; 185
 74e:	90 e0       	ldi	r25, 0x00	; 0
 750:	0c 94 ad 00 	jmp	0x15a	; 0x15a <_ZN5USARTC1Ev>

00000754 <_GLOBAL__sub_D_terminal>:
 754:	89 eb       	ldi	r24, 0xB9	; 185
 756:	90 e0       	ldi	r25, 0x00	; 0
 758:	0c 94 b7 00 	jmp	0x16e	; 0x16e <_ZN5USARTD1Ev>

0000075c <__tablejump2__>:
 75c:	ee 0f       	add	r30, r30
 75e:	ff 1f       	adc	r31, r31
 760:	05 90       	lpm	r0, Z+
 762:	f4 91       	lpm	r31, Z
 764:	e0 2d       	mov	r30, r0
 766:	09 94       	ijmp

00000768 <__do_global_dtors>:
 768:	10 e0       	ldi	r17, 0x00	; 0
 76a:	cd e2       	ldi	r28, 0x2D	; 45
 76c:	d0 e0       	ldi	r29, 0x00	; 0
 76e:	04 c0       	rjmp	.+8      	; 0x778 <__do_global_dtors+0x10>
 770:	fe 01       	movw	r30, r28
 772:	0e 94 ae 03 	call	0x75c	; 0x75c <__tablejump2__>
 776:	21 96       	adiw	r28, 0x01	; 1
 778:	ce 32       	cpi	r28, 0x2E	; 46
 77a:	d1 07       	cpc	r29, r17
 77c:	c9 f7       	brne	.-14     	; 0x770 <__do_global_dtors+0x8>
 77e:	f8 94       	cli

00000780 <__stop_program>:
 780:	ff cf       	rjmp	.-2      	; 0x780 <__stop_program>
