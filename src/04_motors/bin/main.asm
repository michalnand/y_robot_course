
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 2c 00 	jmp	0x58	; 0x58 <__ctors_end>
   4:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
   8:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
   c:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  10:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  14:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  18:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  1c:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  20:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  24:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  28:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  2c:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  30:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  34:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  38:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  3c:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  40:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  44:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  48:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>
  4c:	0c 94 c8 01 	jmp	0x390	; 0x390 <__vector_19>
  50:	0c 94 54 00 	jmp	0xa8	; 0xa8 <__bad_interrupt>

00000054 <__ctors_start>:
  54:	21 01       	movw	r4, r2
  56:	32 02       	muls	r19, r18

00000058 <__ctors_end>:
  58:	11 24       	eor	r1, r1
  5a:	1f be       	out	0x3f, r1	; 63
  5c:	cf e5       	ldi	r28, 0x5F	; 95
  5e:	d4 e0       	ldi	r29, 0x04	; 4
  60:	de bf       	out	0x3e, r29	; 62
  62:	cd bf       	out	0x3d, r28	; 61

00000064 <__do_clear_bss>:
  64:	20 e0       	ldi	r18, 0x00	; 0
  66:	a6 e6       	ldi	r26, 0x66	; 102
  68:	b0 e0       	ldi	r27, 0x00	; 0
  6a:	01 c0       	rjmp	.+2      	; 0x6e <.do_clear_bss_start>

0000006c <.do_clear_bss_loop>:
  6c:	1d 92       	st	X+, r1

0000006e <.do_clear_bss_start>:
  6e:	a1 3b       	cpi	r26, 0xB1	; 177
  70:	b2 07       	cpc	r27, r18
  72:	e1 f7       	brne	.-8      	; 0x6c <.do_clear_bss_loop>

00000074 <__do_copy_data>:
  74:	10 e0       	ldi	r17, 0x00	; 0
  76:	a0 e6       	ldi	r26, 0x60	; 96
  78:	b0 e0       	ldi	r27, 0x00	; 0
  7a:	e6 ed       	ldi	r30, 0xD6	; 214
  7c:	f6 e0       	ldi	r31, 0x06	; 6
  7e:	02 c0       	rjmp	.+4      	; 0x84 <__do_copy_data+0x10>
  80:	05 90       	lpm	r0, Z+
  82:	0d 92       	st	X+, r0
  84:	a6 36       	cpi	r26, 0x66	; 102
  86:	b1 07       	cpc	r27, r17
  88:	d9 f7       	brne	.-10     	; 0x80 <__do_copy_data+0xc>

0000008a <__do_global_ctors>:
  8a:	10 e0       	ldi	r17, 0x00	; 0
  8c:	cc e2       	ldi	r28, 0x2C	; 44
  8e:	d0 e0       	ldi	r29, 0x00	; 0
  90:	04 c0       	rjmp	.+8      	; 0x9a <__do_global_ctors+0x10>
  92:	21 97       	sbiw	r28, 0x01	; 1
  94:	fe 01       	movw	r30, r28
  96:	0e 94 36 02 	call	0x46c	; 0x46c <__tablejump2__>
  9a:	ca 32       	cpi	r28, 0x2A	; 42
  9c:	d1 07       	cpc	r29, r17
  9e:	c9 f7       	brne	.-14     	; 0x92 <__do_global_ctors+0x8>
  a0:	0e 94 07 01 	call	0x20e	; 0x20e <main>
  a4:	0c 94 69 03 	jmp	0x6d2	; 0x6d2 <_exit>

000000a8 <__bad_interrupt>:
  a8:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000ac <_ZN6CMotorC1Ev>:
  ac:	80 ef       	ldi	r24, 0xF0	; 240
  ae:	81 bb       	out	0x11, r24	; 17
  b0:	95 98       	cbi	0x12, 5	; 18
  b2:	81 ea       	ldi	r24, 0xA1	; 161
  b4:	8f bd       	out	0x2f, r24	; 47
  b6:	82 e0       	ldi	r24, 0x02	; 2
  b8:	8e bd       	out	0x2e, r24	; 46
  ba:	1b bc       	out	0x2b, r1	; 43
  bc:	1a bc       	out	0x2a, r1	; 42
  be:	19 bc       	out	0x29, r1	; 41
  c0:	18 bc       	out	0x28, r1	; 40
  c2:	08 95       	ret

