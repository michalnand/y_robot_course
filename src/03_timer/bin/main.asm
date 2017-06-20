
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 2c 00 	jmp	0x58	; 0x58 <__ctors_end>
   4:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
   8:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
   c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  10:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  14:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  18:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  1c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  20:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  24:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  28:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  2c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  30:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  34:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  38:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  3c:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  40:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  44:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  48:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>
  4c:	0c 94 14 01 	jmp	0x228	; 0x228 <__vector_19>
  50:	0c 94 49 00 	jmp	0x92	; 0x92 <__bad_interrupt>

00000054 <__ctors_start>:
  54:	90 00       	.word	0x0090	; ????
  56:	7e 01       	movw	r14, r28

00000058 <__ctors_end>:
  58:	11 24       	eor	r1, r1
  5a:	1f be       	out	0x3f, r1	; 63
  5c:	cf e5       	ldi	r28, 0x5F	; 95
  5e:	d4 e0       	ldi	r29, 0x04	; 4
  60:	de bf       	out	0x3e, r29	; 62
  62:	cd bf       	out	0x3d, r28	; 61

00000064 <__do_clear_bss>:
  64:	20 e0       	ldi	r18, 0x00	; 0
  66:	a0 e6       	ldi	r26, 0x60	; 96
  68:	b0 e0       	ldi	r27, 0x00	; 0
  6a:	01 c0       	rjmp	.+2      	; 0x6e <.do_clear_bss_start>

0000006c <.do_clear_bss_loop>:
  6c:	1d 92       	st	X+, r1

0000006e <.do_clear_bss_start>:
  6e:	a9 3a       	cpi	r26, 0xA9	; 169
  70:	b2 07       	cpc	r27, r18
  72:	e1 f7       	brne	.-8      	; 0x6c <.do_clear_bss_loop>

00000074 <__do_global_ctors>:
  74:	10 e0       	ldi	r17, 0x00	; 0
  76:	cc e2       	ldi	r28, 0x2C	; 44
  78:	d0 e0       	ldi	r29, 0x00	; 0
  7a:	04 c0       	rjmp	.+8      	; 0x84 <__do_global_ctors+0x10>
  7c:	21 97       	sbiw	r28, 0x01	; 1
  7e:	fe 01       	movw	r30, r28
  80:	0e 94 82 01 	call	0x304	; 0x304 <__tablejump2__>
  84:	ca 32       	cpi	r28, 0x2A	; 42
  86:	d1 07       	cpc	r29, r17
  88:	c9 f7       	brne	.-14     	; 0x7c <__do_global_ctors+0x8>
  8a:	0e 94 79 00 	call	0xf2	; 0xf2 <main>
  8e:	0c 94 88 01 	jmp	0x310	; 0x310 <_exit>

00000092 <__bad_interrupt>:
  92:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000096 <_Z5taskBv>:
  96:	80 91 60 00 	lds	r24, 0x0060
  9a:	90 91 61 00 	lds	r25, 0x0061
  9e:	00 97       	sbiw	r24, 0x00	; 0
  a0:	19 f0       	breq	.+6      	; 0xa8 <_Z5taskBv+0x12>
  a2:	01 97       	sbiw	r24, 0x01	; 1
  a4:	49 f0       	breq	.+18     	; 0xb8 <_Z5taskBv+0x22>
  a6:	08 95       	ret
  a8:	de 9a       	sbi	0x1b, 6	; 27
  aa:	81 e0       	ldi	r24, 0x01	; 1
  ac:	90 e0       	ldi	r25, 0x00	; 0
  ae:	90 93 61 00 	sts	0x0061, r25
  b2:	80 93 60 00 	sts	0x0060, r24
  b6:	08 95       	ret
  b8:	de 98       	cbi	0x1b, 6	; 27
  ba:	10 92 61 00 	sts	0x0061, r1
  be:	10 92 60 00 	sts	0x0060, r1
  c2:	08 95       	ret

