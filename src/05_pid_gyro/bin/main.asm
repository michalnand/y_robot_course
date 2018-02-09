
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
      4c:	0c 94 44 08 	jmp	0x1088	; 0x1088 <__vector_19>
      50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
      54:	45 05       	cpc	r20, r5
      56:	88 08       	sbc	r8, r8
      58:	8c 08       	sbc	r8, r12

0000005a <__ctors_end>:
      5a:	90 08       	sbc	r9, r0

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
      6e:	e2 ec       	ldi	r30, 0xC2	; 194
      70:	f7 e1       	ldi	r31, 0x17	; 23
      72:	02 c0       	rjmp	.+4      	; 0x78 <__do_copy_data+0x10>
      74:	05 90       	lpm	r0, Z+
      76:	0d 92       	st	X+, r0
      78:	a2 39       	cpi	r26, 0x92	; 146
      7a:	b1 07       	cpc	r27, r17
      7c:	d9 f7       	brne	.-10     	; 0x74 <__do_copy_data+0xc>

0000007e <__do_clear_bss>:
      7e:	20 e0       	ldi	r18, 0x00	; 0
      80:	a2 e9       	ldi	r26, 0x92	; 146
      82:	b0 e0       	ldi	r27, 0x00	; 0
      84:	01 c0       	rjmp	.+2      	; 0x88 <.do_clear_bss_start>

00000086 <.do_clear_bss_loop>:
      86:	1d 92       	st	X+, r1

00000088 <.do_clear_bss_start>:
      88:	a8 3d       	cpi	r26, 0xD8	; 216
      8a:	b2 07       	cpc	r27, r18
      8c:	e1 f7       	brne	.-8      	; 0x86 <.do_clear_bss_loop>

0000008e <__do_global_ctors>:
      8e:	10 e0       	ldi	r17, 0x00	; 0
      90:	cd e2       	ldi	r28, 0x2D	; 45
      92:	d0 e0       	ldi	r29, 0x00	; 0
      94:	04 c0       	rjmp	.+8      	; 0x9e <__do_global_ctors+0x10>
      96:	21 97       	sbiw	r28, 0x01	; 1
      98:	fe 01       	movw	r30, r28
      9a:	0e 94 d5 08 	call	0x11aa	; 0x11aa <__tablejump2__>
      9e:	ca 32       	cpi	r28, 0x2A	; 42
      a0:	d1 07       	cpc	r29, r17
      a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
      a4:	0e 94 e2 00 	call	0x1c4	; 0x1c4 <main>
      a8:	0c 94 d4 0b 	jmp	0x17a8	; 0x17a8 <__do_global_dtors>

000000ac <__bad_interrupt>:
      ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN5BlinkD1Ev>:
      b0:	08 95       	ret

000000b2 <_ZN5BlinkD0Ev>:
      b2:	0c 94 52 05 	jmp	0xaa4	; 0xaa4 <_ZdlPv>

000000b6 <_ZN13Stabilization4mainEv>:
      b6:	8f 92       	push	r8
      b8:	9f 92       	push	r9
      ba:	af 92       	push	r10
      bc:	bf 92       	push	r11
      be:	cf 92       	push	r12
      c0:	df 92       	push	r13
      c2:	ef 92       	push	r14
      c4:	ff 92       	push	r15
      c6:	cf 93       	push	r28
      c8:	df 93       	push	r29
      ca:	ec 01       	movw	r28, r24
      cc:	60 e0       	ldi	r22, 0x00	; 0
      ce:	03 96       	adiw	r24, 0x03	; 3
      d0:	0e 94 56 05 	call	0xaac	; 0xaac <_ZN4Gyro4readEb>
      d4:	8f 8d       	ldd	r24, Y+31	; 0x1f
      d6:	98 a1       	ldd	r25, Y+32	; 0x20
      d8:	a9 a1       	ldd	r26, Y+33	; 0x21
      da:	ba a1       	ldd	r27, Y+34	; 0x22
      dc:	9c 01       	movw	r18, r24
      de:	ad 01       	movw	r20, r26
      e0:	66 27       	eor	r22, r22
      e2:	77 27       	eor	r23, r23
      e4:	cb 01       	movw	r24, r22
      e6:	62 1b       	sub	r22, r18
      e8:	73 0b       	sbc	r23, r19
      ea:	84 0b       	sbc	r24, r20
      ec:	95 0b       	sbc	r25, r21
      ee:	0e 94 85 09 	call	0x130a	; 0x130a <__floatsisf>
      f2:	2d ec       	ldi	r18, 0xCD	; 205
      f4:	3c ec       	ldi	r19, 0xCC	; 204
      f6:	4c ec       	ldi	r20, 0xCC	; 204
      f8:	5d e3       	ldi	r21, 0x3D	; 61
      fa:	0e 94 3a 0a 	call	0x1474	; 0x1474 <__mulsf3>
      fe:	9b 01       	movw	r18, r22
     100:	ac 01       	movw	r20, r24
     102:	60 e0       	ldi	r22, 0x00	; 0
     104:	70 e0       	ldi	r23, 0x00	; 0
     106:	cb 01       	movw	r24, r22
     108:	0e 94 db 08 	call	0x11b6	; 0x11b6 <__subsf3>
     10c:	ab 01       	movw	r20, r22
     10e:	bc 01       	movw	r22, r24
     110:	ce 01       	movw	r24, r28
     112:	cd 96       	adiw	r24, 0x3d	; 61
     114:	0e 94 ee 01 	call	0x3dc	; 0x3dc <_ZN3PID7processEf>
     118:	6b 01       	movw	r12, r22
     11a:	7c 01       	movw	r14, r24
     11c:	9b 01       	movw	r18, r22
     11e:	ac 01       	movw	r20, r24
     120:	60 e0       	ldi	r22, 0x00	; 0
     122:	70 e0       	ldi	r23, 0x00	; 0
     124:	cb 01       	movw	r24, r22
     126:	0e 94 db 08 	call	0x11b6	; 0x11b6 <__subsf3>
     12a:	0e 94 4d 09 	call	0x129a	; 0x129a <__fixsfsi>
     12e:	4b 01       	movw	r8, r22
     130:	5c 01       	movw	r10, r24
     132:	20 e0       	ldi	r18, 0x00	; 0
     134:	30 e0       	ldi	r19, 0x00	; 0
     136:	a9 01       	movw	r20, r18
     138:	c7 01       	movw	r24, r14
     13a:	b6 01       	movw	r22, r12
     13c:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     140:	0e 94 4d 09 	call	0x129a	; 0x129a <__fixsfsi>
     144:	a4 01       	movw	r20, r8
     146:	ce 01       	movw	r24, r28
     148:	02 96       	adiw	r24, 0x02	; 2
     14a:	df 91       	pop	r29
     14c:	cf 91       	pop	r28
     14e:	ff 90       	pop	r15
     150:	ef 90       	pop	r14
     152:	df 90       	pop	r13
     154:	cf 90       	pop	r12
     156:	bf 90       	pop	r11
     158:	af 90       	pop	r10
     15a:	9f 90       	pop	r9
     15c:	8f 90       	pop	r8
     15e:	0c 94 8e 02 	jmp	0x51c	; 0x51c <_ZN5Motor3runEii>

00000162 <_ZN13StabilizationD1Ev>:
     162:	cf 93       	push	r28
     164:	df 93       	push	r29
     166:	ec 01       	movw	r28, r24
     168:	84 e7       	ldi	r24, 0x74	; 116
     16a:	90 e0       	ldi	r25, 0x00	; 0
     16c:	99 83       	std	Y+1, r25	; 0x01
     16e:	88 83       	st	Y, r24
     170:	ce 01       	movw	r24, r28
     172:	cd 96       	adiw	r24, 0x3d	; 61
     174:	0e 94 84 01 	call	0x308	; 0x308 <_ZN3PIDD1Ev>
     178:	ce 01       	movw	r24, r28
     17a:	03 96       	adiw	r24, 0x03	; 3
     17c:	0e 94 55 05 	call	0xaaa	; 0xaaa <_ZN4GyroD1Ev>
     180:	ce 01       	movw	r24, r28
     182:	02 96       	adiw	r24, 0x02	; 2
     184:	df 91       	pop	r29
     186:	cf 91       	pop	r28
     188:	0c 94 8d 02 	jmp	0x51a	; 0x51a <_ZN5MotorD1Ev>

0000018c <_ZN13StabilizationD0Ev>:
     18c:	cf 93       	push	r28
     18e:	df 93       	push	r29
     190:	ec 01       	movw	r28, r24
     192:	0e 94 b1 00 	call	0x162	; 0x162 <_ZN13StabilizationD1Ev>
     196:	ce 01       	movw	r24, r28
     198:	df 91       	pop	r29
     19a:	cf 91       	pop	r28
     19c:	0c 94 52 05 	jmp	0xaa4	; 0xaa4 <_ZdlPv>

000001a0 <_ZN5Blink4mainEv>:
     1a0:	fc 01       	movw	r30, r24
     1a2:	83 81       	ldd	r24, Z+3	; 0x03
     1a4:	94 81       	ldd	r25, Z+4	; 0x04
     1a6:	00 97       	sbiw	r24, 0x00	; 0
     1a8:	19 f0       	breq	.+6      	; 0x1b0 <_ZN5Blink4mainEv+0x10>
     1aa:	01 97       	sbiw	r24, 0x01	; 1
     1ac:	39 f0       	breq	.+14     	; 0x1bc <_ZN5Blink4mainEv+0x1c>
     1ae:	08 95       	ret
     1b0:	dd 9a       	sbi	0x1b, 5	; 27
     1b2:	81 e0       	ldi	r24, 0x01	; 1
     1b4:	90 e0       	ldi	r25, 0x00	; 0
     1b6:	94 83       	std	Z+4, r25	; 0x04
     1b8:	83 83       	std	Z+3, r24	; 0x03
     1ba:	08 95       	ret
     1bc:	dd 98       	cbi	0x1b, 5	; 27
     1be:	14 82       	std	Z+4, r1	; 0x04
     1c0:	13 82       	std	Z+3, r1	; 0x03
     1c2:	08 95       	ret

000001c4 <main>:
     1c4:	cf 93       	push	r28
     1c6:	df 93       	push	r29
     1c8:	cd b7       	in	r28, 0x3d	; 61
     1ca:	de b7       	in	r29, 0x3e	; 62
     1cc:	c2 56       	subi	r28, 0x62	; 98
     1ce:	d1 09       	sbc	r29, r1
     1d0:	0f b6       	in	r0, 0x3f	; 63
     1d2:	f8 94       	cli
     1d4:	de bf       	out	0x3e, r29	; 62
     1d6:	0f be       	out	0x3f, r0	; 63
     1d8:	cd bf       	out	0x3d, r28	; 61
     1da:	8a e6       	ldi	r24, 0x6A	; 106
     1dc:	90 e0       	ldi	r25, 0x00	; 0
     1de:	a0 96       	adiw	r28, 0x20	; 32
     1e0:	9f af       	std	Y+63, r25	; 0x3f
     1e2:	8e af       	std	Y+62, r24	; 0x3e
     1e4:	a0 97       	sbiw	r28, 0x20	; 32
     1e6:	d5 9a       	sbi	0x1a, 5	; 26
     1e8:	a3 96       	adiw	r28, 0x23	; 35
     1ea:	1f ae       	std	Y+63, r1	; 0x3f
     1ec:	1e ae       	std	Y+62, r1	; 0x3e
     1ee:	a3 97       	sbiw	r28, 0x23	; 35
     1f0:	48 ec       	ldi	r20, 0xC8	; 200
     1f2:	50 e0       	ldi	r21, 0x00	; 0
     1f4:	be 01       	movw	r22, r28
     1f6:	62 5a       	subi	r22, 0xA2	; 162
     1f8:	7f 4f       	sbci	r23, 0xFF	; 255
     1fa:	86 e9       	ldi	r24, 0x96	; 150
     1fc:	90 e0       	ldi	r25, 0x00	; 0
     1fe:	0e 94 05 08 	call	0x100a	; 0x100a <_ZN5Timer8add_taskEP4Taskj>
     202:	84 e7       	ldi	r24, 0x74	; 116
     204:	90 e0       	ldi	r25, 0x00	; 0
     206:	9a 83       	std	Y+2, r25	; 0x02
     208:	89 83       	std	Y+1, r24	; 0x01
     20a:	ce 01       	movw	r24, r28
     20c:	03 96       	adiw	r24, 0x03	; 3
     20e:	0e 94 81 02 	call	0x502	; 0x502 <_ZN5MotorC1Ev>
     212:	ce 01       	movw	r24, r28
     214:	04 96       	adiw	r24, 0x04	; 4
     216:	0e 94 54 05 	call	0xaa8	; 0xaa8 <_ZN4GyroC1Ev>
     21a:	ce 01       	movw	r24, r28
     21c:	ce 96       	adiw	r24, 0x3e	; 62
     21e:	0e 94 5e 01 	call	0x2bc	; 0x2bc <_ZN3PIDC1Ev>
     222:	62 e9       	ldi	r22, 0x92	; 146
     224:	70 e0       	ldi	r23, 0x00	; 0
     226:	ce 01       	movw	r24, r28
     228:	04 96       	adiw	r24, 0x04	; 4
     22a:	0e 94 ec 06 	call	0xdd8	; 0xdd8 <_ZN4Gyro4initEP13I2C_Interface>
     22e:	81 2c       	mov	r8, r1
     230:	91 2c       	mov	r9, r1
     232:	2f e7       	ldi	r18, 0x7F	; 127
     234:	a2 2e       	mov	r10, r18
     236:	23 e4       	ldi	r18, 0x43	; 67
     238:	b2 2e       	mov	r11, r18
     23a:	c1 2c       	mov	r12, r1
     23c:	d1 2c       	mov	r13, r1
     23e:	76 01       	movw	r14, r12
     240:	97 01       	movw	r18, r14
     242:	86 01       	movw	r16, r12
     244:	40 e0       	ldi	r20, 0x00	; 0
     246:	50 e0       	ldi	r21, 0x00	; 0
     248:	60 e8       	ldi	r22, 0x80	; 128
     24a:	7f e3       	ldi	r23, 0x3F	; 63
     24c:	ce 01       	movw	r24, r28
     24e:	ce 96       	adiw	r24, 0x3e	; 62
     250:	0e 94 85 01 	call	0x30a	; 0x30a <_ZN3PID4initEffff>
     254:	bb 98       	cbi	0x17, 3	; 23
     256:	c3 9a       	sbi	0x18, 3	; 24
     258:	ba 98       	cbi	0x17, 2	; 23
     25a:	c2 9a       	sbi	0x18, 2	; 24
     25c:	b3 9b       	sbis	0x16, 3	; 22
     25e:	07 c0       	rjmp	.+14     	; 0x26e <main+0xaa>
     260:	b2 9b       	sbis	0x16, 2	; 22
     262:	05 c0       	rjmp	.+10     	; 0x26e <main+0xaa>
     264:	86 e9       	ldi	r24, 0x96	; 150
     266:	90 e0       	ldi	r25, 0x00	; 0
     268:	0e 94 27 08 	call	0x104e	; 0x104e <_ZN5Timer4mainEv>
     26c:	f7 cf       	rjmp	.-18     	; 0x25c <main+0x98>
     26e:	b3 99       	sbic	0x16, 3	; 22
     270:	17 c0       	rjmp	.+46     	; 0x2a0 <main+0xdc>
     272:	81 2c       	mov	r8, r1
     274:	91 2c       	mov	r9, r1
     276:	8f e7       	ldi	r24, 0x7F	; 127
     278:	a8 2e       	mov	r10, r24
     27a:	83 e4       	ldi	r24, 0x43	; 67
     27c:	b8 2e       	mov	r11, r24
     27e:	c1 2c       	mov	r12, r1
     280:	d1 2c       	mov	r13, r1
     282:	90 ea       	ldi	r25, 0xA0	; 160
     284:	e9 2e       	mov	r14, r25
     286:	90 e4       	ldi	r25, 0x40	; 64
     288:	f9 2e       	mov	r15, r25
     28a:	00 e0       	ldi	r16, 0x00	; 0
     28c:	10 e0       	ldi	r17, 0x00	; 0
     28e:	98 01       	movw	r18, r16
     290:	40 e0       	ldi	r20, 0x00	; 0
     292:	50 e0       	ldi	r21, 0x00	; 0
     294:	60 ec       	ldi	r22, 0xC0	; 192
     296:	7f e3       	ldi	r23, 0x3F	; 63
     298:	ce 01       	movw	r24, r28
     29a:	ce 96       	adiw	r24, 0x3e	; 62
     29c:	0e 94 85 01 	call	0x30a	; 0x30a <_ZN3PID4initEffff>
     2a0:	4a e0       	ldi	r20, 0x0A	; 10
     2a2:	50 e0       	ldi	r21, 0x00	; 0
     2a4:	be 01       	movw	r22, r28
     2a6:	6f 5f       	subi	r22, 0xFF	; 255
     2a8:	7f 4f       	sbci	r23, 0xFF	; 255
     2aa:	86 e9       	ldi	r24, 0x96	; 150
     2ac:	90 e0       	ldi	r25, 0x00	; 0
     2ae:	0e 94 05 08 	call	0x100a	; 0x100a <_ZN5Timer8add_taskEP4Taskj>
     2b2:	86 e9       	ldi	r24, 0x96	; 150
     2b4:	90 e0       	ldi	r25, 0x00	; 0
     2b6:	0e 94 27 08 	call	0x104e	; 0x104e <_ZN5Timer4mainEv>
     2ba:	fb cf       	rjmp	.-10     	; 0x2b2 <main+0xee>

000002bc <_ZN3PIDC1Ev>:
     2bc:	fc 01       	movw	r30, r24
     2be:	10 82       	st	Z, r1
     2c0:	11 82       	std	Z+1, r1	; 0x01
     2c2:	12 82       	std	Z+2, r1	; 0x02
     2c4:	13 82       	std	Z+3, r1	; 0x03
     2c6:	14 82       	std	Z+4, r1	; 0x04
     2c8:	15 82       	std	Z+5, r1	; 0x05
     2ca:	16 82       	std	Z+6, r1	; 0x06
     2cc:	17 82       	std	Z+7, r1	; 0x07
     2ce:	10 86       	std	Z+8, r1	; 0x08
     2d0:	11 86       	std	Z+9, r1	; 0x09
     2d2:	12 86       	std	Z+10, r1	; 0x0a
     2d4:	13 86       	std	Z+11, r1	; 0x0b
     2d6:	14 86       	std	Z+12, r1	; 0x0c
     2d8:	15 86       	std	Z+13, r1	; 0x0d
     2da:	16 86       	std	Z+14, r1	; 0x0e
     2dc:	17 86       	std	Z+15, r1	; 0x0f
     2de:	10 8a       	std	Z+16, r1	; 0x10
     2e0:	11 8a       	std	Z+17, r1	; 0x11
     2e2:	12 8a       	std	Z+18, r1	; 0x12
     2e4:	13 8a       	std	Z+19, r1	; 0x13
     2e6:	14 8a       	std	Z+20, r1	; 0x14
     2e8:	15 8a       	std	Z+21, r1	; 0x15
     2ea:	16 8a       	std	Z+22, r1	; 0x16
     2ec:	17 8a       	std	Z+23, r1	; 0x17
     2ee:	80 e0       	ldi	r24, 0x00	; 0
     2f0:	90 e0       	ldi	r25, 0x00	; 0
     2f2:	a0 e0       	ldi	r26, 0x00	; 0
     2f4:	b0 e8       	ldi	r27, 0x80	; 128
     2f6:	80 8f       	std	Z+24, r24	; 0x18
     2f8:	91 8f       	std	Z+25, r25	; 0x19
     2fa:	a2 8f       	std	Z+26, r26	; 0x1a
     2fc:	b3 8f       	std	Z+27, r27	; 0x1b
     2fe:	14 8e       	std	Z+28, r1	; 0x1c
     300:	15 8e       	std	Z+29, r1	; 0x1d
     302:	16 8e       	std	Z+30, r1	; 0x1e
     304:	17 8e       	std	Z+31, r1	; 0x1f
     306:	08 95       	ret

00000308 <_ZN3PIDD1Ev>:
     308:	08 95       	ret