000000c4 <_ZN6CMotor3runEii>:
  c4:	6f 3f       	cpi	r22, 0xFF	; 255
  c6:	71 05       	cpc	r23, r1
  c8:	09 f0       	breq	.+2      	; 0xcc <_ZN6CMotor3runEii+0x8>
  ca:	3c f4       	brge	.+14     	; 0xda <_ZN6CMotor3runEii+0x16>
  cc:	61 30       	cpi	r22, 0x01	; 1
  ce:	8f ef       	ldi	r24, 0xFF	; 255
  d0:	78 07       	cpc	r23, r24
  d2:	2c f4       	brge	.+10     	; 0xde <_ZN6CMotor3runEii+0x1a>
  d4:	61 e0       	ldi	r22, 0x01	; 1
  d6:	7f ef       	ldi	r23, 0xFF	; 255
  d8:	02 c0       	rjmp	.+4      	; 0xde <_ZN6CMotor3runEii+0x1a>
  da:	6f ef       	ldi	r22, 0xFF	; 255
  dc:	70 e0       	ldi	r23, 0x00	; 0
  de:	4f 3f       	cpi	r20, 0xFF	; 255
  e0:	51 05       	cpc	r21, r1
  e2:	09 f0       	breq	.+2      	; 0xe6 <_ZN6CMotor3runEii+0x22>
  e4:	44 f4       	brge	.+16     	; 0xf6 <_ZN6CMotor3runEii+0x32>
  e6:	41 30       	cpi	r20, 0x01	; 1
  e8:	8f ef       	ldi	r24, 0xFF	; 255
  ea:	58 07       	cpc	r21, r24
  ec:	6c f0       	brlt	.+26     	; 0x108 <_ZN6CMotor3runEii+0x44>
  ee:	14 16       	cp	r1, r20
  f0:	15 06       	cpc	r1, r21
  f2:	1c f0       	brlt	.+6      	; 0xfa <_ZN6CMotor3runEii+0x36>
  f4:	05 c0       	rjmp	.+10     	; 0x100 <_ZN6CMotor3runEii+0x3c>
  f6:	4f ef       	ldi	r20, 0xFF	; 255
  f8:	50 e0       	ldi	r21, 0x00	; 0
  fa:	4a bd       	out	0x2a, r20	; 42
  fc:	96 9a       	sbi	0x12, 6	; 18
  fe:	0b c0       	rjmp	.+22     	; 0x116 <_ZN6CMotor3runEii+0x52>
 100:	41 15       	cp	r20, r1
 102:	51 05       	cpc	r21, r1
 104:	39 f0       	breq	.+14     	; 0x114 <_ZN6CMotor3runEii+0x50>
 106:	02 c0       	rjmp	.+4      	; 0x10c <_ZN6CMotor3runEii+0x48>
 108:	41 e0       	ldi	r20, 0x01	; 1
 10a:	5f ef       	ldi	r21, 0xFF	; 255
 10c:	41 95       	neg	r20
 10e:	4a bd       	out	0x2a, r20	; 42
 110:	96 98       	cbi	0x12, 6	; 18
 112:	01 c0       	rjmp	.+2      	; 0x116 <_ZN6CMotor3runEii+0x52>
 114:	1a bc       	out	0x2a, r1	; 42
 116:	16 16       	cp	r1, r22
 118:	17 06       	cpc	r1, r23
 11a:	1c f4       	brge	.+6      	; 0x122 <_ZN6CMotor3runEii+0x5e>
 11c:	68 bd       	out	0x28, r22	; 40
 11e:	97 98       	cbi	0x12, 7	; 18
 120:	08 95       	ret
 122:	61 15       	cp	r22, r1
 124:	71 05       	cpc	r23, r1
 126:	21 f0       	breq	.+8      	; 0x130 <_ZN6CMotor3runEii+0x6c>
 128:	61 95       	neg	r22
 12a:	68 bd       	out	0x28, r22	; 40
 12c:	97 9a       	sbi	0x12, 7	; 18
 12e:	08 95       	ret
 130:	18 bc       	out	0x28, r1	; 40
 132:	08 95       	ret

00000134 <_Z5blinkv>:
 134:	80 91 66 00 	lds	r24, 0x0066
 138:	90 91 67 00 	lds	r25, 0x0067
 13c:	00 97       	sbiw	r24, 0x00	; 0
 13e:	19 f0       	breq	.+6      	; 0x146 <_Z5blinkv+0x12>
 140:	01 97       	sbiw	r24, 0x01	; 1
 142:	49 f0       	breq	.+18     	; 0x156 <_Z5blinkv+0x22>
 144:	08 95       	ret
 146:	dd 9a       	sbi	0x1b, 5	; 27
 148:	81 e0       	ldi	r24, 0x01	; 1
 14a:	90 e0       	ldi	r25, 0x00	; 0
 14c:	90 93 67 00 	sts	0x0067, r25
 150:	80 93 66 00 	sts	0x0066, r24
 154:	08 95       	ret
 156:	dd 98       	cbi	0x1b, 5	; 27
 158:	10 92 67 00 	sts	0x0067, r1
 15c:	10 92 66 00 	sts	0x0066, r1
 160:	08 95       	ret

00000162 <_Z10motor_testP6CMotor>:
 162:	cf 93       	push	r28
 164:	df 93       	push	r29
 166:	ec 01       	movw	r28, r24
 168:	40 e0       	ldi	r20, 0x00	; 0
 16a:	50 e0       	ldi	r21, 0x00	; 0
 16c:	68 ec       	ldi	r22, 0xC8	; 200
 16e:	70 e0       	ldi	r23, 0x00	; 0
 170:	0e 94 62 00 	call	0xc4	; 0xc4 <_ZN6CMotor3runEii>
 174:	44 ef       	ldi	r20, 0xF4	; 244
 176:	51 e0       	ldi	r21, 0x01	; 1
 178:	60 e0       	ldi	r22, 0x00	; 0
 17a:	70 e0       	ldi	r23, 0x00	; 0
 17c:	8c ea       	ldi	r24, 0xAC	; 172
 17e:	90 e0       	ldi	r25, 0x00	; 0
 180:	0e 94 94 01 	call	0x328	; 0x328 <_ZN6CTimer8delay_msEm>
 184:	40 e0       	ldi	r20, 0x00	; 0
 186:	50 e0       	ldi	r21, 0x00	; 0
 188:	68 e3       	ldi	r22, 0x38	; 56
 18a:	7f ef       	ldi	r23, 0xFF	; 255
 18c:	ce 01       	movw	r24, r28
 18e:	0e 94 62 00 	call	0xc4	; 0xc4 <_ZN6CMotor3runEii>
 192:	44 ef       	ldi	r20, 0xF4	; 244
 194:	51 e0       	ldi	r21, 0x01	; 1
 196:	60 e0       	ldi	r22, 0x00	; 0
 198:	70 e0       	ldi	r23, 0x00	; 0
 19a:	8c ea       	ldi	r24, 0xAC	; 172
 19c:	90 e0       	ldi	r25, 0x00	; 0
 19e:	0e 94 94 01 	call	0x328	; 0x328 <_ZN6CTimer8delay_msEm>
 1a2:	48 ec       	ldi	r20, 0xC8	; 200
 1a4:	50 e0       	ldi	r21, 0x00	; 0
 1a6:	60 e0       	ldi	r22, 0x00	; 0
 1a8:	70 e0       	ldi	r23, 0x00	; 0
 1aa:	ce 01       	movw	r24, r28
 1ac:	0e 94 62 00 	call	0xc4	; 0xc4 <_ZN6CMotor3runEii>
 1b0:	44 ef       	ldi	r20, 0xF4	; 244
 1b2:	51 e0       	ldi	r21, 0x01	; 1
 1b4:	60 e0       	ldi	r22, 0x00	; 0
 1b6:	70 e0       	ldi	r23, 0x00	; 0
 1b8:	8c ea       	ldi	r24, 0xAC	; 172
 1ba:	90 e0       	ldi	r25, 0x00	; 0
 1bc:	0e 94 94 01 	call	0x328	; 0x328 <_ZN6CTimer8delay_msEm>
 1c0:	48 e3       	ldi	r20, 0x38	; 56
 1c2:	5f ef       	ldi	r21, 0xFF	; 255
 1c4:	60 e0       	ldi	r22, 0x00	; 0
 1c6:	70 e0       	ldi	r23, 0x00	; 0
 1c8:	ce 01       	movw	r24, r28
 1ca:	0e 94 62 00 	call	0xc4	; 0xc4 <_ZN6CMotor3runEii>
 1ce:	44 ef       	ldi	r20, 0xF4	; 244
 1d0:	51 e0       	ldi	r21, 0x01	; 1
 1d2:	60 e0       	ldi	r22, 0x00	; 0
 1d4:	70 e0       	ldi	r23, 0x00	; 0
 1d6:	8c ea       	ldi	r24, 0xAC	; 172
 1d8:	90 e0       	ldi	r25, 0x00	; 0
 1da:	0e 94 94 01 	call	0x328	; 0x328 <_ZN6CTimer8delay_msEm>
 1de:	48 ec       	ldi	r20, 0xC8	; 200
 1e0:	50 e0       	ldi	r21, 0x00	; 0
 1e2:	68 ec       	ldi	r22, 0xC8	; 200
 1e4:	70 e0       	ldi	r23, 0x00	; 0
 1e6:	ce 01       	movw	r24, r28
 1e8:	0e 94 62 00 	call	0xc4	; 0xc4 <_ZN6CMotor3runEii>
 1ec:	44 ef       	ldi	r20, 0xF4	; 244
 1ee:	51 e0       	ldi	r21, 0x01	; 1
 1f0:	60 e0       	ldi	r22, 0x00	; 0
 1f2:	70 e0       	ldi	r23, 0x00	; 0
 1f4:	8c ea       	ldi	r24, 0xAC	; 172
 1f6:	90 e0       	ldi	r25, 0x00	; 0
 1f8:	0e 94 94 01 	call	0x328	; 0x328 <_ZN6CTimer8delay_msEm>
 1fc:	40 e0       	ldi	r20, 0x00	; 0
 1fe:	50 e0       	ldi	r21, 0x00	; 0
 200:	60 e0       	ldi	r22, 0x00	; 0
 202:	70 e0       	ldi	r23, 0x00	; 0
 204:	ce 01       	movw	r24, r28
 206:	df 91       	pop	r29
 208:	cf 91       	pop	r28
 20a:	0c 94 62 00 	jmp	0xc4	; 0xc4 <_ZN6CMotor3runEii>

