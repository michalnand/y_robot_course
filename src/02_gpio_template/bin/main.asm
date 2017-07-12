
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
  4c:	0c 94 34 03 	jmp	0x668	; 0x668 <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	fd 02       	muls	r31, r29
  56:	9e 03       	fmulsu	r17, r22
  58:	a2 03       	fmuls	r18, r18

0000005a <__ctors_end>:
  5a:	a6 03       	fmuls	r18, r22

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
  6e:	ea e7       	ldi	r30, 0x7A	; 122
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
  9a:	0e 94 aa 03 	call	0x754	; 0x754 <__tablejump2__>
  9e:	ca 32       	cpi	r28, 0x2A	; 42
  a0:	d1 07       	cpc	r29, r17
  a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
  a4:	0e 94 58 00 	call	0xb0	; 0xb0 <main>
  a8:	0c 94 b0 03 	jmp	0x760	; 0x760 <__do_global_dtors>

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

000000f8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
  f8:	0f 93       	push	r16
  fa:	1f 93       	push	r17
  fc:	cf 93       	push	r28
  fe:	df 93       	push	r29
 100:	00 d0       	rcall	.+0      	; 0x102 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
 102:	1f 92       	push	r1
 104:	cd b7       	in	r28, 0x3d	; 61
 106:	de b7       	in	r29, 0x3e	; 62
 108:	8c 01       	movw	r16, r24
 10a:	dc 01       	movw	r26, r24
 10c:	ed 91       	ld	r30, X+
 10e:	fc 91       	ld	r31, X
 110:	01 90       	ld	r0, Z+
 112:	f0 81       	ld	r31, Z
 114:	e0 2d       	mov	r30, r0
 116:	2b 83       	std	Y+3, r18	; 0x03
 118:	4a 83       	std	Y+2, r20	; 0x02
 11a:	69 83       	std	Y+1, r22	; 0x01
 11c:	09 95       	icall
 11e:	d8 01       	movw	r26, r16
 120:	ed 91       	ld	r30, X+
 122:	fc 91       	ld	r31, X
 124:	04 80       	ldd	r0, Z+4	; 0x04
 126:	f5 81       	ldd	r31, Z+5	; 0x05
 128:	e0 2d       	mov	r30, r0
 12a:	69 81       	ldd	r22, Y+1	; 0x01
 12c:	c8 01       	movw	r24, r16
 12e:	09 95       	icall
 130:	d8 01       	movw	r26, r16
 132:	ed 91       	ld	r30, X+
 134:	fc 91       	ld	r31, X
 136:	04 80       	ldd	r0, Z+4	; 0x04
 138:	f5 81       	ldd	r31, Z+5	; 0x05
 13a:	e0 2d       	mov	r30, r0
 13c:	4a 81       	ldd	r20, Y+2	; 0x02
 13e:	64 2f       	mov	r22, r20
 140:	c8 01       	movw	r24, r16
 142:	09 95       	icall
 144:	d8 01       	movw	r26, r16
 146:	ed 91       	ld	r30, X+
 148:	fc 91       	ld	r31, X
 14a:	04 80       	ldd	r0, Z+4	; 0x04
 14c:	f5 81       	ldd	r31, Z+5	; 0x05
 14e:	e0 2d       	mov	r30, r0
 150:	2b 81       	ldd	r18, Y+3	; 0x03
 152:	62 2f       	mov	r22, r18
 154:	c8 01       	movw	r24, r16
 156:	09 95       	icall
 158:	d8 01       	movw	r26, r16
 15a:	ed 91       	ld	r30, X+
 15c:	fc 91       	ld	r31, X
 15e:	02 80       	ldd	r0, Z+2	; 0x02
 160:	f3 81       	ldd	r31, Z+3	; 0x03
 162:	e0 2d       	mov	r30, r0
 164:	c8 01       	movw	r24, r16
 166:	0f 90       	pop	r0
 168:	0f 90       	pop	r0
 16a:	0f 90       	pop	r0
 16c:	df 91       	pop	r29
 16e:	cf 91       	pop	r28
 170:	1f 91       	pop	r17
 172:	0f 91       	pop	r16
 174:	09 94       	ijmp

