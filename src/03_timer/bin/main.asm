
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
  4c:	0c 94 fe 00 	jmp	0x1fc	; 0x1fc <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	42 01       	movw	r8, r4
  56:	c5 03       	fmuls	r20, r21
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
  b2:	0c 94 d2 03 	jmp	0x7a4	; 0x7a4 <_ZdlPv>

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
 110:	88 e8       	ldi	r24, 0x88	; 136
 112:	90 e0       	ldi	r25, 0x00	; 0
 114:	0e 94 bf 00 	call	0x17e	; 0x17e <_ZN5Timer8add_taskEP4Taskj>
 118:	44 ef       	ldi	r20, 0xF4	; 244
 11a:	51 e0       	ldi	r21, 0x01	; 1
 11c:	be 01       	movw	r22, r28
 11e:	6f 5f       	subi	r22, 0xFF	; 255
 120:	7f 4f       	sbci	r23, 0xFF	; 255
 122:	88 e8       	ldi	r24, 0x88	; 136
 124:	90 e0       	ldi	r25, 0x00	; 0
 126:	0e 94 bf 00 	call	0x17e	; 0x17e <_ZN5Timer8add_taskEP4Taskj>
 12a:	88 e8       	ldi	r24, 0x88	; 136
 12c:	90 e0       	ldi	r25, 0x00	; 0
 12e:	0e 94 e1 00 	call	0x1c2	; 0x1c2 <_ZN5Timer4mainEv>
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

0000014a <_ZN5TimerC1Ev>:
 14a:	e9 e8       	ldi	r30, 0x89	; 137
 14c:	f0 e0       	ldi	r31, 0x00	; 0
 14e:	11 82       	std	Z+1, r1	; 0x01
 150:	10 82       	st	Z, r1
 152:	13 82       	std	Z+3, r1	; 0x03
 154:	12 82       	std	Z+2, r1	; 0x02
 156:	15 82       	std	Z+5, r1	; 0x05
 158:	14 82       	std	Z+4, r1	; 0x04
 15a:	16 82       	std	Z+6, r1	; 0x06
 15c:	37 96       	adiw	r30, 0x07	; 7
 15e:	80 e0       	ldi	r24, 0x00	; 0
 160:	e1 3c       	cpi	r30, 0xC1	; 193
 162:	f8 07       	cpc	r31, r24
 164:	a1 f7       	brne	.-24     	; 0x14e <_ZN5TimerC1Ev+0x4>
 166:	83 b7       	in	r24, 0x33	; 51
 168:	88 60       	ori	r24, 0x08	; 8
 16a:	83 bf       	out	0x33, r24	; 51
 16c:	8b e9       	ldi	r24, 0x9B	; 155
 16e:	8c bf       	out	0x3c, r24	; 60
 170:	83 e0       	ldi	r24, 0x03	; 3
 172:	83 bf       	out	0x33, r24	; 51
 174:	89 b7       	in	r24, 0x39	; 57
 176:	82 60       	ori	r24, 0x02	; 2
 178:	89 bf       	out	0x39, r24	; 57
 17a:	78 94       	sei
 17c:	08 95       	ret

0000017e <_ZN5Timer8add_taskEP4Taskj>:
 17e:	f8 94       	cli
 180:	e9 e8       	ldi	r30, 0x89	; 137
 182:	f0 e0       	ldi	r31, 0x00	; 0
 184:	80 e0       	ldi	r24, 0x00	; 0
 186:	90 e0       	ldi	r25, 0x00	; 0
 188:	20 81       	ld	r18, Z
 18a:	31 81       	ldd	r19, Z+1	; 0x01
 18c:	23 2b       	or	r18, r19
 18e:	81 f4       	brne	.+32     	; 0x1b0 <_ZN5Timer8add_taskEP4Taskj+0x32>
 190:	27 e0       	ldi	r18, 0x07	; 7
 192:	28 9f       	mul	r18, r24
 194:	f0 01       	movw	r30, r0
 196:	29 9f       	mul	r18, r25
 198:	f0 0d       	add	r31, r0
 19a:	11 24       	eor	r1, r1
 19c:	e7 57       	subi	r30, 0x77	; 119
 19e:	ff 4f       	sbci	r31, 0xFF	; 255
 1a0:	71 83       	std	Z+1, r23	; 0x01
 1a2:	60 83       	st	Z, r22
 1a4:	53 83       	std	Z+3, r21	; 0x03
 1a6:	42 83       	std	Z+2, r20	; 0x02
 1a8:	55 83       	std	Z+5, r21	; 0x05
 1aa:	44 83       	std	Z+4, r20	; 0x04
 1ac:	16 82       	std	Z+6, r1	; 0x06
 1ae:	07 c0       	rjmp	.+14     	; 0x1be <_ZN5Timer8add_taskEP4Taskj+0x40>
 1b0:	01 96       	adiw	r24, 0x01	; 1
 1b2:	37 96       	adiw	r30, 0x07	; 7
 1b4:	88 30       	cpi	r24, 0x08	; 8
 1b6:	91 05       	cpc	r25, r1
 1b8:	39 f7       	brne	.-50     	; 0x188 <_ZN5Timer8add_taskEP4Taskj+0xa>
 1ba:	8f ef       	ldi	r24, 0xFF	; 255
 1bc:	9f ef       	ldi	r25, 0xFF	; 255
 1be:	78 94       	sei
 1c0:	08 95       	ret