0000020e <main>:
 20e:	bb 98       	cbi	0x17, 3	; 23
 210:	c3 9a       	sbi	0x18, 3	; 24
 212:	20 e0       	ldi	r18, 0x00	; 0
 214:	48 ec       	ldi	r20, 0xC8	; 200
 216:	50 e0       	ldi	r21, 0x00	; 0
 218:	6a e9       	ldi	r22, 0x9A	; 154
 21a:	70 e0       	ldi	r23, 0x00	; 0
 21c:	8c ea       	ldi	r24, 0xAC	; 172
 21e:	90 e0       	ldi	r25, 0x00	; 0
 220:	0e 94 4f 01 	call	0x29e	; 0x29e <_ZN6CTimer8add_taskEPFvvEjb>
 224:	81 e0       	ldi	r24, 0x01	; 1
 226:	90 e0       	ldi	r25, 0x00	; 0
 228:	0e 94 23 01 	call	0x246	; 0x246 <_Znwj>
 22c:	ec 01       	movw	r28, r24
 22e:	0e 94 56 00 	call	0xac	; 0xac <_ZN6CMotorC1Ev>
 232:	b3 9b       	sbis	0x16, 3	; 22
 234:	02 c0       	rjmp	.+4      	; 0x23a <main+0x2c>
 236:	00 00       	nop
 238:	fc cf       	rjmp	.-8      	; 0x232 <main+0x24>
 23a:	ce 01       	movw	r24, r28
 23c:	0e 94 b1 00 	call	0x162	; 0x162 <_Z10motor_testP6CMotor>
 240:	f8 cf       	rjmp	.-16     	; 0x232 <main+0x24>

00000242 <_GLOBAL__sub_I__Z10motor_testP6CMotor>:
 242:	d5 9a       	sbi	0x1a, 5	; 26
 244:	08 95       	ret

00000246 <_Znwj>:
 246:	0c 94 3c 02 	jmp	0x478	; 0x478 <malloc>

0000024a <_ZN6CTimerC1Ev>:
 24a:	80 e0       	ldi	r24, 0x00	; 0
 24c:	90 e0       	ldi	r25, 0x00	; 0
 24e:	fc 01       	movw	r30, r24
 250:	23 e0       	ldi	r18, 0x03	; 3
 252:	ee 0f       	add	r30, r30
 254:	ff 1f       	adc	r31, r31
 256:	2a 95       	dec	r18
 258:	e1 f7       	brne	.-8      	; 0x252 <_ZN6CTimerC1Ev+0x8>
 25a:	e8 59       	subi	r30, 0x98	; 152
 25c:	ff 4f       	sbci	r31, 0xFF	; 255
 25e:	11 82       	std	Z+1, r1	; 0x01
 260:	10 82       	st	Z, r1
 262:	13 82       	std	Z+3, r1	; 0x03
 264:	12 82       	std	Z+2, r1	; 0x02
 266:	15 82       	std	Z+5, r1	; 0x05
 268:	14 82       	std	Z+4, r1	; 0x04
 26a:	16 82       	std	Z+6, r1	; 0x06
 26c:	17 82       	std	Z+7, r1	; 0x07
 26e:	01 96       	adiw	r24, 0x01	; 1
 270:	88 30       	cpi	r24, 0x08	; 8
 272:	91 05       	cpc	r25, r1
 274:	61 f7       	brne	.-40     	; 0x24e <_ZN6CTimerC1Ev+0x4>
 276:	10 92 a8 00 	sts	0x00A8, r1
 27a:	10 92 a9 00 	sts	0x00A9, r1
 27e:	10 92 aa 00 	sts	0x00AA, r1
 282:	10 92 ab 00 	sts	0x00AB, r1
 286:	83 b7       	in	r24, 0x33	; 51
 288:	88 60       	ori	r24, 0x08	; 8
 28a:	83 bf       	out	0x33, r24	; 51
 28c:	8b e9       	ldi	r24, 0x9B	; 155
 28e:	8c bf       	out	0x3c, r24	; 60
 290:	83 e0       	ldi	r24, 0x03	; 3
 292:	83 bf       	out	0x33, r24	; 51
 294:	89 b7       	in	r24, 0x39	; 57
 296:	82 60       	ori	r24, 0x02	; 2
 298:	89 bf       	out	0x39, r24	; 57
 29a:	78 94       	sei
 29c:	08 95       	ret

