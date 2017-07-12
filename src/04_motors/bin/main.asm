
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
  4c:	0c 94 64 04 	jmp	0x8c8	; 0x8c8 <__vector_19>
  50:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>

00000054 <__ctors_start>:
  54:	e0 00       	.word	0x00e0	; ????
  56:	b2 03       	fmuls	r19, r18
  58:	ce 04       	cpc	r12, r14
  5a:	d2 04       	cpc	r13, r2

0000005c <__ctors_end>:
  5c:	d6 04       	cpc	r13, r6

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
  70:	e4 e3       	ldi	r30, 0x34	; 52
  72:	fc e0       	ldi	r31, 0x0C	; 12
  74:	02 c0       	rjmp	.+4      	; 0x7a <__do_copy_data+0x10>
  76:	05 90       	lpm	r0, Z+
  78:	0d 92       	st	X+, r0
  7a:	ae 37       	cpi	r26, 0x7E	; 126
  7c:	b1 07       	cpc	r27, r17
  7e:	d9 f7       	brne	.-10     	; 0x76 <__do_copy_data+0xc>

00000080 <__do_clear_bss>:
  80:	20 e0       	ldi	r18, 0x00	; 0
  82:	ae e7       	ldi	r26, 0x7E	; 126
  84:	b0 e0       	ldi	r27, 0x00	; 0
  86:	01 c0       	rjmp	.+2      	; 0x8a <.do_clear_bss_start>

00000088 <.do_clear_bss_loop>:
  88:	1d 92       	st	X+, r1

0000008a <.do_clear_bss_start>:
  8a:	ae 3c       	cpi	r26, 0xCE	; 206
  8c:	b2 07       	cpc	r27, r18
  8e:	e1 f7       	brne	.-8      	; 0x88 <.do_clear_bss_loop>

00000090 <__do_global_ctors>:
  90:	10 e0       	ldi	r17, 0x00	; 0
  92:	ce e2       	ldi	r28, 0x2E	; 46
  94:	d0 e0       	ldi	r29, 0x00	; 0
  96:	04 c0       	rjmp	.+8      	; 0xa0 <__do_global_ctors+0x10>
  98:	21 97       	sbiw	r28, 0x01	; 1
  9a:	fe 01       	movw	r30, r28
  9c:	0e 94 da 04 	call	0x9b4	; 0x9b4 <__tablejump2__>
  a0:	ca 32       	cpi	r28, 0x2A	; 42
  a2:	d1 07       	cpc	r29, r17
  a4:	c9 f7       	brne	.-14     	; 0x98 <__do_global_ctors+0x8>
  a6:	0e 94 c6 00 	call	0x18c	; 0x18c <main>
  aa:	0c 94 0d 06 	jmp	0xc1a	; 0xc1a <__do_global_dtors>

000000ae <__bad_interrupt>:
  ae:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b2 <_Z5blinkv>:
  b2:	80 91 7e 00 	lds	r24, 0x007E
  b6:	90 91 7f 00 	lds	r25, 0x007F
  ba:	00 97       	sbiw	r24, 0x00	; 0
  bc:	19 f0       	breq	.+6      	; 0xc4 <_Z5blinkv+0x12>
  be:	01 97       	sbiw	r24, 0x01	; 1
  c0:	49 f0       	breq	.+18     	; 0xd4 <_Z5blinkv+0x22>
  c2:	08 95       	ret
  c4:	dd 9a       	sbi	0x1b, 5	; 27
  c6:	81 e0       	ldi	r24, 0x01	; 1
  c8:	90 e0       	ldi	r25, 0x00	; 0
  ca:	90 93 7f 00 	sts	0x007F, r25
  ce:	80 93 7e 00 	sts	0x007E, r24
  d2:	08 95       	ret
  d4:	dd 98       	cbi	0x1b, 5	; 27
  d6:	10 92 7f 00 	sts	0x007F, r1
  da:	10 92 7e 00 	sts	0x007E, r1
  de:	08 95       	ret

000000e0 <_Z10motor_testP6CMotor>:
  e0:	cf 93       	push	r28
  e2:	df 93       	push	r29
  e4:	ec 01       	movw	r28, r24
  e6:	40 e0       	ldi	r20, 0x00	; 0
  e8:	50 e0       	ldi	r21, 0x00	; 0
  ea:	68 ec       	ldi	r22, 0xC8	; 200
  ec:	70 e0       	ldi	r23, 0x00	; 0
  ee:	0e 94 f9 00 	call	0x1f2	; 0x1f2 <_ZN6CMotor3runEii>
  f2:	44 ef       	ldi	r20, 0xF4	; 244
  f4:	51 e0       	ldi	r21, 0x01	; 1
  f6:	60 e0       	ldi	r22, 0x00	; 0
  f8:	70 e0       	ldi	r23, 0x00	; 0
  fa:	88 ec       	ldi	r24, 0xC8	; 200
  fc:	90 e0       	ldi	r25, 0x00	; 0
  fe:	0e 94 30 04 	call	0x860	; 0x860 <_ZN6CTimer8delay_msEm>
 102:	40 e0       	ldi	r20, 0x00	; 0
 104:	50 e0       	ldi	r21, 0x00	; 0
 106:	68 e3       	ldi	r22, 0x38	; 56
 108:	7f ef       	ldi	r23, 0xFF	; 255
 10a:	ce 01       	movw	r24, r28
 10c:	0e 94 f9 00 	call	0x1f2	; 0x1f2 <_ZN6CMotor3runEii>
 110:	44 ef       	ldi	r20, 0xF4	; 244
 112:	51 e0       	ldi	r21, 0x01	; 1
 114:	60 e0       	ldi	r22, 0x00	; 0
 116:	70 e0       	ldi	r23, 0x00	; 0
 118:	88 ec       	ldi	r24, 0xC8	; 200
 11a:	90 e0       	ldi	r25, 0x00	; 0
 11c:	0e 94 30 04 	call	0x860	; 0x860 <_ZN6CTimer8delay_msEm>
 120:	48 ec       	ldi	r20, 0xC8	; 200
 122:	50 e0       	ldi	r21, 0x00	; 0
 124:	60 e0       	ldi	r22, 0x00	; 0
 126:	70 e0       	ldi	r23, 0x00	; 0
 128:	ce 01       	movw	r24, r28
 12a:	0e 94 f9 00 	call	0x1f2	; 0x1f2 <_ZN6CMotor3runEii>
 12e:	44 ef       	ldi	r20, 0xF4	; 244
 130:	51 e0       	ldi	r21, 0x01	; 1
 132:	60 e0       	ldi	r22, 0x00	; 0
 134:	70 e0       	ldi	r23, 0x00	; 0
 136:	88 ec       	ldi	r24, 0xC8	; 200
 138:	90 e0       	ldi	r25, 0x00	; 0
 13a:	0e 94 30 04 	call	0x860	; 0x860 <_ZN6CTimer8delay_msEm>
 13e:	48 e3       	ldi	r20, 0x38	; 56
 140:	5f ef       	ldi	r21, 0xFF	; 255
 142:	60 e0       	ldi	r22, 0x00	; 0
 144:	70 e0       	ldi	r23, 0x00	; 0
 146:	ce 01       	movw	r24, r28
 148:	0e 94 f9 00 	call	0x1f2	; 0x1f2 <_ZN6CMotor3runEii>
 14c:	44 ef       	ldi	r20, 0xF4	; 244
 14e:	51 e0       	ldi	r21, 0x01	; 1
 150:	60 e0       	ldi	r22, 0x00	; 0
 152:	70 e0       	ldi	r23, 0x00	; 0
 154:	88 ec       	ldi	r24, 0xC8	; 200
 156:	90 e0       	ldi	r25, 0x00	; 0
 158:	0e 94 30 04 	call	0x860	; 0x860 <_ZN6CTimer8delay_msEm>
 15c:	48 ec       	ldi	r20, 0xC8	; 200
 15e:	50 e0       	ldi	r21, 0x00	; 0
 160:	68 ec       	ldi	r22, 0xC8	; 200
 162:	70 e0       	ldi	r23, 0x00	; 0
 164:	ce 01       	movw	r24, r28
 166:	0e 94 f9 00 	call	0x1f2	; 0x1f2 <_ZN6CMotor3runEii>
 16a:	44 ef       	ldi	r20, 0xF4	; 244
 16c:	51 e0       	ldi	r21, 0x01	; 1
 16e:	60 e0       	ldi	r22, 0x00	; 0
 170:	70 e0       	ldi	r23, 0x00	; 0
 172:	88 ec       	ldi	r24, 0xC8	; 200
 174:	90 e0       	ldi	r25, 0x00	; 0
 176:	0e 94 30 04 	call	0x860	; 0x860 <_ZN6CTimer8delay_msEm>
 17a:	40 e0       	ldi	r20, 0x00	; 0
 17c:	50 e0       	ldi	r21, 0x00	; 0
 17e:	60 e0       	ldi	r22, 0x00	; 0
 180:	70 e0       	ldi	r23, 0x00	; 0
 182:	ce 01       	movw	r24, r28
 184:	df 91       	pop	r29
 186:	cf 91       	pop	r28
 188:	0c 94 f9 00 	jmp	0x1f2	; 0x1f2 <_ZN6CMotor3runEii>

0000018c <main>:
 18c:	bb 98       	cbi	0x17, 3	; 23
 18e:	c3 9a       	sbi	0x18, 3	; 24
 190:	20 e0       	ldi	r18, 0x00	; 0
 192:	48 ec       	ldi	r20, 0xC8	; 200
 194:	50 e0       	ldi	r21, 0x00	; 0
 196:	69 e5       	ldi	r22, 0x59	; 89
 198:	70 e0       	ldi	r23, 0x00	; 0
 19a:	88 ec       	ldi	r24, 0xC8	; 200
 19c:	90 e0       	ldi	r25, 0x00	; 0
 19e:	0e 94 eb 03 	call	0x7d6	; 0x7d6 <_ZN6CTimer8add_taskEPFvvEjb>
 1a2:	81 e0       	ldi	r24, 0x01	; 1
 1a4:	90 e0       	ldi	r25, 0x00	; 0
 1a6:	0e 94 bf 03 	call	0x77e	; 0x77e <_Znwj>
 1aa:	ec 01       	movw	r28, r24
 1ac:	0e 94 ed 00 	call	0x1da	; 0x1da <_ZN6CMotorC1Ev>
 1b0:	b3 9b       	sbis	0x16, 3	; 22
 1b2:	02 c0       	rjmp	.+4      	; 0x1b8 <main+0x2c>
 1b4:	00 00       	nop
 1b6:	fc cf       	rjmp	.-8      	; 0x1b0 <main+0x24>
 1b8:	ce 01       	movw	r24, r28
 1ba:	0e 94 70 00 	call	0xe0	; 0xe0 <_Z10motor_testP6CMotor>
 1be:	f8 cf       	rjmp	.-16     	; 0x1b0 <main+0x24>

