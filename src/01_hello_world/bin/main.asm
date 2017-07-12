
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
  4c:	0c 94 32 03 	jmp	0x664	; 0x664 <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	fb 02       	muls	r31, r27
  56:	9c 03       	fmulsu	r17, r20
  58:	a0 03       	fmuls	r18, r16

0000005a <__ctors_end>:
  5a:	a4 03       	fmuls	r18, r20

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
  6e:	e6 e7       	ldi	r30, 0x76	; 118
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
  88:	a2 3c       	cpi	r26, 0xC2	; 194
  8a:	b2 07       	cpc	r27, r18
  8c:	e1 f7       	brne	.-8      	; 0x86 <.do_clear_bss_loop>

0000008e <__do_global_ctors>:
  8e:	10 e0       	ldi	r17, 0x00	; 0
  90:	cd e2       	ldi	r28, 0x2D	; 45
  92:	d0 e0       	ldi	r29, 0x00	; 0
  94:	04 c0       	rjmp	.+8      	; 0x9e <__do_global_ctors+0x10>
  96:	21 97       	sbiw	r28, 0x01	; 1
  98:	fe 01       	movw	r30, r28
  9a:	0e 94 a8 03 	call	0x750	; 0x750 <__tablejump2__>
  9e:	ca 32       	cpi	r28, 0x2A	; 42
  a0:	d1 07       	cpc	r29, r17
  a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
  a4:	0e 94 58 00 	call	0xb0	; 0xb0 <main>
  a8:	0c 94 ae 03 	jmp	0x75c	; 0x75c <__do_global_dtors>

000000ac <__bad_interrupt>:
  ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <main>:
  b0:	d6 9a       	sbi	0x1a, 6	; 26
  b2:	de 98       	cbi	0x1b, 6	; 27
  b4:	de 98       	cbi	0x1b, 6	; 27
  b6:	2f e3       	ldi	r18, 0x3F	; 63
  b8:	8d e0       	ldi	r24, 0x0D	; 13
  ba:	93 e0       	ldi	r25, 0x03	; 3
  bc:	21 50       	subi	r18, 0x01	; 1
  be:	80 40       	sbci	r24, 0x00	; 0
  c0:	90 40       	sbci	r25, 0x00	; 0
  c2:	e1 f7       	brne	.-8      	; 0xbc <main+0xc>
  c4:	00 c0       	rjmp	.+0      	; 0xc6 <main+0x16>
  c6:	00 00       	nop
  c8:	de 9a       	sbi	0x1b, 6	; 27
  ca:	2f e3       	ldi	r18, 0x3F	; 63
  cc:	87 e7       	ldi	r24, 0x77	; 119
  ce:	9b e1       	ldi	r25, 0x1B	; 27
  d0:	21 50       	subi	r18, 0x01	; 1
  d2:	80 40       	sbci	r24, 0x00	; 0
  d4:	90 40       	sbci	r25, 0x00	; 0
  d6:	e1 f7       	brne	.-8      	; 0xd0 <main+0x20>
  d8:	00 c0       	rjmp	.+0      	; 0xda <main+0x2a>
  da:	00 00       	nop
  dc:	eb cf       	rjmp	.-42     	; 0xb4 <main+0x4>

000000de <_ZN6CUSARTC1Ev>:
  de:	10 bc       	out	0x20, r1	; 32
  e0:	80 e4       	ldi	r24, 0x40	; 64
  e2:	89 b9       	out	0x09, r24	; 9
  e4:	80 b5       	in	r24, 0x20	; 32
  e6:	86 68       	ori	r24, 0x86	; 134
  e8:	80 bd       	out	0x20, r24	; 32
  ea:	8a b1       	in	r24, 0x0a	; 10
  ec:	88 61       	ori	r24, 0x18	; 24
  ee:	8a b9       	out	0x0a, r24	; 10
  f0:	08 95       	ret

000000f2 <_ZN6CUSARTD1Ev>:
  f2:	08 95       	ret

000000f4 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
  f4:	0f 93       	push	r16
  f6:	1f 93       	push	r17
  f8:	cf 93       	push	r28
  fa:	df 93       	push	r29
  fc:	00 d0       	rcall	.+0      	; 0xfe <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
  fe:	1f 92       	push	r1
 100:	cd b7       	in	r28, 0x3d	; 61
 102:	de b7       	in	r29, 0x3e	; 62
 104:	8c 01       	movw	r16, r24
 106:	dc 01       	movw	r26, r24
 108:	ed 91       	ld	r30, X+
 10a:	fc 91       	ld	r31, X
 10c:	01 90       	ld	r0, Z+
 10e:	f0 81       	ld	r31, Z
 110:	e0 2d       	mov	r30, r0
 112:	2b 83       	std	Y+3, r18	; 0x03
 114:	4a 83       	std	Y+2, r20	; 0x02
 116:	69 83       	std	Y+1, r22	; 0x01
 118:	09 95       	icall
 11a:	d8 01       	movw	r26, r16
 11c:	ed 91       	ld	r30, X+
 11e:	fc 91       	ld	r31, X
 120:	04 80       	ldd	r0, Z+4	; 0x04
 122:	f5 81       	ldd	r31, Z+5	; 0x05
 124:	e0 2d       	mov	r30, r0
 126:	69 81       	ldd	r22, Y+1	; 0x01
 128:	c8 01       	movw	r24, r16
 12a:	09 95       	icall
 12c:	d8 01       	movw	r26, r16
 12e:	ed 91       	ld	r30, X+
 130:	fc 91       	ld	r31, X
 132:	04 80       	ldd	r0, Z+4	; 0x04
 134:	f5 81       	ldd	r31, Z+5	; 0x05
 136:	e0 2d       	mov	r30, r0
 138:	4a 81       	ldd	r20, Y+2	; 0x02
 13a:	64 2f       	mov	r22, r20
 13c:	c8 01       	movw	r24, r16
 13e:	09 95       	icall
 140:	d8 01       	movw	r26, r16
 142:	ed 91       	ld	r30, X+
 144:	fc 91       	ld	r31, X
 146:	04 80       	ldd	r0, Z+4	; 0x04
 148:	f5 81       	ldd	r31, Z+5	; 0x05
 14a:	e0 2d       	mov	r30, r0
 14c:	2b 81       	ldd	r18, Y+3	; 0x03
 14e:	62 2f       	mov	r22, r18
 150:	c8 01       	movw	r24, r16
 152:	09 95       	icall
 154:	d8 01       	movw	r26, r16
 156:	ed 91       	ld	r30, X+
 158:	fc 91       	ld	r31, X
 15a:	02 80       	ldd	r0, Z+2	; 0x02
 15c:	f3 81       	ldd	r31, Z+3	; 0x03
 15e:	e0 2d       	mov	r30, r0
 160:	c8 01       	movw	r24, r16
 162:	0f 90       	pop	r0
 164:	0f 90       	pop	r0
 166:	0f 90       	pop	r0
 168:	df 91       	pop	r29
 16a:	cf 91       	pop	r28
 16c:	1f 91       	pop	r17
 16e:	0f 91       	pop	r16
 170:	09 94       	ijmp

