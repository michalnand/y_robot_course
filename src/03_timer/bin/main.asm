
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 2f 00 	jmp	0x5e	; 0x5e <__dtors_end>
   4:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
   8:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
   c:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  10:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  14:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  18:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  1c:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  20:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  24:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  28:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  2c:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  30:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  34:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  38:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  3c:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  40:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  44:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  48:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>
  4c:	0c 94 bb 03 	jmp	0x776	; 0x776 <__vector_19>
  50:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>

00000054 <__ctors_start>:
  54:	9e 00       	.word	0x009e	; ????
  56:	2d 03       	fmul	r18, r21
  58:	25 04       	cpc	r2, r5
  5a:	29 04       	cpc	r2, r9

0000005c <__ctors_end>:
  5c:	2d 04       	cpc	r2, r13

0000005e <__dtors_end>:
  5e:	11 24       	eor	r1, r1
  60:	1f be       	out	0x3f, r1	; 63
  62:	cf e5       	ldi	r28, 0x5F	; 95
  64:	d4 e0       	ldi	r29, 0x04	; 4
  66:	de bf       	out	0x3e, r29	; 62
  68:	cd bf       	out	0x3d, r28	; 61

0000006a <__do_copy_data>:
  6a:	10 e0       	ldi	r17, 0x00	; 0
  6c:	a0 e6       	ldi	r26, 0x60	; 96
  6e:	b0 e0       	ldi	r27, 0x00	; 0
  70:	e8 e8       	ldi	r30, 0x88	; 136
  72:	f8 e0       	ldi	r31, 0x08	; 8
  74:	02 c0       	rjmp	.+4      	; 0x7a <__do_copy_data+0x10>
  76:	05 90       	lpm	r0, Z+
  78:	0d 92       	st	X+, r0
  7a:	a8 37       	cpi	r26, 0x78	; 120
  7c:	b1 07       	cpc	r27, r17
  7e:	d9 f7       	brne	.-10     	; 0x76 <__do_copy_data+0xc>

00000080 <__do_clear_bss>:
  80:	20 e0       	ldi	r18, 0x00	; 0
  82:	a8 e7       	ldi	r26, 0x78	; 120
  84:	b0 e0       	ldi	r27, 0x00	; 0
  86:	01 c0       	rjmp	.+2      	; 0x8a <.do_clear_bss_start>

00000088 <.do_clear_bss_loop>:
  88:	1d 92       	st	X+, r1

0000008a <.do_clear_bss_start>:
  8a:	a6 3c       	cpi	r26, 0xC6	; 198
  8c:	b2 07       	cpc	r27, r18
  8e:	e1 f7       	brne	.-8      	; 0x88 <.do_clear_bss_loop>

00000090 <__do_global_ctors>:
  90:	10 e0       	ldi	r17, 0x00	; 0
  92:	ce e2       	ldi	r28, 0x2E	; 46
  94:	d0 e0       	ldi	r29, 0x00	; 0
  96:	04 c0       	rjmp	.+8      	; 0xa0 <__do_global_ctors+0x10>
  98:	21 97       	sbiw	r28, 0x01	; 1
  9a:	fe 01       	movw	r30, r28
  9c:	0e 94 31 04 	call	0x862	; 0x862 <__tablejump2__>
  a0:	ca 32       	cpi	r28, 0x2A	; 42
  a2:	d1 07       	cpc	r29, r17
  a4:	c9 f7       	brne	.-14     	; 0x98 <__do_global_ctors+0x8>
  a6:	0e 94 87 00 	call	0x10e	; 0x10e <main>
  aa:	0c 94 37 04 	jmp	0x86e	; 0x86e <__do_global_dtors>

000000ae <__bad_interrupt>:
  ae:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b2 <_Z5taskBv>:
  b2:	80 91 78 00 	lds	r24, 0x0078
  b6:	90 91 79 00 	lds	r25, 0x0079
  ba:	00 97       	sbiw	r24, 0x00	; 0
  bc:	19 f0       	breq	.+6      	; 0xc4 <_Z5taskBv+0x12>
  be:	01 97       	sbiw	r24, 0x01	; 1
  c0:	49 f0       	breq	.+18     	; 0xd4 <_Z5taskBv+0x22>
  c2:	08 95       	ret
  c4:	de 9a       	sbi	0x1b, 6	; 27
  c6:	81 e0       	ldi	r24, 0x01	; 1
  c8:	90 e0       	ldi	r25, 0x00	; 0
  ca:	90 93 79 00 	sts	0x0079, r25
  ce:	80 93 78 00 	sts	0x0078, r24
  d2:	08 95       	ret
  d4:	de 98       	cbi	0x1b, 6	; 27
  d6:	10 92 79 00 	sts	0x0079, r1
  da:	10 92 78 00 	sts	0x0078, r1
  de:	08 95       	ret

000000e0 <_Z5taskAv>:
  e0:	80 91 7a 00 	lds	r24, 0x007A
  e4:	90 91 7b 00 	lds	r25, 0x007B
  e8:	00 97       	sbiw	r24, 0x00	; 0
  ea:	19 f0       	breq	.+6      	; 0xf2 <_Z5taskAv+0x12>
  ec:	01 97       	sbiw	r24, 0x01	; 1
  ee:	49 f0       	breq	.+18     	; 0x102 <_Z5taskAv+0x22>
  f0:	08 95       	ret
  f2:	dd 9a       	sbi	0x1b, 5	; 27
  f4:	81 e0       	ldi	r24, 0x01	; 1
  f6:	90 e0       	ldi	r25, 0x00	; 0
  f8:	90 93 7b 00 	sts	0x007B, r25
  fc:	80 93 7a 00 	sts	0x007A, r24
 100:	08 95       	ret
 102:	dd 98       	cbi	0x1b, 5	; 27
 104:	10 92 7b 00 	sts	0x007B, r1
 108:	10 92 7a 00 	sts	0x007A, r1
 10c:	08 95       	ret

0000010e <main>:
 10e:	20 e0       	ldi	r18, 0x00	; 0
 110:	44 e6       	ldi	r20, 0x64	; 100
 112:	50 e0       	ldi	r21, 0x00	; 0
 114:	60 e7       	ldi	r22, 0x70	; 112
 116:	70 e0       	ldi	r23, 0x00	; 0
 118:	84 ec       	ldi	r24, 0xC4	; 196
 11a:	90 e0       	ldi	r25, 0x00	; 0
 11c:	0e 94 64 03 	call	0x6c8	; 0x6c8 <_ZN6CTimer8add_taskEPFvvEjb>
 120:	21 e0       	ldi	r18, 0x01	; 1
 122:	44 ef       	ldi	r20, 0xF4	; 244
 124:	51 e0       	ldi	r21, 0x01	; 1
 126:	69 e5       	ldi	r22, 0x59	; 89
 128:	70 e0       	ldi	r23, 0x00	; 0
 12a:	84 ec       	ldi	r24, 0xC4	; 196
 12c:	90 e0       	ldi	r25, 0x00	; 0
 12e:	0e 94 64 03 	call	0x6c8	; 0x6c8 <_ZN6CTimer8add_taskEPFvvEjb>
 132:	84 ec       	ldi	r24, 0xC4	; 196
 134:	90 e0       	ldi	r25, 0x00	; 0
 136:	0e 94 9b 03 	call	0x736	; 0x736 <_ZN6CTimer4mainEv>
 13a:	fb cf       	rjmp	.-10     	; 0x132 <main+0x24>