000001c2 <_ZN5Timer4mainEv>:
 1c2:	cf 93       	push	r28
 1c4:	df 93       	push	r29
 1c6:	cf e8       	ldi	r28, 0x8F	; 143
 1c8:	d0 e0       	ldi	r29, 0x00	; 0
 1ca:	fe 01       	movw	r30, r28
 1cc:	36 97       	sbiw	r30, 0x06	; 6
 1ce:	80 81       	ld	r24, Z
 1d0:	91 81       	ldd	r25, Z+1	; 0x01
 1d2:	00 97       	sbiw	r24, 0x00	; 0
 1d4:	59 f0       	breq	.+22     	; 0x1ec <_ZN5Timer4mainEv+0x2a>
 1d6:	28 81       	ld	r18, Y
 1d8:	22 23       	and	r18, r18
 1da:	41 f0       	breq	.+16     	; 0x1ec <_ZN5Timer4mainEv+0x2a>
 1dc:	18 82       	st	Y, r1
 1de:	dc 01       	movw	r26, r24
 1e0:	ed 91       	ld	r30, X+
 1e2:	fc 91       	ld	r31, X
 1e4:	04 80       	ldd	r0, Z+4	; 0x04
 1e6:	f5 81       	ldd	r31, Z+5	; 0x05
 1e8:	e0 2d       	mov	r30, r0
 1ea:	09 95       	icall
 1ec:	27 96       	adiw	r28, 0x07	; 7
 1ee:	b0 e0       	ldi	r27, 0x00	; 0
 1f0:	c7 3c       	cpi	r28, 0xC7	; 199
 1f2:	db 07       	cpc	r29, r27
 1f4:	51 f7       	brne	.-44     	; 0x1ca <_ZN5Timer4mainEv+0x8>
 1f6:	df 91       	pop	r29
 1f8:	cf 91       	pop	r28
 1fa:	08 95       	ret

000001fc <__vector_19>:
 1fc:	1f 92       	push	r1
 1fe:	0f 92       	push	r0
 200:	0f b6       	in	r0, 0x3f	; 63
 202:	0f 92       	push	r0
 204:	11 24       	eor	r1, r1
 206:	8f 93       	push	r24
 208:	9f 93       	push	r25
 20a:	af 93       	push	r26
 20c:	bf 93       	push	r27
 20e:	ef 93       	push	r30
 210:	ff 93       	push	r31
 212:	e9 e8       	ldi	r30, 0x89	; 137
 214:	f0 e0       	ldi	r31, 0x00	; 0
 216:	af e8       	ldi	r26, 0x8F	; 143
 218:	b0 e0       	ldi	r27, 0x00	; 0
 21a:	84 81       	ldd	r24, Z+4	; 0x04
 21c:	95 81       	ldd	r25, Z+5	; 0x05
 21e:	00 97       	sbiw	r24, 0x00	; 0
 220:	21 f0       	breq	.+8      	; 0x22a <__vector_19+0x2e>
 222:	01 97       	sbiw	r24, 0x01	; 1
 224:	95 83       	std	Z+5, r25	; 0x05
 226:	84 83       	std	Z+4, r24	; 0x04
 228:	09 c0       	rjmp	.+18     	; 0x23c <__vector_19+0x40>
 22a:	82 81       	ldd	r24, Z+2	; 0x02
 22c:	93 81       	ldd	r25, Z+3	; 0x03
 22e:	95 83       	std	Z+5, r25	; 0x05
 230:	84 83       	std	Z+4, r24	; 0x04
 232:	8c 91       	ld	r24, X
 234:	8f 3f       	cpi	r24, 0xFF	; 255
 236:	11 f0       	breq	.+4      	; 0x23c <__vector_19+0x40>
 238:	8f 5f       	subi	r24, 0xFF	; 255
 23a:	8c 93       	st	X, r24
 23c:	37 96       	adiw	r30, 0x07	; 7
 23e:	17 96       	adiw	r26, 0x07	; 7
 240:	80 e0       	ldi	r24, 0x00	; 0
 242:	e1 3c       	cpi	r30, 0xC1	; 193
 244:	f8 07       	cpc	r31, r24
 246:	49 f7       	brne	.-46     	; 0x21a <__vector_19+0x1e>
 248:	80 91 c1 00 	lds	r24, 0x00C1
 24c:	90 91 c2 00 	lds	r25, 0x00C2
 250:	a0 91 c3 00 	lds	r26, 0x00C3
 254:	b0 91 c4 00 	lds	r27, 0x00C4
 258:	01 96       	adiw	r24, 0x01	; 1
 25a:	a1 1d       	adc	r26, r1
 25c:	b1 1d       	adc	r27, r1
 25e:	80 93 c1 00 	sts	0x00C1, r24
 262:	90 93 c2 00 	sts	0x00C2, r25
 266:	a0 93 c3 00 	sts	0x00C3, r26
 26a:	b0 93 c4 00 	sts	0x00C4, r27
 26e:	ff 91       	pop	r31
 270:	ef 91       	pop	r30
 272:	bf 91       	pop	r27
 274:	af 91       	pop	r26
 276:	9f 91       	pop	r25
 278:	8f 91       	pop	r24
 27a:	0f 90       	pop	r0
 27c:	0f be       	out	0x3f, r0	; 63
 27e:	0f 90       	pop	r0
 280:	1f 90       	pop	r1
 282:	18 95       	reti

