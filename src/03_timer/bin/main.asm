
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
  4c:	0c 94 8c 03 	jmp	0x718	; 0x718 <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	24 03       	mulsu	r18, r20
  56:	d0 03       	fmuls	r21, r16
  58:	d4 03       	fmuls	r21, r20

0000005a <__ctors_end>:
  5a:	d8 03       	fmulsu	r21, r16

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
  6e:	e8 e3       	ldi	r30, 0x38	; 56
  70:	fa e0       	ldi	r31, 0x0A	; 10
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
  9a:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <__tablejump2__>
  9e:	ca 32       	cpi	r28, 0x2A	; 42
  a0:	d1 07       	cpc	r29, r17
  a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
  a4:	0e 94 6d 00 	call	0xda	; 0xda <main>
  a8:	0c 94 0f 05 	jmp	0xa1e	; 0xa1e <__do_global_dtors>

000000ac <__bad_interrupt>:
  ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN5TaskAD1Ev>:
  b0:	08 95       	ret

000000b2 <_ZN5TaskAD0Ev>:
  b2:	0c 94 31 03 	jmp	0x662	; 0x662 <_ZdlPv>

000000b6 <_ZN5TaskA4mainEv>:
  b6:	fc 01       	movw	r30, r24
  b8:	83 81       	ldd	r24, Z+3	; 0x03
  ba:	94 81       	ldd	r25, Z+4	; 0x04
  bc:	00 97       	sbiw	r24, 0x00	; 0
  be:	19 f0       	breq	.+6      	; 0xc6 <_ZN5TaskA4mainEv+0x10>
  c0:	01 97       	sbiw	r24, 0x01	; 1
  c2:	39 f0       	breq	.+14     	; 0xd2 <_ZN5TaskA4mainEv+0x1c>
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

000000da <main>:
  da:	cf 93       	push	r28
  dc:	df 93       	push	r29
  de:	cd b7       	in	r28, 0x3d	; 61
  e0:	de b7       	in	r29, 0x3e	; 62
  e2:	2a 97       	sbiw	r28, 0x0a	; 10
  e4:	0f b6       	in	r0, 0x3f	; 63
  e6:	f8 94       	cli
  e8:	de bf       	out	0x3e, r29	; 62
  ea:	0f be       	out	0x3f, r0	; 63
  ec:	cd bf       	out	0x3d, r28	; 61
  ee:	8a e6       	ldi	r24, 0x6A	; 106
  f0:	90 e0       	ldi	r25, 0x00	; 0
  f2:	9f 83       	std	Y+7, r25	; 0x07
  f4:	8e 83       	std	Y+6, r24	; 0x06
  f6:	d5 9a       	sbi	0x1a, 5	; 26
  f8:	1a 86       	std	Y+10, r1	; 0x0a
  fa:	19 86       	std	Y+9, r1	; 0x09
  fc:	9a 83       	std	Y+2, r25	; 0x02
  fe:	89 83       	std	Y+1, r24	; 0x01
 100:	d5 9a       	sbi	0x1a, 5	; 26
 102:	1d 82       	std	Y+5, r1	; 0x05
 104:	1c 82       	std	Y+4, r1	; 0x04
 106:	44 e6       	ldi	r20, 0x64	; 100
 108:	50 e0       	ldi	r21, 0x00	; 0
 10a:	be 01       	movw	r22, r28
 10c:	6a 5f       	subi	r22, 0xFA	; 250
 10e:	7f 4f       	sbci	r23, 0xFF	; 255
 110:	8c e8       	ldi	r24, 0x8C	; 140
 112:	90 e0       	ldi	r25, 0x00	; 0
 114:	0e 94 4d 03 	call	0x69a	; 0x69a <_ZN5Timer8add_taskEP4Taskj>
 118:	44 ef       	ldi	r20, 0xF4	; 244
 11a:	51 e0       	ldi	r21, 0x01	; 1
 11c:	be 01       	movw	r22, r28
 11e:	6f 5f       	subi	r22, 0xFF	; 255
 120:	7f 4f       	sbci	r23, 0xFF	; 255
 122:	8c e8       	ldi	r24, 0x8C	; 140
 124:	90 e0       	ldi	r25, 0x00	; 0
 126:	0e 94 4d 03 	call	0x69a	; 0x69a <_ZN5Timer8add_taskEP4Taskj>
 12a:	8c e8       	ldi	r24, 0x8C	; 140
 12c:	90 e0       	ldi	r25, 0x00	; 0
 12e:	0e 94 6f 03 	call	0x6de	; 0x6de <_ZN5Timer4mainEv>
 132:	fb cf       	rjmp	.-10     	; 0x12a <main+0x50>

00000134 <_ZN5USARTC1Ev>:
 134:	10 bc       	out	0x20, r1	; 32
 136:	80 e4       	ldi	r24, 0x40	; 64
 138:	89 b9       	out	0x09, r24	; 9
 13a:	80 b5       	in	r24, 0x20	; 32
 13c:	86 68       	ori	r24, 0x86	; 134
 13e:	80 bd       	out	0x20, r24	; 32
 140:	8a b1       	in	r24, 0x0a	; 10
 142:	88 61       	ori	r24, 0x18	; 24
 144:	8a b9       	out	0x0a, r24	; 10
 146:	08 95       	ret

00000148 <_ZN5USARTD1Ev>:
 148:	08 95       	ret

0000014a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
 14a:	0f 93       	push	r16
 14c:	1f 93       	push	r17
 14e:	cf 93       	push	r28
 150:	df 93       	push	r29
 152:	00 d0       	rcall	.+0      	; 0x154 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
 154:	1f 92       	push	r1
 156:	cd b7       	in	r28, 0x3d	; 61
 158:	de b7       	in	r29, 0x3e	; 62
 15a:	8c 01       	movw	r16, r24
 15c:	dc 01       	movw	r26, r24
 15e:	ed 91       	ld	r30, X+
 160:	fc 91       	ld	r31, X
 162:	01 90       	ld	r0, Z+
 164:	f0 81       	ld	r31, Z
 166:	e0 2d       	mov	r30, r0
 168:	2b 83       	std	Y+3, r18	; 0x03
 16a:	4a 83       	std	Y+2, r20	; 0x02
 16c:	69 83       	std	Y+1, r22	; 0x01
 16e:	09 95       	icall
 170:	d8 01       	movw	r26, r16
 172:	ed 91       	ld	r30, X+
 174:	fc 91       	ld	r31, X
 176:	04 80       	ldd	r0, Z+4	; 0x04
 178:	f5 81       	ldd	r31, Z+5	; 0x05
 17a:	e0 2d       	mov	r30, r0
 17c:	69 81       	ldd	r22, Y+1	; 0x01
 17e:	c8 01       	movw	r24, r16
 180:	09 95       	icall
 182:	d8 01       	movw	r26, r16
 184:	ed 91       	ld	r30, X+
 186:	fc 91       	ld	r31, X
 188:	04 80       	ldd	r0, Z+4	; 0x04
 18a:	f5 81       	ldd	r31, Z+5	; 0x05
 18c:	e0 2d       	mov	r30, r0
 18e:	4a 81       	ldd	r20, Y+2	; 0x02
 190:	64 2f       	mov	r22, r20
 192:	c8 01       	movw	r24, r16
 194:	09 95       	icall
 196:	d8 01       	movw	r26, r16
 198:	ed 91       	ld	r30, X+
 19a:	fc 91       	ld	r31, X
 19c:	04 80       	ldd	r0, Z+4	; 0x04
 19e:	f5 81       	ldd	r31, Z+5	; 0x05
 1a0:	e0 2d       	mov	r30, r0
 1a2:	2b 81       	ldd	r18, Y+3	; 0x03
 1a4:	62 2f       	mov	r22, r18
 1a6:	c8 01       	movw	r24, r16
 1a8:	09 95       	icall
 1aa:	d8 01       	movw	r26, r16
 1ac:	ed 91       	ld	r30, X+
 1ae:	fc 91       	ld	r31, X
 1b0:	02 80       	ldd	r0, Z+2	; 0x02
 1b2:	f3 81       	ldd	r31, Z+3	; 0x03
 1b4:	e0 2d       	mov	r30, r0
 1b6:	c8 01       	movw	r24, r16
 1b8:	0f 90       	pop	r0
 1ba:	0f 90       	pop	r0
 1bc:	0f 90       	pop	r0
 1be:	df 91       	pop	r29
 1c0:	cf 91       	pop	r28
 1c2:	1f 91       	pop	r17
 1c4:	0f 91       	pop	r16
 1c6:	09 94       	ijmp

