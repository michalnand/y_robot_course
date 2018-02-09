
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
  4c:	0c 94 79 04 	jmp	0x8f2	; 0x8f2 <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	bc 03       	fmulsu	r19, r20
  56:	bd 04       	cpc	r11, r13
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
  b2:	0c 94 cb 03 	jmp	0x796	; 0x796 <_ZdlPv>

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
  e8:	0e 94 05 01 	call	0x20a	; 0x20a <_ZN5Motor3runEii>
  ec:	44 ef       	ldi	r20, 0xF4	; 244
  ee:	51 e0       	ldi	r21, 0x01	; 1
  f0:	60 e0       	ldi	r22, 0x00	; 0
  f2:	70 e0       	ldi	r23, 0x00	; 0
  f4:	8c e8       	ldi	r24, 0x8C	; 140
  f6:	90 e0       	ldi	r25, 0x00	; 0
  f8:	0e 94 45 04 	call	0x88a	; 0x88a <_ZN5Timer8delay_msEm>
  fc:	40 e0       	ldi	r20, 0x00	; 0
  fe:	50 e0       	ldi	r21, 0x00	; 0
 100:	68 e3       	ldi	r22, 0x38	; 56
 102:	7f ef       	ldi	r23, 0xFF	; 255
 104:	ce 01       	movw	r24, r28
 106:	0e 94 05 01 	call	0x20a	; 0x20a <_ZN5Motor3runEii>
 10a:	44 ef       	ldi	r20, 0xF4	; 244
 10c:	51 e0       	ldi	r21, 0x01	; 1
 10e:	60 e0       	ldi	r22, 0x00	; 0
 110:	70 e0       	ldi	r23, 0x00	; 0
 112:	8c e8       	ldi	r24, 0x8C	; 140
 114:	90 e0       	ldi	r25, 0x00	; 0
 116:	0e 94 45 04 	call	0x88a	; 0x88a <_ZN5Timer8delay_msEm>
 11a:	48 ec       	ldi	r20, 0xC8	; 200
 11c:	50 e0       	ldi	r21, 0x00	; 0
 11e:	60 e0       	ldi	r22, 0x00	; 0
 120:	70 e0       	ldi	r23, 0x00	; 0
 122:	ce 01       	movw	r24, r28
 124:	0e 94 05 01 	call	0x20a	; 0x20a <_ZN5Motor3runEii>
 128:	44 ef       	ldi	r20, 0xF4	; 244
 12a:	51 e0       	ldi	r21, 0x01	; 1
 12c:	60 e0       	ldi	r22, 0x00	; 0
 12e:	70 e0       	ldi	r23, 0x00	; 0
 130:	8c e8       	ldi	r24, 0x8C	; 140
 132:	90 e0       	ldi	r25, 0x00	; 0
 134:	0e 94 45 04 	call	0x88a	; 0x88a <_ZN5Timer8delay_msEm>
 138:	48 e3       	ldi	r20, 0x38	; 56
 13a:	5f ef       	ldi	r21, 0xFF	; 255
 13c:	60 e0       	ldi	r22, 0x00	; 0
 13e:	70 e0       	ldi	r23, 0x00	; 0
 140:	ce 01       	movw	r24, r28
 142:	0e 94 05 01 	call	0x20a	; 0x20a <_ZN5Motor3runEii>
 146:	44 ef       	ldi	r20, 0xF4	; 244
 148:	51 e0       	ldi	r21, 0x01	; 1
 14a:	60 e0       	ldi	r22, 0x00	; 0
 14c:	70 e0       	ldi	r23, 0x00	; 0
 14e:	8c e8       	ldi	r24, 0x8C	; 140
 150:	90 e0       	ldi	r25, 0x00	; 0
 152:	0e 94 45 04 	call	0x88a	; 0x88a <_ZN5Timer8delay_msEm>
 156:	48 ec       	ldi	r20, 0xC8	; 200
 158:	50 e0       	ldi	r21, 0x00	; 0
 15a:	68 ec       	ldi	r22, 0xC8	; 200
 15c:	70 e0       	ldi	r23, 0x00	; 0
 15e:	ce 01       	movw	r24, r28
 160:	0e 94 05 01 	call	0x20a	; 0x20a <_ZN5Motor3runEii>
 164:	44 ef       	ldi	r20, 0xF4	; 244
 166:	51 e0       	ldi	r21, 0x01	; 1
 168:	60 e0       	ldi	r22, 0x00	; 0
 16a:	70 e0       	ldi	r23, 0x00	; 0
 16c:	8c e8       	ldi	r24, 0x8C	; 140
 16e:	90 e0       	ldi	r25, 0x00	; 0
 170:	0e 94 45 04 	call	0x88a	; 0x88a <_ZN5Timer8delay_msEm>
 174:	40 e0       	ldi	r20, 0x00	; 0
 176:	50 e0       	ldi	r21, 0x00	; 0
 178:	60 e0       	ldi	r22, 0x00	; 0
 17a:	70 e0       	ldi	r23, 0x00	; 0
 17c:	ce 01       	movw	r24, r28
 17e:	df 91       	pop	r29
 180:	cf 91       	pop	r28
 182:	0c 94 05 01 	jmp	0x20a	; 0x20a <_ZN5Motor3runEii>

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
 1b0:	8c e8       	ldi	r24, 0x8C	; 140
 1b2:	90 e0       	ldi	r25, 0x00	; 0
 1b4:	0e 94 e7 03 	call	0x7ce	; 0x7ce <_ZN5Timer8add_taskEP4Taskj>
 1b8:	81 e0       	ldi	r24, 0x01	; 1
 1ba:	90 e0       	ldi	r25, 0x00	; 0
 1bc:	0e 94 c9 03 	call	0x792	; 0x792 <_Znwj>
 1c0:	8c 01       	movw	r16, r24
 1c2:	0e 94 f9 00 	call	0x1f2	; 0x1f2 <_ZN5MotorC1Ev>
 1c6:	b3 9b       	sbis	0x16, 3	; 22
 1c8:	05 c0       	rjmp	.+10     	; 0x1d4 <main+0x4e>
 1ca:	8c e8       	ldi	r24, 0x8C	; 140
 1cc:	90 e0       	ldi	r25, 0x00	; 0
 1ce:	0e 94 09 04 	call	0x812	; 0x812 <_ZN5Timer4mainEv>
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

000001f2 <_ZN5MotorC1Ev>:
 1f2:	80 ef       	ldi	r24, 0xF0	; 240
 1f4:	81 bb       	out	0x11, r24	; 17
 1f6:	95 98       	cbi	0x12, 5	; 18
 1f8:	81 ea       	ldi	r24, 0xA1	; 161
 1fa:	8f bd       	out	0x2f, r24	; 47
 1fc:	81 e0       	ldi	r24, 0x01	; 1
 1fe:	8e bd       	out	0x2e, r24	; 46
 200:	1b bc       	out	0x2b, r1	; 43
 202:	1a bc       	out	0x2a, r1	; 42
 204:	19 bc       	out	0x29, r1	; 41
 206:	18 bc       	out	0x28, r1	; 40
 208:	08 95       	ret