00000172 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
 172:	0f 93       	push	r16
 174:	1f 93       	push	r17
 176:	cf 93       	push	r28
 178:	df 93       	push	r29
 17a:	00 d0       	rcall	.+0      	; 0x17c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
 17c:	00 d0       	rcall	.+0      	; 0x17e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
 17e:	cd b7       	in	r28, 0x3d	; 61
 180:	de b7       	in	r29, 0x3e	; 62
 182:	8c 01       	movw	r16, r24
 184:	dc 01       	movw	r26, r24
 186:	ed 91       	ld	r30, X+
 188:	fc 91       	ld	r31, X
 18a:	01 90       	ld	r0, Z+
 18c:	f0 81       	ld	r31, Z
 18e:	e0 2d       	mov	r30, r0
 190:	2c 83       	std	Y+4, r18	; 0x04
 192:	3b 83       	std	Y+3, r19	; 0x03
 194:	4a 83       	std	Y+2, r20	; 0x02
 196:	69 83       	std	Y+1, r22	; 0x01
 198:	09 95       	icall
 19a:	d8 01       	movw	r26, r16
 19c:	ed 91       	ld	r30, X+
 19e:	fc 91       	ld	r31, X
 1a0:	04 80       	ldd	r0, Z+4	; 0x04
 1a2:	f5 81       	ldd	r31, Z+5	; 0x05
 1a4:	e0 2d       	mov	r30, r0
 1a6:	69 81       	ldd	r22, Y+1	; 0x01
 1a8:	c8 01       	movw	r24, r16
 1aa:	09 95       	icall
 1ac:	d8 01       	movw	r26, r16
 1ae:	ed 91       	ld	r30, X+
 1b0:	fc 91       	ld	r31, X
 1b2:	04 80       	ldd	r0, Z+4	; 0x04
 1b4:	f5 81       	ldd	r31, Z+5	; 0x05
 1b6:	e0 2d       	mov	r30, r0
 1b8:	4a 81       	ldd	r20, Y+2	; 0x02
 1ba:	64 2f       	mov	r22, r20
 1bc:	c8 01       	movw	r24, r16
 1be:	09 95       	icall
 1c0:	d8 01       	movw	r26, r16
 1c2:	ed 91       	ld	r30, X+
 1c4:	fc 91       	ld	r31, X
 1c6:	04 80       	ldd	r0, Z+4	; 0x04
 1c8:	f5 81       	ldd	r31, Z+5	; 0x05
 1ca:	e0 2d       	mov	r30, r0
 1cc:	3b 81       	ldd	r19, Y+3	; 0x03
 1ce:	63 2f       	mov	r22, r19
 1d0:	c8 01       	movw	r24, r16
 1d2:	09 95       	icall
 1d4:	d8 01       	movw	r26, r16
 1d6:	ed 91       	ld	r30, X+
 1d8:	fc 91       	ld	r31, X
 1da:	04 80       	ldd	r0, Z+4	; 0x04
 1dc:	f5 81       	ldd	r31, Z+5	; 0x05
 1de:	e0 2d       	mov	r30, r0
 1e0:	2c 81       	ldd	r18, Y+4	; 0x04
 1e2:	62 2f       	mov	r22, r18
 1e4:	c8 01       	movw	r24, r16
 1e6:	09 95       	icall
 1e8:	d8 01       	movw	r26, r16
 1ea:	ed 91       	ld	r30, X+
 1ec:	fc 91       	ld	r31, X
 1ee:	02 80       	ldd	r0, Z+2	; 0x02
 1f0:	f3 81       	ldd	r31, Z+3	; 0x03
 1f2:	e0 2d       	mov	r30, r0
 1f4:	c8 01       	movw	r24, r16
 1f6:	0f 90       	pop	r0
 1f8:	0f 90       	pop	r0
 1fa:	0f 90       	pop	r0
 1fc:	0f 90       	pop	r0
 1fe:	df 91       	pop	r29
 200:	cf 91       	pop	r28
 202:	1f 91       	pop	r17
 204:	0f 91       	pop	r16
 206:	09 94       	ijmp