0000030a <_ZN3PID4initEffff>:
     30a:	2f 92       	push	r2
     30c:	3f 92       	push	r3
     30e:	4f 92       	push	r4
     310:	5f 92       	push	r5
     312:	6f 92       	push	r6
     314:	7f 92       	push	r7
     316:	8f 92       	push	r8
     318:	9f 92       	push	r9
     31a:	af 92       	push	r10
     31c:	bf 92       	push	r11
     31e:	cf 92       	push	r12
     320:	df 92       	push	r13
     322:	ef 92       	push	r14
     324:	ff 92       	push	r15
     326:	0f 93       	push	r16
     328:	1f 93       	push	r17
     32a:	cf 93       	push	r28
     32c:	df 93       	push	r29
     32e:	cd b7       	in	r28, 0x3d	; 61
     330:	de b7       	in	r29, 0x3e	; 62
     332:	3c 01       	movw	r6, r24
     334:	1a 01       	movw	r2, r20
     336:	2b 01       	movw	r4, r22
     338:	fc 01       	movw	r30, r24
     33a:	10 82       	st	Z, r1
     33c:	11 82       	std	Z+1, r1	; 0x01
     33e:	12 82       	std	Z+2, r1	; 0x02
     340:	13 82       	std	Z+3, r1	; 0x03
     342:	84 82       	std	Z+4, r8	; 0x04
     344:	95 82       	std	Z+5, r9	; 0x05
     346:	a6 82       	std	Z+6, r10	; 0x06
     348:	b7 82       	std	Z+7, r11	; 0x07
     34a:	10 86       	std	Z+8, r1	; 0x08
     34c:	11 86       	std	Z+9, r1	; 0x09
     34e:	12 86       	std	Z+10, r1	; 0x0a
     350:	13 86       	std	Z+11, r1	; 0x0b
     352:	14 86       	std	Z+12, r1	; 0x0c
     354:	15 86       	std	Z+13, r1	; 0x0d
     356:	16 86       	std	Z+14, r1	; 0x0e
     358:	17 86       	std	Z+15, r1	; 0x0f
     35a:	10 8a       	std	Z+16, r1	; 0x10
     35c:	11 8a       	std	Z+17, r1	; 0x11
     35e:	12 8a       	std	Z+18, r1	; 0x12
     360:	13 8a       	std	Z+19, r1	; 0x13
     362:	a9 01       	movw	r20, r18
     364:	98 01       	movw	r18, r16
     366:	c2 01       	movw	r24, r4
     368:	b1 01       	movw	r22, r2
     36a:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     36e:	a7 01       	movw	r20, r14
     370:	96 01       	movw	r18, r12
     372:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     376:	f3 01       	movw	r30, r6
     378:	64 8b       	std	Z+20, r22	; 0x14
     37a:	75 8b       	std	Z+21, r23	; 0x15
     37c:	86 8b       	std	Z+22, r24	; 0x16
     37e:	97 8b       	std	Z+23, r25	; 0x17
     380:	52 01       	movw	r10, r4
     382:	41 01       	movw	r8, r2
     384:	b7 fa       	bst	r11, 7
     386:	b0 94       	com	r11
     388:	b7 f8       	bld	r11, 7
     38a:	b0 94       	com	r11
     38c:	a7 01       	movw	r20, r14
     38e:	96 01       	movw	r18, r12
     390:	c7 01       	movw	r24, r14
     392:	b6 01       	movw	r22, r12
     394:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     398:	9b 01       	movw	r18, r22
     39a:	ac 01       	movw	r20, r24
     39c:	c5 01       	movw	r24, r10
     39e:	b4 01       	movw	r22, r8
     3a0:	0e 94 db 08 	call	0x11b6	; 0x11b6 <__subsf3>
     3a4:	f3 01       	movw	r30, r6
     3a6:	60 8f       	std	Z+24, r22	; 0x18
     3a8:	71 8f       	std	Z+25, r23	; 0x19
     3aa:	82 8f       	std	Z+26, r24	; 0x1a
     3ac:	93 8f       	std	Z+27, r25	; 0x1b
     3ae:	c4 8e       	std	Z+28, r12	; 0x1c
     3b0:	d5 8e       	std	Z+29, r13	; 0x1d
     3b2:	e6 8e       	std	Z+30, r14	; 0x1e
     3b4:	f7 8e       	std	Z+31, r15	; 0x1f
     3b6:	df 91       	pop	r29
     3b8:	cf 91       	pop	r28
     3ba:	1f 91       	pop	r17
     3bc:	0f 91       	pop	r16
     3be:	ff 90       	pop	r15
     3c0:	ef 90       	pop	r14
     3c2:	df 90       	pop	r13
     3c4:	cf 90       	pop	r12
     3c6:	bf 90       	pop	r11
     3c8:	af 90       	pop	r10
     3ca:	9f 90       	pop	r9
     3cc:	8f 90       	pop	r8
     3ce:	7f 90       	pop	r7
     3d0:	6f 90       	pop	r6
     3d2:	5f 90       	pop	r5
     3d4:	4f 90       	pop	r4
     3d6:	3f 90       	pop	r3
     3d8:	2f 90       	pop	r2
     3da:	08 95       	ret

000003dc <_ZN3PID7processEf>:
     3dc:	4f 92       	push	r4
     3de:	5f 92       	push	r5
     3e0:	6f 92       	push	r6
     3e2:	7f 92       	push	r7
     3e4:	8f 92       	push	r8
     3e6:	9f 92       	push	r9
     3e8:	af 92       	push	r10
     3ea:	bf 92       	push	r11
     3ec:	cf 92       	push	r12
     3ee:	df 92       	push	r13
     3f0:	ef 92       	push	r14
     3f2:	ff 92       	push	r15
     3f4:	cf 93       	push	r28
     3f6:	df 93       	push	r29
     3f8:	ec 01       	movw	r28, r24
     3fa:	cb 01       	movw	r24, r22
     3fc:	ba 01       	movw	r22, r20
     3fe:	cc 84       	ldd	r12, Y+12	; 0x0c
     400:	dd 84       	ldd	r13, Y+13	; 0x0d
     402:	ee 84       	ldd	r14, Y+14	; 0x0e
     404:	ff 84       	ldd	r15, Y+15	; 0x0f
     406:	c8 8a       	std	Y+16, r12	; 0x10
     408:	d9 8a       	std	Y+17, r13	; 0x11
     40a:	ea 8a       	std	Y+18, r14	; 0x12
     40c:	fb 8a       	std	Y+19, r15	; 0x13
     40e:	88 84       	ldd	r8, Y+8	; 0x08
     410:	99 84       	ldd	r9, Y+9	; 0x09
     412:	aa 84       	ldd	r10, Y+10	; 0x0a
     414:	bb 84       	ldd	r11, Y+11	; 0x0b
     416:	8c 86       	std	Y+12, r8	; 0x0c
     418:	9d 86       	std	Y+13, r9	; 0x0d
     41a:	ae 86       	std	Y+14, r10	; 0x0e
     41c:	bf 86       	std	Y+15, r11	; 0x0f
     41e:	68 87       	std	Y+8, r22	; 0x08
     420:	79 87       	std	Y+9, r23	; 0x09
     422:	8a 87       	std	Y+10, r24	; 0x0a
     424:	9b 87       	std	Y+11, r25	; 0x0b
     426:	2c 89       	ldd	r18, Y+20	; 0x14
     428:	3d 89       	ldd	r19, Y+21	; 0x15
     42a:	4e 89       	ldd	r20, Y+22	; 0x16
     42c:	5f 89       	ldd	r21, Y+23	; 0x17
     42e:	0e 94 3a 0a 	call	0x1474	; 0x1474 <__mulsf3>
     432:	2b 01       	movw	r4, r22
     434:	3c 01       	movw	r6, r24
     436:	28 8d       	ldd	r18, Y+24	; 0x18
     438:	39 8d       	ldd	r19, Y+25	; 0x19
     43a:	4a 8d       	ldd	r20, Y+26	; 0x1a
     43c:	5b 8d       	ldd	r21, Y+27	; 0x1b
     43e:	c5 01       	movw	r24, r10
     440:	b4 01       	movw	r22, r8
     442:	0e 94 3a 0a 	call	0x1474	; 0x1474 <__mulsf3>
     446:	9b 01       	movw	r18, r22
     448:	ac 01       	movw	r20, r24
     44a:	c3 01       	movw	r24, r6
     44c:	b2 01       	movw	r22, r4
     44e:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     452:	4b 01       	movw	r8, r22
     454:	5c 01       	movw	r10, r24
     456:	2c 8d       	ldd	r18, Y+28	; 0x1c
     458:	3d 8d       	ldd	r19, Y+29	; 0x1d
     45a:	4e 8d       	ldd	r20, Y+30	; 0x1e
     45c:	5f 8d       	ldd	r21, Y+31	; 0x1f
     45e:	c7 01       	movw	r24, r14
     460:	b6 01       	movw	r22, r12
     462:	0e 94 3a 0a 	call	0x1474	; 0x1474 <__mulsf3>
     466:	9b 01       	movw	r18, r22
     468:	ac 01       	movw	r20, r24
     46a:	c5 01       	movw	r24, r10
     46c:	b4 01       	movw	r22, r8
     46e:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     472:	28 81       	ld	r18, Y
     474:	39 81       	ldd	r19, Y+1	; 0x01
     476:	4a 81       	ldd	r20, Y+2	; 0x02
     478:	5b 81       	ldd	r21, Y+3	; 0x03
     47a:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     47e:	68 83       	st	Y, r22
     480:	79 83       	std	Y+1, r23	; 0x01
     482:	8a 83       	std	Y+2, r24	; 0x02
     484:	9b 83       	std	Y+3, r25	; 0x03
     486:	cc 80       	ldd	r12, Y+4	; 0x04
     488:	dd 80       	ldd	r13, Y+5	; 0x05
     48a:	ee 80       	ldd	r14, Y+6	; 0x06
     48c:	ff 80       	ldd	r15, Y+7	; 0x07
     48e:	a7 01       	movw	r20, r14
     490:	96 01       	movw	r18, r12
     492:	0e 94 35 0a 	call	0x146a	; 0x146a <__gesf2>
     496:	18 16       	cp	r1, r24
     498:	24 f4       	brge	.+8      	; 0x4a2 <__stack+0x43>
     49a:	c8 82       	st	Y, r12
     49c:	d9 82       	std	Y+1, r13	; 0x01
     49e:	ea 82       	std	Y+2, r14	; 0x02
     4a0:	fb 82       	std	Y+3, r15	; 0x03
     4a2:	f7 fa       	bst	r15, 7
     4a4:	f0 94       	com	r15
     4a6:	f7 f8       	bld	r15, 7
     4a8:	f0 94       	com	r15
     4aa:	a7 01       	movw	r20, r14
     4ac:	96 01       	movw	r18, r12
     4ae:	68 81       	ld	r22, Y
     4b0:	79 81       	ldd	r23, Y+1	; 0x01
     4b2:	8a 81       	ldd	r24, Y+2	; 0x02
     4b4:	9b 81       	ldd	r25, Y+3	; 0x03
     4b6:	0e 94 48 09 	call	0x1290	; 0x1290 <__cmpsf2>
     4ba:	87 ff       	sbrs	r24, 7
     4bc:	04 c0       	rjmp	.+8      	; 0x4c6 <__stack+0x67>
     4be:	c8 82       	st	Y, r12
     4c0:	d9 82       	std	Y+1, r13	; 0x01
     4c2:	ea 82       	std	Y+2, r14	; 0x02
     4c4:	fb 82       	std	Y+3, r15	; 0x03
     4c6:	68 81       	ld	r22, Y
     4c8:	79 81       	ldd	r23, Y+1	; 0x01
     4ca:	8a 81       	ldd	r24, Y+2	; 0x02
     4cc:	9b 81       	ldd	r25, Y+3	; 0x03
     4ce:	df 91       	pop	r29
     4d0:	cf 91       	pop	r28
     4d2:	ff 90       	pop	r15
     4d4:	ef 90       	pop	r14
     4d6:	df 90       	pop	r13
     4d8:	cf 90       	pop	r12
     4da:	bf 90       	pop	r11
     4dc:	af 90       	pop	r10
     4de:	9f 90       	pop	r9
     4e0:	8f 90       	pop	r8
     4e2:	7f 90       	pop	r7
     4e4:	6f 90       	pop	r6
     4e6:	5f 90       	pop	r5
     4e8:	4f 90       	pop	r4
     4ea:	08 95       	ret

000004ec <_ZN5USARTC1Ev>:
     4ec:	10 bc       	out	0x20, r1	; 32
     4ee:	80 e4       	ldi	r24, 0x40	; 64
     4f0:	89 b9       	out	0x09, r24	; 9
     4f2:	80 b5       	in	r24, 0x20	; 32
     4f4:	86 68       	ori	r24, 0x86	; 134
     4f6:	80 bd       	out	0x20, r24	; 32
     4f8:	8a b1       	in	r24, 0x0a	; 10
     4fa:	88 61       	ori	r24, 0x18	; 24
     4fc:	8a b9       	out	0x0a, r24	; 10
     4fe:	08 95       	ret

00000500 <_ZN5USARTD1Ev>:
     500:	08 95       	ret

00000502 <_ZN5MotorC1Ev>:
     502:	80 ef       	ldi	r24, 0xF0	; 240
     504:	81 bb       	out	0x11, r24	; 17
     506:	95 98       	cbi	0x12, 5	; 18
     508:	81 ea       	ldi	r24, 0xA1	; 161
     50a:	8f bd       	out	0x2f, r24	; 47
     50c:	81 e0       	ldi	r24, 0x01	; 1
     50e:	8e bd       	out	0x2e, r24	; 46
     510:	1b bc       	out	0x2b, r1	; 43
     512:	1a bc       	out	0x2a, r1	; 42
     514:	19 bc       	out	0x29, r1	; 41
     516:	18 bc       	out	0x28, r1	; 40
     518:	08 95       	ret

0000051a <_ZN5MotorD1Ev>:
     51a:	08 95       	ret

0000051c <_ZN5Motor3runEii>:
     51c:	6f 3f       	cpi	r22, 0xFF	; 255
     51e:	71 05       	cpc	r23, r1
     520:	09 f0       	breq	.+2      	; 0x524 <_ZN5Motor3runEii+0x8>
     522:	3c f4       	brge	.+14     	; 0x532 <_ZN5Motor3runEii+0x16>
     524:	61 30       	cpi	r22, 0x01	; 1
     526:	8f ef       	ldi	r24, 0xFF	; 255
     528:	78 07       	cpc	r23, r24
     52a:	2c f4       	brge	.+10     	; 0x536 <_ZN5Motor3runEii+0x1a>
     52c:	61 e0       	ldi	r22, 0x01	; 1
     52e:	7f ef       	ldi	r23, 0xFF	; 255
     530:	02 c0       	rjmp	.+4      	; 0x536 <_ZN5Motor3runEii+0x1a>
     532:	6f ef       	ldi	r22, 0xFF	; 255
     534:	70 e0       	ldi	r23, 0x00	; 0
     536:	4f 3f       	cpi	r20, 0xFF	; 255
     538:	51 05       	cpc	r21, r1
     53a:	09 f0       	breq	.+2      	; 0x53e <_ZN5Motor3runEii+0x22>
     53c:	44 f4       	brge	.+16     	; 0x54e <_ZN5Motor3runEii+0x32>
     53e:	41 30       	cpi	r20, 0x01	; 1
     540:	8f ef       	ldi	r24, 0xFF	; 255
     542:	58 07       	cpc	r21, r24
     544:	6c f0       	brlt	.+26     	; 0x560 <_ZN5Motor3runEii+0x44>
     546:	14 16       	cp	r1, r20
     548:	15 06       	cpc	r1, r21
     54a:	1c f0       	brlt	.+6      	; 0x552 <_ZN5Motor3runEii+0x36>
     54c:	05 c0       	rjmp	.+10     	; 0x558 <_ZN5Motor3runEii+0x3c>
     54e:	4f ef       	ldi	r20, 0xFF	; 255
     550:	50 e0       	ldi	r21, 0x00	; 0
     552:	4a bd       	out	0x2a, r20	; 42
     554:	96 9a       	sbi	0x12, 6	; 18
     556:	0b c0       	rjmp	.+22     	; 0x56e <_ZN5Motor3runEii+0x52>
     558:	41 15       	cp	r20, r1
     55a:	51 05       	cpc	r21, r1
     55c:	39 f0       	breq	.+14     	; 0x56c <_ZN5Motor3runEii+0x50>
     55e:	02 c0       	rjmp	.+4      	; 0x564 <_ZN5Motor3runEii+0x48>
     560:	41 e0       	ldi	r20, 0x01	; 1
     562:	5f ef       	ldi	r21, 0xFF	; 255
     564:	41 95       	neg	r20
     566:	4a bd       	out	0x2a, r20	; 42
     568:	96 98       	cbi	0x12, 6	; 18
     56a:	01 c0       	rjmp	.+2      	; 0x56e <_ZN5Motor3runEii+0x52>
     56c:	1a bc       	out	0x2a, r1	; 42
     56e:	16 16       	cp	r1, r22
     570:	17 06       	cpc	r1, r23
     572:	1c f4       	brge	.+6      	; 0x57a <_ZN5Motor3runEii+0x5e>
     574:	68 bd       	out	0x28, r22	; 40
     576:	97 98       	cbi	0x12, 7	; 18
     578:	08 95       	ret
     57a:	61 15       	cp	r22, r1
     57c:	71 05       	cpc	r23, r1
     57e:	21 f0       	breq	.+8      	; 0x588 <_ZN5Motor3runEii+0x6c>
     580:	61 95       	neg	r22
     582:	68 bd       	out	0x28, r22	; 40
     584:	97 9a       	sbi	0x12, 7	; 18
     586:	08 95       	ret
     588:	18 bc       	out	0x28, r1	; 40
     58a:	08 95       	ret

0000058c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     58c:	0f 93       	push	r16
     58e:	1f 93       	push	r17
     590:	cf 93       	push	r28
     592:	df 93       	push	r29
     594:	00 d0       	rcall	.+0      	; 0x596 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     596:	1f 92       	push	r1
     598:	cd b7       	in	r28, 0x3d	; 61
     59a:	de b7       	in	r29, 0x3e	; 62
     59c:	8c 01       	movw	r16, r24
     59e:	dc 01       	movw	r26, r24
     5a0:	ed 91       	ld	r30, X+
     5a2:	fc 91       	ld	r31, X
     5a4:	01 90       	ld	r0, Z+
     5a6:	f0 81       	ld	r31, Z
     5a8:	e0 2d       	mov	r30, r0
     5aa:	2b 83       	std	Y+3, r18	; 0x03
     5ac:	4a 83       	std	Y+2, r20	; 0x02
     5ae:	69 83       	std	Y+1, r22	; 0x01
     5b0:	09 95       	icall
     5b2:	d8 01       	movw	r26, r16
     5b4:	ed 91       	ld	r30, X+
     5b6:	fc 91       	ld	r31, X
     5b8:	04 80       	ldd	r0, Z+4	; 0x04
     5ba:	f5 81       	ldd	r31, Z+5	; 0x05
     5bc:	e0 2d       	mov	r30, r0
     5be:	69 81       	ldd	r22, Y+1	; 0x01
     5c0:	c8 01       	movw	r24, r16
     5c2:	09 95       	icall
     5c4:	d8 01       	movw	r26, r16
     5c6:	ed 91       	ld	r30, X+
     5c8:	fc 91       	ld	r31, X
     5ca:	04 80       	ldd	r0, Z+4	; 0x04
     5cc:	f5 81       	ldd	r31, Z+5	; 0x05
     5ce:	e0 2d       	mov	r30, r0
     5d0:	4a 81       	ldd	r20, Y+2	; 0x02
     5d2:	64 2f       	mov	r22, r20
     5d4:	c8 01       	movw	r24, r16
     5d6:	09 95       	icall
     5d8:	d8 01       	movw	r26, r16
     5da:	ed 91       	ld	r30, X+
     5dc:	fc 91       	ld	r31, X
     5de:	04 80       	ldd	r0, Z+4	; 0x04
     5e0:	f5 81       	ldd	r31, Z+5	; 0x05
     5e2:	e0 2d       	mov	r30, r0
     5e4:	2b 81       	ldd	r18, Y+3	; 0x03
     5e6:	62 2f       	mov	r22, r18
     5e8:	c8 01       	movw	r24, r16
     5ea:	09 95       	icall
     5ec:	d8 01       	movw	r26, r16
     5ee:	ed 91       	ld	r30, X+
     5f0:	fc 91       	ld	r31, X
     5f2:	02 80       	ldd	r0, Z+2	; 0x02
     5f4:	f3 81       	ldd	r31, Z+3	; 0x03
     5f6:	e0 2d       	mov	r30, r0
     5f8:	c8 01       	movw	r24, r16
     5fa:	0f 90       	pop	r0
     5fc:	0f 90       	pop	r0
     5fe:	0f 90       	pop	r0
     600:	df 91       	pop	r29
     602:	cf 91       	pop	r28
     604:	1f 91       	pop	r17
     606:	0f 91       	pop	r16
     608:	09 94       	ijmp