0000020a <_ZN5Motor3runEii>:
 20a:	6f 3f       	cpi	r22, 0xFF	; 255
 20c:	71 05       	cpc	r23, r1
 20e:	09 f0       	breq	.+2      	; 0x212 <_ZN5Motor3runEii+0x8>
 210:	3c f4       	brge	.+14     	; 0x220 <_ZN5Motor3runEii+0x16>
 212:	61 30       	cpi	r22, 0x01	; 1
 214:	8f ef       	ldi	r24, 0xFF	; 255
 216:	78 07       	cpc	r23, r24
 218:	2c f4       	brge	.+10     	; 0x224 <_ZN5Motor3runEii+0x1a>
 21a:	61 e0       	ldi	r22, 0x01	; 1
 21c:	7f ef       	ldi	r23, 0xFF	; 255
 21e:	02 c0       	rjmp	.+4      	; 0x224 <_ZN5Motor3runEii+0x1a>
 220:	6f ef       	ldi	r22, 0xFF	; 255
 222:	70 e0       	ldi	r23, 0x00	; 0
 224:	4f 3f       	cpi	r20, 0xFF	; 255
 226:	51 05       	cpc	r21, r1
 228:	09 f0       	breq	.+2      	; 0x22c <_ZN5Motor3runEii+0x22>
 22a:	44 f4       	brge	.+16     	; 0x23c <_ZN5Motor3runEii+0x32>
 22c:	41 30       	cpi	r20, 0x01	; 1
 22e:	8f ef       	ldi	r24, 0xFF	; 255
 230:	58 07       	cpc	r21, r24
 232:	6c f0       	brlt	.+26     	; 0x24e <_ZN5Motor3runEii+0x44>
 234:	14 16       	cp	r1, r20
 236:	15 06       	cpc	r1, r21
 238:	1c f0       	brlt	.+6      	; 0x240 <_ZN5Motor3runEii+0x36>
 23a:	05 c0       	rjmp	.+10     	; 0x246 <_ZN5Motor3runEii+0x3c>
 23c:	4f ef       	ldi	r20, 0xFF	; 255
 23e:	50 e0       	ldi	r21, 0x00	; 0
 240:	4a bd       	out	0x2a, r20	; 42
 242:	96 9a       	sbi	0x12, 6	; 18
 244:	0b c0       	rjmp	.+22     	; 0x25c <_ZN5Motor3runEii+0x52>
 246:	41 15       	cp	r20, r1
 248:	51 05       	cpc	r21, r1
 24a:	39 f0       	breq	.+14     	; 0x25a <_ZN5Motor3runEii+0x50>
 24c:	02 c0       	rjmp	.+4      	; 0x252 <_ZN5Motor3runEii+0x48>
 24e:	41 e0       	ldi	r20, 0x01	; 1
 250:	5f ef       	ldi	r21, 0xFF	; 255
 252:	41 95       	neg	r20
 254:	4a bd       	out	0x2a, r20	; 42
 256:	96 98       	cbi	0x12, 6	; 18
 258:	01 c0       	rjmp	.+2      	; 0x25c <_ZN5Motor3runEii+0x52>
 25a:	1a bc       	out	0x2a, r1	; 42
 25c:	16 16       	cp	r1, r22
 25e:	17 06       	cpc	r1, r23
 260:	1c f4       	brge	.+6      	; 0x268 <_ZN5Motor3runEii+0x5e>
 262:	68 bd       	out	0x28, r22	; 40
 264:	97 98       	cbi	0x12, 7	; 18
 266:	08 95       	ret
 268:	61 15       	cp	r22, r1
 26a:	71 05       	cpc	r23, r1
 26c:	21 f0       	breq	.+8      	; 0x276 <_ZN5Motor3runEii+0x6c>
 26e:	61 95       	neg	r22
 270:	68 bd       	out	0x28, r22	; 40
 272:	97 9a       	sbi	0x12, 7	; 18
 274:	08 95       	ret
 276:	18 bc       	out	0x28, r1	; 40
 278:	08 95       	ret

0000027a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
 27a:	0f 93       	push	r16
 27c:	1f 93       	push	r17
 27e:	cf 93       	push	r28
 280:	df 93       	push	r29
 282:	00 d0       	rcall	.+0      	; 0x284 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
 284:	1f 92       	push	r1
 286:	cd b7       	in	r28, 0x3d	; 61
 288:	de b7       	in	r29, 0x3e	; 62
 28a:	8c 01       	movw	r16, r24
 28c:	dc 01       	movw	r26, r24
 28e:	ed 91       	ld	r30, X+
 290:	fc 91       	ld	r31, X
 292:	01 90       	ld	r0, Z+
 294:	f0 81       	ld	r31, Z
 296:	e0 2d       	mov	r30, r0
 298:	2b 83       	std	Y+3, r18	; 0x03
 29a:	4a 83       	std	Y+2, r20	; 0x02
 29c:	69 83       	std	Y+1, r22	; 0x01
 29e:	09 95       	icall
 2a0:	d8 01       	movw	r26, r16
 2a2:	ed 91       	ld	r30, X+
 2a4:	fc 91       	ld	r31, X
 2a6:	04 80       	ldd	r0, Z+4	; 0x04
 2a8:	f5 81       	ldd	r31, Z+5	; 0x05
 2aa:	e0 2d       	mov	r30, r0
 2ac:	69 81       	ldd	r22, Y+1	; 0x01
 2ae:	c8 01       	movw	r24, r16
 2b0:	09 95       	icall
 2b2:	d8 01       	movw	r26, r16
 2b4:	ed 91       	ld	r30, X+
 2b6:	fc 91       	ld	r31, X
 2b8:	04 80       	ldd	r0, Z+4	; 0x04
 2ba:	f5 81       	ldd	r31, Z+5	; 0x05
 2bc:	e0 2d       	mov	r30, r0
 2be:	4a 81       	ldd	r20, Y+2	; 0x02
 2c0:	64 2f       	mov	r22, r20
 2c2:	c8 01       	movw	r24, r16
 2c4:	09 95       	icall
 2c6:	d8 01       	movw	r26, r16
 2c8:	ed 91       	ld	r30, X+
 2ca:	fc 91       	ld	r31, X
 2cc:	04 80       	ldd	r0, Z+4	; 0x04
 2ce:	f5 81       	ldd	r31, Z+5	; 0x05
 2d0:	e0 2d       	mov	r30, r0
 2d2:	2b 81       	ldd	r18, Y+3	; 0x03
 2d4:	62 2f       	mov	r22, r18
 2d6:	c8 01       	movw	r24, r16
 2d8:	09 95       	icall
 2da:	d8 01       	movw	r26, r16
 2dc:	ed 91       	ld	r30, X+
 2de:	fc 91       	ld	r31, X
 2e0:	02 80       	ldd	r0, Z+2	; 0x02
 2e2:	f3 81       	ldd	r31, Z+3	; 0x03
 2e4:	e0 2d       	mov	r30, r0
 2e6:	c8 01       	movw	r24, r16
 2e8:	0f 90       	pop	r0
 2ea:	0f 90       	pop	r0
 2ec:	0f 90       	pop	r0
 2ee:	df 91       	pop	r29
 2f0:	cf 91       	pop	r28
 2f2:	1f 91       	pop	r17
 2f4:	0f 91       	pop	r16
 2f6:	09 94       	ijmp