000001c8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
 1c8:	0f 93       	push	r16
 1ca:	1f 93       	push	r17
 1cc:	cf 93       	push	r28
 1ce:	df 93       	push	r29
 1d0:	00 d0       	rcall	.+0      	; 0x1d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
 1d2:	00 d0       	rcall	.+0      	; 0x1d4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
 1d4:	cd b7       	in	r28, 0x3d	; 61
 1d6:	de b7       	in	r29, 0x3e	; 62
 1d8:	8c 01       	movw	r16, r24
 1da:	dc 01       	movw	r26, r24
 1dc:	ed 91       	ld	r30, X+
 1de:	fc 91       	ld	r31, X
 1e0:	01 90       	ld	r0, Z+
 1e2:	f0 81       	ld	r31, Z
 1e4:	e0 2d       	mov	r30, r0
 1e6:	2c 83       	std	Y+4, r18	; 0x04
 1e8:	3b 83       	std	Y+3, r19	; 0x03
 1ea:	4a 83       	std	Y+2, r20	; 0x02
 1ec:	69 83       	std	Y+1, r22	; 0x01
 1ee:	09 95       	icall
 1f0:	d8 01       	movw	r26, r16
 1f2:	ed 91       	ld	r30, X+
 1f4:	fc 91       	ld	r31, X
 1f6:	04 80       	ldd	r0, Z+4	; 0x04
 1f8:	f5 81       	ldd	r31, Z+5	; 0x05
 1fa:	e0 2d       	mov	r30, r0
 1fc:	69 81       	ldd	r22, Y+1	; 0x01
 1fe:	c8 01       	movw	r24, r16
 200:	09 95       	icall
 202:	d8 01       	movw	r26, r16
 204:	ed 91       	ld	r30, X+
 206:	fc 91       	ld	r31, X
 208:	04 80       	ldd	r0, Z+4	; 0x04
 20a:	f5 81       	ldd	r31, Z+5	; 0x05
 20c:	e0 2d       	mov	r30, r0
 20e:	4a 81       	ldd	r20, Y+2	; 0x02
 210:	64 2f       	mov	r22, r20
 212:	c8 01       	movw	r24, r16
 214:	09 95       	icall
 216:	d8 01       	movw	r26, r16
 218:	ed 91       	ld	r30, X+
 21a:	fc 91       	ld	r31, X
 21c:	04 80       	ldd	r0, Z+4	; 0x04
 21e:	f5 81       	ldd	r31, Z+5	; 0x05
 220:	e0 2d       	mov	r30, r0
 222:	3b 81       	ldd	r19, Y+3	; 0x03
 224:	63 2f       	mov	r22, r19
 226:	c8 01       	movw	r24, r16
 228:	09 95       	icall
 22a:	d8 01       	movw	r26, r16
 22c:	ed 91       	ld	r30, X+
 22e:	fc 91       	ld	r31, X
 230:	04 80       	ldd	r0, Z+4	; 0x04
 232:	f5 81       	ldd	r31, Z+5	; 0x05
 234:	e0 2d       	mov	r30, r0
 236:	2c 81       	ldd	r18, Y+4	; 0x04
 238:	62 2f       	mov	r22, r18
 23a:	c8 01       	movw	r24, r16
 23c:	09 95       	icall
 23e:	d8 01       	movw	r26, r16
 240:	ed 91       	ld	r30, X+
 242:	fc 91       	ld	r31, X
 244:	02 80       	ldd	r0, Z+2	; 0x02
 246:	f3 81       	ldd	r31, Z+3	; 0x03
 248:	e0 2d       	mov	r30, r0
 24a:	c8 01       	movw	r24, r16
 24c:	0f 90       	pop	r0
 24e:	0f 90       	pop	r0
 250:	0f 90       	pop	r0
 252:	0f 90       	pop	r0
 254:	df 91       	pop	r29
 256:	cf 91       	pop	r28
 258:	1f 91       	pop	r17
 25a:	0f 91       	pop	r16
 25c:	09 94       	ijmp

0000025e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
 25e:	cf 92       	push	r12
 260:	df 92       	push	r13
 262:	ef 92       	push	r14
 264:	ff 92       	push	r15
 266:	0f 93       	push	r16
 268:	1f 93       	push	r17
 26a:	cf 93       	push	r28
 26c:	df 93       	push	r29
 26e:	00 d0       	rcall	.+0      	; 0x270 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
 270:	00 d0       	rcall	.+0      	; 0x272 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
 272:	cd b7       	in	r28, 0x3d	; 61
 274:	de b7       	in	r29, 0x3e	; 62
 276:	6c 01       	movw	r12, r24
 278:	dc 01       	movw	r26, r24
 27a:	ed 91       	ld	r30, X+
 27c:	fc 91       	ld	r31, X
 27e:	01 90       	ld	r0, Z+
 280:	f0 81       	ld	r31, Z
 282:	e0 2d       	mov	r30, r0
 284:	2b 83       	std	Y+3, r18	; 0x03
 286:	3c 83       	std	Y+4, r19	; 0x04
 288:	4a 83       	std	Y+2, r20	; 0x02
 28a:	69 83       	std	Y+1, r22	; 0x01
 28c:	09 95       	icall
 28e:	d6 01       	movw	r26, r12
 290:	ed 91       	ld	r30, X+
 292:	fc 91       	ld	r31, X
 294:	04 80       	ldd	r0, Z+4	; 0x04
 296:	f5 81       	ldd	r31, Z+5	; 0x05
 298:	e0 2d       	mov	r30, r0
 29a:	69 81       	ldd	r22, Y+1	; 0x01
 29c:	c6 01       	movw	r24, r12
 29e:	09 95       	icall
 2a0:	d6 01       	movw	r26, r12
 2a2:	ed 91       	ld	r30, X+
 2a4:	fc 91       	ld	r31, X
 2a6:	04 80       	ldd	r0, Z+4	; 0x04
 2a8:	f5 81       	ldd	r31, Z+5	; 0x05
 2aa:	e0 2d       	mov	r30, r0
 2ac:	4a 81       	ldd	r20, Y+2	; 0x02
 2ae:	64 2f       	mov	r22, r20
 2b0:	c6 01       	movw	r24, r12
 2b2:	09 95       	icall
 2b4:	2b 81       	ldd	r18, Y+3	; 0x03
 2b6:	e2 2e       	mov	r14, r18
 2b8:	3c 81       	ldd	r19, Y+4	; 0x04
 2ba:	f3 2e       	mov	r15, r19
 2bc:	0e 0d       	add	r16, r14
 2be:	1f 1d       	adc	r17, r15
 2c0:	d6 01       	movw	r26, r12
 2c2:	ed 91       	ld	r30, X+
 2c4:	fc 91       	ld	r31, X
 2c6:	e0 16       	cp	r14, r16
 2c8:	f1 06       	cpc	r15, r17
 2ca:	49 f0       	breq	.+18     	; 0x2de <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
 2cc:	d7 01       	movw	r26, r14
 2ce:	6d 91       	ld	r22, X+
 2d0:	7d 01       	movw	r14, r26
 2d2:	04 80       	ldd	r0, Z+4	; 0x04
 2d4:	f5 81       	ldd	r31, Z+5	; 0x05
 2d6:	e0 2d       	mov	r30, r0
 2d8:	c6 01       	movw	r24, r12
 2da:	09 95       	icall
 2dc:	f1 cf       	rjmp	.-30     	; 0x2c0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
 2de:	02 80       	ldd	r0, Z+2	; 0x02
 2e0:	f3 81       	ldd	r31, Z+3	; 0x03
 2e2:	e0 2d       	mov	r30, r0
 2e4:	c6 01       	movw	r24, r12
 2e6:	0f 90       	pop	r0
 2e8:	0f 90       	pop	r0
 2ea:	0f 90       	pop	r0
 2ec:	0f 90       	pop	r0
 2ee:	df 91       	pop	r29
 2f0:	cf 91       	pop	r28
 2f2:	1f 91       	pop	r17
 2f4:	0f 91       	pop	r16
 2f6:	ff 90       	pop	r15
 2f8:	ef 90       	pop	r14
 2fa:	df 90       	pop	r13
 2fc:	cf 90       	pop	r12
 2fe:	09 94       	ijmp