0000060a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     60a:	0f 93       	push	r16
     60c:	1f 93       	push	r17
     60e:	cf 93       	push	r28
     610:	df 93       	push	r29
     612:	00 d0       	rcall	.+0      	; 0x614 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     614:	00 d0       	rcall	.+0      	; 0x616 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     616:	cd b7       	in	r28, 0x3d	; 61
     618:	de b7       	in	r29, 0x3e	; 62
     61a:	8c 01       	movw	r16, r24
     61c:	dc 01       	movw	r26, r24
     61e:	ed 91       	ld	r30, X+
     620:	fc 91       	ld	r31, X
     622:	01 90       	ld	r0, Z+
     624:	f0 81       	ld	r31, Z
     626:	e0 2d       	mov	r30, r0
     628:	2c 83       	std	Y+4, r18	; 0x04
     62a:	3b 83       	std	Y+3, r19	; 0x03
     62c:	4a 83       	std	Y+2, r20	; 0x02
     62e:	69 83       	std	Y+1, r22	; 0x01
     630:	09 95       	icall
     632:	d8 01       	movw	r26, r16
     634:	ed 91       	ld	r30, X+
     636:	fc 91       	ld	r31, X
     638:	04 80       	ldd	r0, Z+4	; 0x04
     63a:	f5 81       	ldd	r31, Z+5	; 0x05
     63c:	e0 2d       	mov	r30, r0
     63e:	69 81       	ldd	r22, Y+1	; 0x01
     640:	c8 01       	movw	r24, r16
     642:	09 95       	icall
     644:	d8 01       	movw	r26, r16
     646:	ed 91       	ld	r30, X+
     648:	fc 91       	ld	r31, X
     64a:	04 80       	ldd	r0, Z+4	; 0x04
     64c:	f5 81       	ldd	r31, Z+5	; 0x05
     64e:	e0 2d       	mov	r30, r0
     650:	4a 81       	ldd	r20, Y+2	; 0x02
     652:	64 2f       	mov	r22, r20
     654:	c8 01       	movw	r24, r16
     656:	09 95       	icall
     658:	d8 01       	movw	r26, r16
     65a:	ed 91       	ld	r30, X+
     65c:	fc 91       	ld	r31, X
     65e:	04 80       	ldd	r0, Z+4	; 0x04
     660:	f5 81       	ldd	r31, Z+5	; 0x05
     662:	e0 2d       	mov	r30, r0
     664:	3b 81       	ldd	r19, Y+3	; 0x03
     666:	63 2f       	mov	r22, r19
     668:	c8 01       	movw	r24, r16
     66a:	09 95       	icall
     66c:	d8 01       	movw	r26, r16
     66e:	ed 91       	ld	r30, X+
     670:	fc 91       	ld	r31, X
     672:	04 80       	ldd	r0, Z+4	; 0x04
     674:	f5 81       	ldd	r31, Z+5	; 0x05
     676:	e0 2d       	mov	r30, r0
     678:	2c 81       	ldd	r18, Y+4	; 0x04
     67a:	62 2f       	mov	r22, r18
     67c:	c8 01       	movw	r24, r16
     67e:	09 95       	icall
     680:	d8 01       	movw	r26, r16
     682:	ed 91       	ld	r30, X+
     684:	fc 91       	ld	r31, X
     686:	02 80       	ldd	r0, Z+2	; 0x02
     688:	f3 81       	ldd	r31, Z+3	; 0x03
     68a:	e0 2d       	mov	r30, r0
     68c:	c8 01       	movw	r24, r16
     68e:	0f 90       	pop	r0
     690:	0f 90       	pop	r0
     692:	0f 90       	pop	r0
     694:	0f 90       	pop	r0
     696:	df 91       	pop	r29
     698:	cf 91       	pop	r28
     69a:	1f 91       	pop	r17
     69c:	0f 91       	pop	r16
     69e:	09 94       	ijmp

000006a0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     6a0:	cf 92       	push	r12
     6a2:	df 92       	push	r13
     6a4:	ef 92       	push	r14
     6a6:	ff 92       	push	r15
     6a8:	0f 93       	push	r16
     6aa:	1f 93       	push	r17
     6ac:	cf 93       	push	r28
     6ae:	df 93       	push	r29
     6b0:	00 d0       	rcall	.+0      	; 0x6b2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     6b2:	00 d0       	rcall	.+0      	; 0x6b4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     6b4:	cd b7       	in	r28, 0x3d	; 61
     6b6:	de b7       	in	r29, 0x3e	; 62
     6b8:	6c 01       	movw	r12, r24
     6ba:	dc 01       	movw	r26, r24
     6bc:	ed 91       	ld	r30, X+
     6be:	fc 91       	ld	r31, X
     6c0:	01 90       	ld	r0, Z+
     6c2:	f0 81       	ld	r31, Z
     6c4:	e0 2d       	mov	r30, r0
     6c6:	2b 83       	std	Y+3, r18	; 0x03
     6c8:	3c 83       	std	Y+4, r19	; 0x04
     6ca:	4a 83       	std	Y+2, r20	; 0x02
     6cc:	69 83       	std	Y+1, r22	; 0x01
     6ce:	09 95       	icall
     6d0:	d6 01       	movw	r26, r12
     6d2:	ed 91       	ld	r30, X+
     6d4:	fc 91       	ld	r31, X
     6d6:	04 80       	ldd	r0, Z+4	; 0x04
     6d8:	f5 81       	ldd	r31, Z+5	; 0x05
     6da:	e0 2d       	mov	r30, r0
     6dc:	69 81       	ldd	r22, Y+1	; 0x01
     6de:	c6 01       	movw	r24, r12
     6e0:	09 95       	icall
     6e2:	d6 01       	movw	r26, r12
     6e4:	ed 91       	ld	r30, X+
     6e6:	fc 91       	ld	r31, X
     6e8:	04 80       	ldd	r0, Z+4	; 0x04
     6ea:	f5 81       	ldd	r31, Z+5	; 0x05
     6ec:	e0 2d       	mov	r30, r0
     6ee:	4a 81       	ldd	r20, Y+2	; 0x02
     6f0:	64 2f       	mov	r22, r20
     6f2:	c6 01       	movw	r24, r12
     6f4:	09 95       	icall
     6f6:	2b 81       	ldd	r18, Y+3	; 0x03
     6f8:	e2 2e       	mov	r14, r18
     6fa:	3c 81       	ldd	r19, Y+4	; 0x04
     6fc:	f3 2e       	mov	r15, r19
     6fe:	0e 0d       	add	r16, r14
     700:	1f 1d       	adc	r17, r15
     702:	d6 01       	movw	r26, r12
     704:	ed 91       	ld	r30, X+
     706:	fc 91       	ld	r31, X
     708:	e0 16       	cp	r14, r16
     70a:	f1 06       	cpc	r15, r17
     70c:	49 f0       	breq	.+18     	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
     70e:	d7 01       	movw	r26, r14
     710:	6d 91       	ld	r22, X+
     712:	7d 01       	movw	r14, r26
     714:	04 80       	ldd	r0, Z+4	; 0x04
     716:	f5 81       	ldd	r31, Z+5	; 0x05
     718:	e0 2d       	mov	r30, r0
     71a:	c6 01       	movw	r24, r12
     71c:	09 95       	icall
     71e:	f1 cf       	rjmp	.-30     	; 0x702 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
     720:	02 80       	ldd	r0, Z+2	; 0x02
     722:	f3 81       	ldd	r31, Z+3	; 0x03
     724:	e0 2d       	mov	r30, r0
     726:	c6 01       	movw	r24, r12
     728:	0f 90       	pop	r0
     72a:	0f 90       	pop	r0
     72c:	0f 90       	pop	r0
     72e:	0f 90       	pop	r0
     730:	df 91       	pop	r29
     732:	cf 91       	pop	r28
     734:	1f 91       	pop	r17
     736:	0f 91       	pop	r16
     738:	ff 90       	pop	r15
     73a:	ef 90       	pop	r14
     73c:	df 90       	pop	r13
     73e:	cf 90       	pop	r12
     740:	09 94       	ijmp

00000742 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     742:	ef 92       	push	r14
     744:	ff 92       	push	r15
     746:	1f 93       	push	r17
     748:	cf 93       	push	r28
     74a:	df 93       	push	r29
     74c:	1f 92       	push	r1
     74e:	cd b7       	in	r28, 0x3d	; 61
     750:	de b7       	in	r29, 0x3e	; 62
     752:	7c 01       	movw	r14, r24
     754:	16 2f       	mov	r17, r22
     756:	dc 01       	movw	r26, r24
     758:	ed 91       	ld	r30, X+
     75a:	fc 91       	ld	r31, X
     75c:	01 90       	ld	r0, Z+
     75e:	f0 81       	ld	r31, Z
     760:	e0 2d       	mov	r30, r0
     762:	49 83       	std	Y+1, r20	; 0x01
     764:	09 95       	icall
     766:	d7 01       	movw	r26, r14
     768:	ed 91       	ld	r30, X+
     76a:	fc 91       	ld	r31, X
     76c:	04 80       	ldd	r0, Z+4	; 0x04
     76e:	f5 81       	ldd	r31, Z+5	; 0x05
     770:	e0 2d       	mov	r30, r0
     772:	61 2f       	mov	r22, r17
     774:	c7 01       	movw	r24, r14
     776:	09 95       	icall
     778:	d7 01       	movw	r26, r14
     77a:	ed 91       	ld	r30, X+
     77c:	fc 91       	ld	r31, X
     77e:	04 80       	ldd	r0, Z+4	; 0x04
     780:	f5 81       	ldd	r31, Z+5	; 0x05
     782:	e0 2d       	mov	r30, r0
     784:	49 81       	ldd	r20, Y+1	; 0x01
     786:	64 2f       	mov	r22, r20
     788:	c7 01       	movw	r24, r14
     78a:	09 95       	icall
     78c:	d7 01       	movw	r26, r14
     78e:	ed 91       	ld	r30, X+
     790:	fc 91       	ld	r31, X
     792:	01 90       	ld	r0, Z+
     794:	f0 81       	ld	r31, Z
     796:	e0 2d       	mov	r30, r0
     798:	c7 01       	movw	r24, r14
     79a:	09 95       	icall
     79c:	d7 01       	movw	r26, r14
     79e:	ed 91       	ld	r30, X+
     7a0:	fc 91       	ld	r31, X
     7a2:	61 2f       	mov	r22, r17
     7a4:	61 60       	ori	r22, 0x01	; 1
     7a6:	04 80       	ldd	r0, Z+4	; 0x04
     7a8:	f5 81       	ldd	r31, Z+5	; 0x05
     7aa:	e0 2d       	mov	r30, r0
     7ac:	c7 01       	movw	r24, r14
     7ae:	09 95       	icall
     7b0:	d7 01       	movw	r26, r14
     7b2:	ed 91       	ld	r30, X+
     7b4:	fc 91       	ld	r31, X
     7b6:	06 80       	ldd	r0, Z+6	; 0x06
     7b8:	f7 81       	ldd	r31, Z+7	; 0x07
     7ba:	e0 2d       	mov	r30, r0
     7bc:	60 e0       	ldi	r22, 0x00	; 0
     7be:	c7 01       	movw	r24, r14
     7c0:	09 95       	icall
     7c2:	18 2f       	mov	r17, r24
     7c4:	d7 01       	movw	r26, r14
     7c6:	ed 91       	ld	r30, X+
     7c8:	fc 91       	ld	r31, X
     7ca:	02 80       	ldd	r0, Z+2	; 0x02
     7cc:	f3 81       	ldd	r31, Z+3	; 0x03
     7ce:	e0 2d       	mov	r30, r0
     7d0:	c7 01       	movw	r24, r14
     7d2:	09 95       	icall
     7d4:	81 2f       	mov	r24, r17
     7d6:	0f 90       	pop	r0
     7d8:	df 91       	pop	r29
     7da:	cf 91       	pop	r28
     7dc:	1f 91       	pop	r17
     7de:	ff 90       	pop	r15
     7e0:	ef 90       	pop	r14
     7e2:	08 95       	ret

000007e4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     7e4:	ef 92       	push	r14
     7e6:	ff 92       	push	r15
     7e8:	0f 93       	push	r16
     7ea:	1f 93       	push	r17
     7ec:	cf 93       	push	r28
     7ee:	df 93       	push	r29
     7f0:	1f 92       	push	r1
     7f2:	cd b7       	in	r28, 0x3d	; 61
     7f4:	de b7       	in	r29, 0x3e	; 62
     7f6:	7c 01       	movw	r14, r24
     7f8:	16 2f       	mov	r17, r22
     7fa:	dc 01       	movw	r26, r24
     7fc:	ed 91       	ld	r30, X+
     7fe:	fc 91       	ld	r31, X
     800:	01 90       	ld	r0, Z+
     802:	f0 81       	ld	r31, Z
     804:	e0 2d       	mov	r30, r0
     806:	49 83       	std	Y+1, r20	; 0x01
     808:	09 95       	icall
     80a:	d7 01       	movw	r26, r14
     80c:	ed 91       	ld	r30, X+
     80e:	fc 91       	ld	r31, X
     810:	04 80       	ldd	r0, Z+4	; 0x04
     812:	f5 81       	ldd	r31, Z+5	; 0x05
     814:	e0 2d       	mov	r30, r0
     816:	61 2f       	mov	r22, r17
     818:	c7 01       	movw	r24, r14
     81a:	09 95       	icall
     81c:	d7 01       	movw	r26, r14
     81e:	ed 91       	ld	r30, X+
     820:	fc 91       	ld	r31, X
     822:	04 80       	ldd	r0, Z+4	; 0x04
     824:	f5 81       	ldd	r31, Z+5	; 0x05
     826:	e0 2d       	mov	r30, r0
     828:	49 81       	ldd	r20, Y+1	; 0x01
     82a:	64 2f       	mov	r22, r20
     82c:	c7 01       	movw	r24, r14
     82e:	09 95       	icall
     830:	d7 01       	movw	r26, r14
     832:	ed 91       	ld	r30, X+
     834:	fc 91       	ld	r31, X
     836:	01 90       	ld	r0, Z+
     838:	f0 81       	ld	r31, Z
     83a:	e0 2d       	mov	r30, r0
     83c:	c7 01       	movw	r24, r14
     83e:	09 95       	icall
     840:	d7 01       	movw	r26, r14
     842:	ed 91       	ld	r30, X+
     844:	fc 91       	ld	r31, X
     846:	61 2f       	mov	r22, r17
     848:	61 60       	ori	r22, 0x01	; 1
     84a:	04 80       	ldd	r0, Z+4	; 0x04
     84c:	f5 81       	ldd	r31, Z+5	; 0x05
     84e:	e0 2d       	mov	r30, r0
     850:	c7 01       	movw	r24, r14
     852:	09 95       	icall
     854:	d7 01       	movw	r26, r14
     856:	ed 91       	ld	r30, X+
     858:	fc 91       	ld	r31, X
     85a:	06 80       	ldd	r0, Z+6	; 0x06
     85c:	f7 81       	ldd	r31, Z+7	; 0x07
     85e:	e0 2d       	mov	r30, r0
     860:	61 e0       	ldi	r22, 0x01	; 1
     862:	c7 01       	movw	r24, r14
     864:	09 95       	icall
     866:	08 2f       	mov	r16, r24
     868:	10 e0       	ldi	r17, 0x00	; 0
     86a:	10 2f       	mov	r17, r16
     86c:	00 27       	eor	r16, r16
     86e:	d7 01       	movw	r26, r14
     870:	ed 91       	ld	r30, X+
     872:	fc 91       	ld	r31, X
     874:	06 80       	ldd	r0, Z+6	; 0x06
     876:	f7 81       	ldd	r31, Z+7	; 0x07
     878:	e0 2d       	mov	r30, r0
     87a:	60 e0       	ldi	r22, 0x00	; 0
     87c:	c7 01       	movw	r24, r14
     87e:	09 95       	icall
     880:	08 2b       	or	r16, r24
     882:	d7 01       	movw	r26, r14
     884:	ed 91       	ld	r30, X+
     886:	fc 91       	ld	r31, X
     888:	02 80       	ldd	r0, Z+2	; 0x02
     88a:	f3 81       	ldd	r31, Z+3	; 0x03
     88c:	e0 2d       	mov	r30, r0
     88e:	c7 01       	movw	r24, r14
     890:	09 95       	icall
     892:	c8 01       	movw	r24, r16
     894:	0f 90       	pop	r0
     896:	df 91       	pop	r29
     898:	cf 91       	pop	r28
     89a:	1f 91       	pop	r17
     89c:	0f 91       	pop	r16
     89e:	ff 90       	pop	r15
     8a0:	ef 90       	pop	r14
     8a2:	08 95       	ret

000008a4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     8a4:	cf 92       	push	r12
     8a6:	df 92       	push	r13
     8a8:	ef 92       	push	r14
     8aa:	ff 92       	push	r15
     8ac:	0f 93       	push	r16
     8ae:	1f 93       	push	r17
     8b0:	cf 93       	push	r28
     8b2:	df 93       	push	r29
     8b4:	00 d0       	rcall	.+0      	; 0x8b6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     8b6:	1f 92       	push	r1
     8b8:	cd b7       	in	r28, 0x3d	; 61
     8ba:	de b7       	in	r29, 0x3e	; 62
     8bc:	6c 01       	movw	r12, r24
     8be:	f6 2e       	mov	r15, r22
     8c0:	dc 01       	movw	r26, r24
     8c2:	ed 91       	ld	r30, X+
     8c4:	fc 91       	ld	r31, X
     8c6:	01 90       	ld	r0, Z+
     8c8:	f0 81       	ld	r31, Z
     8ca:	e0 2d       	mov	r30, r0
     8cc:	2a 83       	std	Y+2, r18	; 0x02
     8ce:	3b 83       	std	Y+3, r19	; 0x03
     8d0:	49 83       	std	Y+1, r20	; 0x01
     8d2:	09 95       	icall
     8d4:	d6 01       	movw	r26, r12
     8d6:	ed 91       	ld	r30, X+
     8d8:	fc 91       	ld	r31, X
     8da:	04 80       	ldd	r0, Z+4	; 0x04
     8dc:	f5 81       	ldd	r31, Z+5	; 0x05
     8de:	e0 2d       	mov	r30, r0
     8e0:	6f 2d       	mov	r22, r15
     8e2:	c6 01       	movw	r24, r12
     8e4:	09 95       	icall
     8e6:	d6 01       	movw	r26, r12
     8e8:	ed 91       	ld	r30, X+
     8ea:	fc 91       	ld	r31, X
     8ec:	04 80       	ldd	r0, Z+4	; 0x04
     8ee:	f5 81       	ldd	r31, Z+5	; 0x05
     8f0:	e0 2d       	mov	r30, r0
     8f2:	49 81       	ldd	r20, Y+1	; 0x01
     8f4:	64 2f       	mov	r22, r20
     8f6:	c6 01       	movw	r24, r12
     8f8:	09 95       	icall
     8fa:	d6 01       	movw	r26, r12
     8fc:	ed 91       	ld	r30, X+
     8fe:	fc 91       	ld	r31, X
     900:	01 90       	ld	r0, Z+
     902:	f0 81       	ld	r31, Z
     904:	e0 2d       	mov	r30, r0
     906:	c6 01       	movw	r24, r12
     908:	09 95       	icall
     90a:	d6 01       	movw	r26, r12
     90c:	ed 91       	ld	r30, X+
     90e:	fc 91       	ld	r31, X
     910:	6f 2d       	mov	r22, r15
     912:	61 60       	ori	r22, 0x01	; 1
     914:	04 80       	ldd	r0, Z+4	; 0x04
     916:	f5 81       	ldd	r31, Z+5	; 0x05
     918:	e0 2d       	mov	r30, r0
     91a:	c6 01       	movw	r24, r12
     91c:	09 95       	icall
     91e:	2a 81       	ldd	r18, Y+2	; 0x02
     920:	e2 2e       	mov	r14, r18
     922:	3b 81       	ldd	r19, Y+3	; 0x03
     924:	f3 2e       	mov	r15, r19
     926:	0e 0d       	add	r16, r14
     928:	1f 1d       	adc	r17, r15
     92a:	d6 01       	movw	r26, r12
     92c:	ed 91       	ld	r30, X+
     92e:	fc 91       	ld	r31, X
     930:	e0 16       	cp	r14, r16
     932:	f1 06       	cpc	r15, r17
     934:	51 f0       	breq	.+20     	; 0x94a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     936:	06 80       	ldd	r0, Z+6	; 0x06
     938:	f7 81       	ldd	r31, Z+7	; 0x07
     93a:	e0 2d       	mov	r30, r0
     93c:	61 e0       	ldi	r22, 0x01	; 1
     93e:	c6 01       	movw	r24, r12
     940:	09 95       	icall
     942:	f7 01       	movw	r30, r14
     944:	81 93       	st	Z+, r24
     946:	7f 01       	movw	r14, r30
     948:	f0 cf       	rjmp	.-32     	; 0x92a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     94a:	02 80       	ldd	r0, Z+2	; 0x02
     94c:	f3 81       	ldd	r31, Z+3	; 0x03
     94e:	e0 2d       	mov	r30, r0
     950:	c6 01       	movw	r24, r12
     952:	0f 90       	pop	r0
     954:	0f 90       	pop	r0
     956:	0f 90       	pop	r0
     958:	df 91       	pop	r29
     95a:	cf 91       	pop	r28
     95c:	1f 91       	pop	r17
     95e:	0f 91       	pop	r16
     960:	ff 90       	pop	r15
     962:	ef 90       	pop	r14
     964:	df 90       	pop	r13
     966:	cf 90       	pop	r12
     968:	09 94       	ijmp