000002f8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
 2f8:	0f 93       	push	r16
 2fa:	1f 93       	push	r17
 2fc:	cf 93       	push	r28
 2fe:	df 93       	push	r29
 300:	00 d0       	rcall	.+0      	; 0x302 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
 302:	00 d0       	rcall	.+0      	; 0x304 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
 304:	cd b7       	in	r28, 0x3d	; 61
 306:	de b7       	in	r29, 0x3e	; 62
 308:	8c 01       	movw	r16, r24
 30a:	dc 01       	movw	r26, r24
 30c:	ed 91       	ld	r30, X+
 30e:	fc 91       	ld	r31, X
 310:	01 90       	ld	r0, Z+
 312:	f0 81       	ld	r31, Z
 314:	e0 2d       	mov	r30, r0
 316:	2c 83       	std	Y+4, r18	; 0x04
 318:	3b 83       	std	Y+3, r19	; 0x03
 31a:	4a 83       	std	Y+2, r20	; 0x02
 31c:	69 83       	std	Y+1, r22	; 0x01
 31e:	09 95       	icall
 320:	d8 01       	movw	r26, r16
 322:	ed 91       	ld	r30, X+
 324:	fc 91       	ld	r31, X
 326:	04 80       	ldd	r0, Z+4	; 0x04
 328:	f5 81       	ldd	r31, Z+5	; 0x05
 32a:	e0 2d       	mov	r30, r0
 32c:	69 81       	ldd	r22, Y+1	; 0x01
 32e:	c8 01       	movw	r24, r16
 330:	09 95       	icall
 332:	d8 01       	movw	r26, r16
 334:	ed 91       	ld	r30, X+
 336:	fc 91       	ld	r31, X
 338:	04 80       	ldd	r0, Z+4	; 0x04
 33a:	f5 81       	ldd	r31, Z+5	; 0x05
 33c:	e0 2d       	mov	r30, r0
 33e:	4a 81       	ldd	r20, Y+2	; 0x02
 340:	64 2f       	mov	r22, r20
 342:	c8 01       	movw	r24, r16
 344:	09 95       	icall
 346:	d8 01       	movw	r26, r16
 348:	ed 91       	ld	r30, X+
 34a:	fc 91       	ld	r31, X
 34c:	04 80       	ldd	r0, Z+4	; 0x04
 34e:	f5 81       	ldd	r31, Z+5	; 0x05
 350:	e0 2d       	mov	r30, r0
 352:	3b 81       	ldd	r19, Y+3	; 0x03
 354:	63 2f       	mov	r22, r19
 356:	c8 01       	movw	r24, r16
 358:	09 95       	icall
 35a:	d8 01       	movw	r26, r16
 35c:	ed 91       	ld	r30, X+
 35e:	fc 91       	ld	r31, X
 360:	04 80       	ldd	r0, Z+4	; 0x04
 362:	f5 81       	ldd	r31, Z+5	; 0x05
 364:	e0 2d       	mov	r30, r0
 366:	2c 81       	ldd	r18, Y+4	; 0x04
 368:	62 2f       	mov	r22, r18
 36a:	c8 01       	movw	r24, r16
 36c:	09 95       	icall
 36e:	d8 01       	movw	r26, r16
 370:	ed 91       	ld	r30, X+
 372:	fc 91       	ld	r31, X
 374:	02 80       	ldd	r0, Z+2	; 0x02
 376:	f3 81       	ldd	r31, Z+3	; 0x03
 378:	e0 2d       	mov	r30, r0
 37a:	c8 01       	movw	r24, r16
 37c:	0f 90       	pop	r0
 37e:	0f 90       	pop	r0
 380:	0f 90       	pop	r0
 382:	0f 90       	pop	r0
 384:	df 91       	pop	r29
 386:	cf 91       	pop	r28
 388:	1f 91       	pop	r17
 38a:	0f 91       	pop	r16
 38c:	09 94       	ijmp

0000038e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
 38e:	cf 92       	push	r12
 390:	df 92       	push	r13
 392:	ef 92       	push	r14
 394:	ff 92       	push	r15
 396:	0f 93       	push	r16
 398:	1f 93       	push	r17
 39a:	cf 93       	push	r28
 39c:	df 93       	push	r29
 39e:	00 d0       	rcall	.+0      	; 0x3a0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
 3a0:	00 d0       	rcall	.+0      	; 0x3a2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
 3a2:	cd b7       	in	r28, 0x3d	; 61
 3a4:	de b7       	in	r29, 0x3e	; 62
 3a6:	6c 01       	movw	r12, r24
 3a8:	dc 01       	movw	r26, r24
 3aa:	ed 91       	ld	r30, X+
 3ac:	fc 91       	ld	r31, X
 3ae:	01 90       	ld	r0, Z+
 3b0:	f0 81       	ld	r31, Z
 3b2:	e0 2d       	mov	r30, r0
 3b4:	2b 83       	std	Y+3, r18	; 0x03
 3b6:	3c 83       	std	Y+4, r19	; 0x04
 3b8:	4a 83       	std	Y+2, r20	; 0x02
 3ba:	69 83       	std	Y+1, r22	; 0x01
 3bc:	09 95       	icall
 3be:	d6 01       	movw	r26, r12
 3c0:	ed 91       	ld	r30, X+
 3c2:	fc 91       	ld	r31, X
 3c4:	04 80       	ldd	r0, Z+4	; 0x04
 3c6:	f5 81       	ldd	r31, Z+5	; 0x05
 3c8:	e0 2d       	mov	r30, r0
 3ca:	69 81       	ldd	r22, Y+1	; 0x01
 3cc:	c6 01       	movw	r24, r12
 3ce:	09 95       	icall
 3d0:	d6 01       	movw	r26, r12
 3d2:	ed 91       	ld	r30, X+
 3d4:	fc 91       	ld	r31, X
 3d6:	04 80       	ldd	r0, Z+4	; 0x04
 3d8:	f5 81       	ldd	r31, Z+5	; 0x05
 3da:	e0 2d       	mov	r30, r0
 3dc:	4a 81       	ldd	r20, Y+2	; 0x02
 3de:	64 2f       	mov	r22, r20
 3e0:	c6 01       	movw	r24, r12
 3e2:	09 95       	icall
 3e4:	2b 81       	ldd	r18, Y+3	; 0x03
 3e6:	e2 2e       	mov	r14, r18
 3e8:	3c 81       	ldd	r19, Y+4	; 0x04
 3ea:	f3 2e       	mov	r15, r19
 3ec:	0e 0d       	add	r16, r14
 3ee:	1f 1d       	adc	r17, r15
 3f0:	d6 01       	movw	r26, r12
 3f2:	ed 91       	ld	r30, X+
 3f4:	fc 91       	ld	r31, X
 3f6:	e0 16       	cp	r14, r16
 3f8:	f1 06       	cpc	r15, r17
 3fa:	49 f0       	breq	.+18     	; 0x40e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
 3fc:	d7 01       	movw	r26, r14
 3fe:	6d 91       	ld	r22, X+
 400:	7d 01       	movw	r14, r26
 402:	04 80       	ldd	r0, Z+4	; 0x04
 404:	f5 81       	ldd	r31, Z+5	; 0x05
 406:	e0 2d       	mov	r30, r0
 408:	c6 01       	movw	r24, r12
 40a:	09 95       	icall
 40c:	f1 cf       	rjmp	.-30     	; 0x3f0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
 40e:	02 80       	ldd	r0, Z+2	; 0x02
 410:	f3 81       	ldd	r31, Z+3	; 0x03
 412:	e0 2d       	mov	r30, r0
 414:	c6 01       	movw	r24, r12
 416:	0f 90       	pop	r0
 418:	0f 90       	pop	r0
 41a:	0f 90       	pop	r0
 41c:	0f 90       	pop	r0
 41e:	df 91       	pop	r29
 420:	cf 91       	pop	r28
 422:	1f 91       	pop	r17
 424:	0f 91       	pop	r16
 426:	ff 90       	pop	r15
 428:	ef 90       	pop	r14
 42a:	df 90       	pop	r13
 42c:	cf 90       	pop	r12
 42e:	09 94       	ijmp

