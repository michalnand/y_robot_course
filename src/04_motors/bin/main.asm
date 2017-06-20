
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 2b 00 	jmp	0x56	; 0x56 <__ctors_end>
   4:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
   8:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
   c:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  10:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  14:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  18:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  1c:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  20:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  24:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  28:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  2c:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  30:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  34:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  38:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  3c:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  40:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  44:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  48:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>
  4c:	0c 94 a2 01 	jmp	0x344	; 0x344 <__vector_19>
  50:	0c 94 48 00 	jmp	0x90	; 0x90 <__bad_interrupt>

00000054 <__ctors_start>:
  54:	0c 02       	muls	r16, r28

00000056 <__ctors_end>:
  56:	11 24       	eor	r1, r1
  58:	1f be       	out	0x3f, r1	; 63
  5a:	cf e5       	ldi	r28, 0x5F	; 95
  5c:	d4 e0       	ldi	r29, 0x04	; 4
  5e:	de bf       	out	0x3e, r29	; 62
  60:	cd bf       	out	0x3d, r28	; 61

00000062 <__do_clear_bss>:
  62:	20 e0       	ldi	r18, 0x00	; 0
  64:	a0 e6       	ldi	r26, 0x60	; 96
  66:	b0 e0       	ldi	r27, 0x00	; 0
  68:	01 c0       	rjmp	.+2      	; 0x6c <.do_clear_bss_start>

0000006a <.do_clear_bss_loop>:
  6a:	1d 92       	st	X+, r1

0000006c <.do_clear_bss_start>:
  6c:	a5 3a       	cpi	r26, 0xA5	; 165
  6e:	b2 07       	cpc	r27, r18
  70:	e1 f7       	brne	.-8      	; 0x6a <.do_clear_bss_loop>

00000072 <__do_global_ctors>:
  72:	10 e0       	ldi	r17, 0x00	; 0
  74:	cb e2       	ldi	r28, 0x2B	; 43
  76:	d0 e0       	ldi	r29, 0x00	; 0
  78:	04 c0       	rjmp	.+8      	; 0x82 <__do_global_ctors+0x10>
  7a:	21 97       	sbiw	r28, 0x01	; 1
  7c:	fe 01       	movw	r30, r28
  7e:	0e 94 10 02 	call	0x420	; 0x420 <__tablejump2__>
  82:	ca 32       	cpi	r28, 0x2A	; 42
  84:	d1 07       	cpc	r29, r17
  86:	c9 f7       	brne	.-14     	; 0x7a <__do_global_ctors+0x8>
  88:	0e 94 8e 00 	call	0x11c	; 0x11c <main>
  8c:	0c 94 16 02 	jmp	0x42c	; 0x42c <_exit>

00000090 <__bad_interrupt>:
  90:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

00000094 <_ZN6CMotorC1Ev>:
  94:	80 ef       	ldi	r24, 0xF0	; 240
  96:	81 bb       	out	0x11, r24	; 17
  98:	95 98       	cbi	0x12, 5	; 18
  9a:	81 ea       	ldi	r24, 0xA1	; 161
  9c:	8f bd       	out	0x2f, r24	; 47
  9e:	82 e0       	ldi	r24, 0x02	; 2
  a0:	8e bd       	out	0x2e, r24	; 46
  a2:	1b bc       	out	0x2b, r1	; 43
  a4:	1a bc       	out	0x2a, r1	; 42
  a6:	19 bc       	out	0x29, r1	; 41
  a8:	18 bc       	out	0x28, r1	; 40
  aa:	08 95       	ret