0000013c <_GLOBAL__sub_I_led1>:
 13c:	d5 9a       	sbi	0x1a, 5	; 26
 13e:	d6 9a       	sbi	0x1a, 6	; 26
 140:	08 95       	ret

00000142 <_ZN6CUSARTC1Ev>:
 142:	10 bc       	out	0x20, r1	; 32
 144:	80 e4       	ldi	r24, 0x40	; 64
 146:	89 b9       	out	0x09, r24	; 9
 148:	80 b5       	in	r24, 0x20	; 32
 14a:	86 68       	ori	r24, 0x86	; 134
 14c:	80 bd       	out	0x20, r24	; 32
 14e:	8a b1       	in	r24, 0x0a	; 10
 150:	88 61       	ori	r24, 0x18	; 24
 152:	8a b9       	out	0x0a, r24	; 10
 154:	08 95       	ret

00000156 <_ZN6CUSARTD1Ev>:
 156:	08 95       	ret

00000158 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
 158:	0f 93       	push	r16
 15a:	1f 93       	push	r17
 15c:	cf 93       	push	r28
 15e:	df 93       	push	r29
 160:	00 d0       	rcall	.+0      	; 0x162 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
 162:	1f 92       	push	r1
 164:	cd b7       	in	r28, 0x3d	; 61
 166:	de b7       	in	r29, 0x3e	; 62
 168:	8c 01       	movw	r16, r24
 16a:	dc 01       	movw	r26, r24
 16c:	ed 91       	ld	r30, X+
 16e:	fc 91       	ld	r31, X
 170:	01 90       	ld	r0, Z+
 172:	f0 81       	ld	r31, Z
 174:	e0 2d       	mov	r30, r0
 176:	2b 83       	std	Y+3, r18	; 0x03
 178:	4a 83       	std	Y+2, r20	; 0x02
 17a:	69 83       	std	Y+1, r22	; 0x01
 17c:	09 95       	icall
 17e:	d8 01       	movw	r26, r16
 180:	ed 91       	ld	r30, X+
 182:	fc 91       	ld	r31, X
 184:	04 80       	ldd	r0, Z+4	; 0x04
 186:	f5 81       	ldd	r31, Z+5	; 0x05
 188:	e0 2d       	mov	r30, r0
 18a:	69 81       	ldd	r22, Y+1	; 0x01
 18c:	c8 01       	movw	r24, r16
 18e:	09 95       	icall
 190:	d8 01       	movw	r26, r16
 192:	ed 91       	ld	r30, X+
 194:	fc 91       	ld	r31, X
 196:	04 80       	ldd	r0, Z+4	; 0x04
 198:	f5 81       	ldd	r31, Z+5	; 0x05
 19a:	e0 2d       	mov	r30, r0
 19c:	4a 81       	ldd	r20, Y+2	; 0x02
 19e:	64 2f       	mov	r22, r20
 1a0:	c8 01       	movw	r24, r16
 1a2:	09 95       	icall
 1a4:	d8 01       	movw	r26, r16
 1a6:	ed 91       	ld	r30, X+
 1a8:	fc 91       	ld	r31, X
 1aa:	04 80       	ldd	r0, Z+4	; 0x04
 1ac:	f5 81       	ldd	r31, Z+5	; 0x05
 1ae:	e0 2d       	mov	r30, r0
 1b0:	2b 81       	ldd	r18, Y+3	; 0x03
 1b2:	62 2f       	mov	r22, r18
 1b4:	c8 01       	movw	r24, r16
 1b6:	09 95       	icall
 1b8:	d8 01       	movw	r26, r16
 1ba:	ed 91       	ld	r30, X+
 1bc:	fc 91       	ld	r31, X
 1be:	02 80       	ldd	r0, Z+2	; 0x02
 1c0:	f3 81       	ldd	r31, Z+3	; 0x03
 1c2:	e0 2d       	mov	r30, r0
 1c4:	c8 01       	movw	r24, r16
 1c6:	0f 90       	pop	r0
 1c8:	0f 90       	pop	r0
 1ca:	0f 90       	pop	r0
 1cc:	df 91       	pop	r29
 1ce:	cf 91       	pop	r28
 1d0:	1f 91       	pop	r17
 1d2:	0f 91       	pop	r16
 1d4:	09 94       	ijmp

000001d6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
 1d6:	0f 93       	push	r16
 1d8:	1f 93       	push	r17
 1da:	cf 93       	push	r28
 1dc:	df 93       	push	r29
 1de:	00 d0       	rcall	.+0      	; 0x1e0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
 1e0:	00 d0       	rcall	.+0      	; 0x1e2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
 1e2:	cd b7       	in	r28, 0x3d	; 61
 1e4:	de b7       	in	r29, 0x3e	; 62
 1e6:	8c 01       	movw	r16, r24
 1e8:	dc 01       	movw	r26, r24
 1ea:	ed 91       	ld	r30, X+
 1ec:	fc 91       	ld	r31, X
 1ee:	01 90       	ld	r0, Z+
 1f0:	f0 81       	ld	r31, Z
 1f2:	e0 2d       	mov	r30, r0
 1f4:	2c 83       	std	Y+4, r18	; 0x04
 1f6:	3b 83       	std	Y+3, r19	; 0x03
 1f8:	4a 83       	std	Y+2, r20	; 0x02
 1fa:	69 83       	std	Y+1, r22	; 0x01
 1fc:	09 95       	icall
 1fe:	d8 01       	movw	r26, r16
 200:	ed 91       	ld	r30, X+
 202:	fc 91       	ld	r31, X
 204:	04 80       	ldd	r0, Z+4	; 0x04
 206:	f5 81       	ldd	r31, Z+5	; 0x05
 208:	e0 2d       	mov	r30, r0
 20a:	69 81       	ldd	r22, Y+1	; 0x01
 20c:	c8 01       	movw	r24, r16
 20e:	09 95       	icall
 210:	d8 01       	movw	r26, r16
 212:	ed 91       	ld	r30, X+
 214:	fc 91       	ld	r31, X
 216:	04 80       	ldd	r0, Z+4	; 0x04
 218:	f5 81       	ldd	r31, Z+5	; 0x05
 21a:	e0 2d       	mov	r30, r0
 21c:	4a 81       	ldd	r20, Y+2	; 0x02
 21e:	64 2f       	mov	r22, r20
 220:	c8 01       	movw	r24, r16
 222:	09 95       	icall
 224:	d8 01       	movw	r26, r16
 226:	ed 91       	ld	r30, X+
 228:	fc 91       	ld	r31, X
 22a:	04 80       	ldd	r0, Z+4	; 0x04
 22c:	f5 81       	ldd	r31, Z+5	; 0x05
 22e:	e0 2d       	mov	r30, r0
 230:	3b 81       	ldd	r19, Y+3	; 0x03
 232:	63 2f       	mov	r22, r19
 234:	c8 01       	movw	r24, r16
 236:	09 95       	icall
 238:	d8 01       	movw	r26, r16
 23a:	ed 91       	ld	r30, X+
 23c:	fc 91       	ld	r31, X
 23e:	04 80       	ldd	r0, Z+4	; 0x04
 240:	f5 81       	ldd	r31, Z+5	; 0x05
 242:	e0 2d       	mov	r30, r0
 244:	2c 81       	ldd	r18, Y+4	; 0x04
 246:	62 2f       	mov	r22, r18
 248:	c8 01       	movw	r24, r16
 24a:	09 95       	icall
 24c:	d8 01       	movw	r26, r16
 24e:	ed 91       	ld	r30, X+
 250:	fc 91       	ld	r31, X
 252:	02 80       	ldd	r0, Z+2	; 0x02
 254:	f3 81       	ldd	r31, Z+3	; 0x03
 256:	e0 2d       	mov	r30, r0
 258:	c8 01       	movw	r24, r16
 25a:	0f 90       	pop	r0
 25c:	0f 90       	pop	r0
 25e:	0f 90       	pop	r0
 260:	0f 90       	pop	r0
 262:	df 91       	pop	r29
 264:	cf 91       	pop	r28
 266:	1f 91       	pop	r17
 268:	0f 91       	pop	r16
 26a:	09 94       	ijmp