00000430 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
 430:	ef 92       	push	r14
 432:	ff 92       	push	r15
 434:	1f 93       	push	r17
 436:	cf 93       	push	r28
 438:	df 93       	push	r29
 43a:	1f 92       	push	r1
 43c:	cd b7       	in	r28, 0x3d	; 61
 43e:	de b7       	in	r29, 0x3e	; 62
 440:	7c 01       	movw	r14, r24
 442:	16 2f       	mov	r17, r22
 444:	dc 01       	movw	r26, r24
 446:	ed 91       	ld	r30, X+
 448:	fc 91       	ld	r31, X
 44a:	01 90       	ld	r0, Z+
 44c:	f0 81       	ld	r31, Z
 44e:	e0 2d       	mov	r30, r0
 450:	49 83       	std	Y+1, r20	; 0x01
 452:	09 95       	icall
 454:	d7 01       	movw	r26, r14
 456:	ed 91       	ld	r30, X+
 458:	fc 91       	ld	r31, X
 45a:	04 80       	ldd	r0, Z+4	; 0x04
 45c:	f5 81       	ldd	r31, Z+5	; 0x05
 45e:	e0 2d       	mov	r30, r0
 460:	61 2f       	mov	r22, r17
 462:	c7 01       	movw	r24, r14
 464:	09 95       	icall
 466:	d7 01       	movw	r26, r14
 468:	ed 91       	ld	r30, X+
 46a:	fc 91       	ld	r31, X
 46c:	04 80       	ldd	r0, Z+4	; 0x04
 46e:	f5 81       	ldd	r31, Z+5	; 0x05
 470:	e0 2d       	mov	r30, r0
 472:	49 81       	ldd	r20, Y+1	; 0x01
 474:	64 2f       	mov	r22, r20
 476:	c7 01       	movw	r24, r14
 478:	09 95       	icall
 47a:	d7 01       	movw	r26, r14
 47c:	ed 91       	ld	r30, X+
 47e:	fc 91       	ld	r31, X
 480:	01 90       	ld	r0, Z+
 482:	f0 81       	ld	r31, Z
 484:	e0 2d       	mov	r30, r0
 486:	c7 01       	movw	r24, r14
 488:	09 95       	icall
 48a:	d7 01       	movw	r26, r14
 48c:	ed 91       	ld	r30, X+
 48e:	fc 91       	ld	r31, X
 490:	61 2f       	mov	r22, r17
 492:	61 60       	ori	r22, 0x01	; 1
 494:	04 80       	ldd	r0, Z+4	; 0x04
 496:	f5 81       	ldd	r31, Z+5	; 0x05
 498:	e0 2d       	mov	r30, r0
 49a:	c7 01       	movw	r24, r14
 49c:	09 95       	icall
 49e:	d7 01       	movw	r26, r14
 4a0:	ed 91       	ld	r30, X+
 4a2:	fc 91       	ld	r31, X
 4a4:	06 80       	ldd	r0, Z+6	; 0x06
 4a6:	f7 81       	ldd	r31, Z+7	; 0x07
 4a8:	e0 2d       	mov	r30, r0
 4aa:	60 e0       	ldi	r22, 0x00	; 0
 4ac:	c7 01       	movw	r24, r14
 4ae:	09 95       	icall
 4b0:	18 2f       	mov	r17, r24
 4b2:	d7 01       	movw	r26, r14
 4b4:	ed 91       	ld	r30, X+
 4b6:	fc 91       	ld	r31, X
 4b8:	02 80       	ldd	r0, Z+2	; 0x02
 4ba:	f3 81       	ldd	r31, Z+3	; 0x03
 4bc:	e0 2d       	mov	r30, r0
 4be:	c7 01       	movw	r24, r14
 4c0:	09 95       	icall
 4c2:	81 2f       	mov	r24, r17
 4c4:	0f 90       	pop	r0
 4c6:	df 91       	pop	r29
 4c8:	cf 91       	pop	r28
 4ca:	1f 91       	pop	r17
 4cc:	ff 90       	pop	r15
 4ce:	ef 90       	pop	r14
 4d0:	08 95       	ret