000000c4 <_Z5taskAv>:
  c4:	80 91 62 00 	lds	r24, 0x0062
  c8:	90 91 63 00 	lds	r25, 0x0063
  cc:	00 97       	sbiw	r24, 0x00	; 0
  ce:	19 f0       	breq	.+6      	; 0xd6 <_Z5taskAv+0x12>
  d0:	01 97       	sbiw	r24, 0x01	; 1
  d2:	49 f0       	breq	.+18     	; 0xe6 <_Z5taskAv+0x22>
  d4:	08 95       	ret
  d6:	dd 9a       	sbi	0x1b, 5	; 27
  d8:	81 e0       	ldi	r24, 0x01	; 1
  da:	90 e0       	ldi	r25, 0x00	; 0
  dc:	90 93 63 00 	sts	0x0063, r25
  e0:	80 93 62 00 	sts	0x0062, r24
  e4:	08 95       	ret
  e6:	dd 98       	cbi	0x1b, 5	; 27
  e8:	10 92 63 00 	sts	0x0063, r1
  ec:	10 92 62 00 	sts	0x0062, r1
  f0:	08 95       	ret

000000f2 <main>:
  f2:	20 e0       	ldi	r18, 0x00	; 0
  f4:	44 e6       	ldi	r20, 0x64	; 100
  f6:	50 e0       	ldi	r21, 0x00	; 0
  f8:	62 e6       	ldi	r22, 0x62	; 98
  fa:	70 e0       	ldi	r23, 0x00	; 0
  fc:	88 ea       	ldi	r24, 0xA8	; 168
  fe:	90 e0       	ldi	r25, 0x00	; 0
 100:	0e 94 bd 00 	call	0x17a	; 0x17a <_ZN6CTimer8add_taskEPFvvEjb>
 104:	21 e0       	ldi	r18, 0x01	; 1
 106:	44 ef       	ldi	r20, 0xF4	; 244
 108:	51 e0       	ldi	r21, 0x01	; 1
 10a:	6b e4       	ldi	r22, 0x4B	; 75
 10c:	70 e0       	ldi	r23, 0x00	; 0
 10e:	88 ea       	ldi	r24, 0xA8	; 168
 110:	90 e0       	ldi	r25, 0x00	; 0
 112:	0e 94 bd 00 	call	0x17a	; 0x17a <_ZN6CTimer8add_taskEPFvvEjb>
 116:	88 ea       	ldi	r24, 0xA8	; 168
 118:	90 e0       	ldi	r25, 0x00	; 0
 11a:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN6CTimer4mainEv>
 11e:	fb cf       	rjmp	.-10     	; 0x116 <main+0x24>

00000120 <_GLOBAL__sub_I_led1>:
 120:	d5 9a       	sbi	0x1a, 5	; 26
 122:	d6 9a       	sbi	0x1a, 6	; 26
 124:	08 95       	ret

00000126 <_ZN6CTimerC1Ev>:
 126:	80 e0       	ldi	r24, 0x00	; 0
 128:	90 e0       	ldi	r25, 0x00	; 0
 12a:	fc 01       	movw	r30, r24
 12c:	23 e0       	ldi	r18, 0x03	; 3
 12e:	ee 0f       	add	r30, r30
 130:	ff 1f       	adc	r31, r31
 132:	2a 95       	dec	r18
 134:	e1 f7       	brne	.-8      	; 0x12e <_ZN6CTimerC1Ev+0x8>
 136:	ec 59       	subi	r30, 0x9C	; 156
 138:	ff 4f       	sbci	r31, 0xFF	; 255
 13a:	11 82       	std	Z+1, r1	; 0x01
 13c:	10 82       	st	Z, r1
 13e:	13 82       	std	Z+3, r1	; 0x03
 140:	12 82       	std	Z+2, r1	; 0x02
 142:	15 82       	std	Z+5, r1	; 0x05
 144:	14 82       	std	Z+4, r1	; 0x04
 146:	16 82       	std	Z+6, r1	; 0x06
 148:	17 82       	std	Z+7, r1	; 0x07
 14a:	01 96       	adiw	r24, 0x01	; 1
 14c:	88 30       	cpi	r24, 0x08	; 8
 14e:	91 05       	cpc	r25, r1
 150:	61 f7       	brne	.-40     	; 0x12a <_ZN6CTimerC1Ev+0x4>
 152:	10 92 a4 00 	sts	0x00A4, r1
 156:	10 92 a5 00 	sts	0x00A5, r1
 15a:	10 92 a6 00 	sts	0x00A6, r1
 15e:	10 92 a7 00 	sts	0x00A7, r1
 162:	83 b7       	in	r24, 0x33	; 51
 164:	88 60       	ori	r24, 0x08	; 8
 166:	83 bf       	out	0x33, r24	; 51
 168:	8f ef       	ldi	r24, 0xFF	; 255
 16a:	8c bf       	out	0x3c, r24	; 60
 16c:	83 e0       	ldi	r24, 0x03	; 3
 16e:	83 bf       	out	0x33, r24	; 51
 170:	89 b7       	in	r24, 0x39	; 57
 172:	82 60       	ori	r24, 0x02	; 2
 174:	89 bf       	out	0x39, r24	; 57
 176:	78 94       	sei
 178:	08 95       	ret

