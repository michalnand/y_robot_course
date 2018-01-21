
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
  4c:	0c 94 d2 00 	jmp	0x1a4	; 0x1a4 <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	16 01       	movw	r2, r12
  56:	99 03       	fmulsu	r17, r17
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

0000015a <_ZN6CUSARTC1Ev>:
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

0000016e <_ZN6CUSARTD1Ev>:
 16e:	08 95       	ret

00000170 <_ZN5TimerC1Ev>:
 170:	e9 e7       	ldi	r30, 0x79	; 121
 172:	f0 e0       	ldi	r31, 0x00	; 0
 174:	11 82       	std	Z+1, r1	; 0x01
 176:	10 82       	st	Z, r1
 178:	13 82       	std	Z+3, r1	; 0x03
 17a:	12 82       	std	Z+2, r1	; 0x02
 17c:	15 82       	std	Z+5, r1	; 0x05
 17e:	14 82       	std	Z+4, r1	; 0x04
 180:	16 82       	std	Z+6, r1	; 0x06
 182:	37 96       	adiw	r30, 0x07	; 7
 184:	80 e0       	ldi	r24, 0x00	; 0
 186:	e1 3b       	cpi	r30, 0xB1	; 177
 188:	f8 07       	cpc	r31, r24
 18a:	a1 f7       	brne	.-24     	; 0x174 <_ZN5TimerC1Ev+0x4>
 18c:	83 b7       	in	r24, 0x33	; 51
 18e:	88 60       	ori	r24, 0x08	; 8
 190:	83 bf       	out	0x33, r24	; 51
 192:	8b e9       	ldi	r24, 0x9B	; 155
 194:	8c bf       	out	0x3c, r24	; 60
 196:	83 e0       	ldi	r24, 0x03	; 3
 198:	83 bf       	out	0x33, r24	; 51
 19a:	89 b7       	in	r24, 0x39	; 57
 19c:	82 60       	ori	r24, 0x02	; 2
 19e:	89 bf       	out	0x39, r24	; 57
 1a0:	78 94       	sei
 1a2:	08 95       	ret

000001a4 <__vector_19>:
 1a4:	1f 92       	push	r1
 1a6:	0f 92       	push	r0
 1a8:	0f b6       	in	r0, 0x3f	; 63
 1aa:	0f 92       	push	r0
 1ac:	11 24       	eor	r1, r1
 1ae:	8f 93       	push	r24
 1b0:	9f 93       	push	r25
 1b2:	af 93       	push	r26
 1b4:	bf 93       	push	r27
 1b6:	ef 93       	push	r30
 1b8:	ff 93       	push	r31
 1ba:	e9 e7       	ldi	r30, 0x79	; 121
 1bc:	f0 e0       	ldi	r31, 0x00	; 0
 1be:	af e7       	ldi	r26, 0x7F	; 127
 1c0:	b0 e0       	ldi	r27, 0x00	; 0
 1c2:	84 81       	ldd	r24, Z+4	; 0x04
 1c4:	95 81       	ldd	r25, Z+5	; 0x05
 1c6:	00 97       	sbiw	r24, 0x00	; 0
 1c8:	21 f0       	breq	.+8      	; 0x1d2 <__vector_19+0x2e>
 1ca:	01 97       	sbiw	r24, 0x01	; 1
 1cc:	95 83       	std	Z+5, r25	; 0x05
 1ce:	84 83       	std	Z+4, r24	; 0x04
 1d0:	09 c0       	rjmp	.+18     	; 0x1e4 <__vector_19+0x40>
 1d2:	82 81       	ldd	r24, Z+2	; 0x02
 1d4:	93 81       	ldd	r25, Z+3	; 0x03
 1d6:	95 83       	std	Z+5, r25	; 0x05
 1d8:	84 83       	std	Z+4, r24	; 0x04
 1da:	8c 91       	ld	r24, X
 1dc:	8f 3f       	cpi	r24, 0xFF	; 255
 1de:	11 f0       	breq	.+4      	; 0x1e4 <__vector_19+0x40>
 1e0:	8f 5f       	subi	r24, 0xFF	; 255
 1e2:	8c 93       	st	X, r24
 1e4:	37 96       	adiw	r30, 0x07	; 7
 1e6:	17 96       	adiw	r26, 0x07	; 7
 1e8:	80 e0       	ldi	r24, 0x00	; 0
 1ea:	e1 3b       	cpi	r30, 0xB1	; 177
 1ec:	f8 07       	cpc	r31, r24
 1ee:	49 f7       	brne	.-46     	; 0x1c2 <__vector_19+0x1e>
 1f0:	80 91 b1 00 	lds	r24, 0x00B1
 1f4:	90 91 b2 00 	lds	r25, 0x00B2
 1f8:	a0 91 b3 00 	lds	r26, 0x00B3
 1fc:	b0 91 b4 00 	lds	r27, 0x00B4
 200:	01 96       	adiw	r24, 0x01	; 1
 202:	a1 1d       	adc	r26, r1
 204:	b1 1d       	adc	r27, r1
 206:	80 93 b1 00 	sts	0x00B1, r24
 20a:	90 93 b2 00 	sts	0x00B2, r25
 20e:	a0 93 b3 00 	sts	0x00B3, r26
 212:	b0 93 b4 00 	sts	0x00B4, r27
 216:	ff 91       	pop	r31
 218:	ef 91       	pop	r30
 21a:	bf 91       	pop	r27
 21c:	af 91       	pop	r26
 21e:	9f 91       	pop	r25
 220:	8f 91       	pop	r24
 222:	0f 90       	pop	r0
 224:	0f be       	out	0x3f, r0	; 63
 226:	0f 90       	pop	r0
 228:	1f 90       	pop	r1
 22a:	18 95       	reti

