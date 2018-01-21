
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
  4c:	0c 94 a5 01 	jmp	0x34a	; 0x34a <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	e9 01       	movw	r28, r18
  56:	b0 04       	cpc	r11, r0
  58:	c1 04       	cpc	r12, r1

0000005a <__ctors_end>:
  5a:	c5 04       	cpc	r12, r5

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
  6e:	e2 e1       	ldi	r30, 0x12	; 18
  70:	fc e0       	ldi	r31, 0x0C	; 12
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
  9a:	0e 94 c9 04 	call	0x992	; 0x992 <__tablejump2__>
  9e:	ca 32       	cpi	r28, 0x2A	; 42
  a0:	d1 07       	cpc	r29, r17
  a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
  a4:	0e 94 c3 00 	call	0x186	; 0x186 <main>
  a8:	0c 94 fc 05 	jmp	0xbf8	; 0xbf8 <__do_global_dtors>

000000ac <__bad_interrupt>:
  ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN5BlinkD1Ev>:
  b0:	08 95       	ret

000000b2 <_ZN5BlinkD0Ev>:
  b2:	0c 94 bf 04 	jmp	0x97e	; 0x97e <_ZdlPv>

000000b6 <_ZN5Blink4mainEv>:
  b6:	fc 01       	movw	r30, r24
  b8:	83 81       	ldd	r24, Z+3	; 0x03
  ba:	94 81       	ldd	r25, Z+4	; 0x04
  bc:	00 97       	sbiw	r24, 0x00	; 0
  be:	19 f0       	breq	.+6      	; 0xc6 <_ZN5Blink4mainEv+0x10>
  c0:	01 97       	sbiw	r24, 0x01	; 1
  c2:	39 f0       	breq	.+14     	; 0xd2 <_ZN5Blink4mainEv+0x1c>
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

000000da <_Z10motor_testP5Motor>:
  da:	cf 93       	push	r28
  dc:	df 93       	push	r29
  de:	ec 01       	movw	r28, r24
  e0:	40 e0       	ldi	r20, 0x00	; 0
  e2:	50 e0       	ldi	r21, 0x00	; 0
  e4:	68 ec       	ldi	r22, 0xC8	; 200
  e6:	70 e0       	ldi	r23, 0x00	; 0
  e8:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <_ZN5Motor3runEii>
  ec:	44 ef       	ldi	r20, 0xF4	; 244
  ee:	51 e0       	ldi	r21, 0x01	; 1
  f0:	60 e0       	ldi	r22, 0x00	; 0
  f2:	70 e0       	ldi	r23, 0x00	; 0
  f4:	88 e8       	ldi	r24, 0x88	; 136
  f6:	90 e0       	ldi	r25, 0x00	; 0
  f8:	0e 94 71 01 	call	0x2e2	; 0x2e2 <_ZN5Timer8delay_msEm>
  fc:	40 e0       	ldi	r20, 0x00	; 0
  fe:	50 e0       	ldi	r21, 0x00	; 0
 100:	68 e3       	ldi	r22, 0x38	; 56
 102:	7f ef       	ldi	r23, 0xFF	; 255
 104:	ce 01       	movw	r24, r28
 106:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <_ZN5Motor3runEii>
 10a:	44 ef       	ldi	r20, 0xF4	; 244
 10c:	51 e0       	ldi	r21, 0x01	; 1
 10e:	60 e0       	ldi	r22, 0x00	; 0
 110:	70 e0       	ldi	r23, 0x00	; 0
 112:	88 e8       	ldi	r24, 0x88	; 136
 114:	90 e0       	ldi	r25, 0x00	; 0
 116:	0e 94 71 01 	call	0x2e2	; 0x2e2 <_ZN5Timer8delay_msEm>
 11a:	48 ec       	ldi	r20, 0xC8	; 200
 11c:	50 e0       	ldi	r21, 0x00	; 0
 11e:	60 e0       	ldi	r22, 0x00	; 0
 120:	70 e0       	ldi	r23, 0x00	; 0
 122:	ce 01       	movw	r24, r28
 124:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <_ZN5Motor3runEii>
 128:	44 ef       	ldi	r20, 0xF4	; 244
 12a:	51 e0       	ldi	r21, 0x01	; 1
 12c:	60 e0       	ldi	r22, 0x00	; 0
 12e:	70 e0       	ldi	r23, 0x00	; 0
 130:	88 e8       	ldi	r24, 0x88	; 136
 132:	90 e0       	ldi	r25, 0x00	; 0
 134:	0e 94 71 01 	call	0x2e2	; 0x2e2 <_ZN5Timer8delay_msEm>
 138:	48 e3       	ldi	r20, 0x38	; 56
 13a:	5f ef       	ldi	r21, 0xFF	; 255
 13c:	60 e0       	ldi	r22, 0x00	; 0
 13e:	70 e0       	ldi	r23, 0x00	; 0
 140:	ce 01       	movw	r24, r28
 142:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <_ZN5Motor3runEii>
 146:	44 ef       	ldi	r20, 0xF4	; 244
 148:	51 e0       	ldi	r21, 0x01	; 1
 14a:	60 e0       	ldi	r22, 0x00	; 0
 14c:	70 e0       	ldi	r23, 0x00	; 0
 14e:	88 e8       	ldi	r24, 0x88	; 136
 150:	90 e0       	ldi	r25, 0x00	; 0
 152:	0e 94 71 01 	call	0x2e2	; 0x2e2 <_ZN5Timer8delay_msEm>
 156:	48 ec       	ldi	r20, 0xC8	; 200
 158:	50 e0       	ldi	r21, 0x00	; 0
 15a:	68 ec       	ldi	r22, 0xC8	; 200
 15c:	70 e0       	ldi	r23, 0x00	; 0
 15e:	ce 01       	movw	r24, r28
 160:	0e 94 f9 01 	call	0x3f2	; 0x3f2 <_ZN5Motor3runEii>
 164:	44 ef       	ldi	r20, 0xF4	; 244
 166:	51 e0       	ldi	r21, 0x01	; 1
 168:	60 e0       	ldi	r22, 0x00	; 0
 16a:	70 e0       	ldi	r23, 0x00	; 0
 16c:	88 e8       	ldi	r24, 0x88	; 136
 16e:	90 e0       	ldi	r25, 0x00	; 0
 170:	0e 94 71 01 	call	0x2e2	; 0x2e2 <_ZN5Timer8delay_msEm>
 174:	40 e0       	ldi	r20, 0x00	; 0
 176:	50 e0       	ldi	r21, 0x00	; 0
 178:	60 e0       	ldi	r22, 0x00	; 0
 17a:	70 e0       	ldi	r23, 0x00	; 0
 17c:	ce 01       	movw	r24, r28
 17e:	df 91       	pop	r29
 180:	cf 91       	pop	r28
 182:	0c 94 f9 01 	jmp	0x3f2	; 0x3f2 <_ZN5Motor3runEii>

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
 1b0:	88 e8       	ldi	r24, 0x88	; 136
 1b2:	90 e0       	ldi	r25, 0x00	; 0
 1b4:	0e 94 13 01 	call	0x226	; 0x226 <_ZN5Timer8add_taskEP4Taskj>
 1b8:	81 e0       	ldi	r24, 0x01	; 1
 1ba:	90 e0       	ldi	r25, 0x00	; 0
 1bc:	0e 94 bd 04 	call	0x97a	; 0x97a <_Znwj>
 1c0:	8c 01       	movw	r16, r24
 1c2:	0e 94 ed 01 	call	0x3da	; 0x3da <_ZN5MotorC1Ev>
 1c6:	b3 9b       	sbis	0x16, 3	; 22
 1c8:	05 c0       	rjmp	.+10     	; 0x1d4 <main+0x4e>
 1ca:	88 e8       	ldi	r24, 0x88	; 136
 1cc:	90 e0       	ldi	r25, 0x00	; 0
 1ce:	0e 94 35 01 	call	0x26a	; 0x26a <_ZN5Timer4mainEv>
 1d2:	f9 cf       	rjmp	.-14     	; 0x1c6 <main+0x40>
 1d4:	c8 01       	movw	r24, r16
 1d6:	0e 94 6d 00 	call	0xda	; 0xda <_Z10motor_testP5Motor>
 1da:	f5 cf       	rjmp	.-22     	; 0x1c6 <main+0x40>

000001dc <_ZN5USARTC1Ev>:
 1dc:	10 bc       	out	0x20, r1	; 32
 1de:	80 e4       	ldi	r24, 0x40	; 64
 1e0:	89 b9       	out	0x09, r24	; 9
 1e2:	80 b5       	in	r24, 0x20	; 32
 1e4:	86 68       	ori	r24, 0x86	; 134
 1e6:	80 bd       	out	0x20, r24	; 32
 1e8:	8a b1       	in	r24, 0x0a	; 10
 1ea:	88 61       	ori	r24, 0x18	; 24
 1ec:	8a b9       	out	0x0a, r24	; 10
 1ee:	08 95       	ret

000001f0 <_ZN5USARTD1Ev>:
 1f0:	08 95       	ret