0000017a <_ZN6CTimer8add_taskEPFvvEjb>:
 17a:	80 e0       	ldi	r24, 0x00	; 0
 17c:	90 e0       	ldi	r25, 0x00	; 0
 17e:	ef ef       	ldi	r30, 0xFF	; 255
 180:	dc 01       	movw	r26, r24
 182:	33 e0       	ldi	r19, 0x03	; 3
 184:	aa 0f       	add	r26, r26
 186:	bb 1f       	adc	r27, r27
 188:	3a 95       	dec	r19
 18a:	e1 f7       	brne	.-8      	; 0x184 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
 18c:	ac 59       	subi	r26, 0x9C	; 156
 18e:	bf 4f       	sbci	r27, 0xFF	; 255
 190:	0d 90       	ld	r0, X+
 192:	bc 91       	ld	r27, X
 194:	a0 2d       	mov	r26, r0
 196:	ab 2b       	or	r26, r27
 198:	09 f4       	brne	.+2      	; 0x19c <_ZN6CTimer8add_taskEPFvvEjb+0x22>
 19a:	e8 2f       	mov	r30, r24
 19c:	01 96       	adiw	r24, 0x01	; 1
 19e:	88 30       	cpi	r24, 0x08	; 8
 1a0:	91 05       	cpc	r25, r1
 1a2:	71 f7       	brne	.-36     	; 0x180 <_ZN6CTimer8add_taskEPFvvEjb+0x6>
 1a4:	ef 3f       	cpi	r30, 0xFF	; 255
 1a6:	71 f0       	breq	.+28     	; 0x1c4 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
 1a8:	88 e0       	ldi	r24, 0x08	; 8
 1aa:	e8 02       	muls	r30, r24
 1ac:	f0 01       	movw	r30, r0
 1ae:	11 24       	eor	r1, r1
 1b0:	ec 59       	subi	r30, 0x9C	; 156
 1b2:	ff 4f       	sbci	r31, 0xFF	; 255
 1b4:	71 83       	std	Z+1, r23	; 0x01
 1b6:	60 83       	st	Z, r22
 1b8:	53 83       	std	Z+3, r21	; 0x03
 1ba:	42 83       	std	Z+2, r20	; 0x02
 1bc:	55 83       	std	Z+5, r21	; 0x05
 1be:	44 83       	std	Z+4, r20	; 0x04
 1c0:	16 82       	std	Z+6, r1	; 0x06
 1c2:	27 83       	std	Z+7, r18	; 0x07
 1c4:	08 95       	ret

000001c6 <_ZN6CTimer14test_and_clearEh>:
 1c6:	f8 94       	cli
 1c8:	88 e0       	ldi	r24, 0x08	; 8
 1ca:	68 9f       	mul	r22, r24
 1cc:	f0 01       	movw	r30, r0
 1ce:	11 24       	eor	r1, r1
 1d0:	ec 59       	subi	r30, 0x9C	; 156
 1d2:	ff 4f       	sbci	r31, 0xFF	; 255
 1d4:	86 81       	ldd	r24, Z+6	; 0x06
 1d6:	88 23       	and	r24, r24
 1d8:	19 f0       	breq	.+6      	; 0x1e0 <_ZN6CTimer14test_and_clearEh+0x1a>
 1da:	86 81       	ldd	r24, Z+6	; 0x06
 1dc:	16 82       	std	Z+6, r1	; 0x06
 1de:	01 c0       	rjmp	.+2      	; 0x1e2 <_ZN6CTimer14test_and_clearEh+0x1c>
 1e0:	80 e0       	ldi	r24, 0x00	; 0
 1e2:	78 94       	sei
 1e4:	90 e0       	ldi	r25, 0x00	; 0
 1e6:	08 95       	ret