0000022c <_GLOBAL__sub_I_g_rt_time>:
 22c:	88 e7       	ldi	r24, 0x78	; 120
 22e:	90 e0       	ldi	r25, 0x00	; 0
 230:	0c 94 b8 00 	jmp	0x170	; 0x170 <_ZN5TimerC1Ev>

00000234 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
 234:	0f 93       	push	r16
 236:	1f 93       	push	r17
 238:	cf 93       	push	r28
 23a:	df 93       	push	r29
 23c:	00 d0       	rcall	.+0      	; 0x23e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
 23e:	1f 92       	push	r1
 240:	cd b7       	in	r28, 0x3d	; 61
 242:	de b7       	in	r29, 0x3e	; 62
 244:	8c 01       	movw	r16, r24
 246:	dc 01       	movw	r26, r24
 248:	ed 91       	ld	r30, X+
 24a:	fc 91       	ld	r31, X
 24c:	01 90       	ld	r0, Z+
 24e:	f0 81       	ld	r31, Z
 250:	e0 2d       	mov	r30, r0
 252:	2b 83       	std	Y+3, r18	; 0x03
 254:	4a 83       	std	Y+2, r20	; 0x02
 256:	69 83       	std	Y+1, r22	; 0x01
 258:	09 95       	icall
 25a:	d8 01       	movw	r26, r16
 25c:	ed 91       	ld	r30, X+
 25e:	fc 91       	ld	r31, X
 260:	04 80       	ldd	r0, Z+4	; 0x04
 262:	f5 81       	ldd	r31, Z+5	; 0x05
 264:	e0 2d       	mov	r30, r0
 266:	69 81       	ldd	r22, Y+1	; 0x01
 268:	c8 01       	movw	r24, r16
 26a:	09 95       	icall
 26c:	d8 01       	movw	r26, r16
 26e:	ed 91       	ld	r30, X+
 270:	fc 91       	ld	r31, X
 272:	04 80       	ldd	r0, Z+4	; 0x04
 274:	f5 81       	ldd	r31, Z+5	; 0x05
 276:	e0 2d       	mov	r30, r0
 278:	4a 81       	ldd	r20, Y+2	; 0x02
 27a:	64 2f       	mov	r22, r20
 27c:	c8 01       	movw	r24, r16
 27e:	09 95       	icall
 280:	d8 01       	movw	r26, r16
 282:	ed 91       	ld	r30, X+
 284:	fc 91       	ld	r31, X
 286:	04 80       	ldd	r0, Z+4	; 0x04
 288:	f5 81       	ldd	r31, Z+5	; 0x05
 28a:	e0 2d       	mov	r30, r0
 28c:	2b 81       	ldd	r18, Y+3	; 0x03
 28e:	62 2f       	mov	r22, r18
 290:	c8 01       	movw	r24, r16
 292:	09 95       	icall
 294:	d8 01       	movw	r26, r16
 296:	ed 91       	ld	r30, X+
 298:	fc 91       	ld	r31, X
 29a:	02 80       	ldd	r0, Z+2	; 0x02
 29c:	f3 81       	ldd	r31, Z+3	; 0x03
 29e:	e0 2d       	mov	r30, r0
 2a0:	c8 01       	movw	r24, r16
 2a2:	0f 90       	pop	r0
 2a4:	0f 90       	pop	r0
 2a6:	0f 90       	pop	r0
 2a8:	df 91       	pop	r29
 2aa:	cf 91       	pop	r28
 2ac:	1f 91       	pop	r17
 2ae:	0f 91       	pop	r16
 2b0:	09 94       	ijmp