0000029e <_ZN6CTimer8add_taskEPFvvEjb>:
 29e:	80 e0       	ldi	r24, 0x00	; 0
 2a0:	90 e0       	ldi	r25, 0x00	; 0
 2a2:	ef ef       	ldi	r30, 0xFF	; 255
 2a4:	dc 01       	movw	r26, r24
 2a6:	33 e0       	ldi	r19, 0x03	; 3
 2a8:	aa 0f       	add	r26, r26
 2aa:	bb 1f       	adc	r27, r27
 2ac:	3a 95       	dec	r19
 2ae:	e1 f7       	brne	.-8      	; 0x2a8 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
 2b0:	a8 59       	subi	r26, 0x98	; 152
 2b2:	bf 4f       	sbci	r27, 0xFF	; 255
 2b4:	0d 90       	ld	r0, X+
 2b6:	bc 91       	ld	r27, X
 2b8:	a0 2d       	mov	r26, r0
 2ba:	ab 2b       	or	r26, r27
 2bc:	09 f4       	brne	.+2      	; 0x2c0 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
 2be:	e8 2f       	mov	r30, r24
 2c0:	01 96       	adiw	r24, 0x01	; 1
 2c2:	88 30       	cpi	r24, 0x08	; 8
 2c4:	91 05       	cpc	r25, r1
 2c6:	71 f7       	brne	.-36     	; 0x2a4 <_ZN6CTimer8add_taskEPFvvEjb+0x6>
 2c8:	ef 3f       	cpi	r30, 0xFF	; 255
 2ca:	71 f0       	breq	.+28     	; 0x2e8 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
 2cc:	88 e0       	ldi	r24, 0x08	; 8
 2ce:	e8 02       	muls	r30, r24
 2d0:	f0 01       	movw	r30, r0
 2d2:	11 24       	eor	r1, r1
 2d4:	e8 59       	subi	r30, 0x98	; 152
 2d6:	ff 4f       	sbci	r31, 0xFF	; 255
 2d8:	71 83       	std	Z+1, r23	; 0x01
 2da:	60 83       	st	Z, r22
 2dc:	53 83       	std	Z+3, r21	; 0x03
 2de:	42 83       	std	Z+2, r20	; 0x02
 2e0:	55 83       	std	Z+5, r21	; 0x05
 2e2:	44 83       	std	Z+4, r20	; 0x04
 2e4:	16 82       	std	Z+6, r1	; 0x06
 2e6:	27 83       	std	Z+7, r18	; 0x07
 2e8:	08 95       	ret

000002ea <_ZN6CTimer8get_timeEv>:
 2ea:	cf 93       	push	r28
 2ec:	df 93       	push	r29
 2ee:	00 d0       	rcall	.+0      	; 0x2f0 <_ZN6CTimer8get_timeEv+0x6>
 2f0:	00 d0       	rcall	.+0      	; 0x2f2 <_ZN6CTimer8get_timeEv+0x8>
 2f2:	cd b7       	in	r28, 0x3d	; 61
 2f4:	de b7       	in	r29, 0x3e	; 62
 2f6:	f8 94       	cli
 2f8:	80 91 a8 00 	lds	r24, 0x00A8
 2fc:	90 91 a9 00 	lds	r25, 0x00A9
 300:	a0 91 aa 00 	lds	r26, 0x00AA
 304:	b0 91 ab 00 	lds	r27, 0x00AB
 308:	89 83       	std	Y+1, r24	; 0x01
 30a:	9a 83       	std	Y+2, r25	; 0x02
 30c:	ab 83       	std	Y+3, r26	; 0x03
 30e:	bc 83       	std	Y+4, r27	; 0x04
 310:	78 94       	sei
 312:	69 81       	ldd	r22, Y+1	; 0x01
 314:	7a 81       	ldd	r23, Y+2	; 0x02
 316:	8b 81       	ldd	r24, Y+3	; 0x03
 318:	9c 81       	ldd	r25, Y+4	; 0x04
 31a:	0f 90       	pop	r0
 31c:	0f 90       	pop	r0
 31e:	0f 90       	pop	r0
 320:	0f 90       	pop	r0
 322:	df 91       	pop	r29
 324:	cf 91       	pop	r28
 326:	08 95       	ret