000001c0 <_GLOBAL__sub_I__Z10motor_testP6CMotor>:
 1c0:	d5 9a       	sbi	0x1a, 5	; 26
 1c2:	08 95       	ret

000001c4 <_ZN6CUSARTC1Ev>:
 1c4:	10 bc       	out	0x20, r1	; 32
 1c6:	80 e4       	ldi	r24, 0x40	; 64
 1c8:	89 b9       	out	0x09, r24	; 9
 1ca:	80 b5       	in	r24, 0x20	; 32
 1cc:	86 68       	ori	r24, 0x86	; 134
 1ce:	80 bd       	out	0x20, r24	; 32
 1d0:	8a b1       	in	r24, 0x0a	; 10
 1d2:	88 61       	ori	r24, 0x18	; 24
 1d4:	8a b9       	out	0x0a, r24	; 10
 1d6:	08 95       	ret

000001d8 <_ZN6CUSARTD1Ev>:
 1d8:	08 95       	ret

000001da <_ZN6CMotorC1Ev>:
 1da:	80 ef       	ldi	r24, 0xF0	; 240
 1dc:	81 bb       	out	0x11, r24	; 17
 1de:	95 98       	cbi	0x12, 5	; 18
 1e0:	81 ea       	ldi	r24, 0xA1	; 161
 1e2:	8f bd       	out	0x2f, r24	; 47
 1e4:	81 e0       	ldi	r24, 0x01	; 1
 1e6:	8e bd       	out	0x2e, r24	; 46
 1e8:	1b bc       	out	0x2b, r1	; 43
 1ea:	1a bc       	out	0x2a, r1	; 42
 1ec:	19 bc       	out	0x29, r1	; 41
 1ee:	18 bc       	out	0x28, r1	; 40
 1f0:	08 95       	ret

000001f2 <_ZN6CMotor3runEii>:
 1f2:	6f 3f       	cpi	r22, 0xFF	; 255
 1f4:	71 05       	cpc	r23, r1
 1f6:	09 f0       	breq	.+2      	; 0x1fa <_ZN6CMotor3runEii+0x8>
 1f8:	3c f4       	brge	.+14     	; 0x208 <_ZN6CMotor3runEii+0x16>
 1fa:	61 30       	cpi	r22, 0x01	; 1
 1fc:	8f ef       	ldi	r24, 0xFF	; 255
 1fe:	78 07       	cpc	r23, r24
 200:	2c f4       	brge	.+10     	; 0x20c <_ZN6CMotor3runEii+0x1a>
 202:	61 e0       	ldi	r22, 0x01	; 1
 204:	7f ef       	ldi	r23, 0xFF	; 255
 206:	02 c0       	rjmp	.+4      	; 0x20c <_ZN6CMotor3runEii+0x1a>
 208:	6f ef       	ldi	r22, 0xFF	; 255
 20a:	70 e0       	ldi	r23, 0x00	; 0
 20c:	4f 3f       	cpi	r20, 0xFF	; 255
 20e:	51 05       	cpc	r21, r1
 210:	09 f0       	breq	.+2      	; 0x214 <_ZN6CMotor3runEii+0x22>
 212:	44 f4       	brge	.+16     	; 0x224 <_ZN6CMotor3runEii+0x32>
 214:	41 30       	cpi	r20, 0x01	; 1
 216:	8f ef       	ldi	r24, 0xFF	; 255
 218:	58 07       	cpc	r21, r24
 21a:	6c f0       	brlt	.+26     	; 0x236 <_ZN6CMotor3runEii+0x44>
 21c:	14 16       	cp	r1, r20
 21e:	15 06       	cpc	r1, r21
 220:	1c f0       	brlt	.+6      	; 0x228 <_ZN6CMotor3runEii+0x36>
 222:	05 c0       	rjmp	.+10     	; 0x22e <_ZN6CMotor3runEii+0x3c>
 224:	4f ef       	ldi	r20, 0xFF	; 255
 226:	50 e0       	ldi	r21, 0x00	; 0
 228:	4a bd       	out	0x2a, r20	; 42
 22a:	96 9a       	sbi	0x12, 6	; 18
 22c:	0b c0       	rjmp	.+22     	; 0x244 <_ZN6CMotor3runEii+0x52>
 22e:	41 15       	cp	r20, r1
 230:	51 05       	cpc	r21, r1
 232:	39 f0       	breq	.+14     	; 0x242 <_ZN6CMotor3runEii+0x50>
 234:	02 c0       	rjmp	.+4      	; 0x23a <_ZN6CMotor3runEii+0x48>
 236:	41 e0       	ldi	r20, 0x01	; 1
 238:	5f ef       	ldi	r21, 0xFF	; 255
 23a:	41 95       	neg	r20
 23c:	4a bd       	out	0x2a, r20	; 42
 23e:	96 98       	cbi	0x12, 6	; 18
 240:	01 c0       	rjmp	.+2      	; 0x244 <_ZN6CMotor3runEii+0x52>
 242:	1a bc       	out	0x2a, r1	; 42
 244:	16 16       	cp	r1, r22
 246:	17 06       	cpc	r1, r23
 248:	1c f4       	brge	.+6      	; 0x250 <_ZN6CMotor3runEii+0x5e>
 24a:	68 bd       	out	0x28, r22	; 40
 24c:	97 98       	cbi	0x12, 7	; 18
 24e:	08 95       	ret
 250:	61 15       	cp	r22, r1
 252:	71 05       	cpc	r23, r1
 254:	21 f0       	breq	.+8      	; 0x25e <_ZN6CMotor3runEii+0x6c>
 256:	61 95       	neg	r22
 258:	68 bd       	out	0x28, r22	; 40
 25a:	97 9a       	sbi	0x12, 7	; 18
 25c:	08 95       	ret
 25e:	18 bc       	out	0x28, r1	; 40
 260:	08 95       	ret

00000262 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
 262:	0f 93       	push	r16
 264:	1f 93       	push	r17
 266:	cf 93       	push	r28
 268:	df 93       	push	r29
 26a:	00 d0       	rcall	.+0      	; 0x26c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
 26c:	1f 92       	push	r1
 26e:	cd b7       	in	r28, 0x3d	; 61
 270:	de b7       	in	r29, 0x3e	; 62
 272:	8c 01       	movw	r16, r24
 274:	dc 01       	movw	r26, r24
 276:	ed 91       	ld	r30, X+
 278:	fc 91       	ld	r31, X
 27a:	01 90       	ld	r0, Z+
 27c:	f0 81       	ld	r31, Z
 27e:	e0 2d       	mov	r30, r0
 280:	2b 83       	std	Y+3, r18	; 0x03
 282:	4a 83       	std	Y+2, r20	; 0x02
 284:	69 83       	std	Y+1, r22	; 0x01
 286:	09 95       	icall
 288:	d8 01       	movw	r26, r16
 28a:	ed 91       	ld	r30, X+
 28c:	fc 91       	ld	r31, X
 28e:	04 80       	ldd	r0, Z+4	; 0x04
 290:	f5 81       	ldd	r31, Z+5	; 0x05
 292:	e0 2d       	mov	r30, r0
 294:	69 81       	ldd	r22, Y+1	; 0x01
 296:	c8 01       	movw	r24, r16
 298:	09 95       	icall
 29a:	d8 01       	movw	r26, r16
 29c:	ed 91       	ld	r30, X+
 29e:	fc 91       	ld	r31, X
 2a0:	04 80       	ldd	r0, Z+4	; 0x04
 2a2:	f5 81       	ldd	r31, Z+5	; 0x05
 2a4:	e0 2d       	mov	r30, r0
 2a6:	4a 81       	ldd	r20, Y+2	; 0x02
 2a8:	64 2f       	mov	r22, r20
 2aa:	c8 01       	movw	r24, r16
 2ac:	09 95       	icall
 2ae:	d8 01       	movw	r26, r16
 2b0:	ed 91       	ld	r30, X+
 2b2:	fc 91       	ld	r31, X
 2b4:	04 80       	ldd	r0, Z+4	; 0x04
 2b6:	f5 81       	ldd	r31, Z+5	; 0x05
 2b8:	e0 2d       	mov	r30, r0
 2ba:	2b 81       	ldd	r18, Y+3	; 0x03
 2bc:	62 2f       	mov	r22, r18
 2be:	c8 01       	movw	r24, r16
 2c0:	09 95       	icall
 2c2:	d8 01       	movw	r26, r16
 2c4:	ed 91       	ld	r30, X+
 2c6:	fc 91       	ld	r31, X
 2c8:	02 80       	ldd	r0, Z+2	; 0x02
 2ca:	f3 81       	ldd	r31, Z+3	; 0x03
 2cc:	e0 2d       	mov	r30, r0
 2ce:	c8 01       	movw	r24, r16
 2d0:	0f 90       	pop	r0
 2d2:	0f 90       	pop	r0
 2d4:	0f 90       	pop	r0
 2d6:	df 91       	pop	r29
 2d8:	cf 91       	pop	r28
 2da:	1f 91       	pop	r17
 2dc:	0f 91       	pop	r16
 2de:	09 94       	ijmp