000002b2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
 2b2:	0f 93       	push	r16
 2b4:	1f 93       	push	r17
 2b6:	cf 93       	push	r28
 2b8:	df 93       	push	r29
 2ba:	00 d0       	rcall	.+0      	; 0x2bc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
 2bc:	00 d0       	rcall	.+0      	; 0x2be <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
 2be:	cd b7       	in	r28, 0x3d	; 61
 2c0:	de b7       	in	r29, 0x3e	; 62
 2c2:	8c 01       	movw	r16, r24
 2c4:	dc 01       	movw	r26, r24
 2c6:	ed 91       	ld	r30, X+
 2c8:	fc 91       	ld	r31, X
 2ca:	01 90       	ld	r0, Z+
 2cc:	f0 81       	ld	r31, Z
 2ce:	e0 2d       	mov	r30, r0
 2d0:	2c 83       	std	Y+4, r18	; 0x04
 2d2:	3b 83       	std	Y+3, r19	; 0x03
 2d4:	4a 83       	std	Y+2, r20	; 0x02
 2d6:	69 83       	std	Y+1, r22	; 0x01
 2d8:	09 95       	icall
 2da:	d8 01       	movw	r26, r16
 2dc:	ed 91       	ld	r30, X+
 2de:	fc 91       	ld	r31, X
 2e0:	04 80       	ldd	r0, Z+4	; 0x04
 2e2:	f5 81       	ldd	r31, Z+5	; 0x05
 2e4:	e0 2d       	mov	r30, r0
 2e6:	69 81       	ldd	r22, Y+1	; 0x01
 2e8:	c8 01       	movw	r24, r16
 2ea:	09 95       	icall
 2ec:	d8 01       	movw	r26, r16
 2ee:	ed 91       	ld	r30, X+
 2f0:	fc 91       	ld	r31, X
 2f2:	04 80       	ldd	r0, Z+4	; 0x04
 2f4:	f5 81       	ldd	r31, Z+5	; 0x05
 2f6:	e0 2d       	mov	r30, r0
 2f8:	4a 81       	ldd	r20, Y+2	; 0x02
 2fa:	64 2f       	mov	r22, r20
 2fc:	c8 01       	movw	r24, r16
 2fe:	09 95       	icall
 300:	d8 01       	movw	r26, r16
 302:	ed 91       	ld	r30, X+
 304:	fc 91       	ld	r31, X
 306:	04 80       	ldd	r0, Z+4	; 0x04
 308:	f5 81       	ldd	r31, Z+5	; 0x05
 30a:	e0 2d       	mov	r30, r0
 30c:	3b 81       	ldd	r19, Y+3	; 0x03
 30e:	63 2f       	mov	r22, r19
 310:	c8 01       	movw	r24, r16
 312:	09 95       	icall
 314:	d8 01       	movw	r26, r16
 316:	ed 91       	ld	r30, X+
 318:	fc 91       	ld	r31, X
 31a:	04 80       	ldd	r0, Z+4	; 0x04
 31c:	f5 81       	ldd	r31, Z+5	; 0x05
 31e:	e0 2d       	mov	r30, r0
 320:	2c 81       	ldd	r18, Y+4	; 0x04
 322:	62 2f       	mov	r22, r18
 324:	c8 01       	movw	r24, r16
 326:	09 95       	icall
 328:	d8 01       	movw	r26, r16
 32a:	ed 91       	ld	r30, X+
 32c:	fc 91       	ld	r31, X
 32e:	02 80       	ldd	r0, Z+2	; 0x02
 330:	f3 81       	ldd	r31, Z+3	; 0x03
 332:	e0 2d       	mov	r30, r0
 334:	c8 01       	movw	r24, r16
 336:	0f 90       	pop	r0
 338:	0f 90       	pop	r0
 33a:	0f 90       	pop	r0
 33c:	0f 90       	pop	r0
 33e:	df 91       	pop	r29
 340:	cf 91       	pop	r28
 342:	1f 91       	pop	r17
 344:	0f 91       	pop	r16
 346:	09 94       	ijmp