00000208 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
 208:	cf 92       	push	r12
 20a:	df 92       	push	r13
 20c:	ef 92       	push	r14
 20e:	ff 92       	push	r15
 210:	0f 93       	push	r16
 212:	1f 93       	push	r17
 214:	cf 93       	push	r28
 216:	df 93       	push	r29
 218:	00 d0       	rcall	.+0      	; 0x21a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
 21a:	00 d0       	rcall	.+0      	; 0x21c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
 21c:	cd b7       	in	r28, 0x3d	; 61
 21e:	de b7       	in	r29, 0x3e	; 62
 220:	6c 01       	movw	r12, r24
 222:	dc 01       	movw	r26, r24
 224:	ed 91       	ld	r30, X+
 226:	fc 91       	ld	r31, X
 228:	01 90       	ld	r0, Z+
 22a:	f0 81       	ld	r31, Z
 22c:	e0 2d       	mov	r30, r0
 22e:	2b 83       	std	Y+3, r18	; 0x03
 230:	3c 83       	std	Y+4, r19	; 0x04
 232:	4a 83       	std	Y+2, r20	; 0x02
 234:	69 83       	std	Y+1, r22	; 0x01
 236:	09 95       	icall
 238:	d6 01       	movw	r26, r12
 23a:	ed 91       	ld	r30, X+
 23c:	fc 91       	ld	r31, X
 23e:	04 80       	ldd	r0, Z+4	; 0x04
 240:	f5 81       	ldd	r31, Z+5	; 0x05
 242:	e0 2d       	mov	r30, r0
 244:	69 81       	ldd	r22, Y+1	; 0x01
 246:	c6 01       	movw	r24, r12
 248:	09 95       	icall
 24a:	d6 01       	movw	r26, r12
 24c:	ed 91       	ld	r30, X+
 24e:	fc 91       	ld	r31, X
 250:	04 80       	ldd	r0, Z+4	; 0x04
 252:	f5 81       	ldd	r31, Z+5	; 0x05
 254:	e0 2d       	mov	r30, r0
 256:	4a 81       	ldd	r20, Y+2	; 0x02
 258:	64 2f       	mov	r22, r20
 25a:	c6 01       	movw	r24, r12
 25c:	09 95       	icall
 25e:	2b 81       	ldd	r18, Y+3	; 0x03
 260:	e2 2e       	mov	r14, r18
 262:	3c 81       	ldd	r19, Y+4	; 0x04
 264:	f3 2e       	mov	r15, r19
 266:	0e 0d       	add	r16, r14
 268:	1f 1d       	adc	r17, r15
 26a:	d6 01       	movw	r26, r12
 26c:	ed 91       	ld	r30, X+
 26e:	fc 91       	ld	r31, X
 270:	e0 16       	cp	r14, r16
 272:	f1 06       	cpc	r15, r17
 274:	49 f0       	breq	.+18     	; 0x288 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
 276:	d7 01       	movw	r26, r14
 278:	6d 91       	ld	r22, X+
 27a:	7d 01       	movw	r14, r26
 27c:	04 80       	ldd	r0, Z+4	; 0x04
 27e:	f5 81       	ldd	r31, Z+5	; 0x05
 280:	e0 2d       	mov	r30, r0
 282:	c6 01       	movw	r24, r12
 284:	09 95       	icall
 286:	f1 cf       	rjmp	.-30     	; 0x26a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
 288:	02 80       	ldd	r0, Z+2	; 0x02
 28a:	f3 81       	ldd	r31, Z+3	; 0x03
 28c:	e0 2d       	mov	r30, r0
 28e:	c6 01       	movw	r24, r12
 290:	0f 90       	pop	r0
 292:	0f 90       	pop	r0
 294:	0f 90       	pop	r0
 296:	0f 90       	pop	r0
 298:	df 91       	pop	r29
 29a:	cf 91       	pop	r28
 29c:	1f 91       	pop	r17
 29e:	0f 91       	pop	r16
 2a0:	ff 90       	pop	r15
 2a2:	ef 90       	pop	r14
 2a4:	df 90       	pop	r13
 2a6:	cf 90       	pop	r12
 2a8:	09 94       	ijmp