00000300 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
 300:	ef 92       	push	r14
 302:	ff 92       	push	r15
 304:	1f 93       	push	r17
 306:	cf 93       	push	r28
 308:	df 93       	push	r29
 30a:	1f 92       	push	r1
 30c:	cd b7       	in	r28, 0x3d	; 61
 30e:	de b7       	in	r29, 0x3e	; 62
 310:	7c 01       	movw	r14, r24
 312:	16 2f       	mov	r17, r22
 314:	dc 01       	movw	r26, r24
 316:	ed 91       	ld	r30, X+
 318:	fc 91       	ld	r31, X
 31a:	01 90       	ld	r0, Z+
 31c:	f0 81       	ld	r31, Z
 31e:	e0 2d       	mov	r30, r0
 320:	49 83       	std	Y+1, r20	; 0x01
 322:	09 95       	icall
 324:	d7 01       	movw	r26, r14
 326:	ed 91       	ld	r30, X+
 328:	fc 91       	ld	r31, X
 32a:	04 80       	ldd	r0, Z+4	; 0x04
 32c:	f5 81       	ldd	r31, Z+5	; 0x05
 32e:	e0 2d       	mov	r30, r0
 330:	61 2f       	mov	r22, r17
 332:	c7 01       	movw	r24, r14
 334:	09 95       	icall
 336:	d7 01       	movw	r26, r14
 338:	ed 91       	ld	r30, X+
 33a:	fc 91       	ld	r31, X
 33c:	04 80       	ldd	r0, Z+4	; 0x04
 33e:	f5 81       	ldd	r31, Z+5	; 0x05
 340:	e0 2d       	mov	r30, r0
 342:	49 81       	ldd	r20, Y+1	; 0x01
 344:	64 2f       	mov	r22, r20
 346:	c7 01       	movw	r24, r14
 348:	09 95       	icall
 34a:	d7 01       	movw	r26, r14
 34c:	ed 91       	ld	r30, X+
 34e:	fc 91       	ld	r31, X
 350:	01 90       	ld	r0, Z+
 352:	f0 81       	ld	r31, Z
 354:	e0 2d       	mov	r30, r0
 356:	c7 01       	movw	r24, r14
 358:	09 95       	icall
 35a:	d7 01       	movw	r26, r14
 35c:	ed 91       	ld	r30, X+
 35e:	fc 91       	ld	r31, X
 360:	61 2f       	mov	r22, r17
 362:	61 60       	ori	r22, 0x01	; 1
 364:	04 80       	ldd	r0, Z+4	; 0x04
 366:	f5 81       	ldd	r31, Z+5	; 0x05
 368:	e0 2d       	mov	r30, r0
 36a:	c7 01       	movw	r24, r14
 36c:	09 95       	icall
 36e:	d7 01       	movw	r26, r14
 370:	ed 91       	ld	r30, X+
 372:	fc 91       	ld	r31, X
 374:	06 80       	ldd	r0, Z+6	; 0x06
 376:	f7 81       	ldd	r31, Z+7	; 0x07
 378:	e0 2d       	mov	r30, r0
 37a:	60 e0       	ldi	r22, 0x00	; 0
 37c:	c7 01       	movw	r24, r14
 37e:	09 95       	icall
 380:	18 2f       	mov	r17, r24
 382:	d7 01       	movw	r26, r14
 384:	ed 91       	ld	r30, X+
 386:	fc 91       	ld	r31, X
 388:	02 80       	ldd	r0, Z+2	; 0x02
 38a:	f3 81       	ldd	r31, Z+3	; 0x03
 38c:	e0 2d       	mov	r30, r0
 38e:	c7 01       	movw	r24, r14
 390:	09 95       	icall
 392:	81 2f       	mov	r24, r17
 394:	0f 90       	pop	r0
 396:	df 91       	pop	r29
 398:	cf 91       	pop	r28
 39a:	1f 91       	pop	r17
 39c:	ff 90       	pop	r15
 39e:	ef 90       	pop	r14
 3a0:	08 95       	ret

000003a2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
 3a2:	ef 92       	push	r14
 3a4:	ff 92       	push	r15
 3a6:	0f 93       	push	r16
 3a8:	1f 93       	push	r17
 3aa:	cf 93       	push	r28
 3ac:	df 93       	push	r29
 3ae:	1f 92       	push	r1
 3b0:	cd b7       	in	r28, 0x3d	; 61
 3b2:	de b7       	in	r29, 0x3e	; 62
 3b4:	7c 01       	movw	r14, r24
 3b6:	16 2f       	mov	r17, r22
 3b8:	dc 01       	movw	r26, r24
 3ba:	ed 91       	ld	r30, X+
 3bc:	fc 91       	ld	r31, X
 3be:	01 90       	ld	r0, Z+
 3c0:	f0 81       	ld	r31, Z
 3c2:	e0 2d       	mov	r30, r0
 3c4:	49 83       	std	Y+1, r20	; 0x01
 3c6:	09 95       	icall
 3c8:	d7 01       	movw	r26, r14
 3ca:	ed 91       	ld	r30, X+
 3cc:	fc 91       	ld	r31, X
 3ce:	04 80       	ldd	r0, Z+4	; 0x04
 3d0:	f5 81       	ldd	r31, Z+5	; 0x05
 3d2:	e0 2d       	mov	r30, r0
 3d4:	61 2f       	mov	r22, r17
 3d6:	c7 01       	movw	r24, r14
 3d8:	09 95       	icall
 3da:	d7 01       	movw	r26, r14
 3dc:	ed 91       	ld	r30, X+
 3de:	fc 91       	ld	r31, X
 3e0:	04 80       	ldd	r0, Z+4	; 0x04
 3e2:	f5 81       	ldd	r31, Z+5	; 0x05
 3e4:	e0 2d       	mov	r30, r0
 3e6:	49 81       	ldd	r20, Y+1	; 0x01
 3e8:	64 2f       	mov	r22, r20
 3ea:	c7 01       	movw	r24, r14
 3ec:	09 95       	icall
 3ee:	d7 01       	movw	r26, r14
 3f0:	ed 91       	ld	r30, X+
 3f2:	fc 91       	ld	r31, X
 3f4:	01 90       	ld	r0, Z+
 3f6:	f0 81       	ld	r31, Z
 3f8:	e0 2d       	mov	r30, r0
 3fa:	c7 01       	movw	r24, r14
 3fc:	09 95       	icall
 3fe:	d7 01       	movw	r26, r14
 400:	ed 91       	ld	r30, X+
 402:	fc 91       	ld	r31, X
 404:	61 2f       	mov	r22, r17
 406:	61 60       	ori	r22, 0x01	; 1
 408:	04 80       	ldd	r0, Z+4	; 0x04
 40a:	f5 81       	ldd	r31, Z+5	; 0x05
 40c:	e0 2d       	mov	r30, r0
 40e:	c7 01       	movw	r24, r14
 410:	09 95       	icall
 412:	d7 01       	movw	r26, r14
 414:	ed 91       	ld	r30, X+
 416:	fc 91       	ld	r31, X
 418:	06 80       	ldd	r0, Z+6	; 0x06
 41a:	f7 81       	ldd	r31, Z+7	; 0x07
 41c:	e0 2d       	mov	r30, r0
 41e:	61 e0       	ldi	r22, 0x01	; 1
 420:	c7 01       	movw	r24, r14
 422:	09 95       	icall
 424:	08 2f       	mov	r16, r24
 426:	10 e0       	ldi	r17, 0x00	; 0
 428:	10 2f       	mov	r17, r16
 42a:	00 27       	eor	r16, r16
 42c:	d7 01       	movw	r26, r14
 42e:	ed 91       	ld	r30, X+
 430:	fc 91       	ld	r31, X
 432:	06 80       	ldd	r0, Z+6	; 0x06
 434:	f7 81       	ldd	r31, Z+7	; 0x07
 436:	e0 2d       	mov	r30, r0
 438:	60 e0       	ldi	r22, 0x00	; 0
 43a:	c7 01       	movw	r24, r14
 43c:	09 95       	icall
 43e:	08 2b       	or	r16, r24
 440:	d7 01       	movw	r26, r14
 442:	ed 91       	ld	r30, X+
 444:	fc 91       	ld	r31, X
 446:	02 80       	ldd	r0, Z+2	; 0x02
 448:	f3 81       	ldd	r31, Z+3	; 0x03
 44a:	e0 2d       	mov	r30, r0
 44c:	c7 01       	movw	r24, r14
 44e:	09 95       	icall
 450:	c8 01       	movw	r24, r16
 452:	0f 90       	pop	r0
 454:	df 91       	pop	r29
 456:	cf 91       	pop	r28
 458:	1f 91       	pop	r17
 45a:	0f 91       	pop	r16
 45c:	ff 90       	pop	r15
 45e:	ef 90       	pop	r14
 460:	08 95       	ret