000002e0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
 2e0:	0f 93       	push	r16
 2e2:	1f 93       	push	r17
 2e4:	cf 93       	push	r28
 2e6:	df 93       	push	r29
 2e8:	00 d0       	rcall	.+0      	; 0x2ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
 2ea:	00 d0       	rcall	.+0      	; 0x2ec <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
 2ec:	cd b7       	in	r28, 0x3d	; 61
 2ee:	de b7       	in	r29, 0x3e	; 62
 2f0:	8c 01       	movw	r16, r24
 2f2:	dc 01       	movw	r26, r24
 2f4:	ed 91       	ld	r30, X+
 2f6:	fc 91       	ld	r31, X
 2f8:	01 90       	ld	r0, Z+
 2fa:	f0 81       	ld	r31, Z
 2fc:	e0 2d       	mov	r30, r0
 2fe:	2c 83       	std	Y+4, r18	; 0x04
 300:	3b 83       	std	Y+3, r19	; 0x03
 302:	4a 83       	std	Y+2, r20	; 0x02
 304:	69 83       	std	Y+1, r22	; 0x01
 306:	09 95       	icall
 308:	d8 01       	movw	r26, r16
 30a:	ed 91       	ld	r30, X+
 30c:	fc 91       	ld	r31, X
 30e:	04 80       	ldd	r0, Z+4	; 0x04
 310:	f5 81       	ldd	r31, Z+5	; 0x05
 312:	e0 2d       	mov	r30, r0
 314:	69 81       	ldd	r22, Y+1	; 0x01
 316:	c8 01       	movw	r24, r16
 318:	09 95       	icall
 31a:	d8 01       	movw	r26, r16
 31c:	ed 91       	ld	r30, X+
 31e:	fc 91       	ld	r31, X
 320:	04 80       	ldd	r0, Z+4	; 0x04
 322:	f5 81       	ldd	r31, Z+5	; 0x05
 324:	e0 2d       	mov	r30, r0
 326:	4a 81       	ldd	r20, Y+2	; 0x02
 328:	64 2f       	mov	r22, r20
 32a:	c8 01       	movw	r24, r16
 32c:	09 95       	icall
 32e:	d8 01       	movw	r26, r16
 330:	ed 91       	ld	r30, X+
 332:	fc 91       	ld	r31, X
 334:	04 80       	ldd	r0, Z+4	; 0x04
 336:	f5 81       	ldd	r31, Z+5	; 0x05
 338:	e0 2d       	mov	r30, r0
 33a:	3b 81       	ldd	r19, Y+3	; 0x03
 33c:	63 2f       	mov	r22, r19
 33e:	c8 01       	movw	r24, r16
 340:	09 95       	icall
 342:	d8 01       	movw	r26, r16
 344:	ed 91       	ld	r30, X+
 346:	fc 91       	ld	r31, X
 348:	04 80       	ldd	r0, Z+4	; 0x04
 34a:	f5 81       	ldd	r31, Z+5	; 0x05
 34c:	e0 2d       	mov	r30, r0
 34e:	2c 81       	ldd	r18, Y+4	; 0x04
 350:	62 2f       	mov	r22, r18
 352:	c8 01       	movw	r24, r16
 354:	09 95       	icall
 356:	d8 01       	movw	r26, r16
 358:	ed 91       	ld	r30, X+
 35a:	fc 91       	ld	r31, X
 35c:	02 80       	ldd	r0, Z+2	; 0x02
 35e:	f3 81       	ldd	r31, Z+3	; 0x03
 360:	e0 2d       	mov	r30, r0
 362:	c8 01       	movw	r24, r16
 364:	0f 90       	pop	r0
 366:	0f 90       	pop	r0
 368:	0f 90       	pop	r0
 36a:	0f 90       	pop	r0
 36c:	df 91       	pop	r29
 36e:	cf 91       	pop	r28
 370:	1f 91       	pop	r17
 372:	0f 91       	pop	r16
 374:	09 94       	ijmp

00000376 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
 376:	cf 92       	push	r12
 378:	df 92       	push	r13
 37a:	ef 92       	push	r14
 37c:	ff 92       	push	r15
 37e:	0f 93       	push	r16
 380:	1f 93       	push	r17
 382:	cf 93       	push	r28
 384:	df 93       	push	r29
 386:	00 d0       	rcall	.+0      	; 0x388 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
 388:	00 d0       	rcall	.+0      	; 0x38a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
 38a:	cd b7       	in	r28, 0x3d	; 61
 38c:	de b7       	in	r29, 0x3e	; 62
 38e:	6c 01       	movw	r12, r24
 390:	dc 01       	movw	r26, r24
 392:	ed 91       	ld	r30, X+
 394:	fc 91       	ld	r31, X
 396:	01 90       	ld	r0, Z+
 398:	f0 81       	ld	r31, Z
 39a:	e0 2d       	mov	r30, r0
 39c:	2b 83       	std	Y+3, r18	; 0x03
 39e:	3c 83       	std	Y+4, r19	; 0x04
 3a0:	4a 83       	std	Y+2, r20	; 0x02
 3a2:	69 83       	std	Y+1, r22	; 0x01
 3a4:	09 95       	icall
 3a6:	d6 01       	movw	r26, r12
 3a8:	ed 91       	ld	r30, X+
 3aa:	fc 91       	ld	r31, X
 3ac:	04 80       	ldd	r0, Z+4	; 0x04
 3ae:	f5 81       	ldd	r31, Z+5	; 0x05
 3b0:	e0 2d       	mov	r30, r0
 3b2:	69 81       	ldd	r22, Y+1	; 0x01
 3b4:	c6 01       	movw	r24, r12
 3b6:	09 95       	icall
 3b8:	d6 01       	movw	r26, r12
 3ba:	ed 91       	ld	r30, X+
 3bc:	fc 91       	ld	r31, X
 3be:	04 80       	ldd	r0, Z+4	; 0x04
 3c0:	f5 81       	ldd	r31, Z+5	; 0x05
 3c2:	e0 2d       	mov	r30, r0
 3c4:	4a 81       	ldd	r20, Y+2	; 0x02
 3c6:	64 2f       	mov	r22, r20
 3c8:	c6 01       	movw	r24, r12
 3ca:	09 95       	icall
 3cc:	2b 81       	ldd	r18, Y+3	; 0x03
 3ce:	e2 2e       	mov	r14, r18
 3d0:	3c 81       	ldd	r19, Y+4	; 0x04
 3d2:	f3 2e       	mov	r15, r19
 3d4:	0e 0d       	add	r16, r14
 3d6:	1f 1d       	adc	r17, r15
 3d8:	d6 01       	movw	r26, r12
 3da:	ed 91       	ld	r30, X+
 3dc:	fc 91       	ld	r31, X
 3de:	e0 16       	cp	r14, r16
 3e0:	f1 06       	cpc	r15, r17
 3e2:	49 f0       	breq	.+18     	; 0x3f6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
 3e4:	d7 01       	movw	r26, r14
 3e6:	6d 91       	ld	r22, X+
 3e8:	7d 01       	movw	r14, r26
 3ea:	04 80       	ldd	r0, Z+4	; 0x04
 3ec:	f5 81       	ldd	r31, Z+5	; 0x05
 3ee:	e0 2d       	mov	r30, r0
 3f0:	c6 01       	movw	r24, r12
 3f2:	09 95       	icall
 3f4:	f1 cf       	rjmp	.-30     	; 0x3d8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
 3f6:	02 80       	ldd	r0, Z+2	; 0x02
 3f8:	f3 81       	ldd	r31, Z+3	; 0x03
 3fa:	e0 2d       	mov	r30, r0
 3fc:	c6 01       	movw	r24, r12
 3fe:	0f 90       	pop	r0
 400:	0f 90       	pop	r0
 402:	0f 90       	pop	r0
 404:	0f 90       	pop	r0
 406:	df 91       	pop	r29
 408:	cf 91       	pop	r28
 40a:	1f 91       	pop	r17
 40c:	0f 91       	pop	r16
 40e:	ff 90       	pop	r15
 410:	ef 90       	pop	r14
 412:	df 90       	pop	r13
 414:	cf 90       	pop	r12
 416:	09 94       	ijmp

00000418 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
 418:	ef 92       	push	r14
 41a:	ff 92       	push	r15
 41c:	1f 93       	push	r17
 41e:	cf 93       	push	r28
 420:	df 93       	push	r29
 422:	1f 92       	push	r1
 424:	cd b7       	in	r28, 0x3d	; 61
 426:	de b7       	in	r29, 0x3e	; 62
 428:	7c 01       	movw	r14, r24
 42a:	16 2f       	mov	r17, r22
 42c:	dc 01       	movw	r26, r24
 42e:	ed 91       	ld	r30, X+
 430:	fc 91       	ld	r31, X
 432:	01 90       	ld	r0, Z+
 434:	f0 81       	ld	r31, Z
 436:	e0 2d       	mov	r30, r0
 438:	49 83       	std	Y+1, r20	; 0x01
 43a:	09 95       	icall
 43c:	d7 01       	movw	r26, r14
 43e:	ed 91       	ld	r30, X+
 440:	fc 91       	ld	r31, X
 442:	04 80       	ldd	r0, Z+4	; 0x04
 444:	f5 81       	ldd	r31, Z+5	; 0x05
 446:	e0 2d       	mov	r30, r0
 448:	61 2f       	mov	r22, r17
 44a:	c7 01       	movw	r24, r14
 44c:	09 95       	icall
 44e:	d7 01       	movw	r26, r14
 450:	ed 91       	ld	r30, X+
 452:	fc 91       	ld	r31, X
 454:	04 80       	ldd	r0, Z+4	; 0x04
 456:	f5 81       	ldd	r31, Z+5	; 0x05
 458:	e0 2d       	mov	r30, r0
 45a:	49 81       	ldd	r20, Y+1	; 0x01
 45c:	64 2f       	mov	r22, r20
 45e:	c7 01       	movw	r24, r14
 460:	09 95       	icall
 462:	d7 01       	movw	r26, r14
 464:	ed 91       	ld	r30, X+
 466:	fc 91       	ld	r31, X
 468:	01 90       	ld	r0, Z+
 46a:	f0 81       	ld	r31, Z
 46c:	e0 2d       	mov	r30, r0
 46e:	c7 01       	movw	r24, r14
 470:	09 95       	icall
 472:	d7 01       	movw	r26, r14
 474:	ed 91       	ld	r30, X+
 476:	fc 91       	ld	r31, X
 478:	61 2f       	mov	r22, r17
 47a:	61 60       	ori	r22, 0x01	; 1
 47c:	04 80       	ldd	r0, Z+4	; 0x04
 47e:	f5 81       	ldd	r31, Z+5	; 0x05
 480:	e0 2d       	mov	r30, r0
 482:	c7 01       	movw	r24, r14
 484:	09 95       	icall
 486:	d7 01       	movw	r26, r14
 488:	ed 91       	ld	r30, X+
 48a:	fc 91       	ld	r31, X
 48c:	06 80       	ldd	r0, Z+6	; 0x06
 48e:	f7 81       	ldd	r31, Z+7	; 0x07
 490:	e0 2d       	mov	r30, r0
 492:	60 e0       	ldi	r22, 0x00	; 0
 494:	c7 01       	movw	r24, r14
 496:	09 95       	icall
 498:	18 2f       	mov	r17, r24
 49a:	d7 01       	movw	r26, r14
 49c:	ed 91       	ld	r30, X+
 49e:	fc 91       	ld	r31, X
 4a0:	02 80       	ldd	r0, Z+2	; 0x02
 4a2:	f3 81       	ldd	r31, Z+3	; 0x03
 4a4:	e0 2d       	mov	r30, r0
 4a6:	c7 01       	movw	r24, r14
 4a8:	09 95       	icall
 4aa:	81 2f       	mov	r24, r17
 4ac:	0f 90       	pop	r0
 4ae:	df 91       	pop	r29
 4b0:	cf 91       	pop	r28
 4b2:	1f 91       	pop	r17
 4b4:	ff 90       	pop	r15
 4b6:	ef 90       	pop	r14
 4b8:	08 95       	ret