00000176 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
 176:	0f 93       	push	r16
 178:	1f 93       	push	r17
 17a:	cf 93       	push	r28
 17c:	df 93       	push	r29
 17e:	00 d0       	rcall	.+0      	; 0x180 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
 180:	00 d0       	rcall	.+0      	; 0x182 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
 182:	cd b7       	in	r28, 0x3d	; 61
 184:	de b7       	in	r29, 0x3e	; 62
 186:	8c 01       	movw	r16, r24
 188:	dc 01       	movw	r26, r24
 18a:	ed 91       	ld	r30, X+
 18c:	fc 91       	ld	r31, X
 18e:	01 90       	ld	r0, Z+
 190:	f0 81       	ld	r31, Z
 192:	e0 2d       	mov	r30, r0
 194:	2c 83       	std	Y+4, r18	; 0x04
 196:	3b 83       	std	Y+3, r19	; 0x03
 198:	4a 83       	std	Y+2, r20	; 0x02
 19a:	69 83       	std	Y+1, r22	; 0x01
 19c:	09 95       	icall
 19e:	d8 01       	movw	r26, r16
 1a0:	ed 91       	ld	r30, X+
 1a2:	fc 91       	ld	r31, X
 1a4:	04 80       	ldd	r0, Z+4	; 0x04
 1a6:	f5 81       	ldd	r31, Z+5	; 0x05
 1a8:	e0 2d       	mov	r30, r0
 1aa:	69 81       	ldd	r22, Y+1	; 0x01
 1ac:	c8 01       	movw	r24, r16
 1ae:	09 95       	icall
 1b0:	d8 01       	movw	r26, r16
 1b2:	ed 91       	ld	r30, X+
 1b4:	fc 91       	ld	r31, X
 1b6:	04 80       	ldd	r0, Z+4	; 0x04
 1b8:	f5 81       	ldd	r31, Z+5	; 0x05
 1ba:	e0 2d       	mov	r30, r0
 1bc:	4a 81       	ldd	r20, Y+2	; 0x02
 1be:	64 2f       	mov	r22, r20
 1c0:	c8 01       	movw	r24, r16
 1c2:	09 95       	icall
 1c4:	d8 01       	movw	r26, r16
 1c6:	ed 91       	ld	r30, X+
 1c8:	fc 91       	ld	r31, X
 1ca:	04 80       	ldd	r0, Z+4	; 0x04
 1cc:	f5 81       	ldd	r31, Z+5	; 0x05
 1ce:	e0 2d       	mov	r30, r0
 1d0:	3b 81       	ldd	r19, Y+3	; 0x03
 1d2:	63 2f       	mov	r22, r19
 1d4:	c8 01       	movw	r24, r16
 1d6:	09 95       	icall
 1d8:	d8 01       	movw	r26, r16
 1da:	ed 91       	ld	r30, X+
 1dc:	fc 91       	ld	r31, X
 1de:	04 80       	ldd	r0, Z+4	; 0x04
 1e0:	f5 81       	ldd	r31, Z+5	; 0x05
 1e2:	e0 2d       	mov	r30, r0
 1e4:	2c 81       	ldd	r18, Y+4	; 0x04
 1e6:	62 2f       	mov	r22, r18
 1e8:	c8 01       	movw	r24, r16
 1ea:	09 95       	icall
 1ec:	d8 01       	movw	r26, r16
 1ee:	ed 91       	ld	r30, X+
 1f0:	fc 91       	ld	r31, X
 1f2:	02 80       	ldd	r0, Z+2	; 0x02
 1f4:	f3 81       	ldd	r31, Z+3	; 0x03
 1f6:	e0 2d       	mov	r30, r0
 1f8:	c8 01       	movw	r24, r16
 1fa:	0f 90       	pop	r0
 1fc:	0f 90       	pop	r0
 1fe:	0f 90       	pop	r0
 200:	0f 90       	pop	r0
 202:	df 91       	pop	r29
 204:	cf 91       	pop	r28
 206:	1f 91       	pop	r17
 208:	0f 91       	pop	r16
 20a:	09 94       	ijmp

0000020c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
 20c:	cf 92       	push	r12
 20e:	df 92       	push	r13
 210:	ef 92       	push	r14
 212:	ff 92       	push	r15
 214:	0f 93       	push	r16
 216:	1f 93       	push	r17
 218:	cf 93       	push	r28
 21a:	df 93       	push	r29
 21c:	00 d0       	rcall	.+0      	; 0x21e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
 21e:	00 d0       	rcall	.+0      	; 0x220 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
 220:	cd b7       	in	r28, 0x3d	; 61
 222:	de b7       	in	r29, 0x3e	; 62
 224:	6c 01       	movw	r12, r24
 226:	dc 01       	movw	r26, r24
 228:	ed 91       	ld	r30, X+
 22a:	fc 91       	ld	r31, X
 22c:	01 90       	ld	r0, Z+
 22e:	f0 81       	ld	r31, Z
 230:	e0 2d       	mov	r30, r0
 232:	2b 83       	std	Y+3, r18	; 0x03
 234:	3c 83       	std	Y+4, r19	; 0x04
 236:	4a 83       	std	Y+2, r20	; 0x02
 238:	69 83       	std	Y+1, r22	; 0x01
 23a:	09 95       	icall
 23c:	d6 01       	movw	r26, r12
 23e:	ed 91       	ld	r30, X+
 240:	fc 91       	ld	r31, X
 242:	04 80       	ldd	r0, Z+4	; 0x04
 244:	f5 81       	ldd	r31, Z+5	; 0x05
 246:	e0 2d       	mov	r30, r0
 248:	69 81       	ldd	r22, Y+1	; 0x01
 24a:	c6 01       	movw	r24, r12
 24c:	09 95       	icall
 24e:	d6 01       	movw	r26, r12
 250:	ed 91       	ld	r30, X+
 252:	fc 91       	ld	r31, X
 254:	04 80       	ldd	r0, Z+4	; 0x04
 256:	f5 81       	ldd	r31, Z+5	; 0x05
 258:	e0 2d       	mov	r30, r0
 25a:	4a 81       	ldd	r20, Y+2	; 0x02
 25c:	64 2f       	mov	r22, r20
 25e:	c6 01       	movw	r24, r12
 260:	09 95       	icall
 262:	2b 81       	ldd	r18, Y+3	; 0x03
 264:	e2 2e       	mov	r14, r18
 266:	3c 81       	ldd	r19, Y+4	; 0x04
 268:	f3 2e       	mov	r15, r19
 26a:	0e 0d       	add	r16, r14
 26c:	1f 1d       	adc	r17, r15
 26e:	d6 01       	movw	r26, r12
 270:	ed 91       	ld	r30, X+
 272:	fc 91       	ld	r31, X
 274:	e0 16       	cp	r14, r16
 276:	f1 06       	cpc	r15, r17
 278:	49 f0       	breq	.+18     	; 0x28c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
 27a:	d7 01       	movw	r26, r14
 27c:	6d 91       	ld	r22, X+
 27e:	7d 01       	movw	r14, r26
 280:	04 80       	ldd	r0, Z+4	; 0x04
 282:	f5 81       	ldd	r31, Z+5	; 0x05
 284:	e0 2d       	mov	r30, r0
 286:	c6 01       	movw	r24, r12
 288:	09 95       	icall
 28a:	f1 cf       	rjmp	.-30     	; 0x26e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
 28c:	02 80       	ldd	r0, Z+2	; 0x02
 28e:	f3 81       	ldd	r31, Z+3	; 0x03
 290:	e0 2d       	mov	r30, r0
 292:	c6 01       	movw	r24, r12
 294:	0f 90       	pop	r0
 296:	0f 90       	pop	r0
 298:	0f 90       	pop	r0
 29a:	0f 90       	pop	r0
 29c:	df 91       	pop	r29
 29e:	cf 91       	pop	r28
 2a0:	1f 91       	pop	r17
 2a2:	0f 91       	pop	r16
 2a4:	ff 90       	pop	r15
 2a6:	ef 90       	pop	r14
 2a8:	df 90       	pop	r13
 2aa:	cf 90       	pop	r12
 2ac:	09 94       	ijmp