0000026c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
 26c:	cf 92       	push	r12
 26e:	df 92       	push	r13
 270:	ef 92       	push	r14
 272:	ff 92       	push	r15
 274:	0f 93       	push	r16
 276:	1f 93       	push	r17
 278:	cf 93       	push	r28
 27a:	df 93       	push	r29
 27c:	00 d0       	rcall	.+0      	; 0x27e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
 27e:	00 d0       	rcall	.+0      	; 0x280 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
 280:	cd b7       	in	r28, 0x3d	; 61
 282:	de b7       	in	r29, 0x3e	; 62
 284:	6c 01       	movw	r12, r24
 286:	dc 01       	movw	r26, r24
 288:	ed 91       	ld	r30, X+
 28a:	fc 91       	ld	r31, X
 28c:	01 90       	ld	r0, Z+
 28e:	f0 81       	ld	r31, Z
 290:	e0 2d       	mov	r30, r0
 292:	2b 83       	std	Y+3, r18	; 0x03
 294:	3c 83       	std	Y+4, r19	; 0x04
 296:	4a 83       	std	Y+2, r20	; 0x02
 298:	69 83       	std	Y+1, r22	; 0x01
 29a:	09 95       	icall
 29c:	d6 01       	movw	r26, r12
 29e:	ed 91       	ld	r30, X+
 2a0:	fc 91       	ld	r31, X
 2a2:	04 80       	ldd	r0, Z+4	; 0x04
 2a4:	f5 81       	ldd	r31, Z+5	; 0x05
 2a6:	e0 2d       	mov	r30, r0
 2a8:	69 81       	ldd	r22, Y+1	; 0x01
 2aa:	c6 01       	movw	r24, r12
 2ac:	09 95       	icall
 2ae:	d6 01       	movw	r26, r12
 2b0:	ed 91       	ld	r30, X+
 2b2:	fc 91       	ld	r31, X
 2b4:	04 80       	ldd	r0, Z+4	; 0x04
 2b6:	f5 81       	ldd	r31, Z+5	; 0x05
 2b8:	e0 2d       	mov	r30, r0
 2ba:	4a 81       	ldd	r20, Y+2	; 0x02
 2bc:	64 2f       	mov	r22, r20
 2be:	c6 01       	movw	r24, r12
 2c0:	09 95       	icall
 2c2:	2b 81       	ldd	r18, Y+3	; 0x03
 2c4:	e2 2e       	mov	r14, r18
 2c6:	3c 81       	ldd	r19, Y+4	; 0x04
 2c8:	f3 2e       	mov	r15, r19
 2ca:	0e 0d       	add	r16, r14
 2cc:	1f 1d       	adc	r17, r15
 2ce:	d6 01       	movw	r26, r12
 2d0:	ed 91       	ld	r30, X+
 2d2:	fc 91       	ld	r31, X
 2d4:	e0 16       	cp	r14, r16
 2d6:	f1 06       	cpc	r15, r17
 2d8:	49 f0       	breq	.+18     	; 0x2ec <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
 2da:	d7 01       	movw	r26, r14
 2dc:	6d 91       	ld	r22, X+
 2de:	7d 01       	movw	r14, r26
 2e0:	04 80       	ldd	r0, Z+4	; 0x04
 2e2:	f5 81       	ldd	r31, Z+5	; 0x05
 2e4:	e0 2d       	mov	r30, r0
 2e6:	c6 01       	movw	r24, r12
 2e8:	09 95       	icall
 2ea:	f1 cf       	rjmp	.-30     	; 0x2ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
 2ec:	02 80       	ldd	r0, Z+2	; 0x02
 2ee:	f3 81       	ldd	r31, Z+3	; 0x03
 2f0:	e0 2d       	mov	r30, r0
 2f2:	c6 01       	movw	r24, r12
 2f4:	0f 90       	pop	r0
 2f6:	0f 90       	pop	r0
 2f8:	0f 90       	pop	r0
 2fa:	0f 90       	pop	r0
 2fc:	df 91       	pop	r29
 2fe:	cf 91       	pop	r28
 300:	1f 91       	pop	r17
 302:	0f 91       	pop	r16
 304:	ff 90       	pop	r15
 306:	ef 90       	pop	r14
 308:	df 90       	pop	r13
 30a:	cf 90       	pop	r12
 30c:	09 94       	ijmp