000004d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
 4d2:	ef 92       	push	r14
 4d4:	ff 92       	push	r15
 4d6:	0f 93       	push	r16
 4d8:	1f 93       	push	r17
 4da:	cf 93       	push	r28
 4dc:	df 93       	push	r29
 4de:	1f 92       	push	r1
 4e0:	cd b7       	in	r28, 0x3d	; 61
 4e2:	de b7       	in	r29, 0x3e	; 62
 4e4:	7c 01       	movw	r14, r24
 4e6:	16 2f       	mov	r17, r22
 4e8:	dc 01       	movw	r26, r24
 4ea:	ed 91       	ld	r30, X+
 4ec:	fc 91       	ld	r31, X
 4ee:	01 90       	ld	r0, Z+
 4f0:	f0 81       	ld	r31, Z
 4f2:	e0 2d       	mov	r30, r0
 4f4:	49 83       	std	Y+1, r20	; 0x01
 4f6:	09 95       	icall
 4f8:	d7 01       	movw	r26, r14
 4fa:	ed 91       	ld	r30, X+
 4fc:	fc 91       	ld	r31, X
 4fe:	04 80       	ldd	r0, Z+4	; 0x04
 500:	f5 81       	ldd	r31, Z+5	; 0x05
 502:	e0 2d       	mov	r30, r0
 504:	61 2f       	mov	r22, r17
 506:	c7 01       	movw	r24, r14
 508:	09 95       	icall
 50a:	d7 01       	movw	r26, r14
 50c:	ed 91       	ld	r30, X+
 50e:	fc 91       	ld	r31, X
 510:	04 80       	ldd	r0, Z+4	; 0x04
 512:	f5 81       	ldd	r31, Z+5	; 0x05
 514:	e0 2d       	mov	r30, r0
 516:	49 81       	ldd	r20, Y+1	; 0x01
 518:	64 2f       	mov	r22, r20
 51a:	c7 01       	movw	r24, r14
 51c:	09 95       	icall
 51e:	d7 01       	movw	r26, r14
 520:	ed 91       	ld	r30, X+
 522:	fc 91       	ld	r31, X
 524:	01 90       	ld	r0, Z+
 526:	f0 81       	ld	r31, Z
 528:	e0 2d       	mov	r30, r0
 52a:	c7 01       	movw	r24, r14
 52c:	09 95       	icall
 52e:	d7 01       	movw	r26, r14
 530:	ed 91       	ld	r30, X+
 532:	fc 91       	ld	r31, X
 534:	61 2f       	mov	r22, r17
 536:	61 60       	ori	r22, 0x01	; 1
 538:	04 80       	ldd	r0, Z+4	; 0x04
 53a:	f5 81       	ldd	r31, Z+5	; 0x05
 53c:	e0 2d       	mov	r30, r0
 53e:	c7 01       	movw	r24, r14
 540:	09 95       	icall
 542:	d7 01       	movw	r26, r14
 544:	ed 91       	ld	r30, X+
 546:	fc 91       	ld	r31, X
 548:	06 80       	ldd	r0, Z+6	; 0x06
 54a:	f7 81       	ldd	r31, Z+7	; 0x07
 54c:	e0 2d       	mov	r30, r0
 54e:	61 e0       	ldi	r22, 0x01	; 1
 550:	c7 01       	movw	r24, r14
 552:	09 95       	icall
 554:	08 2f       	mov	r16, r24
 556:	10 e0       	ldi	r17, 0x00	; 0
 558:	10 2f       	mov	r17, r16
 55a:	00 27       	eor	r16, r16
 55c:	d7 01       	movw	r26, r14
 55e:	ed 91       	ld	r30, X+
 560:	fc 91       	ld	r31, X
 562:	06 80       	ldd	r0, Z+6	; 0x06
 564:	f7 81       	ldd	r31, Z+7	; 0x07
 566:	e0 2d       	mov	r30, r0
 568:	60 e0       	ldi	r22, 0x00	; 0
 56a:	c7 01       	movw	r24, r14
 56c:	09 95       	icall
 56e:	08 2b       	or	r16, r24
 570:	d7 01       	movw	r26, r14
 572:	ed 91       	ld	r30, X+
 574:	fc 91       	ld	r31, X
 576:	02 80       	ldd	r0, Z+2	; 0x02
 578:	f3 81       	ldd	r31, Z+3	; 0x03
 57a:	e0 2d       	mov	r30, r0
 57c:	c7 01       	movw	r24, r14
 57e:	09 95       	icall
 580:	c8 01       	movw	r24, r16
 582:	0f 90       	pop	r0
 584:	df 91       	pop	r29
 586:	cf 91       	pop	r28
 588:	1f 91       	pop	r17
 58a:	0f 91       	pop	r16
 58c:	ff 90       	pop	r15
 58e:	ef 90       	pop	r14
 590:	08 95       	ret

00000592 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
 592:	cf 92       	push	r12
 594:	df 92       	push	r13
 596:	ef 92       	push	r14
 598:	ff 92       	push	r15
 59a:	0f 93       	push	r16
 59c:	1f 93       	push	r17
 59e:	cf 93       	push	r28
 5a0:	df 93       	push	r29
 5a2:	00 d0       	rcall	.+0      	; 0x5a4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
 5a4:	1f 92       	push	r1
 5a6:	cd b7       	in	r28, 0x3d	; 61
 5a8:	de b7       	in	r29, 0x3e	; 62
 5aa:	6c 01       	movw	r12, r24
 5ac:	f6 2e       	mov	r15, r22
 5ae:	dc 01       	movw	r26, r24
 5b0:	ed 91       	ld	r30, X+
 5b2:	fc 91       	ld	r31, X
 5b4:	01 90       	ld	r0, Z+
 5b6:	f0 81       	ld	r31, Z
 5b8:	e0 2d       	mov	r30, r0
 5ba:	2a 83       	std	Y+2, r18	; 0x02
 5bc:	3b 83       	std	Y+3, r19	; 0x03
 5be:	49 83       	std	Y+1, r20	; 0x01
 5c0:	09 95       	icall
 5c2:	d6 01       	movw	r26, r12
 5c4:	ed 91       	ld	r30, X+
 5c6:	fc 91       	ld	r31, X
 5c8:	04 80       	ldd	r0, Z+4	; 0x04
 5ca:	f5 81       	ldd	r31, Z+5	; 0x05
 5cc:	e0 2d       	mov	r30, r0
 5ce:	6f 2d       	mov	r22, r15
 5d0:	c6 01       	movw	r24, r12
 5d2:	09 95       	icall
 5d4:	d6 01       	movw	r26, r12
 5d6:	ed 91       	ld	r30, X+
 5d8:	fc 91       	ld	r31, X
 5da:	04 80       	ldd	r0, Z+4	; 0x04
 5dc:	f5 81       	ldd	r31, Z+5	; 0x05
 5de:	e0 2d       	mov	r30, r0
 5e0:	49 81       	ldd	r20, Y+1	; 0x01
 5e2:	64 2f       	mov	r22, r20
 5e4:	c6 01       	movw	r24, r12
 5e6:	09 95       	icall
 5e8:	d6 01       	movw	r26, r12
 5ea:	ed 91       	ld	r30, X+
 5ec:	fc 91       	ld	r31, X
 5ee:	01 90       	ld	r0, Z+
 5f0:	f0 81       	ld	r31, Z
 5f2:	e0 2d       	mov	r30, r0
 5f4:	c6 01       	movw	r24, r12
 5f6:	09 95       	icall
 5f8:	d6 01       	movw	r26, r12
 5fa:	ed 91       	ld	r30, X+
 5fc:	fc 91       	ld	r31, X
 5fe:	6f 2d       	mov	r22, r15
 600:	61 60       	ori	r22, 0x01	; 1
 602:	04 80       	ldd	r0, Z+4	; 0x04
 604:	f5 81       	ldd	r31, Z+5	; 0x05
 606:	e0 2d       	mov	r30, r0
 608:	c6 01       	movw	r24, r12
 60a:	09 95       	icall
 60c:	2a 81       	ldd	r18, Y+2	; 0x02
 60e:	e2 2e       	mov	r14, r18
 610:	3b 81       	ldd	r19, Y+3	; 0x03
 612:	f3 2e       	mov	r15, r19
 614:	0e 0d       	add	r16, r14
 616:	1f 1d       	adc	r17, r15
 618:	d6 01       	movw	r26, r12
 61a:	ed 91       	ld	r30, X+
 61c:	fc 91       	ld	r31, X
 61e:	e0 16       	cp	r14, r16
 620:	f1 06       	cpc	r15, r17
 622:	51 f0       	breq	.+20     	; 0x638 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
 624:	06 80       	ldd	r0, Z+6	; 0x06
 626:	f7 81       	ldd	r31, Z+7	; 0x07
 628:	e0 2d       	mov	r30, r0
 62a:	61 e0       	ldi	r22, 0x01	; 1
 62c:	c6 01       	movw	r24, r12
 62e:	09 95       	icall
 630:	f7 01       	movw	r30, r14
 632:	81 93       	st	Z+, r24
 634:	7f 01       	movw	r14, r30
 636:	f0 cf       	rjmp	.-32     	; 0x618 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
 638:	02 80       	ldd	r0, Z+2	; 0x02
 63a:	f3 81       	ldd	r31, Z+3	; 0x03
 63c:	e0 2d       	mov	r30, r0
 63e:	c6 01       	movw	r24, r12
 640:	0f 90       	pop	r0
 642:	0f 90       	pop	r0
 644:	0f 90       	pop	r0
 646:	df 91       	pop	r29
 648:	cf 91       	pop	r28
 64a:	1f 91       	pop	r17
 64c:	0f 91       	pop	r16
 64e:	ff 90       	pop	r15
 650:	ef 90       	pop	r14
 652:	df 90       	pop	r13
 654:	cf 90       	pop	r12
 656:	09 94       	ijmp