00000328 <_ZN6CTimer8delay_msEm>:
 328:	cf 92       	push	r12
 32a:	df 92       	push	r13
 32c:	ef 92       	push	r14
 32e:	ff 92       	push	r15
 330:	0f 93       	push	r16
 332:	1f 93       	push	r17
 334:	cf 93       	push	r28
 336:	df 93       	push	r29
 338:	00 d0       	rcall	.+0      	; 0x33a <_ZN6CTimer8delay_msEm+0x12>
 33a:	00 d0       	rcall	.+0      	; 0x33c <_ZN6CTimer8delay_msEm+0x14>
 33c:	cd b7       	in	r28, 0x3d	; 61
 33e:	de b7       	in	r29, 0x3e	; 62
 340:	8c 01       	movw	r16, r24
 342:	6a 01       	movw	r12, r20
 344:	7b 01       	movw	r14, r22
 346:	0e 94 75 01 	call	0x2ea	; 0x2ea <_ZN6CTimer8get_timeEv>
 34a:	c6 0e       	add	r12, r22
 34c:	d7 1e       	adc	r13, r23
 34e:	e8 1e       	adc	r14, r24
 350:	f9 1e       	adc	r15, r25
 352:	c9 82       	std	Y+1, r12	; 0x01
 354:	da 82       	std	Y+2, r13	; 0x02
 356:	eb 82       	std	Y+3, r14	; 0x03
 358:	fc 82       	std	Y+4, r15	; 0x04
 35a:	c8 01       	movw	r24, r16
 35c:	0e 94 75 01 	call	0x2ea	; 0x2ea <_ZN6CTimer8get_timeEv>
 360:	c9 80       	ldd	r12, Y+1	; 0x01
 362:	da 80       	ldd	r13, Y+2	; 0x02
 364:	eb 80       	ldd	r14, Y+3	; 0x03
 366:	fc 80       	ldd	r15, Y+4	; 0x04
 368:	6c 15       	cp	r22, r12
 36a:	7d 05       	cpc	r23, r13
 36c:	8e 05       	cpc	r24, r14
 36e:	9f 05       	cpc	r25, r15
 370:	10 f4       	brcc	.+4      	; 0x376 <_ZN6CTimer8delay_msEm+0x4e>
 372:	00 00       	nop
 374:	f2 cf       	rjmp	.-28     	; 0x35a <_ZN6CTimer8delay_msEm+0x32>
 376:	0f 90       	pop	r0
 378:	0f 90       	pop	r0
 37a:	0f 90       	pop	r0
 37c:	0f 90       	pop	r0
 37e:	df 91       	pop	r29
 380:	cf 91       	pop	r28
 382:	1f 91       	pop	r17
 384:	0f 91       	pop	r16
 386:	ff 90       	pop	r15
 388:	ef 90       	pop	r14
 38a:	df 90       	pop	r13
 38c:	cf 90       	pop	r12
 38e:	08 95       	ret

00000390 <__vector_19>:
 390:	1f 92       	push	r1
 392:	0f 92       	push	r0
 394:	0f b6       	in	r0, 0x3f	; 63
 396:	0f 92       	push	r0
 398:	11 24       	eor	r1, r1
 39a:	2f 93       	push	r18
 39c:	3f 93       	push	r19
 39e:	4f 93       	push	r20
 3a0:	5f 93       	push	r21
 3a2:	6f 93       	push	r22
 3a4:	7f 93       	push	r23
 3a6:	8f 93       	push	r24
 3a8:	9f 93       	push	r25
 3aa:	af 93       	push	r26
 3ac:	bf 93       	push	r27
 3ae:	cf 93       	push	r28
 3b0:	df 93       	push	r29
 3b2:	ef 93       	push	r30
 3b4:	ff 93       	push	r31
 3b6:	c0 e0       	ldi	r28, 0x00	; 0
 3b8:	d0 e0       	ldi	r29, 0x00	; 0
 3ba:	ce 01       	movw	r24, r28
 3bc:	23 e0       	ldi	r18, 0x03	; 3
 3be:	88 0f       	add	r24, r24
 3c0:	99 1f       	adc	r25, r25
 3c2:	2a 95       	dec	r18
 3c4:	e1 f7       	brne	.-8      	; 0x3be <__vector_19+0x2e>
 3c6:	fc 01       	movw	r30, r24
 3c8:	e8 59       	subi	r30, 0x98	; 152
 3ca:	ff 4f       	sbci	r31, 0xFF	; 255
 3cc:	24 81       	ldd	r18, Z+4	; 0x04
 3ce:	35 81       	ldd	r19, Z+5	; 0x05
 3d0:	23 2b       	or	r18, r19
 3d2:	31 f0       	breq	.+12     	; 0x3e0 <__vector_19+0x50>
 3d4:	84 81       	ldd	r24, Z+4	; 0x04
 3d6:	95 81       	ldd	r25, Z+5	; 0x05
 3d8:	01 97       	sbiw	r24, 0x01	; 1
 3da:	95 83       	std	Z+5, r25	; 0x05
 3dc:	84 83       	std	Z+4, r24	; 0x04
 3de:	18 c0       	rjmp	.+48     	; 0x410 <__vector_19+0x80>
 3e0:	22 81       	ldd	r18, Z+2	; 0x02
 3e2:	33 81       	ldd	r19, Z+3	; 0x03
 3e4:	35 83       	std	Z+5, r19	; 0x05
 3e6:	24 83       	std	Z+4, r18	; 0x04
 3e8:	26 81       	ldd	r18, Z+6	; 0x06
 3ea:	2f 3f       	cpi	r18, 0xFF	; 255
 3ec:	19 f0       	breq	.+6      	; 0x3f4 <__vector_19+0x64>
 3ee:	26 81       	ldd	r18, Z+6	; 0x06
 3f0:	2f 5f       	subi	r18, 0xFF	; 255
 3f2:	26 83       	std	Z+6, r18	; 0x06
 3f4:	fc 01       	movw	r30, r24
 3f6:	e8 59       	subi	r30, 0x98	; 152
 3f8:	ff 4f       	sbci	r31, 0xFF	; 255
 3fa:	87 81       	ldd	r24, Z+7	; 0x07
 3fc:	81 11       	cpse	r24, r1
 3fe:	08 c0       	rjmp	.+16     	; 0x410 <__vector_19+0x80>
 400:	80 81       	ld	r24, Z
 402:	91 81       	ldd	r25, Z+1	; 0x01
 404:	89 2b       	or	r24, r25
 406:	21 f0       	breq	.+8      	; 0x410 <__vector_19+0x80>
 408:	01 90       	ld	r0, Z+
 40a:	f0 81       	ld	r31, Z
 40c:	e0 2d       	mov	r30, r0
 40e:	09 95       	icall
 410:	21 96       	adiw	r28, 0x01	; 1
 412:	c8 30       	cpi	r28, 0x08	; 8
 414:	d1 05       	cpc	r29, r1
 416:	89 f6       	brne	.-94     	; 0x3ba <__vector_19+0x2a>
 418:	80 91 a8 00 	lds	r24, 0x00A8
 41c:	90 91 a9 00 	lds	r25, 0x00A9
 420:	a0 91 aa 00 	lds	r26, 0x00AA
 424:	b0 91 ab 00 	lds	r27, 0x00AB
 428:	01 96       	adiw	r24, 0x01	; 1
 42a:	a1 1d       	adc	r26, r1
 42c:	b1 1d       	adc	r27, r1
 42e:	80 93 a8 00 	sts	0x00A8, r24
 432:	90 93 a9 00 	sts	0x00A9, r25
 436:	a0 93 aa 00 	sts	0x00AA, r26
 43a:	b0 93 ab 00 	sts	0x00AB, r27
 43e:	ff 91       	pop	r31
 440:	ef 91       	pop	r30
 442:	df 91       	pop	r29
 444:	cf 91       	pop	r28
 446:	bf 91       	pop	r27
 448:	af 91       	pop	r26
 44a:	9f 91       	pop	r25
 44c:	8f 91       	pop	r24
 44e:	7f 91       	pop	r23
 450:	6f 91       	pop	r22
 452:	5f 91       	pop	r21
 454:	4f 91       	pop	r20
 456:	3f 91       	pop	r19
 458:	2f 91       	pop	r18
 45a:	0f 90       	pop	r0
 45c:	0f be       	out	0x3f, r0	; 63
 45e:	0f 90       	pop	r0
 460:	1f 90       	pop	r1
 462:	18 95       	reti