0000030e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
 30e:	ef 92       	push	r14
 310:	ff 92       	push	r15
 312:	1f 93       	push	r17
 314:	cf 93       	push	r28
 316:	df 93       	push	r29
 318:	1f 92       	push	r1
 31a:	cd b7       	in	r28, 0x3d	; 61
 31c:	de b7       	in	r29, 0x3e	; 62
 31e:	7c 01       	movw	r14, r24
 320:	16 2f       	mov	r17, r22
 322:	dc 01       	movw	r26, r24
 324:	ed 91       	ld	r30, X+
 326:	fc 91       	ld	r31, X
 328:	01 90       	ld	r0, Z+
 32a:	f0 81       	ld	r31, Z
 32c:	e0 2d       	mov	r30, r0
 32e:	49 83       	std	Y+1, r20	; 0x01
 330:	09 95       	icall
 332:	d7 01       	movw	r26, r14
 334:	ed 91       	ld	r30, X+
 336:	fc 91       	ld	r31, X
 338:	04 80       	ldd	r0, Z+4	; 0x04
 33a:	f5 81       	ldd	r31, Z+5	; 0x05
 33c:	e0 2d       	mov	r30, r0
 33e:	61 2f       	mov	r22, r17
 340:	c7 01       	movw	r24, r14
 342:	09 95       	icall
 344:	d7 01       	movw	r26, r14
 346:	ed 91       	ld	r30, X+
 348:	fc 91       	ld	r31, X
 34a:	04 80       	ldd	r0, Z+4	; 0x04
 34c:	f5 81       	ldd	r31, Z+5	; 0x05
 34e:	e0 2d       	mov	r30, r0
 350:	49 81       	ldd	r20, Y+1	; 0x01
 352:	64 2f       	mov	r22, r20
 354:	c7 01       	movw	r24, r14
 356:	09 95       	icall
 358:	d7 01       	movw	r26, r14
 35a:	ed 91       	ld	r30, X+
 35c:	fc 91       	ld	r31, X
 35e:	01 90       	ld	r0, Z+
 360:	f0 81       	ld	r31, Z
 362:	e0 2d       	mov	r30, r0
 364:	c7 01       	movw	r24, r14
 366:	09 95       	icall
 368:	d7 01       	movw	r26, r14
 36a:	ed 91       	ld	r30, X+
 36c:	fc 91       	ld	r31, X
 36e:	61 2f       	mov	r22, r17
 370:	61 60       	ori	r22, 0x01	; 1
 372:	04 80       	ldd	r0, Z+4	; 0x04
 374:	f5 81       	ldd	r31, Z+5	; 0x05
 376:	e0 2d       	mov	r30, r0
 378:	c7 01       	movw	r24, r14
 37a:	09 95       	icall
 37c:	d7 01       	movw	r26, r14
 37e:	ed 91       	ld	r30, X+
 380:	fc 91       	ld	r31, X
 382:	06 80       	ldd	r0, Z+6	; 0x06
 384:	f7 81       	ldd	r31, Z+7	; 0x07
 386:	e0 2d       	mov	r30, r0
 388:	60 e0       	ldi	r22, 0x00	; 0
 38a:	c7 01       	movw	r24, r14
 38c:	09 95       	icall
 38e:	18 2f       	mov	r17, r24
 390:	d7 01       	movw	r26, r14
 392:	ed 91       	ld	r30, X+
 394:	fc 91       	ld	r31, X
 396:	02 80       	ldd	r0, Z+2	; 0x02
 398:	f3 81       	ldd	r31, Z+3	; 0x03
 39a:	e0 2d       	mov	r30, r0
 39c:	c7 01       	movw	r24, r14
 39e:	09 95       	icall
 3a0:	81 2f       	mov	r24, r17
 3a2:	0f 90       	pop	r0
 3a4:	df 91       	pop	r29
 3a6:	cf 91       	pop	r28
 3a8:	1f 91       	pop	r17
 3aa:	ff 90       	pop	r15
 3ac:	ef 90       	pop	r14
 3ae:	08 95       	ret

000003b0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
 3b0:	ef 92       	push	r14
 3b2:	ff 92       	push	r15
 3b4:	0f 93       	push	r16
 3b6:	1f 93       	push	r17
 3b8:	cf 93       	push	r28
 3ba:	df 93       	push	r29
 3bc:	1f 92       	push	r1
 3be:	cd b7       	in	r28, 0x3d	; 61
 3c0:	de b7       	in	r29, 0x3e	; 62
 3c2:	7c 01       	movw	r14, r24
 3c4:	16 2f       	mov	r17, r22
 3c6:	dc 01       	movw	r26, r24
 3c8:	ed 91       	ld	r30, X+
 3ca:	fc 91       	ld	r31, X
 3cc:	01 90       	ld	r0, Z+
 3ce:	f0 81       	ld	r31, Z
 3d0:	e0 2d       	mov	r30, r0
 3d2:	49 83       	std	Y+1, r20	; 0x01
 3d4:	09 95       	icall
 3d6:	d7 01       	movw	r26, r14
 3d8:	ed 91       	ld	r30, X+
 3da:	fc 91       	ld	r31, X
 3dc:	04 80       	ldd	r0, Z+4	; 0x04
 3de:	f5 81       	ldd	r31, Z+5	; 0x05
 3e0:	e0 2d       	mov	r30, r0
 3e2:	61 2f       	mov	r22, r17
 3e4:	c7 01       	movw	r24, r14
 3e6:	09 95       	icall
 3e8:	d7 01       	movw	r26, r14
 3ea:	ed 91       	ld	r30, X+
 3ec:	fc 91       	ld	r31, X
 3ee:	04 80       	ldd	r0, Z+4	; 0x04
 3f0:	f5 81       	ldd	r31, Z+5	; 0x05
 3f2:	e0 2d       	mov	r30, r0
 3f4:	49 81       	ldd	r20, Y+1	; 0x01
 3f6:	64 2f       	mov	r22, r20
 3f8:	c7 01       	movw	r24, r14
 3fa:	09 95       	icall
 3fc:	d7 01       	movw	r26, r14
 3fe:	ed 91       	ld	r30, X+
 400:	fc 91       	ld	r31, X
 402:	01 90       	ld	r0, Z+
 404:	f0 81       	ld	r31, Z
 406:	e0 2d       	mov	r30, r0
 408:	c7 01       	movw	r24, r14
 40a:	09 95       	icall
 40c:	d7 01       	movw	r26, r14
 40e:	ed 91       	ld	r30, X+
 410:	fc 91       	ld	r31, X
 412:	61 2f       	mov	r22, r17
 414:	61 60       	ori	r22, 0x01	; 1
 416:	04 80       	ldd	r0, Z+4	; 0x04
 418:	f5 81       	ldd	r31, Z+5	; 0x05
 41a:	e0 2d       	mov	r30, r0
 41c:	c7 01       	movw	r24, r14
 41e:	09 95       	icall
 420:	d7 01       	movw	r26, r14
 422:	ed 91       	ld	r30, X+
 424:	fc 91       	ld	r31, X
 426:	06 80       	ldd	r0, Z+6	; 0x06
 428:	f7 81       	ldd	r31, Z+7	; 0x07
 42a:	e0 2d       	mov	r30, r0
 42c:	61 e0       	ldi	r22, 0x01	; 1
 42e:	c7 01       	movw	r24, r14
 430:	09 95       	icall
 432:	08 2f       	mov	r16, r24
 434:	10 e0       	ldi	r17, 0x00	; 0
 436:	10 2f       	mov	r17, r16
 438:	00 27       	eor	r16, r16
 43a:	d7 01       	movw	r26, r14
 43c:	ed 91       	ld	r30, X+
 43e:	fc 91       	ld	r31, X
 440:	06 80       	ldd	r0, Z+6	; 0x06
 442:	f7 81       	ldd	r31, Z+7	; 0x07
 444:	e0 2d       	mov	r30, r0
 446:	60 e0       	ldi	r22, 0x00	; 0
 448:	c7 01       	movw	r24, r14
 44a:	09 95       	icall
 44c:	08 2b       	or	r16, r24
 44e:	d7 01       	movw	r26, r14
 450:	ed 91       	ld	r30, X+
 452:	fc 91       	ld	r31, X
 454:	02 80       	ldd	r0, Z+2	; 0x02
 456:	f3 81       	ldd	r31, Z+3	; 0x03
 458:	e0 2d       	mov	r30, r0
 45a:	c7 01       	movw	r24, r14
 45c:	09 95       	icall
 45e:	c8 01       	movw	r24, r16
 460:	0f 90       	pop	r0
 462:	df 91       	pop	r29
 464:	cf 91       	pop	r28
 466:	1f 91       	pop	r17
 468:	0f 91       	pop	r16
 46a:	ff 90       	pop	r15
 46c:	ef 90       	pop	r14
 46e:	08 95       	ret