000001f2 <_ZN5TimerC1Ev>:
 1f2:	e9 e8       	ldi	r30, 0x89	; 137
 1f4:	f0 e0       	ldi	r31, 0x00	; 0
 1f6:	11 82       	std	Z+1, r1	; 0x01
 1f8:	10 82       	st	Z, r1
 1fa:	13 82       	std	Z+3, r1	; 0x03
 1fc:	12 82       	std	Z+2, r1	; 0x02
 1fe:	15 82       	std	Z+5, r1	; 0x05
 200:	14 82       	std	Z+4, r1	; 0x04
 202:	16 82       	std	Z+6, r1	; 0x06
 204:	37 96       	adiw	r30, 0x07	; 7
 206:	80 e0       	ldi	r24, 0x00	; 0
 208:	e1 3c       	cpi	r30, 0xC1	; 193
 20a:	f8 07       	cpc	r31, r24
 20c:	a1 f7       	brne	.-24     	; 0x1f6 <_ZN5TimerC1Ev+0x4>
 20e:	83 b7       	in	r24, 0x33	; 51
 210:	88 60       	ori	r24, 0x08	; 8
 212:	83 bf       	out	0x33, r24	; 51
 214:	8b e9       	ldi	r24, 0x9B	; 155
 216:	8c bf       	out	0x3c, r24	; 60
 218:	83 e0       	ldi	r24, 0x03	; 3
 21a:	83 bf       	out	0x33, r24	; 51
 21c:	89 b7       	in	r24, 0x39	; 57
 21e:	82 60       	ori	r24, 0x02	; 2
 220:	89 bf       	out	0x39, r24	; 57
 222:	78 94       	sei
 224:	08 95       	ret

00000226 <_ZN5Timer8add_taskEP4Taskj>:
 226:	f8 94       	cli
 228:	e9 e8       	ldi	r30, 0x89	; 137
 22a:	f0 e0       	ldi	r31, 0x00	; 0
 22c:	80 e0       	ldi	r24, 0x00	; 0
 22e:	90 e0       	ldi	r25, 0x00	; 0
 230:	20 81       	ld	r18, Z
 232:	31 81       	ldd	r19, Z+1	; 0x01
 234:	23 2b       	or	r18, r19
 236:	81 f4       	brne	.+32     	; 0x258 <_ZN5Timer8add_taskEP4Taskj+0x32>
 238:	27 e0       	ldi	r18, 0x07	; 7
 23a:	28 9f       	mul	r18, r24
 23c:	f0 01       	movw	r30, r0
 23e:	29 9f       	mul	r18, r25
 240:	f0 0d       	add	r31, r0
 242:	11 24       	eor	r1, r1
 244:	e7 57       	subi	r30, 0x77	; 119
 246:	ff 4f       	sbci	r31, 0xFF	; 255
 248:	71 83       	std	Z+1, r23	; 0x01
 24a:	60 83       	st	Z, r22
 24c:	53 83       	std	Z+3, r21	; 0x03
 24e:	42 83       	std	Z+2, r20	; 0x02
 250:	55 83       	std	Z+5, r21	; 0x05
 252:	44 83       	std	Z+4, r20	; 0x04
 254:	16 82       	std	Z+6, r1	; 0x06
 256:	07 c0       	rjmp	.+14     	; 0x266 <_ZN5Timer8add_taskEP4Taskj+0x40>
 258:	01 96       	adiw	r24, 0x01	; 1
 25a:	37 96       	adiw	r30, 0x07	; 7
 25c:	88 30       	cpi	r24, 0x08	; 8
 25e:	91 05       	cpc	r25, r1
 260:	39 f7       	brne	.-50     	; 0x230 <_ZN5Timer8add_taskEP4Taskj+0xa>
 262:	8f ef       	ldi	r24, 0xFF	; 255
 264:	9f ef       	ldi	r25, 0xFF	; 255
 266:	78 94       	sei
 268:	08 95       	ret

0000026a <_ZN5Timer4mainEv>:
 26a:	cf 93       	push	r28
 26c:	df 93       	push	r29
 26e:	cf e8       	ldi	r28, 0x8F	; 143
 270:	d0 e0       	ldi	r29, 0x00	; 0
 272:	fe 01       	movw	r30, r28
 274:	36 97       	sbiw	r30, 0x06	; 6
 276:	80 81       	ld	r24, Z
 278:	91 81       	ldd	r25, Z+1	; 0x01
 27a:	00 97       	sbiw	r24, 0x00	; 0
 27c:	59 f0       	breq	.+22     	; 0x294 <_ZN5Timer4mainEv+0x2a>
 27e:	28 81       	ld	r18, Y
 280:	22 23       	and	r18, r18
 282:	41 f0       	breq	.+16     	; 0x294 <_ZN5Timer4mainEv+0x2a>
 284:	18 82       	st	Y, r1
 286:	dc 01       	movw	r26, r24
 288:	ed 91       	ld	r30, X+
 28a:	fc 91       	ld	r31, X
 28c:	04 80       	ldd	r0, Z+4	; 0x04
 28e:	f5 81       	ldd	r31, Z+5	; 0x05
 290:	e0 2d       	mov	r30, r0
 292:	09 95       	icall
 294:	27 96       	adiw	r28, 0x07	; 7
 296:	b0 e0       	ldi	r27, 0x00	; 0
 298:	c7 3c       	cpi	r28, 0xC7	; 199
 29a:	db 07       	cpc	r29, r27
 29c:	51 f7       	brne	.-44     	; 0x272 <_ZN5Timer4mainEv+0x8>
 29e:	df 91       	pop	r29
 2a0:	cf 91       	pop	r28
 2a2:	08 95       	ret

000002a4 <_ZN5Timer8get_timeEv>:
 2a4:	cf 93       	push	r28
 2a6:	df 93       	push	r29
 2a8:	00 d0       	rcall	.+0      	; 0x2aa <_ZN5Timer8get_timeEv+0x6>
 2aa:	00 d0       	rcall	.+0      	; 0x2ac <_ZN5Timer8get_timeEv+0x8>
 2ac:	cd b7       	in	r28, 0x3d	; 61
 2ae:	de b7       	in	r29, 0x3e	; 62
 2b0:	f8 94       	cli
 2b2:	80 91 c1 00 	lds	r24, 0x00C1
 2b6:	90 91 c2 00 	lds	r25, 0x00C2
 2ba:	a0 91 c3 00 	lds	r26, 0x00C3
 2be:	b0 91 c4 00 	lds	r27, 0x00C4
 2c2:	89 83       	std	Y+1, r24	; 0x01
 2c4:	9a 83       	std	Y+2, r25	; 0x02
 2c6:	ab 83       	std	Y+3, r26	; 0x03
 2c8:	bc 83       	std	Y+4, r27	; 0x04
 2ca:	78 94       	sei
 2cc:	69 81       	ldd	r22, Y+1	; 0x01
 2ce:	7a 81       	ldd	r23, Y+2	; 0x02
 2d0:	8b 81       	ldd	r24, Y+3	; 0x03
 2d2:	9c 81       	ldd	r25, Y+4	; 0x04
 2d4:	0f 90       	pop	r0
 2d6:	0f 90       	pop	r0
 2d8:	0f 90       	pop	r0
 2da:	0f 90       	pop	r0
 2dc:	df 91       	pop	r29
 2de:	cf 91       	pop	r28
 2e0:	08 95       	ret

000002e2 <_ZN5Timer8delay_msEm>:
 2e2:	cf 92       	push	r12
 2e4:	df 92       	push	r13
 2e6:	ef 92       	push	r14
 2e8:	ff 92       	push	r15
 2ea:	0f 93       	push	r16
 2ec:	1f 93       	push	r17
 2ee:	cf 93       	push	r28
 2f0:	df 93       	push	r29
 2f2:	00 d0       	rcall	.+0      	; 0x2f4 <_ZN5Timer8delay_msEm+0x12>
 2f4:	00 d0       	rcall	.+0      	; 0x2f6 <_ZN5Timer8delay_msEm+0x14>
 2f6:	cd b7       	in	r28, 0x3d	; 61
 2f8:	de b7       	in	r29, 0x3e	; 62
 2fa:	8c 01       	movw	r16, r24
 2fc:	6a 01       	movw	r12, r20
 2fe:	7b 01       	movw	r14, r22
 300:	0e 94 52 01 	call	0x2a4	; 0x2a4 <_ZN5Timer8get_timeEv>
 304:	c6 0e       	add	r12, r22
 306:	d7 1e       	adc	r13, r23
 308:	e8 1e       	adc	r14, r24
 30a:	f9 1e       	adc	r15, r25
 30c:	c9 82       	std	Y+1, r12	; 0x01
 30e:	da 82       	std	Y+2, r13	; 0x02
 310:	eb 82       	std	Y+3, r14	; 0x03
 312:	fc 82       	std	Y+4, r15	; 0x04
 314:	c8 01       	movw	r24, r16
 316:	0e 94 52 01 	call	0x2a4	; 0x2a4 <_ZN5Timer8get_timeEv>
 31a:	c9 80       	ldd	r12, Y+1	; 0x01
 31c:	da 80       	ldd	r13, Y+2	; 0x02
 31e:	eb 80       	ldd	r14, Y+3	; 0x03
 320:	fc 80       	ldd	r15, Y+4	; 0x04
 322:	6c 15       	cp	r22, r12
 324:	7d 05       	cpc	r23, r13
 326:	8e 05       	cpc	r24, r14
 328:	9f 05       	cpc	r25, r15
 32a:	10 f4       	brcc	.+4      	; 0x330 <_ZN5Timer8delay_msEm+0x4e>
 32c:	00 00       	nop
 32e:	f2 cf       	rjmp	.-28     	; 0x314 <_ZN5Timer8delay_msEm+0x32>
 330:	0f 90       	pop	r0
 332:	0f 90       	pop	r0
 334:	0f 90       	pop	r0
 336:	0f 90       	pop	r0
 338:	df 91       	pop	r29
 33a:	cf 91       	pop	r28
 33c:	1f 91       	pop	r17
 33e:	0f 91       	pop	r16
 340:	ff 90       	pop	r15
 342:	ef 90       	pop	r14
 344:	df 90       	pop	r13
 346:	cf 90       	pop	r12
 348:	08 95       	ret