00000284 <_GLOBAL__sub_I_g_rt_time>:
 284:	88 e8       	ldi	r24, 0x88	; 136
 286:	90 e0       	ldi	r25, 0x00	; 0
 288:	0c 94 a5 00 	jmp	0x14a	; 0x14a <_ZN5TimerC1Ev>

0000028c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
 28c:	0f 93       	push	r16
 28e:	1f 93       	push	r17
 290:	cf 93       	push	r28
 292:	df 93       	push	r29
 294:	00 d0       	rcall	.+0      	; 0x296 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
 296:	1f 92       	push	r1
 298:	cd b7       	in	r28, 0x3d	; 61
 29a:	de b7       	in	r29, 0x3e	; 62
 29c:	8c 01       	movw	r16, r24
 29e:	dc 01       	movw	r26, r24
 2a0:	ed 91       	ld	r30, X+
 2a2:	fc 91       	ld	r31, X
 2a4:	01 90       	ld	r0, Z+
 2a6:	f0 81       	ld	r31, Z
 2a8:	e0 2d       	mov	r30, r0
 2aa:	2b 83       	std	Y+3, r18	; 0x03
 2ac:	4a 83       	std	Y+2, r20	; 0x02
 2ae:	69 83       	std	Y+1, r22	; 0x01
 2b0:	09 95       	icall
 2b2:	d8 01       	movw	r26, r16
 2b4:	ed 91       	ld	r30, X+
 2b6:	fc 91       	ld	r31, X
 2b8:	04 80       	ldd	r0, Z+4	; 0x04
 2ba:	f5 81       	ldd	r31, Z+5	; 0x05
 2bc:	e0 2d       	mov	r30, r0
 2be:	69 81       	ldd	r22, Y+1	; 0x01
 2c0:	c8 01       	movw	r24, r16
 2c2:	09 95       	icall
 2c4:	d8 01       	movw	r26, r16
 2c6:	ed 91       	ld	r30, X+
 2c8:	fc 91       	ld	r31, X
 2ca:	04 80       	ldd	r0, Z+4	; 0x04
 2cc:	f5 81       	ldd	r31, Z+5	; 0x05
 2ce:	e0 2d       	mov	r30, r0
 2d0:	4a 81       	ldd	r20, Y+2	; 0x02
 2d2:	64 2f       	mov	r22, r20
 2d4:	c8 01       	movw	r24, r16
 2d6:	09 95       	icall
 2d8:	d8 01       	movw	r26, r16
 2da:	ed 91       	ld	r30, X+
 2dc:	fc 91       	ld	r31, X
 2de:	04 80       	ldd	r0, Z+4	; 0x04
 2e0:	f5 81       	ldd	r31, Z+5	; 0x05
 2e2:	e0 2d       	mov	r30, r0
 2e4:	2b 81       	ldd	r18, Y+3	; 0x03
 2e6:	62 2f       	mov	r22, r18
 2e8:	c8 01       	movw	r24, r16
 2ea:	09 95       	icall
 2ec:	d8 01       	movw	r26, r16
 2ee:	ed 91       	ld	r30, X+
 2f0:	fc 91       	ld	r31, X
 2f2:	02 80       	ldd	r0, Z+2	; 0x02
 2f4:	f3 81       	ldd	r31, Z+3	; 0x03
 2f6:	e0 2d       	mov	r30, r0
 2f8:	c8 01       	movw	r24, r16
 2fa:	0f 90       	pop	r0
 2fc:	0f 90       	pop	r0
 2fe:	0f 90       	pop	r0
 300:	df 91       	pop	r29
 302:	cf 91       	pop	r28
 304:	1f 91       	pop	r17
 306:	0f 91       	pop	r16
 308:	09 94       	ijmp