00000348 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
 348:	cf 92       	push	r12
 34a:	df 92       	push	r13
 34c:	ef 92       	push	r14
 34e:	ff 92       	push	r15
 350:	0f 93       	push	r16
 352:	1f 93       	push	r17
 354:	cf 93       	push	r28
 356:	df 93       	push	r29
 358:	00 d0       	rcall	.+0      	; 0x35a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
 35a:	00 d0       	rcall	.+0      	; 0x35c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
 35c:	cd b7       	in	r28, 0x3d	; 61
 35e:	de b7       	in	r29, 0x3e	; 62
 360:	6c 01       	movw	r12, r24
 362:	dc 01       	movw	r26, r24
 364:	ed 91       	ld	r30, X+
 366:	fc 91       	ld	r31, X
 368:	01 90       	ld	r0, Z+
 36a:	f0 81       	ld	r31, Z
 36c:	e0 2d       	mov	r30, r0
 36e:	2b 83       	std	Y+3, r18	; 0x03
 370:	3c 83       	std	Y+4, r19	; 0x04
 372:	4a 83       	std	Y+2, r20	; 0x02
 374:	69 83       	std	Y+1, r22	; 0x01
 376:	09 95       	icall
 378:	d6 01       	movw	r26, r12
 37a:	ed 91       	ld	r30, X+
 37c:	fc 91       	ld	r31, X
 37e:	04 80       	ldd	r0, Z+4	; 0x04
 380:	f5 81       	ldd	r31, Z+5	; 0x05
 382:	e0 2d       	mov	r30, r0
 384:	69 81       	ldd	r22, Y+1	; 0x01
 386:	c6 01       	movw	r24, r12
 388:	09 95       	icall
 38a:	d6 01       	movw	r26, r12
 38c:	ed 91       	ld	r30, X+
 38e:	fc 91       	ld	r31, X
 390:	04 80       	ldd	r0, Z+4	; 0x04
 392:	f5 81       	ldd	r31, Z+5	; 0x05
 394:	e0 2d       	mov	r30, r0
 396:	4a 81       	ldd	r20, Y+2	; 0x02
 398:	64 2f       	mov	r22, r20
 39a:	c6 01       	movw	r24, r12
 39c:	09 95       	icall
 39e:	2b 81       	ldd	r18, Y+3	; 0x03
 3a0:	e2 2e       	mov	r14, r18
 3a2:	3c 81       	ldd	r19, Y+4	; 0x04
 3a4:	f3 2e       	mov	r15, r19
 3a6:	0e 0d       	add	r16, r14
 3a8:	1f 1d       	adc	r17, r15
 3aa:	d6 01       	movw	r26, r12
 3ac:	ed 91       	ld	r30, X+
 3ae:	fc 91       	ld	r31, X
 3b0:	e0 16       	cp	r14, r16
 3b2:	f1 06       	cpc	r15, r17
 3b4:	49 f0       	breq	.+18     	; 0x3c8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
 3b6:	d7 01       	movw	r26, r14
 3b8:	6d 91       	ld	r22, X+
 3ba:	7d 01       	movw	r14, r26
 3bc:	04 80       	ldd	r0, Z+4	; 0x04
 3be:	f5 81       	ldd	r31, Z+5	; 0x05
 3c0:	e0 2d       	mov	r30, r0
 3c2:	c6 01       	movw	r24, r12
 3c4:	09 95       	icall
 3c6:	f1 cf       	rjmp	.-30     	; 0x3aa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
 3c8:	02 80       	ldd	r0, Z+2	; 0x02
 3ca:	f3 81       	ldd	r31, Z+3	; 0x03
 3cc:	e0 2d       	mov	r30, r0
 3ce:	c6 01       	movw	r24, r12
 3d0:	0f 90       	pop	r0
 3d2:	0f 90       	pop	r0
 3d4:	0f 90       	pop	r0
 3d6:	0f 90       	pop	r0
 3d8:	df 91       	pop	r29
 3da:	cf 91       	pop	r28
 3dc:	1f 91       	pop	r17
 3de:	0f 91       	pop	r16
 3e0:	ff 90       	pop	r15
 3e2:	ef 90       	pop	r14
 3e4:	df 90       	pop	r13
 3e6:	cf 90       	pop	r12
 3e8:	09 94       	ijmp