0000034a <__vector_19>:
 34a:	1f 92       	push	r1
 34c:	0f 92       	push	r0
 34e:	0f b6       	in	r0, 0x3f	; 63
 350:	0f 92       	push	r0
 352:	11 24       	eor	r1, r1
 354:	8f 93       	push	r24
 356:	9f 93       	push	r25
 358:	af 93       	push	r26
 35a:	bf 93       	push	r27
 35c:	ef 93       	push	r30
 35e:	ff 93       	push	r31
 360:	e9 e8       	ldi	r30, 0x89	; 137
 362:	f0 e0       	ldi	r31, 0x00	; 0
 364:	af e8       	ldi	r26, 0x8F	; 143
 366:	b0 e0       	ldi	r27, 0x00	; 0
 368:	84 81       	ldd	r24, Z+4	; 0x04
 36a:	95 81       	ldd	r25, Z+5	; 0x05
 36c:	00 97       	sbiw	r24, 0x00	; 0
 36e:	21 f0       	breq	.+8      	; 0x378 <__vector_19+0x2e>
 370:	01 97       	sbiw	r24, 0x01	; 1
 372:	95 83       	std	Z+5, r25	; 0x05
 374:	84 83       	std	Z+4, r24	; 0x04
 376:	09 c0       	rjmp	.+18     	; 0x38a <__vector_19+0x40>
 378:	82 81       	ldd	r24, Z+2	; 0x02
 37a:	93 81       	ldd	r25, Z+3	; 0x03
 37c:	95 83       	std	Z+5, r25	; 0x05
 37e:	84 83       	std	Z+4, r24	; 0x04
 380:	8c 91       	ld	r24, X
 382:	8f 3f       	cpi	r24, 0xFF	; 255
 384:	11 f0       	breq	.+4      	; 0x38a <__vector_19+0x40>
 386:	8f 5f       	subi	r24, 0xFF	; 255
 388:	8c 93       	st	X, r24
 38a:	37 96       	adiw	r30, 0x07	; 7
 38c:	17 96       	adiw	r26, 0x07	; 7
 38e:	80 e0       	ldi	r24, 0x00	; 0
 390:	e1 3c       	cpi	r30, 0xC1	; 193
 392:	f8 07       	cpc	r31, r24
 394:	49 f7       	brne	.-46     	; 0x368 <__vector_19+0x1e>
 396:	80 91 c1 00 	lds	r24, 0x00C1
 39a:	90 91 c2 00 	lds	r25, 0x00C2
 39e:	a0 91 c3 00 	lds	r26, 0x00C3
 3a2:	b0 91 c4 00 	lds	r27, 0x00C4
 3a6:	01 96       	adiw	r24, 0x01	; 1
 3a8:	a1 1d       	adc	r26, r1
 3aa:	b1 1d       	adc	r27, r1
 3ac:	80 93 c1 00 	sts	0x00C1, r24
 3b0:	90 93 c2 00 	sts	0x00C2, r25
 3b4:	a0 93 c3 00 	sts	0x00C3, r26
 3b8:	b0 93 c4 00 	sts	0x00C4, r27
 3bc:	ff 91       	pop	r31
 3be:	ef 91       	pop	r30
 3c0:	bf 91       	pop	r27
 3c2:	af 91       	pop	r26
 3c4:	9f 91       	pop	r25
 3c6:	8f 91       	pop	r24
 3c8:	0f 90       	pop	r0
 3ca:	0f be       	out	0x3f, r0	; 63
 3cc:	0f 90       	pop	r0
 3ce:	1f 90       	pop	r1
 3d0:	18 95       	reti

000003d2 <_GLOBAL__sub_I_g_rt_time>:
 3d2:	88 e8       	ldi	r24, 0x88	; 136
 3d4:	90 e0       	ldi	r25, 0x00	; 0
 3d6:	0c 94 f9 00 	jmp	0x1f2	; 0x1f2 <_ZN5TimerC1Ev>

000003da <_ZN5MotorC1Ev>:
 3da:	80 ef       	ldi	r24, 0xF0	; 240
 3dc:	81 bb       	out	0x11, r24	; 17
 3de:	95 98       	cbi	0x12, 5	; 18
 3e0:	81 ea       	ldi	r24, 0xA1	; 161
 3e2:	8f bd       	out	0x2f, r24	; 47
 3e4:	81 e0       	ldi	r24, 0x01	; 1
 3e6:	8e bd       	out	0x2e, r24	; 46
 3e8:	1b bc       	out	0x2b, r1	; 43
 3ea:	1a bc       	out	0x2a, r1	; 42
 3ec:	19 bc       	out	0x29, r1	; 41
 3ee:	18 bc       	out	0x28, r1	; 40
 3f0:	08 95       	ret

000003f2 <_ZN5Motor3runEii>:
 3f2:	6f 3f       	cpi	r22, 0xFF	; 255
 3f4:	71 05       	cpc	r23, r1
 3f6:	09 f0       	breq	.+2      	; 0x3fa <_ZN5Motor3runEii+0x8>
 3f8:	3c f4       	brge	.+14     	; 0x408 <_ZN5Motor3runEii+0x16>
 3fa:	61 30       	cpi	r22, 0x01	; 1
 3fc:	8f ef       	ldi	r24, 0xFF	; 255
 3fe:	78 07       	cpc	r23, r24
 400:	2c f4       	brge	.+10     	; 0x40c <_ZN5Motor3runEii+0x1a>
 402:	61 e0       	ldi	r22, 0x01	; 1
 404:	7f ef       	ldi	r23, 0xFF	; 255
 406:	02 c0       	rjmp	.+4      	; 0x40c <_ZN5Motor3runEii+0x1a>
 408:	6f ef       	ldi	r22, 0xFF	; 255
 40a:	70 e0       	ldi	r23, 0x00	; 0
 40c:	4f 3f       	cpi	r20, 0xFF	; 255
 40e:	51 05       	cpc	r21, r1
 410:	09 f0       	breq	.+2      	; 0x414 <_ZN5Motor3runEii+0x22>
 412:	44 f4       	brge	.+16     	; 0x424 <_ZN5Motor3runEii+0x32>
 414:	41 30       	cpi	r20, 0x01	; 1
 416:	8f ef       	ldi	r24, 0xFF	; 255
 418:	58 07       	cpc	r21, r24
 41a:	6c f0       	brlt	.+26     	; 0x436 <_ZN5Motor3runEii+0x44>
 41c:	14 16       	cp	r1, r20
 41e:	15 06       	cpc	r1, r21
 420:	1c f0       	brlt	.+6      	; 0x428 <_ZN5Motor3runEii+0x36>
 422:	05 c0       	rjmp	.+10     	; 0x42e <_ZN5Motor3runEii+0x3c>
 424:	4f ef       	ldi	r20, 0xFF	; 255
 426:	50 e0       	ldi	r21, 0x00	; 0
 428:	4a bd       	out	0x2a, r20	; 42
 42a:	96 9a       	sbi	0x12, 6	; 18
 42c:	0b c0       	rjmp	.+22     	; 0x444 <_ZN5Motor3runEii+0x52>
 42e:	41 15       	cp	r20, r1
 430:	51 05       	cpc	r21, r1
 432:	39 f0       	breq	.+14     	; 0x442 <_ZN5Motor3runEii+0x50>
 434:	02 c0       	rjmp	.+4      	; 0x43a <_ZN5Motor3runEii+0x48>
 436:	41 e0       	ldi	r20, 0x01	; 1
 438:	5f ef       	ldi	r21, 0xFF	; 255
 43a:	41 95       	neg	r20
 43c:	4a bd       	out	0x2a, r20	; 42
 43e:	96 98       	cbi	0x12, 6	; 18
 440:	01 c0       	rjmp	.+2      	; 0x444 <_ZN5Motor3runEii+0x52>
 442:	1a bc       	out	0x2a, r1	; 42
 444:	16 16       	cp	r1, r22
 446:	17 06       	cpc	r1, r23
 448:	1c f4       	brge	.+6      	; 0x450 <_ZN5Motor3runEii+0x5e>
 44a:	68 bd       	out	0x28, r22	; 40
 44c:	97 98       	cbi	0x12, 7	; 18
 44e:	08 95       	ret
 450:	61 15       	cp	r22, r1
 452:	71 05       	cpc	r23, r1
 454:	21 f0       	breq	.+8      	; 0x45e <_ZN5Motor3runEii+0x6c>
 456:	61 95       	neg	r22
 458:	68 bd       	out	0x28, r22	; 40
 45a:	97 9a       	sbi	0x12, 7	; 18
 45c:	08 95       	ret
 45e:	18 bc       	out	0x28, r1	; 40
 460:	08 95       	ret