000004ba <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
 4ba:	ef 92       	push	r14
 4bc:	ff 92       	push	r15
 4be:	0f 93       	push	r16
 4c0:	1f 93       	push	r17
 4c2:	cf 93       	push	r28
 4c4:	df 93       	push	r29
 4c6:	1f 92       	push	r1
 4c8:	cd b7       	in	r28, 0x3d	; 61
 4ca:	de b7       	in	r29, 0x3e	; 62
 4cc:	7c 01       	movw	r14, r24
 4ce:	16 2f       	mov	r17, r22
 4d0:	dc 01       	movw	r26, r24
 4d2:	ed 91       	ld	r30, X+
 4d4:	fc 91       	ld	r31, X
 4d6:	01 90       	ld	r0, Z+
 4d8:	f0 81       	ld	r31, Z
 4da:	e0 2d       	mov	r30, r0
 4dc:	49 83       	std	Y+1, r20	; 0x01
 4de:	09 95       	icall
 4e0:	d7 01       	movw	r26, r14
 4e2:	ed 91       	ld	r30, X+
 4e4:	fc 91       	ld	r31, X
 4e6:	04 80       	ldd	r0, Z+4	; 0x04
 4e8:	f5 81       	ldd	r31, Z+5	; 0x05
 4ea:	e0 2d       	mov	r30, r0
 4ec:	61 2f       	mov	r22, r17
 4ee:	c7 01       	movw	r24, r14
 4f0:	09 95       	icall
 4f2:	d7 01       	movw	r26, r14
 4f4:	ed 91       	ld	r30, X+
 4f6:	fc 91       	ld	r31, X
 4f8:	04 80       	ldd	r0, Z+4	; 0x04
 4fa:	f5 81       	ldd	r31, Z+5	; 0x05
 4fc:	e0 2d       	mov	r30, r0
 4fe:	49 81       	ldd	r20, Y+1	; 0x01
 500:	64 2f       	mov	r22, r20
 502:	c7 01       	movw	r24, r14
 504:	09 95       	icall
 506:	d7 01       	movw	r26, r14
 508:	ed 91       	ld	r30, X+
 50a:	fc 91       	ld	r31, X
 50c:	01 90       	ld	r0, Z+
 50e:	f0 81       	ld	r31, Z
 510:	e0 2d       	mov	r30, r0
 512:	c7 01       	movw	r24, r14
 514:	09 95       	icall
 516:	d7 01       	movw	r26, r14
 518:	ed 91       	ld	r30, X+
 51a:	fc 91       	ld	r31, X
 51c:	61 2f       	mov	r22, r17
 51e:	61 60       	ori	r22, 0x01	; 1
 520:	04 80       	ldd	r0, Z+4	; 0x04
 522:	f5 81       	ldd	r31, Z+5	; 0x05
 524:	e0 2d       	mov	r30, r0
 526:	c7 01       	movw	r24, r14
 528:	09 95       	icall
 52a:	d7 01       	movw	r26, r14
 52c:	ed 91       	ld	r30, X+
 52e:	fc 91       	ld	r31, X
 530:	06 80       	ldd	r0, Z+6	; 0x06
 532:	f7 81       	ldd	r31, Z+7	; 0x07
 534:	e0 2d       	mov	r30, r0
 536:	61 e0       	ldi	r22, 0x01	; 1
 538:	c7 01       	movw	r24, r14
 53a:	09 95       	icall
 53c:	08 2f       	mov	r16, r24
 53e:	10 e0       	ldi	r17, 0x00	; 0
 540:	10 2f       	mov	r17, r16
 542:	00 27       	eor	r16, r16
 544:	d7 01       	movw	r26, r14
 546:	ed 91       	ld	r30, X+
 548:	fc 91       	ld	r31, X
 54a:	06 80       	ldd	r0, Z+6	; 0x06
 54c:	f7 81       	ldd	r31, Z+7	; 0x07
 54e:	e0 2d       	mov	r30, r0
 550:	60 e0       	ldi	r22, 0x00	; 0
 552:	c7 01       	movw	r24, r14
 554:	09 95       	icall
 556:	08 2b       	or	r16, r24
 558:	d7 01       	movw	r26, r14
 55a:	ed 91       	ld	r30, X+
 55c:	fc 91       	ld	r31, X
 55e:	02 80       	ldd	r0, Z+2	; 0x02
 560:	f3 81       	ldd	r31, Z+3	; 0x03
 562:	e0 2d       	mov	r30, r0
 564:	c7 01       	movw	r24, r14
 566:	09 95       	icall
 568:	c8 01       	movw	r24, r16
 56a:	0f 90       	pop	r0
 56c:	df 91       	pop	r29
 56e:	cf 91       	pop	r28
 570:	1f 91       	pop	r17
 572:	0f 91       	pop	r16
 574:	ff 90       	pop	r15
 576:	ef 90       	pop	r14
 578:	08 95       	ret

0000057a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
 57a:	cf 92       	push	r12
 57c:	df 92       	push	r13
 57e:	ef 92       	push	r14
 580:	ff 92       	push	r15
 582:	0f 93       	push	r16
 584:	1f 93       	push	r17
 586:	cf 93       	push	r28
 588:	df 93       	push	r29
 58a:	00 d0       	rcall	.+0      	; 0x58c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
 58c:	1f 92       	push	r1
 58e:	cd b7       	in	r28, 0x3d	; 61
 590:	de b7       	in	r29, 0x3e	; 62
 592:	6c 01       	movw	r12, r24
 594:	f6 2e       	mov	r15, r22
 596:	dc 01       	movw	r26, r24
 598:	ed 91       	ld	r30, X+
 59a:	fc 91       	ld	r31, X
 59c:	01 90       	ld	r0, Z+
 59e:	f0 81       	ld	r31, Z
 5a0:	e0 2d       	mov	r30, r0
 5a2:	2a 83       	std	Y+2, r18	; 0x02
 5a4:	3b 83       	std	Y+3, r19	; 0x03
 5a6:	49 83       	std	Y+1, r20	; 0x01
 5a8:	09 95       	icall
 5aa:	d6 01       	movw	r26, r12
 5ac:	ed 91       	ld	r30, X+
 5ae:	fc 91       	ld	r31, X
 5b0:	04 80       	ldd	r0, Z+4	; 0x04
 5b2:	f5 81       	ldd	r31, Z+5	; 0x05
 5b4:	e0 2d       	mov	r30, r0
 5b6:	6f 2d       	mov	r22, r15
 5b8:	c6 01       	movw	r24, r12
 5ba:	09 95       	icall
 5bc:	d6 01       	movw	r26, r12
 5be:	ed 91       	ld	r30, X+
 5c0:	fc 91       	ld	r31, X
 5c2:	04 80       	ldd	r0, Z+4	; 0x04
 5c4:	f5 81       	ldd	r31, Z+5	; 0x05
 5c6:	e0 2d       	mov	r30, r0
 5c8:	49 81       	ldd	r20, Y+1	; 0x01
 5ca:	64 2f       	mov	r22, r20
 5cc:	c6 01       	movw	r24, r12
 5ce:	09 95       	icall
 5d0:	d6 01       	movw	r26, r12
 5d2:	ed 91       	ld	r30, X+
 5d4:	fc 91       	ld	r31, X
 5d6:	01 90       	ld	r0, Z+
 5d8:	f0 81       	ld	r31, Z
 5da:	e0 2d       	mov	r30, r0
 5dc:	c6 01       	movw	r24, r12
 5de:	09 95       	icall
 5e0:	d6 01       	movw	r26, r12
 5e2:	ed 91       	ld	r30, X+
 5e4:	fc 91       	ld	r31, X
 5e6:	6f 2d       	mov	r22, r15
 5e8:	61 60       	ori	r22, 0x01	; 1
 5ea:	04 80       	ldd	r0, Z+4	; 0x04
 5ec:	f5 81       	ldd	r31, Z+5	; 0x05
 5ee:	e0 2d       	mov	r30, r0
 5f0:	c6 01       	movw	r24, r12
 5f2:	09 95       	icall
 5f4:	2a 81       	ldd	r18, Y+2	; 0x02
 5f6:	e2 2e       	mov	r14, r18
 5f8:	3b 81       	ldd	r19, Y+3	; 0x03
 5fa:	f3 2e       	mov	r15, r19
 5fc:	0e 0d       	add	r16, r14
 5fe:	1f 1d       	adc	r17, r15
 600:	d6 01       	movw	r26, r12
 602:	ed 91       	ld	r30, X+
 604:	fc 91       	ld	r31, X
 606:	e0 16       	cp	r14, r16
 608:	f1 06       	cpc	r15, r17
 60a:	51 f0       	breq	.+20     	; 0x620 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0xa6>
 60c:	06 80       	ldd	r0, Z+6	; 0x06
 60e:	f7 81       	ldd	r31, Z+7	; 0x07
 610:	e0 2d       	mov	r30, r0
 612:	61 e0       	ldi	r22, 0x01	; 1
 614:	c6 01       	movw	r24, r12
 616:	09 95       	icall
 618:	f7 01       	movw	r30, r14
 61a:	81 93       	st	Z+, r24
 61c:	7f 01       	movw	r14, r30
 61e:	f0 cf       	rjmp	.-32     	; 0x600 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x86>
 620:	02 80       	ldd	r0, Z+2	; 0x02
 622:	f3 81       	ldd	r31, Z+3	; 0x03
 624:	e0 2d       	mov	r30, r0
 626:	c6 01       	movw	r24, r12
 628:	0f 90       	pop	r0
 62a:	0f 90       	pop	r0
 62c:	0f 90       	pop	r0
 62e:	df 91       	pop	r29
 630:	cf 91       	pop	r28
 632:	1f 91       	pop	r17
 634:	0f 91       	pop	r16
 636:	ff 90       	pop	r15
 638:	ef 90       	pop	r14
 63a:	df 90       	pop	r13
 63c:	cf 90       	pop	r12
 63e:	09 94       	ijmp