000001e8 <_ZN6CTimer4mainEv>:
 1e8:	7c 01       	movw	r14, r24
 1ea:	c0 e0       	ldi	r28, 0x00	; 0
 1ec:	88 e0       	ldi	r24, 0x08	; 8
 1ee:	c8 9f       	mul	r28, r24
 1f0:	80 01       	movw	r16, r0
 1f2:	11 24       	eor	r1, r1
 1f4:	0c 59       	subi	r16, 0x9C	; 156
 1f6:	1f 4f       	sbci	r17, 0xFF	; 255
 1f8:	d8 01       	movw	r26, r16
 1fa:	17 96       	adiw	r26, 0x07	; 7
 1fc:	8c 91       	ld	r24, X
 1fe:	88 23       	and	r24, r24
 200:	79 f0       	breq	.+30     	; 0x220 <_ZN6CTimer4mainEv+0x38>
 202:	6c 2f       	mov	r22, r28
 204:	c7 01       	movw	r24, r14
 206:	0e 94 e3 00 	call	0x1c6	; 0x1c6 <_ZN6CTimer14test_and_clearEh>
 20a:	89 2b       	or	r24, r25
 20c:	49 f0       	breq	.+18     	; 0x220 <_ZN6CTimer4mainEv+0x38>
 20e:	f8 01       	movw	r30, r16
 210:	80 81       	ld	r24, Z
 212:	91 81       	ldd	r25, Z+1	; 0x01
 214:	89 2b       	or	r24, r25
 216:	21 f0       	breq	.+8      	; 0x220 <_ZN6CTimer4mainEv+0x38>
 218:	01 90       	ld	r0, Z+
 21a:	f0 81       	ld	r31, Z
 21c:	e0 2d       	mov	r30, r0
 21e:	09 95       	icall
 220:	cf 5f       	subi	r28, 0xFF	; 255
 222:	c8 30       	cpi	r28, 0x08	; 8
 224:	18 f3       	brcs	.-58     	; 0x1ec <_ZN6CTimer4mainEv+0x4>
 226:	e1 cf       	rjmp	.-62     	; 0x1ea <_ZN6CTimer4mainEv+0x2>