00000462 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
 462:	0f 93       	push	r16
 464:	1f 93       	push	r17
 466:	cf 93       	push	r28
 468:	df 93       	push	r29
 46a:	00 d0       	rcall	.+0      	; 0x46c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
 46c:	1f 92       	push	r1
 46e:	cd b7       	in	r28, 0x3d	; 61
 470:	de b7       	in	r29, 0x3e	; 62
 472:	8c 01       	movw	r16, r24
 474:	dc 01       	movw	r26, r24
 476:	ed 91       	ld	r30, X+
 478:	fc 91       	ld	r31, X
 47a:	01 90       	ld	r0, Z+
 47c:	f0 81       	ld	r31, Z
 47e:	e0 2d       	mov	r30, r0
 480:	2b 83       	std	Y+3, r18	; 0x03
 482:	4a 83       	std	Y+2, r20	; 0x02
 484:	69 83       	std	Y+1, r22	; 0x01
 486:	09 95       	icall
 488:	d8 01       	movw	r26, r16
 48a:	ed 91       	ld	r30, X+
 48c:	fc 91       	ld	r31, X
 48e:	04 80       	ldd	r0, Z+4	; 0x04
 490:	f5 81       	ldd	r31, Z+5	; 0x05
 492:	e0 2d       	mov	r30, r0
 494:	69 81       	ldd	r22, Y+1	; 0x01
 496:	c8 01       	movw	r24, r16
 498:	09 95       	icall
 49a:	d8 01       	movw	r26, r16
 49c:	ed 91       	ld	r30, X+
 49e:	fc 91       	ld	r31, X
 4a0:	04 80       	ldd	r0, Z+4	; 0x04
 4a2:	f5 81       	ldd	r31, Z+5	; 0x05
 4a4:	e0 2d       	mov	r30, r0
 4a6:	4a 81       	ldd	r20, Y+2	; 0x02
 4a8:	64 2f       	mov	r22, r20
 4aa:	c8 01       	movw	r24, r16
 4ac:	09 95       	icall
 4ae:	d8 01       	movw	r26, r16
 4b0:	ed 91       	ld	r30, X+
 4b2:	fc 91       	ld	r31, X
 4b4:	04 80       	ldd	r0, Z+4	; 0x04
 4b6:	f5 81       	ldd	r31, Z+5	; 0x05
 4b8:	e0 2d       	mov	r30, r0
 4ba:	2b 81       	ldd	r18, Y+3	; 0x03
 4bc:	62 2f       	mov	r22, r18
 4be:	c8 01       	movw	r24, r16
 4c0:	09 95       	icall
 4c2:	d8 01       	movw	r26, r16
 4c4:	ed 91       	ld	r30, X+
 4c6:	fc 91       	ld	r31, X
 4c8:	02 80       	ldd	r0, Z+2	; 0x02
 4ca:	f3 81       	ldd	r31, Z+3	; 0x03
 4cc:	e0 2d       	mov	r30, r0
 4ce:	c8 01       	movw	r24, r16
 4d0:	0f 90       	pop	r0
 4d2:	0f 90       	pop	r0
 4d4:	0f 90       	pop	r0
 4d6:	df 91       	pop	r29
 4d8:	cf 91       	pop	r28
 4da:	1f 91       	pop	r17
 4dc:	0f 91       	pop	r16
 4de:	09 94       	ijmp

000004e0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
 4e0:	0f 93       	push	r16
 4e2:	1f 93       	push	r17
 4e4:	cf 93       	push	r28
 4e6:	df 93       	push	r29
 4e8:	00 d0       	rcall	.+0      	; 0x4ea <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
 4ea:	00 d0       	rcall	.+0      	; 0x4ec <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
 4ec:	cd b7       	in	r28, 0x3d	; 61
 4ee:	de b7       	in	r29, 0x3e	; 62
 4f0:	8c 01       	movw	r16, r24
 4f2:	dc 01       	movw	r26, r24
 4f4:	ed 91       	ld	r30, X+
 4f6:	fc 91       	ld	r31, X
 4f8:	01 90       	ld	r0, Z+
 4fa:	f0 81       	ld	r31, Z
 4fc:	e0 2d       	mov	r30, r0
 4fe:	2c 83       	std	Y+4, r18	; 0x04
 500:	3b 83       	std	Y+3, r19	; 0x03
 502:	4a 83       	std	Y+2, r20	; 0x02
 504:	69 83       	std	Y+1, r22	; 0x01
 506:	09 95       	icall
 508:	d8 01       	movw	r26, r16
 50a:	ed 91       	ld	r30, X+
 50c:	fc 91       	ld	r31, X
 50e:	04 80       	ldd	r0, Z+4	; 0x04
 510:	f5 81       	ldd	r31, Z+5	; 0x05
 512:	e0 2d       	mov	r30, r0
 514:	69 81       	ldd	r22, Y+1	; 0x01
 516:	c8 01       	movw	r24, r16
 518:	09 95       	icall
 51a:	d8 01       	movw	r26, r16
 51c:	ed 91       	ld	r30, X+
 51e:	fc 91       	ld	r31, X
 520:	04 80       	ldd	r0, Z+4	; 0x04
 522:	f5 81       	ldd	r31, Z+5	; 0x05
 524:	e0 2d       	mov	r30, r0
 526:	4a 81       	ldd	r20, Y+2	; 0x02
 528:	64 2f       	mov	r22, r20
 52a:	c8 01       	movw	r24, r16
 52c:	09 95       	icall
 52e:	d8 01       	movw	r26, r16
 530:	ed 91       	ld	r30, X+
 532:	fc 91       	ld	r31, X
 534:	04 80       	ldd	r0, Z+4	; 0x04
 536:	f5 81       	ldd	r31, Z+5	; 0x05
 538:	e0 2d       	mov	r30, r0
 53a:	3b 81       	ldd	r19, Y+3	; 0x03
 53c:	63 2f       	mov	r22, r19
 53e:	c8 01       	movw	r24, r16
 540:	09 95       	icall
 542:	d8 01       	movw	r26, r16
 544:	ed 91       	ld	r30, X+
 546:	fc 91       	ld	r31, X
 548:	04 80       	ldd	r0, Z+4	; 0x04
 54a:	f5 81       	ldd	r31, Z+5	; 0x05
 54c:	e0 2d       	mov	r30, r0
 54e:	2c 81       	ldd	r18, Y+4	; 0x04
 550:	62 2f       	mov	r22, r18
 552:	c8 01       	movw	r24, r16
 554:	09 95       	icall
 556:	d8 01       	movw	r26, r16
 558:	ed 91       	ld	r30, X+
 55a:	fc 91       	ld	r31, X
 55c:	02 80       	ldd	r0, Z+2	; 0x02
 55e:	f3 81       	ldd	r31, Z+3	; 0x03
 560:	e0 2d       	mov	r30, r0
 562:	c8 01       	movw	r24, r16
 564:	0f 90       	pop	r0
 566:	0f 90       	pop	r0
 568:	0f 90       	pop	r0
 56a:	0f 90       	pop	r0
 56c:	df 91       	pop	r29
 56e:	cf 91       	pop	r28
 570:	1f 91       	pop	r17
 572:	0f 91       	pop	r16
 574:	09 94       	ijmp

00000576 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
 576:	cf 92       	push	r12
 578:	df 92       	push	r13
 57a:	ef 92       	push	r14
 57c:	ff 92       	push	r15
 57e:	0f 93       	push	r16
 580:	1f 93       	push	r17
 582:	cf 93       	push	r28
 584:	df 93       	push	r29
 586:	00 d0       	rcall	.+0      	; 0x588 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
 588:	00 d0       	rcall	.+0      	; 0x58a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
 58a:	cd b7       	in	r28, 0x3d	; 61
 58c:	de b7       	in	r29, 0x3e	; 62
 58e:	6c 01       	movw	r12, r24
 590:	dc 01       	movw	r26, r24
 592:	ed 91       	ld	r30, X+
 594:	fc 91       	ld	r31, X
 596:	01 90       	ld	r0, Z+
 598:	f0 81       	ld	r31, Z
 59a:	e0 2d       	mov	r30, r0
 59c:	2b 83       	std	Y+3, r18	; 0x03
 59e:	3c 83       	std	Y+4, r19	; 0x04
 5a0:	4a 83       	std	Y+2, r20	; 0x02
 5a2:	69 83       	std	Y+1, r22	; 0x01
 5a4:	09 95       	icall
 5a6:	d6 01       	movw	r26, r12
 5a8:	ed 91       	ld	r30, X+
 5aa:	fc 91       	ld	r31, X
 5ac:	04 80       	ldd	r0, Z+4	; 0x04
 5ae:	f5 81       	ldd	r31, Z+5	; 0x05
 5b0:	e0 2d       	mov	r30, r0
 5b2:	69 81       	ldd	r22, Y+1	; 0x01
 5b4:	c6 01       	movw	r24, r12
 5b6:	09 95       	icall
 5b8:	d6 01       	movw	r26, r12
 5ba:	ed 91       	ld	r30, X+
 5bc:	fc 91       	ld	r31, X
 5be:	04 80       	ldd	r0, Z+4	; 0x04
 5c0:	f5 81       	ldd	r31, Z+5	; 0x05
 5c2:	e0 2d       	mov	r30, r0
 5c4:	4a 81       	ldd	r20, Y+2	; 0x02
 5c6:	64 2f       	mov	r22, r20
 5c8:	c6 01       	movw	r24, r12
 5ca:	09 95       	icall
 5cc:	2b 81       	ldd	r18, Y+3	; 0x03
 5ce:	e2 2e       	mov	r14, r18
 5d0:	3c 81       	ldd	r19, Y+4	; 0x04
 5d2:	f3 2e       	mov	r15, r19
 5d4:	0e 0d       	add	r16, r14
 5d6:	1f 1d       	adc	r17, r15
 5d8:	d6 01       	movw	r26, r12
 5da:	ed 91       	ld	r30, X+
 5dc:	fc 91       	ld	r31, X
 5de:	e0 16       	cp	r14, r16
 5e0:	f1 06       	cpc	r15, r17
 5e2:	49 f0       	breq	.+18     	; 0x5f6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
 5e4:	d7 01       	movw	r26, r14
 5e6:	6d 91       	ld	r22, X+
 5e8:	7d 01       	movw	r14, r26
 5ea:	04 80       	ldd	r0, Z+4	; 0x04
 5ec:	f5 81       	ldd	r31, Z+5	; 0x05
 5ee:	e0 2d       	mov	r30, r0
 5f0:	c6 01       	movw	r24, r12
 5f2:	09 95       	icall
 5f4:	f1 cf       	rjmp	.-30     	; 0x5d8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
 5f6:	02 80       	ldd	r0, Z+2	; 0x02
 5f8:	f3 81       	ldd	r31, Z+3	; 0x03
 5fa:	e0 2d       	mov	r30, r0
 5fc:	c6 01       	movw	r24, r12
 5fe:	0f 90       	pop	r0
 600:	0f 90       	pop	r0
 602:	0f 90       	pop	r0
 604:	0f 90       	pop	r0
 606:	df 91       	pop	r29
 608:	cf 91       	pop	r28
 60a:	1f 91       	pop	r17
 60c:	0f 91       	pop	r16
 60e:	ff 90       	pop	r15
 610:	ef 90       	pop	r14
 612:	df 90       	pop	r13
 614:	cf 90       	pop	r12
 616:	09 94       	ijmp