00000462 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
 462:	cf 92       	push	r12
 464:	df 92       	push	r13
 466:	ef 92       	push	r14
 468:	ff 92       	push	r15
 46a:	0f 93       	push	r16
 46c:	1f 93       	push	r17
 46e:	cf 93       	push	r28
 470:	df 93       	push	r29
 472:	00 d0       	rcall	.+0      	; 0x474 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
 474:	1f 92       	push	r1
 476:	cd b7       	in	r28, 0x3d	; 61
 478:	de b7       	in	r29, 0x3e	; 62
 47a:	6c 01       	movw	r12, r24
 47c:	f6 2e       	mov	r15, r22
 47e:	dc 01       	movw	r26, r24
 480:	ed 91       	ld	r30, X+
 482:	fc 91       	ld	r31, X
 484:	01 90       	ld	r0, Z+
 486:	f0 81       	ld	r31, Z
 488:	e0 2d       	mov	r30, r0
 48a:	2a 83       	std	Y+2, r18	; 0x02
 48c:	3b 83       	std	Y+3, r19	; 0x03
 48e:	49 83       	std	Y+1, r20	; 0x01
 490:	09 95       	icall
 492:	d6 01       	movw	r26, r12
 494:	ed 91       	ld	r30, X+
 496:	fc 91       	ld	r31, X
 498:	04 80       	ldd	r0, Z+4	; 0x04
 49a:	f5 81       	ldd	r31, Z+5	; 0x05
 49c:	e0 2d       	mov	r30, r0
 49e:	6f 2d       	mov	r22, r15
 4a0:	c6 01       	movw	r24, r12
 4a2:	09 95       	icall
 4a4:	d6 01       	movw	r26, r12
 4a6:	ed 91       	ld	r30, X+
 4a8:	fc 91       	ld	r31, X
 4aa:	04 80       	ldd	r0, Z+4	; 0x04
 4ac:	f5 81       	ldd	r31, Z+5	; 0x05
 4ae:	e0 2d       	mov	r30, r0
 4b0:	49 81       	ldd	r20, Y+1	; 0x01
 4b2:	64 2f       	mov	r22, r20
 4b4:	c6 01       	movw	r24, r12
 4b6:	09 95       	icall
 4b8:	d6 01       	movw	r26, r12
 4ba:	ed 91       	ld	r30, X+
 4bc:	fc 91       	ld	r31, X
 4be:	01 90       	ld	r0, Z+
 4c0:	f0 81       	ld	r31, Z
 4c2:	e0 2d       	mov	r30, r0
 4c4:	c6 01       	movw	r24, r12
 4c6:	09 95       	icall
 4c8:	d6 01       	movw	r26, r12
 4ca:	ed 91       	ld	r30, X+
 4cc:	fc 91       	ld	r31, X
 4ce:	6f 2d       	mov	r22, r15
 4d0:	61 60       	ori	r22, 0x01	; 1
 4d2:	04 80       	ldd	r0, Z+4	; 0x04
 4d4:	f5 81       	ldd	r31, Z+5	; 0x05
 4d6:	e0 2d       	mov	r30, r0
 4d8:	c6 01       	movw	r24, r12
 4da:	09 95       	icall
 4dc:	2a 81       	ldd	r18, Y+2	; 0x02
 4de:	e2 2e       	mov	r14, r18
 4e0:	3b 81       	ldd	r19, Y+3	; 0x03
 4e2:	f3 2e       	mov	r15, r19
 4e4:	0e 0d       	add	r16, r14
 4e6:	1f 1d       	adc	r17, r15
 4e8:	d6 01       	movw	r26, r12
 4ea:	ed 91       	ld	r30, X+
 4ec:	fc 91       	ld	r31, X
 4ee:	e0 16       	cp	r14, r16
 4f0:	f1 06       	cpc	r15, r17
 4f2:	51 f0       	breq	.+20     	; 0x508 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
 4f4:	06 80       	ldd	r0, Z+6	; 0x06
 4f6:	f7 81       	ldd	r31, Z+7	; 0x07
 4f8:	e0 2d       	mov	r30, r0
 4fa:	61 e0       	ldi	r22, 0x01	; 1
 4fc:	c6 01       	movw	r24, r12
 4fe:	09 95       	icall
 500:	f7 01       	movw	r30, r14
 502:	81 93       	st	Z+, r24
 504:	7f 01       	movw	r14, r30
 506:	f0 cf       	rjmp	.-32     	; 0x4e8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
 508:	02 80       	ldd	r0, Z+2	; 0x02
 50a:	f3 81       	ldd	r31, Z+3	; 0x03
 50c:	e0 2d       	mov	r30, r0
 50e:	c6 01       	movw	r24, r12
 510:	0f 90       	pop	r0
 512:	0f 90       	pop	r0
 514:	0f 90       	pop	r0
 516:	df 91       	pop	r29
 518:	cf 91       	pop	r28
 51a:	1f 91       	pop	r17
 51c:	0f 91       	pop	r16
 51e:	ff 90       	pop	r15
 520:	ef 90       	pop	r14
 522:	df 90       	pop	r13
 524:	cf 90       	pop	r12
 526:	09 94       	ijmp

00000528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 528:	88 23       	and	r24, r24
 52a:	21 f0       	breq	.+8      	; 0x534 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 52c:	bf 98       	cbi	0x17, 7	; 23
 52e:	82 30       	cpi	r24, 0x02	; 2
 530:	19 f0       	breq	.+6      	; 0x538 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 532:	08 95       	ret
 534:	bf 9a       	sbi	0x17, 7	; 23
 536:	08 95       	ret
 538:	c7 9a       	sbi	0x18, 7	; 24
 53a:	08 95       	ret

0000053c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
 53c:	00 00       	nop
 53e:	00 00       	nop
 540:	08 95       	ret

00000542 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
 542:	1f 93       	push	r17
 544:	cf 93       	push	r28
 546:	df 93       	push	r29
 548:	16 2f       	mov	r17, r22
 54a:	bd 98       	cbi	0x17, 5	; 23
 54c:	80 e0       	ldi	r24, 0x00	; 0
 54e:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 552:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 556:	d8 e0       	ldi	r29, 0x08	; 8
 558:	c0 e0       	ldi	r28, 0x00	; 0
 55a:	cc 0f       	add	r28, r28
 55c:	81 e0       	ldi	r24, 0x01	; 1
 55e:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 562:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 566:	b5 99       	sbic	0x16, 5	; 22
 568:	c1 60       	ori	r28, 0x01	; 1
 56a:	80 e0       	ldi	r24, 0x00	; 0
 56c:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 570:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 574:	d1 50       	subi	r29, 0x01	; 1
 576:	89 f7       	brne	.-30     	; 0x55a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
 578:	11 23       	and	r17, r17
 57a:	11 f0       	breq	.+4      	; 0x580 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
 57c:	bd 9a       	sbi	0x17, 5	; 23
 57e:	01 c0       	rjmp	.+2      	; 0x582 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
 580:	bd 98       	cbi	0x17, 5	; 23
 582:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 586:	81 e0       	ldi	r24, 0x01	; 1
 588:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 58c:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 590:	80 e0       	ldi	r24, 0x00	; 0
 592:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 596:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 59a:	bd 98       	cbi	0x17, 5	; 23
 59c:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5a0:	8c 2f       	mov	r24, r28
 5a2:	df 91       	pop	r29
 5a4:	cf 91       	pop	r28
 5a6:	1f 91       	pop	r17
 5a8:	08 95       	ret