0000030a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
 30a:	0f 93       	push	r16
 30c:	1f 93       	push	r17
 30e:	cf 93       	push	r28
 310:	df 93       	push	r29
 312:	00 d0       	rcall	.+0      	; 0x314 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
 314:	00 d0       	rcall	.+0      	; 0x316 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
 316:	cd b7       	in	r28, 0x3d	; 61
 318:	de b7       	in	r29, 0x3e	; 62
 31a:	8c 01       	movw	r16, r24
 31c:	dc 01       	movw	r26, r24
 31e:	ed 91       	ld	r30, X+
 320:	fc 91       	ld	r31, X
 322:	01 90       	ld	r0, Z+
 324:	f0 81       	ld	r31, Z
 326:	e0 2d       	mov	r30, r0
 328:	2c 83       	std	Y+4, r18	; 0x04
 32a:	3b 83       	std	Y+3, r19	; 0x03
 32c:	4a 83       	std	Y+2, r20	; 0x02
 32e:	69 83       	std	Y+1, r22	; 0x01
 330:	09 95       	icall
 332:	d8 01       	movw	r26, r16
 334:	ed 91       	ld	r30, X+
 336:	fc 91       	ld	r31, X
 338:	04 80       	ldd	r0, Z+4	; 0x04
 33a:	f5 81       	ldd	r31, Z+5	; 0x05
 33c:	e0 2d       	mov	r30, r0
 33e:	69 81       	ldd	r22, Y+1	; 0x01
 340:	c8 01       	movw	r24, r16
 342:	09 95       	icall
 344:	d8 01       	movw	r26, r16
 346:	ed 91       	ld	r30, X+
 348:	fc 91       	ld	r31, X
 34a:	04 80       	ldd	r0, Z+4	; 0x04
 34c:	f5 81       	ldd	r31, Z+5	; 0x05
 34e:	e0 2d       	mov	r30, r0
 350:	4a 81       	ldd	r20, Y+2	; 0x02
 352:	64 2f       	mov	r22, r20
 354:	c8 01       	movw	r24, r16
 356:	09 95       	icall
 358:	d8 01       	movw	r26, r16
 35a:	ed 91       	ld	r30, X+
 35c:	fc 91       	ld	r31, X
 35e:	04 80       	ldd	r0, Z+4	; 0x04
 360:	f5 81       	ldd	r31, Z+5	; 0x05
 362:	e0 2d       	mov	r30, r0
 364:	3b 81       	ldd	r19, Y+3	; 0x03
 366:	63 2f       	mov	r22, r19
 368:	c8 01       	movw	r24, r16
 36a:	09 95       	icall
 36c:	d8 01       	movw	r26, r16
 36e:	ed 91       	ld	r30, X+
 370:	fc 91       	ld	r31, X
 372:	04 80       	ldd	r0, Z+4	; 0x04
 374:	f5 81       	ldd	r31, Z+5	; 0x05
 376:	e0 2d       	mov	r30, r0
 378:	2c 81       	ldd	r18, Y+4	; 0x04
 37a:	62 2f       	mov	r22, r18
 37c:	c8 01       	movw	r24, r16
 37e:	09 95       	icall
 380:	d8 01       	movw	r26, r16
 382:	ed 91       	ld	r30, X+
 384:	fc 91       	ld	r31, X
 386:	02 80       	ldd	r0, Z+2	; 0x02
 388:	f3 81       	ldd	r31, Z+3	; 0x03
 38a:	e0 2d       	mov	r30, r0
 38c:	c8 01       	movw	r24, r16
 38e:	0f 90       	pop	r0
 390:	0f 90       	pop	r0
 392:	0f 90       	pop	r0
 394:	0f 90       	pop	r0
 396:	df 91       	pop	r29
 398:	cf 91       	pop	r28
 39a:	1f 91       	pop	r17
 39c:	0f 91       	pop	r16
 39e:	09 94       	ijmp

000003a0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
 3a0:	cf 92       	push	r12
 3a2:	df 92       	push	r13
 3a4:	ef 92       	push	r14
 3a6:	ff 92       	push	r15
 3a8:	0f 93       	push	r16
 3aa:	1f 93       	push	r17
 3ac:	cf 93       	push	r28
 3ae:	df 93       	push	r29
 3b0:	00 d0       	rcall	.+0      	; 0x3b2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
 3b2:	00 d0       	rcall	.+0      	; 0x3b4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
 3b4:	cd b7       	in	r28, 0x3d	; 61
 3b6:	de b7       	in	r29, 0x3e	; 62
 3b8:	6c 01       	movw	r12, r24
 3ba:	dc 01       	movw	r26, r24
 3bc:	ed 91       	ld	r30, X+
 3be:	fc 91       	ld	r31, X
 3c0:	01 90       	ld	r0, Z+
 3c2:	f0 81       	ld	r31, Z
 3c4:	e0 2d       	mov	r30, r0
 3c6:	2b 83       	std	Y+3, r18	; 0x03
 3c8:	3c 83       	std	Y+4, r19	; 0x04
 3ca:	4a 83       	std	Y+2, r20	; 0x02
 3cc:	69 83       	std	Y+1, r22	; 0x01
 3ce:	09 95       	icall
 3d0:	d6 01       	movw	r26, r12
 3d2:	ed 91       	ld	r30, X+
 3d4:	fc 91       	ld	r31, X
 3d6:	04 80       	ldd	r0, Z+4	; 0x04
 3d8:	f5 81       	ldd	r31, Z+5	; 0x05
 3da:	e0 2d       	mov	r30, r0
 3dc:	69 81       	ldd	r22, Y+1	; 0x01
 3de:	c6 01       	movw	r24, r12
 3e0:	09 95       	icall
 3e2:	d6 01       	movw	r26, r12
 3e4:	ed 91       	ld	r30, X+
 3e6:	fc 91       	ld	r31, X
 3e8:	04 80       	ldd	r0, Z+4	; 0x04
 3ea:	f5 81       	ldd	r31, Z+5	; 0x05
 3ec:	e0 2d       	mov	r30, r0
 3ee:	4a 81       	ldd	r20, Y+2	; 0x02
 3f0:	64 2f       	mov	r22, r20
 3f2:	c6 01       	movw	r24, r12
 3f4:	09 95       	icall
 3f6:	2b 81       	ldd	r18, Y+3	; 0x03
 3f8:	e2 2e       	mov	r14, r18
 3fa:	3c 81       	ldd	r19, Y+4	; 0x04
 3fc:	f3 2e       	mov	r15, r19
 3fe:	0e 0d       	add	r16, r14
 400:	1f 1d       	adc	r17, r15
 402:	d6 01       	movw	r26, r12
 404:	ed 91       	ld	r30, X+
 406:	fc 91       	ld	r31, X
 408:	e0 16       	cp	r14, r16
 40a:	f1 06       	cpc	r15, r17
 40c:	49 f0       	breq	.+18     	; 0x420 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
 40e:	d7 01       	movw	r26, r14
 410:	6d 91       	ld	r22, X+
 412:	7d 01       	movw	r14, r26
 414:	04 80       	ldd	r0, Z+4	; 0x04
 416:	f5 81       	ldd	r31, Z+5	; 0x05
 418:	e0 2d       	mov	r30, r0
 41a:	c6 01       	movw	r24, r12
 41c:	09 95       	icall
 41e:	f1 cf       	rjmp	.-30     	; 0x402 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
 420:	02 80       	ldd	r0, Z+2	; 0x02
 422:	f3 81       	ldd	r31, Z+3	; 0x03
 424:	e0 2d       	mov	r30, r0
 426:	c6 01       	movw	r24, r12
 428:	0f 90       	pop	r0
 42a:	0f 90       	pop	r0
 42c:	0f 90       	pop	r0
 42e:	0f 90       	pop	r0
 430:	df 91       	pop	r29
 432:	cf 91       	pop	r28
 434:	1f 91       	pop	r17
 436:	0f 91       	pop	r16
 438:	ff 90       	pop	r15
 43a:	ef 90       	pop	r14
 43c:	df 90       	pop	r13
 43e:	cf 90       	pop	r12
 440:	09 94       	ijmp