000003ea <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
 3ea:	ef 92       	push	r14
 3ec:	ff 92       	push	r15
 3ee:	1f 93       	push	r17
 3f0:	cf 93       	push	r28
 3f2:	df 93       	push	r29
 3f4:	1f 92       	push	r1
 3f6:	cd b7       	in	r28, 0x3d	; 61
 3f8:	de b7       	in	r29, 0x3e	; 62
 3fa:	7c 01       	movw	r14, r24
 3fc:	16 2f       	mov	r17, r22
 3fe:	dc 01       	movw	r26, r24
 400:	ed 91       	ld	r30, X+
 402:	fc 91       	ld	r31, X
 404:	01 90       	ld	r0, Z+
 406:	f0 81       	ld	r31, Z
 408:	e0 2d       	mov	r30, r0
 40a:	49 83       	std	Y+1, r20	; 0x01
 40c:	09 95       	icall
 40e:	d7 01       	movw	r26, r14
 410:	ed 91       	ld	r30, X+
 412:	fc 91       	ld	r31, X
 414:	04 80       	ldd	r0, Z+4	; 0x04
 416:	f5 81       	ldd	r31, Z+5	; 0x05
 418:	e0 2d       	mov	r30, r0
 41a:	61 2f       	mov	r22, r17
 41c:	c7 01       	movw	r24, r14
 41e:	09 95       	icall
 420:	d7 01       	movw	r26, r14
 422:	ed 91       	ld	r30, X+
 424:	fc 91       	ld	r31, X
 426:	04 80       	ldd	r0, Z+4	; 0x04
 428:	f5 81       	ldd	r31, Z+5	; 0x05
 42a:	e0 2d       	mov	r30, r0
 42c:	49 81       	ldd	r20, Y+1	; 0x01
 42e:	64 2f       	mov	r22, r20
 430:	c7 01       	movw	r24, r14
 432:	09 95       	icall
 434:	d7 01       	movw	r26, r14
 436:	ed 91       	ld	r30, X+
 438:	fc 91       	ld	r31, X
 43a:	01 90       	ld	r0, Z+
 43c:	f0 81       	ld	r31, Z
 43e:	e0 2d       	mov	r30, r0
 440:	c7 01       	movw	r24, r14
 442:	09 95       	icall
 444:	d7 01       	movw	r26, r14
 446:	ed 91       	ld	r30, X+
 448:	fc 91       	ld	r31, X
 44a:	61 2f       	mov	r22, r17
 44c:	61 60       	ori	r22, 0x01	; 1
 44e:	04 80       	ldd	r0, Z+4	; 0x04
 450:	f5 81       	ldd	r31, Z+5	; 0x05
 452:	e0 2d       	mov	r30, r0
 454:	c7 01       	movw	r24, r14
 456:	09 95       	icall
 458:	d7 01       	movw	r26, r14
 45a:	ed 91       	ld	r30, X+
 45c:	fc 91       	ld	r31, X
 45e:	06 80       	ldd	r0, Z+6	; 0x06
 460:	f7 81       	ldd	r31, Z+7	; 0x07
 462:	e0 2d       	mov	r30, r0
 464:	60 e0       	ldi	r22, 0x00	; 0
 466:	c7 01       	movw	r24, r14
 468:	09 95       	icall
 46a:	18 2f       	mov	r17, r24
 46c:	d7 01       	movw	r26, r14
 46e:	ed 91       	ld	r30, X+
 470:	fc 91       	ld	r31, X
 472:	02 80       	ldd	r0, Z+2	; 0x02
 474:	f3 81       	ldd	r31, Z+3	; 0x03
 476:	e0 2d       	mov	r30, r0
 478:	c7 01       	movw	r24, r14
 47a:	09 95       	icall
 47c:	81 2f       	mov	r24, r17
 47e:	0f 90       	pop	r0
 480:	df 91       	pop	r29
 482:	cf 91       	pop	r28
 484:	1f 91       	pop	r17
 486:	ff 90       	pop	r15
 488:	ef 90       	pop	r14
 48a:	08 95       	ret