000005aa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
 5aa:	cf 93       	push	r28
 5ac:	df 93       	push	r29
 5ae:	d6 2f       	mov	r29, r22
 5b0:	c8 e0       	ldi	r28, 0x08	; 8
 5b2:	80 e0       	ldi	r24, 0x00	; 0
 5b4:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5b8:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5bc:	d7 ff       	sbrs	r29, 7
 5be:	02 c0       	rjmp	.+4      	; 0x5c4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
 5c0:	bd 98       	cbi	0x17, 5	; 23
 5c2:	01 c0       	rjmp	.+2      	; 0x5c6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
 5c4:	bd 9a       	sbi	0x17, 5	; 23
 5c6:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5ca:	81 e0       	ldi	r24, 0x01	; 1
 5cc:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5d0:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5d4:	dd 0f       	add	r29, r29
 5d6:	c1 50       	subi	r28, 0x01	; 1
 5d8:	61 f7       	brne	.-40     	; 0x5b2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
 5da:	80 e0       	ldi	r24, 0x00	; 0
 5dc:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5e0:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5e4:	bd 98       	cbi	0x17, 5	; 23
 5e6:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5ea:	81 e0       	ldi	r24, 0x01	; 1
 5ec:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5f0:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5f4:	c6 b3       	in	r28, 0x16	; 22
 5f6:	80 e0       	ldi	r24, 0x00	; 0
 5f8:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5fc:	0e 94 9e 02 	call	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 600:	c5 fb       	bst	r28, 5
 602:	cc 27       	eor	r28, r28
 604:	c0 f9       	bld	r28, 0
 606:	81 e0       	ldi	r24, 0x01	; 1
 608:	8c 27       	eor	r24, r28
 60a:	df 91       	pop	r29
 60c:	cf 91       	pop	r28
 60e:	08 95       	ret

00000610 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
 610:	81 e0       	ldi	r24, 0x01	; 1
 612:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 616:	bd 98       	cbi	0x17, 5	; 23
 618:	81 e0       	ldi	r24, 0x01	; 1
 61a:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 61e:	bd 9a       	sbi	0x17, 5	; 23
 620:	80 e0       	ldi	r24, 0x00	; 0
 622:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 626:	bd 98       	cbi	0x17, 5	; 23
 628:	0c 94 9e 02 	jmp	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000062c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
 62c:	80 e0       	ldi	r24, 0x00	; 0
 62e:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 632:	bd 9a       	sbi	0x17, 5	; 23
 634:	81 e0       	ldi	r24, 0x01	; 1
 636:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 63a:	bd 9a       	sbi	0x17, 5	; 23
 63c:	81 e0       	ldi	r24, 0x01	; 1
 63e:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 642:	bd 98       	cbi	0x17, 5	; 23
 644:	0c 94 9e 02 	jmp	0x53c	; 0x53c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000648 <_GLOBAL__sub_I_i2c>:
 648:	84 e7       	ldi	r24, 0x74	; 116
 64a:	90 e0       	ldi	r25, 0x00	; 0
 64c:	90 93 89 00 	sts	0x0089, r25
 650:	80 93 88 00 	sts	0x0088, r24
 654:	bd 98       	cbi	0x17, 5	; 23
 656:	81 e0       	ldi	r24, 0x01	; 1
 658:	0e 94 94 02 	call	0x528	; 0x528 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 65c:	c5 98       	cbi	0x18, 5	; 24
 65e:	c7 98       	cbi	0x18, 7	; 24
 660:	08 95       	ret

00000662 <_ZdlPv>:
 662:	0c 94 77 04 	jmp	0x8ee	; 0x8ee <free>

00000666 <_ZN5TimerC1Ev>:
 666:	ed e8       	ldi	r30, 0x8D	; 141
 668:	f0 e0       	ldi	r31, 0x00	; 0
 66a:	11 82       	std	Z+1, r1	; 0x01
 66c:	10 82       	st	Z, r1
 66e:	13 82       	std	Z+3, r1	; 0x03
 670:	12 82       	std	Z+2, r1	; 0x02
 672:	15 82       	std	Z+5, r1	; 0x05
 674:	14 82       	std	Z+4, r1	; 0x04
 676:	16 82       	std	Z+6, r1	; 0x06
 678:	37 96       	adiw	r30, 0x07	; 7
 67a:	80 e0       	ldi	r24, 0x00	; 0
 67c:	e5 3c       	cpi	r30, 0xC5	; 197
 67e:	f8 07       	cpc	r31, r24
 680:	a1 f7       	brne	.-24     	; 0x66a <_ZN5TimerC1Ev+0x4>
 682:	83 b7       	in	r24, 0x33	; 51
 684:	88 60       	ori	r24, 0x08	; 8
 686:	83 bf       	out	0x33, r24	; 51
 688:	8b e9       	ldi	r24, 0x9B	; 155
 68a:	8c bf       	out	0x3c, r24	; 60
 68c:	83 e0       	ldi	r24, 0x03	; 3
 68e:	83 bf       	out	0x33, r24	; 51
 690:	89 b7       	in	r24, 0x39	; 57
 692:	82 60       	ori	r24, 0x02	; 2
 694:	89 bf       	out	0x39, r24	; 57
 696:	78 94       	sei
 698:	08 95       	ret

0000069a <_ZN5Timer8add_taskEP4Taskj>:
 69a:	f8 94       	cli
 69c:	ed e8       	ldi	r30, 0x8D	; 141
 69e:	f0 e0       	ldi	r31, 0x00	; 0
 6a0:	80 e0       	ldi	r24, 0x00	; 0
 6a2:	90 e0       	ldi	r25, 0x00	; 0
 6a4:	20 81       	ld	r18, Z
 6a6:	31 81       	ldd	r19, Z+1	; 0x01
 6a8:	23 2b       	or	r18, r19
 6aa:	81 f4       	brne	.+32     	; 0x6cc <_ZN5Timer8add_taskEP4Taskj+0x32>
 6ac:	27 e0       	ldi	r18, 0x07	; 7
 6ae:	28 9f       	mul	r18, r24
 6b0:	f0 01       	movw	r30, r0
 6b2:	29 9f       	mul	r18, r25
 6b4:	f0 0d       	add	r31, r0
 6b6:	11 24       	eor	r1, r1
 6b8:	e3 57       	subi	r30, 0x73	; 115
 6ba:	ff 4f       	sbci	r31, 0xFF	; 255
 6bc:	71 83       	std	Z+1, r23	; 0x01
 6be:	60 83       	st	Z, r22
 6c0:	53 83       	std	Z+3, r21	; 0x03
 6c2:	42 83       	std	Z+2, r20	; 0x02
 6c4:	55 83       	std	Z+5, r21	; 0x05
 6c6:	44 83       	std	Z+4, r20	; 0x04
 6c8:	16 82       	std	Z+6, r1	; 0x06
 6ca:	07 c0       	rjmp	.+14     	; 0x6da <_ZN5Timer8add_taskEP4Taskj+0x40>
 6cc:	01 96       	adiw	r24, 0x01	; 1
 6ce:	37 96       	adiw	r30, 0x07	; 7
 6d0:	88 30       	cpi	r24, 0x08	; 8
 6d2:	91 05       	cpc	r25, r1
 6d4:	39 f7       	brne	.-50     	; 0x6a4 <_ZN5Timer8add_taskEP4Taskj+0xa>
 6d6:	8f ef       	ldi	r24, 0xFF	; 255
 6d8:	9f ef       	ldi	r25, 0xFF	; 255
 6da:	78 94       	sei
 6dc:	08 95       	ret