00000442 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
 442:	ef 92       	push	r14
 444:	ff 92       	push	r15
 446:	1f 93       	push	r17
 448:	cf 93       	push	r28
 44a:	df 93       	push	r29
 44c:	1f 92       	push	r1
 44e:	cd b7       	in	r28, 0x3d	; 61
 450:	de b7       	in	r29, 0x3e	; 62
 452:	7c 01       	movw	r14, r24
 454:	16 2f       	mov	r17, r22
 456:	dc 01       	movw	r26, r24
 458:	ed 91       	ld	r30, X+
 45a:	fc 91       	ld	r31, X
 45c:	01 90       	ld	r0, Z+
 45e:	f0 81       	ld	r31, Z
 460:	e0 2d       	mov	r30, r0
 462:	49 83       	std	Y+1, r20	; 0x01
 464:	09 95       	icall
 466:	d7 01       	movw	r26, r14
 468:	ed 91       	ld	r30, X+
 46a:	fc 91       	ld	r31, X
 46c:	04 80       	ldd	r0, Z+4	; 0x04
 46e:	f5 81       	ldd	r31, Z+5	; 0x05
 470:	e0 2d       	mov	r30, r0
 472:	61 2f       	mov	r22, r17
 474:	c7 01       	movw	r24, r14
 476:	09 95       	icall
 478:	d7 01       	movw	r26, r14
 47a:	ed 91       	ld	r30, X+
 47c:	fc 91       	ld	r31, X
 47e:	04 80       	ldd	r0, Z+4	; 0x04
 480:	f5 81       	ldd	r31, Z+5	; 0x05
 482:	e0 2d       	mov	r30, r0
 484:	49 81       	ldd	r20, Y+1	; 0x01
 486:	64 2f       	mov	r22, r20
 488:	c7 01       	movw	r24, r14
 48a:	09 95       	icall
 48c:	d7 01       	movw	r26, r14
 48e:	ed 91       	ld	r30, X+
 490:	fc 91       	ld	r31, X
 492:	01 90       	ld	r0, Z+
 494:	f0 81       	ld	r31, Z
 496:	e0 2d       	mov	r30, r0
 498:	c7 01       	movw	r24, r14
 49a:	09 95       	icall
 49c:	d7 01       	movw	r26, r14
 49e:	ed 91       	ld	r30, X+
 4a0:	fc 91       	ld	r31, X
 4a2:	61 2f       	mov	r22, r17
 4a4:	61 60       	ori	r22, 0x01	; 1
 4a6:	04 80       	ldd	r0, Z+4	; 0x04
 4a8:	f5 81       	ldd	r31, Z+5	; 0x05
 4aa:	e0 2d       	mov	r30, r0
 4ac:	c7 01       	movw	r24, r14
 4ae:	09 95       	icall
 4b0:	d7 01       	movw	r26, r14
 4b2:	ed 91       	ld	r30, X+
 4b4:	fc 91       	ld	r31, X
 4b6:	06 80       	ldd	r0, Z+6	; 0x06
 4b8:	f7 81       	ldd	r31, Z+7	; 0x07
 4ba:	e0 2d       	mov	r30, r0
 4bc:	60 e0       	ldi	r22, 0x00	; 0
 4be:	c7 01       	movw	r24, r14
 4c0:	09 95       	icall
 4c2:	18 2f       	mov	r17, r24
 4c4:	d7 01       	movw	r26, r14
 4c6:	ed 91       	ld	r30, X+
 4c8:	fc 91       	ld	r31, X
 4ca:	02 80       	ldd	r0, Z+2	; 0x02
 4cc:	f3 81       	ldd	r31, Z+3	; 0x03
 4ce:	e0 2d       	mov	r30, r0
 4d0:	c7 01       	movw	r24, r14
 4d2:	09 95       	icall
 4d4:	81 2f       	mov	r24, r17
 4d6:	0f 90       	pop	r0
 4d8:	df 91       	pop	r29
 4da:	cf 91       	pop	r28
 4dc:	1f 91       	pop	r17
 4de:	ff 90       	pop	r15
 4e0:	ef 90       	pop	r14
 4e2:	08 95       	ret