000000ac <_ZN6CMotor3runEii>:
  ac:	6f 3f       	cpi	r22, 0xFF	; 255
  ae:	71 05       	cpc	r23, r1
  b0:	09 f0       	breq	.+2      	; 0xb4 <_ZN6CMotor3runEii+0x8>
  b2:	3c f4       	brge	.+14     	; 0xc2 <_ZN6CMotor3runEii+0x16>
  b4:	61 30       	cpi	r22, 0x01	; 1
  b6:	8f ef       	ldi	r24, 0xFF	; 255
  b8:	78 07       	cpc	r23, r24
  ba:	2c f4       	brge	.+10     	; 0xc6 <_ZN6CMotor3runEii+0x1a>
  bc:	61 e0       	ldi	r22, 0x01	; 1
  be:	7f ef       	ldi	r23, 0xFF	; 255
  c0:	02 c0       	rjmp	.+4      	; 0xc6 <_ZN6CMotor3runEii+0x1a>
  c2:	6f ef       	ldi	r22, 0xFF	; 255
  c4:	70 e0       	ldi	r23, 0x00	; 0
  c6:	4f 3f       	cpi	r20, 0xFF	; 255
  c8:	51 05       	cpc	r21, r1
  ca:	09 f0       	breq	.+2      	; 0xce <_ZN6CMotor3runEii+0x22>
  cc:	44 f4       	brge	.+16     	; 0xde <_ZN6CMotor3runEii+0x32>
  ce:	41 30       	cpi	r20, 0x01	; 1
  d0:	8f ef       	ldi	r24, 0xFF	; 255
  d2:	58 07       	cpc	r21, r24
  d4:	6c f0       	brlt	.+26     	; 0xf0 <_ZN6CMotor3runEii+0x44>
  d6:	14 16       	cp	r1, r20
  d8:	15 06       	cpc	r1, r21
  da:	1c f0       	brlt	.+6      	; 0xe2 <_ZN6CMotor3runEii+0x36>
  dc:	05 c0       	rjmp	.+10     	; 0xe8 <_ZN6CMotor3runEii+0x3c>
  de:	4f ef       	ldi	r20, 0xFF	; 255
  e0:	50 e0       	ldi	r21, 0x00	; 0
  e2:	4a bd       	out	0x2a, r20	; 42
  e4:	96 9a       	sbi	0x12, 6	; 18
  e6:	0b c0       	rjmp	.+22     	; 0xfe <_ZN6CMotor3runEii+0x52>
  e8:	41 15       	cp	r20, r1
  ea:	51 05       	cpc	r21, r1
  ec:	39 f0       	breq	.+14     	; 0xfc <_ZN6CMotor3runEii+0x50>
  ee:	02 c0       	rjmp	.+4      	; 0xf4 <_ZN6CMotor3runEii+0x48>
  f0:	41 e0       	ldi	r20, 0x01	; 1
  f2:	5f ef       	ldi	r21, 0xFF	; 255
  f4:	41 95       	neg	r20
  f6:	4a bd       	out	0x2a, r20	; 42
  f8:	96 98       	cbi	0x12, 6	; 18
  fa:	01 c0       	rjmp	.+2      	; 0xfe <_ZN6CMotor3runEii+0x52>
  fc:	1a bc       	out	0x2a, r1	; 42
  fe:	16 16       	cp	r1, r22
 100:	17 06       	cpc	r1, r23
 102:	1c f4       	brge	.+6      	; 0x10a <_ZN6CMotor3runEii+0x5e>
 104:	68 bd       	out	0x28, r22	; 40
 106:	97 98       	cbi	0x12, 7	; 18
 108:	08 95       	ret
 10a:	61 15       	cp	r22, r1
 10c:	71 05       	cpc	r23, r1
 10e:	21 f0       	breq	.+8      	; 0x118 <_ZN6CMotor3runEii+0x6c>
 110:	61 95       	neg	r22
 112:	68 bd       	out	0x28, r22	; 40
 114:	97 9a       	sbi	0x12, 7	; 18
 116:	08 95       	ret
 118:	18 bc       	out	0x28, r1	; 40
 11a:	08 95       	ret