00000618 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
 618:	ef 92       	push	r14
 61a:	ff 92       	push	r15
 61c:	1f 93       	push	r17
 61e:	cf 93       	push	r28
 620:	df 93       	push	r29
 622:	1f 92       	push	r1
 624:	cd b7       	in	r28, 0x3d	; 61
 626:	de b7       	in	r29, 0x3e	; 62
 628:	7c 01       	movw	r14, r24
 62a:	16 2f       	mov	r17, r22
 62c:	dc 01       	movw	r26, r24
 62e:	ed 91       	ld	r30, X+
 630:	fc 91       	ld	r31, X
 632:	01 90       	ld	r0, Z+
 634:	f0 81       	ld	r31, Z
 636:	e0 2d       	mov	r30, r0
 638:	49 83       	std	Y+1, r20	; 0x01
 63a:	09 95       	icall
 63c:	d7 01       	movw	r26, r14
 63e:	ed 91       	ld	r30, X+
 640:	fc 91       	ld	r31, X
 642:	04 80       	ldd	r0, Z+4	; 0x04
 644:	f5 81       	ldd	r31, Z+5	; 0x05
 646:	e0 2d       	mov	r30, r0
 648:	61 2f       	mov	r22, r17
 64a:	c7 01       	movw	r24, r14
 64c:	09 95       	icall
 64e:	d7 01       	movw	r26, r14
 650:	ed 91       	ld	r30, X+
 652:	fc 91       	ld	r31, X
 654:	04 80       	ldd	r0, Z+4	; 0x04
 656:	f5 81       	ldd	r31, Z+5	; 0x05
 658:	e0 2d       	mov	r30, r0
 65a:	49 81       	ldd	r20, Y+1	; 0x01
 65c:	64 2f       	mov	r22, r20
 65e:	c7 01       	movw	r24, r14
 660:	09 95       	icall
 662:	d7 01       	movw	r26, r14
 664:	ed 91       	ld	r30, X+
 666:	fc 91       	ld	r31, X
 668:	01 90       	ld	r0, Z+
 66a:	f0 81       	ld	r31, Z
 66c:	e0 2d       	mov	r30, r0
 66e:	c7 01       	movw	r24, r14
 670:	09 95       	icall
 672:	d7 01       	movw	r26, r14
 674:	ed 91       	ld	r30, X+
 676:	fc 91       	ld	r31, X
 678:	61 2f       	mov	r22, r17
 67a:	61 60       	ori	r22, 0x01	; 1
 67c:	04 80       	ldd	r0, Z+4	; 0x04
 67e:	f5 81       	ldd	r31, Z+5	; 0x05
 680:	e0 2d       	mov	r30, r0
 682:	c7 01       	movw	r24, r14
 684:	09 95       	icall
 686:	d7 01       	movw	r26, r14
 688:	ed 91       	ld	r30, X+
 68a:	fc 91       	ld	r31, X
 68c:	06 80       	ldd	r0, Z+6	; 0x06
 68e:	f7 81       	ldd	r31, Z+7	; 0x07
 690:	e0 2d       	mov	r30, r0
 692:	60 e0       	ldi	r22, 0x00	; 0
 694:	c7 01       	movw	r24, r14
 696:	09 95       	icall
 698:	18 2f       	mov	r17, r24
 69a:	d7 01       	movw	r26, r14
 69c:	ed 91       	ld	r30, X+
 69e:	fc 91       	ld	r31, X
 6a0:	02 80       	ldd	r0, Z+2	; 0x02
 6a2:	f3 81       	ldd	r31, Z+3	; 0x03
 6a4:	e0 2d       	mov	r30, r0
 6a6:	c7 01       	movw	r24, r14
 6a8:	09 95       	icall
 6aa:	81 2f       	mov	r24, r17
 6ac:	0f 90       	pop	r0
 6ae:	df 91       	pop	r29
 6b0:	cf 91       	pop	r28
 6b2:	1f 91       	pop	r17
 6b4:	ff 90       	pop	r15
 6b6:	ef 90       	pop	r14
 6b8:	08 95       	ret

000006ba <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
 6ba:	ef 92       	push	r14
 6bc:	ff 92       	push	r15
 6be:	0f 93       	push	r16
 6c0:	1f 93       	push	r17
 6c2:	cf 93       	push	r28
 6c4:	df 93       	push	r29
 6c6:	1f 92       	push	r1
 6c8:	cd b7       	in	r28, 0x3d	; 61
 6ca:	de b7       	in	r29, 0x3e	; 62
 6cc:	7c 01       	movw	r14, r24
 6ce:	16 2f       	mov	r17, r22
 6d0:	dc 01       	movw	r26, r24
 6d2:	ed 91       	ld	r30, X+
 6d4:	fc 91       	ld	r31, X
 6d6:	01 90       	ld	r0, Z+
 6d8:	f0 81       	ld	r31, Z
 6da:	e0 2d       	mov	r30, r0
 6dc:	49 83       	std	Y+1, r20	; 0x01
 6de:	09 95       	icall
 6e0:	d7 01       	movw	r26, r14
 6e2:	ed 91       	ld	r30, X+
 6e4:	fc 91       	ld	r31, X
 6e6:	04 80       	ldd	r0, Z+4	; 0x04
 6e8:	f5 81       	ldd	r31, Z+5	; 0x05
 6ea:	e0 2d       	mov	r30, r0
 6ec:	61 2f       	mov	r22, r17
 6ee:	c7 01       	movw	r24, r14
 6f0:	09 95       	icall
 6f2:	d7 01       	movw	r26, r14
 6f4:	ed 91       	ld	r30, X+
 6f6:	fc 91       	ld	r31, X
 6f8:	04 80       	ldd	r0, Z+4	; 0x04
 6fa:	f5 81       	ldd	r31, Z+5	; 0x05
 6fc:	e0 2d       	mov	r30, r0
 6fe:	49 81       	ldd	r20, Y+1	; 0x01
 700:	64 2f       	mov	r22, r20
 702:	c7 01       	movw	r24, r14
 704:	09 95       	icall
 706:	d7 01       	movw	r26, r14
 708:	ed 91       	ld	r30, X+
 70a:	fc 91       	ld	r31, X
 70c:	01 90       	ld	r0, Z+
 70e:	f0 81       	ld	r31, Z
 710:	e0 2d       	mov	r30, r0
 712:	c7 01       	movw	r24, r14
 714:	09 95       	icall
 716:	d7 01       	movw	r26, r14
 718:	ed 91       	ld	r30, X+
 71a:	fc 91       	ld	r31, X
 71c:	61 2f       	mov	r22, r17
 71e:	61 60       	ori	r22, 0x01	; 1
 720:	04 80       	ldd	r0, Z+4	; 0x04
 722:	f5 81       	ldd	r31, Z+5	; 0x05
 724:	e0 2d       	mov	r30, r0
 726:	c7 01       	movw	r24, r14
 728:	09 95       	icall
 72a:	d7 01       	movw	r26, r14
 72c:	ed 91       	ld	r30, X+
 72e:	fc 91       	ld	r31, X
 730:	06 80       	ldd	r0, Z+6	; 0x06
 732:	f7 81       	ldd	r31, Z+7	; 0x07
 734:	e0 2d       	mov	r30, r0
 736:	61 e0       	ldi	r22, 0x01	; 1
 738:	c7 01       	movw	r24, r14
 73a:	09 95       	icall
 73c:	08 2f       	mov	r16, r24
 73e:	10 e0       	ldi	r17, 0x00	; 0
 740:	10 2f       	mov	r17, r16
 742:	00 27       	eor	r16, r16
 744:	d7 01       	movw	r26, r14
 746:	ed 91       	ld	r30, X+
 748:	fc 91       	ld	r31, X
 74a:	06 80       	ldd	r0, Z+6	; 0x06
 74c:	f7 81       	ldd	r31, Z+7	; 0x07
 74e:	e0 2d       	mov	r30, r0
 750:	60 e0       	ldi	r22, 0x00	; 0
 752:	c7 01       	movw	r24, r14
 754:	09 95       	icall
 756:	08 2b       	or	r16, r24
 758:	d7 01       	movw	r26, r14
 75a:	ed 91       	ld	r30, X+
 75c:	fc 91       	ld	r31, X
 75e:	02 80       	ldd	r0, Z+2	; 0x02
 760:	f3 81       	ldd	r31, Z+3	; 0x03
 762:	e0 2d       	mov	r30, r0
 764:	c7 01       	movw	r24, r14
 766:	09 95       	icall
 768:	c8 01       	movw	r24, r16
 76a:	0f 90       	pop	r0
 76c:	df 91       	pop	r29
 76e:	cf 91       	pop	r28
 770:	1f 91       	pop	r17
 772:	0f 91       	pop	r16
 774:	ff 90       	pop	r15
 776:	ef 90       	pop	r14
 778:	08 95       	ret