0000096a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     96a:	88 23       	and	r24, r24
     96c:	21 f0       	breq	.+8      	; 0x976 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     96e:	bf 98       	cbi	0x17, 7	; 23
     970:	82 30       	cpi	r24, 0x02	; 2
     972:	19 f0       	breq	.+6      	; 0x97a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     974:	08 95       	ret
     976:	bf 9a       	sbi	0x17, 7	; 23
     978:	08 95       	ret
     97a:	c7 9a       	sbi	0x18, 7	; 24
     97c:	08 95       	ret

0000097e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     97e:	00 00       	nop
     980:	00 00       	nop
     982:	08 95       	ret

00000984 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     984:	1f 93       	push	r17
     986:	cf 93       	push	r28
     988:	df 93       	push	r29
     98a:	16 2f       	mov	r17, r22
     98c:	bd 98       	cbi	0x17, 5	; 23
     98e:	80 e0       	ldi	r24, 0x00	; 0
     990:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     994:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     998:	d8 e0       	ldi	r29, 0x08	; 8
     99a:	c0 e0       	ldi	r28, 0x00	; 0
     99c:	cc 0f       	add	r28, r28
     99e:	81 e0       	ldi	r24, 0x01	; 1
     9a0:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9a4:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9a8:	b5 99       	sbic	0x16, 5	; 22
     9aa:	c1 60       	ori	r28, 0x01	; 1
     9ac:	80 e0       	ldi	r24, 0x00	; 0
     9ae:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9b2:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9b6:	d1 50       	subi	r29, 0x01	; 1
     9b8:	89 f7       	brne	.-30     	; 0x99c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
     9ba:	11 23       	and	r17, r17
     9bc:	11 f0       	breq	.+4      	; 0x9c2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
     9be:	bd 9a       	sbi	0x17, 5	; 23
     9c0:	01 c0       	rjmp	.+2      	; 0x9c4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
     9c2:	bd 98       	cbi	0x17, 5	; 23
     9c4:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9c8:	81 e0       	ldi	r24, 0x01	; 1
     9ca:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9ce:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9d2:	80 e0       	ldi	r24, 0x00	; 0
     9d4:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9d8:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9dc:	bd 98       	cbi	0x17, 5	; 23
     9de:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9e2:	8c 2f       	mov	r24, r28
     9e4:	df 91       	pop	r29
     9e6:	cf 91       	pop	r28
     9e8:	1f 91       	pop	r17
     9ea:	08 95       	ret

000009ec <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
     9ec:	cf 93       	push	r28
     9ee:	df 93       	push	r29
     9f0:	d6 2f       	mov	r29, r22
     9f2:	c8 e0       	ldi	r28, 0x08	; 8
     9f4:	80 e0       	ldi	r24, 0x00	; 0
     9f6:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9fa:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9fe:	d7 ff       	sbrs	r29, 7
     a00:	02 c0       	rjmp	.+4      	; 0xa06 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
     a02:	bd 98       	cbi	0x17, 5	; 23
     a04:	01 c0       	rjmp	.+2      	; 0xa08 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
     a06:	bd 9a       	sbi	0x17, 5	; 23
     a08:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a0c:	81 e0       	ldi	r24, 0x01	; 1
     a0e:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a12:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a16:	dd 0f       	add	r29, r29
     a18:	c1 50       	subi	r28, 0x01	; 1
     a1a:	61 f7       	brne	.-40     	; 0x9f4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
     a1c:	80 e0       	ldi	r24, 0x00	; 0
     a1e:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a22:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a26:	bd 98       	cbi	0x17, 5	; 23
     a28:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a2c:	81 e0       	ldi	r24, 0x01	; 1
     a2e:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a32:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a36:	c6 b3       	in	r28, 0x16	; 22
     a38:	80 e0       	ldi	r24, 0x00	; 0
     a3a:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a3e:	0e 94 bf 04 	call	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a42:	c5 fb       	bst	r28, 5
     a44:	cc 27       	eor	r28, r28
     a46:	c0 f9       	bld	r28, 0
     a48:	81 e0       	ldi	r24, 0x01	; 1
     a4a:	8c 27       	eor	r24, r28
     a4c:	df 91       	pop	r29
     a4e:	cf 91       	pop	r28
     a50:	08 95       	ret

00000a52 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
     a52:	81 e0       	ldi	r24, 0x01	; 1
     a54:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a58:	bd 98       	cbi	0x17, 5	; 23
     a5a:	81 e0       	ldi	r24, 0x01	; 1
     a5c:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a60:	bd 9a       	sbi	0x17, 5	; 23
     a62:	80 e0       	ldi	r24, 0x00	; 0
     a64:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a68:	bd 98       	cbi	0x17, 5	; 23
     a6a:	0c 94 bf 04 	jmp	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000a6e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
     a6e:	80 e0       	ldi	r24, 0x00	; 0
     a70:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a74:	bd 9a       	sbi	0x17, 5	; 23
     a76:	81 e0       	ldi	r24, 0x01	; 1
     a78:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a7c:	bd 9a       	sbi	0x17, 5	; 23
     a7e:	81 e0       	ldi	r24, 0x01	; 1
     a80:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a84:	bd 98       	cbi	0x17, 5	; 23
     a86:	0c 94 bf 04 	jmp	0x97e	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000a8a <_GLOBAL__sub_I_i2c>:
     a8a:	8e e7       	ldi	r24, 0x7E	; 126
     a8c:	90 e0       	ldi	r25, 0x00	; 0
     a8e:	90 93 93 00 	sts	0x0093, r25
     a92:	80 93 92 00 	sts	0x0092, r24
     a96:	bd 98       	cbi	0x17, 5	; 23
     a98:	81 e0       	ldi	r24, 0x01	; 1
     a9a:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a9e:	c5 98       	cbi	0x18, 5	; 24
     aa0:	c7 98       	cbi	0x18, 7	; 24
     aa2:	08 95       	ret

00000aa4 <_ZdlPv>:
     aa4:	0c 94 3c 0b 	jmp	0x1678	; 0x1678 <free>

00000aa8 <_ZN4GyroC1Ev>:
     aa8:	08 95       	ret

00000aaa <_ZN4GyroD1Ev>:
     aaa:	08 95       	ret

00000aac <_ZN4Gyro4readEb>:
     aac:	4f 92       	push	r4
     aae:	5f 92       	push	r5
     ab0:	6f 92       	push	r6
     ab2:	7f 92       	push	r7
     ab4:	8f 92       	push	r8
     ab6:	9f 92       	push	r9
     ab8:	af 92       	push	r10
     aba:	bf 92       	push	r11
     abc:	cf 92       	push	r12
     abe:	df 92       	push	r13
     ac0:	ef 92       	push	r14
     ac2:	ff 92       	push	r15
     ac4:	0f 93       	push	r16
     ac6:	1f 93       	push	r17
     ac8:	cf 93       	push	r28
     aca:	df 93       	push	r29
     acc:	ec 01       	movw	r28, r24
     ace:	f6 2e       	mov	r15, r22
     ad0:	88 ad       	ldd	r24, Y+56	; 0x38
     ad2:	99 ad       	ldd	r25, Y+57	; 0x39
     ad4:	dc 01       	movw	r26, r24
     ad6:	ed 91       	ld	r30, X+
     ad8:	fc 91       	ld	r31, X
     ada:	06 84       	ldd	r0, Z+14	; 0x0e
     adc:	f7 85       	ldd	r31, Z+15	; 0x0f
     ade:	e0 2d       	mov	r30, r0
     ae0:	4f e0       	ldi	r20, 0x0F	; 15
     ae2:	66 ed       	ldi	r22, 0xD6	; 214
     ae4:	09 95       	icall
     ae6:	88 36       	cpi	r24, 0x68	; 104
     ae8:	49 f4       	brne	.+18     	; 0xafc <_ZN4Gyro4readEb+0x50>
     aea:	81 e0       	ldi	r24, 0x01	; 1
     aec:	90 e0       	ldi	r25, 0x00	; 0
     aee:	a0 e0       	ldi	r26, 0x00	; 0
     af0:	b0 e0       	ldi	r27, 0x00	; 0
     af2:	88 ab       	std	Y+48, r24	; 0x30
     af4:	99 ab       	std	Y+49, r25	; 0x31
     af6:	aa ab       	std	Y+50, r26	; 0x32
     af8:	bb ab       	std	Y+51, r27	; 0x33
     afa:	04 c0       	rjmp	.+8      	; 0xb04 <_ZN4Gyro4readEb+0x58>
     afc:	18 aa       	std	Y+48, r1	; 0x30
     afe:	19 aa       	std	Y+49, r1	; 0x31
     b00:	1a aa       	std	Y+50, r1	; 0x32
     b02:	1b aa       	std	Y+51, r1	; 0x33
     b04:	88 ad       	ldd	r24, Y+56	; 0x38
     b06:	99 ad       	ldd	r25, Y+57	; 0x39
     b08:	dc 01       	movw	r26, r24
     b0a:	ed 91       	ld	r30, X+
     b0c:	fc 91       	ld	r31, X
     b0e:	06 84       	ldd	r0, Z+14	; 0x0e
     b10:	f7 85       	ldd	r31, Z+15	; 0x0f
     b12:	e0 2d       	mov	r30, r0
     b14:	49 e1       	ldi	r20, 0x19	; 25
     b16:	66 ed       	ldi	r22, 0xD6	; 214
     b18:	09 95       	icall
     b1a:	a8 2e       	mov	r10, r24
     b1c:	b1 2c       	mov	r11, r1
     b1e:	ba 2c       	mov	r11, r10
     b20:	aa 24       	eor	r10, r10
     b22:	88 ad       	ldd	r24, Y+56	; 0x38
     b24:	99 ad       	ldd	r25, Y+57	; 0x39
     b26:	dc 01       	movw	r26, r24
     b28:	ed 91       	ld	r30, X+
     b2a:	fc 91       	ld	r31, X
     b2c:	06 84       	ldd	r0, Z+14	; 0x0e
     b2e:	f7 85       	ldd	r31, Z+15	; 0x0f
     b30:	e0 2d       	mov	r30, r0
     b32:	48 e1       	ldi	r20, 0x18	; 24
     b34:	66 ed       	ldi	r22, 0xD6	; 214
     b36:	09 95       	icall
     b38:	a8 2a       	or	r10, r24
     b3a:	88 ad       	ldd	r24, Y+56	; 0x38
     b3c:	99 ad       	ldd	r25, Y+57	; 0x39
     b3e:	dc 01       	movw	r26, r24
     b40:	ed 91       	ld	r30, X+
     b42:	fc 91       	ld	r31, X
     b44:	06 84       	ldd	r0, Z+14	; 0x0e
     b46:	f7 85       	ldd	r31, Z+15	; 0x0f
     b48:	e0 2d       	mov	r30, r0
     b4a:	4b e1       	ldi	r20, 0x1B	; 27
     b4c:	66 ed       	ldi	r22, 0xD6	; 214
     b4e:	09 95       	icall
     b50:	08 2f       	mov	r16, r24
     b52:	10 e0       	ldi	r17, 0x00	; 0
     b54:	10 2f       	mov	r17, r16
     b56:	00 27       	eor	r16, r16
     b58:	88 ad       	ldd	r24, Y+56	; 0x38
     b5a:	99 ad       	ldd	r25, Y+57	; 0x39
     b5c:	dc 01       	movw	r26, r24
     b5e:	ed 91       	ld	r30, X+
     b60:	fc 91       	ld	r31, X
     b62:	06 84       	ldd	r0, Z+14	; 0x0e
     b64:	f7 85       	ldd	r31, Z+15	; 0x0f
     b66:	e0 2d       	mov	r30, r0
     b68:	4a e1       	ldi	r20, 0x1A	; 26
     b6a:	66 ed       	ldi	r22, 0xD6	; 214
     b6c:	09 95       	icall
     b6e:	08 2b       	or	r16, r24
     b70:	88 ad       	ldd	r24, Y+56	; 0x38
     b72:	99 ad       	ldd	r25, Y+57	; 0x39
     b74:	dc 01       	movw	r26, r24
     b76:	ed 91       	ld	r30, X+
     b78:	fc 91       	ld	r31, X
     b7a:	06 84       	ldd	r0, Z+14	; 0x0e
     b7c:	f7 85       	ldd	r31, Z+15	; 0x0f
     b7e:	e0 2d       	mov	r30, r0
     b80:	4d e1       	ldi	r20, 0x1D	; 29
     b82:	66 ed       	ldi	r22, 0xD6	; 214
     b84:	09 95       	icall
     b86:	c8 2e       	mov	r12, r24
     b88:	d1 2c       	mov	r13, r1
     b8a:	dc 2c       	mov	r13, r12
     b8c:	cc 24       	eor	r12, r12
     b8e:	88 ad       	ldd	r24, Y+56	; 0x38
     b90:	99 ad       	ldd	r25, Y+57	; 0x39
     b92:	dc 01       	movw	r26, r24
     b94:	ed 91       	ld	r30, X+
     b96:	fc 91       	ld	r31, X
     b98:	06 84       	ldd	r0, Z+14	; 0x0e
     b9a:	f7 85       	ldd	r31, Z+15	; 0x0f
     b9c:	e0 2d       	mov	r30, r0
     b9e:	4c e1       	ldi	r20, 0x1C	; 28
     ba0:	66 ed       	ldi	r22, 0xD6	; 214
     ba2:	09 95       	icall
     ba4:	c8 2a       	or	r12, r24
     ba6:	c5 01       	movw	r24, r10
     ba8:	bb 0c       	add	r11, r11
     baa:	aa 0b       	sbc	r26, r26
     bac:	bb 0b       	sbc	r27, r27
     bae:	01 2e       	mov	r0, r17
     bb0:	00 0c       	add	r0, r0
     bb2:	22 0b       	sbc	r18, r18
     bb4:	33 0b       	sbc	r19, r19
     bb6:	46 01       	movw	r8, r12
     bb8:	dd 0c       	add	r13, r13
     bba:	aa 08       	sbc	r10, r10
     bbc:	bb 08       	sbc	r11, r11
     bbe:	ff 20       	and	r15, r15
     bc0:	21 f1       	breq	.+72     	; 0xc0a <_ZN4Gyro4readEb+0x15e>
     bc2:	cc a0       	ldd	r12, Y+36	; 0x24
     bc4:	dd a0       	ldd	r13, Y+37	; 0x25
     bc6:	ee a0       	ldd	r14, Y+38	; 0x26
     bc8:	ff a0       	ldd	r15, Y+39	; 0x27
     bca:	c8 0e       	add	r12, r24
     bcc:	d9 1e       	adc	r13, r25
     bce:	ea 1e       	adc	r14, r26
     bd0:	fb 1e       	adc	r15, r27
     bd2:	cc a2       	std	Y+36, r12	; 0x24
     bd4:	dd a2       	std	Y+37, r13	; 0x25
     bd6:	ee a2       	std	Y+38, r14	; 0x26
     bd8:	ff a2       	std	Y+39, r15	; 0x27
     bda:	c8 a4       	ldd	r12, Y+40	; 0x28
     bdc:	d9 a4       	ldd	r13, Y+41	; 0x29
     bde:	ea a4       	ldd	r14, Y+42	; 0x2a
     be0:	fb a4       	ldd	r15, Y+43	; 0x2b
     be2:	c0 0e       	add	r12, r16
     be4:	d1 1e       	adc	r13, r17
     be6:	e2 1e       	adc	r14, r18
     be8:	f3 1e       	adc	r15, r19
     bea:	c8 a6       	std	Y+40, r12	; 0x28
     bec:	d9 a6       	std	Y+41, r13	; 0x29
     bee:	ea a6       	std	Y+42, r14	; 0x2a
     bf0:	fb a6       	std	Y+43, r15	; 0x2b
     bf2:	cc a4       	ldd	r12, Y+44	; 0x2c
     bf4:	dd a4       	ldd	r13, Y+45	; 0x2d
     bf6:	ee a4       	ldd	r14, Y+46	; 0x2e
     bf8:	ff a4       	ldd	r15, Y+47	; 0x2f
     bfa:	c8 0c       	add	r12, r8
     bfc:	d9 1c       	adc	r13, r9
     bfe:	ea 1c       	adc	r14, r10
     c00:	fb 1c       	adc	r15, r11
     c02:	cc a6       	std	Y+44, r12	; 0x2c
     c04:	dd a6       	std	Y+45, r13	; 0x2d
     c06:	ee a6       	std	Y+46, r14	; 0x2e
     c08:	ff a6       	std	Y+47, r15	; 0x2f
     c0a:	cc a0       	ldd	r12, Y+36	; 0x24
     c0c:	dd a0       	ldd	r13, Y+37	; 0x25
     c0e:	ee a0       	ldd	r14, Y+38	; 0x26
     c10:	ff a0       	ldd	r15, Y+39	; 0x27
     c12:	bc 01       	movw	r22, r24
     c14:	cd 01       	movw	r24, r26
     c16:	6c 19       	sub	r22, r12
     c18:	7d 09       	sbc	r23, r13
     c1a:	8e 09       	sbc	r24, r14
     c1c:	9f 09       	sbc	r25, r15
     c1e:	6c 87       	std	Y+12, r22	; 0x0c
     c20:	7d 87       	std	Y+13, r23	; 0x0d
     c22:	8e 87       	std	Y+14, r24	; 0x0e
     c24:	9f 87       	std	Y+15, r25	; 0x0f
     c26:	c8 a4       	ldd	r12, Y+40	; 0x28
     c28:	d9 a4       	ldd	r13, Y+41	; 0x29
     c2a:	ea a4       	ldd	r14, Y+42	; 0x2a
     c2c:	fb a4       	ldd	r15, Y+43	; 0x2b
     c2e:	28 01       	movw	r4, r16
     c30:	39 01       	movw	r6, r18
     c32:	4c 18       	sub	r4, r12
     c34:	5d 08       	sbc	r5, r13
     c36:	6e 08       	sbc	r6, r14
     c38:	7f 08       	sbc	r7, r15
     c3a:	48 8a       	std	Y+16, r4	; 0x10
     c3c:	59 8a       	std	Y+17, r5	; 0x11
     c3e:	6a 8a       	std	Y+18, r6	; 0x12
     c40:	7b 8a       	std	Y+19, r7	; 0x13
     c42:	0c a5       	ldd	r16, Y+44	; 0x2c
     c44:	1d a5       	ldd	r17, Y+45	; 0x2d
     c46:	2e a5       	ldd	r18, Y+46	; 0x2e
     c48:	3f a5       	ldd	r19, Y+47	; 0x2f
     c4a:	75 01       	movw	r14, r10
     c4c:	64 01       	movw	r12, r8
     c4e:	c0 1a       	sub	r12, r16
     c50:	d1 0a       	sbc	r13, r17
     c52:	e2 0a       	sbc	r14, r18
     c54:	f3 0a       	sbc	r15, r19
     c56:	cc 8a       	std	Y+20, r12	; 0x14
     c58:	dd 8a       	std	Y+21, r13	; 0x15
     c5a:	ee 8a       	std	Y+22, r14	; 0x16
     c5c:	ff 8a       	std	Y+23, r15	; 0x17
     c5e:	29 e1       	ldi	r18, 0x19	; 25
     c60:	82 2e       	mov	r8, r18
     c62:	91 2c       	mov	r9, r1
     c64:	a1 2c       	mov	r10, r1
     c66:	b1 2c       	mov	r11, r1
     c68:	a5 01       	movw	r20, r10
     c6a:	94 01       	movw	r18, r8
     c6c:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     c70:	88 8d       	ldd	r24, Y+24	; 0x18
     c72:	99 8d       	ldd	r25, Y+25	; 0x19
     c74:	aa 8d       	ldd	r26, Y+26	; 0x1a
     c76:	bb 8d       	ldd	r27, Y+27	; 0x1b
     c78:	82 0f       	add	r24, r18
     c7a:	93 1f       	adc	r25, r19
     c7c:	a4 1f       	adc	r26, r20
     c7e:	b5 1f       	adc	r27, r21
     c80:	88 8f       	std	Y+24, r24	; 0x18
     c82:	99 8f       	std	Y+25, r25	; 0x19
     c84:	aa 8f       	std	Y+26, r26	; 0x1a
     c86:	bb 8f       	std	Y+27, r27	; 0x1b
     c88:	c3 01       	movw	r24, r6
     c8a:	b2 01       	movw	r22, r4
     c8c:	a5 01       	movw	r20, r10
     c8e:	94 01       	movw	r18, r8
     c90:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     c94:	8c 8d       	ldd	r24, Y+28	; 0x1c
     c96:	9d 8d       	ldd	r25, Y+29	; 0x1d
     c98:	ae 8d       	ldd	r26, Y+30	; 0x1e
     c9a:	bf 8d       	ldd	r27, Y+31	; 0x1f
     c9c:	82 0f       	add	r24, r18
     c9e:	93 1f       	adc	r25, r19
     ca0:	a4 1f       	adc	r26, r20
     ca2:	b5 1f       	adc	r27, r21
     ca4:	8c 8f       	std	Y+28, r24	; 0x1c
     ca6:	9d 8f       	std	Y+29, r25	; 0x1d
     ca8:	ae 8f       	std	Y+30, r26	; 0x1e
     caa:	bf 8f       	std	Y+31, r27	; 0x1f
     cac:	c7 01       	movw	r24, r14
     cae:	b6 01       	movw	r22, r12
     cb0:	a5 01       	movw	r20, r10
     cb2:	94 01       	movw	r18, r8
     cb4:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     cb8:	88 a1       	ldd	r24, Y+32	; 0x20
     cba:	99 a1       	ldd	r25, Y+33	; 0x21
     cbc:	aa a1       	ldd	r26, Y+34	; 0x22
     cbe:	bb a1       	ldd	r27, Y+35	; 0x23
     cc0:	82 0f       	add	r24, r18
     cc2:	93 1f       	adc	r25, r19
     cc4:	a4 1f       	adc	r26, r20
     cc6:	b5 1f       	adc	r27, r21
     cc8:	88 a3       	std	Y+32, r24	; 0x20
     cca:	99 a3       	std	Y+33, r25	; 0x21
     ccc:	aa a3       	std	Y+34, r26	; 0x22
     cce:	bb a3       	std	Y+35, r27	; 0x23
     cd0:	88 ad       	ldd	r24, Y+56	; 0x38
     cd2:	99 ad       	ldd	r25, Y+57	; 0x39
     cd4:	dc 01       	movw	r26, r24
     cd6:	ed 91       	ld	r30, X+
     cd8:	fc 91       	ld	r31, X
     cda:	06 84       	ldd	r0, Z+14	; 0x0e
     cdc:	f7 85       	ldd	r31, Z+15	; 0x0f
     cde:	e0 2d       	mov	r30, r0
     ce0:	49 e2       	ldi	r20, 0x29	; 41
     ce2:	66 ed       	ldi	r22, 0xD6	; 214
     ce4:	09 95       	icall
     ce6:	08 2f       	mov	r16, r24
     ce8:	10 e0       	ldi	r17, 0x00	; 0
     cea:	10 2f       	mov	r17, r16
     cec:	00 27       	eor	r16, r16
     cee:	88 ad       	ldd	r24, Y+56	; 0x38
     cf0:	99 ad       	ldd	r25, Y+57	; 0x39
     cf2:	dc 01       	movw	r26, r24
     cf4:	ed 91       	ld	r30, X+
     cf6:	fc 91       	ld	r31, X
     cf8:	06 84       	ldd	r0, Z+14	; 0x0e
     cfa:	f7 85       	ldd	r31, Z+15	; 0x0f
     cfc:	e0 2d       	mov	r30, r0
     cfe:	48 e2       	ldi	r20, 0x28	; 40
     d00:	66 ed       	ldi	r22, 0xD6	; 214
     d02:	09 95       	icall
     d04:	68 01       	movw	r12, r16
     d06:	c8 2a       	or	r12, r24
     d08:	88 ad       	ldd	r24, Y+56	; 0x38
     d0a:	99 ad       	ldd	r25, Y+57	; 0x39
     d0c:	dc 01       	movw	r26, r24
     d0e:	ed 91       	ld	r30, X+
     d10:	fc 91       	ld	r31, X
     d12:	06 84       	ldd	r0, Z+14	; 0x0e
     d14:	f7 85       	ldd	r31, Z+15	; 0x0f
     d16:	e0 2d       	mov	r30, r0
     d18:	4b e2       	ldi	r20, 0x2B	; 43
     d1a:	66 ed       	ldi	r22, 0xD6	; 214
     d1c:	09 95       	icall
     d1e:	08 2f       	mov	r16, r24
     d20:	10 e0       	ldi	r17, 0x00	; 0
     d22:	10 2f       	mov	r17, r16
     d24:	00 27       	eor	r16, r16
     d26:	88 ad       	ldd	r24, Y+56	; 0x38
     d28:	99 ad       	ldd	r25, Y+57	; 0x39
     d2a:	dc 01       	movw	r26, r24
     d2c:	ed 91       	ld	r30, X+
     d2e:	fc 91       	ld	r31, X
     d30:	06 84       	ldd	r0, Z+14	; 0x0e
     d32:	f7 85       	ldd	r31, Z+15	; 0x0f
     d34:	e0 2d       	mov	r30, r0
     d36:	4a e2       	ldi	r20, 0x2A	; 42
     d38:	66 ed       	ldi	r22, 0xD6	; 214
     d3a:	09 95       	icall
     d3c:	08 2b       	or	r16, r24
     d3e:	88 ad       	ldd	r24, Y+56	; 0x38
     d40:	99 ad       	ldd	r25, Y+57	; 0x39
     d42:	dc 01       	movw	r26, r24
     d44:	ed 91       	ld	r30, X+
     d46:	fc 91       	ld	r31, X
     d48:	06 84       	ldd	r0, Z+14	; 0x0e
     d4a:	f7 85       	ldd	r31, Z+15	; 0x0f
     d4c:	e0 2d       	mov	r30, r0
     d4e:	4d e2       	ldi	r20, 0x2D	; 45
     d50:	66 ed       	ldi	r22, 0xD6	; 214
     d52:	09 95       	icall
     d54:	90 e0       	ldi	r25, 0x00	; 0
     d56:	f8 2e       	mov	r15, r24
     d58:	ee 24       	eor	r14, r14
     d5a:	88 ad       	ldd	r24, Y+56	; 0x38
     d5c:	99 ad       	ldd	r25, Y+57	; 0x39
     d5e:	dc 01       	movw	r26, r24
     d60:	ed 91       	ld	r30, X+
     d62:	fc 91       	ld	r31, X
     d64:	06 84       	ldd	r0, Z+14	; 0x0e
     d66:	f7 85       	ldd	r31, Z+15	; 0x0f
     d68:	e0 2d       	mov	r30, r0
     d6a:	4c e2       	ldi	r20, 0x2C	; 44
     d6c:	66 ed       	ldi	r22, 0xD6	; 214
     d6e:	09 95       	icall
     d70:	a6 01       	movw	r20, r12
     d72:	dd 0c       	add	r13, r13
     d74:	66 0b       	sbc	r22, r22
     d76:	77 0b       	sbc	r23, r23
     d78:	48 83       	st	Y, r20
     d7a:	59 83       	std	Y+1, r21	; 0x01
     d7c:	6a 83       	std	Y+2, r22	; 0x02
     d7e:	7b 83       	std	Y+3, r23	; 0x03
     d80:	01 2e       	mov	r0, r17
     d82:	00 0c       	add	r0, r0
     d84:	22 0b       	sbc	r18, r18
     d86:	33 0b       	sbc	r19, r19
     d88:	0c 83       	std	Y+4, r16	; 0x04
     d8a:	1d 83       	std	Y+5, r17	; 0x05
     d8c:	2e 83       	std	Y+6, r18	; 0x06
     d8e:	3f 83       	std	Y+7, r19	; 0x07
     d90:	97 01       	movw	r18, r14
     d92:	28 2b       	or	r18, r24
     d94:	c9 01       	movw	r24, r18
     d96:	09 2e       	mov	r0, r25
     d98:	00 0c       	add	r0, r0
     d9a:	aa 0b       	sbc	r26, r26
     d9c:	bb 0b       	sbc	r27, r27
     d9e:	88 87       	std	Y+8, r24	; 0x08
     da0:	99 87       	std	Y+9, r25	; 0x09
     da2:	aa 87       	std	Y+10, r26	; 0x0a
     da4:	bb 87       	std	Y+11, r27	; 0x0b
     da6:	df 91       	pop	r29
     da8:	cf 91       	pop	r28
     daa:	1f 91       	pop	r17
     dac:	0f 91       	pop	r16
     dae:	ff 90       	pop	r15
     db0:	ef 90       	pop	r14
     db2:	df 90       	pop	r13
     db4:	cf 90       	pop	r12
     db6:	bf 90       	pop	r11
     db8:	af 90       	pop	r10
     dba:	9f 90       	pop	r9
     dbc:	8f 90       	pop	r8
     dbe:	7f 90       	pop	r7
     dc0:	6f 90       	pop	r6
     dc2:	5f 90       	pop	r5
     dc4:	4f 90       	pop	r4
     dc6:	08 95       	ret