0000048c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
 48c:	ef 92       	push	r14
 48e:	ff 92       	push	r15
 490:	0f 93       	push	r16
 492:	1f 93       	push	r17
 494:	cf 93       	push	r28
 496:	df 93       	push	r29
 498:	1f 92       	push	r1
 49a:	cd b7       	in	r28, 0x3d	; 61
 49c:	de b7       	in	r29, 0x3e	; 62
 49e:	7c 01       	movw	r14, r24
 4a0:	16 2f       	mov	r17, r22
 4a2:	dc 01       	movw	r26, r24
 4a4:	ed 91       	ld	r30, X+
 4a6:	fc 91       	ld	r31, X
 4a8:	01 90       	ld	r0, Z+
 4aa:	f0 81       	ld	r31, Z
 4ac:	e0 2d       	mov	r30, r0
 4ae:	49 83       	std	Y+1, r20	; 0x01
 4b0:	09 95       	icall
 4b2:	d7 01       	movw	r26, r14
 4b4:	ed 91       	ld	r30, X+
 4b6:	fc 91       	ld	r31, X
 4b8:	04 80       	ldd	r0, Z+4	; 0x04
 4ba:	f5 81       	ldd	r31, Z+5	; 0x05
 4bc:	e0 2d       	mov	r30, r0
 4be:	61 2f       	mov	r22, r17
 4c0:	c7 01       	movw	r24, r14
 4c2:	09 95       	icall
 4c4:	d7 01       	movw	r26, r14
 4c6:	ed 91       	ld	r30, X+
 4c8:	fc 91       	ld	r31, X
 4ca:	04 80       	ldd	r0, Z+4	; 0x04
 4cc:	f5 81       	ldd	r31, Z+5	; 0x05
 4ce:	e0 2d       	mov	r30, r0
 4d0:	49 81       	ldd	r20, Y+1	; 0x01
 4d2:	64 2f       	mov	r22, r20
 4d4:	c7 01       	movw	r24, r14
 4d6:	09 95       	icall
 4d8:	d7 01       	movw	r26, r14
 4da:	ed 91       	ld	r30, X+
 4dc:	fc 91       	ld	r31, X
 4de:	01 90       	ld	r0, Z+
 4e0:	f0 81       	ld	r31, Z
 4e2:	e0 2d       	mov	r30, r0
 4e4:	c7 01       	movw	r24, r14
 4e6:	09 95       	icall
 4e8:	d7 01       	movw	r26, r14
 4ea:	ed 91       	ld	r30, X+
 4ec:	fc 91       	ld	r31, X
 4ee:	61 2f       	mov	r22, r17
 4f0:	61 60       	ori	r22, 0x01	; 1
 4f2:	04 80       	ldd	r0, Z+4	; 0x04
 4f4:	f5 81       	ldd	r31, Z+5	; 0x05
 4f6:	e0 2d       	mov	r30, r0
 4f8:	c7 01       	movw	r24, r14
 4fa:	09 95       	icall
 4fc:	d7 01       	movw	r26, r14
 4fe:	ed 91       	ld	r30, X+
 500:	fc 91       	ld	r31, X
 502:	06 80       	ldd	r0, Z+6	; 0x06
 504:	f7 81       	ldd	r31, Z+7	; 0x07
 506:	e0 2d       	mov	r30, r0
 508:	61 e0       	ldi	r22, 0x01	; 1
 50a:	c7 01       	movw	r24, r14
 50c:	09 95       	icall
 50e:	08 2f       	mov	r16, r24
 510:	10 e0       	ldi	r17, 0x00	; 0
 512:	10 2f       	mov	r17, r16
 514:	00 27       	eor	r16, r16
 516:	d7 01       	movw	r26, r14
 518:	ed 91       	ld	r30, X+
 51a:	fc 91       	ld	r31, X
 51c:	06 80       	ldd	r0, Z+6	; 0x06
 51e:	f7 81       	ldd	r31, Z+7	; 0x07
 520:	e0 2d       	mov	r30, r0
 522:	60 e0       	ldi	r22, 0x00	; 0
 524:	c7 01       	movw	r24, r14
 526:	09 95       	icall
 528:	08 2b       	or	r16, r24
 52a:	d7 01       	movw	r26, r14
 52c:	ed 91       	ld	r30, X+
 52e:	fc 91       	ld	r31, X
 530:	02 80       	ldd	r0, Z+2	; 0x02
 532:	f3 81       	ldd	r31, Z+3	; 0x03
 534:	e0 2d       	mov	r30, r0
 536:	c7 01       	movw	r24, r14
 538:	09 95       	icall
 53a:	c8 01       	movw	r24, r16
 53c:	0f 90       	pop	r0
 53e:	df 91       	pop	r29
 540:	cf 91       	pop	r28
 542:	1f 91       	pop	r17
 544:	0f 91       	pop	r16
 546:	ff 90       	pop	r15
 548:	ef 90       	pop	r14
 54a:	08 95       	ret