000002aa <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
 2aa:	ef 92       	push	r14
 2ac:	ff 92       	push	r15
 2ae:	1f 93       	push	r17
 2b0:	cf 93       	push	r28
 2b2:	df 93       	push	r29
 2b4:	1f 92       	push	r1
 2b6:	cd b7       	in	r28, 0x3d	; 61
 2b8:	de b7       	in	r29, 0x3e	; 62
 2ba:	7c 01       	movw	r14, r24
 2bc:	16 2f       	mov	r17, r22
 2be:	dc 01       	movw	r26, r24
 2c0:	ed 91       	ld	r30, X+
 2c2:	fc 91       	ld	r31, X
 2c4:	01 90       	ld	r0, Z+
 2c6:	f0 81       	ld	r31, Z
 2c8:	e0 2d       	mov	r30, r0
 2ca:	49 83       	std	Y+1, r20	; 0x01
 2cc:	09 95       	icall
 2ce:	d7 01       	movw	r26, r14
 2d0:	ed 91       	ld	r30, X+
 2d2:	fc 91       	ld	r31, X
 2d4:	04 80       	ldd	r0, Z+4	; 0x04
 2d6:	f5 81       	ldd	r31, Z+5	; 0x05
 2d8:	e0 2d       	mov	r30, r0
 2da:	61 2f       	mov	r22, r17
 2dc:	c7 01       	movw	r24, r14
 2de:	09 95       	icall
 2e0:	d7 01       	movw	r26, r14
 2e2:	ed 91       	ld	r30, X+
 2e4:	fc 91       	ld	r31, X
 2e6:	04 80       	ldd	r0, Z+4	; 0x04
 2e8:	f5 81       	ldd	r31, Z+5	; 0x05
 2ea:	e0 2d       	mov	r30, r0
 2ec:	49 81       	ldd	r20, Y+1	; 0x01
 2ee:	64 2f       	mov	r22, r20
 2f0:	c7 01       	movw	r24, r14
 2f2:	09 95       	icall
 2f4:	d7 01       	movw	r26, r14
 2f6:	ed 91       	ld	r30, X+
 2f8:	fc 91       	ld	r31, X
 2fa:	01 90       	ld	r0, Z+
 2fc:	f0 81       	ld	r31, Z
 2fe:	e0 2d       	mov	r30, r0
 300:	c7 01       	movw	r24, r14
 302:	09 95       	icall
 304:	d7 01       	movw	r26, r14
 306:	ed 91       	ld	r30, X+
 308:	fc 91       	ld	r31, X
 30a:	61 2f       	mov	r22, r17
 30c:	61 60       	ori	r22, 0x01	; 1
 30e:	04 80       	ldd	r0, Z+4	; 0x04
 310:	f5 81       	ldd	r31, Z+5	; 0x05
 312:	e0 2d       	mov	r30, r0
 314:	c7 01       	movw	r24, r14
 316:	09 95       	icall
 318:	d7 01       	movw	r26, r14
 31a:	ed 91       	ld	r30, X+
 31c:	fc 91       	ld	r31, X
 31e:	06 80       	ldd	r0, Z+6	; 0x06
 320:	f7 81       	ldd	r31, Z+7	; 0x07
 322:	e0 2d       	mov	r30, r0
 324:	60 e0       	ldi	r22, 0x00	; 0
 326:	c7 01       	movw	r24, r14
 328:	09 95       	icall
 32a:	18 2f       	mov	r17, r24
 32c:	d7 01       	movw	r26, r14
 32e:	ed 91       	ld	r30, X+
 330:	fc 91       	ld	r31, X
 332:	02 80       	ldd	r0, Z+2	; 0x02
 334:	f3 81       	ldd	r31, Z+3	; 0x03
 336:	e0 2d       	mov	r30, r0
 338:	c7 01       	movw	r24, r14
 33a:	09 95       	icall
 33c:	81 2f       	mov	r24, r17
 33e:	0f 90       	pop	r0
 340:	df 91       	pop	r29
 342:	cf 91       	pop	r28
 344:	1f 91       	pop	r17
 346:	ff 90       	pop	r15
 348:	ef 90       	pop	r14
 34a:	08 95       	ret

0000034c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
 34c:	ef 92       	push	r14
 34e:	ff 92       	push	r15
 350:	0f 93       	push	r16
 352:	1f 93       	push	r17
 354:	cf 93       	push	r28
 356:	df 93       	push	r29
 358:	1f 92       	push	r1
 35a:	cd b7       	in	r28, 0x3d	; 61
 35c:	de b7       	in	r29, 0x3e	; 62
 35e:	7c 01       	movw	r14, r24
 360:	16 2f       	mov	r17, r22
 362:	dc 01       	movw	r26, r24
 364:	ed 91       	ld	r30, X+
 366:	fc 91       	ld	r31, X
 368:	01 90       	ld	r0, Z+
 36a:	f0 81       	ld	r31, Z
 36c:	e0 2d       	mov	r30, r0
 36e:	49 83       	std	Y+1, r20	; 0x01
 370:	09 95       	icall
 372:	d7 01       	movw	r26, r14
 374:	ed 91       	ld	r30, X+
 376:	fc 91       	ld	r31, X
 378:	04 80       	ldd	r0, Z+4	; 0x04
 37a:	f5 81       	ldd	r31, Z+5	; 0x05
 37c:	e0 2d       	mov	r30, r0
 37e:	61 2f       	mov	r22, r17
 380:	c7 01       	movw	r24, r14
 382:	09 95       	icall
 384:	d7 01       	movw	r26, r14
 386:	ed 91       	ld	r30, X+
 388:	fc 91       	ld	r31, X
 38a:	04 80       	ldd	r0, Z+4	; 0x04
 38c:	f5 81       	ldd	r31, Z+5	; 0x05
 38e:	e0 2d       	mov	r30, r0
 390:	49 81       	ldd	r20, Y+1	; 0x01
 392:	64 2f       	mov	r22, r20
 394:	c7 01       	movw	r24, r14
 396:	09 95       	icall
 398:	d7 01       	movw	r26, r14
 39a:	ed 91       	ld	r30, X+
 39c:	fc 91       	ld	r31, X
 39e:	01 90       	ld	r0, Z+
 3a0:	f0 81       	ld	r31, Z
 3a2:	e0 2d       	mov	r30, r0
 3a4:	c7 01       	movw	r24, r14
 3a6:	09 95       	icall
 3a8:	d7 01       	movw	r26, r14
 3aa:	ed 91       	ld	r30, X+
 3ac:	fc 91       	ld	r31, X
 3ae:	61 2f       	mov	r22, r17
 3b0:	61 60       	ori	r22, 0x01	; 1
 3b2:	04 80       	ldd	r0, Z+4	; 0x04
 3b4:	f5 81       	ldd	r31, Z+5	; 0x05
 3b6:	e0 2d       	mov	r30, r0
 3b8:	c7 01       	movw	r24, r14
 3ba:	09 95       	icall
 3bc:	d7 01       	movw	r26, r14
 3be:	ed 91       	ld	r30, X+
 3c0:	fc 91       	ld	r31, X
 3c2:	06 80       	ldd	r0, Z+6	; 0x06
 3c4:	f7 81       	ldd	r31, Z+7	; 0x07
 3c6:	e0 2d       	mov	r30, r0
 3c8:	61 e0       	ldi	r22, 0x01	; 1
 3ca:	c7 01       	movw	r24, r14
 3cc:	09 95       	icall
 3ce:	08 2f       	mov	r16, r24
 3d0:	10 e0       	ldi	r17, 0x00	; 0
 3d2:	10 2f       	mov	r17, r16
 3d4:	00 27       	eor	r16, r16
 3d6:	d7 01       	movw	r26, r14
 3d8:	ed 91       	ld	r30, X+
 3da:	fc 91       	ld	r31, X
 3dc:	06 80       	ldd	r0, Z+6	; 0x06
 3de:	f7 81       	ldd	r31, Z+7	; 0x07
 3e0:	e0 2d       	mov	r30, r0
 3e2:	60 e0       	ldi	r22, 0x00	; 0
 3e4:	c7 01       	movw	r24, r14
 3e6:	09 95       	icall
 3e8:	08 2b       	or	r16, r24
 3ea:	d7 01       	movw	r26, r14
 3ec:	ed 91       	ld	r30, X+
 3ee:	fc 91       	ld	r31, X
 3f0:	02 80       	ldd	r0, Z+2	; 0x02
 3f2:	f3 81       	ldd	r31, Z+3	; 0x03
 3f4:	e0 2d       	mov	r30, r0
 3f6:	c7 01       	movw	r24, r14
 3f8:	09 95       	icall
 3fa:	c8 01       	movw	r24, r16
 3fc:	0f 90       	pop	r0
 3fe:	df 91       	pop	r29
 400:	cf 91       	pop	r28
 402:	1f 91       	pop	r17
 404:	0f 91       	pop	r16
 406:	ff 90       	pop	r15
 408:	ef 90       	pop	r14
 40a:	08 95       	ret