000002ae <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
 2ae:	ef 92       	push	r14
 2b0:	ff 92       	push	r15
 2b2:	1f 93       	push	r17
 2b4:	cf 93       	push	r28
 2b6:	df 93       	push	r29
 2b8:	1f 92       	push	r1
 2ba:	cd b7       	in	r28, 0x3d	; 61
 2bc:	de b7       	in	r29, 0x3e	; 62
 2be:	7c 01       	movw	r14, r24
 2c0:	16 2f       	mov	r17, r22
 2c2:	dc 01       	movw	r26, r24
 2c4:	ed 91       	ld	r30, X+
 2c6:	fc 91       	ld	r31, X
 2c8:	01 90       	ld	r0, Z+
 2ca:	f0 81       	ld	r31, Z
 2cc:	e0 2d       	mov	r30, r0
 2ce:	49 83       	std	Y+1, r20	; 0x01
 2d0:	09 95       	icall
 2d2:	d7 01       	movw	r26, r14
 2d4:	ed 91       	ld	r30, X+
 2d6:	fc 91       	ld	r31, X
 2d8:	04 80       	ldd	r0, Z+4	; 0x04
 2da:	f5 81       	ldd	r31, Z+5	; 0x05
 2dc:	e0 2d       	mov	r30, r0
 2de:	61 2f       	mov	r22, r17
 2e0:	c7 01       	movw	r24, r14
 2e2:	09 95       	icall
 2e4:	d7 01       	movw	r26, r14
 2e6:	ed 91       	ld	r30, X+
 2e8:	fc 91       	ld	r31, X
 2ea:	04 80       	ldd	r0, Z+4	; 0x04
 2ec:	f5 81       	ldd	r31, Z+5	; 0x05
 2ee:	e0 2d       	mov	r30, r0
 2f0:	49 81       	ldd	r20, Y+1	; 0x01
 2f2:	64 2f       	mov	r22, r20
 2f4:	c7 01       	movw	r24, r14
 2f6:	09 95       	icall
 2f8:	d7 01       	movw	r26, r14
 2fa:	ed 91       	ld	r30, X+
 2fc:	fc 91       	ld	r31, X
 2fe:	01 90       	ld	r0, Z+
 300:	f0 81       	ld	r31, Z
 302:	e0 2d       	mov	r30, r0
 304:	c7 01       	movw	r24, r14
 306:	09 95       	icall
 308:	d7 01       	movw	r26, r14
 30a:	ed 91       	ld	r30, X+
 30c:	fc 91       	ld	r31, X
 30e:	61 2f       	mov	r22, r17
 310:	61 60       	ori	r22, 0x01	; 1
 312:	04 80       	ldd	r0, Z+4	; 0x04
 314:	f5 81       	ldd	r31, Z+5	; 0x05
 316:	e0 2d       	mov	r30, r0
 318:	c7 01       	movw	r24, r14
 31a:	09 95       	icall
 31c:	d7 01       	movw	r26, r14
 31e:	ed 91       	ld	r30, X+
 320:	fc 91       	ld	r31, X
 322:	06 80       	ldd	r0, Z+6	; 0x06
 324:	f7 81       	ldd	r31, Z+7	; 0x07
 326:	e0 2d       	mov	r30, r0
 328:	60 e0       	ldi	r22, 0x00	; 0
 32a:	c7 01       	movw	r24, r14
 32c:	09 95       	icall
 32e:	18 2f       	mov	r17, r24
 330:	d7 01       	movw	r26, r14
 332:	ed 91       	ld	r30, X+
 334:	fc 91       	ld	r31, X
 336:	02 80       	ldd	r0, Z+2	; 0x02
 338:	f3 81       	ldd	r31, Z+3	; 0x03
 33a:	e0 2d       	mov	r30, r0
 33c:	c7 01       	movw	r24, r14
 33e:	09 95       	icall
 340:	81 2f       	mov	r24, r17
 342:	0f 90       	pop	r0
 344:	df 91       	pop	r29
 346:	cf 91       	pop	r28
 348:	1f 91       	pop	r17
 34a:	ff 90       	pop	r15
 34c:	ef 90       	pop	r14
 34e:	08 95       	ret