0000054c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
 54c:	cf 92       	push	r12
 54e:	df 92       	push	r13
 550:	ef 92       	push	r14
 552:	ff 92       	push	r15
 554:	0f 93       	push	r16
 556:	1f 93       	push	r17
 558:	cf 93       	push	r28
 55a:	df 93       	push	r29
 55c:	00 d0       	rcall	.+0      	; 0x55e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
 55e:	1f 92       	push	r1
 560:	cd b7       	in	r28, 0x3d	; 61
 562:	de b7       	in	r29, 0x3e	; 62
 564:	6c 01       	movw	r12, r24
 566:	f6 2e       	mov	r15, r22
 568:	dc 01       	movw	r26, r24
 56a:	ed 91       	ld	r30, X+
 56c:	fc 91       	ld	r31, X
 56e:	01 90       	ld	r0, Z+
 570:	f0 81       	ld	r31, Z
 572:	e0 2d       	mov	r30, r0
 574:	2a 83       	std	Y+2, r18	; 0x02
 576:	3b 83       	std	Y+3, r19	; 0x03
 578:	49 83       	std	Y+1, r20	; 0x01
 57a:	09 95       	icall
 57c:	d6 01       	movw	r26, r12
 57e:	ed 91       	ld	r30, X+
 580:	fc 91       	ld	r31, X
 582:	04 80       	ldd	r0, Z+4	; 0x04
 584:	f5 81       	ldd	r31, Z+5	; 0x05
 586:	e0 2d       	mov	r30, r0
 588:	6f 2d       	mov	r22, r15
 58a:	c6 01       	movw	r24, r12
 58c:	09 95       	icall
 58e:	d6 01       	movw	r26, r12
 590:	ed 91       	ld	r30, X+
 592:	fc 91       	ld	r31, X
 594:	04 80       	ldd	r0, Z+4	; 0x04
 596:	f5 81       	ldd	r31, Z+5	; 0x05
 598:	e0 2d       	mov	r30, r0
 59a:	49 81       	ldd	r20, Y+1	; 0x01
 59c:	64 2f       	mov	r22, r20
 59e:	c6 01       	movw	r24, r12
 5a0:	09 95       	icall
 5a2:	d6 01       	movw	r26, r12
 5a4:	ed 91       	ld	r30, X+
 5a6:	fc 91       	ld	r31, X
 5a8:	01 90       	ld	r0, Z+
 5aa:	f0 81       	ld	r31, Z
 5ac:	e0 2d       	mov	r30, r0
 5ae:	c6 01       	movw	r24, r12
 5b0:	09 95       	icall
 5b2:	d6 01       	movw	r26, r12
 5b4:	ed 91       	ld	r30, X+
 5b6:	fc 91       	ld	r31, X
 5b8:	6f 2d       	mov	r22, r15
 5ba:	61 60       	ori	r22, 0x01	; 1
 5bc:	04 80       	ldd	r0, Z+4	; 0x04
 5be:	f5 81       	ldd	r31, Z+5	; 0x05
 5c0:	e0 2d       	mov	r30, r0
 5c2:	c6 01       	movw	r24, r12
 5c4:	09 95       	icall
 5c6:	2a 81       	ldd	r18, Y+2	; 0x02
 5c8:	e2 2e       	mov	r14, r18
 5ca:	3b 81       	ldd	r19, Y+3	; 0x03
 5cc:	f3 2e       	mov	r15, r19
 5ce:	0e 0d       	add	r16, r14
 5d0:	1f 1d       	adc	r17, r15
 5d2:	d6 01       	movw	r26, r12
 5d4:	ed 91       	ld	r30, X+
 5d6:	fc 91       	ld	r31, X
 5d8:	e0 16       	cp	r14, r16
 5da:	f1 06       	cpc	r15, r17
 5dc:	51 f0       	breq	.+20     	; 0x5f2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
 5de:	06 80       	ldd	r0, Z+6	; 0x06
 5e0:	f7 81       	ldd	r31, Z+7	; 0x07
 5e2:	e0 2d       	mov	r30, r0
 5e4:	61 e0       	ldi	r22, 0x01	; 1
 5e6:	c6 01       	movw	r24, r12
 5e8:	09 95       	icall
 5ea:	f7 01       	movw	r30, r14
 5ec:	81 93       	st	Z+, r24
 5ee:	7f 01       	movw	r14, r30
 5f0:	f0 cf       	rjmp	.-32     	; 0x5d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
 5f2:	02 80       	ldd	r0, Z+2	; 0x02
 5f4:	f3 81       	ldd	r31, Z+3	; 0x03
 5f6:	e0 2d       	mov	r30, r0
 5f8:	c6 01       	movw	r24, r12
 5fa:	0f 90       	pop	r0
 5fc:	0f 90       	pop	r0
 5fe:	0f 90       	pop	r0
 600:	df 91       	pop	r29
 602:	cf 91       	pop	r28
 604:	1f 91       	pop	r17
 606:	0f 91       	pop	r16
 608:	ff 90       	pop	r15
 60a:	ef 90       	pop	r14
 60c:	df 90       	pop	r13
 60e:	cf 90       	pop	r12
 610:	09 94       	ijmp

00000612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 612:	88 23       	and	r24, r24
 614:	21 f0       	breq	.+8      	; 0x61e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 616:	bf 98       	cbi	0x17, 7	; 23
 618:	82 30       	cpi	r24, 0x02	; 2
 61a:	19 f0       	breq	.+6      	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 61c:	08 95       	ret
 61e:	bf 9a       	sbi	0x17, 7	; 23
 620:	08 95       	ret
 622:	c7 9a       	sbi	0x18, 7	; 24
 624:	08 95       	ret

00000626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
 626:	00 00       	nop
 628:	00 00       	nop
 62a:	08 95       	ret

0000062c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
 62c:	1f 93       	push	r17
 62e:	cf 93       	push	r28
 630:	df 93       	push	r29
 632:	16 2f       	mov	r17, r22
 634:	bd 98       	cbi	0x17, 5	; 23
 636:	80 e0       	ldi	r24, 0x00	; 0
 638:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 63c:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 640:	d8 e0       	ldi	r29, 0x08	; 8
 642:	c0 e0       	ldi	r28, 0x00	; 0
 644:	cc 0f       	add	r28, r28
 646:	81 e0       	ldi	r24, 0x01	; 1
 648:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 64c:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 650:	b5 99       	sbic	0x16, 5	; 22
 652:	c1 60       	ori	r28, 0x01	; 1
 654:	80 e0       	ldi	r24, 0x00	; 0
 656:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 65a:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 65e:	d1 50       	subi	r29, 0x01	; 1
 660:	89 f7       	brne	.-30     	; 0x644 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
 662:	11 23       	and	r17, r17
 664:	11 f0       	breq	.+4      	; 0x66a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
 666:	bd 9a       	sbi	0x17, 5	; 23
 668:	01 c0       	rjmp	.+2      	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
 66a:	bd 98       	cbi	0x17, 5	; 23
 66c:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 670:	81 e0       	ldi	r24, 0x01	; 1
 672:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 676:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 67a:	80 e0       	ldi	r24, 0x00	; 0
 67c:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 680:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 684:	bd 98       	cbi	0x17, 5	; 23
 686:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 68a:	8c 2f       	mov	r24, r28
 68c:	df 91       	pop	r29
 68e:	cf 91       	pop	r28
 690:	1f 91       	pop	r17
 692:	08 95       	ret