0000011c <main>:
 11c:	cf 93       	push	r28
 11e:	df 93       	push	r29
 120:	1f 92       	push	r1
 122:	cd b7       	in	r28, 0x3d	; 61
 124:	de b7       	in	r29, 0x3e	; 62
 126:	ce 01       	movw	r24, r28
 128:	01 96       	adiw	r24, 0x01	; 1
 12a:	0e 94 4a 00 	call	0x94	; 0x94 <_ZN6CMotorC1Ev>
 12e:	40 e0       	ldi	r20, 0x00	; 0
 130:	50 e0       	ldi	r21, 0x00	; 0
 132:	64 e6       	ldi	r22, 0x64	; 100
 134:	70 e0       	ldi	r23, 0x00	; 0
 136:	ce 01       	movw	r24, r28
 138:	01 96       	adiw	r24, 0x01	; 1
 13a:	0e 94 56 00 	call	0xac	; 0xac <_ZN6CMotor3runEii>
 13e:	44 ef       	ldi	r20, 0xF4	; 244
 140:	51 e0       	ldi	r21, 0x01	; 1
 142:	60 e0       	ldi	r22, 0x00	; 0
 144:	70 e0       	ldi	r23, 0x00	; 0
 146:	84 ea       	ldi	r24, 0xA4	; 164
 148:	90 e0       	ldi	r25, 0x00	; 0
 14a:	0e 94 6e 01 	call	0x2dc	; 0x2dc <_ZN6CTimer8delay_msEm>
 14e:	40 e0       	ldi	r20, 0x00	; 0
 150:	50 e0       	ldi	r21, 0x00	; 0
 152:	6c e9       	ldi	r22, 0x9C	; 156
 154:	7f ef       	ldi	r23, 0xFF	; 255
 156:	ce 01       	movw	r24, r28
 158:	01 96       	adiw	r24, 0x01	; 1
 15a:	0e 94 56 00 	call	0xac	; 0xac <_ZN6CMotor3runEii>
 15e:	44 ef       	ldi	r20, 0xF4	; 244
 160:	51 e0       	ldi	r21, 0x01	; 1
 162:	60 e0       	ldi	r22, 0x00	; 0
 164:	70 e0       	ldi	r23, 0x00	; 0
 166:	84 ea       	ldi	r24, 0xA4	; 164
 168:	90 e0       	ldi	r25, 0x00	; 0
 16a:	0e 94 6e 01 	call	0x2dc	; 0x2dc <_ZN6CTimer8delay_msEm>
 16e:	44 e6       	ldi	r20, 0x64	; 100
 170:	50 e0       	ldi	r21, 0x00	; 0
 172:	60 e0       	ldi	r22, 0x00	; 0
 174:	70 e0       	ldi	r23, 0x00	; 0
 176:	ce 01       	movw	r24, r28
 178:	01 96       	adiw	r24, 0x01	; 1
 17a:	0e 94 56 00 	call	0xac	; 0xac <_ZN6CMotor3runEii>
 17e:	44 ef       	ldi	r20, 0xF4	; 244
 180:	51 e0       	ldi	r21, 0x01	; 1
 182:	60 e0       	ldi	r22, 0x00	; 0
 184:	70 e0       	ldi	r23, 0x00	; 0
 186:	84 ea       	ldi	r24, 0xA4	; 164
 188:	90 e0       	ldi	r25, 0x00	; 0
 18a:	0e 94 6e 01 	call	0x2dc	; 0x2dc <_ZN6CTimer8delay_msEm>
 18e:	4c e9       	ldi	r20, 0x9C	; 156
 190:	5f ef       	ldi	r21, 0xFF	; 255
 192:	60 e0       	ldi	r22, 0x00	; 0
 194:	70 e0       	ldi	r23, 0x00	; 0
 196:	ce 01       	movw	r24, r28
 198:	01 96       	adiw	r24, 0x01	; 1
 19a:	0e 94 56 00 	call	0xac	; 0xac <_ZN6CMotor3runEii>
 19e:	44 ef       	ldi	r20, 0xF4	; 244
 1a0:	51 e0       	ldi	r21, 0x01	; 1
 1a2:	60 e0       	ldi	r22, 0x00	; 0
 1a4:	70 e0       	ldi	r23, 0x00	; 0
 1a6:	84 ea       	ldi	r24, 0xA4	; 164
 1a8:	90 e0       	ldi	r25, 0x00	; 0
 1aa:	0e 94 6e 01 	call	0x2dc	; 0x2dc <_ZN6CTimer8delay_msEm>
 1ae:	44 e6       	ldi	r20, 0x64	; 100
 1b0:	50 e0       	ldi	r21, 0x00	; 0
 1b2:	64 e6       	ldi	r22, 0x64	; 100
 1b4:	70 e0       	ldi	r23, 0x00	; 0
 1b6:	ce 01       	movw	r24, r28
 1b8:	01 96       	adiw	r24, 0x01	; 1
 1ba:	0e 94 56 00 	call	0xac	; 0xac <_ZN6CMotor3runEii>
 1be:	44 ef       	ldi	r20, 0xF4	; 244
 1c0:	51 e0       	ldi	r21, 0x01	; 1
 1c2:	60 e0       	ldi	r22, 0x00	; 0
 1c4:	70 e0       	ldi	r23, 0x00	; 0
 1c6:	84 ea       	ldi	r24, 0xA4	; 164
 1c8:	90 e0       	ldi	r25, 0x00	; 0
 1ca:	0e 94 6e 01 	call	0x2dc	; 0x2dc <_ZN6CTimer8delay_msEm>
 1ce:	40 e0       	ldi	r20, 0x00	; 0
 1d0:	50 e0       	ldi	r21, 0x00	; 0
 1d2:	60 e0       	ldi	r22, 0x00	; 0
 1d4:	70 e0       	ldi	r23, 0x00	; 0
 1d6:	ce 01       	movw	r24, r28
 1d8:	01 96       	adiw	r24, 0x01	; 1
 1da:	0e 94 56 00 	call	0xac	; 0xac <_ZN6CMotor3runEii>
 1de:	84 ea       	ldi	r24, 0xA4	; 164
 1e0:	90 e0       	ldi	r25, 0x00	; 0
 1e2:	0e 94 2f 01 	call	0x25e	; 0x25e <_ZN6CTimer4mainEv>
 1e6:	fb cf       	rjmp	.-10     	; 0x1de <main+0xc2>