00000350 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
 350:	ef 92       	push	r14
 352:	ff 92       	push	r15
 354:	0f 93       	push	r16
 356:	1f 93       	push	r17
 358:	cf 93       	push	r28
 35a:	df 93       	push	r29
 35c:	1f 92       	push	r1
 35e:	cd b7       	in	r28, 0x3d	; 61
 360:	de b7       	in	r29, 0x3e	; 62
 362:	7c 01       	movw	r14, r24
 364:	16 2f       	mov	r17, r22
 366:	dc 01       	movw	r26, r24
 368:	ed 91       	ld	r30, X+
 36a:	fc 91       	ld	r31, X
 36c:	01 90       	ld	r0, Z+
 36e:	f0 81       	ld	r31, Z
 370:	e0 2d       	mov	r30, r0
 372:	49 83       	std	Y+1, r20	; 0x01
 374:	09 95       	icall
 376:	d7 01       	movw	r26, r14
 378:	ed 91       	ld	r30, X+
 37a:	fc 91       	ld	r31, X
 37c:	04 80       	ldd	r0, Z+4	; 0x04
 37e:	f5 81       	ldd	r31, Z+5	; 0x05
 380:	e0 2d       	mov	r30, r0
 382:	61 2f       	mov	r22, r17
 384:	c7 01       	movw	r24, r14
 386:	09 95       	icall
 388:	d7 01       	movw	r26, r14
 38a:	ed 91       	ld	r30, X+
 38c:	fc 91       	ld	r31, X
 38e:	04 80       	ldd	r0, Z+4	; 0x04
 390:	f5 81       	ldd	r31, Z+5	; 0x05
 392:	e0 2d       	mov	r30, r0
 394:	49 81       	ldd	r20, Y+1	; 0x01
 396:	64 2f       	mov	r22, r20
 398:	c7 01       	movw	r24, r14
 39a:	09 95       	icall
 39c:	d7 01       	movw	r26, r14
 39e:	ed 91       	ld	r30, X+
 3a0:	fc 91       	ld	r31, X
 3a2:	01 90       	ld	r0, Z+
 3a4:	f0 81       	ld	r31, Z
 3a6:	e0 2d       	mov	r30, r0
 3a8:	c7 01       	movw	r24, r14
 3aa:	09 95       	icall
 3ac:	d7 01       	movw	r26, r14
 3ae:	ed 91       	ld	r30, X+
 3b0:	fc 91       	ld	r31, X
 3b2:	61 2f       	mov	r22, r17
 3b4:	61 60       	ori	r22, 0x01	; 1
 3b6:	04 80       	ldd	r0, Z+4	; 0x04
 3b8:	f5 81       	ldd	r31, Z+5	; 0x05
 3ba:	e0 2d       	mov	r30, r0
 3bc:	c7 01       	movw	r24, r14
 3be:	09 95       	icall
 3c0:	d7 01       	movw	r26, r14
 3c2:	ed 91       	ld	r30, X+
 3c4:	fc 91       	ld	r31, X
 3c6:	06 80       	ldd	r0, Z+6	; 0x06
 3c8:	f7 81       	ldd	r31, Z+7	; 0x07
 3ca:	e0 2d       	mov	r30, r0
 3cc:	61 e0       	ldi	r22, 0x01	; 1
 3ce:	c7 01       	movw	r24, r14
 3d0:	09 95       	icall
 3d2:	08 2f       	mov	r16, r24
 3d4:	10 e0       	ldi	r17, 0x00	; 0
 3d6:	10 2f       	mov	r17, r16
 3d8:	00 27       	eor	r16, r16
 3da:	d7 01       	movw	r26, r14
 3dc:	ed 91       	ld	r30, X+
 3de:	fc 91       	ld	r31, X
 3e0:	06 80       	ldd	r0, Z+6	; 0x06
 3e2:	f7 81       	ldd	r31, Z+7	; 0x07
 3e4:	e0 2d       	mov	r30, r0
 3e6:	60 e0       	ldi	r22, 0x00	; 0
 3e8:	c7 01       	movw	r24, r14
 3ea:	09 95       	icall
 3ec:	08 2b       	or	r16, r24
 3ee:	d7 01       	movw	r26, r14
 3f0:	ed 91       	ld	r30, X+
 3f2:	fc 91       	ld	r31, X
 3f4:	02 80       	ldd	r0, Z+2	; 0x02
 3f6:	f3 81       	ldd	r31, Z+3	; 0x03
 3f8:	e0 2d       	mov	r30, r0
 3fa:	c7 01       	movw	r24, r14
 3fc:	09 95       	icall
 3fe:	c8 01       	movw	r24, r16
 400:	0f 90       	pop	r0
 402:	df 91       	pop	r29
 404:	cf 91       	pop	r28
 406:	1f 91       	pop	r17
 408:	0f 91       	pop	r16
 40a:	ff 90       	pop	r15
 40c:	ef 90       	pop	r14
 40e:	08 95       	ret