0000077a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
 77a:	cf 92       	push	r12
 77c:	df 92       	push	r13
 77e:	ef 92       	push	r14
 780:	ff 92       	push	r15
 782:	0f 93       	push	r16
 784:	1f 93       	push	r17
 786:	cf 93       	push	r28
 788:	df 93       	push	r29
 78a:	00 d0       	rcall	.+0      	; 0x78c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
 78c:	1f 92       	push	r1
 78e:	cd b7       	in	r28, 0x3d	; 61
 790:	de b7       	in	r29, 0x3e	; 62
 792:	6c 01       	movw	r12, r24
 794:	f6 2e       	mov	r15, r22
 796:	dc 01       	movw	r26, r24
 798:	ed 91       	ld	r30, X+
 79a:	fc 91       	ld	r31, X
 79c:	01 90       	ld	r0, Z+
 79e:	f0 81       	ld	r31, Z
 7a0:	e0 2d       	mov	r30, r0
 7a2:	2a 83       	std	Y+2, r18	; 0x02
 7a4:	3b 83       	std	Y+3, r19	; 0x03
 7a6:	49 83       	std	Y+1, r20	; 0x01
 7a8:	09 95       	icall
 7aa:	d6 01       	movw	r26, r12
 7ac:	ed 91       	ld	r30, X+
 7ae:	fc 91       	ld	r31, X
 7b0:	04 80       	ldd	r0, Z+4	; 0x04
 7b2:	f5 81       	ldd	r31, Z+5	; 0x05
 7b4:	e0 2d       	mov	r30, r0
 7b6:	6f 2d       	mov	r22, r15
 7b8:	c6 01       	movw	r24, r12
 7ba:	09 95       	icall
 7bc:	d6 01       	movw	r26, r12
 7be:	ed 91       	ld	r30, X+
 7c0:	fc 91       	ld	r31, X
 7c2:	04 80       	ldd	r0, Z+4	; 0x04
 7c4:	f5 81       	ldd	r31, Z+5	; 0x05
 7c6:	e0 2d       	mov	r30, r0
 7c8:	49 81       	ldd	r20, Y+1	; 0x01
 7ca:	64 2f       	mov	r22, r20
 7cc:	c6 01       	movw	r24, r12
 7ce:	09 95       	icall
 7d0:	d6 01       	movw	r26, r12
 7d2:	ed 91       	ld	r30, X+
 7d4:	fc 91       	ld	r31, X
 7d6:	01 90       	ld	r0, Z+
 7d8:	f0 81       	ld	r31, Z
 7da:	e0 2d       	mov	r30, r0
 7dc:	c6 01       	movw	r24, r12
 7de:	09 95       	icall
 7e0:	d6 01       	movw	r26, r12
 7e2:	ed 91       	ld	r30, X+
 7e4:	fc 91       	ld	r31, X
 7e6:	6f 2d       	mov	r22, r15
 7e8:	61 60       	ori	r22, 0x01	; 1
 7ea:	04 80       	ldd	r0, Z+4	; 0x04
 7ec:	f5 81       	ldd	r31, Z+5	; 0x05
 7ee:	e0 2d       	mov	r30, r0
 7f0:	c6 01       	movw	r24, r12
 7f2:	09 95       	icall
 7f4:	2a 81       	ldd	r18, Y+2	; 0x02
 7f6:	e2 2e       	mov	r14, r18
 7f8:	3b 81       	ldd	r19, Y+3	; 0x03
 7fa:	f3 2e       	mov	r15, r19
 7fc:	0e 0d       	add	r16, r14
 7fe:	1f 1d       	adc	r17, r15
 800:	d6 01       	movw	r26, r12
 802:	ed 91       	ld	r30, X+
 804:	fc 91       	ld	r31, X
 806:	e0 16       	cp	r14, r16
 808:	f1 06       	cpc	r15, r17
 80a:	51 f0       	breq	.+20     	; 0x820 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
 80c:	06 80       	ldd	r0, Z+6	; 0x06
 80e:	f7 81       	ldd	r31, Z+7	; 0x07
 810:	e0 2d       	mov	r30, r0
 812:	61 e0       	ldi	r22, 0x01	; 1
 814:	c6 01       	movw	r24, r12
 816:	09 95       	icall
 818:	f7 01       	movw	r30, r14
 81a:	81 93       	st	Z+, r24
 81c:	7f 01       	movw	r14, r30
 81e:	f0 cf       	rjmp	.-32     	; 0x800 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
 820:	02 80       	ldd	r0, Z+2	; 0x02
 822:	f3 81       	ldd	r31, Z+3	; 0x03
 824:	e0 2d       	mov	r30, r0
 826:	c6 01       	movw	r24, r12
 828:	0f 90       	pop	r0
 82a:	0f 90       	pop	r0
 82c:	0f 90       	pop	r0
 82e:	df 91       	pop	r29
 830:	cf 91       	pop	r28
 832:	1f 91       	pop	r17
 834:	0f 91       	pop	r16
 836:	ff 90       	pop	r15
 838:	ef 90       	pop	r14
 83a:	df 90       	pop	r13
 83c:	cf 90       	pop	r12
 83e:	09 94       	ijmp

00000840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 840:	88 23       	and	r24, r24
 842:	21 f0       	breq	.+8      	; 0x84c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 844:	bf 98       	cbi	0x17, 7	; 23
 846:	82 30       	cpi	r24, 0x02	; 2
 848:	19 f0       	breq	.+6      	; 0x850 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 84a:	08 95       	ret
 84c:	bf 9a       	sbi	0x17, 7	; 23
 84e:	08 95       	ret
 850:	c7 9a       	sbi	0x18, 7	; 24
 852:	08 95       	ret

00000854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
 854:	00 00       	nop
 856:	00 00       	nop
 858:	08 95       	ret

0000085a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
 85a:	1f 93       	push	r17
 85c:	cf 93       	push	r28
 85e:	df 93       	push	r29
 860:	16 2f       	mov	r17, r22
 862:	bd 98       	cbi	0x17, 5	; 23
 864:	80 e0       	ldi	r24, 0x00	; 0
 866:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 86a:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 86e:	d8 e0       	ldi	r29, 0x08	; 8
 870:	c0 e0       	ldi	r28, 0x00	; 0
 872:	cc 0f       	add	r28, r28
 874:	81 e0       	ldi	r24, 0x01	; 1
 876:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 87a:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 87e:	b5 99       	sbic	0x16, 5	; 22
 880:	c1 60       	ori	r28, 0x01	; 1
 882:	80 e0       	ldi	r24, 0x00	; 0
 884:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 888:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 88c:	d1 50       	subi	r29, 0x01	; 1
 88e:	89 f7       	brne	.-30     	; 0x872 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
 890:	11 23       	and	r17, r17
 892:	11 f0       	breq	.+4      	; 0x898 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
 894:	bd 9a       	sbi	0x17, 5	; 23
 896:	01 c0       	rjmp	.+2      	; 0x89a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
 898:	bd 98       	cbi	0x17, 5	; 23
 89a:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 89e:	81 e0       	ldi	r24, 0x01	; 1
 8a0:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 8a4:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 8a8:	80 e0       	ldi	r24, 0x00	; 0
 8aa:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 8ae:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 8b2:	bd 98       	cbi	0x17, 5	; 23
 8b4:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 8b8:	8c 2f       	mov	r24, r28
 8ba:	df 91       	pop	r29
 8bc:	cf 91       	pop	r28
 8be:	1f 91       	pop	r17
 8c0:	08 95       	ret

000008c2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
 8c2:	cf 93       	push	r28
 8c4:	df 93       	push	r29
 8c6:	d6 2f       	mov	r29, r22
 8c8:	c8 e0       	ldi	r28, 0x08	; 8
 8ca:	80 e0       	ldi	r24, 0x00	; 0
 8cc:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 8d0:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 8d4:	d7 ff       	sbrs	r29, 7
 8d6:	02 c0       	rjmp	.+4      	; 0x8dc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
 8d8:	bd 98       	cbi	0x17, 5	; 23
 8da:	01 c0       	rjmp	.+2      	; 0x8de <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
 8dc:	bd 9a       	sbi	0x17, 5	; 23
 8de:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 8e2:	81 e0       	ldi	r24, 0x01	; 1
 8e4:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 8e8:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 8ec:	dd 0f       	add	r29, r29
 8ee:	c1 50       	subi	r28, 0x01	; 1
 8f0:	61 f7       	brne	.-40     	; 0x8ca <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
 8f2:	80 e0       	ldi	r24, 0x00	; 0
 8f4:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 8f8:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 8fc:	bd 98       	cbi	0x17, 5	; 23
 8fe:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 902:	81 e0       	ldi	r24, 0x01	; 1
 904:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 908:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 90c:	c6 b3       	in	r28, 0x16	; 22
 90e:	80 e0       	ldi	r24, 0x00	; 0
 910:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 914:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 918:	c5 fb       	bst	r28, 5
 91a:	cc 27       	eor	r28, r28
 91c:	c0 f9       	bld	r28, 0
 91e:	81 e0       	ldi	r24, 0x01	; 1
 920:	8c 27       	eor	r24, r28
 922:	df 91       	pop	r29
 924:	cf 91       	pop	r28
 926:	08 95       	ret

00000928 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
 928:	81 e0       	ldi	r24, 0x01	; 1
 92a:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 92e:	bd 98       	cbi	0x17, 5	; 23
 930:	81 e0       	ldi	r24, 0x01	; 1
 932:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 936:	bd 9a       	sbi	0x17, 5	; 23
 938:	80 e0       	ldi	r24, 0x00	; 0
 93a:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 93e:	bd 98       	cbi	0x17, 5	; 23
 940:	0c 94 2a 04 	jmp	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000944 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
 944:	80 e0       	ldi	r24, 0x00	; 0
 946:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 94a:	bd 9a       	sbi	0x17, 5	; 23
 94c:	81 e0       	ldi	r24, 0x01	; 1
 94e:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 952:	bd 9a       	sbi	0x17, 5	; 23
 954:	81 e0       	ldi	r24, 0x01	; 1
 956:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 95a:	bd 98       	cbi	0x17, 5	; 23
 95c:	0c 94 2a 04 	jmp	0x854	; 0x854 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000960 <_GLOBAL__sub_I_i2c>:
 960:	84 e7       	ldi	r24, 0x74	; 116
 962:	90 e0       	ldi	r25, 0x00	; 0
 964:	90 93 c6 00 	sts	0x00C6, r25
 968:	80 93 c5 00 	sts	0x00C5, r24
 96c:	bd 98       	cbi	0x17, 5	; 23
 96e:	81 e0       	ldi	r24, 0x01	; 1
 970:	0e 94 20 04 	call	0x840	; 0x840 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 974:	c5 98       	cbi	0x18, 5	; 24
 976:	c7 98       	cbi	0x18, 7	; 24
 978:	08 95       	ret