00000658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 658:	88 23       	and	r24, r24
 65a:	21 f0       	breq	.+8      	; 0x664 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 65c:	bf 98       	cbi	0x17, 7	; 23
 65e:	82 30       	cpi	r24, 0x02	; 2
 660:	19 f0       	breq	.+6      	; 0x668 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 662:	08 95       	ret
 664:	bf 9a       	sbi	0x17, 7	; 23
 666:	08 95       	ret
 668:	c7 9a       	sbi	0x18, 7	; 24
 66a:	08 95       	ret

0000066c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
 66c:	00 00       	nop
 66e:	00 00       	nop
 670:	08 95       	ret

00000672 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
 672:	1f 93       	push	r17
 674:	cf 93       	push	r28
 676:	df 93       	push	r29
 678:	16 2f       	mov	r17, r22
 67a:	bd 98       	cbi	0x17, 5	; 23
 67c:	80 e0       	ldi	r24, 0x00	; 0
 67e:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 682:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 686:	d8 e0       	ldi	r29, 0x08	; 8
 688:	c0 e0       	ldi	r28, 0x00	; 0
 68a:	cc 0f       	add	r28, r28
 68c:	81 e0       	ldi	r24, 0x01	; 1
 68e:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 692:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 696:	b5 99       	sbic	0x16, 5	; 22
 698:	c1 60       	ori	r28, 0x01	; 1
 69a:	80 e0       	ldi	r24, 0x00	; 0
 69c:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6a0:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6a4:	d1 50       	subi	r29, 0x01	; 1
 6a6:	89 f7       	brne	.-30     	; 0x68a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
 6a8:	11 23       	and	r17, r17
 6aa:	11 f0       	breq	.+4      	; 0x6b0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
 6ac:	bd 9a       	sbi	0x17, 5	; 23
 6ae:	01 c0       	rjmp	.+2      	; 0x6b2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
 6b0:	bd 98       	cbi	0x17, 5	; 23
 6b2:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6b6:	81 e0       	ldi	r24, 0x01	; 1
 6b8:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6bc:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6c0:	80 e0       	ldi	r24, 0x00	; 0
 6c2:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6c6:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6ca:	bd 98       	cbi	0x17, 5	; 23
 6cc:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6d0:	8c 2f       	mov	r24, r28
 6d2:	df 91       	pop	r29
 6d4:	cf 91       	pop	r28
 6d6:	1f 91       	pop	r17
 6d8:	08 95       	ret

000006da <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
 6da:	cf 93       	push	r28
 6dc:	df 93       	push	r29
 6de:	d6 2f       	mov	r29, r22
 6e0:	c8 e0       	ldi	r28, 0x08	; 8
 6e2:	80 e0       	ldi	r24, 0x00	; 0
 6e4:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 6e8:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6ec:	d7 ff       	sbrs	r29, 7
 6ee:	02 c0       	rjmp	.+4      	; 0x6f4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
 6f0:	bd 98       	cbi	0x17, 5	; 23
 6f2:	01 c0       	rjmp	.+2      	; 0x6f6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
 6f4:	bd 9a       	sbi	0x17, 5	; 23
 6f6:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 6fa:	81 e0       	ldi	r24, 0x01	; 1
 6fc:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 700:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 704:	dd 0f       	add	r29, r29
 706:	c1 50       	subi	r28, 0x01	; 1
 708:	61 f7       	brne	.-40     	; 0x6e2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
 70a:	80 e0       	ldi	r24, 0x00	; 0
 70c:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 710:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 714:	bd 98       	cbi	0x17, 5	; 23
 716:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 71a:	81 e0       	ldi	r24, 0x01	; 1
 71c:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 720:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 724:	c6 b3       	in	r28, 0x16	; 22
 726:	80 e0       	ldi	r24, 0x00	; 0
 728:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 72c:	0e 94 36 03 	call	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 730:	c5 fb       	bst	r28, 5
 732:	cc 27       	eor	r28, r28
 734:	c0 f9       	bld	r28, 0
 736:	81 e0       	ldi	r24, 0x01	; 1
 738:	8c 27       	eor	r24, r28
 73a:	df 91       	pop	r29
 73c:	cf 91       	pop	r28
 73e:	08 95       	ret

00000740 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
 740:	81 e0       	ldi	r24, 0x01	; 1
 742:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 746:	bd 98       	cbi	0x17, 5	; 23
 748:	81 e0       	ldi	r24, 0x01	; 1
 74a:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 74e:	bd 9a       	sbi	0x17, 5	; 23
 750:	80 e0       	ldi	r24, 0x00	; 0
 752:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 756:	bd 98       	cbi	0x17, 5	; 23
 758:	0c 94 36 03 	jmp	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000075c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
 75c:	80 e0       	ldi	r24, 0x00	; 0
 75e:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 762:	bd 9a       	sbi	0x17, 5	; 23
 764:	81 e0       	ldi	r24, 0x01	; 1
 766:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 76a:	bd 9a       	sbi	0x17, 5	; 23
 76c:	81 e0       	ldi	r24, 0x01	; 1
 76e:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 772:	bd 98       	cbi	0x17, 5	; 23
 774:	0c 94 36 03 	jmp	0x66c	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000778 <_GLOBAL__sub_I_i2c>:
 778:	84 e7       	ldi	r24, 0x74	; 116
 77a:	90 e0       	ldi	r25, 0x00	; 0
 77c:	90 93 89 00 	sts	0x0089, r25
 780:	80 93 88 00 	sts	0x0088, r24
 784:	bd 98       	cbi	0x17, 5	; 23
 786:	81 e0       	ldi	r24, 0x01	; 1
 788:	0e 94 2c 03 	call	0x658	; 0x658 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 78c:	c5 98       	cbi	0x18, 5	; 24
 78e:	c7 98       	cbi	0x18, 7	; 24
 790:	08 95       	ret

00000792 <_Znwj>:
 792:	0c 94 cf 04 	jmp	0x99e	; 0x99e <malloc>

00000796 <_ZdlPv>:
 796:	0c 94 64 05 	jmp	0xac8	; 0xac8 <free>