000006de <_ZN5Timer4mainEv>:
 6de:	cf 93       	push	r28
 6e0:	df 93       	push	r29
 6e2:	c3 e9       	ldi	r28, 0x93	; 147
 6e4:	d0 e0       	ldi	r29, 0x00	; 0
 6e6:	fe 01       	movw	r30, r28
 6e8:	36 97       	sbiw	r30, 0x06	; 6
 6ea:	80 81       	ld	r24, Z
 6ec:	91 81       	ldd	r25, Z+1	; 0x01
 6ee:	00 97       	sbiw	r24, 0x00	; 0
 6f0:	59 f0       	breq	.+22     	; 0x708 <_ZN5Timer4mainEv+0x2a>
 6f2:	28 81       	ld	r18, Y
 6f4:	22 23       	and	r18, r18
 6f6:	41 f0       	breq	.+16     	; 0x708 <_ZN5Timer4mainEv+0x2a>
 6f8:	18 82       	st	Y, r1
 6fa:	dc 01       	movw	r26, r24
 6fc:	ed 91       	ld	r30, X+
 6fe:	fc 91       	ld	r31, X
 700:	04 80       	ldd	r0, Z+4	; 0x04
 702:	f5 81       	ldd	r31, Z+5	; 0x05
 704:	e0 2d       	mov	r30, r0
 706:	09 95       	icall
 708:	27 96       	adiw	r28, 0x07	; 7
 70a:	b0 e0       	ldi	r27, 0x00	; 0
 70c:	cb 3c       	cpi	r28, 0xCB	; 203
 70e:	db 07       	cpc	r29, r27
 710:	51 f7       	brne	.-44     	; 0x6e6 <_ZN5Timer4mainEv+0x8>
 712:	df 91       	pop	r29
 714:	cf 91       	pop	r28
 716:	08 95       	ret

00000718 <__vector_19>:
 718:	1f 92       	push	r1
 71a:	0f 92       	push	r0
 71c:	0f b6       	in	r0, 0x3f	; 63
 71e:	0f 92       	push	r0
 720:	11 24       	eor	r1, r1
 722:	8f 93       	push	r24
 724:	9f 93       	push	r25
 726:	af 93       	push	r26
 728:	bf 93       	push	r27
 72a:	ef 93       	push	r30
 72c:	ff 93       	push	r31
 72e:	ed e8       	ldi	r30, 0x8D	; 141
 730:	f0 e0       	ldi	r31, 0x00	; 0
 732:	a3 e9       	ldi	r26, 0x93	; 147
 734:	b0 e0       	ldi	r27, 0x00	; 0
 736:	84 81       	ldd	r24, Z+4	; 0x04
 738:	95 81       	ldd	r25, Z+5	; 0x05
 73a:	00 97       	sbiw	r24, 0x00	; 0
 73c:	21 f0       	breq	.+8      	; 0x746 <__vector_19+0x2e>
 73e:	01 97       	sbiw	r24, 0x01	; 1
 740:	95 83       	std	Z+5, r25	; 0x05
 742:	84 83       	std	Z+4, r24	; 0x04
 744:	09 c0       	rjmp	.+18     	; 0x758 <__vector_19+0x40>
 746:	82 81       	ldd	r24, Z+2	; 0x02
 748:	93 81       	ldd	r25, Z+3	; 0x03
 74a:	95 83       	std	Z+5, r25	; 0x05
 74c:	84 83       	std	Z+4, r24	; 0x04
 74e:	8c 91       	ld	r24, X
 750:	8f 3f       	cpi	r24, 0xFF	; 255
 752:	11 f0       	breq	.+4      	; 0x758 <__vector_19+0x40>
 754:	8f 5f       	subi	r24, 0xFF	; 255
 756:	8c 93       	st	X, r24
 758:	37 96       	adiw	r30, 0x07	; 7
 75a:	17 96       	adiw	r26, 0x07	; 7
 75c:	80 e0       	ldi	r24, 0x00	; 0
 75e:	e5 3c       	cpi	r30, 0xC5	; 197
 760:	f8 07       	cpc	r31, r24
 762:	49 f7       	brne	.-46     	; 0x736 <__vector_19+0x1e>
 764:	80 91 c5 00 	lds	r24, 0x00C5
 768:	90 91 c6 00 	lds	r25, 0x00C6
 76c:	a0 91 c7 00 	lds	r26, 0x00C7
 770:	b0 91 c8 00 	lds	r27, 0x00C8
 774:	01 96       	adiw	r24, 0x01	; 1
 776:	a1 1d       	adc	r26, r1
 778:	b1 1d       	adc	r27, r1
 77a:	80 93 c5 00 	sts	0x00C5, r24
 77e:	90 93 c6 00 	sts	0x00C6, r25
 782:	a0 93 c7 00 	sts	0x00C7, r26
 786:	b0 93 c8 00 	sts	0x00C8, r27
 78a:	ff 91       	pop	r31
 78c:	ef 91       	pop	r30
 78e:	bf 91       	pop	r27
 790:	af 91       	pop	r26
 792:	9f 91       	pop	r25
 794:	8f 91       	pop	r24
 796:	0f 90       	pop	r0
 798:	0f be       	out	0x3f, r0	; 63
 79a:	0f 90       	pop	r0
 79c:	1f 90       	pop	r1
 79e:	18 95       	reti

000007a0 <_GLOBAL__sub_I_g_rt_time>:
 7a0:	8c e8       	ldi	r24, 0x8C	; 140
 7a2:	90 e0       	ldi	r25, 0x00	; 0
 7a4:	0c 94 33 03 	jmp	0x666	; 0x666 <_ZN5TimerC1Ev>

000007a8 <_GLOBAL__sub_I_terminal>:
 7a8:	89 ec       	ldi	r24, 0xC9	; 201
 7aa:	90 e0       	ldi	r25, 0x00	; 0
 7ac:	0c 94 9a 00 	jmp	0x134	; 0x134 <_ZN5USARTC1Ev>

000007b0 <_GLOBAL__sub_D_terminal>:
 7b0:	89 ec       	ldi	r24, 0xC9	; 201
 7b2:	90 e0       	ldi	r25, 0x00	; 0
 7b4:	0c 94 a4 00 	jmp	0x148	; 0x148 <_ZN5USARTD1Ev>

000007b8 <__tablejump2__>:
 7b8:	ee 0f       	add	r30, r30
 7ba:	ff 1f       	adc	r31, r31
 7bc:	05 90       	lpm	r0, Z+
 7be:	f4 91       	lpm	r31, Z
 7c0:	e0 2d       	mov	r30, r0
 7c2:	09 94       	ijmp