00000694 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
 694:	cf 93       	push	r28
 696:	df 93       	push	r29
 698:	d6 2f       	mov	r29, r22
 69a:	c8 e0       	ldi	r28, 0x08	; 8
 69c:	80 e0       	ldi	r24, 0x00	; 0
 69e:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6a2:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6a6:	d7 ff       	sbrs	r29, 7
 6a8:	02 c0       	rjmp	.+4      	; 0x6ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
 6aa:	bd 98       	cbi	0x17, 5	; 23
 6ac:	01 c0       	rjmp	.+2      	; 0x6b0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
 6ae:	bd 9a       	sbi	0x17, 5	; 23
 6b0:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6b4:	81 e0       	ldi	r24, 0x01	; 1
 6b6:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6ba:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6be:	dd 0f       	add	r29, r29
 6c0:	c1 50       	subi	r28, 0x01	; 1
 6c2:	61 f7       	brne	.-40     	; 0x69c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
 6c4:	80 e0       	ldi	r24, 0x00	; 0
 6c6:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6ca:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6ce:	bd 98       	cbi	0x17, 5	; 23
 6d0:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6d4:	81 e0       	ldi	r24, 0x01	; 1
 6d6:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6da:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6de:	c6 b3       	in	r28, 0x16	; 22
 6e0:	80 e0       	ldi	r24, 0x00	; 0
 6e2:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6e6:	0e 94 13 03 	call	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6ea:	c5 fb       	bst	r28, 5
 6ec:	cc 27       	eor	r28, r28
 6ee:	c0 f9       	bld	r28, 0
 6f0:	81 e0       	ldi	r24, 0x01	; 1
 6f2:	8c 27       	eor	r24, r28
 6f4:	df 91       	pop	r29
 6f6:	cf 91       	pop	r28
 6f8:	08 95       	ret

000006fa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
 6fa:	81 e0       	ldi	r24, 0x01	; 1
 6fc:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 700:	bd 98       	cbi	0x17, 5	; 23
 702:	81 e0       	ldi	r24, 0x01	; 1
 704:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 708:	bd 9a       	sbi	0x17, 5	; 23
 70a:	80 e0       	ldi	r24, 0x00	; 0
 70c:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 710:	bd 98       	cbi	0x17, 5	; 23
 712:	0c 94 13 03 	jmp	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000716 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
 716:	80 e0       	ldi	r24, 0x00	; 0
 718:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 71c:	bd 9a       	sbi	0x17, 5	; 23
 71e:	81 e0       	ldi	r24, 0x01	; 1
 720:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 724:	bd 9a       	sbi	0x17, 5	; 23
 726:	81 e0       	ldi	r24, 0x01	; 1
 728:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 72c:	bd 98       	cbi	0x17, 5	; 23
 72e:	0c 94 13 03 	jmp	0x626	; 0x626 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000732 <_GLOBAL__sub_I_i2c>:
 732:	84 e6       	ldi	r24, 0x64	; 100
 734:	90 e0       	ldi	r25, 0x00	; 0
 736:	90 93 b6 00 	sts	0x00B6, r25
 73a:	80 93 b5 00 	sts	0x00B5, r24
 73e:	bd 98       	cbi	0x17, 5	; 23
 740:	81 e0       	ldi	r24, 0x01	; 1
 742:	0e 94 09 03 	call	0x612	; 0x612 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 746:	c5 98       	cbi	0x18, 5	; 24
 748:	c7 98       	cbi	0x18, 7	; 24
 74a:	08 95       	ret

0000074c <_GLOBAL__sub_I_terminal>:
 74c:	89 eb       	ldi	r24, 0xB9	; 185
 74e:	90 e0       	ldi	r25, 0x00	; 0
 750:	0c 94 ad 00 	jmp	0x15a	; 0x15a <_ZN6CUSARTC1Ev>

00000754 <_GLOBAL__sub_D_terminal>:
 754:	89 eb       	ldi	r24, 0xB9	; 185
 756:	90 e0       	ldi	r25, 0x00	; 0
 758:	0c 94 b7 00 	jmp	0x16e	; 0x16e <_ZN6CUSARTD1Ev>

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