0000079a <_ZN5TimerC1Ev>:
 79a:	ed e8       	ldi	r30, 0x8D	; 141
 79c:	f0 e0       	ldi	r31, 0x00	; 0
 79e:	11 82       	std	Z+1, r1	; 0x01
 7a0:	10 82       	st	Z, r1
 7a2:	13 82       	std	Z+3, r1	; 0x03
 7a4:	12 82       	std	Z+2, r1	; 0x02
 7a6:	15 82       	std	Z+5, r1	; 0x05
 7a8:	14 82       	std	Z+4, r1	; 0x04
 7aa:	16 82       	std	Z+6, r1	; 0x06
 7ac:	37 96       	adiw	r30, 0x07	; 7
 7ae:	80 e0       	ldi	r24, 0x00	; 0
 7b0:	e5 3c       	cpi	r30, 0xC5	; 197
 7b2:	f8 07       	cpc	r31, r24
 7b4:	a1 f7       	brne	.-24     	; 0x79e <_ZN5TimerC1Ev+0x4>
 7b6:	83 b7       	in	r24, 0x33	; 51
 7b8:	88 60       	ori	r24, 0x08	; 8
 7ba:	83 bf       	out	0x33, r24	; 51
 7bc:	8b e9       	ldi	r24, 0x9B	; 155
 7be:	8c bf       	out	0x3c, r24	; 60
 7c0:	83 e0       	ldi	r24, 0x03	; 3
 7c2:	83 bf       	out	0x33, r24	; 51
 7c4:	89 b7       	in	r24, 0x39	; 57
 7c6:	82 60       	ori	r24, 0x02	; 2
 7c8:	89 bf       	out	0x39, r24	; 57
 7ca:	78 94       	sei
 7cc:	08 95       	ret

000007ce <_ZN5Timer8add_taskEP4Taskj>:
 7ce:	f8 94       	cli
 7d0:	ed e8       	ldi	r30, 0x8D	; 141
 7d2:	f0 e0       	ldi	r31, 0x00	; 0
 7d4:	80 e0       	ldi	r24, 0x00	; 0
 7d6:	90 e0       	ldi	r25, 0x00	; 0
 7d8:	20 81       	ld	r18, Z
 7da:	31 81       	ldd	r19, Z+1	; 0x01
 7dc:	23 2b       	or	r18, r19
 7de:	81 f4       	brne	.+32     	; 0x800 <_ZN5Timer8add_taskEP4Taskj+0x32>
 7e0:	27 e0       	ldi	r18, 0x07	; 7
 7e2:	28 9f       	mul	r18, r24
 7e4:	f0 01       	movw	r30, r0
 7e6:	29 9f       	mul	r18, r25
 7e8:	f0 0d       	add	r31, r0
 7ea:	11 24       	eor	r1, r1
 7ec:	e3 57       	subi	r30, 0x73	; 115
 7ee:	ff 4f       	sbci	r31, 0xFF	; 255
 7f0:	71 83       	std	Z+1, r23	; 0x01
 7f2:	60 83       	st	Z, r22
 7f4:	53 83       	std	Z+3, r21	; 0x03
 7f6:	42 83       	std	Z+2, r20	; 0x02
 7f8:	55 83       	std	Z+5, r21	; 0x05
 7fa:	44 83       	std	Z+4, r20	; 0x04
 7fc:	16 82       	std	Z+6, r1	; 0x06
 7fe:	07 c0       	rjmp	.+14     	; 0x80e <_ZN5Timer8add_taskEP4Taskj+0x40>
 800:	01 96       	adiw	r24, 0x01	; 1
 802:	37 96       	adiw	r30, 0x07	; 7
 804:	88 30       	cpi	r24, 0x08	; 8
 806:	91 05       	cpc	r25, r1
 808:	39 f7       	brne	.-50     	; 0x7d8 <_ZN5Timer8add_taskEP4Taskj+0xa>
 80a:	8f ef       	ldi	r24, 0xFF	; 255
 80c:	9f ef       	ldi	r25, 0xFF	; 255
 80e:	78 94       	sei
 810:	08 95       	ret

00000812 <_ZN5Timer4mainEv>:
 812:	cf 93       	push	r28
 814:	df 93       	push	r29
 816:	c3 e9       	ldi	r28, 0x93	; 147
 818:	d0 e0       	ldi	r29, 0x00	; 0
 81a:	fe 01       	movw	r30, r28
 81c:	36 97       	sbiw	r30, 0x06	; 6
 81e:	80 81       	ld	r24, Z
 820:	91 81       	ldd	r25, Z+1	; 0x01
 822:	00 97       	sbiw	r24, 0x00	; 0
 824:	59 f0       	breq	.+22     	; 0x83c <_ZN5Timer4mainEv+0x2a>
 826:	28 81       	ld	r18, Y
 828:	22 23       	and	r18, r18
 82a:	41 f0       	breq	.+16     	; 0x83c <_ZN5Timer4mainEv+0x2a>
 82c:	18 82       	st	Y, r1
 82e:	dc 01       	movw	r26, r24
 830:	ed 91       	ld	r30, X+
 832:	fc 91       	ld	r31, X
 834:	04 80       	ldd	r0, Z+4	; 0x04
 836:	f5 81       	ldd	r31, Z+5	; 0x05
 838:	e0 2d       	mov	r30, r0
 83a:	09 95       	icall
 83c:	27 96       	adiw	r28, 0x07	; 7
 83e:	b0 e0       	ldi	r27, 0x00	; 0
 840:	cb 3c       	cpi	r28, 0xCB	; 203
 842:	db 07       	cpc	r29, r27
 844:	51 f7       	brne	.-44     	; 0x81a <_ZN5Timer4mainEv+0x8>
 846:	df 91       	pop	r29
 848:	cf 91       	pop	r28
 84a:	08 95       	ret

0000084c <_ZN5Timer8get_timeEv>:
 84c:	cf 93       	push	r28
 84e:	df 93       	push	r29
 850:	00 d0       	rcall	.+0      	; 0x852 <_ZN5Timer8get_timeEv+0x6>
 852:	00 d0       	rcall	.+0      	; 0x854 <_ZN5Timer8get_timeEv+0x8>
 854:	cd b7       	in	r28, 0x3d	; 61
 856:	de b7       	in	r29, 0x3e	; 62
 858:	f8 94       	cli
 85a:	80 91 c5 00 	lds	r24, 0x00C5
 85e:	90 91 c6 00 	lds	r25, 0x00C6
 862:	a0 91 c7 00 	lds	r26, 0x00C7
 866:	b0 91 c8 00 	lds	r27, 0x00C8
 86a:	89 83       	std	Y+1, r24	; 0x01
 86c:	9a 83       	std	Y+2, r25	; 0x02
 86e:	ab 83       	std	Y+3, r26	; 0x03
 870:	bc 83       	std	Y+4, r27	; 0x04
 872:	78 94       	sei
 874:	69 81       	ldd	r22, Y+1	; 0x01
 876:	7a 81       	ldd	r23, Y+2	; 0x02
 878:	8b 81       	ldd	r24, Y+3	; 0x03
 87a:	9c 81       	ldd	r25, Y+4	; 0x04
 87c:	0f 90       	pop	r0
 87e:	0f 90       	pop	r0
 880:	0f 90       	pop	r0
 882:	0f 90       	pop	r0
 884:	df 91       	pop	r29
 886:	cf 91       	pop	r28
 888:	08 95       	ret