0000097a <_Znwj>:
 97a:	0c 94 cf 04 	jmp	0x99e	; 0x99e <malloc>

0000097e <_ZdlPv>:
 97e:	0c 94 64 05 	jmp	0xac8	; 0xac8 <free>

00000982 <_GLOBAL__sub_I_terminal>:
 982:	89 ec       	ldi	r24, 0xC9	; 201
 984:	90 e0       	ldi	r25, 0x00	; 0
 986:	0c 94 ee 00 	jmp	0x1dc	; 0x1dc <_ZN5USARTC1Ev>

0000098a <_GLOBAL__sub_D_terminal>:
 98a:	89 ec       	ldi	r24, 0xC9	; 201
 98c:	90 e0       	ldi	r25, 0x00	; 0
 98e:	0c 94 f8 00 	jmp	0x1f0	; 0x1f0 <_ZN5USARTD1Ev>

00000992 <__tablejump2__>:
 992:	ee 0f       	add	r30, r30
 994:	ff 1f       	adc	r31, r31
 996:	05 90       	lpm	r0, Z+
 998:	f4 91       	lpm	r31, Z
 99a:	e0 2d       	mov	r30, r0
 99c:	09 94       	ijmp

0000099e <malloc>:
 99e:	cf 93       	push	r28
 9a0:	df 93       	push	r29
 9a2:	82 30       	cpi	r24, 0x02	; 2
 9a4:	91 05       	cpc	r25, r1
 9a6:	10 f4       	brcc	.+4      	; 0x9ac <malloc+0xe>
 9a8:	82 e0       	ldi	r24, 0x02	; 2
 9aa:	90 e0       	ldi	r25, 0x00	; 0
 9ac:	e0 91 cc 00 	lds	r30, 0x00CC
 9b0:	f0 91 cd 00 	lds	r31, 0x00CD
 9b4:	20 e0       	ldi	r18, 0x00	; 0
 9b6:	30 e0       	ldi	r19, 0x00	; 0
 9b8:	c0 e0       	ldi	r28, 0x00	; 0
 9ba:	d0 e0       	ldi	r29, 0x00	; 0
 9bc:	30 97       	sbiw	r30, 0x00	; 0
 9be:	11 f1       	breq	.+68     	; 0xa04 <malloc+0x66>
 9c0:	40 81       	ld	r20, Z
 9c2:	51 81       	ldd	r21, Z+1	; 0x01
 9c4:	48 17       	cp	r20, r24
 9c6:	59 07       	cpc	r21, r25
 9c8:	c0 f0       	brcs	.+48     	; 0x9fa <malloc+0x5c>
 9ca:	48 17       	cp	r20, r24
 9cc:	59 07       	cpc	r21, r25
 9ce:	61 f4       	brne	.+24     	; 0x9e8 <malloc+0x4a>
 9d0:	82 81       	ldd	r24, Z+2	; 0x02
 9d2:	93 81       	ldd	r25, Z+3	; 0x03
 9d4:	20 97       	sbiw	r28, 0x00	; 0
 9d6:	19 f0       	breq	.+6      	; 0x9de <malloc+0x40>
 9d8:	9b 83       	std	Y+3, r25	; 0x03
 9da:	8a 83       	std	Y+2, r24	; 0x02
 9dc:	2b c0       	rjmp	.+86     	; 0xa34 <malloc+0x96>
 9de:	90 93 cd 00 	sts	0x00CD, r25
 9e2:	80 93 cc 00 	sts	0x00CC, r24
 9e6:	26 c0       	rjmp	.+76     	; 0xa34 <malloc+0x96>
 9e8:	21 15       	cp	r18, r1
 9ea:	31 05       	cpc	r19, r1
 9ec:	19 f0       	breq	.+6      	; 0x9f4 <malloc+0x56>
 9ee:	42 17       	cp	r20, r18
 9f0:	53 07       	cpc	r21, r19
 9f2:	18 f4       	brcc	.+6      	; 0x9fa <malloc+0x5c>
 9f4:	9a 01       	movw	r18, r20
 9f6:	be 01       	movw	r22, r28
 9f8:	df 01       	movw	r26, r30
 9fa:	ef 01       	movw	r28, r30
 9fc:	02 80       	ldd	r0, Z+2	; 0x02
 9fe:	f3 81       	ldd	r31, Z+3	; 0x03
 a00:	e0 2d       	mov	r30, r0
 a02:	dc cf       	rjmp	.-72     	; 0x9bc <malloc+0x1e>
 a04:	21 15       	cp	r18, r1
 a06:	31 05       	cpc	r19, r1
 a08:	09 f1       	breq	.+66     	; 0xa4c <malloc+0xae>
 a0a:	28 1b       	sub	r18, r24
 a0c:	39 0b       	sbc	r19, r25
 a0e:	24 30       	cpi	r18, 0x04	; 4
 a10:	31 05       	cpc	r19, r1
 a12:	90 f4       	brcc	.+36     	; 0xa38 <malloc+0x9a>
 a14:	12 96       	adiw	r26, 0x02	; 2
 a16:	8d 91       	ld	r24, X+
 a18:	9c 91       	ld	r25, X
 a1a:	13 97       	sbiw	r26, 0x03	; 3
 a1c:	61 15       	cp	r22, r1
 a1e:	71 05       	cpc	r23, r1
 a20:	21 f0       	breq	.+8      	; 0xa2a <malloc+0x8c>
 a22:	fb 01       	movw	r30, r22
 a24:	93 83       	std	Z+3, r25	; 0x03
 a26:	82 83       	std	Z+2, r24	; 0x02
 a28:	04 c0       	rjmp	.+8      	; 0xa32 <malloc+0x94>
 a2a:	90 93 cd 00 	sts	0x00CD, r25
 a2e:	80 93 cc 00 	sts	0x00CC, r24
 a32:	fd 01       	movw	r30, r26
 a34:	32 96       	adiw	r30, 0x02	; 2
 a36:	44 c0       	rjmp	.+136    	; 0xac0 <malloc+0x122>
 a38:	fd 01       	movw	r30, r26
 a3a:	e2 0f       	add	r30, r18
 a3c:	f3 1f       	adc	r31, r19
 a3e:	81 93       	st	Z+, r24
 a40:	91 93       	st	Z+, r25
 a42:	22 50       	subi	r18, 0x02	; 2
 a44:	31 09       	sbc	r19, r1
 a46:	2d 93       	st	X+, r18
 a48:	3c 93       	st	X, r19
 a4a:	3a c0       	rjmp	.+116    	; 0xac0 <malloc+0x122>
 a4c:	20 91 ca 00 	lds	r18, 0x00CA
 a50:	30 91 cb 00 	lds	r19, 0x00CB
 a54:	23 2b       	or	r18, r19
 a56:	41 f4       	brne	.+16     	; 0xa68 <malloc+0xca>
 a58:	20 91 62 00 	lds	r18, 0x0062
 a5c:	30 91 63 00 	lds	r19, 0x0063
 a60:	30 93 cb 00 	sts	0x00CB, r19
 a64:	20 93 ca 00 	sts	0x00CA, r18
 a68:	20 91 60 00 	lds	r18, 0x0060
 a6c:	30 91 61 00 	lds	r19, 0x0061
 a70:	21 15       	cp	r18, r1
 a72:	31 05       	cpc	r19, r1
 a74:	41 f4       	brne	.+16     	; 0xa86 <malloc+0xe8>
 a76:	2d b7       	in	r18, 0x3d	; 61
 a78:	3e b7       	in	r19, 0x3e	; 62
 a7a:	40 91 64 00 	lds	r20, 0x0064
 a7e:	50 91 65 00 	lds	r21, 0x0065
 a82:	24 1b       	sub	r18, r20
 a84:	35 0b       	sbc	r19, r21
 a86:	e0 91 ca 00 	lds	r30, 0x00CA
 a8a:	f0 91 cb 00 	lds	r31, 0x00CB
 a8e:	e2 17       	cp	r30, r18
 a90:	f3 07       	cpc	r31, r19
 a92:	a0 f4       	brcc	.+40     	; 0xabc <malloc+0x11e>
 a94:	2e 1b       	sub	r18, r30
 a96:	3f 0b       	sbc	r19, r31
 a98:	28 17       	cp	r18, r24
 a9a:	39 07       	cpc	r19, r25
 a9c:	78 f0       	brcs	.+30     	; 0xabc <malloc+0x11e>
 a9e:	ac 01       	movw	r20, r24
 aa0:	4e 5f       	subi	r20, 0xFE	; 254
 aa2:	5f 4f       	sbci	r21, 0xFF	; 255
 aa4:	24 17       	cp	r18, r20
 aa6:	35 07       	cpc	r19, r21
 aa8:	48 f0       	brcs	.+18     	; 0xabc <malloc+0x11e>
 aaa:	4e 0f       	add	r20, r30
 aac:	5f 1f       	adc	r21, r31
 aae:	50 93 cb 00 	sts	0x00CB, r21
 ab2:	40 93 ca 00 	sts	0x00CA, r20
 ab6:	81 93       	st	Z+, r24
 ab8:	91 93       	st	Z+, r25
 aba:	02 c0       	rjmp	.+4      	; 0xac0 <malloc+0x122>
 abc:	e0 e0       	ldi	r30, 0x00	; 0
 abe:	f0 e0       	ldi	r31, 0x00	; 0
 ac0:	cf 01       	movw	r24, r30
 ac2:	df 91       	pop	r29
 ac4:	cf 91       	pop	r28
 ac6:	08 95       	ret