00000dc8 <_ZN4Gyro11delay_loopsEm>:
     dc8:	41 50       	subi	r20, 0x01	; 1
     dca:	51 09       	sbc	r21, r1
     dcc:	61 09       	sbc	r22, r1
     dce:	71 09       	sbc	r23, r1
     dd0:	10 f0       	brcs	.+4      	; 0xdd6 <_ZN4Gyro11delay_loopsEm+0xe>
     dd2:	00 00       	nop
     dd4:	f9 cf       	rjmp	.-14     	; 0xdc8 <_ZN4Gyro11delay_loopsEm>
     dd6:	08 95       	ret

00000dd8 <_ZN4Gyro4initEP13I2C_Interface>:
     dd8:	cf 92       	push	r12
     dda:	df 92       	push	r13
     ddc:	ef 92       	push	r14
     dde:	ff 92       	push	r15
     de0:	cf 93       	push	r28
     de2:	df 93       	push	r29
     de4:	ec 01       	movw	r28, r24
     de6:	79 af       	std	Y+57, r23	; 0x39
     de8:	68 af       	std	Y+56, r22	; 0x38
     dea:	1c 86       	std	Y+12, r1	; 0x0c
     dec:	1d 86       	std	Y+13, r1	; 0x0d
     dee:	1e 86       	std	Y+14, r1	; 0x0e
     df0:	1f 86       	std	Y+15, r1	; 0x0f
     df2:	18 8a       	std	Y+16, r1	; 0x10
     df4:	19 8a       	std	Y+17, r1	; 0x11
     df6:	1a 8a       	std	Y+18, r1	; 0x12
     df8:	1b 8a       	std	Y+19, r1	; 0x13
     dfa:	1c 8a       	std	Y+20, r1	; 0x14
     dfc:	1d 8a       	std	Y+21, r1	; 0x15
     dfe:	1e 8a       	std	Y+22, r1	; 0x16
     e00:	1f 8a       	std	Y+23, r1	; 0x17
     e02:	1c a2       	std	Y+36, r1	; 0x24
     e04:	1d a2       	std	Y+37, r1	; 0x25
     e06:	1e a2       	std	Y+38, r1	; 0x26
     e08:	1f a2       	std	Y+39, r1	; 0x27
     e0a:	18 a6       	std	Y+40, r1	; 0x28
     e0c:	19 a6       	std	Y+41, r1	; 0x29
     e0e:	1a a6       	std	Y+42, r1	; 0x2a
     e10:	1b a6       	std	Y+43, r1	; 0x2b
     e12:	1c a6       	std	Y+44, r1	; 0x2c
     e14:	1d a6       	std	Y+45, r1	; 0x2d
     e16:	1e a6       	std	Y+46, r1	; 0x2e
     e18:	1f a6       	std	Y+47, r1	; 0x2f
     e1a:	18 8e       	std	Y+24, r1	; 0x18
     e1c:	19 8e       	std	Y+25, r1	; 0x19
     e1e:	1a 8e       	std	Y+26, r1	; 0x1a
     e20:	1b 8e       	std	Y+27, r1	; 0x1b
     e22:	1c 8e       	std	Y+28, r1	; 0x1c
     e24:	1d 8e       	std	Y+29, r1	; 0x1d
     e26:	1e 8e       	std	Y+30, r1	; 0x1e
     e28:	1f 8e       	std	Y+31, r1	; 0x1f
     e2a:	18 a2       	std	Y+32, r1	; 0x20
     e2c:	19 a2       	std	Y+33, r1	; 0x21
     e2e:	1a a2       	std	Y+34, r1	; 0x22
     e30:	1b a2       	std	Y+35, r1	; 0x23
     e32:	40 e1       	ldi	r20, 0x10	; 16
     e34:	57 e2       	ldi	r21, 0x27	; 39
     e36:	60 e0       	ldi	r22, 0x00	; 0
     e38:	70 e0       	ldi	r23, 0x00	; 0
     e3a:	0e 94 e4 06 	call	0xdc8	; 0xdc8 <_ZN4Gyro11delay_loopsEm>
     e3e:	18 aa       	std	Y+48, r1	; 0x30
     e40:	19 aa       	std	Y+49, r1	; 0x31
     e42:	1a aa       	std	Y+50, r1	; 0x32
     e44:	1b aa       	std	Y+51, r1	; 0x33
     e46:	88 ad       	ldd	r24, Y+56	; 0x38
     e48:	99 ad       	ldd	r25, Y+57	; 0x39
     e4a:	dc 01       	movw	r26, r24
     e4c:	ed 91       	ld	r30, X+
     e4e:	fc 91       	ld	r31, X
     e50:	06 84       	ldd	r0, Z+14	; 0x0e
     e52:	f7 85       	ldd	r31, Z+15	; 0x0f
     e54:	e0 2d       	mov	r30, r0
     e56:	4f e0       	ldi	r20, 0x0F	; 15
     e58:	66 ed       	ldi	r22, 0xD6	; 214
     e5a:	09 95       	icall
     e5c:	88 36       	cpi	r24, 0x68	; 104
     e5e:	41 f4       	brne	.+16     	; 0xe70 <_ZN4Gyro4initEP13I2C_Interface+0x98>
     e60:	81 e0       	ldi	r24, 0x01	; 1
     e62:	90 e0       	ldi	r25, 0x00	; 0
     e64:	a0 e0       	ldi	r26, 0x00	; 0
     e66:	b0 e0       	ldi	r27, 0x00	; 0
     e68:	88 ab       	std	Y+48, r24	; 0x30
     e6a:	99 ab       	std	Y+49, r25	; 0x31
     e6c:	aa ab       	std	Y+50, r26	; 0x32
     e6e:	bb ab       	std	Y+51, r27	; 0x33
     e70:	88 ad       	ldd	r24, Y+56	; 0x38
     e72:	99 ad       	ldd	r25, Y+57	; 0x39
     e74:	dc 01       	movw	r26, r24
     e76:	ed 91       	ld	r30, X+
     e78:	fc 91       	ld	r31, X
     e7a:	00 84       	ldd	r0, Z+8	; 0x08
     e7c:	f1 85       	ldd	r31, Z+9	; 0x09
     e7e:	e0 2d       	mov	r30, r0
     e80:	28 ea       	ldi	r18, 0xA8	; 168
     e82:	40 e1       	ldi	r20, 0x10	; 16
     e84:	66 ed       	ldi	r22, 0xD6	; 214
     e86:	09 95       	icall
     e88:	88 ad       	ldd	r24, Y+56	; 0x38
     e8a:	99 ad       	ldd	r25, Y+57	; 0x39
     e8c:	dc 01       	movw	r26, r24
     e8e:	ed 91       	ld	r30, X+
     e90:	fc 91       	ld	r31, X
     e92:	00 84       	ldd	r0, Z+8	; 0x08
     e94:	f1 85       	ldd	r31, Z+9	; 0x09
     e96:	e0 2d       	mov	r30, r0
     e98:	28 e3       	ldi	r18, 0x38	; 56
     e9a:	4e e1       	ldi	r20, 0x1E	; 30
     e9c:	66 ed       	ldi	r22, 0xD6	; 214
     e9e:	09 95       	icall
     ea0:	88 ad       	ldd	r24, Y+56	; 0x38
     ea2:	99 ad       	ldd	r25, Y+57	; 0x39
     ea4:	dc 01       	movw	r26, r24
     ea6:	ed 91       	ld	r30, X+
     ea8:	fc 91       	ld	r31, X
     eaa:	00 84       	ldd	r0, Z+8	; 0x08
     eac:	f1 85       	ldd	r31, Z+9	; 0x09
     eae:	e0 2d       	mov	r30, r0
     eb0:	20 e0       	ldi	r18, 0x00	; 0
     eb2:	4e e2       	ldi	r20, 0x2E	; 46
     eb4:	66 ed       	ldi	r22, 0xD6	; 214
     eb6:	09 95       	icall
     eb8:	88 ad       	ldd	r24, Y+56	; 0x38
     eba:	99 ad       	ldd	r25, Y+57	; 0x39
     ebc:	dc 01       	movw	r26, r24
     ebe:	ed 91       	ld	r30, X+
     ec0:	fc 91       	ld	r31, X
     ec2:	00 84       	ldd	r0, Z+8	; 0x08
     ec4:	f1 85       	ldd	r31, Z+9	; 0x09
     ec6:	e0 2d       	mov	r30, r0
     ec8:	20 e0       	ldi	r18, 0x00	; 0
     eca:	42 e1       	ldi	r20, 0x12	; 18
     ecc:	66 ed       	ldi	r22, 0xD6	; 214
     ece:	09 95       	icall
     ed0:	88 ad       	ldd	r24, Y+56	; 0x38
     ed2:	99 ad       	ldd	r25, Y+57	; 0x39
     ed4:	dc 01       	movw	r26, r24
     ed6:	ed 91       	ld	r30, X+
     ed8:	fc 91       	ld	r31, X
     eda:	00 84       	ldd	r0, Z+8	; 0x08
     edc:	f1 85       	ldd	r31, Z+9	; 0x09
     ede:	e0 2d       	mov	r30, r0
     ee0:	20 e6       	ldi	r18, 0x60	; 96
     ee2:	40 e2       	ldi	r20, 0x20	; 32
     ee4:	66 ed       	ldi	r22, 0xD6	; 214
     ee6:	09 95       	icall
     ee8:	88 ad       	ldd	r24, Y+56	; 0x38
     eea:	99 ad       	ldd	r25, Y+57	; 0x39
     eec:	dc 01       	movw	r26, r24
     eee:	ed 91       	ld	r30, X+
     ef0:	fc 91       	ld	r31, X
     ef2:	00 84       	ldd	r0, Z+8	; 0x08
     ef4:	f1 85       	ldd	r31, Z+9	; 0x09
     ef6:	e0 2d       	mov	r30, r0
     ef8:	28 e3       	ldi	r18, 0x38	; 56
     efa:	4f e1       	ldi	r20, 0x1F	; 31
     efc:	66 ed       	ldi	r22, 0xD6	; 214
     efe:	09 95       	icall
     f00:	40 e1       	ldi	r20, 0x10	; 16
     f02:	57 e2       	ldi	r21, 0x27	; 39
     f04:	60 e0       	ldi	r22, 0x00	; 0
     f06:	70 e0       	ldi	r23, 0x00	; 0
     f08:	ce 01       	movw	r24, r28
     f0a:	0e 94 e4 06 	call	0xdc8	; 0xdc8 <_ZN4Gyro11delay_loopsEm>
     f0e:	60 e0       	ldi	r22, 0x00	; 0
     f10:	ce 01       	movw	r24, r28
     f12:	0e 94 56 05 	call	0xaac	; 0xaac <_ZN4Gyro4readEb>
     f16:	1c aa       	std	Y+52, r1	; 0x34
     f18:	1d aa       	std	Y+53, r1	; 0x35
     f1a:	1e aa       	std	Y+54, r1	; 0x36
     f1c:	1f aa       	std	Y+55, r1	; 0x37
     f1e:	e1 2c       	mov	r14, r1
     f20:	f1 2c       	mov	r15, r1
     f22:	61 e0       	ldi	r22, 0x01	; 1
     f24:	ce 01       	movw	r24, r28
     f26:	0e 94 56 05 	call	0xaac	; 0xaac <_ZN4Gyro4readEb>
     f2a:	48 ee       	ldi	r20, 0xE8	; 232
     f2c:	53 e0       	ldi	r21, 0x03	; 3
     f2e:	60 e0       	ldi	r22, 0x00	; 0
     f30:	70 e0       	ldi	r23, 0x00	; 0
     f32:	ce 01       	movw	r24, r28
     f34:	0e 94 e4 06 	call	0xdc8	; 0xdc8 <_ZN4Gyro11delay_loopsEm>
     f38:	bf ef       	ldi	r27, 0xFF	; 255
     f3a:	eb 1a       	sub	r14, r27
     f3c:	fb 0a       	sbc	r15, r27
     f3e:	88 ec       	ldi	r24, 0xC8	; 200
     f40:	e8 16       	cp	r14, r24
     f42:	f1 04       	cpc	r15, r1
     f44:	71 f7       	brne	.-36     	; 0xf22 <_ZN4Gyro4initEP13I2C_Interface+0x14a>
     f46:	6c a1       	ldd	r22, Y+36	; 0x24
     f48:	7d a1       	ldd	r23, Y+37	; 0x25
     f4a:	8e a1       	ldd	r24, Y+38	; 0x26
     f4c:	9f a1       	ldd	r25, Y+39	; 0x27
     f4e:	28 ec       	ldi	r18, 0xC8	; 200
     f50:	c2 2e       	mov	r12, r18
     f52:	d1 2c       	mov	r13, r1
     f54:	e1 2c       	mov	r14, r1
     f56:	f1 2c       	mov	r15, r1
     f58:	a7 01       	movw	r20, r14
     f5a:	96 01       	movw	r18, r12
     f5c:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     f60:	2c a3       	std	Y+36, r18	; 0x24
     f62:	3d a3       	std	Y+37, r19	; 0x25
     f64:	4e a3       	std	Y+38, r20	; 0x26
     f66:	5f a3       	std	Y+39, r21	; 0x27
     f68:	68 a5       	ldd	r22, Y+40	; 0x28
     f6a:	79 a5       	ldd	r23, Y+41	; 0x29
     f6c:	8a a5       	ldd	r24, Y+42	; 0x2a
     f6e:	9b a5       	ldd	r25, Y+43	; 0x2b
     f70:	a7 01       	movw	r20, r14
     f72:	96 01       	movw	r18, r12
     f74:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     f78:	28 a7       	std	Y+40, r18	; 0x28
     f7a:	39 a7       	std	Y+41, r19	; 0x29
     f7c:	4a a7       	std	Y+42, r20	; 0x2a
     f7e:	5b a7       	std	Y+43, r21	; 0x2b
     f80:	6c a5       	ldd	r22, Y+44	; 0x2c
     f82:	7d a5       	ldd	r23, Y+45	; 0x2d
     f84:	8e a5       	ldd	r24, Y+46	; 0x2e
     f86:	9f a5       	ldd	r25, Y+47	; 0x2f
     f88:	a7 01       	movw	r20, r14
     f8a:	96 01       	movw	r18, r12
     f8c:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     f90:	2c a7       	std	Y+44, r18	; 0x2c
     f92:	3d a7       	std	Y+45, r19	; 0x2d
     f94:	4e a7       	std	Y+46, r20	; 0x2e
     f96:	5f a7       	std	Y+47, r21	; 0x2f
     f98:	18 8e       	std	Y+24, r1	; 0x18
     f9a:	19 8e       	std	Y+25, r1	; 0x19
     f9c:	1a 8e       	std	Y+26, r1	; 0x1a
     f9e:	1b 8e       	std	Y+27, r1	; 0x1b
     fa0:	1c 8e       	std	Y+28, r1	; 0x1c
     fa2:	1d 8e       	std	Y+29, r1	; 0x1d
     fa4:	1e 8e       	std	Y+30, r1	; 0x1e
     fa6:	1f 8e       	std	Y+31, r1	; 0x1f
     fa8:	18 a2       	std	Y+32, r1	; 0x20
     faa:	19 a2       	std	Y+33, r1	; 0x21
     fac:	1a a2       	std	Y+34, r1	; 0x22
     fae:	1b a2       	std	Y+35, r1	; 0x23
     fb0:	18 82       	st	Y, r1
     fb2:	19 82       	std	Y+1, r1	; 0x01
     fb4:	1a 82       	std	Y+2, r1	; 0x02
     fb6:	1b 82       	std	Y+3, r1	; 0x03
     fb8:	1c 82       	std	Y+4, r1	; 0x04
     fba:	1d 82       	std	Y+5, r1	; 0x05
     fbc:	1e 82       	std	Y+6, r1	; 0x06
     fbe:	1f 82       	std	Y+7, r1	; 0x07
     fc0:	18 86       	std	Y+8, r1	; 0x08
     fc2:	19 86       	std	Y+9, r1	; 0x09
     fc4:	1a 86       	std	Y+10, r1	; 0x0a
     fc6:	1b 86       	std	Y+11, r1	; 0x0b
     fc8:	df 91       	pop	r29
     fca:	cf 91       	pop	r28
     fcc:	ff 90       	pop	r15
     fce:	ef 90       	pop	r14
     fd0:	df 90       	pop	r13
     fd2:	cf 90       	pop	r12
     fd4:	08 95       	ret