000001e8 <_ZN6CTimerC1Ev>:
 1e8:	80 e0       	ldi	r24, 0x00	; 0
 1ea:	90 e0       	ldi	r25, 0x00	; 0
 1ec:	fc 01       	movw	r30, r24
 1ee:	23 e0       	ldi	r18, 0x03	; 3
 1f0:	ee 0f       	add	r30, r30
 1f2:	ff 1f       	adc	r31, r31
 1f4:	2a 95       	dec	r18
 1f6:	e1 f7       	brne	.-8      	; 0x1f0 <_ZN6CTimerC1Ev+0x8>
 1f8:	e0 5a       	subi	r30, 0xA0	; 160
 1fa:	ff 4f       	sbci	r31, 0xFF	; 255
 1fc:	11 82       	std	Z+1, r1	; 0x01
 1fe:	10 82       	st	Z, r1
 200:	13 82       	std	Z+3, r1	; 0x03
 202:	12 82       	std	Z+2, r1	; 0x02
 204:	15 82       	std	Z+5, r1	; 0x05
 206:	14 82       	std	Z+4, r1	; 0x04
 208:	16 82       	std	Z+6, r1	; 0x06
 20a:	17 82       	std	Z+7, r1	; 0x07
 20c:	01 96       	adiw	r24, 0x01	; 1
 20e:	88 30       	cpi	r24, 0x08	; 8
 210:	91 05       	cpc	r25, r1
 212:	61 f7       	brne	.-40     	; 0x1ec <_ZN6CTimerC1Ev+0x4>
 214:	10 92 a0 00 	sts	0x00A0, r1
 218:	10 92 a1 00 	sts	0x00A1, r1
 21c:	10 92 a2 00 	sts	0x00A2, r1
 220:	10 92 a3 00 	sts	0x00A3, r1
 224:	83 b7       	in	r24, 0x33	; 51
 226:	88 60       	ori	r24, 0x08	; 8
 228:	83 bf       	out	0x33, r24	; 51
 22a:	8f ef       	ldi	r24, 0xFF	; 255
 22c:	8c bf       	out	0x3c, r24	; 60
 22e:	83 e0       	ldi	r24, 0x03	; 3
 230:	83 bf       	out	0x33, r24	; 51
 232:	89 b7       	in	r24, 0x39	; 57
 234:	82 60       	ori	r24, 0x02	; 2
 236:	89 bf       	out	0x39, r24	; 57
 238:	78 94       	sei
 23a:	08 95       	ret