00000470 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
 470:	cf 92       	push	r12
 472:	df 92       	push	r13
 474:	ef 92       	push	r14
 476:	ff 92       	push	r15
 478:	0f 93       	push	r16
 47a:	1f 93       	push	r17
 47c:	cf 93       	push	r28
 47e:	df 93       	push	r29
 480:	00 d0       	rcall	.+0      	; 0x482 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
 482:	1f 92       	push	r1
 484:	cd b7       	in	r28, 0x3d	; 61
 486:	de b7       	in	r29, 0x3e	; 62
 488:	6c 01       	movw	r12, r24
 48a:	f6 2e       	mov	r15, r22
 48c:	dc 01       	movw	r26, r24
 48e:	ed 91       	ld	r30, X+
 490:	fc 91       	ld	r31, X
 492:	01 90       	ld	r0, Z+
 494:	f0 81       	ld	r31, Z
 496:	e0 2d       	mov	r30, r0
 498:	2a 83       	std	Y+2, r18	; 0x02
 49a:	3b 83       	std	Y+3, r19	; 0x03
 49c:	49 83       	std	Y+1, r20	; 0x01
 49e:	09 95       	icall
 4a0:	d6 01       	movw	r26, r12
 4a2:	ed 91       	ld	r30, X+
 4a4:	fc 91       	ld	r31, X
 4a6:	04 80       	ldd	r0, Z+4	; 0x04
 4a8:	f5 81       	ldd	r31, Z+5	; 0x05
 4aa:	e0 2d       	mov	r30, r0
 4ac:	6f 2d       	mov	r22, r15
 4ae:	c6 01       	movw	r24, r12
 4b0:	09 95       	icall
 4b2:	d6 01       	movw	r26, r12
 4b4:	ed 91       	ld	r30, X+
 4b6:	fc 91       	ld	r31, X
 4b8:	04 80       	ldd	r0, Z+4	; 0x04
 4ba:	f5 81       	ldd	r31, Z+5	; 0x05
 4bc:	e0 2d       	mov	r30, r0
 4be:	49 81       	ldd	r20, Y+1	; 0x01
 4c0:	64 2f       	mov	r22, r20
 4c2:	c6 01       	movw	r24, r12
 4c4:	09 95       	icall
 4c6:	d6 01       	movw	r26, r12
 4c8:	ed 91       	ld	r30, X+
 4ca:	fc 91       	ld	r31, X
 4cc:	01 90       	ld	r0, Z+
 4ce:	f0 81       	ld	r31, Z
 4d0:	e0 2d       	mov	r30, r0
 4d2:	c6 01       	movw	r24, r12
 4d4:	09 95       	icall
 4d6:	d6 01       	movw	r26, r12
 4d8:	ed 91       	ld	r30, X+
 4da:	fc 91       	ld	r31, X
 4dc:	6f 2d       	mov	r22, r15
 4de:	61 60       	ori	r22, 0x01	; 1
 4e0:	04 80       	ldd	r0, Z+4	; 0x04
 4e2:	f5 81       	ldd	r31, Z+5	; 0x05
 4e4:	e0 2d       	mov	r30, r0
 4e6:	c6 01       	movw	r24, r12
 4e8:	09 95       	icall
 4ea:	2a 81       	ldd	r18, Y+2	; 0x02
 4ec:	e2 2e       	mov	r14, r18
 4ee:	3b 81       	ldd	r19, Y+3	; 0x03
 4f0:	f3 2e       	mov	r15, r19
 4f2:	0e 0d       	add	r16, r14
 4f4:	1f 1d       	adc	r17, r15
 4f6:	d6 01       	movw	r26, r12
 4f8:	ed 91       	ld	r30, X+
 4fa:	fc 91       	ld	r31, X
 4fc:	e0 16       	cp	r14, r16
 4fe:	f1 06       	cpc	r15, r17
 500:	51 f0       	breq	.+20     	; 0x516 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0xa6>
 502:	06 80       	ldd	r0, Z+6	; 0x06
 504:	f7 81       	ldd	r31, Z+7	; 0x07
 506:	e0 2d       	mov	r30, r0
 508:	61 e0       	ldi	r22, 0x01	; 1
 50a:	c6 01       	movw	r24, r12
 50c:	09 95       	icall
 50e:	f7 01       	movw	r30, r14
 510:	81 93       	st	Z+, r24
 512:	7f 01       	movw	r14, r30
 514:	f0 cf       	rjmp	.-32     	; 0x4f6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x86>
 516:	02 80       	ldd	r0, Z+2	; 0x02
 518:	f3 81       	ldd	r31, Z+3	; 0x03
 51a:	e0 2d       	mov	r30, r0
 51c:	c6 01       	movw	r24, r12
 51e:	0f 90       	pop	r0
 520:	0f 90       	pop	r0
 522:	0f 90       	pop	r0
 524:	df 91       	pop	r29
 526:	cf 91       	pop	r28
 528:	1f 91       	pop	r17
 52a:	0f 91       	pop	r16
 52c:	ff 90       	pop	r15
 52e:	ef 90       	pop	r14
 530:	df 90       	pop	r13
 532:	cf 90       	pop	r12
 534:	09 94       	ijmp

00000536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 536:	88 23       	and	r24, r24
 538:	21 f0       	breq	.+8      	; 0x542 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 53a:	bf 98       	cbi	0x17, 7	; 23
 53c:	82 30       	cpi	r24, 0x02	; 2
 53e:	19 f0       	breq	.+6      	; 0x546 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 540:	08 95       	ret
 542:	bf 9a       	sbi	0x17, 7	; 23
 544:	08 95       	ret
 546:	c7 9a       	sbi	0x18, 7	; 24
 548:	08 95       	ret

0000054a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
 54a:	8a e0       	ldi	r24, 0x0A	; 10
 54c:	00 00       	nop
 54e:	81 50       	subi	r24, 0x01	; 1
 550:	e9 f7       	brne	.-6      	; 0x54c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
 552:	08 95       	ret