0000040c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
 40c:	cf 92       	push	r12
 40e:	df 92       	push	r13
 410:	ef 92       	push	r14
 412:	ff 92       	push	r15
 414:	0f 93       	push	r16
 416:	1f 93       	push	r17
 418:	cf 93       	push	r28
 41a:	df 93       	push	r29
 41c:	00 d0       	rcall	.+0      	; 0x41e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
 41e:	1f 92       	push	r1
 420:	cd b7       	in	r28, 0x3d	; 61
 422:	de b7       	in	r29, 0x3e	; 62
 424:	6c 01       	movw	r12, r24
 426:	f6 2e       	mov	r15, r22
 428:	dc 01       	movw	r26, r24
 42a:	ed 91       	ld	r30, X+
 42c:	fc 91       	ld	r31, X
 42e:	01 90       	ld	r0, Z+
 430:	f0 81       	ld	r31, Z
 432:	e0 2d       	mov	r30, r0
 434:	2a 83       	std	Y+2, r18	; 0x02
 436:	3b 83       	std	Y+3, r19	; 0x03
 438:	49 83       	std	Y+1, r20	; 0x01
 43a:	09 95       	icall
 43c:	d6 01       	movw	r26, r12
 43e:	ed 91       	ld	r30, X+
 440:	fc 91       	ld	r31, X
 442:	04 80       	ldd	r0, Z+4	; 0x04
 444:	f5 81       	ldd	r31, Z+5	; 0x05
 446:	e0 2d       	mov	r30, r0
 448:	6f 2d       	mov	r22, r15
 44a:	c6 01       	movw	r24, r12
 44c:	09 95       	icall
 44e:	d6 01       	movw	r26, r12
 450:	ed 91       	ld	r30, X+
 452:	fc 91       	ld	r31, X
 454:	04 80       	ldd	r0, Z+4	; 0x04
 456:	f5 81       	ldd	r31, Z+5	; 0x05
 458:	e0 2d       	mov	r30, r0
 45a:	49 81       	ldd	r20, Y+1	; 0x01
 45c:	64 2f       	mov	r22, r20
 45e:	c6 01       	movw	r24, r12
 460:	09 95       	icall
 462:	d6 01       	movw	r26, r12
 464:	ed 91       	ld	r30, X+
 466:	fc 91       	ld	r31, X
 468:	01 90       	ld	r0, Z+
 46a:	f0 81       	ld	r31, Z
 46c:	e0 2d       	mov	r30, r0
 46e:	c6 01       	movw	r24, r12
 470:	09 95       	icall
 472:	d6 01       	movw	r26, r12
 474:	ed 91       	ld	r30, X+
 476:	fc 91       	ld	r31, X
 478:	6f 2d       	mov	r22, r15
 47a:	61 60       	ori	r22, 0x01	; 1
 47c:	04 80       	ldd	r0, Z+4	; 0x04
 47e:	f5 81       	ldd	r31, Z+5	; 0x05
 480:	e0 2d       	mov	r30, r0
 482:	c6 01       	movw	r24, r12
 484:	09 95       	icall
 486:	2a 81       	ldd	r18, Y+2	; 0x02
 488:	e2 2e       	mov	r14, r18
 48a:	3b 81       	ldd	r19, Y+3	; 0x03
 48c:	f3 2e       	mov	r15, r19
 48e:	0e 0d       	add	r16, r14
 490:	1f 1d       	adc	r17, r15
 492:	d6 01       	movw	r26, r12
 494:	ed 91       	ld	r30, X+
 496:	fc 91       	ld	r31, X
 498:	e0 16       	cp	r14, r16
 49a:	f1 06       	cpc	r15, r17
 49c:	51 f0       	breq	.+20     	; 0x4b2 <__stack+0x53>
 49e:	06 80       	ldd	r0, Z+6	; 0x06
 4a0:	f7 81       	ldd	r31, Z+7	; 0x07
 4a2:	e0 2d       	mov	r30, r0
 4a4:	61 e0       	ldi	r22, 0x01	; 1
 4a6:	c6 01       	movw	r24, r12
 4a8:	09 95       	icall
 4aa:	f7 01       	movw	r30, r14
 4ac:	81 93       	st	Z+, r24
 4ae:	7f 01       	movw	r14, r30
 4b0:	f0 cf       	rjmp	.-32     	; 0x492 <__stack+0x33>
 4b2:	02 80       	ldd	r0, Z+2	; 0x02
 4b4:	f3 81       	ldd	r31, Z+3	; 0x03
 4b6:	e0 2d       	mov	r30, r0
 4b8:	c6 01       	movw	r24, r12
 4ba:	0f 90       	pop	r0
 4bc:	0f 90       	pop	r0
 4be:	0f 90       	pop	r0
 4c0:	df 91       	pop	r29
 4c2:	cf 91       	pop	r28
 4c4:	1f 91       	pop	r17
 4c6:	0f 91       	pop	r16
 4c8:	ff 90       	pop	r15
 4ca:	ef 90       	pop	r14
 4cc:	df 90       	pop	r13
 4ce:	cf 90       	pop	r12
 4d0:	09 94       	ijmp