0000023c <_ZN6CTimer14test_and_clearEh>:
 23c:	f8 94       	cli
 23e:	88 e0       	ldi	r24, 0x08	; 8
 240:	68 9f       	mul	r22, r24
 242:	f0 01       	movw	r30, r0
 244:	11 24       	eor	r1, r1
 246:	e0 5a       	subi	r30, 0xA0	; 160
 248:	ff 4f       	sbci	r31, 0xFF	; 255
 24a:	86 81       	ldd	r24, Z+6	; 0x06
 24c:	88 23       	and	r24, r24
 24e:	19 f0       	breq	.+6      	; 0x256 <_ZN6CTimer14test_and_clearEh+0x1a>
 250:	86 81       	ldd	r24, Z+6	; 0x06
 252:	16 82       	std	Z+6, r1	; 0x06
 254:	01 c0       	rjmp	.+2      	; 0x258 <_ZN6CTimer14test_and_clearEh+0x1c>
 256:	80 e0       	ldi	r24, 0x00	; 0
 258:	78 94       	sei
 25a:	90 e0       	ldi	r25, 0x00	; 0
 25c:	08 95       	ret

0000025e <_ZN6CTimer4mainEv>:
 25e:	7c 01       	movw	r14, r24
 260:	c0 e0       	ldi	r28, 0x00	; 0
 262:	88 e0       	ldi	r24, 0x08	; 8
 264:	c8 9f       	mul	r28, r24
 266:	80 01       	movw	r16, r0
 268:	11 24       	eor	r1, r1
 26a:	00 5a       	subi	r16, 0xA0	; 160
 26c:	1f 4f       	sbci	r17, 0xFF	; 255
 26e:	d8 01       	movw	r26, r16
 270:	17 96       	adiw	r26, 0x07	; 7
 272:	8c 91       	ld	r24, X
 274:	88 23       	and	r24, r24
 276:	79 f0       	breq	.+30     	; 0x296 <_ZN6CTimer4mainEv+0x38>
 278:	6c 2f       	mov	r22, r28
 27a:	c7 01       	movw	r24, r14
 27c:	0e 94 1e 01 	call	0x23c	; 0x23c <_ZN6CTimer14test_and_clearEh>
 280:	89 2b       	or	r24, r25
 282:	49 f0       	breq	.+18     	; 0x296 <_ZN6CTimer4mainEv+0x38>
 284:	f8 01       	movw	r30, r16
 286:	80 81       	ld	r24, Z
 288:	91 81       	ldd	r25, Z+1	; 0x01
 28a:	89 2b       	or	r24, r25
 28c:	21 f0       	breq	.+8      	; 0x296 <_ZN6CTimer4mainEv+0x38>
 28e:	01 90       	ld	r0, Z+
 290:	f0 81       	ld	r31, Z
 292:	e0 2d       	mov	r30, r0
 294:	09 95       	icall
 296:	cf 5f       	subi	r28, 0xFF	; 255
 298:	c8 30       	cpi	r28, 0x08	; 8
 29a:	18 f3       	brcs	.-58     	; 0x262 <_ZN6CTimer4mainEv+0x4>
 29c:	e1 cf       	rjmp	.-62     	; 0x260 <_ZN6CTimer4mainEv+0x2>