00000410 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
 410:	cf 92       	push	r12
 412:	df 92       	push	r13
 414:	ef 92       	push	r14
 416:	ff 92       	push	r15
 418:	0f 93       	push	r16
 41a:	1f 93       	push	r17
 41c:	cf 93       	push	r28
 41e:	df 93       	push	r29
 420:	00 d0       	rcall	.+0      	; 0x422 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
 422:	1f 92       	push	r1
 424:	cd b7       	in	r28, 0x3d	; 61
 426:	de b7       	in	r29, 0x3e	; 62
 428:	6c 01       	movw	r12, r24
 42a:	f6 2e       	mov	r15, r22
 42c:	dc 01       	movw	r26, r24
 42e:	ed 91       	ld	r30, X+
 430:	fc 91       	ld	r31, X
 432:	01 90       	ld	r0, Z+
 434:	f0 81       	ld	r31, Z
 436:	e0 2d       	mov	r30, r0
 438:	2a 83       	std	Y+2, r18	; 0x02
 43a:	3b 83       	std	Y+3, r19	; 0x03
 43c:	49 83       	std	Y+1, r20	; 0x01
 43e:	09 95       	icall
 440:	d6 01       	movw	r26, r12
 442:	ed 91       	ld	r30, X+
 444:	fc 91       	ld	r31, X
 446:	04 80       	ldd	r0, Z+4	; 0x04
 448:	f5 81       	ldd	r31, Z+5	; 0x05
 44a:	e0 2d       	mov	r30, r0
 44c:	6f 2d       	mov	r22, r15
 44e:	c6 01       	movw	r24, r12
 450:	09 95       	icall
 452:	d6 01       	movw	r26, r12
 454:	ed 91       	ld	r30, X+
 456:	fc 91       	ld	r31, X
 458:	04 80       	ldd	r0, Z+4	; 0x04
 45a:	f5 81       	ldd	r31, Z+5	; 0x05
 45c:	e0 2d       	mov	r30, r0
 45e:	49 81       	ldd	r20, Y+1	; 0x01
 460:	64 2f       	mov	r22, r20
 462:	c6 01       	movw	r24, r12
 464:	09 95       	icall
 466:	d6 01       	movw	r26, r12
 468:	ed 91       	ld	r30, X+
 46a:	fc 91       	ld	r31, X
 46c:	01 90       	ld	r0, Z+
 46e:	f0 81       	ld	r31, Z
 470:	e0 2d       	mov	r30, r0
 472:	c6 01       	movw	r24, r12
 474:	09 95       	icall
 476:	d6 01       	movw	r26, r12
 478:	ed 91       	ld	r30, X+
 47a:	fc 91       	ld	r31, X
 47c:	6f 2d       	mov	r22, r15
 47e:	61 60       	ori	r22, 0x01	; 1
 480:	04 80       	ldd	r0, Z+4	; 0x04
 482:	f5 81       	ldd	r31, Z+5	; 0x05
 484:	e0 2d       	mov	r30, r0
 486:	c6 01       	movw	r24, r12
 488:	09 95       	icall
 48a:	2a 81       	ldd	r18, Y+2	; 0x02
 48c:	e2 2e       	mov	r14, r18
 48e:	3b 81       	ldd	r19, Y+3	; 0x03
 490:	f3 2e       	mov	r15, r19
 492:	0e 0d       	add	r16, r14
 494:	1f 1d       	adc	r17, r15
 496:	d6 01       	movw	r26, r12
 498:	ed 91       	ld	r30, X+
 49a:	fc 91       	ld	r31, X
 49c:	e0 16       	cp	r14, r16
 49e:	f1 06       	cpc	r15, r17
 4a0:	51 f0       	breq	.+20     	; 0x4b6 <__stack+0x57>
 4a2:	06 80       	ldd	r0, Z+6	; 0x06
 4a4:	f7 81       	ldd	r31, Z+7	; 0x07
 4a6:	e0 2d       	mov	r30, r0
 4a8:	61 e0       	ldi	r22, 0x01	; 1
 4aa:	c6 01       	movw	r24, r12
 4ac:	09 95       	icall
 4ae:	f7 01       	movw	r30, r14
 4b0:	81 93       	st	Z+, r24
 4b2:	7f 01       	movw	r14, r30
 4b4:	f0 cf       	rjmp	.-32     	; 0x496 <__stack+0x37>
 4b6:	02 80       	ldd	r0, Z+2	; 0x02
 4b8:	f3 81       	ldd	r31, Z+3	; 0x03
 4ba:	e0 2d       	mov	r30, r0
 4bc:	c6 01       	movw	r24, r12
 4be:	0f 90       	pop	r0
 4c0:	0f 90       	pop	r0
 4c2:	0f 90       	pop	r0
 4c4:	df 91       	pop	r29
 4c6:	cf 91       	pop	r28
 4c8:	1f 91       	pop	r17
 4ca:	0f 91       	pop	r16
 4cc:	ff 90       	pop	r15
 4ce:	ef 90       	pop	r14
 4d0:	df 90       	pop	r13
 4d2:	cf 90       	pop	r12
 4d4:	09 94       	ijmp