000007c4 <malloc>:
 7c4:	cf 93       	push	r28
 7c6:	df 93       	push	r29
 7c8:	82 30       	cpi	r24, 0x02	; 2
 7ca:	91 05       	cpc	r25, r1
 7cc:	10 f4       	brcc	.+4      	; 0x7d2 <malloc+0xe>
 7ce:	82 e0       	ldi	r24, 0x02	; 2
 7d0:	90 e0       	ldi	r25, 0x00	; 0
 7d2:	e0 91 cc 00 	lds	r30, 0x00CC
 7d6:	f0 91 cd 00 	lds	r31, 0x00CD
 7da:	20 e0       	ldi	r18, 0x00	; 0
 7dc:	30 e0       	ldi	r19, 0x00	; 0
 7de:	c0 e0       	ldi	r28, 0x00	; 0
 7e0:	d0 e0       	ldi	r29, 0x00	; 0
 7e2:	30 97       	sbiw	r30, 0x00	; 0
 7e4:	11 f1       	breq	.+68     	; 0x82a <malloc+0x66>
 7e6:	40 81       	ld	r20, Z
 7e8:	51 81       	ldd	r21, Z+1	; 0x01
 7ea:	48 17       	cp	r20, r24
 7ec:	59 07       	cpc	r21, r25
 7ee:	c0 f0       	brcs	.+48     	; 0x820 <malloc+0x5c>
 7f0:	48 17       	cp	r20, r24
 7f2:	59 07       	cpc	r21, r25
 7f4:	61 f4       	brne	.+24     	; 0x80e <malloc+0x4a>
 7f6:	82 81       	ldd	r24, Z+2	; 0x02
 7f8:	93 81       	ldd	r25, Z+3	; 0x03
 7fa:	20 97       	sbiw	r28, 0x00	; 0
 7fc:	19 f0       	breq	.+6      	; 0x804 <malloc+0x40>
 7fe:	9b 83       	std	Y+3, r25	; 0x03
 800:	8a 83       	std	Y+2, r24	; 0x02
 802:	2b c0       	rjmp	.+86     	; 0x85a <malloc+0x96>
 804:	90 93 cd 00 	sts	0x00CD, r25
 808:	80 93 cc 00 	sts	0x00CC, r24
 80c:	26 c0       	rjmp	.+76     	; 0x85a <malloc+0x96>
 80e:	21 15       	cp	r18, r1
 810:	31 05       	cpc	r19, r1
 812:	19 f0       	breq	.+6      	; 0x81a <malloc+0x56>
 814:	42 17       	cp	r20, r18
 816:	53 07       	cpc	r21, r19
 818:	18 f4       	brcc	.+6      	; 0x820 <malloc+0x5c>
 81a:	9a 01       	movw	r18, r20
 81c:	be 01       	movw	r22, r28
 81e:	df 01       	movw	r26, r30
 820:	ef 01       	movw	r28, r30
 822:	02 80       	ldd	r0, Z+2	; 0x02
 824:	f3 81       	ldd	r31, Z+3	; 0x03
 826:	e0 2d       	mov	r30, r0
 828:	dc cf       	rjmp	.-72     	; 0x7e2 <malloc+0x1e>
 82a:	21 15       	cp	r18, r1
 82c:	31 05       	cpc	r19, r1
 82e:	09 f1       	breq	.+66     	; 0x872 <malloc+0xae>
 830:	28 1b       	sub	r18, r24
 832:	39 0b       	sbc	r19, r25
 834:	24 30       	cpi	r18, 0x04	; 4
 836:	31 05       	cpc	r19, r1
 838:	90 f4       	brcc	.+36     	; 0x85e <malloc+0x9a>
 83a:	12 96       	adiw	r26, 0x02	; 2
 83c:	8d 91       	ld	r24, X+
 83e:	9c 91       	ld	r25, X
 840:	13 97       	sbiw	r26, 0x03	; 3
 842:	61 15       	cp	r22, r1
 844:	71 05       	cpc	r23, r1
 846:	21 f0       	breq	.+8      	; 0x850 <malloc+0x8c>
 848:	fb 01       	movw	r30, r22
 84a:	93 83       	std	Z+3, r25	; 0x03
 84c:	82 83       	std	Z+2, r24	; 0x02
 84e:	04 c0       	rjmp	.+8      	; 0x858 <malloc+0x94>
 850:	90 93 cd 00 	sts	0x00CD, r25
 854:	80 93 cc 00 	sts	0x00CC, r24
 858:	fd 01       	movw	r30, r26
 85a:	32 96       	adiw	r30, 0x02	; 2
 85c:	44 c0       	rjmp	.+136    	; 0x8e6 <malloc+0x122>
 85e:	fd 01       	movw	r30, r26
 860:	e2 0f       	add	r30, r18
 862:	f3 1f       	adc	r31, r19
 864:	81 93       	st	Z+, r24
 866:	91 93       	st	Z+, r25
 868:	22 50       	subi	r18, 0x02	; 2
 86a:	31 09       	sbc	r19, r1
 86c:	2d 93       	st	X+, r18
 86e:	3c 93       	st	X, r19
 870:	3a c0       	rjmp	.+116    	; 0x8e6 <malloc+0x122>
 872:	20 91 ca 00 	lds	r18, 0x00CA
 876:	30 91 cb 00 	lds	r19, 0x00CB
 87a:	23 2b       	or	r18, r19
 87c:	41 f4       	brne	.+16     	; 0x88e <malloc+0xca>
 87e:	20 91 62 00 	lds	r18, 0x0062
 882:	30 91 63 00 	lds	r19, 0x0063
 886:	30 93 cb 00 	sts	0x00CB, r19
 88a:	20 93 ca 00 	sts	0x00CA, r18
 88e:	20 91 60 00 	lds	r18, 0x0060
 892:	30 91 61 00 	lds	r19, 0x0061
 896:	21 15       	cp	r18, r1
 898:	31 05       	cpc	r19, r1
 89a:	41 f4       	brne	.+16     	; 0x8ac <malloc+0xe8>
 89c:	2d b7       	in	r18, 0x3d	; 61
 89e:	3e b7       	in	r19, 0x3e	; 62
 8a0:	40 91 64 00 	lds	r20, 0x0064
 8a4:	50 91 65 00 	lds	r21, 0x0065
 8a8:	24 1b       	sub	r18, r20
 8aa:	35 0b       	sbc	r19, r21
 8ac:	e0 91 ca 00 	lds	r30, 0x00CA
 8b0:	f0 91 cb 00 	lds	r31, 0x00CB
 8b4:	e2 17       	cp	r30, r18
 8b6:	f3 07       	cpc	r31, r19
 8b8:	a0 f4       	brcc	.+40     	; 0x8e2 <malloc+0x11e>
 8ba:	2e 1b       	sub	r18, r30
 8bc:	3f 0b       	sbc	r19, r31
 8be:	28 17       	cp	r18, r24
 8c0:	39 07       	cpc	r19, r25
 8c2:	78 f0       	brcs	.+30     	; 0x8e2 <malloc+0x11e>
 8c4:	ac 01       	movw	r20, r24
 8c6:	4e 5f       	subi	r20, 0xFE	; 254
 8c8:	5f 4f       	sbci	r21, 0xFF	; 255
 8ca:	24 17       	cp	r18, r20
 8cc:	35 07       	cpc	r19, r21
 8ce:	48 f0       	brcs	.+18     	; 0x8e2 <malloc+0x11e>
 8d0:	4e 0f       	add	r20, r30
 8d2:	5f 1f       	adc	r21, r31
 8d4:	50 93 cb 00 	sts	0x00CB, r21
 8d8:	40 93 ca 00 	sts	0x00CA, r20
 8dc:	81 93       	st	Z+, r24
 8de:	91 93       	st	Z+, r25
 8e0:	02 c0       	rjmp	.+4      	; 0x8e6 <malloc+0x122>
 8e2:	e0 e0       	ldi	r30, 0x00	; 0
 8e4:	f0 e0       	ldi	r31, 0x00	; 0
 8e6:	cf 01       	movw	r24, r30
 8e8:	df 91       	pop	r29
 8ea:	cf 91       	pop	r28
 8ec:	08 95       	ret