0000029e <_ZN6CTimer8get_timeEv>:
 29e:	cf 93       	push	r28
 2a0:	df 93       	push	r29
 2a2:	00 d0       	rcall	.+0      	; 0x2a4 <_ZN6CTimer8get_timeEv+0x6>
 2a4:	00 d0       	rcall	.+0      	; 0x2a6 <_ZN6CTimer8get_timeEv+0x8>
 2a6:	cd b7       	in	r28, 0x3d	; 61
 2a8:	de b7       	in	r29, 0x3e	; 62
 2aa:	f8 94       	cli
 2ac:	80 91 a0 00 	lds	r24, 0x00A0
 2b0:	90 91 a1 00 	lds	r25, 0x00A1
 2b4:	a0 91 a2 00 	lds	r26, 0x00A2
 2b8:	b0 91 a3 00 	lds	r27, 0x00A3
 2bc:	89 83       	std	Y+1, r24	; 0x01
 2be:	9a 83       	std	Y+2, r25	; 0x02
 2c0:	ab 83       	std	Y+3, r26	; 0x03
 2c2:	bc 83       	std	Y+4, r27	; 0x04
 2c4:	78 94       	sei
 2c6:	69 81       	ldd	r22, Y+1	; 0x01
 2c8:	7a 81       	ldd	r23, Y+2	; 0x02
 2ca:	8b 81       	ldd	r24, Y+3	; 0x03
 2cc:	9c 81       	ldd	r25, Y+4	; 0x04
 2ce:	0f 90       	pop	r0
 2d0:	0f 90       	pop	r0
 2d2:	0f 90       	pop	r0
 2d4:	0f 90       	pop	r0
 2d6:	df 91       	pop	r29
 2d8:	cf 91       	pop	r28
 2da:	08 95       	ret

000002dc <_ZN6CTimer8delay_msEm>:
 2dc:	cf 92       	push	r12
 2de:	df 92       	push	r13
 2e0:	ef 92       	push	r14
 2e2:	ff 92       	push	r15
 2e4:	0f 93       	push	r16
 2e6:	1f 93       	push	r17
 2e8:	cf 93       	push	r28
 2ea:	df 93       	push	r29
 2ec:	00 d0       	rcall	.+0      	; 0x2ee <_ZN6CTimer8delay_msEm+0x12>
 2ee:	00 d0       	rcall	.+0      	; 0x2f0 <_ZN6CTimer8delay_msEm+0x14>
 2f0:	cd b7       	in	r28, 0x3d	; 61
 2f2:	de b7       	in	r29, 0x3e	; 62
 2f4:	8c 01       	movw	r16, r24
 2f6:	6a 01       	movw	r12, r20
 2f8:	7b 01       	movw	r14, r22
 2fa:	0e 94 4f 01 	call	0x29e	; 0x29e <_ZN6CTimer8get_timeEv>
 2fe:	c6 0e       	add	r12, r22
 300:	d7 1e       	adc	r13, r23
 302:	e8 1e       	adc	r14, r24
 304:	f9 1e       	adc	r15, r25
 306:	c9 82       	std	Y+1, r12	; 0x01
 308:	da 82       	std	Y+2, r13	; 0x02
 30a:	eb 82       	std	Y+3, r14	; 0x03
 30c:	fc 82       	std	Y+4, r15	; 0x04
 30e:	c8 01       	movw	r24, r16
 310:	0e 94 4f 01 	call	0x29e	; 0x29e <_ZN6CTimer8get_timeEv>
 314:	c9 80       	ldd	r12, Y+1	; 0x01
 316:	da 80       	ldd	r13, Y+2	; 0x02
 318:	eb 80       	ldd	r14, Y+3	; 0x03
 31a:	fc 80       	ldd	r15, Y+4	; 0x04
 31c:	6c 15       	cp	r22, r12
 31e:	7d 05       	cpc	r23, r13
 320:	8e 05       	cpc	r24, r14
 322:	9f 05       	cpc	r25, r15
 324:	10 f4       	brcc	.+4      	; 0x32a <_ZN6CTimer8delay_msEm+0x4e>
 326:	00 00       	nop
 328:	f2 cf       	rjmp	.-28     	; 0x30e <_ZN6CTimer8delay_msEm+0x32>
 32a:	0f 90       	pop	r0
 32c:	0f 90       	pop	r0
 32e:	0f 90       	pop	r0
 330:	0f 90       	pop	r0
 332:	df 91       	pop	r29
 334:	cf 91       	pop	r28
 336:	1f 91       	pop	r17
 338:	0f 91       	pop	r16
 33a:	ff 90       	pop	r15
 33c:	ef 90       	pop	r14
 33e:	df 90       	pop	r13
 340:	cf 90       	pop	r12
 342:	08 95       	ret