00000fd6 <_ZN5TimerC1Ev>:
     fd6:	e7 e9       	ldi	r30, 0x97	; 151
     fd8:	f0 e0       	ldi	r31, 0x00	; 0
     fda:	11 82       	std	Z+1, r1	; 0x01
     fdc:	10 82       	st	Z, r1
     fde:	13 82       	std	Z+3, r1	; 0x03
     fe0:	12 82       	std	Z+2, r1	; 0x02
     fe2:	15 82       	std	Z+5, r1	; 0x05
     fe4:	14 82       	std	Z+4, r1	; 0x04
     fe6:	16 82       	std	Z+6, r1	; 0x06
     fe8:	37 96       	adiw	r30, 0x07	; 7
     fea:	80 e0       	ldi	r24, 0x00	; 0
     fec:	ef 3c       	cpi	r30, 0xCF	; 207
     fee:	f8 07       	cpc	r31, r24
     ff0:	a1 f7       	brne	.-24     	; 0xfda <_ZN5TimerC1Ev+0x4>
     ff2:	83 b7       	in	r24, 0x33	; 51
     ff4:	88 60       	ori	r24, 0x08	; 8
     ff6:	83 bf       	out	0x33, r24	; 51
     ff8:	8b e9       	ldi	r24, 0x9B	; 155
     ffa:	8c bf       	out	0x3c, r24	; 60
     ffc:	83 e0       	ldi	r24, 0x03	; 3
     ffe:	83 bf       	out	0x33, r24	; 51
    1000:	89 b7       	in	r24, 0x39	; 57
    1002:	82 60       	ori	r24, 0x02	; 2
    1004:	89 bf       	out	0x39, r24	; 57
    1006:	78 94       	sei
    1008:	08 95       	ret

0000100a <_ZN5Timer8add_taskEP4Taskj>:
    100a:	f8 94       	cli
    100c:	e7 e9       	ldi	r30, 0x97	; 151
    100e:	f0 e0       	ldi	r31, 0x00	; 0
    1010:	80 e0       	ldi	r24, 0x00	; 0
    1012:	90 e0       	ldi	r25, 0x00	; 0
    1014:	20 81       	ld	r18, Z
    1016:	31 81       	ldd	r19, Z+1	; 0x01
    1018:	23 2b       	or	r18, r19
    101a:	81 f4       	brne	.+32     	; 0x103c <_ZN5Timer8add_taskEP4Taskj+0x32>
    101c:	27 e0       	ldi	r18, 0x07	; 7
    101e:	28 9f       	mul	r18, r24
    1020:	f0 01       	movw	r30, r0
    1022:	29 9f       	mul	r18, r25
    1024:	f0 0d       	add	r31, r0
    1026:	11 24       	eor	r1, r1
    1028:	e9 56       	subi	r30, 0x69	; 105
    102a:	ff 4f       	sbci	r31, 0xFF	; 255
    102c:	71 83       	std	Z+1, r23	; 0x01
    102e:	60 83       	st	Z, r22
    1030:	53 83       	std	Z+3, r21	; 0x03
    1032:	42 83       	std	Z+2, r20	; 0x02
    1034:	55 83       	std	Z+5, r21	; 0x05
    1036:	44 83       	std	Z+4, r20	; 0x04
    1038:	16 82       	std	Z+6, r1	; 0x06
    103a:	07 c0       	rjmp	.+14     	; 0x104a <_ZN5Timer8add_taskEP4Taskj+0x40>
    103c:	01 96       	adiw	r24, 0x01	; 1
    103e:	37 96       	adiw	r30, 0x07	; 7
    1040:	88 30       	cpi	r24, 0x08	; 8
    1042:	91 05       	cpc	r25, r1
    1044:	39 f7       	brne	.-50     	; 0x1014 <_ZN5Timer8add_taskEP4Taskj+0xa>
    1046:	8f ef       	ldi	r24, 0xFF	; 255
    1048:	9f ef       	ldi	r25, 0xFF	; 255
    104a:	78 94       	sei
    104c:	08 95       	ret

0000104e <_ZN5Timer4mainEv>:
    104e:	cf 93       	push	r28
    1050:	df 93       	push	r29
    1052:	cd e9       	ldi	r28, 0x9D	; 157
    1054:	d0 e0       	ldi	r29, 0x00	; 0
    1056:	fe 01       	movw	r30, r28
    1058:	36 97       	sbiw	r30, 0x06	; 6
    105a:	80 81       	ld	r24, Z
    105c:	91 81       	ldd	r25, Z+1	; 0x01
    105e:	00 97       	sbiw	r24, 0x00	; 0
    1060:	59 f0       	breq	.+22     	; 0x1078 <_ZN5Timer4mainEv+0x2a>
    1062:	28 81       	ld	r18, Y
    1064:	22 23       	and	r18, r18
    1066:	41 f0       	breq	.+16     	; 0x1078 <_ZN5Timer4mainEv+0x2a>
    1068:	18 82       	st	Y, r1
    106a:	dc 01       	movw	r26, r24
    106c:	ed 91       	ld	r30, X+
    106e:	fc 91       	ld	r31, X
    1070:	04 80       	ldd	r0, Z+4	; 0x04
    1072:	f5 81       	ldd	r31, Z+5	; 0x05
    1074:	e0 2d       	mov	r30, r0
    1076:	09 95       	icall
    1078:	27 96       	adiw	r28, 0x07	; 7
    107a:	b0 e0       	ldi	r27, 0x00	; 0
    107c:	c5 3d       	cpi	r28, 0xD5	; 213
    107e:	db 07       	cpc	r29, r27
    1080:	51 f7       	brne	.-44     	; 0x1056 <_ZN5Timer4mainEv+0x8>
    1082:	df 91       	pop	r29
    1084:	cf 91       	pop	r28
    1086:	08 95       	ret

00001088 <__vector_19>:
    1088:	1f 92       	push	r1
    108a:	0f 92       	push	r0
    108c:	0f b6       	in	r0, 0x3f	; 63
    108e:	0f 92       	push	r0
    1090:	11 24       	eor	r1, r1
    1092:	8f 93       	push	r24
    1094:	9f 93       	push	r25
    1096:	af 93       	push	r26
    1098:	bf 93       	push	r27
    109a:	ef 93       	push	r30
    109c:	ff 93       	push	r31
    109e:	e7 e9       	ldi	r30, 0x97	; 151
    10a0:	f0 e0       	ldi	r31, 0x00	; 0
    10a2:	ad e9       	ldi	r26, 0x9D	; 157
    10a4:	b0 e0       	ldi	r27, 0x00	; 0
    10a6:	84 81       	ldd	r24, Z+4	; 0x04
    10a8:	95 81       	ldd	r25, Z+5	; 0x05
    10aa:	00 97       	sbiw	r24, 0x00	; 0
    10ac:	21 f0       	breq	.+8      	; 0x10b6 <__vector_19+0x2e>
    10ae:	01 97       	sbiw	r24, 0x01	; 1
    10b0:	95 83       	std	Z+5, r25	; 0x05
    10b2:	84 83       	std	Z+4, r24	; 0x04
    10b4:	09 c0       	rjmp	.+18     	; 0x10c8 <__vector_19+0x40>
    10b6:	82 81       	ldd	r24, Z+2	; 0x02
    10b8:	93 81       	ldd	r25, Z+3	; 0x03
    10ba:	95 83       	std	Z+5, r25	; 0x05
    10bc:	84 83       	std	Z+4, r24	; 0x04
    10be:	8c 91       	ld	r24, X
    10c0:	8f 3f       	cpi	r24, 0xFF	; 255
    10c2:	11 f0       	breq	.+4      	; 0x10c8 <__vector_19+0x40>
    10c4:	8f 5f       	subi	r24, 0xFF	; 255
    10c6:	8c 93       	st	X, r24
    10c8:	37 96       	adiw	r30, 0x07	; 7
    10ca:	17 96       	adiw	r26, 0x07	; 7
    10cc:	80 e0       	ldi	r24, 0x00	; 0
    10ce:	ef 3c       	cpi	r30, 0xCF	; 207
    10d0:	f8 07       	cpc	r31, r24
    10d2:	49 f7       	brne	.-46     	; 0x10a6 <__vector_19+0x1e>
    10d4:	80 91 cf 00 	lds	r24, 0x00CF
    10d8:	90 91 d0 00 	lds	r25, 0x00D0
    10dc:	a0 91 d1 00 	lds	r26, 0x00D1
    10e0:	b0 91 d2 00 	lds	r27, 0x00D2
    10e4:	01 96       	adiw	r24, 0x01	; 1
    10e6:	a1 1d       	adc	r26, r1
    10e8:	b1 1d       	adc	r27, r1
    10ea:	80 93 cf 00 	sts	0x00CF, r24
    10ee:	90 93 d0 00 	sts	0x00D0, r25
    10f2:	a0 93 d1 00 	sts	0x00D1, r26
    10f6:	b0 93 d2 00 	sts	0x00D2, r27
    10fa:	ff 91       	pop	r31
    10fc:	ef 91       	pop	r30
    10fe:	bf 91       	pop	r27
    1100:	af 91       	pop	r26
    1102:	9f 91       	pop	r25
    1104:	8f 91       	pop	r24
    1106:	0f 90       	pop	r0
    1108:	0f be       	out	0x3f, r0	; 63
    110a:	0f 90       	pop	r0
    110c:	1f 90       	pop	r1
    110e:	18 95       	reti

00001110 <_GLOBAL__sub_I_g_rt_time>:
    1110:	86 e9       	ldi	r24, 0x96	; 150
    1112:	90 e0       	ldi	r25, 0x00	; 0
    1114:	0c 94 eb 07 	jmp	0xfd6	; 0xfd6 <_ZN5TimerC1Ev>

00001118 <_GLOBAL__sub_I_terminal>:
    1118:	83 ed       	ldi	r24, 0xD3	; 211
    111a:	90 e0       	ldi	r25, 0x00	; 0
    111c:	0c 94 76 02 	jmp	0x4ec	; 0x4ec <_ZN5USARTC1Ev>

00001120 <_GLOBAL__sub_D_terminal>:
    1120:	83 ed       	ldi	r24, 0xD3	; 211
    1122:	90 e0       	ldi	r25, 0x00	; 0
    1124:	0c 94 80 02 	jmp	0x500	; 0x500 <_ZN5USARTD1Ev>

00001128 <__udivmodsi4>:
    1128:	a1 e2       	ldi	r26, 0x21	; 33
    112a:	1a 2e       	mov	r1, r26
    112c:	aa 1b       	sub	r26, r26
    112e:	bb 1b       	sub	r27, r27
    1130:	fd 01       	movw	r30, r26
    1132:	0d c0       	rjmp	.+26     	; 0x114e <__udivmodsi4_ep>

00001134 <__udivmodsi4_loop>:
    1134:	aa 1f       	adc	r26, r26
    1136:	bb 1f       	adc	r27, r27
    1138:	ee 1f       	adc	r30, r30
    113a:	ff 1f       	adc	r31, r31
    113c:	a2 17       	cp	r26, r18
    113e:	b3 07       	cpc	r27, r19
    1140:	e4 07       	cpc	r30, r20
    1142:	f5 07       	cpc	r31, r21
    1144:	20 f0       	brcs	.+8      	; 0x114e <__udivmodsi4_ep>
    1146:	a2 1b       	sub	r26, r18
    1148:	b3 0b       	sbc	r27, r19
    114a:	e4 0b       	sbc	r30, r20
    114c:	f5 0b       	sbc	r31, r21

0000114e <__udivmodsi4_ep>:
    114e:	66 1f       	adc	r22, r22
    1150:	77 1f       	adc	r23, r23
    1152:	88 1f       	adc	r24, r24
    1154:	99 1f       	adc	r25, r25
    1156:	1a 94       	dec	r1
    1158:	69 f7       	brne	.-38     	; 0x1134 <__udivmodsi4_loop>
    115a:	60 95       	com	r22
    115c:	70 95       	com	r23
    115e:	80 95       	com	r24
    1160:	90 95       	com	r25
    1162:	9b 01       	movw	r18, r22
    1164:	ac 01       	movw	r20, r24
    1166:	bd 01       	movw	r22, r26
    1168:	cf 01       	movw	r24, r30
    116a:	08 95       	ret

0000116c <__divmodsi4>:
    116c:	05 2e       	mov	r0, r21
    116e:	97 fb       	bst	r25, 7
    1170:	1e f4       	brtc	.+6      	; 0x1178 <__divmodsi4+0xc>
    1172:	00 94       	com	r0
    1174:	0e 94 cd 08 	call	0x119a	; 0x119a <__negsi2>
    1178:	57 fd       	sbrc	r21, 7
    117a:	07 d0       	rcall	.+14     	; 0x118a <__divmodsi4_neg2>
    117c:	0e 94 94 08 	call	0x1128	; 0x1128 <__udivmodsi4>
    1180:	07 fc       	sbrc	r0, 7
    1182:	03 d0       	rcall	.+6      	; 0x118a <__divmodsi4_neg2>
    1184:	4e f4       	brtc	.+18     	; 0x1198 <__divmodsi4_exit>
    1186:	0c 94 cd 08 	jmp	0x119a	; 0x119a <__negsi2>

0000118a <__divmodsi4_neg2>:
    118a:	50 95       	com	r21
    118c:	40 95       	com	r20
    118e:	30 95       	com	r19
    1190:	21 95       	neg	r18
    1192:	3f 4f       	sbci	r19, 0xFF	; 255
    1194:	4f 4f       	sbci	r20, 0xFF	; 255
    1196:	5f 4f       	sbci	r21, 0xFF	; 255

00001198 <__divmodsi4_exit>:
    1198:	08 95       	ret

0000119a <__negsi2>:
    119a:	90 95       	com	r25
    119c:	80 95       	com	r24
    119e:	70 95       	com	r23
    11a0:	61 95       	neg	r22
    11a2:	7f 4f       	sbci	r23, 0xFF	; 255
    11a4:	8f 4f       	sbci	r24, 0xFF	; 255
    11a6:	9f 4f       	sbci	r25, 0xFF	; 255
    11a8:	08 95       	ret

000011aa <__tablejump2__>:
    11aa:	ee 0f       	add	r30, r30
    11ac:	ff 1f       	adc	r31, r31
    11ae:	05 90       	lpm	r0, Z+
    11b0:	f4 91       	lpm	r31, Z
    11b2:	e0 2d       	mov	r30, r0
    11b4:	09 94       	ijmp

000011b6 <__subsf3>:
    11b6:	50 58       	subi	r21, 0x80	; 128

000011b8 <__addsf3>:
    11b8:	bb 27       	eor	r27, r27
    11ba:	aa 27       	eor	r26, r26
    11bc:	0e 94 f3 08 	call	0x11e6	; 0x11e6 <__addsf3x>
    11c0:	0c 94 fb 09 	jmp	0x13f6	; 0x13f6 <__fp_round>
    11c4:	0e 94 ed 09 	call	0x13da	; 0x13da <__fp_pscA>
    11c8:	38 f0       	brcs	.+14     	; 0x11d8 <__addsf3+0x20>
    11ca:	0e 94 f4 09 	call	0x13e8	; 0x13e8 <__fp_pscB>
    11ce:	20 f0       	brcs	.+8      	; 0x11d8 <__addsf3+0x20>
    11d0:	39 f4       	brne	.+14     	; 0x11e0 <__addsf3+0x28>
    11d2:	9f 3f       	cpi	r25, 0xFF	; 255
    11d4:	19 f4       	brne	.+6      	; 0x11dc <__addsf3+0x24>
    11d6:	26 f4       	brtc	.+8      	; 0x11e0 <__addsf3+0x28>
    11d8:	0c 94 ea 09 	jmp	0x13d4	; 0x13d4 <__fp_nan>
    11dc:	0e f4       	brtc	.+2      	; 0x11e0 <__addsf3+0x28>
    11de:	e0 95       	com	r30
    11e0:	e7 fb       	bst	r30, 7
    11e2:	0c 94 e4 09 	jmp	0x13c8	; 0x13c8 <__fp_inf>