00000554 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
 554:	1f 93       	push	r17
 556:	cf 93       	push	r28
 558:	df 93       	push	r29
 55a:	16 2f       	mov	r17, r22
 55c:	bd 98       	cbi	0x17, 5	; 23
 55e:	80 e0       	ldi	r24, 0x00	; 0
 560:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 564:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 568:	d8 e0       	ldi	r29, 0x08	; 8
 56a:	c0 e0       	ldi	r28, 0x00	; 0
 56c:	cc 0f       	add	r28, r28
 56e:	81 e0       	ldi	r24, 0x01	; 1
 570:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 574:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 578:	b5 99       	sbic	0x16, 5	; 22
 57a:	c1 60       	ori	r28, 0x01	; 1
 57c:	80 e0       	ldi	r24, 0x00	; 0
 57e:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 582:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 586:	d1 50       	subi	r29, 0x01	; 1
 588:	89 f7       	brne	.-30     	; 0x56c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
 58a:	11 23       	and	r17, r17
 58c:	11 f0       	breq	.+4      	; 0x592 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
 58e:	bd 9a       	sbi	0x17, 5	; 23
 590:	01 c0       	rjmp	.+2      	; 0x594 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
 592:	bd 98       	cbi	0x17, 5	; 23
 594:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 598:	81 e0       	ldi	r24, 0x01	; 1
 59a:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 59e:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5a2:	80 e0       	ldi	r24, 0x00	; 0
 5a4:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5a8:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5ac:	bd 98       	cbi	0x17, 5	; 23
 5ae:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5b2:	8c 2f       	mov	r24, r28
 5b4:	df 91       	pop	r29
 5b6:	cf 91       	pop	r28
 5b8:	1f 91       	pop	r17
 5ba:	08 95       	ret

000005bc <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
 5bc:	cf 93       	push	r28
 5be:	df 93       	push	r29
 5c0:	d6 2f       	mov	r29, r22
 5c2:	c8 e0       	ldi	r28, 0x08	; 8
 5c4:	80 e0       	ldi	r24, 0x00	; 0
 5c6:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5ca:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5ce:	d7 ff       	sbrs	r29, 7
 5d0:	02 c0       	rjmp	.+4      	; 0x5d6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
 5d2:	bd 98       	cbi	0x17, 5	; 23
 5d4:	01 c0       	rjmp	.+2      	; 0x5d8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
 5d6:	bd 9a       	sbi	0x17, 5	; 23
 5d8:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5dc:	81 e0       	ldi	r24, 0x01	; 1
 5de:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5e2:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5e6:	dd 0f       	add	r29, r29
 5e8:	c1 50       	subi	r28, 0x01	; 1
 5ea:	61 f7       	brne	.-40     	; 0x5c4 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
 5ec:	80 e0       	ldi	r24, 0x00	; 0
 5ee:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5f2:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5f6:	bd 98       	cbi	0x17, 5	; 23
 5f8:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5fc:	81 e0       	ldi	r24, 0x01	; 1
 5fe:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 602:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 606:	c6 b3       	in	r28, 0x16	; 22
 608:	80 e0       	ldi	r24, 0x00	; 0
 60a:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 60e:	0e 94 a5 02 	call	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 612:	c5 fb       	bst	r28, 5
 614:	cc 27       	eor	r28, r28
 616:	c0 f9       	bld	r28, 0
 618:	81 e0       	ldi	r24, 0x01	; 1
 61a:	8c 27       	eor	r24, r28
 61c:	df 91       	pop	r29
 61e:	cf 91       	pop	r28
 620:	08 95       	ret

00000622 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
 622:	81 e0       	ldi	r24, 0x01	; 1
 624:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 628:	bd 98       	cbi	0x17, 5	; 23
 62a:	81 e0       	ldi	r24, 0x01	; 1
 62c:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 630:	bd 9a       	sbi	0x17, 5	; 23
 632:	80 e0       	ldi	r24, 0x00	; 0
 634:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 638:	bd 98       	cbi	0x17, 5	; 23
 63a:	0c 94 a5 02 	jmp	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

0000063e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
 63e:	80 e0       	ldi	r24, 0x00	; 0
 640:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 644:	bd 9a       	sbi	0x17, 5	; 23
 646:	81 e0       	ldi	r24, 0x01	; 1
 648:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 64c:	bd 9a       	sbi	0x17, 5	; 23
 64e:	81 e0       	ldi	r24, 0x01	; 1
 650:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 654:	bd 98       	cbi	0x17, 5	; 23
 656:	0c 94 a5 02 	jmp	0x54a	; 0x54a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

0000065a <_GLOBAL__sub_I_i2c>:
 65a:	84 e6       	ldi	r24, 0x64	; 100
 65c:	90 e0       	ldi	r25, 0x00	; 0
 65e:	90 93 7d 00 	sts	0x007D, r25
 662:	80 93 7c 00 	sts	0x007C, r24
 666:	bd 98       	cbi	0x17, 5	; 23
 668:	81 e0       	ldi	r24, 0x01	; 1
 66a:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 66e:	c5 98       	cbi	0x18, 5	; 24
 670:	c7 98       	cbi	0x18, 7	; 24
 672:	08 95       	ret

00000674 <_ZN6CTimerC1Ev>:
 674:	80 e0       	ldi	r24, 0x00	; 0
 676:	90 e0       	ldi	r25, 0x00	; 0
 678:	fc 01       	movw	r30, r24
 67a:	23 e0       	ldi	r18, 0x03	; 3
 67c:	ee 0f       	add	r30, r30
 67e:	ff 1f       	adc	r31, r31
 680:	2a 95       	dec	r18
 682:	e1 f7       	brne	.-8      	; 0x67c <_ZN6CTimerC1Ev+0x8>
 684:	e0 58       	subi	r30, 0x80	; 128
 686:	ff 4f       	sbci	r31, 0xFF	; 255
 688:	11 82       	std	Z+1, r1	; 0x01
 68a:	10 82       	st	Z, r1
 68c:	13 82       	std	Z+3, r1	; 0x03
 68e:	12 82       	std	Z+2, r1	; 0x02
 690:	15 82       	std	Z+5, r1	; 0x05
 692:	14 82       	std	Z+4, r1	; 0x04
 694:	16 82       	std	Z+6, r1	; 0x06
 696:	17 82       	std	Z+7, r1	; 0x07
 698:	01 96       	adiw	r24, 0x01	; 1
 69a:	88 30       	cpi	r24, 0x08	; 8
 69c:	91 05       	cpc	r25, r1
 69e:	61 f7       	brne	.-40     	; 0x678 <_ZN6CTimerC1Ev+0x4>
 6a0:	10 92 c0 00 	sts	0x00C0, r1
 6a4:	10 92 c1 00 	sts	0x00C1, r1
 6a8:	10 92 c2 00 	sts	0x00C2, r1
 6ac:	10 92 c3 00 	sts	0x00C3, r1
 6b0:	83 b7       	in	r24, 0x33	; 51
 6b2:	88 60       	ori	r24, 0x08	; 8
 6b4:	83 bf       	out	0x33, r24	; 51
 6b6:	8b e9       	ldi	r24, 0x9B	; 155
 6b8:	8c bf       	out	0x3c, r24	; 60
 6ba:	83 e0       	ldi	r24, 0x03	; 3
 6bc:	83 bf       	out	0x33, r24	; 51
 6be:	89 b7       	in	r24, 0x39	; 57
 6c0:	82 60       	ori	r24, 0x02	; 2
 6c2:	89 bf       	out	0x39, r24	; 57
 6c4:	78 94       	sei
 6c6:	08 95       	ret