000004d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 4d6:	88 23       	and	r24, r24
 4d8:	21 f0       	breq	.+8      	; 0x4e2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 4da:	bf 98       	cbi	0x17, 7	; 23
 4dc:	82 30       	cpi	r24, 0x02	; 2
 4de:	19 f0       	breq	.+6      	; 0x4e6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 4e0:	08 95       	ret
 4e2:	bf 9a       	sbi	0x17, 7	; 23
 4e4:	08 95       	ret
 4e6:	c7 9a       	sbi	0x18, 7	; 24
 4e8:	08 95       	ret

000004ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
 4ea:	8a e0       	ldi	r24, 0x0A	; 10
 4ec:	00 00       	nop
 4ee:	81 50       	subi	r24, 0x01	; 1
 4f0:	e9 f7       	brne	.-6      	; 0x4ec <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
 4f2:	08 95       	ret

000004f4 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
 4f4:	1f 93       	push	r17
 4f6:	cf 93       	push	r28
 4f8:	df 93       	push	r29
 4fa:	16 2f       	mov	r17, r22
 4fc:	bd 98       	cbi	0x17, 5	; 23
 4fe:	80 e0       	ldi	r24, 0x00	; 0
 500:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 504:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 508:	d8 e0       	ldi	r29, 0x08	; 8
 50a:	c0 e0       	ldi	r28, 0x00	; 0
 50c:	cc 0f       	add	r28, r28
 50e:	81 e0       	ldi	r24, 0x01	; 1
 510:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 514:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 518:	b5 99       	sbic	0x16, 5	; 22
 51a:	c1 60       	ori	r28, 0x01	; 1
 51c:	80 e0       	ldi	r24, 0x00	; 0
 51e:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 522:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 526:	d1 50       	subi	r29, 0x01	; 1
 528:	89 f7       	brne	.-30     	; 0x50c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
 52a:	11 23       	and	r17, r17
 52c:	11 f0       	breq	.+4      	; 0x532 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
 52e:	bd 9a       	sbi	0x17, 5	; 23
 530:	01 c0       	rjmp	.+2      	; 0x534 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
 532:	bd 98       	cbi	0x17, 5	; 23
 534:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 538:	81 e0       	ldi	r24, 0x01	; 1
 53a:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 53e:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 542:	80 e0       	ldi	r24, 0x00	; 0
 544:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 548:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 54c:	bd 98       	cbi	0x17, 5	; 23
 54e:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 552:	8c 2f       	mov	r24, r28
 554:	df 91       	pop	r29
 556:	cf 91       	pop	r28
 558:	1f 91       	pop	r17
 55a:	08 95       	ret

0000055c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
 55c:	cf 93       	push	r28
 55e:	df 93       	push	r29
 560:	d6 2f       	mov	r29, r22
 562:	c8 e0       	ldi	r28, 0x08	; 8
 564:	80 e0       	ldi	r24, 0x00	; 0
 566:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 56a:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 56e:	d7 ff       	sbrs	r29, 7
 570:	02 c0       	rjmp	.+4      	; 0x576 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
 572:	bd 98       	cbi	0x17, 5	; 23
 574:	01 c0       	rjmp	.+2      	; 0x578 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
 576:	bd 9a       	sbi	0x17, 5	; 23
 578:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 57c:	81 e0       	ldi	r24, 0x01	; 1
 57e:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 582:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 586:	dd 0f       	add	r29, r29
 588:	c1 50       	subi	r28, 0x01	; 1
 58a:	61 f7       	brne	.-40     	; 0x564 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
 58c:	80 e0       	ldi	r24, 0x00	; 0
 58e:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 592:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 596:	bd 98       	cbi	0x17, 5	; 23
 598:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 59c:	81 e0       	ldi	r24, 0x01	; 1
 59e:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5a2:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5a6:	c6 b3       	in	r28, 0x16	; 22
 5a8:	80 e0       	ldi	r24, 0x00	; 0
 5aa:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5ae:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5b2:	c5 fb       	bst	r28, 5
 5b4:	cc 27       	eor	r28, r28
 5b6:	c0 f9       	bld	r28, 0
 5b8:	81 e0       	ldi	r24, 0x01	; 1
 5ba:	8c 27       	eor	r24, r28
 5bc:	df 91       	pop	r29
 5be:	cf 91       	pop	r28
 5c0:	08 95       	ret

000005c2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
 5c2:	81 e0       	ldi	r24, 0x01	; 1
 5c4:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5c8:	bd 98       	cbi	0x17, 5	; 23
 5ca:	81 e0       	ldi	r24, 0x01	; 1
 5cc:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5d0:	bd 9a       	sbi	0x17, 5	; 23
 5d2:	80 e0       	ldi	r24, 0x00	; 0
 5d4:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5d8:	bd 98       	cbi	0x17, 5	; 23
 5da:	0c 94 75 02 	jmp	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

000005de <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
 5de:	80 e0       	ldi	r24, 0x00	; 0
 5e0:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5e4:	bd 9a       	sbi	0x17, 5	; 23
 5e6:	81 e0       	ldi	r24, 0x01	; 1
 5e8:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5ec:	bd 9a       	sbi	0x17, 5	; 23
 5ee:	81 e0       	ldi	r24, 0x01	; 1
 5f0:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5f4:	bd 98       	cbi	0x17, 5	; 23
 5f6:	0c 94 75 02 	jmp	0x4ea	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