000008ee <free>:
 8ee:	0f 93       	push	r16
 8f0:	1f 93       	push	r17
 8f2:	cf 93       	push	r28
 8f4:	df 93       	push	r29
 8f6:	00 97       	sbiw	r24, 0x00	; 0
 8f8:	09 f4       	brne	.+2      	; 0x8fc <free+0xe>
 8fa:	8c c0       	rjmp	.+280    	; 0xa14 <free+0x126>
 8fc:	fc 01       	movw	r30, r24
 8fe:	32 97       	sbiw	r30, 0x02	; 2
 900:	13 82       	std	Z+3, r1	; 0x03
 902:	12 82       	std	Z+2, r1	; 0x02
 904:	00 91 cc 00 	lds	r16, 0x00CC
 908:	10 91 cd 00 	lds	r17, 0x00CD
 90c:	01 15       	cp	r16, r1
 90e:	11 05       	cpc	r17, r1
 910:	81 f4       	brne	.+32     	; 0x932 <free+0x44>
 912:	20 81       	ld	r18, Z
 914:	31 81       	ldd	r19, Z+1	; 0x01
 916:	82 0f       	add	r24, r18
 918:	93 1f       	adc	r25, r19
 91a:	20 91 ca 00 	lds	r18, 0x00CA
 91e:	30 91 cb 00 	lds	r19, 0x00CB
 922:	28 17       	cp	r18, r24
 924:	39 07       	cpc	r19, r25
 926:	79 f5       	brne	.+94     	; 0x986 <free+0x98>
 928:	f0 93 cb 00 	sts	0x00CB, r31
 92c:	e0 93 ca 00 	sts	0x00CA, r30
 930:	71 c0       	rjmp	.+226    	; 0xa14 <free+0x126>
 932:	d8 01       	movw	r26, r16
 934:	40 e0       	ldi	r20, 0x00	; 0
 936:	50 e0       	ldi	r21, 0x00	; 0
 938:	ae 17       	cp	r26, r30
 93a:	bf 07       	cpc	r27, r31
 93c:	50 f4       	brcc	.+20     	; 0x952 <free+0x64>
 93e:	12 96       	adiw	r26, 0x02	; 2
 940:	2d 91       	ld	r18, X+
 942:	3c 91       	ld	r19, X
 944:	13 97       	sbiw	r26, 0x03	; 3
 946:	ad 01       	movw	r20, r26
 948:	21 15       	cp	r18, r1
 94a:	31 05       	cpc	r19, r1
 94c:	09 f1       	breq	.+66     	; 0x990 <free+0xa2>
 94e:	d9 01       	movw	r26, r18
 950:	f3 cf       	rjmp	.-26     	; 0x938 <free+0x4a>
 952:	9d 01       	movw	r18, r26
 954:	da 01       	movw	r26, r20
 956:	33 83       	std	Z+3, r19	; 0x03
 958:	22 83       	std	Z+2, r18	; 0x02
 95a:	60 81       	ld	r22, Z
 95c:	71 81       	ldd	r23, Z+1	; 0x01
 95e:	86 0f       	add	r24, r22
 960:	97 1f       	adc	r25, r23
 962:	82 17       	cp	r24, r18
 964:	93 07       	cpc	r25, r19
 966:	69 f4       	brne	.+26     	; 0x982 <free+0x94>
 968:	ec 01       	movw	r28, r24
 96a:	28 81       	ld	r18, Y
 96c:	39 81       	ldd	r19, Y+1	; 0x01
 96e:	26 0f       	add	r18, r22
 970:	37 1f       	adc	r19, r23
 972:	2e 5f       	subi	r18, 0xFE	; 254
 974:	3f 4f       	sbci	r19, 0xFF	; 255
 976:	31 83       	std	Z+1, r19	; 0x01
 978:	20 83       	st	Z, r18
 97a:	8a 81       	ldd	r24, Y+2	; 0x02
 97c:	9b 81       	ldd	r25, Y+3	; 0x03
 97e:	93 83       	std	Z+3, r25	; 0x03
 980:	82 83       	std	Z+2, r24	; 0x02
 982:	45 2b       	or	r20, r21
 984:	29 f4       	brne	.+10     	; 0x990 <free+0xa2>
 986:	f0 93 cd 00 	sts	0x00CD, r31
 98a:	e0 93 cc 00 	sts	0x00CC, r30
 98e:	42 c0       	rjmp	.+132    	; 0xa14 <free+0x126>
 990:	13 96       	adiw	r26, 0x03	; 3
 992:	fc 93       	st	X, r31
 994:	ee 93       	st	-X, r30
 996:	12 97       	sbiw	r26, 0x02	; 2
 998:	ed 01       	movw	r28, r26
 99a:	49 91       	ld	r20, Y+
 99c:	59 91       	ld	r21, Y+
 99e:	9e 01       	movw	r18, r28
 9a0:	24 0f       	add	r18, r20
 9a2:	35 1f       	adc	r19, r21
 9a4:	e2 17       	cp	r30, r18
 9a6:	f3 07       	cpc	r31, r19
 9a8:	71 f4       	brne	.+28     	; 0x9c6 <free+0xd8>
 9aa:	80 81       	ld	r24, Z
 9ac:	91 81       	ldd	r25, Z+1	; 0x01
 9ae:	84 0f       	add	r24, r20
 9b0:	95 1f       	adc	r25, r21
 9b2:	02 96       	adiw	r24, 0x02	; 2
 9b4:	11 96       	adiw	r26, 0x01	; 1
 9b6:	9c 93       	st	X, r25
 9b8:	8e 93       	st	-X, r24
 9ba:	82 81       	ldd	r24, Z+2	; 0x02
 9bc:	93 81       	ldd	r25, Z+3	; 0x03
 9be:	13 96       	adiw	r26, 0x03	; 3
 9c0:	9c 93       	st	X, r25
 9c2:	8e 93       	st	-X, r24
 9c4:	12 97       	sbiw	r26, 0x02	; 2
 9c6:	e0 e0       	ldi	r30, 0x00	; 0
 9c8:	f0 e0       	ldi	r31, 0x00	; 0
 9ca:	d8 01       	movw	r26, r16
 9cc:	12 96       	adiw	r26, 0x02	; 2
 9ce:	8d 91       	ld	r24, X+
 9d0:	9c 91       	ld	r25, X
 9d2:	13 97       	sbiw	r26, 0x03	; 3
 9d4:	00 97       	sbiw	r24, 0x00	; 0
 9d6:	19 f0       	breq	.+6      	; 0x9de <free+0xf0>
 9d8:	f8 01       	movw	r30, r16
 9da:	8c 01       	movw	r16, r24
 9dc:	f6 cf       	rjmp	.-20     	; 0x9ca <free+0xdc>
 9de:	8d 91       	ld	r24, X+
 9e0:	9c 91       	ld	r25, X
 9e2:	98 01       	movw	r18, r16
 9e4:	2e 5f       	subi	r18, 0xFE	; 254
 9e6:	3f 4f       	sbci	r19, 0xFF	; 255
 9e8:	82 0f       	add	r24, r18
 9ea:	93 1f       	adc	r25, r19
 9ec:	20 91 ca 00 	lds	r18, 0x00CA
 9f0:	30 91 cb 00 	lds	r19, 0x00CB
 9f4:	28 17       	cp	r18, r24
 9f6:	39 07       	cpc	r19, r25
 9f8:	69 f4       	brne	.+26     	; 0xa14 <free+0x126>
 9fa:	30 97       	sbiw	r30, 0x00	; 0
 9fc:	29 f4       	brne	.+10     	; 0xa08 <free+0x11a>
 9fe:	10 92 cd 00 	sts	0x00CD, r1
 a02:	10 92 cc 00 	sts	0x00CC, r1
 a06:	02 c0       	rjmp	.+4      	; 0xa0c <free+0x11e>
 a08:	13 82       	std	Z+3, r1	; 0x03
 a0a:	12 82       	std	Z+2, r1	; 0x02
 a0c:	10 93 cb 00 	sts	0x00CB, r17
 a10:	00 93 ca 00 	sts	0x00CA, r16
 a14:	df 91       	pop	r29
 a16:	cf 91       	pop	r28
 a18:	1f 91       	pop	r17
 a1a:	0f 91       	pop	r16
 a1c:	08 95       	ret

00000a1e <__do_global_dtors>:
 a1e:	10 e0       	ldi	r17, 0x00	; 0
 a20:	cd e2       	ldi	r28, 0x2D	; 45
 a22:	d0 e0       	ldi	r29, 0x00	; 0
 a24:	04 c0       	rjmp	.+8      	; 0xa2e <__do_global_dtors+0x10>
 a26:	fe 01       	movw	r30, r28
 a28:	0e 94 dc 03 	call	0x7b8	; 0x7b8 <__tablejump2__>
 a2c:	21 96       	adiw	r28, 0x01	; 1
 a2e:	ce 32       	cpi	r28, 0x2E	; 46
 a30:	d1 07       	cpc	r29, r17
 a32:	c9 f7       	brne	.-14     	; 0xa26 <__do_global_dtors+0x8>
 a34:	f8 94       	cli

00000a36 <__stop_program>:
 a36:	ff cf       	rjmp	.-2      	; 0xa36 <__stop_program>