00000464 <_GLOBAL__sub_I_timer>:
 464:	8c ea       	ldi	r24, 0xAC	; 172
 466:	90 e0       	ldi	r25, 0x00	; 0
 468:	0c 94 25 01 	jmp	0x24a	; 0x24a <_ZN6CTimerC1Ev>

0000046c <__tablejump2__>:
 46c:	ee 0f       	add	r30, r30
 46e:	ff 1f       	adc	r31, r31
 470:	05 90       	lpm	r0, Z+
 472:	f4 91       	lpm	r31, Z
 474:	e0 2d       	mov	r30, r0
 476:	09 94       	ijmp

00000478 <malloc>:
 478:	cf 93       	push	r28
 47a:	df 93       	push	r29
 47c:	82 30       	cpi	r24, 0x02	; 2
 47e:	91 05       	cpc	r25, r1
 480:	10 f4       	brcc	.+4      	; 0x486 <malloc+0xe>
 482:	82 e0       	ldi	r24, 0x02	; 2
 484:	90 e0       	ldi	r25, 0x00	; 0
 486:	e0 91 af 00 	lds	r30, 0x00AF
 48a:	f0 91 b0 00 	lds	r31, 0x00B0
 48e:	20 e0       	ldi	r18, 0x00	; 0
 490:	30 e0       	ldi	r19, 0x00	; 0
 492:	c0 e0       	ldi	r28, 0x00	; 0
 494:	d0 e0       	ldi	r29, 0x00	; 0
 496:	30 97       	sbiw	r30, 0x00	; 0
 498:	11 f1       	breq	.+68     	; 0x4de <malloc+0x66>
 49a:	40 81       	ld	r20, Z
 49c:	51 81       	ldd	r21, Z+1	; 0x01
 49e:	48 17       	cp	r20, r24
 4a0:	59 07       	cpc	r21, r25
 4a2:	c0 f0       	brcs	.+48     	; 0x4d4 <malloc+0x5c>
 4a4:	48 17       	cp	r20, r24
 4a6:	59 07       	cpc	r21, r25
 4a8:	61 f4       	brne	.+24     	; 0x4c2 <malloc+0x4a>
 4aa:	82 81       	ldd	r24, Z+2	; 0x02
 4ac:	93 81       	ldd	r25, Z+3	; 0x03
 4ae:	20 97       	sbiw	r28, 0x00	; 0
 4b0:	19 f0       	breq	.+6      	; 0x4b8 <malloc+0x40>
 4b2:	9b 83       	std	Y+3, r25	; 0x03
 4b4:	8a 83       	std	Y+2, r24	; 0x02
 4b6:	2b c0       	rjmp	.+86     	; 0x50e <malloc+0x96>
 4b8:	90 93 b0 00 	sts	0x00B0, r25
 4bc:	80 93 af 00 	sts	0x00AF, r24
 4c0:	26 c0       	rjmp	.+76     	; 0x50e <malloc+0x96>
 4c2:	21 15       	cp	r18, r1
 4c4:	31 05       	cpc	r19, r1
 4c6:	19 f0       	breq	.+6      	; 0x4ce <malloc+0x56>
 4c8:	42 17       	cp	r20, r18
 4ca:	53 07       	cpc	r21, r19
 4cc:	18 f4       	brcc	.+6      	; 0x4d4 <malloc+0x5c>
 4ce:	9a 01       	movw	r18, r20
 4d0:	be 01       	movw	r22, r28
 4d2:	df 01       	movw	r26, r30
 4d4:	ef 01       	movw	r28, r30
 4d6:	02 80       	ldd	r0, Z+2	; 0x02
 4d8:	f3 81       	ldd	r31, Z+3	; 0x03
 4da:	e0 2d       	mov	r30, r0
 4dc:	dc cf       	rjmp	.-72     	; 0x496 <malloc+0x1e>
 4de:	21 15       	cp	r18, r1
 4e0:	31 05       	cpc	r19, r1
 4e2:	09 f1       	breq	.+66     	; 0x526 <malloc+0xae>
 4e4:	28 1b       	sub	r18, r24
 4e6:	39 0b       	sbc	r19, r25
 4e8:	24 30       	cpi	r18, 0x04	; 4
 4ea:	31 05       	cpc	r19, r1
 4ec:	90 f4       	brcc	.+36     	; 0x512 <malloc+0x9a>
 4ee:	12 96       	adiw	r26, 0x02	; 2
 4f0:	8d 91       	ld	r24, X+
 4f2:	9c 91       	ld	r25, X
 4f4:	13 97       	sbiw	r26, 0x03	; 3
 4f6:	61 15       	cp	r22, r1
 4f8:	71 05       	cpc	r23, r1
 4fa:	21 f0       	breq	.+8      	; 0x504 <malloc+0x8c>
 4fc:	fb 01       	movw	r30, r22
 4fe:	93 83       	std	Z+3, r25	; 0x03
 500:	82 83       	std	Z+2, r24	; 0x02
 502:	04 c0       	rjmp	.+8      	; 0x50c <malloc+0x94>
 504:	90 93 b0 00 	sts	0x00B0, r25
 508:	80 93 af 00 	sts	0x00AF, r24
 50c:	fd 01       	movw	r30, r26
 50e:	32 96       	adiw	r30, 0x02	; 2
 510:	44 c0       	rjmp	.+136    	; 0x59a <malloc+0x122>
 512:	fd 01       	movw	r30, r26
 514:	e2 0f       	add	r30, r18
 516:	f3 1f       	adc	r31, r19
 518:	81 93       	st	Z+, r24
 51a:	91 93       	st	Z+, r25
 51c:	22 50       	subi	r18, 0x02	; 2
 51e:	31 09       	sbc	r19, r1
 520:	2d 93       	st	X+, r18
 522:	3c 93       	st	X, r19
 524:	3a c0       	rjmp	.+116    	; 0x59a <malloc+0x122>
 526:	20 91 ad 00 	lds	r18, 0x00AD
 52a:	30 91 ae 00 	lds	r19, 0x00AE
 52e:	23 2b       	or	r18, r19
 530:	41 f4       	brne	.+16     	; 0x542 <malloc+0xca>
 532:	20 91 62 00 	lds	r18, 0x0062
 536:	30 91 63 00 	lds	r19, 0x0063
 53a:	30 93 ae 00 	sts	0x00AE, r19
 53e:	20 93 ad 00 	sts	0x00AD, r18
 542:	20 91 60 00 	lds	r18, 0x0060
 546:	30 91 61 00 	lds	r19, 0x0061
 54a:	21 15       	cp	r18, r1
 54c:	31 05       	cpc	r19, r1
 54e:	41 f4       	brne	.+16     	; 0x560 <malloc+0xe8>
 550:	2d b7       	in	r18, 0x3d	; 61
 552:	3e b7       	in	r19, 0x3e	; 62
 554:	40 91 64 00 	lds	r20, 0x0064
 558:	50 91 65 00 	lds	r21, 0x0065
 55c:	24 1b       	sub	r18, r20
 55e:	35 0b       	sbc	r19, r21
 560:	e0 91 ad 00 	lds	r30, 0x00AD
 564:	f0 91 ae 00 	lds	r31, 0x00AE
 568:	e2 17       	cp	r30, r18
 56a:	f3 07       	cpc	r31, r19
 56c:	a0 f4       	brcc	.+40     	; 0x596 <malloc+0x11e>
 56e:	2e 1b       	sub	r18, r30
 570:	3f 0b       	sbc	r19, r31
 572:	28 17       	cp	r18, r24
 574:	39 07       	cpc	r19, r25
 576:	78 f0       	brcs	.+30     	; 0x596 <malloc+0x11e>
 578:	ac 01       	movw	r20, r24
 57a:	4e 5f       	subi	r20, 0xFE	; 254
 57c:	5f 4f       	sbci	r21, 0xFF	; 255
 57e:	24 17       	cp	r18, r20
 580:	35 07       	cpc	r19, r21
 582:	48 f0       	brcs	.+18     	; 0x596 <malloc+0x11e>
 584:	4e 0f       	add	r20, r30
 586:	5f 1f       	adc	r21, r31
 588:	50 93 ae 00 	sts	0x00AE, r21
 58c:	40 93 ad 00 	sts	0x00AD, r20
 590:	81 93       	st	Z+, r24
 592:	91 93       	st	Z+, r25
 594:	02 c0       	rjmp	.+4      	; 0x59a <malloc+0x122>
 596:	e0 e0       	ldi	r30, 0x00	; 0
 598:	f0 e0       	ldi	r31, 0x00	; 0
 59a:	cf 01       	movw	r24, r30
 59c:	df 91       	pop	r29
 59e:	cf 91       	pop	r28
 5a0:	08 95       	ret