00000ac8 <free>:
 ac8:	0f 93       	push	r16
 aca:	1f 93       	push	r17
 acc:	cf 93       	push	r28
 ace:	df 93       	push	r29
 ad0:	00 97       	sbiw	r24, 0x00	; 0
 ad2:	09 f4       	brne	.+2      	; 0xad6 <free+0xe>
 ad4:	8c c0       	rjmp	.+280    	; 0xbee <free+0x126>
 ad6:	fc 01       	movw	r30, r24
 ad8:	32 97       	sbiw	r30, 0x02	; 2
 ada:	13 82       	std	Z+3, r1	; 0x03
 adc:	12 82       	std	Z+2, r1	; 0x02
 ade:	00 91 cc 00 	lds	r16, 0x00CC
 ae2:	10 91 cd 00 	lds	r17, 0x00CD
 ae6:	01 15       	cp	r16, r1
 ae8:	11 05       	cpc	r17, r1
 aea:	81 f4       	brne	.+32     	; 0xb0c <free+0x44>
 aec:	20 81       	ld	r18, Z
 aee:	31 81       	ldd	r19, Z+1	; 0x01
 af0:	82 0f       	add	r24, r18
 af2:	93 1f       	adc	r25, r19
 af4:	20 91 ca 00 	lds	r18, 0x00CA
 af8:	30 91 cb 00 	lds	r19, 0x00CB
 afc:	28 17       	cp	r18, r24
 afe:	39 07       	cpc	r19, r25
 b00:	79 f5       	brne	.+94     	; 0xb60 <free+0x98>
 b02:	f0 93 cb 00 	sts	0x00CB, r31
 b06:	e0 93 ca 00 	sts	0x00CA, r30
 b0a:	71 c0       	rjmp	.+226    	; 0xbee <free+0x126>
 b0c:	d8 01       	movw	r26, r16
 b0e:	40 e0       	ldi	r20, 0x00	; 0
 b10:	50 e0       	ldi	r21, 0x00	; 0
 b12:	ae 17       	cp	r26, r30
 b14:	bf 07       	cpc	r27, r31
 b16:	50 f4       	brcc	.+20     	; 0xb2c <free+0x64>
 b18:	12 96       	adiw	r26, 0x02	; 2
 b1a:	2d 91       	ld	r18, X+
 b1c:	3c 91       	ld	r19, X
 b1e:	13 97       	sbiw	r26, 0x03	; 3
 b20:	ad 01       	movw	r20, r26
 b22:	21 15       	cp	r18, r1
 b24:	31 05       	cpc	r19, r1
 b26:	09 f1       	breq	.+66     	; 0xb6a <free+0xa2>
 b28:	d9 01       	movw	r26, r18
 b2a:	f3 cf       	rjmp	.-26     	; 0xb12 <free+0x4a>
 b2c:	9d 01       	movw	r18, r26
 b2e:	da 01       	movw	r26, r20
 b30:	33 83       	std	Z+3, r19	; 0x03
 b32:	22 83       	std	Z+2, r18	; 0x02
 b34:	60 81       	ld	r22, Z
 b36:	71 81       	ldd	r23, Z+1	; 0x01
 b38:	86 0f       	add	r24, r22
 b3a:	97 1f       	adc	r25, r23
 b3c:	82 17       	cp	r24, r18
 b3e:	93 07       	cpc	r25, r19
 b40:	69 f4       	brne	.+26     	; 0xb5c <free+0x94>
 b42:	ec 01       	movw	r28, r24
 b44:	28 81       	ld	r18, Y
 b46:	39 81       	ldd	r19, Y+1	; 0x01
 b48:	26 0f       	add	r18, r22
 b4a:	37 1f       	adc	r19, r23
 b4c:	2e 5f       	subi	r18, 0xFE	; 254
 b4e:	3f 4f       	sbci	r19, 0xFF	; 255
 b50:	31 83       	std	Z+1, r19	; 0x01
 b52:	20 83       	st	Z, r18
 b54:	8a 81       	ldd	r24, Y+2	; 0x02
 b56:	9b 81       	ldd	r25, Y+3	; 0x03
 b58:	93 83       	std	Z+3, r25	; 0x03
 b5a:	82 83       	std	Z+2, r24	; 0x02
 b5c:	45 2b       	or	r20, r21
 b5e:	29 f4       	brne	.+10     	; 0xb6a <free+0xa2>
 b60:	f0 93 cd 00 	sts	0x00CD, r31
 b64:	e0 93 cc 00 	sts	0x00CC, r30
 b68:	42 c0       	rjmp	.+132    	; 0xbee <free+0x126>
 b6a:	13 96       	adiw	r26, 0x03	; 3
 b6c:	fc 93       	st	X, r31
 b6e:	ee 93       	st	-X, r30
 b70:	12 97       	sbiw	r26, 0x02	; 2
 b72:	ed 01       	movw	r28, r26
 b74:	49 91       	ld	r20, Y+
 b76:	59 91       	ld	r21, Y+
 b78:	9e 01       	movw	r18, r28
 b7a:	24 0f       	add	r18, r20
 b7c:	35 1f       	adc	r19, r21
 b7e:	e2 17       	cp	r30, r18
 b80:	f3 07       	cpc	r31, r19
 b82:	71 f4       	brne	.+28     	; 0xba0 <free+0xd8>
 b84:	80 81       	ld	r24, Z
 b86:	91 81       	ldd	r25, Z+1	; 0x01
 b88:	84 0f       	add	r24, r20
 b8a:	95 1f       	adc	r25, r21
 b8c:	02 96       	adiw	r24, 0x02	; 2
 b8e:	11 96       	adiw	r26, 0x01	; 1
 b90:	9c 93       	st	X, r25
 b92:	8e 93       	st	-X, r24
 b94:	82 81       	ldd	r24, Z+2	; 0x02
 b96:	93 81       	ldd	r25, Z+3	; 0x03
 b98:	13 96       	adiw	r26, 0x03	; 3
 b9a:	9c 93       	st	X, r25
 b9c:	8e 93       	st	-X, r24
 b9e:	12 97       	sbiw	r26, 0x02	; 2
 ba0:	e0 e0       	ldi	r30, 0x00	; 0
 ba2:	f0 e0       	ldi	r31, 0x00	; 0
 ba4:	d8 01       	movw	r26, r16
 ba6:	12 96       	adiw	r26, 0x02	; 2
 ba8:	8d 91       	ld	r24, X+
 baa:	9c 91       	ld	r25, X
 bac:	13 97       	sbiw	r26, 0x03	; 3
 bae:	00 97       	sbiw	r24, 0x00	; 0
 bb0:	19 f0       	breq	.+6      	; 0xbb8 <free+0xf0>
 bb2:	f8 01       	movw	r30, r16
 bb4:	8c 01       	movw	r16, r24
 bb6:	f6 cf       	rjmp	.-20     	; 0xba4 <free+0xdc>
 bb8:	8d 91       	ld	r24, X+
 bba:	9c 91       	ld	r25, X
 bbc:	98 01       	movw	r18, r16
 bbe:	2e 5f       	subi	r18, 0xFE	; 254
 bc0:	3f 4f       	sbci	r19, 0xFF	; 255
 bc2:	82 0f       	add	r24, r18
 bc4:	93 1f       	adc	r25, r19
 bc6:	20 91 ca 00 	lds	r18, 0x00CA
 bca:	30 91 cb 00 	lds	r19, 0x00CB
 bce:	28 17       	cp	r18, r24
 bd0:	39 07       	cpc	r19, r25
 bd2:	69 f4       	brne	.+26     	; 0xbee <free+0x126>
 bd4:	30 97       	sbiw	r30, 0x00	; 0
 bd6:	29 f4       	brne	.+10     	; 0xbe2 <free+0x11a>
 bd8:	10 92 cd 00 	sts	0x00CD, r1
 bdc:	10 92 cc 00 	sts	0x00CC, r1
 be0:	02 c0       	rjmp	.+4      	; 0xbe6 <free+0x11e>
 be2:	13 82       	std	Z+3, r1	; 0x03
 be4:	12 82       	std	Z+2, r1	; 0x02
 be6:	10 93 cb 00 	sts	0x00CB, r17
 bea:	00 93 ca 00 	sts	0x00CA, r16
 bee:	df 91       	pop	r29
 bf0:	cf 91       	pop	r28
 bf2:	1f 91       	pop	r17
 bf4:	0f 91       	pop	r16
 bf6:	08 95       	ret

00000bf8 <__do_global_dtors>:
 bf8:	10 e0       	ldi	r17, 0x00	; 0
 bfa:	cd e2       	ldi	r28, 0x2D	; 45
 bfc:	d0 e0       	ldi	r29, 0x00	; 0
 bfe:	04 c0       	rjmp	.+8      	; 0xc08 <__do_global_dtors+0x10>
 c00:	fe 01       	movw	r30, r28
 c02:	0e 94 c9 04 	call	0x992	; 0x992 <__tablejump2__>
 c06:	21 96       	adiw	r28, 0x01	; 1
 c08:	ce 32       	cpi	r28, 0x2E	; 46
 c0a:	d1 07       	cpc	r29, r17
 c0c:	c9 f7       	brne	.-14     	; 0xc00 <__do_global_dtors+0x8>
 c0e:	f8 94       	cli

00000c10 <__stop_program>:
 c10:	ff cf       	rjmp	.-2      	; 0xc10 <__stop_program>