00000228 <__vector_19>:
 228:	1f 92       	push	r1
 22a:	0f 92       	push	r0
 22c:	0f b6       	in	r0, 0x3f	; 63
 22e:	0f 92       	push	r0
 230:	11 24       	eor	r1, r1
 232:	2f 93       	push	r18
 234:	3f 93       	push	r19
 236:	4f 93       	push	r20
 238:	5f 93       	push	r21
 23a:	6f 93       	push	r22
 23c:	7f 93       	push	r23
 23e:	8f 93       	push	r24
 240:	9f 93       	push	r25
 242:	af 93       	push	r26
 244:	bf 93       	push	r27
 246:	cf 93       	push	r28
 248:	df 93       	push	r29
 24a:	ef 93       	push	r30
 24c:	ff 93       	push	r31
 24e:	c0 e0       	ldi	r28, 0x00	; 0
 250:	d0 e0       	ldi	r29, 0x00	; 0
 252:	ce 01       	movw	r24, r28
 254:	23 e0       	ldi	r18, 0x03	; 3
 256:	88 0f       	add	r24, r24
 258:	99 1f       	adc	r25, r25
 25a:	2a 95       	dec	r18
 25c:	e1 f7       	brne	.-8      	; 0x256 <__vector_19+0x2e>
 25e:	fc 01       	movw	r30, r24
 260:	ec 59       	subi	r30, 0x9C	; 156
 262:	ff 4f       	sbci	r31, 0xFF	; 255
 264:	24 81       	ldd	r18, Z+4	; 0x04
 266:	35 81       	ldd	r19, Z+5	; 0x05
 268:	23 2b       	or	r18, r19
 26a:	31 f0       	breq	.+12     	; 0x278 <__vector_19+0x50>
 26c:	84 81       	ldd	r24, Z+4	; 0x04
 26e:	95 81       	ldd	r25, Z+5	; 0x05
 270:	01 97       	sbiw	r24, 0x01	; 1
 272:	95 83       	std	Z+5, r25	; 0x05
 274:	84 83       	std	Z+4, r24	; 0x04
 276:	18 c0       	rjmp	.+48     	; 0x2a8 <__vector_19+0x80>
 278:	22 81       	ldd	r18, Z+2	; 0x02
 27a:	33 81       	ldd	r19, Z+3	; 0x03
 27c:	35 83       	std	Z+5, r19	; 0x05
 27e:	24 83       	std	Z+4, r18	; 0x04
 280:	26 81       	ldd	r18, Z+6	; 0x06
 282:	2f 3f       	cpi	r18, 0xFF	; 255
 284:	19 f0       	breq	.+6      	; 0x28c <__vector_19+0x64>
 286:	26 81       	ldd	r18, Z+6	; 0x06
 288:	2f 5f       	subi	r18, 0xFF	; 255
 28a:	26 83       	std	Z+6, r18	; 0x06
 28c:	fc 01       	movw	r30, r24
 28e:	ec 59       	subi	r30, 0x9C	; 156
 290:	ff 4f       	sbci	r31, 0xFF	; 255
 292:	87 81       	ldd	r24, Z+7	; 0x07
 294:	81 11       	cpse	r24, r1
 296:	08 c0       	rjmp	.+16     	; 0x2a8 <__vector_19+0x80>
 298:	80 81       	ld	r24, Z
 29a:	91 81       	ldd	r25, Z+1	; 0x01
 29c:	89 2b       	or	r24, r25
 29e:	21 f0       	breq	.+8      	; 0x2a8 <__vector_19+0x80>
 2a0:	01 90       	ld	r0, Z+
 2a2:	f0 81       	ld	r31, Z
 2a4:	e0 2d       	mov	r30, r0
 2a6:	09 95       	icall
 2a8:	21 96       	adiw	r28, 0x01	; 1
 2aa:	c8 30       	cpi	r28, 0x08	; 8
 2ac:	d1 05       	cpc	r29, r1
 2ae:	89 f6       	brne	.-94     	; 0x252 <__vector_19+0x2a>
 2b0:	80 91 a4 00 	lds	r24, 0x00A4
 2b4:	90 91 a5 00 	lds	r25, 0x00A5
 2b8:	a0 91 a6 00 	lds	r26, 0x00A6
 2bc:	b0 91 a7 00 	lds	r27, 0x00A7
 2c0:	01 96       	adiw	r24, 0x01	; 1
 2c2:	a1 1d       	adc	r26, r1
 2c4:	b1 1d       	adc	r27, r1
 2c6:	80 93 a4 00 	sts	0x00A4, r24
 2ca:	90 93 a5 00 	sts	0x00A5, r25
 2ce:	a0 93 a6 00 	sts	0x00A6, r26
 2d2:	b0 93 a7 00 	sts	0x00A7, r27
 2d6:	ff 91       	pop	r31
 2d8:	ef 91       	pop	r30
 2da:	df 91       	pop	r29
 2dc:	cf 91       	pop	r28
 2de:	bf 91       	pop	r27
 2e0:	af 91       	pop	r26
 2e2:	9f 91       	pop	r25
 2e4:	8f 91       	pop	r24
 2e6:	7f 91       	pop	r23
 2e8:	6f 91       	pop	r22
 2ea:	5f 91       	pop	r21
 2ec:	4f 91       	pop	r20
 2ee:	3f 91       	pop	r19
 2f0:	2f 91       	pop	r18
 2f2:	0f 90       	pop	r0
 2f4:	0f be       	out	0x3f, r0	; 63
 2f6:	0f 90       	pop	r0
 2f8:	1f 90       	pop	r1
 2fa:	18 95       	reti

000002fc <_GLOBAL__sub_I_timer>:
 2fc:	88 ea       	ldi	r24, 0xA8	; 168
 2fe:	90 e0       	ldi	r25, 0x00	; 0
 300:	0c 94 93 00 	jmp	0x126	; 0x126 <_ZN6CTimerC1Ev>

00000304 <__tablejump2__>:
 304:	ee 0f       	add	r30, r30
 306:	ff 1f       	adc	r31, r31
 308:	05 90       	lpm	r0, Z+
 30a:	f4 91       	lpm	r31, Z
 30c:	e0 2d       	mov	r30, r0
 30e:	09 94       	ijmp

00000310 <_exit>:
 310:	f8 94       	cli

00000312 <__stop_program>:
 312:	ff cf       	rjmp	.-2      	; 0x312 <__stop_program>