000011e6 <__addsf3x>:
    11e6:	e9 2f       	mov	r30, r25
    11e8:	0e 94 0c 0a 	call	0x1418	; 0x1418 <__fp_split3>
    11ec:	58 f3       	brcs	.-42     	; 0x11c4 <__addsf3+0xc>
    11ee:	ba 17       	cp	r27, r26
    11f0:	62 07       	cpc	r22, r18
    11f2:	73 07       	cpc	r23, r19
    11f4:	84 07       	cpc	r24, r20
    11f6:	95 07       	cpc	r25, r21
    11f8:	20 f0       	brcs	.+8      	; 0x1202 <__addsf3x+0x1c>
    11fa:	79 f4       	brne	.+30     	; 0x121a <__addsf3x+0x34>
    11fc:	a6 f5       	brtc	.+104    	; 0x1266 <__addsf3x+0x80>
    11fe:	0c 94 2e 0a 	jmp	0x145c	; 0x145c <__fp_zero>
    1202:	0e f4       	brtc	.+2      	; 0x1206 <__addsf3x+0x20>
    1204:	e0 95       	com	r30
    1206:	0b 2e       	mov	r0, r27
    1208:	ba 2f       	mov	r27, r26
    120a:	a0 2d       	mov	r26, r0
    120c:	0b 01       	movw	r0, r22
    120e:	b9 01       	movw	r22, r18
    1210:	90 01       	movw	r18, r0
    1212:	0c 01       	movw	r0, r24
    1214:	ca 01       	movw	r24, r20
    1216:	a0 01       	movw	r20, r0
    1218:	11 24       	eor	r1, r1
    121a:	ff 27       	eor	r31, r31
    121c:	59 1b       	sub	r21, r25
    121e:	99 f0       	breq	.+38     	; 0x1246 <__addsf3x+0x60>
    1220:	59 3f       	cpi	r21, 0xF9	; 249
    1222:	50 f4       	brcc	.+20     	; 0x1238 <__addsf3x+0x52>
    1224:	50 3e       	cpi	r21, 0xE0	; 224
    1226:	68 f1       	brcs	.+90     	; 0x1282 <__addsf3x+0x9c>
    1228:	1a 16       	cp	r1, r26
    122a:	f0 40       	sbci	r31, 0x00	; 0
    122c:	a2 2f       	mov	r26, r18
    122e:	23 2f       	mov	r18, r19
    1230:	34 2f       	mov	r19, r20
    1232:	44 27       	eor	r20, r20
    1234:	58 5f       	subi	r21, 0xF8	; 248
    1236:	f3 cf       	rjmp	.-26     	; 0x121e <__addsf3x+0x38>
    1238:	46 95       	lsr	r20
    123a:	37 95       	ror	r19
    123c:	27 95       	ror	r18
    123e:	a7 95       	ror	r26
    1240:	f0 40       	sbci	r31, 0x00	; 0
    1242:	53 95       	inc	r21
    1244:	c9 f7       	brne	.-14     	; 0x1238 <__addsf3x+0x52>
    1246:	7e f4       	brtc	.+30     	; 0x1266 <__addsf3x+0x80>
    1248:	1f 16       	cp	r1, r31
    124a:	ba 0b       	sbc	r27, r26
    124c:	62 0b       	sbc	r22, r18
    124e:	73 0b       	sbc	r23, r19
    1250:	84 0b       	sbc	r24, r20
    1252:	ba f0       	brmi	.+46     	; 0x1282 <__addsf3x+0x9c>
    1254:	91 50       	subi	r25, 0x01	; 1
    1256:	a1 f0       	breq	.+40     	; 0x1280 <__addsf3x+0x9a>
    1258:	ff 0f       	add	r31, r31
    125a:	bb 1f       	adc	r27, r27
    125c:	66 1f       	adc	r22, r22
    125e:	77 1f       	adc	r23, r23
    1260:	88 1f       	adc	r24, r24
    1262:	c2 f7       	brpl	.-16     	; 0x1254 <__addsf3x+0x6e>
    1264:	0e c0       	rjmp	.+28     	; 0x1282 <__addsf3x+0x9c>
    1266:	ba 0f       	add	r27, r26
    1268:	62 1f       	adc	r22, r18
    126a:	73 1f       	adc	r23, r19
    126c:	84 1f       	adc	r24, r20
    126e:	48 f4       	brcc	.+18     	; 0x1282 <__addsf3x+0x9c>
    1270:	87 95       	ror	r24
    1272:	77 95       	ror	r23
    1274:	67 95       	ror	r22
    1276:	b7 95       	ror	r27
    1278:	f7 95       	ror	r31
    127a:	9e 3f       	cpi	r25, 0xFE	; 254
    127c:	08 f0       	brcs	.+2      	; 0x1280 <__addsf3x+0x9a>
    127e:	b0 cf       	rjmp	.-160    	; 0x11e0 <__addsf3+0x28>
    1280:	93 95       	inc	r25
    1282:	88 0f       	add	r24, r24
    1284:	08 f0       	brcs	.+2      	; 0x1288 <__addsf3x+0xa2>
    1286:	99 27       	eor	r25, r25
    1288:	ee 0f       	add	r30, r30
    128a:	97 95       	ror	r25
    128c:	87 95       	ror	r24
    128e:	08 95       	ret

00001290 <__cmpsf2>:
    1290:	0e 94 c0 09 	call	0x1380	; 0x1380 <__fp_cmp>
    1294:	08 f4       	brcc	.+2      	; 0x1298 <__cmpsf2+0x8>
    1296:	81 e0       	ldi	r24, 0x01	; 1
    1298:	08 95       	ret

0000129a <__fixsfsi>:
    129a:	0e 94 54 09 	call	0x12a8	; 0x12a8 <__fixunssfsi>
    129e:	68 94       	set
    12a0:	b1 11       	cpse	r27, r1
    12a2:	0c 94 2f 0a 	jmp	0x145e	; 0x145e <__fp_szero>
    12a6:	08 95       	ret

000012a8 <__fixunssfsi>:
    12a8:	0e 94 14 0a 	call	0x1428	; 0x1428 <__fp_splitA>
    12ac:	88 f0       	brcs	.+34     	; 0x12d0 <__fixunssfsi+0x28>
    12ae:	9f 57       	subi	r25, 0x7F	; 127
    12b0:	98 f0       	brcs	.+38     	; 0x12d8 <__fixunssfsi+0x30>
    12b2:	b9 2f       	mov	r27, r25
    12b4:	99 27       	eor	r25, r25
    12b6:	b7 51       	subi	r27, 0x17	; 23
    12b8:	b0 f0       	brcs	.+44     	; 0x12e6 <__fixunssfsi+0x3e>
    12ba:	e1 f0       	breq	.+56     	; 0x12f4 <__fixunssfsi+0x4c>
    12bc:	66 0f       	add	r22, r22
    12be:	77 1f       	adc	r23, r23
    12c0:	88 1f       	adc	r24, r24
    12c2:	99 1f       	adc	r25, r25
    12c4:	1a f0       	brmi	.+6      	; 0x12cc <__fixunssfsi+0x24>
    12c6:	ba 95       	dec	r27
    12c8:	c9 f7       	brne	.-14     	; 0x12bc <__fixunssfsi+0x14>
    12ca:	14 c0       	rjmp	.+40     	; 0x12f4 <__fixunssfsi+0x4c>
    12cc:	b1 30       	cpi	r27, 0x01	; 1
    12ce:	91 f0       	breq	.+36     	; 0x12f4 <__fixunssfsi+0x4c>
    12d0:	0e 94 2e 0a 	call	0x145c	; 0x145c <__fp_zero>
    12d4:	b1 e0       	ldi	r27, 0x01	; 1
    12d6:	08 95       	ret
    12d8:	0c 94 2e 0a 	jmp	0x145c	; 0x145c <__fp_zero>
    12dc:	67 2f       	mov	r22, r23
    12de:	78 2f       	mov	r23, r24
    12e0:	88 27       	eor	r24, r24
    12e2:	b8 5f       	subi	r27, 0xF8	; 248
    12e4:	39 f0       	breq	.+14     	; 0x12f4 <__fixunssfsi+0x4c>
    12e6:	b9 3f       	cpi	r27, 0xF9	; 249
    12e8:	cc f3       	brlt	.-14     	; 0x12dc <__fixunssfsi+0x34>
    12ea:	86 95       	lsr	r24
    12ec:	77 95       	ror	r23
    12ee:	67 95       	ror	r22
    12f0:	b3 95       	inc	r27
    12f2:	d9 f7       	brne	.-10     	; 0x12ea <__fixunssfsi+0x42>
    12f4:	3e f4       	brtc	.+14     	; 0x1304 <__fixunssfsi+0x5c>
    12f6:	90 95       	com	r25
    12f8:	80 95       	com	r24
    12fa:	70 95       	com	r23
    12fc:	61 95       	neg	r22
    12fe:	7f 4f       	sbci	r23, 0xFF	; 255
    1300:	8f 4f       	sbci	r24, 0xFF	; 255
    1302:	9f 4f       	sbci	r25, 0xFF	; 255
    1304:	08 95       	ret

00001306 <__floatunsisf>:
    1306:	e8 94       	clt
    1308:	09 c0       	rjmp	.+18     	; 0x131c <__floatsisf+0x12>

0000130a <__floatsisf>:
    130a:	97 fb       	bst	r25, 7
    130c:	3e f4       	brtc	.+14     	; 0x131c <__floatsisf+0x12>
    130e:	90 95       	com	r25
    1310:	80 95       	com	r24
    1312:	70 95       	com	r23
    1314:	61 95       	neg	r22
    1316:	7f 4f       	sbci	r23, 0xFF	; 255
    1318:	8f 4f       	sbci	r24, 0xFF	; 255
    131a:	9f 4f       	sbci	r25, 0xFF	; 255
    131c:	99 23       	and	r25, r25
    131e:	a9 f0       	breq	.+42     	; 0x134a <__floatsisf+0x40>
    1320:	f9 2f       	mov	r31, r25
    1322:	96 e9       	ldi	r25, 0x96	; 150
    1324:	bb 27       	eor	r27, r27
    1326:	93 95       	inc	r25
    1328:	f6 95       	lsr	r31
    132a:	87 95       	ror	r24
    132c:	77 95       	ror	r23
    132e:	67 95       	ror	r22
    1330:	b7 95       	ror	r27
    1332:	f1 11       	cpse	r31, r1
    1334:	f8 cf       	rjmp	.-16     	; 0x1326 <__floatsisf+0x1c>
    1336:	fa f4       	brpl	.+62     	; 0x1376 <__floatsisf+0x6c>
    1338:	bb 0f       	add	r27, r27
    133a:	11 f4       	brne	.+4      	; 0x1340 <__floatsisf+0x36>
    133c:	60 ff       	sbrs	r22, 0
    133e:	1b c0       	rjmp	.+54     	; 0x1376 <__floatsisf+0x6c>
    1340:	6f 5f       	subi	r22, 0xFF	; 255
    1342:	7f 4f       	sbci	r23, 0xFF	; 255
    1344:	8f 4f       	sbci	r24, 0xFF	; 255
    1346:	9f 4f       	sbci	r25, 0xFF	; 255
    1348:	16 c0       	rjmp	.+44     	; 0x1376 <__floatsisf+0x6c>
    134a:	88 23       	and	r24, r24
    134c:	11 f0       	breq	.+4      	; 0x1352 <__floatsisf+0x48>
    134e:	96 e9       	ldi	r25, 0x96	; 150
    1350:	11 c0       	rjmp	.+34     	; 0x1374 <__floatsisf+0x6a>
    1352:	77 23       	and	r23, r23
    1354:	21 f0       	breq	.+8      	; 0x135e <__floatsisf+0x54>
    1356:	9e e8       	ldi	r25, 0x8E	; 142
    1358:	87 2f       	mov	r24, r23
    135a:	76 2f       	mov	r23, r22
    135c:	05 c0       	rjmp	.+10     	; 0x1368 <__floatsisf+0x5e>
    135e:	66 23       	and	r22, r22
    1360:	71 f0       	breq	.+28     	; 0x137e <__floatsisf+0x74>
    1362:	96 e8       	ldi	r25, 0x86	; 134
    1364:	86 2f       	mov	r24, r22
    1366:	70 e0       	ldi	r23, 0x00	; 0
    1368:	60 e0       	ldi	r22, 0x00	; 0
    136a:	2a f0       	brmi	.+10     	; 0x1376 <__floatsisf+0x6c>
    136c:	9a 95       	dec	r25
    136e:	66 0f       	add	r22, r22
    1370:	77 1f       	adc	r23, r23
    1372:	88 1f       	adc	r24, r24
    1374:	da f7       	brpl	.-10     	; 0x136c <__floatsisf+0x62>
    1376:	88 0f       	add	r24, r24
    1378:	96 95       	lsr	r25
    137a:	87 95       	ror	r24
    137c:	97 f9       	bld	r25, 7
    137e:	08 95       	ret

00001380 <__fp_cmp>:
    1380:	99 0f       	add	r25, r25
    1382:	00 08       	sbc	r0, r0
    1384:	55 0f       	add	r21, r21
    1386:	aa 0b       	sbc	r26, r26
    1388:	e0 e8       	ldi	r30, 0x80	; 128
    138a:	fe ef       	ldi	r31, 0xFE	; 254
    138c:	16 16       	cp	r1, r22
    138e:	17 06       	cpc	r1, r23
    1390:	e8 07       	cpc	r30, r24
    1392:	f9 07       	cpc	r31, r25
    1394:	c0 f0       	brcs	.+48     	; 0x13c6 <__fp_cmp+0x46>
    1396:	12 16       	cp	r1, r18
    1398:	13 06       	cpc	r1, r19
    139a:	e4 07       	cpc	r30, r20
    139c:	f5 07       	cpc	r31, r21
    139e:	98 f0       	brcs	.+38     	; 0x13c6 <__fp_cmp+0x46>
    13a0:	62 1b       	sub	r22, r18
    13a2:	73 0b       	sbc	r23, r19
    13a4:	84 0b       	sbc	r24, r20
    13a6:	95 0b       	sbc	r25, r21
    13a8:	39 f4       	brne	.+14     	; 0x13b8 <__fp_cmp+0x38>
    13aa:	0a 26       	eor	r0, r26
    13ac:	61 f0       	breq	.+24     	; 0x13c6 <__fp_cmp+0x46>
    13ae:	23 2b       	or	r18, r19
    13b0:	24 2b       	or	r18, r20
    13b2:	25 2b       	or	r18, r21
    13b4:	21 f4       	brne	.+8      	; 0x13be <__fp_cmp+0x3e>
    13b6:	08 95       	ret
    13b8:	0a 26       	eor	r0, r26
    13ba:	09 f4       	brne	.+2      	; 0x13be <__fp_cmp+0x3e>
    13bc:	a1 40       	sbci	r26, 0x01	; 1
    13be:	a6 95       	lsr	r26
    13c0:	8f ef       	ldi	r24, 0xFF	; 255
    13c2:	81 1d       	adc	r24, r1
    13c4:	81 1d       	adc	r24, r1
    13c6:	08 95       	ret

000013c8 <__fp_inf>:
    13c8:	97 f9       	bld	r25, 7
    13ca:	9f 67       	ori	r25, 0x7F	; 127
    13cc:	80 e8       	ldi	r24, 0x80	; 128
    13ce:	70 e0       	ldi	r23, 0x00	; 0
    13d0:	60 e0       	ldi	r22, 0x00	; 0
    13d2:	08 95       	ret

000013d4 <__fp_nan>:
    13d4:	9f ef       	ldi	r25, 0xFF	; 255
    13d6:	80 ec       	ldi	r24, 0xC0	; 192
    13d8:	08 95       	ret

000013da <__fp_pscA>:
    13da:	00 24       	eor	r0, r0
    13dc:	0a 94       	dec	r0
    13de:	16 16       	cp	r1, r22
    13e0:	17 06       	cpc	r1, r23
    13e2:	18 06       	cpc	r1, r24
    13e4:	09 06       	cpc	r0, r25
    13e6:	08 95       	ret

000013e8 <__fp_pscB>:
    13e8:	00 24       	eor	r0, r0
    13ea:	0a 94       	dec	r0
    13ec:	12 16       	cp	r1, r18
    13ee:	13 06       	cpc	r1, r19
    13f0:	14 06       	cpc	r1, r20
    13f2:	05 06       	cpc	r0, r21
    13f4:	08 95       	ret

000013f6 <__fp_round>:
    13f6:	09 2e       	mov	r0, r25
    13f8:	03 94       	inc	r0
    13fa:	00 0c       	add	r0, r0
    13fc:	11 f4       	brne	.+4      	; 0x1402 <__fp_round+0xc>
    13fe:	88 23       	and	r24, r24
    1400:	52 f0       	brmi	.+20     	; 0x1416 <__fp_round+0x20>
    1402:	bb 0f       	add	r27, r27
    1404:	40 f4       	brcc	.+16     	; 0x1416 <__fp_round+0x20>
    1406:	bf 2b       	or	r27, r31
    1408:	11 f4       	brne	.+4      	; 0x140e <__fp_round+0x18>
    140a:	60 ff       	sbrs	r22, 0
    140c:	04 c0       	rjmp	.+8      	; 0x1416 <__fp_round+0x20>
    140e:	6f 5f       	subi	r22, 0xFF	; 255
    1410:	7f 4f       	sbci	r23, 0xFF	; 255
    1412:	8f 4f       	sbci	r24, 0xFF	; 255
    1414:	9f 4f       	sbci	r25, 0xFF	; 255
    1416:	08 95       	ret

00001418 <__fp_split3>:
    1418:	57 fd       	sbrc	r21, 7
    141a:	90 58       	subi	r25, 0x80	; 128
    141c:	44 0f       	add	r20, r20
    141e:	55 1f       	adc	r21, r21
    1420:	59 f0       	breq	.+22     	; 0x1438 <__fp_splitA+0x10>
    1422:	5f 3f       	cpi	r21, 0xFF	; 255
    1424:	71 f0       	breq	.+28     	; 0x1442 <__fp_splitA+0x1a>
    1426:	47 95       	ror	r20

00001428 <__fp_splitA>:
    1428:	88 0f       	add	r24, r24
    142a:	97 fb       	bst	r25, 7
    142c:	99 1f       	adc	r25, r25
    142e:	61 f0       	breq	.+24     	; 0x1448 <__fp_splitA+0x20>
    1430:	9f 3f       	cpi	r25, 0xFF	; 255
    1432:	79 f0       	breq	.+30     	; 0x1452 <__fp_splitA+0x2a>
    1434:	87 95       	ror	r24
    1436:	08 95       	ret
    1438:	12 16       	cp	r1, r18
    143a:	13 06       	cpc	r1, r19
    143c:	14 06       	cpc	r1, r20
    143e:	55 1f       	adc	r21, r21
    1440:	f2 cf       	rjmp	.-28     	; 0x1426 <__fp_split3+0xe>
    1442:	46 95       	lsr	r20
    1444:	f1 df       	rcall	.-30     	; 0x1428 <__fp_splitA>
    1446:	08 c0       	rjmp	.+16     	; 0x1458 <__fp_splitA+0x30>
    1448:	16 16       	cp	r1, r22
    144a:	17 06       	cpc	r1, r23
    144c:	18 06       	cpc	r1, r24
    144e:	99 1f       	adc	r25, r25
    1450:	f1 cf       	rjmp	.-30     	; 0x1434 <__fp_splitA+0xc>
    1452:	86 95       	lsr	r24
    1454:	71 05       	cpc	r23, r1
    1456:	61 05       	cpc	r22, r1
    1458:	08 94       	sec
    145a:	08 95       	ret

0000145c <__fp_zero>:
    145c:	e8 94       	clt

0000145e <__fp_szero>:
    145e:	bb 27       	eor	r27, r27
    1460:	66 27       	eor	r22, r22
    1462:	77 27       	eor	r23, r23
    1464:	cb 01       	movw	r24, r22
    1466:	97 f9       	bld	r25, 7
    1468:	08 95       	ret

0000146a <__gesf2>:
    146a:	0e 94 c0 09 	call	0x1380	; 0x1380 <__fp_cmp>
    146e:	08 f4       	brcc	.+2      	; 0x1472 <__gesf2+0x8>
    1470:	8f ef       	ldi	r24, 0xFF	; 255
    1472:	08 95       	ret

00001474 <__mulsf3>:
    1474:	0e 94 4d 0a 	call	0x149a	; 0x149a <__mulsf3x>
    1478:	0c 94 fb 09 	jmp	0x13f6	; 0x13f6 <__fp_round>
    147c:	0e 94 ed 09 	call	0x13da	; 0x13da <__fp_pscA>
    1480:	38 f0       	brcs	.+14     	; 0x1490 <__mulsf3+0x1c>
    1482:	0e 94 f4 09 	call	0x13e8	; 0x13e8 <__fp_pscB>
    1486:	20 f0       	brcs	.+8      	; 0x1490 <__mulsf3+0x1c>
    1488:	95 23       	and	r25, r21
    148a:	11 f0       	breq	.+4      	; 0x1490 <__mulsf3+0x1c>
    148c:	0c 94 e4 09 	jmp	0x13c8	; 0x13c8 <__fp_inf>
    1490:	0c 94 ea 09 	jmp	0x13d4	; 0x13d4 <__fp_nan>
    1494:	11 24       	eor	r1, r1
    1496:	0c 94 2f 0a 	jmp	0x145e	; 0x145e <__fp_szero>

0000149a <__mulsf3x>:
    149a:	0e 94 0c 0a 	call	0x1418	; 0x1418 <__fp_split3>
    149e:	70 f3       	brcs	.-36     	; 0x147c <__mulsf3+0x8>