000005fa <_GLOBAL__sub_I_i2c>:
 5fa:	84 e6       	ldi	r24, 0x64	; 100
 5fc:	90 e0       	ldi	r25, 0x00	; 0
 5fe:	90 93 79 00 	sts	0x0079, r25
 602:	80 93 78 00 	sts	0x0078, r24
 606:	bd 98       	cbi	0x17, 5	; 23
 608:	81 e0       	ldi	r24, 0x01	; 1
 60a:	0e 94 6b 02 	call	0x4d6	; 0x4d6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 60e:	c5 98       	cbi	0x18, 5	; 24
 610:	c7 98       	cbi	0x18, 7	; 24
 612:	08 95       	ret

00000614 <_ZN6CTimerC1Ev>:
 614:	80 e0       	ldi	r24, 0x00	; 0
 616:	90 e0       	ldi	r25, 0x00	; 0
 618:	fc 01       	movw	r30, r24
 61a:	23 e0       	ldi	r18, 0x03	; 3
 61c:	ee 0f       	add	r30, r30
 61e:	ff 1f       	adc	r31, r31
 620:	2a 95       	dec	r18
 622:	e1 f7       	brne	.-8      	; 0x61c <_ZN6CTimerC1Ev+0x8>
 624:	e4 58       	subi	r30, 0x84	; 132
 626:	ff 4f       	sbci	r31, 0xFF	; 255
 628:	11 82       	std	Z+1, r1	; 0x01
 62a:	10 82       	st	Z, r1
 62c:	13 82       	std	Z+3, r1	; 0x03
 62e:	12 82       	std	Z+2, r1	; 0x02
 630:	15 82       	std	Z+5, r1	; 0x05
 632:	14 82       	std	Z+4, r1	; 0x04
 634:	16 82       	std	Z+6, r1	; 0x06
 636:	17 82       	std	Z+7, r1	; 0x07
 638:	01 96       	adiw	r24, 0x01	; 1
 63a:	88 30       	cpi	r24, 0x08	; 8
 63c:	91 05       	cpc	r25, r1
 63e:	61 f7       	brne	.-40     	; 0x618 <_ZN6CTimerC1Ev+0x4>
 640:	10 92 bc 00 	sts	0x00BC, r1
 644:	10 92 bd 00 	sts	0x00BD, r1
 648:	10 92 be 00 	sts	0x00BE, r1
 64c:	10 92 bf 00 	sts	0x00BF, r1
 650:	83 b7       	in	r24, 0x33	; 51
 652:	88 60       	ori	r24, 0x08	; 8
 654:	83 bf       	out	0x33, r24	; 51
 656:	8b e9       	ldi	r24, 0x9B	; 155
 658:	8c bf       	out	0x3c, r24	; 60
 65a:	83 e0       	ldi	r24, 0x03	; 3
 65c:	83 bf       	out	0x33, r24	; 51
 65e:	89 b7       	in	r24, 0x39	; 57
 660:	82 60       	ori	r24, 0x02	; 2
 662:	89 bf       	out	0x39, r24	; 57
 664:	78 94       	sei
 666:	08 95       	ret