000005a2 <free>:
 5a2:	0f 93       	push	r16
 5a4:	1f 93       	push	r17
 5a6:	cf 93       	push	r28
 5a8:	df 93       	push	r29
 5aa:	00 97       	sbiw	r24, 0x00	; 0
 5ac:	09 f4       	brne	.+2      	; 0x5b0 <free+0xe>
 5ae:	8c c0       	rjmp	.+280    	; 0x6c8 <free+0x126>
 5b0:	fc 01       	movw	r30, r24
 5b2:	32 97       	sbiw	r30, 0x02	; 2
 5b4:	13 82       	std	Z+3, r1	; 0x03
 5b6:	12 82       	std	Z+2, r1	; 0x02
 5b8:	00 91 af 00 	lds	r16, 0x00AF
 5bc:	10 91 b0 00 	lds	r17, 0x00B0
 5c0:	01 15       	cp	r16, r1
 5c2:	11 05       	cpc	r17, r1
 5c4:	81 f4       	brne	.+32     	; 0x5e6 <free+0x44>
 5c6:	20 81       	ld	r18, Z
 5c8:	31 81       	ldd	r19, Z+1	; 0x01
 5ca:	82 0f       	add	r24, r18
 5cc:	93 1f       	adc	r25, r19
 5ce:	20 91 ad 00 	lds	r18, 0x00AD
 5d2:	30 91 ae 00 	lds	r19, 0x00AE
 5d6:	28 17       	cp	r18, r24
 5d8:	39 07       	cpc	r19, r25
 5da:	79 f5       	brne	.+94     	; 0x63a <free+0x98>
 5dc:	f0 93 ae 00 	sts	0x00AE, r31
 5e0:	e0 93 ad 00 	sts	0x00AD, r30
 5e4:	71 c0       	rjmp	.+226    	; 0x6c8 <free+0x126>
 5e6:	d8 01       	movw	r26, r16
 5e8:	40 e0       	ldi	r20, 0x00	; 0
 5ea:	50 e0       	ldi	r21, 0x00	; 0
 5ec:	ae 17       	cp	r26, r30
 5ee:	bf 07       	cpc	r27, r31
 5f0:	50 f4       	brcc	.+20     	; 0x606 <free+0x64>
 5f2:	12 96       	adiw	r26, 0x02	; 2
 5f4:	2d 91       	ld	r18, X+
 5f6:	3c 91       	ld	r19, X
 5f8:	13 97       	sbiw	r26, 0x03	; 3
 5fa:	ad 01       	movw	r20, r26
 5fc:	21 15       	cp	r18, r1
 5fe:	31 05       	cpc	r19, r1
 600:	09 f1       	breq	.+66     	; 0x644 <free+0xa2>
 602:	d9 01       	movw	r26, r18
 604:	f3 cf       	rjmp	.-26     	; 0x5ec <free+0x4a>
 606:	9d 01       	movw	r18, r26
 608:	da 01       	movw	r26, r20
 60a:	33 83       	std	Z+3, r19	; 0x03
 60c:	22 83       	std	Z+2, r18	; 0x02
 60e:	60 81       	ld	r22, Z
 610:	71 81       	ldd	r23, Z+1	; 0x01
 612:	86 0f       	add	r24, r22
 614:	97 1f       	adc	r25, r23
 616:	82 17       	cp	r24, r18
 618:	93 07       	cpc	r25, r19
 61a:	69 f4       	brne	.+26     	; 0x636 <free+0x94>
 61c:	ec 01       	movw	r28, r24
 61e:	28 81       	ld	r18, Y
 620:	39 81       	ldd	r19, Y+1	; 0x01
 622:	26 0f       	add	r18, r22
 624:	37 1f       	adc	r19, r23
 626:	2e 5f       	subi	r18, 0xFE	; 254
 628:	3f 4f       	sbci	r19, 0xFF	; 255
 62a:	31 83       	std	Z+1, r19	; 0x01
 62c:	20 83       	st	Z, r18
 62e:	8a 81       	ldd	r24, Y+2	; 0x02
 630:	9b 81       	ldd	r25, Y+3	; 0x03
 632:	93 83       	std	Z+3, r25	; 0x03
 634:	82 83       	std	Z+2, r24	; 0x02
 636:	45 2b       	or	r20, r21
 638:	29 f4       	brne	.+10     	; 0x644 <free+0xa2>
 63a:	f0 93 b0 00 	sts	0x00B0, r31
 63e:	e0 93 af 00 	sts	0x00AF, r30
 642:	42 c0       	rjmp	.+132    	; 0x6c8 <free+0x126>
 644:	13 96       	adiw	r26, 0x03	; 3
 646:	fc 93       	st	X, r31
 648:	ee 93       	st	-X, r30
 64a:	12 97       	sbiw	r26, 0x02	; 2
 64c:	ed 01       	movw	r28, r26
 64e:	49 91       	ld	r20, Y+
 650:	59 91       	ld	r21, Y+
 652:	9e 01       	movw	r18, r28
 654:	24 0f       	add	r18, r20
 656:	35 1f       	adc	r19, r21
 658:	e2 17       	cp	r30, r18
 65a:	f3 07       	cpc	r31, r19
 65c:	71 f4       	brne	.+28     	; 0x67a <free+0xd8>
 65e:	80 81       	ld	r24, Z
 660:	91 81       	ldd	r25, Z+1	; 0x01
 662:	84 0f       	add	r24, r20
 664:	95 1f       	adc	r25, r21
 666:	02 96       	adiw	r24, 0x02	; 2
 668:	11 96       	adiw	r26, 0x01	; 1
 66a:	9c 93       	st	X, r25
 66c:	8e 93       	st	-X, r24
 66e:	82 81       	ldd	r24, Z+2	; 0x02
 670:	93 81       	ldd	r25, Z+3	; 0x03
 672:	13 96       	adiw	r26, 0x03	; 3
 674:	9c 93       	st	X, r25
 676:	8e 93       	st	-X, r24
 678:	12 97       	sbiw	r26, 0x02	; 2
 67a:	e0 e0       	ldi	r30, 0x00	; 0
 67c:	f0 e0       	ldi	r31, 0x00	; 0
 67e:	d8 01       	movw	r26, r16
 680:	12 96       	adiw	r26, 0x02	; 2
 682:	8d 91       	ld	r24, X+
 684:	9c 91       	ld	r25, X
 686:	13 97       	sbiw	r26, 0x03	; 3
 688:	00 97       	sbiw	r24, 0x00	; 0
 68a:	19 f0       	breq	.+6      	; 0x692 <free+0xf0>
 68c:	f8 01       	movw	r30, r16
 68e:	8c 01       	movw	r16, r24
 690:	f6 cf       	rjmp	.-20     	; 0x67e <free+0xdc>
 692:	8d 91       	ld	r24, X+
 694:	9c 91       	ld	r25, X
 696:	98 01       	movw	r18, r16
 698:	2e 5f       	subi	r18, 0xFE	; 254
 69a:	3f 4f       	sbci	r19, 0xFF	; 255
 69c:	82 0f       	add	r24, r18
 69e:	93 1f       	adc	r25, r19
 6a0:	20 91 ad 00 	lds	r18, 0x00AD
 6a4:	30 91 ae 00 	lds	r19, 0x00AE
 6a8:	28 17       	cp	r18, r24
 6aa:	39 07       	cpc	r19, r25
 6ac:	69 f4       	brne	.+26     	; 0x6c8 <free+0x126>
 6ae:	30 97       	sbiw	r30, 0x00	; 0
 6b0:	29 f4       	brne	.+10     	; 0x6bc <free+0x11a>
 6b2:	10 92 b0 00 	sts	0x00B0, r1
 6b6:	10 92 af 00 	sts	0x00AF, r1
 6ba:	02 c0       	rjmp	.+4      	; 0x6c0 <free+0x11e>
 6bc:	13 82       	std	Z+3, r1	; 0x03
 6be:	12 82       	std	Z+2, r1	; 0x02
 6c0:	10 93 ae 00 	sts	0x00AE, r17
 6c4:	00 93 ad 00 	sts	0x00AD, r16
 6c8:	df 91       	pop	r29
 6ca:	cf 91       	pop	r28
 6cc:	1f 91       	pop	r17
 6ce:	0f 91       	pop	r16
 6d0:	08 95       	ret

000006d2 <_exit>:
 6d2:	f8 94       	cli

000006d4 <__stop_program>:
 6d4:	ff cf       	rjmp	.-2      	; 0x6d4 <__stop_program>