000004e4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
 4e4:	ef 92       	push	r14
 4e6:	ff 92       	push	r15
 4e8:	0f 93       	push	r16
 4ea:	1f 93       	push	r17
 4ec:	cf 93       	push	r28
 4ee:	df 93       	push	r29
 4f0:	1f 92       	push	r1
 4f2:	cd b7       	in	r28, 0x3d	; 61
 4f4:	de b7       	in	r29, 0x3e	; 62
 4f6:	7c 01       	movw	r14, r24
 4f8:	16 2f       	mov	r17, r22
 4fa:	dc 01       	movw	r26, r24
 4fc:	ed 91       	ld	r30, X+
 4fe:	fc 91       	ld	r31, X
 500:	01 90       	ld	r0, Z+
 502:	f0 81       	ld	r31, Z
 504:	e0 2d       	mov	r30, r0
 506:	49 83       	std	Y+1, r20	; 0x01
 508:	09 95       	icall
 50a:	d7 01       	movw	r26, r14
 50c:	ed 91       	ld	r30, X+
 50e:	fc 91       	ld	r31, X
 510:	04 80       	ldd	r0, Z+4	; 0x04
 512:	f5 81       	ldd	r31, Z+5	; 0x05
 514:	e0 2d       	mov	r30, r0
 516:	61 2f       	mov	r22, r17
 518:	c7 01       	movw	r24, r14
 51a:	09 95       	icall
 51c:	d7 01       	movw	r26, r14
 51e:	ed 91       	ld	r30, X+
 520:	fc 91       	ld	r31, X
 522:	04 80       	ldd	r0, Z+4	; 0x04
 524:	f5 81       	ldd	r31, Z+5	; 0x05
 526:	e0 2d       	mov	r30, r0
 528:	49 81       	ldd	r20, Y+1	; 0x01
 52a:	64 2f       	mov	r22, r20
 52c:	c7 01       	movw	r24, r14
 52e:	09 95       	icall
 530:	d7 01       	movw	r26, r14
 532:	ed 91       	ld	r30, X+
 534:	fc 91       	ld	r31, X
 536:	01 90       	ld	r0, Z+
 538:	f0 81       	ld	r31, Z
 53a:	e0 2d       	mov	r30, r0
 53c:	c7 01       	movw	r24, r14
 53e:	09 95       	icall
 540:	d7 01       	movw	r26, r14
 542:	ed 91       	ld	r30, X+
 544:	fc 91       	ld	r31, X
 546:	61 2f       	mov	r22, r17
 548:	61 60       	ori	r22, 0x01	; 1
 54a:	04 80       	ldd	r0, Z+4	; 0x04
 54c:	f5 81       	ldd	r31, Z+5	; 0x05
 54e:	e0 2d       	mov	r30, r0
 550:	c7 01       	movw	r24, r14
 552:	09 95       	icall
 554:	d7 01       	movw	r26, r14
 556:	ed 91       	ld	r30, X+
 558:	fc 91       	ld	r31, X
 55a:	06 80       	ldd	r0, Z+6	; 0x06
 55c:	f7 81       	ldd	r31, Z+7	; 0x07
 55e:	e0 2d       	mov	r30, r0
 560:	61 e0       	ldi	r22, 0x01	; 1
 562:	c7 01       	movw	r24, r14
 564:	09 95       	icall
 566:	08 2f       	mov	r16, r24
 568:	10 e0       	ldi	r17, 0x00	; 0
 56a:	10 2f       	mov	r17, r16
 56c:	00 27       	eor	r16, r16
 56e:	d7 01       	movw	r26, r14
 570:	ed 91       	ld	r30, X+
 572:	fc 91       	ld	r31, X
 574:	06 80       	ldd	r0, Z+6	; 0x06
 576:	f7 81       	ldd	r31, Z+7	; 0x07
 578:	e0 2d       	mov	r30, r0
 57a:	60 e0       	ldi	r22, 0x00	; 0
 57c:	c7 01       	movw	r24, r14
 57e:	09 95       	icall
 580:	08 2b       	or	r16, r24
 582:	d7 01       	movw	r26, r14
 584:	ed 91       	ld	r30, X+
 586:	fc 91       	ld	r31, X
 588:	02 80       	ldd	r0, Z+2	; 0x02
 58a:	f3 81       	ldd	r31, Z+3	; 0x03
 58c:	e0 2d       	mov	r30, r0
 58e:	c7 01       	movw	r24, r14
 590:	09 95       	icall
 592:	c8 01       	movw	r24, r16
 594:	0f 90       	pop	r0
 596:	df 91       	pop	r29
 598:	cf 91       	pop	r28
 59a:	1f 91       	pop	r17
 59c:	0f 91       	pop	r16
 59e:	ff 90       	pop	r15
 5a0:	ef 90       	pop	r14
 5a2:	08 95       	ret