00000668 <__vector_19>:
 668:	1f 92       	push	r1
 66a:	0f 92       	push	r0
 66c:	0f b6       	in	r0, 0x3f	; 63
 66e:	0f 92       	push	r0
 670:	11 24       	eor	r1, r1
 672:	2f 93       	push	r18
 674:	3f 93       	push	r19
 676:	4f 93       	push	r20
 678:	5f 93       	push	r21
 67a:	6f 93       	push	r22
 67c:	7f 93       	push	r23
 67e:	8f 93       	push	r24
 680:	9f 93       	push	r25
 682:	af 93       	push	r26
 684:	bf 93       	push	r27
 686:	cf 93       	push	r28
 688:	df 93       	push	r29
 68a:	ef 93       	push	r30
 68c:	ff 93       	push	r31
 68e:	c0 e0       	ldi	r28, 0x00	; 0
 690:	d0 e0       	ldi	r29, 0x00	; 0
 692:	ce 01       	movw	r24, r28
 694:	23 e0       	ldi	r18, 0x03	; 3
 696:	88 0f       	add	r24, r24
 698:	99 1f       	adc	r25, r25
 69a:	2a 95       	dec	r18
 69c:	e1 f7       	brne	.-8      	; 0x696 <__vector_19+0x2e>
 69e:	fc 01       	movw	r30, r24
 6a0:	e4 58       	subi	r30, 0x84	; 132
 6a2:	ff 4f       	sbci	r31, 0xFF	; 255
 6a4:	24 81       	ldd	r18, Z+4	; 0x04
 6a6:	35 81       	ldd	r19, Z+5	; 0x05
 6a8:	23 2b       	or	r18, r19
 6aa:	31 f0       	breq	.+12     	; 0x6b8 <__vector_19+0x50>
 6ac:	84 81       	ldd	r24, Z+4	; 0x04
 6ae:	95 81       	ldd	r25, Z+5	; 0x05
 6b0:	01 97       	sbiw	r24, 0x01	; 1
 6b2:	95 83       	std	Z+5, r25	; 0x05
 6b4:	84 83       	std	Z+4, r24	; 0x04
 6b6:	18 c0       	rjmp	.+48     	; 0x6e8 <__vector_19+0x80>
 6b8:	22 81       	ldd	r18, Z+2	; 0x02
 6ba:	33 81       	ldd	r19, Z+3	; 0x03
 6bc:	35 83       	std	Z+5, r19	; 0x05
 6be:	24 83       	std	Z+4, r18	; 0x04
 6c0:	26 81       	ldd	r18, Z+6	; 0x06
 6c2:	2f 3f       	cpi	r18, 0xFF	; 255
 6c4:	19 f0       	breq	.+6      	; 0x6cc <__vector_19+0x64>
 6c6:	26 81       	ldd	r18, Z+6	; 0x06
 6c8:	2f 5f       	subi	r18, 0xFF	; 255
 6ca:	26 83       	std	Z+6, r18	; 0x06
 6cc:	fc 01       	movw	r30, r24
 6ce:	e4 58       	subi	r30, 0x84	; 132
 6d0:	ff 4f       	sbci	r31, 0xFF	; 255
 6d2:	87 81       	ldd	r24, Z+7	; 0x07
 6d4:	81 11       	cpse	r24, r1
 6d6:	08 c0       	rjmp	.+16     	; 0x6e8 <__vector_19+0x80>
 6d8:	80 81       	ld	r24, Z
 6da:	91 81       	ldd	r25, Z+1	; 0x01
 6dc:	89 2b       	or	r24, r25
 6de:	21 f0       	breq	.+8      	; 0x6e8 <__vector_19+0x80>
 6e0:	01 90       	ld	r0, Z+
 6e2:	f0 81       	ld	r31, Z
 6e4:	e0 2d       	mov	r30, r0
 6e6:	09 95       	icall
 6e8:	21 96       	adiw	r28, 0x01	; 1
 6ea:	c8 30       	cpi	r28, 0x08	; 8
 6ec:	d1 05       	cpc	r29, r1
 6ee:	89 f6       	brne	.-94     	; 0x692 <__vector_19+0x2a>
 6f0:	80 91 bc 00 	lds	r24, 0x00BC
 6f4:	90 91 bd 00 	lds	r25, 0x00BD
 6f8:	a0 91 be 00 	lds	r26, 0x00BE
 6fc:	b0 91 bf 00 	lds	r27, 0x00BF
 700:	01 96       	adiw	r24, 0x01	; 1
 702:	a1 1d       	adc	r26, r1
 704:	b1 1d       	adc	r27, r1
 706:	80 93 bc 00 	sts	0x00BC, r24
 70a:	90 93 bd 00 	sts	0x00BD, r25
 70e:	a0 93 be 00 	sts	0x00BE, r26
 712:	b0 93 bf 00 	sts	0x00BF, r27
 716:	ff 91       	pop	r31
 718:	ef 91       	pop	r30
 71a:	df 91       	pop	r29
 71c:	cf 91       	pop	r28
 71e:	bf 91       	pop	r27
 720:	af 91       	pop	r26
 722:	9f 91       	pop	r25
 724:	8f 91       	pop	r24
 726:	7f 91       	pop	r23
 728:	6f 91       	pop	r22
 72a:	5f 91       	pop	r21
 72c:	4f 91       	pop	r20
 72e:	3f 91       	pop	r19
 730:	2f 91       	pop	r18
 732:	0f 90       	pop	r0
 734:	0f be       	out	0x3f, r0	; 63
 736:	0f 90       	pop	r0
 738:	1f 90       	pop	r1
 73a:	18 95       	reti

0000073c <_GLOBAL__sub_I_timer>:
 73c:	80 ec       	ldi	r24, 0xC0	; 192
 73e:	90 e0       	ldi	r25, 0x00	; 0
 740:	0c 94 0a 03 	jmp	0x614	; 0x614 <_ZN6CTimerC1Ev>

00000744 <_GLOBAL__sub_I_terminal>:
 744:	81 ec       	ldi	r24, 0xC1	; 193
 746:	90 e0       	ldi	r25, 0x00	; 0
 748:	0c 94 71 00 	jmp	0xe2	; 0xe2 <_ZN6CUSARTC1Ev>

0000074c <_GLOBAL__sub_D_terminal>:
 74c:	81 ec       	ldi	r24, 0xC1	; 193
 74e:	90 e0       	ldi	r25, 0x00	; 0
 750:	0c 94 7b 00 	jmp	0xf6	; 0xf6 <_ZN6CUSARTD1Ev>

00000754 <__tablejump2__>:
 754:	ee 0f       	add	r30, r30
 756:	ff 1f       	adc	r31, r31
 758:	05 90       	lpm	r0, Z+
 75a:	f4 91       	lpm	r31, Z
 75c:	e0 2d       	mov	r30, r0
 75e:	09 94       	ijmp

00000760 <__do_global_dtors>:
 760:	10 e0       	ldi	r17, 0x00	; 0
 762:	cd e2       	ldi	r28, 0x2D	; 45
 764:	d0 e0       	ldi	r29, 0x00	; 0
 766:	04 c0       	rjmp	.+8      	; 0x770 <__do_global_dtors+0x10>
 768:	fe 01       	movw	r30, r28
 76a:	0e 94 aa 03 	call	0x754	; 0x754 <__tablejump2__>
 76e:	21 96       	adiw	r28, 0x01	; 1
 770:	ce 32       	cpi	r28, 0x2E	; 46
 772:	d1 07       	cpc	r29, r17
 774:	c9 f7       	brne	.-14     	; 0x768 <__do_global_dtors+0x8>
 776:	f8 94       	cli

00000778 <__stop_program>:
 778:	ff cf       	rjmp	.-2      	; 0x778 <__stop_program>