00000640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 640:	88 23       	and	r24, r24
 642:	21 f0       	breq	.+8      	; 0x64c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 644:	bf 98       	cbi	0x17, 7	; 23
 646:	82 30       	cpi	r24, 0x02	; 2
 648:	19 f0       	breq	.+6      	; 0x650 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 64a:	08 95       	ret
 64c:	bf 9a       	sbi	0x17, 7	; 23
 64e:	08 95       	ret
 650:	c7 9a       	sbi	0x18, 7	; 24
 652:	08 95       	ret

00000654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
 654:	8a e0       	ldi	r24, 0x0A	; 10
 656:	00 00       	nop
 658:	81 50       	subi	r24, 0x01	; 1
 65a:	e9 f7       	brne	.-6      	; 0x656 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
 65c:	08 95       	ret

0000065e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
 65e:	1f 93       	push	r17
 660:	cf 93       	push	r28
 662:	df 93       	push	r29
 664:	16 2f       	mov	r17, r22
 666:	bd 98       	cbi	0x17, 5	; 23
 668:	80 e0       	ldi	r24, 0x00	; 0
 66a:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 66e:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 672:	d8 e0       	ldi	r29, 0x08	; 8
 674:	c0 e0       	ldi	r28, 0x00	; 0
 676:	cc 0f       	add	r28, r28
 678:	81 e0       	ldi	r24, 0x01	; 1
 67a:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 67e:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 682:	b5 99       	sbic	0x16, 5	; 22
 684:	c1 60       	ori	r28, 0x01	; 1
 686:	80 e0       	ldi	r24, 0x00	; 0
 688:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 68c:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 690:	d1 50       	subi	r29, 0x01	; 1
 692:	89 f7       	brne	.-30     	; 0x676 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
 694:	11 23       	and	r17, r17
 696:	11 f0       	breq	.+4      	; 0x69c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
 698:	bd 9a       	sbi	0x17, 5	; 23
 69a:	01 c0       	rjmp	.+2      	; 0x69e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
 69c:	bd 98       	cbi	0x17, 5	; 23
 69e:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 6a2:	81 e0       	ldi	r24, 0x01	; 1
 6a4:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6a8:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 6ac:	80 e0       	ldi	r24, 0x00	; 0
 6ae:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6b2:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 6b6:	bd 98       	cbi	0x17, 5	; 23
 6b8:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 6bc:	8c 2f       	mov	r24, r28
 6be:	df 91       	pop	r29
 6c0:	cf 91       	pop	r28
 6c2:	1f 91       	pop	r17
 6c4:	08 95       	ret

000006c6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
 6c6:	cf 93       	push	r28
 6c8:	df 93       	push	r29
 6ca:	d6 2f       	mov	r29, r22
 6cc:	c8 e0       	ldi	r28, 0x08	; 8
 6ce:	80 e0       	ldi	r24, 0x00	; 0
 6d0:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6d4:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 6d8:	d7 ff       	sbrs	r29, 7
 6da:	02 c0       	rjmp	.+4      	; 0x6e0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
 6dc:	bd 98       	cbi	0x17, 5	; 23
 6de:	01 c0       	rjmp	.+2      	; 0x6e2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
 6e0:	bd 9a       	sbi	0x17, 5	; 23
 6e2:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 6e6:	81 e0       	ldi	r24, 0x01	; 1
 6e8:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6ec:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 6f0:	dd 0f       	add	r29, r29
 6f2:	c1 50       	subi	r28, 0x01	; 1
 6f4:	61 f7       	brne	.-40     	; 0x6ce <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
 6f6:	80 e0       	ldi	r24, 0x00	; 0
 6f8:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6fc:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 700:	bd 98       	cbi	0x17, 5	; 23
 702:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 706:	81 e0       	ldi	r24, 0x01	; 1
 708:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 70c:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 710:	c6 b3       	in	r28, 0x16	; 22
 712:	80 e0       	ldi	r24, 0x00	; 0
 714:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 718:	0e 94 2a 03 	call	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 71c:	c5 fb       	bst	r28, 5
 71e:	cc 27       	eor	r28, r28
 720:	c0 f9       	bld	r28, 0
 722:	81 e0       	ldi	r24, 0x01	; 1
 724:	8c 27       	eor	r24, r28
 726:	df 91       	pop	r29
 728:	cf 91       	pop	r28
 72a:	08 95       	ret

0000072c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
 72c:	81 e0       	ldi	r24, 0x01	; 1
 72e:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 732:	bd 98       	cbi	0x17, 5	; 23
 734:	81 e0       	ldi	r24, 0x01	; 1
 736:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 73a:	bd 9a       	sbi	0x17, 5	; 23
 73c:	80 e0       	ldi	r24, 0x00	; 0
 73e:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 742:	bd 98       	cbi	0x17, 5	; 23
 744:	0c 94 2a 03 	jmp	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

00000748 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
 748:	80 e0       	ldi	r24, 0x00	; 0
 74a:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 74e:	bd 9a       	sbi	0x17, 5	; 23
 750:	81 e0       	ldi	r24, 0x01	; 1
 752:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 756:	bd 9a       	sbi	0x17, 5	; 23
 758:	81 e0       	ldi	r24, 0x01	; 1
 75a:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 75e:	bd 98       	cbi	0x17, 5	; 23
 760:	0c 94 2a 03 	jmp	0x654	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

00000764 <_GLOBAL__sub_I_i2c>:
 764:	8a e6       	ldi	r24, 0x6A	; 106
 766:	90 e0       	ldi	r25, 0x00	; 0
 768:	90 93 81 00 	sts	0x0081, r25
 76c:	80 93 80 00 	sts	0x0080, r24
 770:	bd 98       	cbi	0x17, 5	; 23
 772:	81 e0       	ldi	r24, 0x01	; 1
 774:	0e 94 20 03 	call	0x640	; 0x640 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 778:	c5 98       	cbi	0x18, 5	; 24
 77a:	c7 98       	cbi	0x18, 7	; 24
 77c:	08 95       	ret

0000077e <_Znwj>:
 77e:	0c 94 e0 04 	jmp	0x9c0	; 0x9c0 <malloc>

00000782 <_ZN6CTimerC1Ev>:
 782:	80 e0       	ldi	r24, 0x00	; 0
 784:	90 e0       	ldi	r25, 0x00	; 0
 786:	fc 01       	movw	r30, r24
 788:	23 e0       	ldi	r18, 0x03	; 3
 78a:	ee 0f       	add	r30, r30
 78c:	ff 1f       	adc	r31, r31
 78e:	2a 95       	dec	r18
 790:	e1 f7       	brne	.-8      	; 0x78a <_ZN6CTimerC1Ev+0x8>
 792:	ec 57       	subi	r30, 0x7C	; 124
 794:	ff 4f       	sbci	r31, 0xFF	; 255
 796:	11 82       	std	Z+1, r1	; 0x01
 798:	10 82       	st	Z, r1
 79a:	13 82       	std	Z+3, r1	; 0x03
 79c:	12 82       	std	Z+2, r1	; 0x02
 79e:	15 82       	std	Z+5, r1	; 0x05
 7a0:	14 82       	std	Z+4, r1	; 0x04
 7a2:	16 82       	std	Z+6, r1	; 0x06
 7a4:	17 82       	std	Z+7, r1	; 0x07
 7a6:	01 96       	adiw	r24, 0x01	; 1
 7a8:	88 30       	cpi	r24, 0x08	; 8
 7aa:	91 05       	cpc	r25, r1
 7ac:	61 f7       	brne	.-40     	; 0x786 <_ZN6CTimerC1Ev+0x4>
 7ae:	10 92 c4 00 	sts	0x00C4, r1
 7b2:	10 92 c5 00 	sts	0x00C5, r1
 7b6:	10 92 c6 00 	sts	0x00C6, r1
 7ba:	10 92 c7 00 	sts	0x00C7, r1
 7be:	83 b7       	in	r24, 0x33	; 51
 7c0:	88 60       	ori	r24, 0x08	; 8
 7c2:	83 bf       	out	0x33, r24	; 51
 7c4:	8b e9       	ldi	r24, 0x9B	; 155
 7c6:	8c bf       	out	0x3c, r24	; 60
 7c8:	83 e0       	ldi	r24, 0x03	; 3
 7ca:	83 bf       	out	0x33, r24	; 51
 7cc:	89 b7       	in	r24, 0x39	; 57
 7ce:	82 60       	ori	r24, 0x02	; 2
 7d0:	89 bf       	out	0x39, r24	; 57
 7d2:	78 94       	sei
 7d4:	08 95       	ret