000005a4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
 5a4:	cf 92       	push	r12
 5a6:	df 92       	push	r13
 5a8:	ef 92       	push	r14
 5aa:	ff 92       	push	r15
 5ac:	0f 93       	push	r16
 5ae:	1f 93       	push	r17
 5b0:	cf 93       	push	r28
 5b2:	df 93       	push	r29
 5b4:	00 d0       	rcall	.+0      	; 0x5b6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
 5b6:	1f 92       	push	r1
 5b8:	cd b7       	in	r28, 0x3d	; 61
 5ba:	de b7       	in	r29, 0x3e	; 62
 5bc:	6c 01       	movw	r12, r24
 5be:	f6 2e       	mov	r15, r22
 5c0:	dc 01       	movw	r26, r24
 5c2:	ed 91       	ld	r30, X+
 5c4:	fc 91       	ld	r31, X
 5c6:	01 90       	ld	r0, Z+
 5c8:	f0 81       	ld	r31, Z
 5ca:	e0 2d       	mov	r30, r0
 5cc:	2a 83       	std	Y+2, r18	; 0x02
 5ce:	3b 83       	std	Y+3, r19	; 0x03
 5d0:	49 83       	std	Y+1, r20	; 0x01
 5d2:	09 95       	icall
 5d4:	d6 01       	movw	r26, r12
 5d6:	ed 91       	ld	r30, X+
 5d8:	fc 91       	ld	r31, X
 5da:	04 80       	ldd	r0, Z+4	; 0x04
 5dc:	f5 81       	ldd	r31, Z+5	; 0x05
 5de:	e0 2d       	mov	r30, r0
 5e0:	6f 2d       	mov	r22, r15
 5e2:	c6 01       	movw	r24, r12
 5e4:	09 95       	icall
 5e6:	d6 01       	movw	r26, r12
 5e8:	ed 91       	ld	r30, X+
 5ea:	fc 91       	ld	r31, X
 5ec:	04 80       	ldd	r0, Z+4	; 0x04
 5ee:	f5 81       	ldd	r31, Z+5	; 0x05
 5f0:	e0 2d       	mov	r30, r0
 5f2:	49 81       	ldd	r20, Y+1	; 0x01
 5f4:	64 2f       	mov	r22, r20
 5f6:	c6 01       	movw	r24, r12
 5f8:	09 95       	icall
 5fa:	d6 01       	movw	r26, r12
 5fc:	ed 91       	ld	r30, X+
 5fe:	fc 91       	ld	r31, X
 600:	01 90       	ld	r0, Z+
 602:	f0 81       	ld	r31, Z
 604:	e0 2d       	mov	r30, r0
 606:	c6 01       	movw	r24, r12
 608:	09 95       	icall
 60a:	d6 01       	movw	r26, r12
 60c:	ed 91       	ld	r30, X+
 60e:	fc 91       	ld	r31, X
 610:	6f 2d       	mov	r22, r15
 612:	61 60       	ori	r22, 0x01	; 1
 614:	04 80       	ldd	r0, Z+4	; 0x04
 616:	f5 81       	ldd	r31, Z+5	; 0x05
 618:	e0 2d       	mov	r30, r0
 61a:	c6 01       	movw	r24, r12
 61c:	09 95       	icall
 61e:	2a 81       	ldd	r18, Y+2	; 0x02
 620:	e2 2e       	mov	r14, r18
 622:	3b 81       	ldd	r19, Y+3	; 0x03
 624:	f3 2e       	mov	r15, r19
 626:	0e 0d       	add	r16, r14
 628:	1f 1d       	adc	r17, r15
 62a:	d6 01       	movw	r26, r12
 62c:	ed 91       	ld	r30, X+
 62e:	fc 91       	ld	r31, X
 630:	e0 16       	cp	r14, r16
 632:	f1 06       	cpc	r15, r17
 634:	51 f0       	breq	.+20     	; 0x64a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
 636:	06 80       	ldd	r0, Z+6	; 0x06
 638:	f7 81       	ldd	r31, Z+7	; 0x07
 63a:	e0 2d       	mov	r30, r0
 63c:	61 e0       	ldi	r22, 0x01	; 1
 63e:	c6 01       	movw	r24, r12
 640:	09 95       	icall
 642:	f7 01       	movw	r30, r14
 644:	81 93       	st	Z+, r24
 646:	7f 01       	movw	r14, r30
 648:	f0 cf       	rjmp	.-32     	; 0x62a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
 64a:	02 80       	ldd	r0, Z+2	; 0x02
 64c:	f3 81       	ldd	r31, Z+3	; 0x03
 64e:	e0 2d       	mov	r30, r0
 650:	c6 01       	movw	r24, r12
 652:	0f 90       	pop	r0
 654:	0f 90       	pop	r0
 656:	0f 90       	pop	r0
 658:	df 91       	pop	r29
 65a:	cf 91       	pop	r28
 65c:	1f 91       	pop	r17
 65e:	0f 91       	pop	r16
 660:	ff 90       	pop	r15
 662:	ef 90       	pop	r14
 664:	df 90       	pop	r13
 666:	cf 90       	pop	r12
 668:	09 94       	ijmp

0000066a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 66a:	88 23       	and	r24, r24
 66c:	21 f0       	breq	.+8      	; 0x676 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 66e:	bf 98       	cbi	0x17, 7	; 23
 670:	82 30       	cpi	r24, 0x02	; 2
 672:	19 f0       	breq	.+6      	; 0x67a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 674:	08 95       	ret
 676:	bf 9a       	sbi	0x17, 7	; 23
 678:	08 95       	ret
 67a:	c7 9a       	sbi	0x18, 7	; 24
 67c:	08 95       	ret

0000067e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
 67e:	00 00       	nop
 680:	00 00       	nop
 682:	08 95       	ret