00000344 <__vector_19>:
 344:	1f 92       	push	r1
 346:	0f 92       	push	r0
 348:	0f b6       	in	r0, 0x3f	; 63
 34a:	0f 92       	push	r0
 34c:	11 24       	eor	r1, r1
 34e:	2f 93       	push	r18
 350:	3f 93       	push	r19
 352:	4f 93       	push	r20
 354:	5f 93       	push	r21
 356:	6f 93       	push	r22
 358:	7f 93       	push	r23
 35a:	8f 93       	push	r24
 35c:	9f 93       	push	r25
 35e:	af 93       	push	r26
 360:	bf 93       	push	r27
 362:	cf 93       	push	r28
 364:	df 93       	push	r29
 366:	ef 93       	push	r30
 368:	ff 93       	push	r31
 36a:	c0 e0       	ldi	r28, 0x00	; 0
 36c:	d0 e0       	ldi	r29, 0x00	; 0
 36e:	ce 01       	movw	r24, r28
 370:	23 e0       	ldi	r18, 0x03	; 3
 372:	88 0f       	add	r24, r24
 374:	99 1f       	adc	r25, r25
 376:	2a 95       	dec	r18
 378:	e1 f7       	brne	.-8      	; 0x372 <__vector_19+0x2e>
 37a:	fc 01       	movw	r30, r24
 37c:	e0 5a       	subi	r30, 0xA0	; 160
 37e:	ff 4f       	sbci	r31, 0xFF	; 255
 380:	24 81       	ldd	r18, Z+4	; 0x04
 382:	35 81       	ldd	r19, Z+5	; 0x05
 384:	23 2b       	or	r18, r19
 386:	31 f0       	breq	.+12     	; 0x394 <__vector_19+0x50>
 388:	84 81       	ldd	r24, Z+4	; 0x04
 38a:	95 81       	ldd	r25, Z+5	; 0x05
 38c:	01 97       	sbiw	r24, 0x01	; 1
 38e:	95 83       	std	Z+5, r25	; 0x05
 390:	84 83       	std	Z+4, r24	; 0x04
 392:	18 c0       	rjmp	.+48     	; 0x3c4 <__vector_19+0x80>
 394:	22 81       	ldd	r18, Z+2	; 0x02
 396:	33 81       	ldd	r19, Z+3	; 0x03
 398:	35 83       	std	Z+5, r19	; 0x05
 39a:	24 83       	std	Z+4, r18	; 0x04
 39c:	26 81       	ldd	r18, Z+6	; 0x06
 39e:	2f 3f       	cpi	r18, 0xFF	; 255
 3a0:	19 f0       	breq	.+6      	; 0x3a8 <__vector_19+0x64>
 3a2:	26 81       	ldd	r18, Z+6	; 0x06
 3a4:	2f 5f       	subi	r18, 0xFF	; 255
 3a6:	26 83       	std	Z+6, r18	; 0x06
 3a8:	fc 01       	movw	r30, r24
 3aa:	e0 5a       	subi	r30, 0xA0	; 160
 3ac:	ff 4f       	sbci	r31, 0xFF	; 255
 3ae:	87 81       	ldd	r24, Z+7	; 0x07
 3b0:	81 11       	cpse	r24, r1
 3b2:	08 c0       	rjmp	.+16     	; 0x3c4 <__vector_19+0x80>
 3b4:	80 81       	ld	r24, Z
 3b6:	91 81       	ldd	r25, Z+1	; 0x01
 3b8:	89 2b       	or	r24, r25
 3ba:	21 f0       	breq	.+8      	; 0x3c4 <__vector_19+0x80>
 3bc:	01 90       	ld	r0, Z+
 3be:	f0 81       	ld	r31, Z
 3c0:	e0 2d       	mov	r30, r0
 3c2:	09 95       	icall
 3c4:	21 96       	adiw	r28, 0x01	; 1
 3c6:	c8 30       	cpi	r28, 0x08	; 8
 3c8:	d1 05       	cpc	r29, r1
 3ca:	89 f6       	brne	.-94     	; 0x36e <__vector_19+0x2a>
 3cc:	80 91 a0 00 	lds	r24, 0x00A0
 3d0:	90 91 a1 00 	lds	r25, 0x00A1
 3d4:	a0 91 a2 00 	lds	r26, 0x00A2
 3d8:	b0 91 a3 00 	lds	r27, 0x00A3
 3dc:	01 96       	adiw	r24, 0x01	; 1
 3de:	a1 1d       	adc	r26, r1
 3e0:	b1 1d       	adc	r27, r1
 3e2:	80 93 a0 00 	sts	0x00A0, r24
 3e6:	90 93 a1 00 	sts	0x00A1, r25
 3ea:	a0 93 a2 00 	sts	0x00A2, r26
 3ee:	b0 93 a3 00 	sts	0x00A3, r27
 3f2:	ff 91       	pop	r31
 3f4:	ef 91       	pop	r30
 3f6:	df 91       	pop	r29
 3f8:	cf 91       	pop	r28
 3fa:	bf 91       	pop	r27
 3fc:	af 91       	pop	r26
 3fe:	9f 91       	pop	r25
 400:	8f 91       	pop	r24
 402:	7f 91       	pop	r23
 404:	6f 91       	pop	r22
 406:	5f 91       	pop	r21
 408:	4f 91       	pop	r20
 40a:	3f 91       	pop	r19
 40c:	2f 91       	pop	r18
 40e:	0f 90       	pop	r0
 410:	0f be       	out	0x3f, r0	; 63
 412:	0f 90       	pop	r0
 414:	1f 90       	pop	r1
 416:	18 95       	reti

00000418 <_GLOBAL__sub_I_timer>:
 418:	84 ea       	ldi	r24, 0xA4	; 164
 41a:	90 e0       	ldi	r25, 0x00	; 0
 41c:	0c 94 f4 00 	jmp	0x1e8	; 0x1e8 <_ZN6CTimerC1Ev>

00000420 <__tablejump2__>:
 420:	ee 0f       	add	r30, r30
 422:	ff 1f       	adc	r31, r31
 424:	05 90       	lpm	r0, Z+
 426:	f4 91       	lpm	r31, Z
 428:	e0 2d       	mov	r30, r0
 42a:	09 94       	ijmp

0000042c <_exit>:
 42c:	f8 94       	cli

0000042e <__stop_program>:
 42e:	ff cf       	rjmp	.-2      	; 0x42e <__stop_program>