000007d6 <_ZN6CTimer8add_taskEPFvvEjb>:
 7d6:	80 e0       	ldi	r24, 0x00	; 0
 7d8:	90 e0       	ldi	r25, 0x00	; 0
 7da:	ef ef       	ldi	r30, 0xFF	; 255
 7dc:	dc 01       	movw	r26, r24
 7de:	33 e0       	ldi	r19, 0x03	; 3
 7e0:	aa 0f       	add	r26, r26
 7e2:	bb 1f       	adc	r27, r27
 7e4:	3a 95       	dec	r19
 7e6:	e1 f7       	brne	.-8      	; 0x7e0 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
 7e8:	ac 57       	subi	r26, 0x7C	; 124
 7ea:	bf 4f       	sbci	r27, 0xFF	; 255
 7ec:	0d 90       	ld	r0, X+
 7ee:	bc 91       	ld	r27, X
 7f0:	a0 2d       	mov	r26, r0
 7f2:	ab 2b       	or	r26, r27
 7f4:	09 f4       	brne	.+2      	; 0x7f8 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
 7f6:	e8 2f       	mov	r30, r24
 7f8:	01 96       	adiw	r24, 0x01	; 1
 7fa:	88 30       	cpi	r24, 0x08	; 8
 7fc:	91 05       	cpc	r25, r1
 7fe:	71 f7       	brne	.-36     	; 0x7dc <_ZN6CTimer8add_taskEPFvvEjb+0x6>
 800:	ef 3f       	cpi	r30, 0xFF	; 255
 802:	71 f0       	breq	.+28     	; 0x820 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
 804:	88 e0       	ldi	r24, 0x08	; 8
 806:	e8 02       	muls	r30, r24
 808:	f0 01       	movw	r30, r0
 80a:	11 24       	eor	r1, r1
 80c:	ec 57       	subi	r30, 0x7C	; 124
 80e:	ff 4f       	sbci	r31, 0xFF	; 255
 810:	71 83       	std	Z+1, r23	; 0x01
 812:	60 83       	st	Z, r22
 814:	53 83       	std	Z+3, r21	; 0x03
 816:	42 83       	std	Z+2, r20	; 0x02
 818:	55 83       	std	Z+5, r21	; 0x05
 81a:	44 83       	std	Z+4, r20	; 0x04
 81c:	16 82       	std	Z+6, r1	; 0x06
 81e:	27 83       	std	Z+7, r18	; 0x07
 820:	08 95       	ret

00000822 <_ZN6CTimer8get_timeEv>:
 822:	cf 93       	push	r28
 824:	df 93       	push	r29
 826:	00 d0       	rcall	.+0      	; 0x828 <_ZN6CTimer8get_timeEv+0x6>
 828:	00 d0       	rcall	.+0      	; 0x82a <_ZN6CTimer8get_timeEv+0x8>
 82a:	cd b7       	in	r28, 0x3d	; 61
 82c:	de b7       	in	r29, 0x3e	; 62
 82e:	f8 94       	cli
 830:	80 91 c4 00 	lds	r24, 0x00C4
 834:	90 91 c5 00 	lds	r25, 0x00C5
 838:	a0 91 c6 00 	lds	r26, 0x00C6
 83c:	b0 91 c7 00 	lds	r27, 0x00C7
 840:	89 83       	std	Y+1, r24	; 0x01
 842:	9a 83       	std	Y+2, r25	; 0x02
 844:	ab 83       	std	Y+3, r26	; 0x03
 846:	bc 83       	std	Y+4, r27	; 0x04
 848:	78 94       	sei
 84a:	69 81       	ldd	r22, Y+1	; 0x01
 84c:	7a 81       	ldd	r23, Y+2	; 0x02
 84e:	8b 81       	ldd	r24, Y+3	; 0x03
 850:	9c 81       	ldd	r25, Y+4	; 0x04
 852:	0f 90       	pop	r0
 854:	0f 90       	pop	r0
 856:	0f 90       	pop	r0
 858:	0f 90       	pop	r0
 85a:	df 91       	pop	r29
 85c:	cf 91       	pop	r28
 85e:	08 95       	ret

00000860 <_ZN6CTimer8delay_msEm>:
 860:	cf 92       	push	r12
 862:	df 92       	push	r13
 864:	ef 92       	push	r14
 866:	ff 92       	push	r15
 868:	0f 93       	push	r16
 86a:	1f 93       	push	r17
 86c:	cf 93       	push	r28
 86e:	df 93       	push	r29
 870:	00 d0       	rcall	.+0      	; 0x872 <_ZN6CTimer8delay_msEm+0x12>
 872:	00 d0       	rcall	.+0      	; 0x874 <_ZN6CTimer8delay_msEm+0x14>
 874:	cd b7       	in	r28, 0x3d	; 61
 876:	de b7       	in	r29, 0x3e	; 62
 878:	8c 01       	movw	r16, r24
 87a:	6a 01       	movw	r12, r20
 87c:	7b 01       	movw	r14, r22
 87e:	0e 94 11 04 	call	0x822	; 0x822 <_ZN6CTimer8get_timeEv>
 882:	c6 0e       	add	r12, r22
 884:	d7 1e       	adc	r13, r23
 886:	e8 1e       	adc	r14, r24
 888:	f9 1e       	adc	r15, r25
 88a:	c9 82       	std	Y+1, r12	; 0x01
 88c:	da 82       	std	Y+2, r13	; 0x02
 88e:	eb 82       	std	Y+3, r14	; 0x03
 890:	fc 82       	std	Y+4, r15	; 0x04
 892:	c8 01       	movw	r24, r16
 894:	0e 94 11 04 	call	0x822	; 0x822 <_ZN6CTimer8get_timeEv>
 898:	c9 80       	ldd	r12, Y+1	; 0x01
 89a:	da 80       	ldd	r13, Y+2	; 0x02
 89c:	eb 80       	ldd	r14, Y+3	; 0x03
 89e:	fc 80       	ldd	r15, Y+4	; 0x04
 8a0:	6c 15       	cp	r22, r12
 8a2:	7d 05       	cpc	r23, r13
 8a4:	8e 05       	cpc	r24, r14
 8a6:	9f 05       	cpc	r25, r15
 8a8:	10 f4       	brcc	.+4      	; 0x8ae <_ZN6CTimer8delay_msEm+0x4e>
 8aa:	00 00       	nop
 8ac:	f2 cf       	rjmp	.-28     	; 0x892 <_ZN6CTimer8delay_msEm+0x32>
 8ae:	0f 90       	pop	r0
 8b0:	0f 90       	pop	r0
 8b2:	0f 90       	pop	r0
 8b4:	0f 90       	pop	r0
 8b6:	df 91       	pop	r29
 8b8:	cf 91       	pop	r28
 8ba:	1f 91       	pop	r17
 8bc:	0f 91       	pop	r16
 8be:	ff 90       	pop	r15
 8c0:	ef 90       	pop	r14
 8c2:	df 90       	pop	r13
 8c4:	cf 90       	pop	r12
 8c6:	08 95       	ret

000008c8 <__vector_19>:
 8c8:	1f 92       	push	r1
 8ca:	0f 92       	push	r0
 8cc:	0f b6       	in	r0, 0x3f	; 63
 8ce:	0f 92       	push	r0
 8d0:	11 24       	eor	r1, r1
 8d2:	2f 93       	push	r18
 8d4:	3f 93       	push	r19
 8d6:	4f 93       	push	r20
 8d8:	5f 93       	push	r21
 8da:	6f 93       	push	r22
 8dc:	7f 93       	push	r23
 8de:	8f 93       	push	r24
 8e0:	9f 93       	push	r25
 8e2:	af 93       	push	r26
 8e4:	bf 93       	push	r27
 8e6:	cf 93       	push	r28
 8e8:	df 93       	push	r29
 8ea:	ef 93       	push	r30
 8ec:	ff 93       	push	r31
 8ee:	c0 e0       	ldi	r28, 0x00	; 0
 8f0:	d0 e0       	ldi	r29, 0x00	; 0
 8f2:	ce 01       	movw	r24, r28
 8f4:	23 e0       	ldi	r18, 0x03	; 3
 8f6:	88 0f       	add	r24, r24
 8f8:	99 1f       	adc	r25, r25
 8fa:	2a 95       	dec	r18
 8fc:	e1 f7       	brne	.-8      	; 0x8f6 <__vector_19+0x2e>
 8fe:	fc 01       	movw	r30, r24
 900:	ec 57       	subi	r30, 0x7C	; 124
 902:	ff 4f       	sbci	r31, 0xFF	; 255
 904:	24 81       	ldd	r18, Z+4	; 0x04
 906:	35 81       	ldd	r19, Z+5	; 0x05
 908:	23 2b       	or	r18, r19
 90a:	31 f0       	breq	.+12     	; 0x918 <__vector_19+0x50>
 90c:	84 81       	ldd	r24, Z+4	; 0x04
 90e:	95 81       	ldd	r25, Z+5	; 0x05
 910:	01 97       	sbiw	r24, 0x01	; 1
 912:	95 83       	std	Z+5, r25	; 0x05
 914:	84 83       	std	Z+4, r24	; 0x04
 916:	18 c0       	rjmp	.+48     	; 0x948 <__vector_19+0x80>
 918:	22 81       	ldd	r18, Z+2	; 0x02
 91a:	33 81       	ldd	r19, Z+3	; 0x03
 91c:	35 83       	std	Z+5, r19	; 0x05
 91e:	24 83       	std	Z+4, r18	; 0x04
 920:	26 81       	ldd	r18, Z+6	; 0x06
 922:	2f 3f       	cpi	r18, 0xFF	; 255
 924:	19 f0       	breq	.+6      	; 0x92c <__vector_19+0x64>
 926:	26 81       	ldd	r18, Z+6	; 0x06
 928:	2f 5f       	subi	r18, 0xFF	; 255
 92a:	26 83       	std	Z+6, r18	; 0x06
 92c:	fc 01       	movw	r30, r24
 92e:	ec 57       	subi	r30, 0x7C	; 124
 930:	ff 4f       	sbci	r31, 0xFF	; 255
 932:	87 81       	ldd	r24, Z+7	; 0x07
 934:	81 11       	cpse	r24, r1
 936:	08 c0       	rjmp	.+16     	; 0x948 <__vector_19+0x80>
 938:	80 81       	ld	r24, Z
 93a:	91 81       	ldd	r25, Z+1	; 0x01
 93c:	89 2b       	or	r24, r25
 93e:	21 f0       	breq	.+8      	; 0x948 <__vector_19+0x80>
 940:	01 90       	ld	r0, Z+
 942:	f0 81       	ld	r31, Z
 944:	e0 2d       	mov	r30, r0
 946:	09 95       	icall
 948:	21 96       	adiw	r28, 0x01	; 1
 94a:	c8 30       	cpi	r28, 0x08	; 8
 94c:	d1 05       	cpc	r29, r1
 94e:	89 f6       	brne	.-94     	; 0x8f2 <__vector_19+0x2a>
 950:	80 91 c4 00 	lds	r24, 0x00C4
 954:	90 91 c5 00 	lds	r25, 0x00C5
 958:	a0 91 c6 00 	lds	r26, 0x00C6
 95c:	b0 91 c7 00 	lds	r27, 0x00C7
 960:	01 96       	adiw	r24, 0x01	; 1
 962:	a1 1d       	adc	r26, r1
 964:	b1 1d       	adc	r27, r1
 966:	80 93 c4 00 	sts	0x00C4, r24
 96a:	90 93 c5 00 	sts	0x00C5, r25
 96e:	a0 93 c6 00 	sts	0x00C6, r26
 972:	b0 93 c7 00 	sts	0x00C7, r27
 976:	ff 91       	pop	r31
 978:	ef 91       	pop	r30
 97a:	df 91       	pop	r29
 97c:	cf 91       	pop	r28
 97e:	bf 91       	pop	r27
 980:	af 91       	pop	r26
 982:	9f 91       	pop	r25
 984:	8f 91       	pop	r24
 986:	7f 91       	pop	r23
 988:	6f 91       	pop	r22
 98a:	5f 91       	pop	r21
 98c:	4f 91       	pop	r20
 98e:	3f 91       	pop	r19
 990:	2f 91       	pop	r18
 992:	0f 90       	pop	r0
 994:	0f be       	out	0x3f, r0	; 63
 996:	0f 90       	pop	r0
 998:	1f 90       	pop	r1
 99a:	18 95       	reti