000006c8 <_ZN6CTimer8add_taskEPFvvEjb>:
 6c8:	80 e0       	ldi	r24, 0x00	; 0
 6ca:	90 e0       	ldi	r25, 0x00	; 0
 6cc:	ef ef       	ldi	r30, 0xFF	; 255
 6ce:	dc 01       	movw	r26, r24
 6d0:	33 e0       	ldi	r19, 0x03	; 3
 6d2:	aa 0f       	add	r26, r26
 6d4:	bb 1f       	adc	r27, r27
 6d6:	3a 95       	dec	r19
 6d8:	e1 f7       	brne	.-8      	; 0x6d2 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
 6da:	a0 58       	subi	r26, 0x80	; 128
 6dc:	bf 4f       	sbci	r27, 0xFF	; 255
 6de:	0d 90       	ld	r0, X+
 6e0:	bc 91       	ld	r27, X
 6e2:	a0 2d       	mov	r26, r0
 6e4:	ab 2b       	or	r26, r27
 6e6:	09 f4       	brne	.+2      	; 0x6ea <_ZN6CTimer8add_taskEPFvvEjb+0x22>
 6e8:	e8 2f       	mov	r30, r24
 6ea:	01 96       	adiw	r24, 0x01	; 1
 6ec:	88 30       	cpi	r24, 0x08	; 8
 6ee:	91 05       	cpc	r25, r1
 6f0:	71 f7       	brne	.-36     	; 0x6ce <_ZN6CTimer8add_taskEPFvvEjb+0x6>
 6f2:	ef 3f       	cpi	r30, 0xFF	; 255
 6f4:	71 f0       	breq	.+28     	; 0x712 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
 6f6:	88 e0       	ldi	r24, 0x08	; 8
 6f8:	e8 02       	muls	r30, r24
 6fa:	f0 01       	movw	r30, r0
 6fc:	11 24       	eor	r1, r1
 6fe:	e0 58       	subi	r30, 0x80	; 128
 700:	ff 4f       	sbci	r31, 0xFF	; 255
 702:	71 83       	std	Z+1, r23	; 0x01
 704:	60 83       	st	Z, r22
 706:	53 83       	std	Z+3, r21	; 0x03
 708:	42 83       	std	Z+2, r20	; 0x02
 70a:	55 83       	std	Z+5, r21	; 0x05
 70c:	44 83       	std	Z+4, r20	; 0x04
 70e:	16 82       	std	Z+6, r1	; 0x06
 710:	27 83       	std	Z+7, r18	; 0x07
 712:	08 95       	ret

00000714 <_ZN6CTimer14test_and_clearEh>:
 714:	f8 94       	cli
 716:	88 e0       	ldi	r24, 0x08	; 8
 718:	68 9f       	mul	r22, r24
 71a:	f0 01       	movw	r30, r0
 71c:	11 24       	eor	r1, r1
 71e:	e0 58       	subi	r30, 0x80	; 128
 720:	ff 4f       	sbci	r31, 0xFF	; 255
 722:	86 81       	ldd	r24, Z+6	; 0x06
 724:	88 23       	and	r24, r24
 726:	19 f0       	breq	.+6      	; 0x72e <_ZN6CTimer14test_and_clearEh+0x1a>
 728:	86 81       	ldd	r24, Z+6	; 0x06
 72a:	16 82       	std	Z+6, r1	; 0x06
 72c:	01 c0       	rjmp	.+2      	; 0x730 <_ZN6CTimer14test_and_clearEh+0x1c>
 72e:	80 e0       	ldi	r24, 0x00	; 0
 730:	78 94       	sei
 732:	90 e0       	ldi	r25, 0x00	; 0
 734:	08 95       	ret

00000736 <_ZN6CTimer4mainEv>:
 736:	7c 01       	movw	r14, r24
 738:	c0 e0       	ldi	r28, 0x00	; 0
 73a:	88 e0       	ldi	r24, 0x08	; 8
 73c:	c8 9f       	mul	r28, r24
 73e:	80 01       	movw	r16, r0
 740:	11 24       	eor	r1, r1
 742:	00 58       	subi	r16, 0x80	; 128
 744:	1f 4f       	sbci	r17, 0xFF	; 255
 746:	d8 01       	movw	r26, r16
 748:	17 96       	adiw	r26, 0x07	; 7
 74a:	8c 91       	ld	r24, X
 74c:	88 23       	and	r24, r24
 74e:	79 f0       	breq	.+30     	; 0x76e <_ZN6CTimer4mainEv+0x38>
 750:	6c 2f       	mov	r22, r28
 752:	c7 01       	movw	r24, r14
 754:	0e 94 8a 03 	call	0x714	; 0x714 <_ZN6CTimer14test_and_clearEh>
 758:	89 2b       	or	r24, r25
 75a:	49 f0       	breq	.+18     	; 0x76e <_ZN6CTimer4mainEv+0x38>
 75c:	f8 01       	movw	r30, r16
 75e:	80 81       	ld	r24, Z
 760:	91 81       	ldd	r25, Z+1	; 0x01
 762:	89 2b       	or	r24, r25
 764:	21 f0       	breq	.+8      	; 0x76e <_ZN6CTimer4mainEv+0x38>
 766:	01 90       	ld	r0, Z+
 768:	f0 81       	ld	r31, Z
 76a:	e0 2d       	mov	r30, r0
 76c:	09 95       	icall
 76e:	cf 5f       	subi	r28, 0xFF	; 255
 770:	c8 30       	cpi	r28, 0x08	; 8
 772:	18 f3       	brcs	.-58     	; 0x73a <_ZN6CTimer4mainEv+0x4>
 774:	e1 cf       	rjmp	.-62     	; 0x738 <_ZN6CTimer4mainEv+0x2>