000014a0 <__mulsf3_pse>:
    14a0:	95 9f       	mul	r25, r21
    14a2:	c1 f3       	breq	.-16     	; 0x1494 <__mulsf3+0x20>
    14a4:	95 0f       	add	r25, r21
    14a6:	50 e0       	ldi	r21, 0x00	; 0
    14a8:	55 1f       	adc	r21, r21
    14aa:	62 9f       	mul	r22, r18
    14ac:	f0 01       	movw	r30, r0
    14ae:	72 9f       	mul	r23, r18
    14b0:	bb 27       	eor	r27, r27
    14b2:	f0 0d       	add	r31, r0
    14b4:	b1 1d       	adc	r27, r1
    14b6:	63 9f       	mul	r22, r19
    14b8:	aa 27       	eor	r26, r26
    14ba:	f0 0d       	add	r31, r0
    14bc:	b1 1d       	adc	r27, r1
    14be:	aa 1f       	adc	r26, r26
    14c0:	64 9f       	mul	r22, r20
    14c2:	66 27       	eor	r22, r22
    14c4:	b0 0d       	add	r27, r0
    14c6:	a1 1d       	adc	r26, r1
    14c8:	66 1f       	adc	r22, r22
    14ca:	82 9f       	mul	r24, r18
    14cc:	22 27       	eor	r18, r18
    14ce:	b0 0d       	add	r27, r0
    14d0:	a1 1d       	adc	r26, r1
    14d2:	62 1f       	adc	r22, r18
    14d4:	73 9f       	mul	r23, r19
    14d6:	b0 0d       	add	r27, r0
    14d8:	a1 1d       	adc	r26, r1
    14da:	62 1f       	adc	r22, r18
    14dc:	83 9f       	mul	r24, r19
    14de:	a0 0d       	add	r26, r0
    14e0:	61 1d       	adc	r22, r1
    14e2:	22 1f       	adc	r18, r18
    14e4:	74 9f       	mul	r23, r20
    14e6:	33 27       	eor	r19, r19
    14e8:	a0 0d       	add	r26, r0
    14ea:	61 1d       	adc	r22, r1
    14ec:	23 1f       	adc	r18, r19
    14ee:	84 9f       	mul	r24, r20
    14f0:	60 0d       	add	r22, r0
    14f2:	21 1d       	adc	r18, r1
    14f4:	82 2f       	mov	r24, r18
    14f6:	76 2f       	mov	r23, r22
    14f8:	6a 2f       	mov	r22, r26
    14fa:	11 24       	eor	r1, r1
    14fc:	9f 57       	subi	r25, 0x7F	; 127
    14fe:	50 40       	sbci	r21, 0x00	; 0
    1500:	9a f0       	brmi	.+38     	; 0x1528 <__mulsf3_pse+0x88>
    1502:	f1 f0       	breq	.+60     	; 0x1540 <__mulsf3_pse+0xa0>
    1504:	88 23       	and	r24, r24
    1506:	4a f0       	brmi	.+18     	; 0x151a <__mulsf3_pse+0x7a>
    1508:	ee 0f       	add	r30, r30
    150a:	ff 1f       	adc	r31, r31
    150c:	bb 1f       	adc	r27, r27
    150e:	66 1f       	adc	r22, r22
    1510:	77 1f       	adc	r23, r23
    1512:	88 1f       	adc	r24, r24
    1514:	91 50       	subi	r25, 0x01	; 1
    1516:	50 40       	sbci	r21, 0x00	; 0
    1518:	a9 f7       	brne	.-22     	; 0x1504 <__mulsf3_pse+0x64>
    151a:	9e 3f       	cpi	r25, 0xFE	; 254
    151c:	51 05       	cpc	r21, r1
    151e:	80 f0       	brcs	.+32     	; 0x1540 <__mulsf3_pse+0xa0>
    1520:	0c 94 e4 09 	jmp	0x13c8	; 0x13c8 <__fp_inf>
    1524:	0c 94 2f 0a 	jmp	0x145e	; 0x145e <__fp_szero>
    1528:	5f 3f       	cpi	r21, 0xFF	; 255
    152a:	e4 f3       	brlt	.-8      	; 0x1524 <__mulsf3_pse+0x84>
    152c:	98 3e       	cpi	r25, 0xE8	; 232
    152e:	d4 f3       	brlt	.-12     	; 0x1524 <__mulsf3_pse+0x84>
    1530:	86 95       	lsr	r24
    1532:	77 95       	ror	r23
    1534:	67 95       	ror	r22
    1536:	b7 95       	ror	r27
    1538:	f7 95       	ror	r31
    153a:	e7 95       	ror	r30
    153c:	9f 5f       	subi	r25, 0xFF	; 255
    153e:	c1 f7       	brne	.-16     	; 0x1530 <__mulsf3_pse+0x90>
    1540:	fe 2b       	or	r31, r30
    1542:	88 0f       	add	r24, r24
    1544:	91 1d       	adc	r25, r1
    1546:	96 95       	lsr	r25
    1548:	87 95       	ror	r24
    154a:	97 f9       	bld	r25, 7
    154c:	08 95       	ret

0000154e <malloc>:
    154e:	cf 93       	push	r28
    1550:	df 93       	push	r29
    1552:	82 30       	cpi	r24, 0x02	; 2
    1554:	91 05       	cpc	r25, r1
    1556:	10 f4       	brcc	.+4      	; 0x155c <malloc+0xe>
    1558:	82 e0       	ldi	r24, 0x02	; 2
    155a:	90 e0       	ldi	r25, 0x00	; 0
    155c:	e0 91 d6 00 	lds	r30, 0x00D6
    1560:	f0 91 d7 00 	lds	r31, 0x00D7
    1564:	20 e0       	ldi	r18, 0x00	; 0
    1566:	30 e0       	ldi	r19, 0x00	; 0
    1568:	c0 e0       	ldi	r28, 0x00	; 0
    156a:	d0 e0       	ldi	r29, 0x00	; 0
    156c:	30 97       	sbiw	r30, 0x00	; 0
    156e:	11 f1       	breq	.+68     	; 0x15b4 <malloc+0x66>
    1570:	40 81       	ld	r20, Z
    1572:	51 81       	ldd	r21, Z+1	; 0x01
    1574:	48 17       	cp	r20, r24
    1576:	59 07       	cpc	r21, r25
    1578:	c0 f0       	brcs	.+48     	; 0x15aa <malloc+0x5c>
    157a:	48 17       	cp	r20, r24
    157c:	59 07       	cpc	r21, r25
    157e:	61 f4       	brne	.+24     	; 0x1598 <malloc+0x4a>
    1580:	82 81       	ldd	r24, Z+2	; 0x02
    1582:	93 81       	ldd	r25, Z+3	; 0x03
    1584:	20 97       	sbiw	r28, 0x00	; 0
    1586:	19 f0       	breq	.+6      	; 0x158e <malloc+0x40>
    1588:	9b 83       	std	Y+3, r25	; 0x03
    158a:	8a 83       	std	Y+2, r24	; 0x02
    158c:	2b c0       	rjmp	.+86     	; 0x15e4 <malloc+0x96>
    158e:	90 93 d7 00 	sts	0x00D7, r25
    1592:	80 93 d6 00 	sts	0x00D6, r24
    1596:	26 c0       	rjmp	.+76     	; 0x15e4 <malloc+0x96>
    1598:	21 15       	cp	r18, r1
    159a:	31 05       	cpc	r19, r1
    159c:	19 f0       	breq	.+6      	; 0x15a4 <malloc+0x56>
    159e:	42 17       	cp	r20, r18
    15a0:	53 07       	cpc	r21, r19
    15a2:	18 f4       	brcc	.+6      	; 0x15aa <malloc+0x5c>
    15a4:	9a 01       	movw	r18, r20
    15a6:	be 01       	movw	r22, r28
    15a8:	df 01       	movw	r26, r30
    15aa:	ef 01       	movw	r28, r30
    15ac:	02 80       	ldd	r0, Z+2	; 0x02
    15ae:	f3 81       	ldd	r31, Z+3	; 0x03
    15b0:	e0 2d       	mov	r30, r0
    15b2:	dc cf       	rjmp	.-72     	; 0x156c <malloc+0x1e>
    15b4:	21 15       	cp	r18, r1
    15b6:	31 05       	cpc	r19, r1
    15b8:	09 f1       	breq	.+66     	; 0x15fc <malloc+0xae>
    15ba:	28 1b       	sub	r18, r24
    15bc:	39 0b       	sbc	r19, r25
    15be:	24 30       	cpi	r18, 0x04	; 4
    15c0:	31 05       	cpc	r19, r1
    15c2:	90 f4       	brcc	.+36     	; 0x15e8 <malloc+0x9a>
    15c4:	12 96       	adiw	r26, 0x02	; 2
    15c6:	8d 91       	ld	r24, X+
    15c8:	9c 91       	ld	r25, X
    15ca:	13 97       	sbiw	r26, 0x03	; 3
    15cc:	61 15       	cp	r22, r1
    15ce:	71 05       	cpc	r23, r1
    15d0:	21 f0       	breq	.+8      	; 0x15da <malloc+0x8c>
    15d2:	fb 01       	movw	r30, r22
    15d4:	93 83       	std	Z+3, r25	; 0x03
    15d6:	82 83       	std	Z+2, r24	; 0x02
    15d8:	04 c0       	rjmp	.+8      	; 0x15e2 <malloc+0x94>
    15da:	90 93 d7 00 	sts	0x00D7, r25
    15de:	80 93 d6 00 	sts	0x00D6, r24
    15e2:	fd 01       	movw	r30, r26
    15e4:	32 96       	adiw	r30, 0x02	; 2
    15e6:	44 c0       	rjmp	.+136    	; 0x1670 <malloc+0x122>
    15e8:	fd 01       	movw	r30, r26
    15ea:	e2 0f       	add	r30, r18
    15ec:	f3 1f       	adc	r31, r19
    15ee:	81 93       	st	Z+, r24
    15f0:	91 93       	st	Z+, r25
    15f2:	22 50       	subi	r18, 0x02	; 2
    15f4:	31 09       	sbc	r19, r1
    15f6:	2d 93       	st	X+, r18
    15f8:	3c 93       	st	X, r19
    15fa:	3a c0       	rjmp	.+116    	; 0x1670 <malloc+0x122>
    15fc:	20 91 d4 00 	lds	r18, 0x00D4
    1600:	30 91 d5 00 	lds	r19, 0x00D5
    1604:	23 2b       	or	r18, r19
    1606:	41 f4       	brne	.+16     	; 0x1618 <malloc+0xca>
    1608:	20 91 62 00 	lds	r18, 0x0062
    160c:	30 91 63 00 	lds	r19, 0x0063
    1610:	30 93 d5 00 	sts	0x00D5, r19
    1614:	20 93 d4 00 	sts	0x00D4, r18
    1618:	20 91 60 00 	lds	r18, 0x0060
    161c:	30 91 61 00 	lds	r19, 0x0061
    1620:	21 15       	cp	r18, r1
    1622:	31 05       	cpc	r19, r1
    1624:	41 f4       	brne	.+16     	; 0x1636 <malloc+0xe8>
    1626:	2d b7       	in	r18, 0x3d	; 61
    1628:	3e b7       	in	r19, 0x3e	; 62
    162a:	40 91 64 00 	lds	r20, 0x0064
    162e:	50 91 65 00 	lds	r21, 0x0065
    1632:	24 1b       	sub	r18, r20
    1634:	35 0b       	sbc	r19, r21
    1636:	e0 91 d4 00 	lds	r30, 0x00D4
    163a:	f0 91 d5 00 	lds	r31, 0x00D5
    163e:	e2 17       	cp	r30, r18
    1640:	f3 07       	cpc	r31, r19
    1642:	a0 f4       	brcc	.+40     	; 0x166c <malloc+0x11e>
    1644:	2e 1b       	sub	r18, r30
    1646:	3f 0b       	sbc	r19, r31
    1648:	28 17       	cp	r18, r24
    164a:	39 07       	cpc	r19, r25
    164c:	78 f0       	brcs	.+30     	; 0x166c <malloc+0x11e>
    164e:	ac 01       	movw	r20, r24
    1650:	4e 5f       	subi	r20, 0xFE	; 254
    1652:	5f 4f       	sbci	r21, 0xFF	; 255
    1654:	24 17       	cp	r18, r20
    1656:	35 07       	cpc	r19, r21
    1658:	48 f0       	brcs	.+18     	; 0x166c <malloc+0x11e>
    165a:	4e 0f       	add	r20, r30
    165c:	5f 1f       	adc	r21, r31
    165e:	50 93 d5 00 	sts	0x00D5, r21
    1662:	40 93 d4 00 	sts	0x00D4, r20
    1666:	81 93       	st	Z+, r24
    1668:	91 93       	st	Z+, r25
    166a:	02 c0       	rjmp	.+4      	; 0x1670 <malloc+0x122>
    166c:	e0 e0       	ldi	r30, 0x00	; 0
    166e:	f0 e0       	ldi	r31, 0x00	; 0
    1670:	cf 01       	movw	r24, r30
    1672:	df 91       	pop	r29
    1674:	cf 91       	pop	r28
    1676:	08 95       	ret

00001678 <free>:
    1678:	0f 93       	push	r16
    167a:	1f 93       	push	r17
    167c:	cf 93       	push	r28
    167e:	df 93       	push	r29
    1680:	00 97       	sbiw	r24, 0x00	; 0
    1682:	09 f4       	brne	.+2      	; 0x1686 <free+0xe>
    1684:	8c c0       	rjmp	.+280    	; 0x179e <free+0x126>
    1686:	fc 01       	movw	r30, r24
    1688:	32 97       	sbiw	r30, 0x02	; 2
    168a:	13 82       	std	Z+3, r1	; 0x03
    168c:	12 82       	std	Z+2, r1	; 0x02
    168e:	00 91 d6 00 	lds	r16, 0x00D6
    1692:	10 91 d7 00 	lds	r17, 0x00D7
    1696:	01 15       	cp	r16, r1
    1698:	11 05       	cpc	r17, r1
    169a:	81 f4       	brne	.+32     	; 0x16bc <free+0x44>
    169c:	20 81       	ld	r18, Z
    169e:	31 81       	ldd	r19, Z+1	; 0x01
    16a0:	82 0f       	add	r24, r18
    16a2:	93 1f       	adc	r25, r19
    16a4:	20 91 d4 00 	lds	r18, 0x00D4
    16a8:	30 91 d5 00 	lds	r19, 0x00D5
    16ac:	28 17       	cp	r18, r24
    16ae:	39 07       	cpc	r19, r25
    16b0:	79 f5       	brne	.+94     	; 0x1710 <free+0x98>
    16b2:	f0 93 d5 00 	sts	0x00D5, r31
    16b6:	e0 93 d4 00 	sts	0x00D4, r30
    16ba:	71 c0       	rjmp	.+226    	; 0x179e <free+0x126>
    16bc:	d8 01       	movw	r26, r16
    16be:	40 e0       	ldi	r20, 0x00	; 0
    16c0:	50 e0       	ldi	r21, 0x00	; 0
    16c2:	ae 17       	cp	r26, r30
    16c4:	bf 07       	cpc	r27, r31
    16c6:	50 f4       	brcc	.+20     	; 0x16dc <free+0x64>
    16c8:	12 96       	adiw	r26, 0x02	; 2
    16ca:	2d 91       	ld	r18, X+
    16cc:	3c 91       	ld	r19, X
    16ce:	13 97       	sbiw	r26, 0x03	; 3
    16d0:	ad 01       	movw	r20, r26
    16d2:	21 15       	cp	r18, r1
    16d4:	31 05       	cpc	r19, r1
    16d6:	09 f1       	breq	.+66     	; 0x171a <free+0xa2>
    16d8:	d9 01       	movw	r26, r18
    16da:	f3 cf       	rjmp	.-26     	; 0x16c2 <free+0x4a>
    16dc:	9d 01       	movw	r18, r26
    16de:	da 01       	movw	r26, r20
    16e0:	33 83       	std	Z+3, r19	; 0x03
    16e2:	22 83       	std	Z+2, r18	; 0x02
    16e4:	60 81       	ld	r22, Z
    16e6:	71 81       	ldd	r23, Z+1	; 0x01
    16e8:	86 0f       	add	r24, r22
    16ea:	97 1f       	adc	r25, r23
    16ec:	82 17       	cp	r24, r18
    16ee:	93 07       	cpc	r25, r19
    16f0:	69 f4       	brne	.+26     	; 0x170c <free+0x94>
    16f2:	ec 01       	movw	r28, r24
    16f4:	28 81       	ld	r18, Y
    16f6:	39 81       	ldd	r19, Y+1	; 0x01
    16f8:	26 0f       	add	r18, r22
    16fa:	37 1f       	adc	r19, r23
    16fc:	2e 5f       	subi	r18, 0xFE	; 254
    16fe:	3f 4f       	sbci	r19, 0xFF	; 255
    1700:	31 83       	std	Z+1, r19	; 0x01
    1702:	20 83       	st	Z, r18
    1704:	8a 81       	ldd	r24, Y+2	; 0x02
    1706:	9b 81       	ldd	r25, Y+3	; 0x03
    1708:	93 83       	std	Z+3, r25	; 0x03
    170a:	82 83       	std	Z+2, r24	; 0x02
    170c:	45 2b       	or	r20, r21
    170e:	29 f4       	brne	.+10     	; 0x171a <free+0xa2>
    1710:	f0 93 d7 00 	sts	0x00D7, r31
    1714:	e0 93 d6 00 	sts	0x00D6, r30
    1718:	42 c0       	rjmp	.+132    	; 0x179e <free+0x126>
    171a:	13 96       	adiw	r26, 0x03	; 3
    171c:	fc 93       	st	X, r31
    171e:	ee 93       	st	-X, r30
    1720:	12 97       	sbiw	r26, 0x02	; 2
    1722:	ed 01       	movw	r28, r26
    1724:	49 91       	ld	r20, Y+
    1726:	59 91       	ld	r21, Y+
    1728:	9e 01       	movw	r18, r28
    172a:	24 0f       	add	r18, r20
    172c:	35 1f       	adc	r19, r21
    172e:	e2 17       	cp	r30, r18
    1730:	f3 07       	cpc	r31, r19
    1732:	71 f4       	brne	.+28     	; 0x1750 <free+0xd8>
    1734:	80 81       	ld	r24, Z
    1736:	91 81       	ldd	r25, Z+1	; 0x01
    1738:	84 0f       	add	r24, r20
    173a:	95 1f       	adc	r25, r21
    173c:	02 96       	adiw	r24, 0x02	; 2
    173e:	11 96       	adiw	r26, 0x01	; 1
    1740:	9c 93       	st	X, r25
    1742:	8e 93       	st	-X, r24
    1744:	82 81       	ldd	r24, Z+2	; 0x02
    1746:	93 81       	ldd	r25, Z+3	; 0x03
    1748:	13 96       	adiw	r26, 0x03	; 3
    174a:	9c 93       	st	X, r25
    174c:	8e 93       	st	-X, r24
    174e:	12 97       	sbiw	r26, 0x02	; 2
    1750:	e0 e0       	ldi	r30, 0x00	; 0
    1752:	f0 e0       	ldi	r31, 0x00	; 0
    1754:	d8 01       	movw	r26, r16
    1756:	12 96       	adiw	r26, 0x02	; 2
    1758:	8d 91       	ld	r24, X+
    175a:	9c 91       	ld	r25, X
    175c:	13 97       	sbiw	r26, 0x03	; 3
    175e:	00 97       	sbiw	r24, 0x00	; 0
    1760:	19 f0       	breq	.+6      	; 0x1768 <free+0xf0>
    1762:	f8 01       	movw	r30, r16
    1764:	8c 01       	movw	r16, r24
    1766:	f6 cf       	rjmp	.-20     	; 0x1754 <free+0xdc>
    1768:	8d 91       	ld	r24, X+
    176a:	9c 91       	ld	r25, X
    176c:	98 01       	movw	r18, r16
    176e:	2e 5f       	subi	r18, 0xFE	; 254
    1770:	3f 4f       	sbci	r19, 0xFF	; 255
    1772:	82 0f       	add	r24, r18
    1774:	93 1f       	adc	r25, r19
    1776:	20 91 d4 00 	lds	r18, 0x00D4
    177a:	30 91 d5 00 	lds	r19, 0x00D5
    177e:	28 17       	cp	r18, r24
    1780:	39 07       	cpc	r19, r25
    1782:	69 f4       	brne	.+26     	; 0x179e <free+0x126>
    1784:	30 97       	sbiw	r30, 0x00	; 0
    1786:	29 f4       	brne	.+10     	; 0x1792 <free+0x11a>
    1788:	10 92 d7 00 	sts	0x00D7, r1
    178c:	10 92 d6 00 	sts	0x00D6, r1
    1790:	02 c0       	rjmp	.+4      	; 0x1796 <free+0x11e>
    1792:	13 82       	std	Z+3, r1	; 0x03
    1794:	12 82       	std	Z+2, r1	; 0x02
    1796:	10 93 d5 00 	sts	0x00D5, r17
    179a:	00 93 d4 00 	sts	0x00D4, r16
    179e:	df 91       	pop	r29
    17a0:	cf 91       	pop	r28
    17a2:	1f 91       	pop	r17
    17a4:	0f 91       	pop	r16
    17a6:	08 95       	ret

000017a8 <__do_global_dtors>:
    17a8:	10 e0       	ldi	r17, 0x00	; 0
    17aa:	cd e2       	ldi	r28, 0x2D	; 45
    17ac:	d0 e0       	ldi	r29, 0x00	; 0
    17ae:	04 c0       	rjmp	.+8      	; 0x17b8 <__do_global_dtors+0x10>
    17b0:	fe 01       	movw	r30, r28
    17b2:	0e 94 d5 08 	call	0x11aa	; 0x11aa <__tablejump2__>
    17b6:	21 96       	adiw	r28, 0x01	; 1
    17b8:	ce 32       	cpi	r28, 0x2E	; 46
    17ba:	d1 07       	cpc	r29, r17
    17bc:	c9 f7       	brne	.-14     	; 0x17b0 <__do_global_dtors+0x8>
    17be:	f8 94       	cli

000017c0 <__stop_program>:
    17c0:	ff cf       	rjmp	.-2      	; 0x17c0 <__stop_program>