0000099c <_GLOBAL__sub_I_timer>:
 99c:	88 ec       	ldi	r24, 0xC8	; 200
 99e:	90 e0       	ldi	r25, 0x00	; 0
 9a0:	0c 94 c1 03 	jmp	0x782	; 0x782 <_ZN6CTimerC1Ev>

000009a4 <_GLOBAL__sub_I_terminal>:
 9a4:	89 ec       	ldi	r24, 0xC9	; 201
 9a6:	90 e0       	ldi	r25, 0x00	; 0
 9a8:	0c 94 e2 00 	jmp	0x1c4	; 0x1c4 <_ZN6CUSARTC1Ev>

000009ac <_GLOBAL__sub_D_terminal>:
 9ac:	89 ec       	ldi	r24, 0xC9	; 201
 9ae:	90 e0       	ldi	r25, 0x00	; 0
 9b0:	0c 94 ec 00 	jmp	0x1d8	; 0x1d8 <_ZN6CUSARTD1Ev>

000009b4 <__tablejump2__>:
 9b4:	ee 0f       	add	r30, r30
 9b6:	ff 1f       	adc	r31, r31
 9b8:	05 90       	lpm	r0, Z+
 9ba:	f4 91       	lpm	r31, Z
 9bc:	e0 2d       	mov	r30, r0
 9be:	09 94       	ijmp

000009c0 <malloc>:
 9c0:	cf 93       	push	r28
 9c2:	df 93       	push	r29
 9c4:	82 30       	cpi	r24, 0x02	; 2
 9c6:	91 05       	cpc	r25, r1
 9c8:	10 f4       	brcc	.+4      	; 0x9ce <malloc+0xe>
 9ca:	82 e0       	ldi	r24, 0x02	; 2
 9cc:	90 e0       	ldi	r25, 0x00	; 0
 9ce:	e0 91 cc 00 	lds	r30, 0x00CC
 9d2:	f0 91 cd 00 	lds	r31, 0x00CD
 9d6:	20 e0       	ldi	r18, 0x00	; 0
 9d8:	30 e0       	ldi	r19, 0x00	; 0
 9da:	c0 e0       	ldi	r28, 0x00	; 0
 9dc:	d0 e0       	ldi	r29, 0x00	; 0
 9de:	30 97       	sbiw	r30, 0x00	; 0
 9e0:	11 f1       	breq	.+68     	; 0xa26 <malloc+0x66>
 9e2:	40 81       	ld	r20, Z
 9e4:	51 81       	ldd	r21, Z+1	; 0x01
 9e6:	48 17       	cp	r20, r24
 9e8:	59 07       	cpc	r21, r25
 9ea:	c0 f0       	brcs	.+48     	; 0xa1c <malloc+0x5c>
 9ec:	48 17       	cp	r20, r24
 9ee:	59 07       	cpc	r21, r25
 9f0:	61 f4       	brne	.+24     	; 0xa0a <malloc+0x4a>
 9f2:	82 81       	ldd	r24, Z+2	; 0x02
 9f4:	93 81       	ldd	r25, Z+3	; 0x03
 9f6:	20 97       	sbiw	r28, 0x00	; 0
 9f8:	19 f0       	breq	.+6      	; 0xa00 <malloc+0x40>
 9fa:	9b 83       	std	Y+3, r25	; 0x03
 9fc:	8a 83       	std	Y+2, r24	; 0x02
 9fe:	2b c0       	rjmp	.+86     	; 0xa56 <malloc+0x96>
 a00:	90 93 cd 00 	sts	0x00CD, r25
 a04:	80 93 cc 00 	sts	0x00CC, r24
 a08:	26 c0       	rjmp	.+76     	; 0xa56 <malloc+0x96>
 a0a:	21 15       	cp	r18, r1
 a0c:	31 05       	cpc	r19, r1
 a0e:	19 f0       	breq	.+6      	; 0xa16 <malloc+0x56>
 a10:	42 17       	cp	r20, r18
 a12:	53 07       	cpc	r21, r19
 a14:	18 f4       	brcc	.+6      	; 0xa1c <malloc+0x5c>
 a16:	9a 01       	movw	r18, r20
 a18:	be 01       	movw	r22, r28
 a1a:	df 01       	movw	r26, r30
 a1c:	ef 01       	movw	r28, r30
 a1e:	02 80       	ldd	r0, Z+2	; 0x02
 a20:	f3 81       	ldd	r31, Z+3	; 0x03
 a22:	e0 2d       	mov	r30, r0
 a24:	dc cf       	rjmp	.-72     	; 0x9de <malloc+0x1e>
 a26:	21 15       	cp	r18, r1
 a28:	31 05       	cpc	r19, r1
 a2a:	09 f1       	breq	.+66     	; 0xa6e <malloc+0xae>
 a2c:	28 1b       	sub	r18, r24
 a2e:	39 0b       	sbc	r19, r25
 a30:	24 30       	cpi	r18, 0x04	; 4
 a32:	31 05       	cpc	r19, r1
 a34:	90 f4       	brcc	.+36     	; 0xa5a <malloc+0x9a>
 a36:	12 96       	adiw	r26, 0x02	; 2
 a38:	8d 91       	ld	r24, X+
 a3a:	9c 91       	ld	r25, X
 a3c:	13 97       	sbiw	r26, 0x03	; 3
 a3e:	61 15       	cp	r22, r1
 a40:	71 05       	cpc	r23, r1
 a42:	21 f0       	breq	.+8      	; 0xa4c <malloc+0x8c>
 a44:	fb 01       	movw	r30, r22
 a46:	93 83       	std	Z+3, r25	; 0x03
 a48:	82 83       	std	Z+2, r24	; 0x02
 a4a:	04 c0       	rjmp	.+8      	; 0xa54 <malloc+0x94>
 a4c:	90 93 cd 00 	sts	0x00CD, r25
 a50:	80 93 cc 00 	sts	0x00CC, r24
 a54:	fd 01       	movw	r30, r26
 a56:	32 96       	adiw	r30, 0x02	; 2
 a58:	44 c0       	rjmp	.+136    	; 0xae2 <malloc+0x122>
 a5a:	fd 01       	movw	r30, r26
 a5c:	e2 0f       	add	r30, r18
 a5e:	f3 1f       	adc	r31, r19
 a60:	81 93       	st	Z+, r24
 a62:	91 93       	st	Z+, r25
 a64:	22 50       	subi	r18, 0x02	; 2
 a66:	31 09       	sbc	r19, r1
 a68:	2d 93       	st	X+, r18
 a6a:	3c 93       	st	X, r19
 a6c:	3a c0       	rjmp	.+116    	; 0xae2 <malloc+0x122>
 a6e:	20 91 ca 00 	lds	r18, 0x00CA
 a72:	30 91 cb 00 	lds	r19, 0x00CB
 a76:	23 2b       	or	r18, r19
 a78:	41 f4       	brne	.+16     	; 0xa8a <malloc+0xca>
 a7a:	20 91 62 00 	lds	r18, 0x0062
 a7e:	30 91 63 00 	lds	r19, 0x0063
 a82:	30 93 cb 00 	sts	0x00CB, r19
 a86:	20 93 ca 00 	sts	0x00CA, r18
 a8a:	20 91 60 00 	lds	r18, 0x0060
 a8e:	30 91 61 00 	lds	r19, 0x0061
 a92:	21 15       	cp	r18, r1
 a94:	31 05       	cpc	r19, r1
 a96:	41 f4       	brne	.+16     	; 0xaa8 <malloc+0xe8>
 a98:	2d b7       	in	r18, 0x3d	; 61
 a9a:	3e b7       	in	r19, 0x3e	; 62
 a9c:	40 91 64 00 	lds	r20, 0x0064
 aa0:	50 91 65 00 	lds	r21, 0x0065
 aa4:	24 1b       	sub	r18, r20
 aa6:	35 0b       	sbc	r19, r21
 aa8:	e0 91 ca 00 	lds	r30, 0x00CA
 aac:	f0 91 cb 00 	lds	r31, 0x00CB
 ab0:	e2 17       	cp	r30, r18
 ab2:	f3 07       	cpc	r31, r19
 ab4:	a0 f4       	brcc	.+40     	; 0xade <malloc+0x11e>
 ab6:	2e 1b       	sub	r18, r30
 ab8:	3f 0b       	sbc	r19, r31
 aba:	28 17       	cp	r18, r24
 abc:	39 07       	cpc	r19, r25
 abe:	78 f0       	brcs	.+30     	; 0xade <malloc+0x11e>
 ac0:	ac 01       	movw	r20, r24
 ac2:	4e 5f       	subi	r20, 0xFE	; 254
 ac4:	5f 4f       	sbci	r21, 0xFF	; 255
 ac6:	24 17       	cp	r18, r20
 ac8:	35 07       	cpc	r19, r21
 aca:	48 f0       	brcs	.+18     	; 0xade <malloc+0x11e>
 acc:	4e 0f       	add	r20, r30
 ace:	5f 1f       	adc	r21, r31
 ad0:	50 93 cb 00 	sts	0x00CB, r21
 ad4:	40 93 ca 00 	sts	0x00CA, r20
 ad8:	81 93       	st	Z+, r24
 ada:	91 93       	st	Z+, r25
 adc:	02 c0       	rjmp	.+4      	; 0xae2 <malloc+0x122>
 ade:	e0 e0       	ldi	r30, 0x00	; 0
 ae0:	f0 e0       	ldi	r31, 0x00	; 0
 ae2:	cf 01       	movw	r24, r30
 ae4:	df 91       	pop	r29
 ae6:	cf 91       	pop	r28
 ae8:	08 95       	ret