000004d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 4d2:	88 23       	and	r24, r24
 4d4:	21 f0       	breq	.+8      	; 0x4de <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 4d6:	bf 98       	cbi	0x17, 7	; 23
 4d8:	82 30       	cpi	r24, 0x02	; 2
 4da:	19 f0       	breq	.+6      	; 0x4e2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 4dc:	08 95       	ret
 4de:	bf 9a       	sbi	0x17, 7	; 23
 4e0:	08 95       	ret
 4e2:	c7 9a       	sbi	0x18, 7	; 24
 4e4:	08 95       	ret

000004e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
 4e6:	8a e0       	ldi	r24, 0x0A	; 10
 4e8:	00 00       	nop
 4ea:	81 50       	subi	r24, 0x01	; 1
 4ec:	e9 f7       	brne	.-6      	; 0x4e8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
 4ee:	08 95       	ret

000004f0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
 4f0:	1f 93       	push	r17
 4f2:	cf 93       	push	r28
 4f4:	df 93       	push	r29
 4f6:	16 2f       	mov	r17, r22
 4f8:	bd 98       	cbi	0x17, 5	; 23
 4fa:	80 e0       	ldi	r24, 0x00	; 0
 4fc:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 500:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 504:	d8 e0       	ldi	r29, 0x08	; 8
 506:	c0 e0       	ldi	r28, 0x00	; 0
 508:	cc 0f       	add	r28, r28
 50a:	81 e0       	ldi	r24, 0x01	; 1
 50c:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 510:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 514:	b5 99       	sbic	0x16, 5	; 22
 516:	c1 60       	ori	r28, 0x01	; 1
 518:	80 e0       	ldi	r24, 0x00	; 0
 51a:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 51e:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 522:	d1 50       	subi	r29, 0x01	; 1
 524:	89 f7       	brne	.-30     	; 0x508 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
 526:	11 23       	and	r17, r17
 528:	11 f0       	breq	.+4      	; 0x52e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
 52a:	bd 9a       	sbi	0x17, 5	; 23
 52c:	01 c0       	rjmp	.+2      	; 0x530 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
 52e:	bd 98       	cbi	0x17, 5	; 23
 530:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 534:	81 e0       	ldi	r24, 0x01	; 1
 536:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 53a:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 53e:	80 e0       	ldi	r24, 0x00	; 0
 540:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 544:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 548:	bd 98       	cbi	0x17, 5	; 23
 54a:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 54e:	8c 2f       	mov	r24, r28
 550:	df 91       	pop	r29
 552:	cf 91       	pop	r28
 554:	1f 91       	pop	r17
 556:	08 95       	ret

00000558 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
 558:	cf 93       	push	r28
 55a:	df 93       	push	r29
 55c:	d6 2f       	mov	r29, r22
 55e:	c8 e0       	ldi	r28, 0x08	; 8
 560:	80 e0       	ldi	r24, 0x00	; 0
 562:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 566:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 56a:	d7 ff       	sbrs	r29, 7
 56c:	02 c0       	rjmp	.+4      	; 0x572 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
 56e:	bd 98       	cbi	0x17, 5	; 23
 570:	01 c0       	rjmp	.+2      	; 0x574 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
 572:	bd 9a       	sbi	0x17, 5	; 23
 574:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 578:	81 e0       	ldi	r24, 0x01	; 1
 57a:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 57e:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 582:	dd 0f       	add	r29, r29
 584:	c1 50       	subi	r28, 0x01	; 1
 586:	61 f7       	brne	.-40     	; 0x560 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
 588:	80 e0       	ldi	r24, 0x00	; 0
 58a:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 58e:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 592:	bd 98       	cbi	0x17, 5	; 23
 594:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 598:	81 e0       	ldi	r24, 0x01	; 1
 59a:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 59e:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5a2:	c6 b3       	in	r28, 0x16	; 22
 5a4:	80 e0       	ldi	r24, 0x00	; 0
 5a6:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5aa:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5ae:	c5 fb       	bst	r28, 5
 5b0:	cc 27       	eor	r28, r28
 5b2:	c0 f9       	bld	r28, 0
 5b4:	81 e0       	ldi	r24, 0x01	; 1
 5b6:	8c 27       	eor	r24, r28
 5b8:	df 91       	pop	r29
 5ba:	cf 91       	pop	r28
 5bc:	08 95       	ret

000005be <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
 5be:	81 e0       	ldi	r24, 0x01	; 1
 5c0:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5c4:	bd 98       	cbi	0x17, 5	; 23
 5c6:	81 e0       	ldi	r24, 0x01	; 1
 5c8:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5cc:	bd 9a       	sbi	0x17, 5	; 23
 5ce:	80 e0       	ldi	r24, 0x00	; 0
 5d0:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5d4:	bd 98       	cbi	0x17, 5	; 23
 5d6:	0c 94 73 02 	jmp	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