0000088a <_ZN5Timer8delay_msEm>:
 88a:	cf 92       	push	r12
 88c:	df 92       	push	r13
 88e:	ef 92       	push	r14
 890:	ff 92       	push	r15
 892:	0f 93       	push	r16
 894:	1f 93       	push	r17
 896:	cf 93       	push	r28
 898:	df 93       	push	r29
 89a:	00 d0       	rcall	.+0      	; 0x89c <_ZN5Timer8delay_msEm+0x12>
 89c:	00 d0       	rcall	.+0      	; 0x89e <_ZN5Timer8delay_msEm+0x14>
 89e:	cd b7       	in	r28, 0x3d	; 61
 8a0:	de b7       	in	r29, 0x3e	; 62
 8a2:	8c 01       	movw	r16, r24
 8a4:	6a 01       	movw	r12, r20
 8a6:	7b 01       	movw	r14, r22
 8a8:	0e 94 26 04 	call	0x84c	; 0x84c <_ZN5Timer8get_timeEv>
 8ac:	c6 0e       	add	r12, r22
 8ae:	d7 1e       	adc	r13, r23
 8b0:	e8 1e       	adc	r14, r24
 8b2:	f9 1e       	adc	r15, r25
 8b4:	c9 82       	std	Y+1, r12	; 0x01
 8b6:	da 82       	std	Y+2, r13	; 0x02
 8b8:	eb 82       	std	Y+3, r14	; 0x03
 8ba:	fc 82       	std	Y+4, r15	; 0x04
 8bc:	c8 01       	movw	r24, r16
 8be:	0e 94 26 04 	call	0x84c	; 0x84c <_ZN5Timer8get_timeEv>
 8c2:	c9 80       	ldd	r12, Y+1	; 0x01
 8c4:	da 80       	ldd	r13, Y+2	; 0x02
 8c6:	eb 80       	ldd	r14, Y+3	; 0x03
 8c8:	fc 80       	ldd	r15, Y+4	; 0x04
 8ca:	6c 15       	cp	r22, r12
 8cc:	7d 05       	cpc	r23, r13
 8ce:	8e 05       	cpc	r24, r14
 8d0:	9f 05       	cpc	r25, r15
 8d2:	10 f4       	brcc	.+4      	; 0x8d8 <_ZN5Timer8delay_msEm+0x4e>
 8d4:	00 00       	nop
 8d6:	f2 cf       	rjmp	.-28     	; 0x8bc <_ZN5Timer8delay_msEm+0x32>
 8d8:	0f 90       	pop	r0
 8da:	0f 90       	pop	r0
 8dc:	0f 90       	pop	r0
 8de:	0f 90       	pop	r0
 8e0:	df 91       	pop	r29
 8e2:	cf 91       	pop	r28
 8e4:	1f 91       	pop	r17
 8e6:	0f 91       	pop	r16
 8e8:	ff 90       	pop	r15
 8ea:	ef 90       	pop	r14
 8ec:	df 90       	pop	r13
 8ee:	cf 90       	pop	r12
 8f0:	08 95       	ret

000008f2 <__vector_19>:
 8f2:	1f 92       	push	r1
 8f4:	0f 92       	push	r0
 8f6:	0f b6       	in	r0, 0x3f	; 63
 8f8:	0f 92       	push	r0
 8fa:	11 24       	eor	r1, r1
 8fc:	8f 93       	push	r24
 8fe:	9f 93       	push	r25
 900:	af 93       	push	r26
 902:	bf 93       	push	r27
 904:	ef 93       	push	r30
 906:	ff 93       	push	r31
 908:	ed e8       	ldi	r30, 0x8D	; 141
 90a:	f0 e0       	ldi	r31, 0x00	; 0
 90c:	a3 e9       	ldi	r26, 0x93	; 147
 90e:	b0 e0       	ldi	r27, 0x00	; 0
 910:	84 81       	ldd	r24, Z+4	; 0x04
 912:	95 81       	ldd	r25, Z+5	; 0x05
 914:	00 97       	sbiw	r24, 0x00	; 0
 916:	21 f0       	breq	.+8      	; 0x920 <__vector_19+0x2e>
 918:	01 97       	sbiw	r24, 0x01	; 1
 91a:	95 83       	std	Z+5, r25	; 0x05
 91c:	84 83       	std	Z+4, r24	; 0x04
 91e:	09 c0       	rjmp	.+18     	; 0x932 <__vector_19+0x40>
 920:	82 81       	ldd	r24, Z+2	; 0x02
 922:	93 81       	ldd	r25, Z+3	; 0x03
 924:	95 83       	std	Z+5, r25	; 0x05
 926:	84 83       	std	Z+4, r24	; 0x04
 928:	8c 91       	ld	r24, X
 92a:	8f 3f       	cpi	r24, 0xFF	; 255
 92c:	11 f0       	breq	.+4      	; 0x932 <__vector_19+0x40>
 92e:	8f 5f       	subi	r24, 0xFF	; 255
 930:	8c 93       	st	X, r24
 932:	37 96       	adiw	r30, 0x07	; 7
 934:	17 96       	adiw	r26, 0x07	; 7
 936:	80 e0       	ldi	r24, 0x00	; 0
 938:	e5 3c       	cpi	r30, 0xC5	; 197
 93a:	f8 07       	cpc	r31, r24
 93c:	49 f7       	brne	.-46     	; 0x910 <__vector_19+0x1e>
 93e:	80 91 c5 00 	lds	r24, 0x00C5
 942:	90 91 c6 00 	lds	r25, 0x00C6
 946:	a0 91 c7 00 	lds	r26, 0x00C7
 94a:	b0 91 c8 00 	lds	r27, 0x00C8
 94e:	01 96       	adiw	r24, 0x01	; 1
 950:	a1 1d       	adc	r26, r1
 952:	b1 1d       	adc	r27, r1
 954:	80 93 c5 00 	sts	0x00C5, r24
 958:	90 93 c6 00 	sts	0x00C6, r25
 95c:	a0 93 c7 00 	sts	0x00C7, r26
 960:	b0 93 c8 00 	sts	0x00C8, r27
 964:	ff 91       	pop	r31
 966:	ef 91       	pop	r30
 968:	bf 91       	pop	r27
 96a:	af 91       	pop	r26
 96c:	9f 91       	pop	r25
 96e:	8f 91       	pop	r24
 970:	0f 90       	pop	r0
 972:	0f be       	out	0x3f, r0	; 63
 974:	0f 90       	pop	r0
 976:	1f 90       	pop	r1
 978:	18 95       	reti

0000097a <_GLOBAL__sub_I_g_rt_time>:
 97a:	8c e8       	ldi	r24, 0x8C	; 140
 97c:	90 e0       	ldi	r25, 0x00	; 0
 97e:	0c 94 cd 03 	jmp	0x79a	; 0x79a <_ZN5TimerC1Ev>

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