00000aea <free>:
 aea:	0f 93       	push	r16
 aec:	1f 93       	push	r17
 aee:	cf 93       	push	r28
 af0:	df 93       	push	r29
 af2:	00 97       	sbiw	r24, 0x00	; 0
 af4:	09 f4       	brne	.+2      	; 0xaf8 <free+0xe>
 af6:	8c c0       	rjmp	.+280    	; 0xc10 <free+0x126>
 af8:	fc 01       	movw	r30, r24
 afa:	32 97       	sbiw	r30, 0x02	; 2
 afc:	13 82       	std	Z+3, r1	; 0x03
 afe:	12 82       	std	Z+2, r1	; 0x02
 b00:	00 91 cc 00 	lds	r16, 0x00CC
 b04:	10 91 cd 00 	lds	r17, 0x00CD
 b08:	01 15       	cp	r16, r1
 b0a:	11 05       	cpc	r17, r1
 b0c:	81 f4       	brne	.+32     	; 0xb2e <free+0x44>
 b0e:	20 81       	ld	r18, Z
 b10:	31 81       	ldd	r19, Z+1	; 0x01
 b12:	82 0f       	add	r24, r18
 b14:	93 1f       	adc	r25, r19
 b16:	20 91 ca 00 	lds	r18, 0x00CA
 b1a:	30 91 cb 00 	lds	r19, 0x00CB
 b1e:	28 17       	cp	r18, r24
 b20:	39 07       	cpc	r19, r25
 b22:	79 f5       	brne	.+94     	; 0xb82 <free+0x98>
 b24:	f0 93 cb 00 	sts	0x00CB, r31
 b28:	e0 93 ca 00 	sts	0x00CA, r30
 b2c:	71 c0       	rjmp	.+226    	; 0xc10 <free+0x126>
 b2e:	d8 01       	movw	r26, r16
 b30:	40 e0       	ldi	r20, 0x00	; 0
 b32:	50 e0       	ldi	r21, 0x00	; 0
 b34:	ae 17       	cp	r26, r30
 b36:	bf 07       	cpc	r27, r31
 b38:	50 f4       	brcc	.+20     	; 0xb4e <free+0x64>
 b3a:	12 96       	adiw	r26, 0x02	; 2
 b3c:	2d 91       	ld	r18, X+
 b3e:	3c 91       	ld	r19, X
 b40:	13 97       	sbiw	r26, 0x03	; 3
 b42:	ad 01       	movw	r20, r26
 b44:	21 15       	cp	r18, r1
 b46:	31 05       	cpc	r19, r1
 b48:	09 f1       	breq	.+66     	; 0xb8c <free+0xa2>
 b4a:	d9 01       	movw	r26, r18
 b4c:	f3 cf       	rjmp	.-26     	; 0xb34 <free+0x4a>
 b4e:	9d 01       	movw	r18, r26
 b50:	da 01       	movw	r26, r20
 b52:	33 83       	std	Z+3, r19	; 0x03
 b54:	22 83       	std	Z+2, r18	; 0x02
 b56:	60 81       	ld	r22, Z
 b58:	71 81       	ldd	r23, Z+1	; 0x01
 b5a:	86 0f       	add	r24, r22
 b5c:	97 1f       	adc	r25, r23
 b5e:	82 17       	cp	r24, r18
 b60:	93 07       	cpc	r25, r19
 b62:	69 f4       	brne	.+26     	; 0xb7e <free+0x94>
 b64:	ec 01       	movw	r28, r24
 b66:	28 81       	ld	r18, Y
 b68:	39 81       	ldd	r19, Y+1	; 0x01
 b6a:	26 0f       	add	r18, r22
 b6c:	37 1f       	adc	r19, r23
 b6e:	2e 5f       	subi	r18, 0xFE	; 254
 b70:	3f 4f       	sbci	r19, 0xFF	; 255
 b72:	31 83       	std	Z+1, r19	; 0x01
 b74:	20 83       	st	Z, r18
 b76:	8a 81       	ldd	r24, Y+2	; 0x02
 b78:	9b 81       	ldd	r25, Y+3	; 0x03
 b7a:	93 83       	std	Z+3, r25	; 0x03
 b7c:	82 83       	std	Z+2, r24	; 0x02
 b7e:	45 2b       	or	r20, r21
 b80:	29 f4       	brne	.+10     	; 0xb8c <free+0xa2>
 b82:	f0 93 cd 00 	sts	0x00CD, r31
 b86:	e0 93 cc 00 	sts	0x00CC, r30
 b8a:	42 c0       	rjmp	.+132    	; 0xc10 <free+0x126>
 b8c:	13 96       	adiw	r26, 0x03	; 3
 b8e:	fc 93       	st	X, r31
 b90:	ee 93       	st	-X, r30
 b92:	12 97       	sbiw	r26, 0x02	; 2
 b94:	ed 01       	movw	r28, r26
 b96:	49 91       	ld	r20, Y+
 b98:	59 91       	ld	r21, Y+
 b9a:	9e 01       	movw	r18, r28
 b9c:	24 0f       	add	r18, r20
 b9e:	35 1f       	adc	r19, r21
 ba0:	e2 17       	cp	r30, r18
 ba2:	f3 07       	cpc	r31, r19
 ba4:	71 f4       	brne	.+28     	; 0xbc2 <free+0xd8>
 ba6:	80 81       	ld	r24, Z
 ba8:	91 81       	ldd	r25, Z+1	; 0x01
 baa:	84 0f       	add	r24, r20
 bac:	95 1f       	adc	r25, r21
 bae:	02 96       	adiw	r24, 0x02	; 2
 bb0:	11 96       	adiw	r26, 0x01	; 1
 bb2:	9c 93       	st	X, r25
 bb4:	8e 93       	st	-X, r24
 bb6:	82 81       	ldd	r24, Z+2	; 0x02
 bb8:	93 81       	ldd	r25, Z+3	; 0x03
 bba:	13 96       	adiw	r26, 0x03	; 3
 bbc:	9c 93       	st	X, r25
 bbe:	8e 93       	st	-X, r24
 bc0:	12 97       	sbiw	r26, 0x02	; 2
 bc2:	e0 e0       	ldi	r30, 0x00	; 0
 bc4:	f0 e0       	ldi	r31, 0x00	; 0
 bc6:	d8 01       	movw	r26, r16
 bc8:	12 96       	adiw	r26, 0x02	; 2
 bca:	8d 91       	ld	r24, X+
 bcc:	9c 91       	ld	r25, X
 bce:	13 97       	sbiw	r26, 0x03	; 3
 bd0:	00 97       	sbiw	r24, 0x00	; 0
 bd2:	19 f0       	breq	.+6      	; 0xbda <free+0xf0>
 bd4:	f8 01       	movw	r30, r16
 bd6:	8c 01       	movw	r16, r24
 bd8:	f6 cf       	rjmp	.-20     	; 0xbc6 <free+0xdc>
 bda:	8d 91       	ld	r24, X+
 bdc:	9c 91       	ld	r25, X
 bde:	98 01       	movw	r18, r16
 be0:	2e 5f       	subi	r18, 0xFE	; 254
 be2:	3f 4f       	sbci	r19, 0xFF	; 255
 be4:	82 0f       	add	r24, r18
 be6:	93 1f       	adc	r25, r19
 be8:	20 91 ca 00 	lds	r18, 0x00CA
 bec:	30 91 cb 00 	lds	r19, 0x00CB
 bf0:	28 17       	cp	r18, r24
 bf2:	39 07       	cpc	r19, r25
 bf4:	69 f4       	brne	.+26     	; 0xc10 <free+0x126>
 bf6:	30 97       	sbiw	r30, 0x00	; 0
 bf8:	29 f4       	brne	.+10     	; 0xc04 <free+0x11a>
 bfa:	10 92 cd 00 	sts	0x00CD, r1
 bfe:	10 92 cc 00 	sts	0x00CC, r1
 c02:	02 c0       	rjmp	.+4      	; 0xc08 <free+0x11e>
 c04:	13 82       	std	Z+3, r1	; 0x03
 c06:	12 82       	std	Z+2, r1	; 0x02
 c08:	10 93 cb 00 	sts	0x00CB, r17
 c0c:	00 93 ca 00 	sts	0x00CA, r16
 c10:	df 91       	pop	r29
 c12:	cf 91       	pop	r28
 c14:	1f 91       	pop	r17
 c16:	0f 91       	pop	r16
 c18:	08 95       	ret

00000c1a <__do_global_dtors>:
 c1a:	10 e0       	ldi	r17, 0x00	; 0
 c1c:	ce e2       	ldi	r28, 0x2E	; 46
 c1e:	d0 e0       	ldi	r29, 0x00	; 0
 c20:	04 c0       	rjmp	.+8      	; 0xc2a <__do_global_dtors+0x10>
 c22:	fe 01       	movw	r30, r28
 c24:	0e 94 da 04 	call	0x9b4	; 0x9b4 <__tablejump2__>
 c28:	21 96       	adiw	r28, 0x01	; 1
 c2a:	cf 32       	cpi	r28, 0x2F	; 47
 c2c:	d1 07       	cpc	r29, r17
 c2e:	c9 f7       	brne	.-14     	; 0xc22 <__do_global_dtors+0x8>
 c30:	f8 94       	cli

00000c32 <__stop_program>:
 c32:	ff cf       	rjmp	.-2      	; 0xc32 <__stop_program>