00000684 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
 684:	1f 93       	push	r17
 686:	cf 93       	push	r28
 688:	df 93       	push	r29
 68a:	16 2f       	mov	r17, r22
 68c:	bd 98       	cbi	0x17, 5	; 23
 68e:	80 e0       	ldi	r24, 0x00	; 0
 690:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 694:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 698:	d8 e0       	ldi	r29, 0x08	; 8
 69a:	c0 e0       	ldi	r28, 0x00	; 0
 69c:	cc 0f       	add	r28, r28
 69e:	81 e0       	ldi	r24, 0x01	; 1
 6a0:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6a4:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6a8:	b5 99       	sbic	0x16, 5	; 22
 6aa:	c1 60       	ori	r28, 0x01	; 1
 6ac:	80 e0       	ldi	r24, 0x00	; 0
 6ae:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6b2:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6b6:	d1 50       	subi	r29, 0x01	; 1
 6b8:	89 f7       	brne	.-30     	; 0x69c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
 6ba:	11 23       	and	r17, r17
 6bc:	11 f0       	breq	.+4      	; 0x6c2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
 6be:	bd 9a       	sbi	0x17, 5	; 23
 6c0:	01 c0       	rjmp	.+2      	; 0x6c4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
 6c2:	bd 98       	cbi	0x17, 5	; 23
 6c4:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6c8:	81 e0       	ldi	r24, 0x01	; 1
 6ca:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6ce:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6d2:	80 e0       	ldi	r24, 0x00	; 0
 6d4:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6d8:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6dc:	bd 98       	cbi	0x17, 5	; 23
 6de:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6e2:	8c 2f       	mov	r24, r28
 6e4:	df 91       	pop	r29
 6e6:	cf 91       	pop	r28
 6e8:	1f 91       	pop	r17
 6ea:	08 95       	ret

000006ec <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
 6ec:	cf 93       	push	r28
 6ee:	df 93       	push	r29
 6f0:	d6 2f       	mov	r29, r22
 6f2:	c8 e0       	ldi	r28, 0x08	; 8
 6f4:	80 e0       	ldi	r24, 0x00	; 0
 6f6:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6fa:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6fe:	d7 ff       	sbrs	r29, 7
 700:	02 c0       	rjmp	.+4      	; 0x706 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
 702:	bd 98       	cbi	0x17, 5	; 23
 704:	01 c0       	rjmp	.+2      	; 0x708 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
 706:	bd 9a       	sbi	0x17, 5	; 23
 708:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 70c:	81 e0       	ldi	r24, 0x01	; 1
 70e:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 712:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 716:	dd 0f       	add	r29, r29
 718:	c1 50       	subi	r28, 0x01	; 1
 71a:	61 f7       	brne	.-40     	; 0x6f4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
 71c:	80 e0       	ldi	r24, 0x00	; 0
 71e:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 722:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 726:	bd 98       	cbi	0x17, 5	; 23
 728:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 72c:	81 e0       	ldi	r24, 0x01	; 1
 72e:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 732:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 736:	c6 b3       	in	r28, 0x16	; 22
 738:	80 e0       	ldi	r24, 0x00	; 0
 73a:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 73e:	0e 94 3f 03 	call	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 742:	c5 fb       	bst	r28, 5
 744:	cc 27       	eor	r28, r28
 746:	c0 f9       	bld	r28, 0
 748:	81 e0       	ldi	r24, 0x01	; 1
 74a:	8c 27       	eor	r24, r28
 74c:	df 91       	pop	r29
 74e:	cf 91       	pop	r28
 750:	08 95       	ret

00000752 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
 752:	81 e0       	ldi	r24, 0x01	; 1
 754:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 758:	bd 98       	cbi	0x17, 5	; 23
 75a:	81 e0       	ldi	r24, 0x01	; 1
 75c:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 760:	bd 9a       	sbi	0x17, 5	; 23
 762:	80 e0       	ldi	r24, 0x00	; 0
 764:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 768:	bd 98       	cbi	0x17, 5	; 23
 76a:	0c 94 3f 03 	jmp	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000076e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
 76e:	80 e0       	ldi	r24, 0x00	; 0
 770:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 774:	bd 9a       	sbi	0x17, 5	; 23
 776:	81 e0       	ldi	r24, 0x01	; 1
 778:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 77c:	bd 9a       	sbi	0x17, 5	; 23
 77e:	81 e0       	ldi	r24, 0x01	; 1
 780:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 784:	bd 98       	cbi	0x17, 5	; 23
 786:	0c 94 3f 03 	jmp	0x67e	; 0x67e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000078a <_GLOBAL__sub_I_i2c>:
 78a:	84 e7       	ldi	r24, 0x74	; 116
 78c:	90 e0       	ldi	r25, 0x00	; 0
 78e:	90 93 c6 00 	sts	0x00C6, r25
 792:	80 93 c5 00 	sts	0x00C5, r24
 796:	bd 98       	cbi	0x17, 5	; 23
 798:	81 e0       	ldi	r24, 0x01	; 1
 79a:	0e 94 35 03 	call	0x66a	; 0x66a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 79e:	c5 98       	cbi	0x18, 5	; 24
 7a0:	c7 98       	cbi	0x18, 7	; 24
 7a2:	08 95       	ret

000007a4 <_ZdlPv>:
 7a4:	0c 94 77 04 	jmp	0x8ee	; 0x8ee <free>

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