000005da <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
 5da:	80 e0       	ldi	r24, 0x00	; 0
 5dc:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5e0:	bd 9a       	sbi	0x17, 5	; 23
 5e2:	81 e0       	ldi	r24, 0x01	; 1
 5e4:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5e8:	bd 9a       	sbi	0x17, 5	; 23
 5ea:	81 e0       	ldi	r24, 0x01	; 1
 5ec:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5f0:	bd 98       	cbi	0x17, 5	; 23
 5f2:	0c 94 73 02 	jmp	0x4e6	; 0x4e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

000005f6 <_GLOBAL__sub_I_i2c>:
 5f6:	84 e6       	ldi	r24, 0x64	; 100
 5f8:	90 e0       	ldi	r25, 0x00	; 0
 5fa:	90 93 79 00 	sts	0x0079, r25
 5fe:	80 93 78 00 	sts	0x0078, r24
 602:	bd 98       	cbi	0x17, 5	; 23
 604:	81 e0       	ldi	r24, 0x01	; 1
 606:	0e 94 69 02 	call	0x4d2	; 0x4d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 60a:	c5 98       	cbi	0x18, 5	; 24
 60c:	c7 98       	cbi	0x18, 7	; 24
 60e:	08 95       	ret

00000610 <_ZN6CTimerC1Ev>:
 610:	80 e0       	ldi	r24, 0x00	; 0
 612:	90 e0       	ldi	r25, 0x00	; 0
 614:	fc 01       	movw	r30, r24
 616:	23 e0       	ldi	r18, 0x03	; 3
 618:	ee 0f       	add	r30, r30
 61a:	ff 1f       	adc	r31, r31
 61c:	2a 95       	dec	r18
 61e:	e1 f7       	brne	.-8      	; 0x618 <_ZN6CTimerC1Ev+0x8>
 620:	e4 58       	subi	r30, 0x84	; 132
 622:	ff 4f       	sbci	r31, 0xFF	; 255
 624:	11 82       	std	Z+1, r1	; 0x01
 626:	10 82       	st	Z, r1
 628:	13 82       	std	Z+3, r1	; 0x03
 62a:	12 82       	std	Z+2, r1	; 0x02
 62c:	15 82       	std	Z+5, r1	; 0x05
 62e:	14 82       	std	Z+4, r1	; 0x04
 630:	16 82       	std	Z+6, r1	; 0x06
 632:	17 82       	std	Z+7, r1	; 0x07
 634:	01 96       	adiw	r24, 0x01	; 1
 636:	88 30       	cpi	r24, 0x08	; 8
 638:	91 05       	cpc	r25, r1
 63a:	61 f7       	brne	.-40     	; 0x614 <_ZN6CTimerC1Ev+0x4>
 63c:	10 92 bc 00 	sts	0x00BC, r1
 640:	10 92 bd 00 	sts	0x00BD, r1
 644:	10 92 be 00 	sts	0x00BE, r1
 648:	10 92 bf 00 	sts	0x00BF, r1
 64c:	83 b7       	in	r24, 0x33	; 51
 64e:	88 60       	ori	r24, 0x08	; 8
 650:	83 bf       	out	0x33, r24	; 51
 652:	8b e9       	ldi	r24, 0x9B	; 155
 654:	8c bf       	out	0x3c, r24	; 60
 656:	83 e0       	ldi	r24, 0x03	; 3
 658:	83 bf       	out	0x33, r24	; 51
 65a:	89 b7       	in	r24, 0x39	; 57
 65c:	82 60       	ori	r24, 0x02	; 2
 65e:	89 bf       	out	0x39, r24	; 57
 660:	78 94       	sei
 662:	08 95       	ret