00000776 <__vector_19>:
 776:	1f 92       	push	r1
 778:	0f 92       	push	r0
 77a:	0f b6       	in	r0, 0x3f	; 63
 77c:	0f 92       	push	r0
 77e:	11 24       	eor	r1, r1
 780:	2f 93       	push	r18
 782:	3f 93       	push	r19
 784:	4f 93       	push	r20
 786:	5f 93       	push	r21
 788:	6f 93       	push	r22
 78a:	7f 93       	push	r23
 78c:	8f 93       	push	r24
 78e:	9f 93       	push	r25
 790:	af 93       	push	r26
 792:	bf 93       	push	r27
 794:	cf 93       	push	r28
 796:	df 93       	push	r29
 798:	ef 93       	push	r30
 79a:	ff 93       	push	r31
 79c:	c0 e0       	ldi	r28, 0x00	; 0
 79e:	d0 e0       	ldi	r29, 0x00	; 0
 7a0:	ce 01       	movw	r24, r28
 7a2:	23 e0       	ldi	r18, 0x03	; 3
 7a4:	88 0f       	add	r24, r24
 7a6:	99 1f       	adc	r25, r25
 7a8:	2a 95       	dec	r18
 7aa:	e1 f7       	brne	.-8      	; 0x7a4 <__vector_19+0x2e>
 7ac:	fc 01       	movw	r30, r24
 7ae:	e0 58       	subi	r30, 0x80	; 128
 7b0:	ff 4f       	sbci	r31, 0xFF	; 255
 7b2:	24 81       	ldd	r18, Z+4	; 0x04
 7b4:	35 81       	ldd	r19, Z+5	; 0x05
 7b6:	23 2b       	or	r18, r19
 7b8:	31 f0       	breq	.+12     	; 0x7c6 <__vector_19+0x50>
 7ba:	84 81       	ldd	r24, Z+4	; 0x04
 7bc:	95 81       	ldd	r25, Z+5	; 0x05
 7be:	01 97       	sbiw	r24, 0x01	; 1
 7c0:	95 83       	std	Z+5, r25	; 0x05
 7c2:	84 83       	std	Z+4, r24	; 0x04
 7c4:	18 c0       	rjmp	.+48     	; 0x7f6 <__vector_19+0x80>
 7c6:	22 81       	ldd	r18, Z+2	; 0x02
 7c8:	33 81       	ldd	r19, Z+3	; 0x03
 7ca:	35 83       	std	Z+5, r19	; 0x05
 7cc:	24 83       	std	Z+4, r18	; 0x04
 7ce:	26 81       	ldd	r18, Z+6	; 0x06
 7d0:	2f 3f       	cpi	r18, 0xFF	; 255
 7d2:	19 f0       	breq	.+6      	; 0x7da <__vector_19+0x64>
 7d4:	26 81       	ldd	r18, Z+6	; 0x06
 7d6:	2f 5f       	subi	r18, 0xFF	; 255
 7d8:	26 83       	std	Z+6, r18	; 0x06
 7da:	fc 01       	movw	r30, r24
 7dc:	e0 58       	subi	r30, 0x80	; 128
 7de:	ff 4f       	sbci	r31, 0xFF	; 255
 7e0:	87 81       	ldd	r24, Z+7	; 0x07
 7e2:	81 11       	cpse	r24, r1
 7e4:	08 c0       	rjmp	.+16     	; 0x7f6 <__vector_19+0x80>
 7e6:	80 81       	ld	r24, Z
 7e8:	91 81       	ldd	r25, Z+1	; 0x01
 7ea:	89 2b       	or	r24, r25
 7ec:	21 f0       	breq	.+8      	; 0x7f6 <__vector_19+0x80>
 7ee:	01 90       	ld	r0, Z+
 7f0:	f0 81       	ld	r31, Z
 7f2:	e0 2d       	mov	r30, r0
 7f4:	09 95       	icall
 7f6:	21 96       	adiw	r28, 0x01	; 1
 7f8:	c8 30       	cpi	r28, 0x08	; 8
 7fa:	d1 05       	cpc	r29, r1
 7fc:	89 f6       	brne	.-94     	; 0x7a0 <__vector_19+0x2a>
 7fe:	80 91 c0 00 	lds	r24, 0x00C0
 802:	90 91 c1 00 	lds	r25, 0x00C1
 806:	a0 91 c2 00 	lds	r26, 0x00C2
 80a:	b0 91 c3 00 	lds	r27, 0x00C3
 80e:	01 96       	adiw	r24, 0x01	; 1
 810:	a1 1d       	adc	r26, r1
 812:	b1 1d       	adc	r27, r1
 814:	80 93 c0 00 	sts	0x00C0, r24
 818:	90 93 c1 00 	sts	0x00C1, r25
 81c:	a0 93 c2 00 	sts	0x00C2, r26
 820:	b0 93 c3 00 	sts	0x00C3, r27
 824:	ff 91       	pop	r31
 826:	ef 91       	pop	r30
 828:	df 91       	pop	r29
 82a:	cf 91       	pop	r28
 82c:	bf 91       	pop	r27
 82e:	af 91       	pop	r26
 830:	9f 91       	pop	r25
 832:	8f 91       	pop	r24
 834:	7f 91       	pop	r23
 836:	6f 91       	pop	r22
 838:	5f 91       	pop	r21
 83a:	4f 91       	pop	r20
 83c:	3f 91       	pop	r19
 83e:	2f 91       	pop	r18
 840:	0f 90       	pop	r0
 842:	0f be       	out	0x3f, r0	; 63
 844:	0f 90       	pop	r0
 846:	1f 90       	pop	r1
 848:	18 95       	reti

0000084a <_GLOBAL__sub_I_timer>:
 84a:	84 ec       	ldi	r24, 0xC4	; 196
 84c:	90 e0       	ldi	r25, 0x00	; 0
 84e:	0c 94 3a 03 	jmp	0x674	; 0x674 <_ZN6CTimerC1Ev>

00000852 <_GLOBAL__sub_I_terminal>:
 852:	85 ec       	ldi	r24, 0xC5	; 197
 854:	90 e0       	ldi	r25, 0x00	; 0
 856:	0c 94 a1 00 	jmp	0x142	; 0x142 <_ZN6CUSARTC1Ev>

0000085a <_GLOBAL__sub_D_terminal>:
 85a:	85 ec       	ldi	r24, 0xC5	; 197
 85c:	90 e0       	ldi	r25, 0x00	; 0
 85e:	0c 94 ab 00 	jmp	0x156	; 0x156 <_ZN6CUSARTD1Ev>

00000862 <__tablejump2__>:
 862:	ee 0f       	add	r30, r30
 864:	ff 1f       	adc	r31, r31
 866:	05 90       	lpm	r0, Z+
 868:	f4 91       	lpm	r31, Z
 86a:	e0 2d       	mov	r30, r0
 86c:	09 94       	ijmp

0000086e <__do_global_dtors>:
 86e:	10 e0       	ldi	r17, 0x00	; 0
 870:	ce e2       	ldi	r28, 0x2E	; 46
 872:	d0 e0       	ldi	r29, 0x00	; 0
 874:	04 c0       	rjmp	.+8      	; 0x87e <__do_global_dtors+0x10>
 876:	fe 01       	movw	r30, r28
 878:	0e 94 31 04 	call	0x862	; 0x862 <__tablejump2__>
 87c:	21 96       	adiw	r28, 0x01	; 1
 87e:	cf 32       	cpi	r28, 0x2F	; 47
 880:	d1 07       	cpc	r29, r17
 882:	c9 f7       	brne	.-14     	; 0x876 <__do_global_dtors+0x8>
 884:	f8 94       	cli

00000886 <__stop_program>:
 886:	ff cf       	rjmp	.-2      	; 0x886 <__stop_program>