00000664 <__vector_19>:
 664:	1f 92       	push	r1
 666:	0f 92       	push	r0
 668:	0f b6       	in	r0, 0x3f	; 63
 66a:	0f 92       	push	r0
 66c:	11 24       	eor	r1, r1
 66e:	2f 93       	push	r18
 670:	3f 93       	push	r19
 672:	4f 93       	push	r20
 674:	5f 93       	push	r21
 676:	6f 93       	push	r22
 678:	7f 93       	push	r23
 67a:	8f 93       	push	r24
 67c:	9f 93       	push	r25
 67e:	af 93       	push	r26
 680:	bf 93       	push	r27
 682:	cf 93       	push	r28
 684:	df 93       	push	r29
 686:	ef 93       	push	r30
 688:	ff 93       	push	r31
 68a:	c0 e0       	ldi	r28, 0x00	; 0
 68c:	d0 e0       	ldi	r29, 0x00	; 0
 68e:	ce 01       	movw	r24, r28
 690:	23 e0       	ldi	r18, 0x03	; 3
 692:	88 0f       	add	r24, r24
 694:	99 1f       	adc	r25, r25
 696:	2a 95       	dec	r18
 698:	e1 f7       	brne	.-8      	; 0x692 <__vector_19+0x2e>
 69a:	fc 01       	movw	r30, r24
 69c:	e4 58       	subi	r30, 0x84	; 132
 69e:	ff 4f       	sbci	r31, 0xFF	; 255
 6a0:	24 81       	ldd	r18, Z+4	; 0x04
 6a2:	35 81       	ldd	r19, Z+5	; 0x05
 6a4:	23 2b       	or	r18, r19
 6a6:	31 f0       	breq	.+12     	; 0x6b4 <__vector_19+0x50>
 6a8:	84 81       	ldd	r24, Z+4	; 0x04
 6aa:	95 81       	ldd	r25, Z+5	; 0x05
 6ac:	01 97       	sbiw	r24, 0x01	; 1
 6ae:	95 83       	std	Z+5, r25	; 0x05
 6b0:	84 83       	std	Z+4, r24	; 0x04
 6b2:	18 c0       	rjmp	.+48     	; 0x6e4 <__vector_19+0x80>
 6b4:	22 81       	ldd	r18, Z+2	; 0x02
 6b6:	33 81       	ldd	r19, Z+3	; 0x03
 6b8:	35 83       	std	Z+5, r19	; 0x05
 6ba:	24 83       	std	Z+4, r18	; 0x04
 6bc:	26 81       	ldd	r18, Z+6	; 0x06
 6be:	2f 3f       	cpi	r18, 0xFF	; 255
 6c0:	19 f0       	breq	.+6      	; 0x6c8 <__vector_19+0x64>
 6c2:	26 81       	ldd	r18, Z+6	; 0x06
 6c4:	2f 5f       	subi	r18, 0xFF	; 255
 6c6:	26 83       	std	Z+6, r18	; 0x06
 6c8:	fc 01       	movw	r30, r24
 6ca:	e4 58       	subi	r30, 0x84	; 132
 6cc:	ff 4f       	sbci	r31, 0xFF	; 255
 6ce:	87 81       	ldd	r24, Z+7	; 0x07
 6d0:	81 11       	cpse	r24, r1
 6d2:	08 c0       	rjmp	.+16     	; 0x6e4 <__vector_19+0x80>
 6d4:	80 81       	ld	r24, Z
 6d6:	91 81       	ldd	r25, Z+1	; 0x01
 6d8:	89 2b       	or	r24, r25
 6da:	21 f0       	breq	.+8      	; 0x6e4 <__vector_19+0x80>
 6dc:	01 90       	ld	r0, Z+
 6de:	f0 81       	ld	r31, Z
 6e0:	e0 2d       	mov	r30, r0
 6e2:	09 95       	icall
 6e4:	21 96       	adiw	r28, 0x01	; 1
 6e6:	c8 30       	cpi	r28, 0x08	; 8
 6e8:	d1 05       	cpc	r29, r1
 6ea:	89 f6       	brne	.-94     	; 0x68e <__vector_19+0x2a>
 6ec:	80 91 bc 00 	lds	r24, 0x00BC
 6f0:	90 91 bd 00 	lds	r25, 0x00BD
 6f4:	a0 91 be 00 	lds	r26, 0x00BE
 6f8:	b0 91 bf 00 	lds	r27, 0x00BF
 6fc:	01 96       	adiw	r24, 0x01	; 1
 6fe:	a1 1d       	adc	r26, r1
 700:	b1 1d       	adc	r27, r1
 702:	80 93 bc 00 	sts	0x00BC, r24
 706:	90 93 bd 00 	sts	0x00BD, r25
 70a:	a0 93 be 00 	sts	0x00BE, r26
 70e:	b0 93 bf 00 	sts	0x00BF, r27
 712:	ff 91       	pop	r31
 714:	ef 91       	pop	r30
 716:	df 91       	pop	r29
 718:	cf 91       	pop	r28
 71a:	bf 91       	pop	r27
 71c:	af 91       	pop	r26
 71e:	9f 91       	pop	r25
 720:	8f 91       	pop	r24
 722:	7f 91       	pop	r23
 724:	6f 91       	pop	r22
 726:	5f 91       	pop	r21
 728:	4f 91       	pop	r20
 72a:	3f 91       	pop	r19
 72c:	2f 91       	pop	r18
 72e:	0f 90       	pop	r0
 730:	0f be       	out	0x3f, r0	; 63
 732:	0f 90       	pop	r0
 734:	1f 90       	pop	r1
 736:	18 95       	reti

00000738 <_GLOBAL__sub_I_timer>:
 738:	80 ec       	ldi	r24, 0xC0	; 192
 73a:	90 e0       	ldi	r25, 0x00	; 0
 73c:	0c 94 08 03 	jmp	0x610	; 0x610 <_ZN6CTimerC1Ev>

00000740 <_GLOBAL__sub_I_terminal>:
 740:	81 ec       	ldi	r24, 0xC1	; 193
 742:	90 e0       	ldi	r25, 0x00	; 0
 744:	0c 94 6f 00 	jmp	0xde	; 0xde <_ZN6CUSARTC1Ev>

00000748 <_GLOBAL__sub_D_terminal>:
 748:	81 ec       	ldi	r24, 0xC1	; 193
 74a:	90 e0       	ldi	r25, 0x00	; 0
 74c:	0c 94 79 00 	jmp	0xf2	; 0xf2 <_ZN6CUSARTD1Ev>

00000750 <__tablejump2__>:
 750:	ee 0f       	add	r30, r30
 752:	ff 1f       	adc	r31, r31
 754:	05 90       	lpm	r0, Z+
 756:	f4 91       	lpm	r31, Z
 758:	e0 2d       	mov	r30, r0
 75a:	09 94       	ijmp

0000075c <__do_global_dtors>:
 75c:	10 e0       	ldi	r17, 0x00	; 0
 75e:	cd e2       	ldi	r28, 0x2D	; 45
 760:	d0 e0       	ldi	r29, 0x00	; 0
 762:	04 c0       	rjmp	.+8      	; 0x76c <__do_global_dtors+0x10>
 764:	fe 01       	movw	r30, r28
 766:	0e 94 a8 03 	call	0x750	; 0x750 <__tablejump2__>
 76a:	21 96       	adiw	r28, 0x01	; 1
 76c:	ce 32       	cpi	r28, 0x2E	; 46
 76e:	d1 07       	cpc	r29, r17
 770:	c9 f7       	brne	.-14     	; 0x764 <__do_global_dtors+0x8>
 772:	f8 94       	cli

00000774 <__stop_program>:
 774:	ff cf       	rjmp	.-2      	; 0x774 <__stop_program>
