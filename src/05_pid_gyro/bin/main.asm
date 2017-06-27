
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 46 00 	jmp	0x8c	; 0x8c <__dtors_end>
       4:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
       8:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
       c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      10:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      14:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      18:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      1c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      20:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      24:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      28:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      2c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      30:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      34:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      38:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      3c:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      40:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      44:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      48:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      4c:	0c 94 64 06 	jmp	0xcc8	; 0xcc8 <__vector_19>
      50:	0c 94 6e 00 	jmp	0xdc	; 0xdc <__bad_interrupt>
      54:	08 4a       	sbci	r16, 0xA8	; 168
      56:	d7 3b       	cpi	r29, 0xB7	; 183
      58:	3b ce       	rjmp	.-906    	; 0xfffffcd0 <__eeprom_end+0xff7efcd0>
      5a:	01 6e       	ori	r16, 0xE1	; 225
      5c:	84 bc       	out	0x24, r8	; 36
      5e:	bf fd       	.word	0xfdbf	; ????
      60:	c1 2f       	mov	r28, r17
      62:	3d 6c       	ori	r19, 0xCD	; 205
      64:	74 31       	cpi	r23, 0x14	; 20
      66:	9a bd       	out	0x2a, r25	; 42
      68:	56 83       	std	Z+6, r21	; 0x06
      6a:	3d da       	rcall	.-2950   	; 0xfffff4e6 <__eeprom_end+0xff7ef4e6>
      6c:	3d 00       	.word	0x003d	; ????
      6e:	c7 7f       	andi	r28, 0xF7	; 247
      70:	11 be       	out	0x31, r1	; 49
      72:	d9 e4       	ldi	r29, 0x49	; 73
      74:	bb 4c       	sbci	r27, 0xCB	; 203
      76:	3e 91       	ld	r19, -X
      78:	6b aa       	std	Y+51, r6	; 0x33
      7a:	aa be       	out	0x3a, r10	; 58
      7c:	00 00       	nop
      7e:	00 80       	ld	r0, Z
      80:	3f 00       	.word	0x003f	; ????

00000082 <__ctors_start>:
      82:	18 04       	cpc	r1, r8
      84:	54 04       	cpc	r5, r4
      86:	bf 05       	cpc	r27, r15
      88:	ce 06       	cpc	r12, r30

0000008a <__ctors_end>:
      8a:	59 04       	cpc	r5, r9

0000008c <__dtors_end>:
      8c:	11 24       	eor	r1, r1
      8e:	1f be       	out	0x3f, r1	; 63
      90:	cf e5       	ldi	r28, 0x5F	; 95
      92:	d4 e0       	ldi	r29, 0x04	; 4
      94:	de bf       	out	0x3e, r29	; 62
      96:	cd bf       	out	0x3d, r28	; 61

00000098 <__do_copy_data>:
      98:	10 e0       	ldi	r17, 0x00	; 0
      9a:	a0 e6       	ldi	r26, 0x60	; 96
      9c:	b0 e0       	ldi	r27, 0x00	; 0
      9e:	e6 eb       	ldi	r30, 0xB6	; 182
      a0:	f3 e1       	ldi	r31, 0x13	; 19
      a2:	02 c0       	rjmp	.+4      	; 0xa8 <__do_copy_data+0x10>
      a4:	05 90       	lpm	r0, Z+
      a6:	0d 92       	st	X+, r0
      a8:	a8 37       	cpi	r26, 0x78	; 120
      aa:	b1 07       	cpc	r27, r17
      ac:	d9 f7       	brne	.-10     	; 0xa4 <__do_copy_data+0xc>

000000ae <__do_clear_bss>:
      ae:	20 e0       	ldi	r18, 0x00	; 0
      b0:	a8 e7       	ldi	r26, 0x78	; 120
      b2:	b0 e0       	ldi	r27, 0x00	; 0
      b4:	01 c0       	rjmp	.+2      	; 0xb8 <.do_clear_bss_start>

000000b6 <.do_clear_bss_loop>:
      b6:	1d 92       	st	X+, r1

000000b8 <.do_clear_bss_start>:
      b8:	aa 3e       	cpi	r26, 0xEA	; 234
      ba:	b2 07       	cpc	r27, r18
      bc:	e1 f7       	brne	.-8      	; 0xb6 <.do_clear_bss_loop>

000000be <__do_global_ctors>:
      be:	10 e0       	ldi	r17, 0x00	; 0
      c0:	c5 e4       	ldi	r28, 0x45	; 69
      c2:	d0 e0       	ldi	r29, 0x00	; 0
      c4:	04 c0       	rjmp	.+8      	; 0xce <__do_global_ctors+0x10>
      c6:	21 97       	sbiw	r28, 0x01	; 1
      c8:	fe 01       	movw	r30, r28
      ca:	0e 94 13 07 	call	0xe26	; 0xe26 <__tablejump2__>
      ce:	c1 34       	cpi	r28, 0x41	; 65
      d0:	d1 07       	cpc	r29, r17
      d2:	c9 f7       	brne	.-14     	; 0xc6 <__do_global_ctors+0x8>
      d4:	0e 94 3c 04 	call	0x878	; 0x878 <main>
      d8:	0c 94 ce 09 	jmp	0x139c	; 0x139c <__do_global_dtors>

000000dc <__bad_interrupt>:
      dc:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000e0 <_ZN14CRobotControllC1Ev>:
      e0:	cf 93       	push	r28
      e2:	df 93       	push	r29
      e4:	ec 01       	movw	r28, r24
      e6:	0e 94 52 01 	call	0x2a4	; 0x2a4 <_ZN6CMotorC1Ev>
      ea:	ce 01       	movw	r24, r28
      ec:	01 96       	adiw	r24, 0x01	; 1
      ee:	df 91       	pop	r29
      f0:	cf 91       	pop	r28
      f2:	0c 94 5d 04 	jmp	0x8ba	; 0x8ba <_ZN5CGyroC1Ev>

000000f6 <_ZN14CRobotControllD1Ev>:
      f6:	cf 93       	push	r28
      f8:	df 93       	push	r29
      fa:	ec 01       	movw	r28, r24
      fc:	01 96       	adiw	r24, 0x01	; 1
      fe:	0e 94 5e 04 	call	0x8bc	; 0x8bc <_ZN5CGyroD1Ev>
     102:	ce 01       	movw	r24, r28
     104:	df 91       	pop	r29
     106:	cf 91       	pop	r28
     108:	0c 94 5e 01 	jmp	0x2bc	; 0x2bc <_ZN6CMotorD1Ev>

0000010c <_ZN14CRobotControll4initEv>:
     10c:	cf 93       	push	r28
     10e:	df 93       	push	r29
     110:	ec 01       	movw	r28, r24
     112:	68 e7       	ldi	r22, 0x78	; 120
     114:	70 e0       	ldi	r23, 0x00	; 0
     116:	01 96       	adiw	r24, 0x01	; 1
     118:	0e 94 45 05 	call	0xa8a	; 0xa8a <_ZN5CGyro4initEP14CI2C_Interface>
     11c:	80 e0       	ldi	r24, 0x00	; 0
     11e:	90 e0       	ldi	r25, 0x00	; 0
     120:	a0 ec       	ldi	r26, 0xC0	; 192
     122:	bf e3       	ldi	r27, 0x3F	; 63
     124:	8b 87       	std	Y+11, r24	; 0x0b
     126:	9c 87       	std	Y+12, r25	; 0x0c
     128:	ad 87       	std	Y+13, r26	; 0x0d
     12a:	be 87       	std	Y+14, r27	; 0x0e
     12c:	80 e0       	ldi	r24, 0x00	; 0
     12e:	90 e0       	ldi	r25, 0x00	; 0
     130:	a0 e0       	ldi	r26, 0x00	; 0
     132:	b0 ec       	ldi	r27, 0xC0	; 192
     134:	8f 87       	std	Y+15, r24	; 0x0f
     136:	98 8b       	std	Y+16, r25	; 0x10
     138:	a9 8b       	std	Y+17, r26	; 0x11
     13a:	ba 8b       	std	Y+18, r27	; 0x12
     13c:	80 e0       	ldi	r24, 0x00	; 0
     13e:	90 e0       	ldi	r25, 0x00	; 0
     140:	a0 e0       	ldi	r26, 0x00	; 0
     142:	bf e3       	ldi	r27, 0x3F	; 63
     144:	8b 8b       	std	Y+19, r24	; 0x13
     146:	9c 8b       	std	Y+20, r25	; 0x14
     148:	ad 8b       	std	Y+21, r26	; 0x15
     14a:	be 8b       	std	Y+22, r27	; 0x16
     14c:	1f 8a       	std	Y+23, r1	; 0x17
     14e:	18 8e       	std	Y+24, r1	; 0x18
     150:	19 8e       	std	Y+25, r1	; 0x19
     152:	1a 8e       	std	Y+26, r1	; 0x1a
     154:	1b 8e       	std	Y+27, r1	; 0x1b
     156:	1c 8e       	std	Y+28, r1	; 0x1c
     158:	1d 8e       	std	Y+29, r1	; 0x1d
     15a:	1e 8e       	std	Y+30, r1	; 0x1e
     15c:	1f 8e       	std	Y+31, r1	; 0x1f
     15e:	18 a2       	std	Y+32, r1	; 0x20
     160:	19 a2       	std	Y+33, r1	; 0x21
     162:	1a a2       	std	Y+34, r1	; 0x22
     164:	1b a2       	std	Y+35, r1	; 0x23
     166:	1c a2       	std	Y+36, r1	; 0x24
     168:	1d a2       	std	Y+37, r1	; 0x25
     16a:	1e a2       	std	Y+38, r1	; 0x26
     16c:	df 91       	pop	r29
     16e:	cf 91       	pop	r28
     170:	08 95       	ret

00000172 <_ZN14CRobotControll11pid_processEff>:
     172:	4f 92       	push	r4
     174:	5f 92       	push	r5
     176:	6f 92       	push	r6
     178:	7f 92       	push	r7
     17a:	8f 92       	push	r8
     17c:	9f 92       	push	r9
     17e:	af 92       	push	r10
     180:	bf 92       	push	r11
     182:	cf 92       	push	r12
     184:	df 92       	push	r13
     186:	ef 92       	push	r14
     188:	ff 92       	push	r15
     18a:	0f 93       	push	r16
     18c:	1f 93       	push	r17
     18e:	cf 93       	push	r28
     190:	df 93       	push	r29
     192:	ec 01       	movw	r28, r24
     194:	cb 01       	movw	r24, r22
     196:	ba 01       	movw	r22, r20
     198:	cb 8c       	ldd	r12, Y+27	; 0x1b
     19a:	dc 8c       	ldd	r13, Y+28	; 0x1c
     19c:	ed 8c       	ldd	r14, Y+29	; 0x1d
     19e:	fe 8c       	ldd	r15, Y+30	; 0x1e
     1a0:	cf 8e       	std	Y+31, r12	; 0x1f
     1a2:	d8 a2       	std	Y+32, r13	; 0x20
     1a4:	e9 a2       	std	Y+33, r14	; 0x21
     1a6:	fa a2       	std	Y+34, r15	; 0x22
     1a8:	8f 88       	ldd	r8, Y+23	; 0x17
     1aa:	98 8c       	ldd	r9, Y+24	; 0x18
     1ac:	a9 8c       	ldd	r10, Y+25	; 0x19
     1ae:	ba 8c       	ldd	r11, Y+26	; 0x1a
     1b0:	8b 8e       	std	Y+27, r8	; 0x1b
     1b2:	9c 8e       	std	Y+28, r9	; 0x1c
     1b4:	ad 8e       	std	Y+29, r10	; 0x1d
     1b6:	be 8e       	std	Y+30, r11	; 0x1e
     1b8:	a9 01       	movw	r20, r18
     1ba:	98 01       	movw	r18, r16
     1bc:	0e 94 19 07 	call	0xe32	; 0xe32 <__subsf3>
     1c0:	6f 8b       	std	Y+23, r22	; 0x17
     1c2:	78 8f       	std	Y+24, r23	; 0x18
     1c4:	89 8f       	std	Y+25, r24	; 0x19
     1c6:	9a 8f       	std	Y+26, r25	; 0x1a
     1c8:	2b 85       	ldd	r18, Y+11	; 0x0b
     1ca:	3c 85       	ldd	r19, Y+12	; 0x0c
     1cc:	4d 85       	ldd	r20, Y+13	; 0x0d
     1ce:	5e 85       	ldd	r21, Y+14	; 0x0e
     1d0:	0e 94 5d 09 	call	0x12ba	; 0x12ba <__mulsf3>
     1d4:	2b 01       	movw	r4, r22
     1d6:	3c 01       	movw	r6, r24
     1d8:	2f 85       	ldd	r18, Y+15	; 0x0f
     1da:	38 89       	ldd	r19, Y+16	; 0x10
     1dc:	49 89       	ldd	r20, Y+17	; 0x11
     1de:	5a 89       	ldd	r21, Y+18	; 0x12
     1e0:	c5 01       	movw	r24, r10
     1e2:	b4 01       	movw	r22, r8
     1e4:	0e 94 5d 09 	call	0x12ba	; 0x12ba <__mulsf3>
     1e8:	9b 01       	movw	r18, r22
     1ea:	ac 01       	movw	r20, r24
     1ec:	c3 01       	movw	r24, r6
     1ee:	b2 01       	movw	r22, r4
     1f0:	0e 94 1a 07 	call	0xe34	; 0xe34 <__addsf3>
     1f4:	4b 01       	movw	r8, r22
     1f6:	5c 01       	movw	r10, r24
     1f8:	2b 89       	ldd	r18, Y+19	; 0x13
     1fa:	3c 89       	ldd	r19, Y+20	; 0x14
     1fc:	4d 89       	ldd	r20, Y+21	; 0x15
     1fe:	5e 89       	ldd	r21, Y+22	; 0x16
     200:	c7 01       	movw	r24, r14
     202:	b6 01       	movw	r22, r12
     204:	0e 94 5d 09 	call	0x12ba	; 0x12ba <__mulsf3>
     208:	9b 01       	movw	r18, r22
     20a:	ac 01       	movw	r20, r24
     20c:	c5 01       	movw	r24, r10
     20e:	b4 01       	movw	r22, r8
     210:	0e 94 1a 07 	call	0xe34	; 0xe34 <__addsf3>
     214:	2b a1       	ldd	r18, Y+35	; 0x23
     216:	3c a1       	ldd	r19, Y+36	; 0x24
     218:	4d a1       	ldd	r20, Y+37	; 0x25
     21a:	5e a1       	ldd	r21, Y+38	; 0x26
     21c:	0e 94 1a 07 	call	0xe34	; 0xe34 <__addsf3>
     220:	6b a3       	std	Y+35, r22	; 0x23
     222:	7c a3       	std	Y+36, r23	; 0x24
     224:	8d a3       	std	Y+37, r24	; 0x25
     226:	9e a3       	std	Y+38, r25	; 0x26
     228:	df 91       	pop	r29
     22a:	cf 91       	pop	r28
     22c:	1f 91       	pop	r17
     22e:	0f 91       	pop	r16
     230:	ff 90       	pop	r15
     232:	ef 90       	pop	r14
     234:	df 90       	pop	r13
     236:	cf 90       	pop	r12
     238:	bf 90       	pop	r11
     23a:	af 90       	pop	r10
     23c:	9f 90       	pop	r9
     23e:	8f 90       	pop	r8
     240:	7f 90       	pop	r7
     242:	6f 90       	pop	r6
     244:	5f 90       	pop	r5
     246:	4f 90       	pop	r4
     248:	08 95       	ret

0000024a <_ZN14CRobotControll4mainEv>:
     24a:	ec 01       	movw	r28, r24
     24c:	5c 01       	movw	r10, r24
     24e:	8f ef       	ldi	r24, 0xFF	; 255
     250:	a8 1a       	sub	r10, r24
     252:	b8 0a       	sbc	r11, r24
     254:	c5 01       	movw	r24, r10
     256:	0e 94 5f 04 	call	0x8be	; 0x8be <_ZN5CGyro4readEv>
     25a:	c5 01       	movw	r24, r10
     25c:	0e 94 b9 05 	call	0xb72	; 0xb72 <_ZN5CGyro7get_yawEv>
     260:	0e 94 a2 08 	call	0x1144	; 0x1144 <__floatsisf>
     264:	8b 01       	movw	r16, r22
     266:	9c 01       	movw	r18, r24
     268:	40 e0       	ldi	r20, 0x00	; 0
     26a:	50 e0       	ldi	r21, 0x00	; 0
     26c:	ba 01       	movw	r22, r20
     26e:	ce 01       	movw	r24, r28
     270:	0e 94 b9 00 	call	0x172	; 0x172 <_ZN14CRobotControll11pid_processEff>
     274:	6b 01       	movw	r12, r22
     276:	7c 01       	movw	r14, r24
     278:	90 58       	subi	r25, 0x80	; 128
     27a:	0e 94 6a 08 	call	0x10d4	; 0x10d4 <__fixsfsi>
     27e:	2b 01       	movw	r4, r22
     280:	3c 01       	movw	r6, r24
     282:	c7 01       	movw	r24, r14
     284:	b6 01       	movw	r22, r12
     286:	0e 94 6a 08 	call	0x10d4	; 0x10d4 <__fixsfsi>
     28a:	a2 01       	movw	r20, r4
     28c:	ce 01       	movw	r24, r28
     28e:	0e 94 5f 01 	call	0x2be	; 0x2be <_ZN6CMotor3runEii>
     292:	4a e0       	ldi	r20, 0x0A	; 10
     294:	50 e0       	ldi	r21, 0x00	; 0
     296:	60 e0       	ldi	r22, 0x00	; 0
     298:	70 e0       	ldi	r23, 0x00	; 0
     29a:	89 ee       	ldi	r24, 0xE9	; 233
     29c:	90 e0       	ldi	r25, 0x00	; 0
     29e:	0e 94 30 06 	call	0xc60	; 0xc60 <_ZN6CTimer8delay_msEm>
     2a2:	d8 cf       	rjmp	.-80     	; 0x254 <_ZN14CRobotControll4mainEv+0xa>

000002a4 <_ZN6CMotorC1Ev>:
     2a4:	80 ef       	ldi	r24, 0xF0	; 240
     2a6:	81 bb       	out	0x11, r24	; 17
     2a8:	95 98       	cbi	0x12, 5	; 18
     2aa:	81 ea       	ldi	r24, 0xA1	; 161
     2ac:	8f bd       	out	0x2f, r24	; 47
     2ae:	82 e0       	ldi	r24, 0x02	; 2
     2b0:	8e bd       	out	0x2e, r24	; 46
     2b2:	1b bc       	out	0x2b, r1	; 43
     2b4:	1a bc       	out	0x2a, r1	; 42
     2b6:	19 bc       	out	0x29, r1	; 41
     2b8:	18 bc       	out	0x28, r1	; 40
     2ba:	08 95       	ret

000002bc <_ZN6CMotorD1Ev>:
     2bc:	08 95       	ret

000002be <_ZN6CMotor3runEii>:
     2be:	6f 3f       	cpi	r22, 0xFF	; 255
     2c0:	71 05       	cpc	r23, r1
     2c2:	09 f0       	breq	.+2      	; 0x2c6 <_ZN6CMotor3runEii+0x8>
     2c4:	3c f4       	brge	.+14     	; 0x2d4 <_ZN6CMotor3runEii+0x16>
     2c6:	61 30       	cpi	r22, 0x01	; 1
     2c8:	8f ef       	ldi	r24, 0xFF	; 255
     2ca:	78 07       	cpc	r23, r24
     2cc:	2c f4       	brge	.+10     	; 0x2d8 <_ZN6CMotor3runEii+0x1a>
     2ce:	61 e0       	ldi	r22, 0x01	; 1
     2d0:	7f ef       	ldi	r23, 0xFF	; 255
     2d2:	02 c0       	rjmp	.+4      	; 0x2d8 <_ZN6CMotor3runEii+0x1a>
     2d4:	6f ef       	ldi	r22, 0xFF	; 255
     2d6:	70 e0       	ldi	r23, 0x00	; 0
     2d8:	4f 3f       	cpi	r20, 0xFF	; 255
     2da:	51 05       	cpc	r21, r1
     2dc:	09 f0       	breq	.+2      	; 0x2e0 <_ZN6CMotor3runEii+0x22>
     2de:	44 f4       	brge	.+16     	; 0x2f0 <_ZN6CMotor3runEii+0x32>
     2e0:	41 30       	cpi	r20, 0x01	; 1
     2e2:	8f ef       	ldi	r24, 0xFF	; 255
     2e4:	58 07       	cpc	r21, r24
     2e6:	6c f0       	brlt	.+26     	; 0x302 <_ZN6CMotor3runEii+0x44>
     2e8:	14 16       	cp	r1, r20
     2ea:	15 06       	cpc	r1, r21
     2ec:	1c f0       	brlt	.+6      	; 0x2f4 <_ZN6CMotor3runEii+0x36>
     2ee:	05 c0       	rjmp	.+10     	; 0x2fa <_ZN6CMotor3runEii+0x3c>
     2f0:	4f ef       	ldi	r20, 0xFF	; 255
     2f2:	50 e0       	ldi	r21, 0x00	; 0
     2f4:	4a bd       	out	0x2a, r20	; 42
     2f6:	96 9a       	sbi	0x12, 6	; 18
     2f8:	0b c0       	rjmp	.+22     	; 0x310 <_ZN6CMotor3runEii+0x52>
     2fa:	41 15       	cp	r20, r1
     2fc:	51 05       	cpc	r21, r1
     2fe:	39 f0       	breq	.+14     	; 0x30e <_ZN6CMotor3runEii+0x50>
     300:	02 c0       	rjmp	.+4      	; 0x306 <_ZN6CMotor3runEii+0x48>
     302:	41 e0       	ldi	r20, 0x01	; 1
     304:	5f ef       	ldi	r21, 0xFF	; 255
     306:	41 95       	neg	r20
     308:	4a bd       	out	0x2a, r20	; 42
     30a:	96 98       	cbi	0x12, 6	; 18
     30c:	01 c0       	rjmp	.+2      	; 0x310 <_ZN6CMotor3runEii+0x52>
     30e:	1a bc       	out	0x2a, r1	; 42
     310:	16 16       	cp	r1, r22
     312:	17 06       	cpc	r1, r23
     314:	1c f4       	brge	.+6      	; 0x31c <_ZN6CMotor3runEii+0x5e>
     316:	68 bd       	out	0x28, r22	; 40
     318:	97 98       	cbi	0x12, 7	; 18
     31a:	08 95       	ret
     31c:	61 15       	cp	r22, r1
     31e:	71 05       	cpc	r23, r1
     320:	21 f0       	breq	.+8      	; 0x32a <_ZN6CMotor3runEii+0x6c>
     322:	61 95       	neg	r22
     324:	68 bd       	out	0x28, r22	; 40
     326:	97 9a       	sbi	0x12, 7	; 18
     328:	08 95       	ret
     32a:	18 bc       	out	0x28, r1	; 40
     32c:	08 95       	ret

0000032e <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE9write_regEhhh>:
     32e:	0f 93       	push	r16
     330:	1f 93       	push	r17
     332:	cf 93       	push	r28
     334:	df 93       	push	r29
     336:	00 d0       	rcall	.+0      	; 0x338 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE9write_regEhhh+0xa>
     338:	1f 92       	push	r1
     33a:	cd b7       	in	r28, 0x3d	; 61
     33c:	de b7       	in	r29, 0x3e	; 62
     33e:	8c 01       	movw	r16, r24
     340:	dc 01       	movw	r26, r24
     342:	ed 91       	ld	r30, X+
     344:	fc 91       	ld	r31, X
     346:	01 90       	ld	r0, Z+
     348:	f0 81       	ld	r31, Z
     34a:	e0 2d       	mov	r30, r0
     34c:	2b 83       	std	Y+3, r18	; 0x03
     34e:	4a 83       	std	Y+2, r20	; 0x02
     350:	69 83       	std	Y+1, r22	; 0x01
     352:	09 95       	icall
     354:	d8 01       	movw	r26, r16
     356:	ed 91       	ld	r30, X+
     358:	fc 91       	ld	r31, X
     35a:	04 80       	ldd	r0, Z+4	; 0x04
     35c:	f5 81       	ldd	r31, Z+5	; 0x05
     35e:	e0 2d       	mov	r30, r0
     360:	69 81       	ldd	r22, Y+1	; 0x01
     362:	c8 01       	movw	r24, r16
     364:	09 95       	icall
     366:	d8 01       	movw	r26, r16
     368:	ed 91       	ld	r30, X+
     36a:	fc 91       	ld	r31, X
     36c:	04 80       	ldd	r0, Z+4	; 0x04
     36e:	f5 81       	ldd	r31, Z+5	; 0x05
     370:	e0 2d       	mov	r30, r0
     372:	4a 81       	ldd	r20, Y+2	; 0x02
     374:	64 2f       	mov	r22, r20
     376:	c8 01       	movw	r24, r16
     378:	09 95       	icall
     37a:	d8 01       	movw	r26, r16
     37c:	ed 91       	ld	r30, X+
     37e:	fc 91       	ld	r31, X
     380:	04 80       	ldd	r0, Z+4	; 0x04
     382:	f5 81       	ldd	r31, Z+5	; 0x05
     384:	e0 2d       	mov	r30, r0
     386:	2b 81       	ldd	r18, Y+3	; 0x03
     388:	62 2f       	mov	r22, r18
     38a:	c8 01       	movw	r24, r16
     38c:	09 95       	icall
     38e:	d8 01       	movw	r26, r16
     390:	ed 91       	ld	r30, X+
     392:	fc 91       	ld	r31, X
     394:	02 80       	ldd	r0, Z+2	; 0x02
     396:	f3 81       	ldd	r31, Z+3	; 0x03
     398:	e0 2d       	mov	r30, r0
     39a:	c8 01       	movw	r24, r16
     39c:	0f 90       	pop	r0
     39e:	0f 90       	pop	r0
     3a0:	0f 90       	pop	r0
     3a2:	df 91       	pop	r29
     3a4:	cf 91       	pop	r28
     3a6:	1f 91       	pop	r17
     3a8:	0f 91       	pop	r16
     3aa:	09 94       	ijmp

000003ac <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE15write_reg_16bitEhhj>:
     3ac:	0f 93       	push	r16
     3ae:	1f 93       	push	r17
     3b0:	cf 93       	push	r28
     3b2:	df 93       	push	r29
     3b4:	00 d0       	rcall	.+0      	; 0x3b6 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE15write_reg_16bitEhhj+0xa>
     3b6:	00 d0       	rcall	.+0      	; 0x3b8 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE15write_reg_16bitEhhj+0xc>
     3b8:	cd b7       	in	r28, 0x3d	; 61
     3ba:	de b7       	in	r29, 0x3e	; 62
     3bc:	8c 01       	movw	r16, r24
     3be:	dc 01       	movw	r26, r24
     3c0:	ed 91       	ld	r30, X+
     3c2:	fc 91       	ld	r31, X
     3c4:	01 90       	ld	r0, Z+
     3c6:	f0 81       	ld	r31, Z
     3c8:	e0 2d       	mov	r30, r0
     3ca:	2c 83       	std	Y+4, r18	; 0x04
     3cc:	3b 83       	std	Y+3, r19	; 0x03
     3ce:	4a 83       	std	Y+2, r20	; 0x02
     3d0:	69 83       	std	Y+1, r22	; 0x01
     3d2:	09 95       	icall
     3d4:	d8 01       	movw	r26, r16
     3d6:	ed 91       	ld	r30, X+
     3d8:	fc 91       	ld	r31, X
     3da:	04 80       	ldd	r0, Z+4	; 0x04
     3dc:	f5 81       	ldd	r31, Z+5	; 0x05
     3de:	e0 2d       	mov	r30, r0
     3e0:	69 81       	ldd	r22, Y+1	; 0x01
     3e2:	c8 01       	movw	r24, r16
     3e4:	09 95       	icall
     3e6:	d8 01       	movw	r26, r16
     3e8:	ed 91       	ld	r30, X+
     3ea:	fc 91       	ld	r31, X
     3ec:	04 80       	ldd	r0, Z+4	; 0x04
     3ee:	f5 81       	ldd	r31, Z+5	; 0x05
     3f0:	e0 2d       	mov	r30, r0
     3f2:	4a 81       	ldd	r20, Y+2	; 0x02
     3f4:	64 2f       	mov	r22, r20
     3f6:	c8 01       	movw	r24, r16
     3f8:	09 95       	icall
     3fa:	d8 01       	movw	r26, r16
     3fc:	ed 91       	ld	r30, X+
     3fe:	fc 91       	ld	r31, X
     400:	04 80       	ldd	r0, Z+4	; 0x04
     402:	f5 81       	ldd	r31, Z+5	; 0x05
     404:	e0 2d       	mov	r30, r0
     406:	3b 81       	ldd	r19, Y+3	; 0x03
     408:	63 2f       	mov	r22, r19
     40a:	c8 01       	movw	r24, r16
     40c:	09 95       	icall
     40e:	d8 01       	movw	r26, r16
     410:	ed 91       	ld	r30, X+
     412:	fc 91       	ld	r31, X
     414:	04 80       	ldd	r0, Z+4	; 0x04
     416:	f5 81       	ldd	r31, Z+5	; 0x05
     418:	e0 2d       	mov	r30, r0
     41a:	2c 81       	ldd	r18, Y+4	; 0x04
     41c:	62 2f       	mov	r22, r18
     41e:	c8 01       	movw	r24, r16
     420:	09 95       	icall
     422:	d8 01       	movw	r26, r16
     424:	ed 91       	ld	r30, X+
     426:	fc 91       	ld	r31, X
     428:	02 80       	ldd	r0, Z+2	; 0x02
     42a:	f3 81       	ldd	r31, Z+3	; 0x03
     42c:	e0 2d       	mov	r30, r0
     42e:	c8 01       	movw	r24, r16
     430:	0f 90       	pop	r0
     432:	0f 90       	pop	r0
     434:	0f 90       	pop	r0
     436:	0f 90       	pop	r0
     438:	df 91       	pop	r29
     43a:	cf 91       	pop	r28
     43c:	1f 91       	pop	r17
     43e:	0f 91       	pop	r16
     440:	09 94       	ijmp

00000442 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE15write_reg_multiEhhPhj>:
     442:	cf 92       	push	r12
     444:	df 92       	push	r13
     446:	ef 92       	push	r14
     448:	ff 92       	push	r15
     44a:	0f 93       	push	r16
     44c:	1f 93       	push	r17
     44e:	cf 93       	push	r28
     450:	df 93       	push	r29
     452:	00 d0       	rcall	.+0      	; 0x454 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE15write_reg_multiEhhPhj+0x12>
     454:	00 d0       	rcall	.+0      	; 0x456 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE15write_reg_multiEhhPhj+0x14>
     456:	cd b7       	in	r28, 0x3d	; 61
     458:	de b7       	in	r29, 0x3e	; 62
     45a:	6c 01       	movw	r12, r24
     45c:	dc 01       	movw	r26, r24
     45e:	ed 91       	ld	r30, X+
     460:	fc 91       	ld	r31, X
     462:	01 90       	ld	r0, Z+
     464:	f0 81       	ld	r31, Z
     466:	e0 2d       	mov	r30, r0
     468:	2b 83       	std	Y+3, r18	; 0x03
     46a:	3c 83       	std	Y+4, r19	; 0x04
     46c:	4a 83       	std	Y+2, r20	; 0x02
     46e:	69 83       	std	Y+1, r22	; 0x01
     470:	09 95       	icall
     472:	d6 01       	movw	r26, r12
     474:	ed 91       	ld	r30, X+
     476:	fc 91       	ld	r31, X
     478:	04 80       	ldd	r0, Z+4	; 0x04
     47a:	f5 81       	ldd	r31, Z+5	; 0x05
     47c:	e0 2d       	mov	r30, r0
     47e:	69 81       	ldd	r22, Y+1	; 0x01
     480:	c6 01       	movw	r24, r12
     482:	09 95       	icall
     484:	d6 01       	movw	r26, r12
     486:	ed 91       	ld	r30, X+
     488:	fc 91       	ld	r31, X
     48a:	04 80       	ldd	r0, Z+4	; 0x04
     48c:	f5 81       	ldd	r31, Z+5	; 0x05
     48e:	e0 2d       	mov	r30, r0
     490:	4a 81       	ldd	r20, Y+2	; 0x02
     492:	64 2f       	mov	r22, r20
     494:	c6 01       	movw	r24, r12
     496:	09 95       	icall
     498:	2b 81       	ldd	r18, Y+3	; 0x03
     49a:	e2 2e       	mov	r14, r18
     49c:	3c 81       	ldd	r19, Y+4	; 0x04
     49e:	f3 2e       	mov	r15, r19
     4a0:	0e 0d       	add	r16, r14
     4a2:	1f 1d       	adc	r17, r15
     4a4:	d6 01       	movw	r26, r12
     4a6:	ed 91       	ld	r30, X+
     4a8:	fc 91       	ld	r31, X
     4aa:	e0 16       	cp	r14, r16
     4ac:	f1 06       	cpc	r15, r17
     4ae:	49 f0       	breq	.+18     	; 0x4c2 <__stack+0x63>
     4b0:	d7 01       	movw	r26, r14
     4b2:	6d 91       	ld	r22, X+
     4b4:	7d 01       	movw	r14, r26
     4b6:	04 80       	ldd	r0, Z+4	; 0x04
     4b8:	f5 81       	ldd	r31, Z+5	; 0x05
     4ba:	e0 2d       	mov	r30, r0
     4bc:	c6 01       	movw	r24, r12
     4be:	09 95       	icall
     4c0:	f1 cf       	rjmp	.-30     	; 0x4a4 <__stack+0x45>
     4c2:	02 80       	ldd	r0, Z+2	; 0x02
     4c4:	f3 81       	ldd	r31, Z+3	; 0x03
     4c6:	e0 2d       	mov	r30, r0
     4c8:	c6 01       	movw	r24, r12
     4ca:	0f 90       	pop	r0
     4cc:	0f 90       	pop	r0
     4ce:	0f 90       	pop	r0
     4d0:	0f 90       	pop	r0
     4d2:	df 91       	pop	r29
     4d4:	cf 91       	pop	r28
     4d6:	1f 91       	pop	r17
     4d8:	0f 91       	pop	r16
     4da:	ff 90       	pop	r15
     4dc:	ef 90       	pop	r14
     4de:	df 90       	pop	r13
     4e0:	cf 90       	pop	r12
     4e2:	09 94       	ijmp

000004e4 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE8read_regEhh>:
     4e4:	ef 92       	push	r14
     4e6:	ff 92       	push	r15
     4e8:	1f 93       	push	r17
     4ea:	cf 93       	push	r28
     4ec:	df 93       	push	r29
     4ee:	1f 92       	push	r1
     4f0:	cd b7       	in	r28, 0x3d	; 61
     4f2:	de b7       	in	r29, 0x3e	; 62
     4f4:	7c 01       	movw	r14, r24
     4f6:	16 2f       	mov	r17, r22
     4f8:	dc 01       	movw	r26, r24
     4fa:	ed 91       	ld	r30, X+
     4fc:	fc 91       	ld	r31, X
     4fe:	01 90       	ld	r0, Z+
     500:	f0 81       	ld	r31, Z
     502:	e0 2d       	mov	r30, r0
     504:	49 83       	std	Y+1, r20	; 0x01
     506:	09 95       	icall
     508:	d7 01       	movw	r26, r14
     50a:	ed 91       	ld	r30, X+
     50c:	fc 91       	ld	r31, X
     50e:	04 80       	ldd	r0, Z+4	; 0x04
     510:	f5 81       	ldd	r31, Z+5	; 0x05
     512:	e0 2d       	mov	r30, r0
     514:	61 2f       	mov	r22, r17
     516:	c7 01       	movw	r24, r14
     518:	09 95       	icall
     51a:	d7 01       	movw	r26, r14
     51c:	ed 91       	ld	r30, X+
     51e:	fc 91       	ld	r31, X
     520:	04 80       	ldd	r0, Z+4	; 0x04
     522:	f5 81       	ldd	r31, Z+5	; 0x05
     524:	e0 2d       	mov	r30, r0
     526:	49 81       	ldd	r20, Y+1	; 0x01
     528:	64 2f       	mov	r22, r20
     52a:	c7 01       	movw	r24, r14
     52c:	09 95       	icall
     52e:	d7 01       	movw	r26, r14
     530:	ed 91       	ld	r30, X+
     532:	fc 91       	ld	r31, X
     534:	01 90       	ld	r0, Z+
     536:	f0 81       	ld	r31, Z
     538:	e0 2d       	mov	r30, r0
     53a:	c7 01       	movw	r24, r14
     53c:	09 95       	icall
     53e:	d7 01       	movw	r26, r14
     540:	ed 91       	ld	r30, X+
     542:	fc 91       	ld	r31, X
     544:	61 2f       	mov	r22, r17
     546:	61 60       	ori	r22, 0x01	; 1
     548:	04 80       	ldd	r0, Z+4	; 0x04
     54a:	f5 81       	ldd	r31, Z+5	; 0x05
     54c:	e0 2d       	mov	r30, r0
     54e:	c7 01       	movw	r24, r14
     550:	09 95       	icall
     552:	d7 01       	movw	r26, r14
     554:	ed 91       	ld	r30, X+
     556:	fc 91       	ld	r31, X
     558:	06 80       	ldd	r0, Z+6	; 0x06
     55a:	f7 81       	ldd	r31, Z+7	; 0x07
     55c:	e0 2d       	mov	r30, r0
     55e:	60 e0       	ldi	r22, 0x00	; 0
     560:	c7 01       	movw	r24, r14
     562:	09 95       	icall
     564:	18 2f       	mov	r17, r24
     566:	d7 01       	movw	r26, r14
     568:	ed 91       	ld	r30, X+
     56a:	fc 91       	ld	r31, X
     56c:	02 80       	ldd	r0, Z+2	; 0x02
     56e:	f3 81       	ldd	r31, Z+3	; 0x03
     570:	e0 2d       	mov	r30, r0
     572:	c7 01       	movw	r24, r14
     574:	09 95       	icall
     576:	81 2f       	mov	r24, r17
     578:	0f 90       	pop	r0
     57a:	df 91       	pop	r29
     57c:	cf 91       	pop	r28
     57e:	1f 91       	pop	r17
     580:	ff 90       	pop	r15
     582:	ef 90       	pop	r14
     584:	08 95       	ret

00000586 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE14read_reg_16bitEhh>:
     586:	ef 92       	push	r14
     588:	ff 92       	push	r15
     58a:	0f 93       	push	r16
     58c:	1f 93       	push	r17
     58e:	cf 93       	push	r28
     590:	df 93       	push	r29
     592:	1f 92       	push	r1
     594:	cd b7       	in	r28, 0x3d	; 61
     596:	de b7       	in	r29, 0x3e	; 62
     598:	7c 01       	movw	r14, r24
     59a:	16 2f       	mov	r17, r22
     59c:	dc 01       	movw	r26, r24
     59e:	ed 91       	ld	r30, X+
     5a0:	fc 91       	ld	r31, X
     5a2:	01 90       	ld	r0, Z+
     5a4:	f0 81       	ld	r31, Z
     5a6:	e0 2d       	mov	r30, r0
     5a8:	49 83       	std	Y+1, r20	; 0x01
     5aa:	09 95       	icall
     5ac:	d7 01       	movw	r26, r14
     5ae:	ed 91       	ld	r30, X+
     5b0:	fc 91       	ld	r31, X
     5b2:	04 80       	ldd	r0, Z+4	; 0x04
     5b4:	f5 81       	ldd	r31, Z+5	; 0x05
     5b6:	e0 2d       	mov	r30, r0
     5b8:	61 2f       	mov	r22, r17
     5ba:	c7 01       	movw	r24, r14
     5bc:	09 95       	icall
     5be:	d7 01       	movw	r26, r14
     5c0:	ed 91       	ld	r30, X+
     5c2:	fc 91       	ld	r31, X
     5c4:	04 80       	ldd	r0, Z+4	; 0x04
     5c6:	f5 81       	ldd	r31, Z+5	; 0x05
     5c8:	e0 2d       	mov	r30, r0
     5ca:	49 81       	ldd	r20, Y+1	; 0x01
     5cc:	64 2f       	mov	r22, r20
     5ce:	c7 01       	movw	r24, r14
     5d0:	09 95       	icall
     5d2:	d7 01       	movw	r26, r14
     5d4:	ed 91       	ld	r30, X+
     5d6:	fc 91       	ld	r31, X
     5d8:	01 90       	ld	r0, Z+
     5da:	f0 81       	ld	r31, Z
     5dc:	e0 2d       	mov	r30, r0
     5de:	c7 01       	movw	r24, r14
     5e0:	09 95       	icall
     5e2:	d7 01       	movw	r26, r14
     5e4:	ed 91       	ld	r30, X+
     5e6:	fc 91       	ld	r31, X
     5e8:	61 2f       	mov	r22, r17
     5ea:	61 60       	ori	r22, 0x01	; 1
     5ec:	04 80       	ldd	r0, Z+4	; 0x04
     5ee:	f5 81       	ldd	r31, Z+5	; 0x05
     5f0:	e0 2d       	mov	r30, r0
     5f2:	c7 01       	movw	r24, r14
     5f4:	09 95       	icall
     5f6:	d7 01       	movw	r26, r14
     5f8:	ed 91       	ld	r30, X+
     5fa:	fc 91       	ld	r31, X
     5fc:	06 80       	ldd	r0, Z+6	; 0x06
     5fe:	f7 81       	ldd	r31, Z+7	; 0x07
     600:	e0 2d       	mov	r30, r0
     602:	61 e0       	ldi	r22, 0x01	; 1
     604:	c7 01       	movw	r24, r14
     606:	09 95       	icall
     608:	08 2f       	mov	r16, r24
     60a:	10 e0       	ldi	r17, 0x00	; 0
     60c:	10 2f       	mov	r17, r16
     60e:	00 27       	eor	r16, r16
     610:	d7 01       	movw	r26, r14
     612:	ed 91       	ld	r30, X+
     614:	fc 91       	ld	r31, X
     616:	06 80       	ldd	r0, Z+6	; 0x06
     618:	f7 81       	ldd	r31, Z+7	; 0x07
     61a:	e0 2d       	mov	r30, r0
     61c:	60 e0       	ldi	r22, 0x00	; 0
     61e:	c7 01       	movw	r24, r14
     620:	09 95       	icall
     622:	08 2b       	or	r16, r24
     624:	d7 01       	movw	r26, r14
     626:	ed 91       	ld	r30, X+
     628:	fc 91       	ld	r31, X
     62a:	02 80       	ldd	r0, Z+2	; 0x02
     62c:	f3 81       	ldd	r31, Z+3	; 0x03
     62e:	e0 2d       	mov	r30, r0
     630:	c7 01       	movw	r24, r14
     632:	09 95       	icall
     634:	c8 01       	movw	r24, r16
     636:	0f 90       	pop	r0
     638:	df 91       	pop	r29
     63a:	cf 91       	pop	r28
     63c:	1f 91       	pop	r17
     63e:	0f 91       	pop	r16
     640:	ff 90       	pop	r15
     642:	ef 90       	pop	r14
     644:	08 95       	ret

00000646 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE14read_reg_multiEhhPhj>:
     646:	cf 92       	push	r12
     648:	df 92       	push	r13
     64a:	ef 92       	push	r14
     64c:	ff 92       	push	r15
     64e:	0f 93       	push	r16
     650:	1f 93       	push	r17
     652:	cf 93       	push	r28
     654:	df 93       	push	r29
     656:	00 d0       	rcall	.+0      	; 0x658 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE14read_reg_multiEhhPhj+0x12>
     658:	1f 92       	push	r1
     65a:	cd b7       	in	r28, 0x3d	; 61
     65c:	de b7       	in	r29, 0x3e	; 62
     65e:	6c 01       	movw	r12, r24
     660:	f6 2e       	mov	r15, r22
     662:	dc 01       	movw	r26, r24
     664:	ed 91       	ld	r30, X+
     666:	fc 91       	ld	r31, X
     668:	01 90       	ld	r0, Z+
     66a:	f0 81       	ld	r31, Z
     66c:	e0 2d       	mov	r30, r0
     66e:	2a 83       	std	Y+2, r18	; 0x02
     670:	3b 83       	std	Y+3, r19	; 0x03
     672:	49 83       	std	Y+1, r20	; 0x01
     674:	09 95       	icall
     676:	d6 01       	movw	r26, r12
     678:	ed 91       	ld	r30, X+
     67a:	fc 91       	ld	r31, X
     67c:	04 80       	ldd	r0, Z+4	; 0x04
     67e:	f5 81       	ldd	r31, Z+5	; 0x05
     680:	e0 2d       	mov	r30, r0
     682:	6f 2d       	mov	r22, r15
     684:	c6 01       	movw	r24, r12
     686:	09 95       	icall
     688:	d6 01       	movw	r26, r12
     68a:	ed 91       	ld	r30, X+
     68c:	fc 91       	ld	r31, X
     68e:	04 80       	ldd	r0, Z+4	; 0x04
     690:	f5 81       	ldd	r31, Z+5	; 0x05
     692:	e0 2d       	mov	r30, r0
     694:	49 81       	ldd	r20, Y+1	; 0x01
     696:	64 2f       	mov	r22, r20
     698:	c6 01       	movw	r24, r12
     69a:	09 95       	icall
     69c:	d6 01       	movw	r26, r12
     69e:	ed 91       	ld	r30, X+
     6a0:	fc 91       	ld	r31, X
     6a2:	01 90       	ld	r0, Z+
     6a4:	f0 81       	ld	r31, Z
     6a6:	e0 2d       	mov	r30, r0
     6a8:	c6 01       	movw	r24, r12
     6aa:	09 95       	icall
     6ac:	d6 01       	movw	r26, r12
     6ae:	ed 91       	ld	r30, X+
     6b0:	fc 91       	ld	r31, X
     6b2:	6f 2d       	mov	r22, r15
     6b4:	61 60       	ori	r22, 0x01	; 1
     6b6:	04 80       	ldd	r0, Z+4	; 0x04
     6b8:	f5 81       	ldd	r31, Z+5	; 0x05
     6ba:	e0 2d       	mov	r30, r0
     6bc:	c6 01       	movw	r24, r12
     6be:	09 95       	icall
     6c0:	2a 81       	ldd	r18, Y+2	; 0x02
     6c2:	e2 2e       	mov	r14, r18
     6c4:	3b 81       	ldd	r19, Y+3	; 0x03
     6c6:	f3 2e       	mov	r15, r19
     6c8:	0e 0d       	add	r16, r14
     6ca:	1f 1d       	adc	r17, r15
     6cc:	d6 01       	movw	r26, r12
     6ce:	ed 91       	ld	r30, X+
     6d0:	fc 91       	ld	r31, X
     6d2:	e0 16       	cp	r14, r16
     6d4:	f1 06       	cpc	r15, r17
     6d6:	51 f0       	breq	.+20     	; 0x6ec <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE14read_reg_multiEhhPhj+0xa6>
     6d8:	06 80       	ldd	r0, Z+6	; 0x06
     6da:	f7 81       	ldd	r31, Z+7	; 0x07
     6dc:	e0 2d       	mov	r30, r0
     6de:	61 e0       	ldi	r22, 0x01	; 1
     6e0:	c6 01       	movw	r24, r12
     6e2:	09 95       	icall
     6e4:	f7 01       	movw	r30, r14
     6e6:	81 93       	st	Z+, r24
     6e8:	7f 01       	movw	r14, r30
     6ea:	f0 cf       	rjmp	.-32     	; 0x6cc <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE14read_reg_multiEhhPhj+0x86>
     6ec:	02 80       	ldd	r0, Z+2	; 0x02
     6ee:	f3 81       	ldd	r31, Z+3	; 0x03
     6f0:	e0 2d       	mov	r30, r0
     6f2:	c6 01       	movw	r24, r12
     6f4:	0f 90       	pop	r0
     6f6:	0f 90       	pop	r0
     6f8:	0f 90       	pop	r0
     6fa:	df 91       	pop	r29
     6fc:	cf 91       	pop	r28
     6fe:	1f 91       	pop	r17
     700:	0f 91       	pop	r16
     702:	ff 90       	pop	r15
     704:	ef 90       	pop	r14
     706:	df 90       	pop	r13
     708:	cf 90       	pop	r12
     70a:	09 94       	ijmp

0000070c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     70c:	88 23       	and	r24, r24
     70e:	21 f0       	breq	.+8      	; 0x718 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     710:	bf 98       	cbi	0x17, 7	; 23
     712:	82 30       	cpi	r24, 0x02	; 2
     714:	19 f0       	breq	.+6      	; 0x71c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     716:	08 95       	ret
     718:	bf 9a       	sbi	0x17, 7	; 23
     71a:	08 95       	ret
     71c:	c7 9a       	sbi	0x18, 7	; 24
     71e:	08 95       	ret

00000720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>:
     720:	82 e3       	ldi	r24, 0x32	; 50
     722:	00 00       	nop
     724:	81 50       	subi	r24, 0x01	; 1
     726:	e9 f7       	brne	.-6      	; 0x722 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6+0x2>
     728:	08 95       	ret

0000072a <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4readEh>:
     72a:	1f 93       	push	r17
     72c:	cf 93       	push	r28
     72e:	df 93       	push	r29
     730:	16 2f       	mov	r17, r22
     732:	bd 98       	cbi	0x17, 5	; 23
     734:	80 e0       	ldi	r24, 0x00	; 0
     736:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     73a:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     73e:	d8 e0       	ldi	r29, 0x08	; 8
     740:	c0 e0       	ldi	r28, 0x00	; 0
     742:	cc 0f       	add	r28, r28
     744:	81 e0       	ldi	r24, 0x01	; 1
     746:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     74a:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     74e:	b5 99       	sbic	0x16, 5	; 22
     750:	c1 60       	ori	r28, 0x01	; 1
     752:	80 e0       	ldi	r24, 0x00	; 0
     754:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     758:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     75c:	d1 50       	subi	r29, 0x01	; 1
     75e:	89 f7       	brne	.-30     	; 0x742 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4readEh+0x18>
     760:	11 23       	and	r17, r17
     762:	11 f0       	breq	.+4      	; 0x768 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4readEh+0x3e>
     764:	bd 9a       	sbi	0x17, 5	; 23
     766:	01 c0       	rjmp	.+2      	; 0x76a <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4readEh+0x40>
     768:	bd 98       	cbi	0x17, 5	; 23
     76a:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     76e:	81 e0       	ldi	r24, 0x01	; 1
     770:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     774:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     778:	80 e0       	ldi	r24, 0x00	; 0
     77a:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     77e:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     782:	bd 98       	cbi	0x17, 5	; 23
     784:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     788:	8c 2f       	mov	r24, r28
     78a:	df 91       	pop	r29
     78c:	cf 91       	pop	r28
     78e:	1f 91       	pop	r17
     790:	08 95       	ret

00000792 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5writeEh>:
     792:	cf 93       	push	r28
     794:	df 93       	push	r29
     796:	d6 2f       	mov	r29, r22
     798:	c8 e0       	ldi	r28, 0x08	; 8
     79a:	80 e0       	ldi	r24, 0x00	; 0
     79c:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7a0:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7a4:	d7 ff       	sbrs	r29, 7
     7a6:	02 c0       	rjmp	.+4      	; 0x7ac <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5writeEh+0x1a>
     7a8:	bd 98       	cbi	0x17, 5	; 23
     7aa:	01 c0       	rjmp	.+2      	; 0x7ae <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5writeEh+0x1c>
     7ac:	bd 9a       	sbi	0x17, 5	; 23
     7ae:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7b2:	81 e0       	ldi	r24, 0x01	; 1
     7b4:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7b8:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7bc:	dd 0f       	add	r29, r29
     7be:	c1 50       	subi	r28, 0x01	; 1
     7c0:	61 f7       	brne	.-40     	; 0x79a <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5writeEh+0x8>
     7c2:	80 e0       	ldi	r24, 0x00	; 0
     7c4:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7c8:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7cc:	bd 98       	cbi	0x17, 5	; 23
     7ce:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7d2:	81 e0       	ldi	r24, 0x01	; 1
     7d4:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7d8:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7dc:	c6 b3       	in	r28, 0x16	; 22
     7de:	80 e0       	ldi	r24, 0x00	; 0
     7e0:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7e4:	0e 94 90 03 	call	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7e8:	c5 fb       	bst	r28, 5
     7ea:	cc 27       	eor	r28, r28
     7ec:	c0 f9       	bld	r28, 0
     7ee:	81 e0       	ldi	r24, 0x01	; 1
     7f0:	8c 27       	eor	r24, r28
     7f2:	df 91       	pop	r29
     7f4:	cf 91       	pop	r28
     7f6:	08 95       	ret

000007f8 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5startEv>:
     7f8:	81 e0       	ldi	r24, 0x01	; 1
     7fa:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7fe:	bd 98       	cbi	0x17, 5	; 23
     800:	81 e0       	ldi	r24, 0x01	; 1
     802:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     806:	bd 9a       	sbi	0x17, 5	; 23
     808:	80 e0       	ldi	r24, 0x00	; 0
     80a:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     80e:	bd 98       	cbi	0x17, 5	; 23
     810:	0c 94 90 03 	jmp	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>

00000814 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4stopEv>:
     814:	80 e0       	ldi	r24, 0x00	; 0
     816:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     81a:	bd 9a       	sbi	0x17, 5	; 23
     81c:	81 e0       	ldi	r24, 0x01	; 1
     81e:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     822:	bd 9a       	sbi	0x17, 5	; 23
     824:	81 e0       	ldi	r24, 0x01	; 1
     826:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     82a:	bd 98       	cbi	0x17, 5	; 23
     82c:	0c 94 90 03 	jmp	0x720	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>

00000830 <_GLOBAL__sub_I_i2c>:
     830:	84 e6       	ldi	r24, 0x64	; 100
     832:	90 e0       	ldi	r25, 0x00	; 0
     834:	90 93 79 00 	sts	0x0079, r25
     838:	80 93 78 00 	sts	0x0078, r24
     83c:	bd 98       	cbi	0x17, 5	; 23
     83e:	81 e0       	ldi	r24, 0x01	; 1
     840:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     844:	c5 98       	cbi	0x18, 5	; 24
     846:	c7 98       	cbi	0x18, 7	; 24
     848:	08 95       	ret

0000084a <_Z5blinkv>:
     84a:	80 91 7c 00 	lds	r24, 0x007C
     84e:	90 91 7d 00 	lds	r25, 0x007D
     852:	00 97       	sbiw	r24, 0x00	; 0
     854:	19 f0       	breq	.+6      	; 0x85c <_Z5blinkv+0x12>
     856:	01 97       	sbiw	r24, 0x01	; 1
     858:	49 f0       	breq	.+18     	; 0x86c <_Z5blinkv+0x22>
     85a:	08 95       	ret
     85c:	dd 9a       	sbi	0x1b, 5	; 27
     85e:	81 e0       	ldi	r24, 0x01	; 1
     860:	90 e0       	ldi	r25, 0x00	; 0
     862:	90 93 7d 00 	sts	0x007D, r25
     866:	80 93 7c 00 	sts	0x007C, r24
     86a:	08 95       	ret
     86c:	dd 98       	cbi	0x1b, 5	; 27
     86e:	10 92 7d 00 	sts	0x007D, r1
     872:	10 92 7c 00 	sts	0x007C, r1
     876:	08 95       	ret

00000878 <main>:
     878:	bb 98       	cbi	0x17, 3	; 23
     87a:	c3 9a       	sbi	0x18, 3	; 24
     87c:	20 e0       	ldi	r18, 0x00	; 0
     87e:	48 ec       	ldi	r20, 0xC8	; 200
     880:	50 e0       	ldi	r21, 0x00	; 0
     882:	65 e2       	ldi	r22, 0x25	; 37
     884:	74 e0       	ldi	r23, 0x04	; 4
     886:	89 ee       	ldi	r24, 0xE9	; 233
     888:	90 e0       	ldi	r25, 0x00	; 0
     88a:	0e 94 eb 05 	call	0xbd6	; 0xbd6 <_ZN6CTimer8add_taskEPFvvEjb>
     88e:	8e e7       	ldi	r24, 0x7E	; 126
     890:	90 e0       	ldi	r25, 0x00	; 0
     892:	0e 94 86 00 	call	0x10c	; 0x10c <_ZN14CRobotControll4initEv>
     896:	b3 9b       	sbis	0x16, 3	; 22
     898:	02 c0       	rjmp	.+4      	; 0x89e <main+0x26>
     89a:	00 00       	nop
     89c:	fc cf       	rjmp	.-8      	; 0x896 <main+0x1e>
     89e:	8e e7       	ldi	r24, 0x7E	; 126
     8a0:	90 e0       	ldi	r25, 0x00	; 0
     8a2:	0e 94 25 01 	call	0x24a	; 0x24a <_ZN14CRobotControll4mainEv>
     8a6:	f7 cf       	rjmp	.-18     	; 0x896 <main+0x1e>

000008a8 <_GLOBAL__sub_I_led1>:
     8a8:	d5 9a       	sbi	0x1a, 5	; 26
     8aa:	8e e7       	ldi	r24, 0x7E	; 126
     8ac:	90 e0       	ldi	r25, 0x00	; 0
     8ae:	0c 94 70 00 	jmp	0xe0	; 0xe0 <_ZN14CRobotControllC1Ev>

000008b2 <_GLOBAL__sub_D_led1>:
     8b2:	8e e7       	ldi	r24, 0x7E	; 126
     8b4:	90 e0       	ldi	r25, 0x00	; 0
     8b6:	0c 94 7b 00 	jmp	0xf6	; 0xf6 <_ZN14CRobotControllD1Ev>

000008ba <_ZN5CGyroC1Ev>:
     8ba:	08 95       	ret

000008bc <_ZN5CGyroD1Ev>:
     8bc:	08 95       	ret

000008be <_ZN5CGyro4readEv>:
     8be:	cf 92       	push	r12
     8c0:	df 92       	push	r13
     8c2:	ef 92       	push	r14
     8c4:	ff 92       	push	r15
     8c6:	0f 93       	push	r16
     8c8:	1f 93       	push	r17
     8ca:	cf 93       	push	r28
     8cc:	df 93       	push	r29
     8ce:	00 d0       	rcall	.+0      	; 0x8d0 <_ZN5CGyro4readEv+0x12>
     8d0:	00 d0       	rcall	.+0      	; 0x8d2 <_ZN5CGyro4readEv+0x14>
     8d2:	cd b7       	in	r28, 0x3d	; 61
     8d4:	de b7       	in	r29, 0x3e	; 62
     8d6:	6c 01       	movw	r12, r24
     8d8:	dc 01       	movw	r26, r24
     8da:	18 96       	adiw	r26, 0x08	; 8
     8dc:	8d 91       	ld	r24, X+
     8de:	9c 91       	ld	r25, X
     8e0:	19 97       	sbiw	r26, 0x09	; 9
     8e2:	dc 01       	movw	r26, r24
     8e4:	ed 91       	ld	r30, X+
     8e6:	fc 91       	ld	r31, X
     8e8:	01 90       	ld	r0, Z+
     8ea:	f0 81       	ld	r31, Z
     8ec:	e0 2d       	mov	r30, r0
     8ee:	09 95       	icall
     8f0:	f6 01       	movw	r30, r12
     8f2:	80 85       	ldd	r24, Z+8	; 0x08
     8f4:	91 85       	ldd	r25, Z+9	; 0x09
     8f6:	dc 01       	movw	r26, r24
     8f8:	ed 91       	ld	r30, X+
     8fa:	fc 91       	ld	r31, X
     8fc:	04 80       	ldd	r0, Z+4	; 0x04
     8fe:	f5 81       	ldd	r31, Z+5	; 0x05
     900:	e0 2d       	mov	r30, r0
     902:	6c e3       	ldi	r22, 0x3C	; 60
     904:	09 95       	icall
     906:	f6 01       	movw	r30, r12
     908:	80 85       	ldd	r24, Z+8	; 0x08
     90a:	91 85       	ldd	r25, Z+9	; 0x09
     90c:	dc 01       	movw	r26, r24
     90e:	ed 91       	ld	r30, X+
     910:	fc 91       	ld	r31, X
     912:	04 80       	ldd	r0, Z+4	; 0x04
     914:	f5 81       	ldd	r31, Z+5	; 0x05
     916:	e0 2d       	mov	r30, r0
     918:	63 e0       	ldi	r22, 0x03	; 3
     91a:	09 95       	icall
     91c:	f6 01       	movw	r30, r12
     91e:	80 85       	ldd	r24, Z+8	; 0x08
     920:	91 85       	ldd	r25, Z+9	; 0x09
     922:	dc 01       	movw	r26, r24
     924:	ed 91       	ld	r30, X+
     926:	fc 91       	ld	r31, X
     928:	02 80       	ldd	r0, Z+2	; 0x02
     92a:	f3 81       	ldd	r31, Z+3	; 0x03
     92c:	e0 2d       	mov	r30, r0
     92e:	09 95       	icall
     930:	f6 01       	movw	r30, r12
     932:	80 85       	ldd	r24, Z+8	; 0x08
     934:	91 85       	ldd	r25, Z+9	; 0x09
     936:	dc 01       	movw	r26, r24
     938:	ed 91       	ld	r30, X+
     93a:	fc 91       	ld	r31, X
     93c:	01 90       	ld	r0, Z+
     93e:	f0 81       	ld	r31, Z
     940:	e0 2d       	mov	r30, r0
     942:	09 95       	icall
     944:	f6 01       	movw	r30, r12
     946:	80 85       	ldd	r24, Z+8	; 0x08
     948:	91 85       	ldd	r25, Z+9	; 0x09
     94a:	dc 01       	movw	r26, r24
     94c:	ed 91       	ld	r30, X+
     94e:	fc 91       	ld	r31, X
     950:	04 80       	ldd	r0, Z+4	; 0x04
     952:	f5 81       	ldd	r31, Z+5	; 0x05
     954:	e0 2d       	mov	r30, r0
     956:	6d e3       	ldi	r22, 0x3D	; 61
     958:	09 95       	icall
     95a:	f6 01       	movw	r30, r12
     95c:	80 85       	ldd	r24, Z+8	; 0x08
     95e:	91 85       	ldd	r25, Z+9	; 0x09
     960:	dc 01       	movw	r26, r24
     962:	ed 91       	ld	r30, X+
     964:	fc 91       	ld	r31, X
     966:	06 80       	ldd	r0, Z+6	; 0x06
     968:	f7 81       	ldd	r31, Z+7	; 0x07
     96a:	e0 2d       	mov	r30, r0
     96c:	61 e0       	ldi	r22, 0x01	; 1
     96e:	09 95       	icall
     970:	e8 2e       	mov	r14, r24
     972:	f6 01       	movw	r30, r12
     974:	80 85       	ldd	r24, Z+8	; 0x08
     976:	91 85       	ldd	r25, Z+9	; 0x09
     978:	dc 01       	movw	r26, r24
     97a:	ed 91       	ld	r30, X+
     97c:	fc 91       	ld	r31, X
     97e:	06 80       	ldd	r0, Z+6	; 0x06
     980:	f7 81       	ldd	r31, Z+7	; 0x07
     982:	e0 2d       	mov	r30, r0
     984:	61 e0       	ldi	r22, 0x01	; 1
     986:	09 95       	icall
     988:	08 2f       	mov	r16, r24
     98a:	f6 01       	movw	r30, r12
     98c:	80 85       	ldd	r24, Z+8	; 0x08
     98e:	91 85       	ldd	r25, Z+9	; 0x09
     990:	dc 01       	movw	r26, r24
     992:	ed 91       	ld	r30, X+
     994:	fc 91       	ld	r31, X
     996:	06 80       	ldd	r0, Z+6	; 0x06
     998:	f7 81       	ldd	r31, Z+7	; 0x07
     99a:	e0 2d       	mov	r30, r0
     99c:	61 e0       	ldi	r22, 0x01	; 1
     99e:	09 95       	icall
     9a0:	f6 01       	movw	r30, r12
     9a2:	80 85       	ldd	r24, Z+8	; 0x08
     9a4:	91 85       	ldd	r25, Z+9	; 0x09
     9a6:	dc 01       	movw	r26, r24
     9a8:	ed 91       	ld	r30, X+
     9aa:	fc 91       	ld	r31, X
     9ac:	06 80       	ldd	r0, Z+6	; 0x06
     9ae:	f7 81       	ldd	r31, Z+7	; 0x07
     9b0:	e0 2d       	mov	r30, r0
     9b2:	61 e0       	ldi	r22, 0x01	; 1
     9b4:	09 95       	icall
     9b6:	f6 01       	movw	r30, r12
     9b8:	80 85       	ldd	r24, Z+8	; 0x08
     9ba:	91 85       	ldd	r25, Z+9	; 0x09
     9bc:	dc 01       	movw	r26, r24
     9be:	ed 91       	ld	r30, X+
     9c0:	fc 91       	ld	r31, X
     9c2:	06 80       	ldd	r0, Z+6	; 0x06
     9c4:	f7 81       	ldd	r31, Z+7	; 0x07
     9c6:	e0 2d       	mov	r30, r0
     9c8:	61 e0       	ldi	r22, 0x01	; 1
     9ca:	09 95       	icall
     9cc:	f8 2e       	mov	r15, r24
     9ce:	f6 01       	movw	r30, r12
     9d0:	80 85       	ldd	r24, Z+8	; 0x08
     9d2:	91 85       	ldd	r25, Z+9	; 0x09
     9d4:	dc 01       	movw	r26, r24
     9d6:	ed 91       	ld	r30, X+
     9d8:	fc 91       	ld	r31, X
     9da:	06 80       	ldd	r0, Z+6	; 0x06
     9dc:	f7 81       	ldd	r31, Z+7	; 0x07
     9de:	e0 2d       	mov	r30, r0
     9e0:	60 e0       	ldi	r22, 0x00	; 0
     9e2:	09 95       	icall
     9e4:	18 2f       	mov	r17, r24
     9e6:	f6 01       	movw	r30, r12
     9e8:	80 85       	ldd	r24, Z+8	; 0x08
     9ea:	91 85       	ldd	r25, Z+9	; 0x09
     9ec:	dc 01       	movw	r26, r24
     9ee:	ed 91       	ld	r30, X+
     9f0:	fc 91       	ld	r31, X
     9f2:	02 80       	ldd	r0, Z+2	; 0x02
     9f4:	f3 81       	ldd	r31, Z+3	; 0x03
     9f6:	e0 2d       	mov	r30, r0
     9f8:	09 95       	icall
     9fa:	60 2f       	mov	r22, r16
     9fc:	70 e0       	ldi	r23, 0x00	; 0
     9fe:	7e 29       	or	r23, r14
     a00:	07 2e       	mov	r0, r23
     a02:	00 0c       	add	r0, r0
     a04:	88 0b       	sbc	r24, r24
     a06:	99 0b       	sbc	r25, r25
     a08:	0e 94 a2 08 	call	0x1144	; 0x1144 <__floatsisf>
     a0c:	9b 01       	movw	r18, r22
     a0e:	ac 01       	movw	r20, r24
     a10:	81 2f       	mov	r24, r17
     a12:	90 e0       	ldi	r25, 0x00	; 0
     a14:	9f 29       	or	r25, r15
     a16:	bc 01       	movw	r22, r24
     a18:	99 0f       	add	r25, r25
     a1a:	88 0b       	sbc	r24, r24
     a1c:	99 0b       	sbc	r25, r25
     a1e:	29 83       	std	Y+1, r18	; 0x01
     a20:	3a 83       	std	Y+2, r19	; 0x02
     a22:	4b 83       	std	Y+3, r20	; 0x03
     a24:	5c 83       	std	Y+4, r21	; 0x04
     a26:	0e 94 a2 08 	call	0x1144	; 0x1144 <__floatsisf>
     a2a:	29 81       	ldd	r18, Y+1	; 0x01
     a2c:	3a 81       	ldd	r19, Y+2	; 0x02
     a2e:	4b 81       	ldd	r20, Y+3	; 0x03
     a30:	5c 81       	ldd	r21, Y+4	; 0x04
     a32:	0e 94 99 07 	call	0xf32	; 0xf32 <atan2>
     a36:	20 e0       	ldi	r18, 0x00	; 0
     a38:	30 e0       	ldi	r19, 0x00	; 0
     a3a:	44 e3       	ldi	r20, 0x34	; 52
     a3c:	53 e4       	ldi	r21, 0x43	; 67
     a3e:	0e 94 5d 09 	call	0x12ba	; 0x12ba <__mulsf3>
     a42:	2b ed       	ldi	r18, 0xDB	; 219
     a44:	3f e0       	ldi	r19, 0x0F	; 15
     a46:	49 e4       	ldi	r20, 0x49	; 73
     a48:	50 e4       	ldi	r21, 0x40	; 64
     a4a:	0e 94 f8 07 	call	0xff0	; 0xff0 <__divsf3>
     a4e:	0e 94 6a 08 	call	0x10d4	; 0x10d4 <__fixsfsi>
     a52:	f6 01       	movw	r30, r12
     a54:	04 81       	ldd	r16, Z+4	; 0x04
     a56:	15 81       	ldd	r17, Z+5	; 0x05
     a58:	26 81       	ldd	r18, Z+6	; 0x06
     a5a:	37 81       	ldd	r19, Z+7	; 0x07
     a5c:	dc 01       	movw	r26, r24
     a5e:	cb 01       	movw	r24, r22
     a60:	80 1b       	sub	r24, r16
     a62:	91 0b       	sbc	r25, r17
     a64:	a2 0b       	sbc	r26, r18
     a66:	b3 0b       	sbc	r27, r19
     a68:	80 83       	st	Z, r24
     a6a:	91 83       	std	Z+1, r25	; 0x01
     a6c:	a2 83       	std	Z+2, r26	; 0x02
     a6e:	b3 83       	std	Z+3, r27	; 0x03
     a70:	0f 90       	pop	r0
     a72:	0f 90       	pop	r0
     a74:	0f 90       	pop	r0
     a76:	0f 90       	pop	r0
     a78:	df 91       	pop	r29
     a7a:	cf 91       	pop	r28
     a7c:	1f 91       	pop	r17
     a7e:	0f 91       	pop	r16
     a80:	ff 90       	pop	r15
     a82:	ef 90       	pop	r14
     a84:	df 90       	pop	r13
     a86:	cf 90       	pop	r12
     a88:	08 95       	ret

00000a8a <_ZN5CGyro4initEP14CI2C_Interface>:
     a8a:	cf 92       	push	r12
     a8c:	df 92       	push	r13
     a8e:	ef 92       	push	r14
     a90:	ff 92       	push	r15
     a92:	0f 93       	push	r16
     a94:	1f 93       	push	r17
     a96:	cf 93       	push	r28
     a98:	df 93       	push	r29
     a9a:	ec 01       	movw	r28, r24
     a9c:	cb 01       	movw	r24, r22
     a9e:	79 87       	std	Y+9, r23	; 0x09
     aa0:	68 87       	std	Y+8, r22	; 0x08
     aa2:	db 01       	movw	r26, r22
     aa4:	ed 91       	ld	r30, X+
     aa6:	fc 91       	ld	r31, X
     aa8:	00 84       	ldd	r0, Z+8	; 0x08
     aaa:	f1 85       	ldd	r31, Z+9	; 0x09
     aac:	e0 2d       	mov	r30, r0
     aae:	24 e1       	ldi	r18, 0x14	; 20
     ab0:	40 e0       	ldi	r20, 0x00	; 0
     ab2:	6c e3       	ldi	r22, 0x3C	; 60
     ab4:	09 95       	icall
     ab6:	88 85       	ldd	r24, Y+8	; 0x08
     ab8:	99 85       	ldd	r25, Y+9	; 0x09
     aba:	dc 01       	movw	r26, r24
     abc:	ed 91       	ld	r30, X+
     abe:	fc 91       	ld	r31, X
     ac0:	00 84       	ldd	r0, Z+8	; 0x08
     ac2:	f1 85       	ldd	r31, Z+9	; 0x09
     ac4:	e0 2d       	mov	r30, r0
     ac6:	20 e0       	ldi	r18, 0x00	; 0
     ac8:	41 e0       	ldi	r20, 0x01	; 1
     aca:	6c e3       	ldi	r22, 0x3C	; 60
     acc:	09 95       	icall
     ace:	88 85       	ldd	r24, Y+8	; 0x08
     ad0:	99 85       	ldd	r25, Y+9	; 0x09
     ad2:	dc 01       	movw	r26, r24
     ad4:	ed 91       	ld	r30, X+
     ad6:	fc 91       	ld	r31, X
     ad8:	00 84       	ldd	r0, Z+8	; 0x08
     ada:	f1 85       	ldd	r31, Z+9	; 0x09
     adc:	e0 2d       	mov	r30, r0
     ade:	20 e0       	ldi	r18, 0x00	; 0
     ae0:	42 e0       	ldi	r20, 0x02	; 2
     ae2:	6c e3       	ldi	r22, 0x3C	; 60
     ae4:	09 95       	icall
     ae6:	88 85       	ldd	r24, Y+8	; 0x08
     ae8:	99 85       	ldd	r25, Y+9	; 0x09
     aea:	dc 01       	movw	r26, r24
     aec:	ed 91       	ld	r30, X+
     aee:	fc 91       	ld	r31, X
     af0:	06 84       	ldd	r0, Z+14	; 0x0e
     af2:	f7 85       	ldd	r31, Z+15	; 0x0f
     af4:	e0 2d       	mov	r30, r0
     af6:	4a e0       	ldi	r20, 0x0A	; 10
     af8:	6c e3       	ldi	r22, 0x3C	; 60
     afa:	09 95       	icall
     afc:	88 34       	cpi	r24, 0x48	; 72
     afe:	11 f0       	breq	.+4      	; 0xb04 <_ZN5CGyro4initEP14CI2C_Interface+0x7a>
     b00:	de 98       	cbi	0x1b, 6	; 27
     b02:	01 c0       	rjmp	.+2      	; 0xb06 <_ZN5CGyro4initEP14CI2C_Interface+0x7c>
     b04:	de 9a       	sbi	0x1b, 6	; 27
     b06:	18 82       	st	Y, r1
     b08:	19 82       	std	Y+1, r1	; 0x01
     b0a:	1a 82       	std	Y+2, r1	; 0x02
     b0c:	1b 82       	std	Y+3, r1	; 0x03
     b0e:	1c 82       	std	Y+4, r1	; 0x04
     b10:	1d 82       	std	Y+5, r1	; 0x05
     b12:	1e 82       	std	Y+6, r1	; 0x06
     b14:	1f 82       	std	Y+7, r1	; 0x07
     b16:	00 e0       	ldi	r16, 0x00	; 0
     b18:	10 e0       	ldi	r17, 0x00	; 0
     b1a:	c1 2c       	mov	r12, r1
     b1c:	d1 2c       	mov	r13, r1
     b1e:	76 01       	movw	r14, r12
     b20:	ce 01       	movw	r24, r28
     b22:	0e 94 5f 04 	call	0x8be	; 0x8be <_ZN5CGyro4readEv>
     b26:	88 81       	ld	r24, Y
     b28:	99 81       	ldd	r25, Y+1	; 0x01
     b2a:	aa 81       	ldd	r26, Y+2	; 0x02
     b2c:	bb 81       	ldd	r27, Y+3	; 0x03
     b2e:	c8 0e       	add	r12, r24
     b30:	d9 1e       	adc	r13, r25
     b32:	ea 1e       	adc	r14, r26
     b34:	fb 1e       	adc	r15, r27
     b36:	0f 5f       	subi	r16, 0xFF	; 255
     b38:	1f 4f       	sbci	r17, 0xFF	; 255
     b3a:	04 36       	cpi	r16, 0x64	; 100
     b3c:	11 05       	cpc	r17, r1
     b3e:	81 f7       	brne	.-32     	; 0xb20 <_ZN5CGyro4initEP14CI2C_Interface+0x96>
     b40:	c7 01       	movw	r24, r14
     b42:	b6 01       	movw	r22, r12
     b44:	24 e6       	ldi	r18, 0x64	; 100
     b46:	30 e0       	ldi	r19, 0x00	; 0
     b48:	40 e0       	ldi	r20, 0x00	; 0
     b4a:	50 e0       	ldi	r21, 0x00	; 0
     b4c:	0e 94 d2 06 	call	0xda4	; 0xda4 <__divmodsi4>
     b50:	2c 83       	std	Y+4, r18	; 0x04
     b52:	3d 83       	std	Y+5, r19	; 0x05
     b54:	4e 83       	std	Y+6, r20	; 0x06
     b56:	5f 83       	std	Y+7, r21	; 0x07
     b58:	18 82       	st	Y, r1
     b5a:	19 82       	std	Y+1, r1	; 0x01
     b5c:	1a 82       	std	Y+2, r1	; 0x02
     b5e:	1b 82       	std	Y+3, r1	; 0x03
     b60:	df 91       	pop	r29
     b62:	cf 91       	pop	r28
     b64:	1f 91       	pop	r17
     b66:	0f 91       	pop	r16
     b68:	ff 90       	pop	r15
     b6a:	ef 90       	pop	r14
     b6c:	df 90       	pop	r13
     b6e:	cf 90       	pop	r12
     b70:	08 95       	ret

00000b72 <_ZN5CGyro7get_yawEv>:
     b72:	fc 01       	movw	r30, r24
     b74:	60 81       	ld	r22, Z
     b76:	71 81       	ldd	r23, Z+1	; 0x01
     b78:	82 81       	ldd	r24, Z+2	; 0x02
     b7a:	93 81       	ldd	r25, Z+3	; 0x03
     b7c:	08 95       	ret

00000b7e <_GLOBAL__sub_I_error>:
     b7e:	d6 9a       	sbi	0x1a, 6	; 26
     b80:	08 95       	ret

00000b82 <_ZN6CTimerC1Ev>:
     b82:	80 e0       	ldi	r24, 0x00	; 0
     b84:	90 e0       	ldi	r25, 0x00	; 0
     b86:	fc 01       	movw	r30, r24
     b88:	23 e0       	ldi	r18, 0x03	; 3
     b8a:	ee 0f       	add	r30, r30
     b8c:	ff 1f       	adc	r31, r31
     b8e:	2a 95       	dec	r18
     b90:	e1 f7       	brne	.-8      	; 0xb8a <_ZN6CTimerC1Ev+0x8>
     b92:	eb 55       	subi	r30, 0x5B	; 91
     b94:	ff 4f       	sbci	r31, 0xFF	; 255
     b96:	11 82       	std	Z+1, r1	; 0x01
     b98:	10 82       	st	Z, r1
     b9a:	13 82       	std	Z+3, r1	; 0x03
     b9c:	12 82       	std	Z+2, r1	; 0x02
     b9e:	15 82       	std	Z+5, r1	; 0x05
     ba0:	14 82       	std	Z+4, r1	; 0x04
     ba2:	16 82       	std	Z+6, r1	; 0x06
     ba4:	17 82       	std	Z+7, r1	; 0x07
     ba6:	01 96       	adiw	r24, 0x01	; 1
     ba8:	88 30       	cpi	r24, 0x08	; 8
     baa:	91 05       	cpc	r25, r1
     bac:	61 f7       	brne	.-40     	; 0xb86 <_ZN6CTimerC1Ev+0x4>
     bae:	10 92 e5 00 	sts	0x00E5, r1
     bb2:	10 92 e6 00 	sts	0x00E6, r1
     bb6:	10 92 e7 00 	sts	0x00E7, r1
     bba:	10 92 e8 00 	sts	0x00E8, r1
     bbe:	83 b7       	in	r24, 0x33	; 51
     bc0:	88 60       	ori	r24, 0x08	; 8
     bc2:	83 bf       	out	0x33, r24	; 51
     bc4:	8b e9       	ldi	r24, 0x9B	; 155
     bc6:	8c bf       	out	0x3c, r24	; 60
     bc8:	83 e0       	ldi	r24, 0x03	; 3
     bca:	83 bf       	out	0x33, r24	; 51
     bcc:	89 b7       	in	r24, 0x39	; 57
     bce:	82 60       	ori	r24, 0x02	; 2
     bd0:	89 bf       	out	0x39, r24	; 57
     bd2:	78 94       	sei
     bd4:	08 95       	ret

00000bd6 <_ZN6CTimer8add_taskEPFvvEjb>:
     bd6:	80 e0       	ldi	r24, 0x00	; 0
     bd8:	90 e0       	ldi	r25, 0x00	; 0
     bda:	ef ef       	ldi	r30, 0xFF	; 255
     bdc:	dc 01       	movw	r26, r24
     bde:	33 e0       	ldi	r19, 0x03	; 3
     be0:	aa 0f       	add	r26, r26
     be2:	bb 1f       	adc	r27, r27
     be4:	3a 95       	dec	r19
     be6:	e1 f7       	brne	.-8      	; 0xbe0 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
     be8:	ab 55       	subi	r26, 0x5B	; 91
     bea:	bf 4f       	sbci	r27, 0xFF	; 255
     bec:	0d 90       	ld	r0, X+
     bee:	bc 91       	ld	r27, X
     bf0:	a0 2d       	mov	r26, r0
     bf2:	ab 2b       	or	r26, r27
     bf4:	09 f4       	brne	.+2      	; 0xbf8 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
     bf6:	e8 2f       	mov	r30, r24
     bf8:	01 96       	adiw	r24, 0x01	; 1
     bfa:	88 30       	cpi	r24, 0x08	; 8
     bfc:	91 05       	cpc	r25, r1
     bfe:	71 f7       	brne	.-36     	; 0xbdc <_ZN6CTimer8add_taskEPFvvEjb+0x6>
     c00:	ef 3f       	cpi	r30, 0xFF	; 255
     c02:	71 f0       	breq	.+28     	; 0xc20 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
     c04:	88 e0       	ldi	r24, 0x08	; 8
     c06:	e8 02       	muls	r30, r24
     c08:	f0 01       	movw	r30, r0
     c0a:	11 24       	eor	r1, r1
     c0c:	eb 55       	subi	r30, 0x5B	; 91
     c0e:	ff 4f       	sbci	r31, 0xFF	; 255
     c10:	71 83       	std	Z+1, r23	; 0x01
     c12:	60 83       	st	Z, r22
     c14:	53 83       	std	Z+3, r21	; 0x03
     c16:	42 83       	std	Z+2, r20	; 0x02
     c18:	55 83       	std	Z+5, r21	; 0x05
     c1a:	44 83       	std	Z+4, r20	; 0x04
     c1c:	16 82       	std	Z+6, r1	; 0x06
     c1e:	27 83       	std	Z+7, r18	; 0x07
     c20:	08 95       	ret

00000c22 <_ZN6CTimer8get_timeEv>:
     c22:	cf 93       	push	r28
     c24:	df 93       	push	r29
     c26:	00 d0       	rcall	.+0      	; 0xc28 <_ZN6CTimer8get_timeEv+0x6>
     c28:	00 d0       	rcall	.+0      	; 0xc2a <_ZN6CTimer8get_timeEv+0x8>
     c2a:	cd b7       	in	r28, 0x3d	; 61
     c2c:	de b7       	in	r29, 0x3e	; 62
     c2e:	f8 94       	cli
     c30:	80 91 e5 00 	lds	r24, 0x00E5
     c34:	90 91 e6 00 	lds	r25, 0x00E6
     c38:	a0 91 e7 00 	lds	r26, 0x00E7
     c3c:	b0 91 e8 00 	lds	r27, 0x00E8
     c40:	89 83       	std	Y+1, r24	; 0x01
     c42:	9a 83       	std	Y+2, r25	; 0x02
     c44:	ab 83       	std	Y+3, r26	; 0x03
     c46:	bc 83       	std	Y+4, r27	; 0x04
     c48:	78 94       	sei
     c4a:	69 81       	ldd	r22, Y+1	; 0x01
     c4c:	7a 81       	ldd	r23, Y+2	; 0x02
     c4e:	8b 81       	ldd	r24, Y+3	; 0x03
     c50:	9c 81       	ldd	r25, Y+4	; 0x04
     c52:	0f 90       	pop	r0
     c54:	0f 90       	pop	r0
     c56:	0f 90       	pop	r0
     c58:	0f 90       	pop	r0
     c5a:	df 91       	pop	r29
     c5c:	cf 91       	pop	r28
     c5e:	08 95       	ret

00000c60 <_ZN6CTimer8delay_msEm>:
     c60:	cf 92       	push	r12
     c62:	df 92       	push	r13
     c64:	ef 92       	push	r14
     c66:	ff 92       	push	r15
     c68:	0f 93       	push	r16
     c6a:	1f 93       	push	r17
     c6c:	cf 93       	push	r28
     c6e:	df 93       	push	r29
     c70:	00 d0       	rcall	.+0      	; 0xc72 <_ZN6CTimer8delay_msEm+0x12>
     c72:	00 d0       	rcall	.+0      	; 0xc74 <_ZN6CTimer8delay_msEm+0x14>
     c74:	cd b7       	in	r28, 0x3d	; 61
     c76:	de b7       	in	r29, 0x3e	; 62
     c78:	8c 01       	movw	r16, r24
     c7a:	6a 01       	movw	r12, r20
     c7c:	7b 01       	movw	r14, r22
     c7e:	0e 94 11 06 	call	0xc22	; 0xc22 <_ZN6CTimer8get_timeEv>
     c82:	c6 0e       	add	r12, r22
     c84:	d7 1e       	adc	r13, r23
     c86:	e8 1e       	adc	r14, r24
     c88:	f9 1e       	adc	r15, r25
     c8a:	c9 82       	std	Y+1, r12	; 0x01
     c8c:	da 82       	std	Y+2, r13	; 0x02
     c8e:	eb 82       	std	Y+3, r14	; 0x03
     c90:	fc 82       	std	Y+4, r15	; 0x04
     c92:	c8 01       	movw	r24, r16
     c94:	0e 94 11 06 	call	0xc22	; 0xc22 <_ZN6CTimer8get_timeEv>
     c98:	c9 80       	ldd	r12, Y+1	; 0x01
     c9a:	da 80       	ldd	r13, Y+2	; 0x02
     c9c:	eb 80       	ldd	r14, Y+3	; 0x03
     c9e:	fc 80       	ldd	r15, Y+4	; 0x04
     ca0:	6c 15       	cp	r22, r12
     ca2:	7d 05       	cpc	r23, r13
     ca4:	8e 05       	cpc	r24, r14
     ca6:	9f 05       	cpc	r25, r15
     ca8:	10 f4       	brcc	.+4      	; 0xcae <_ZN6CTimer8delay_msEm+0x4e>
     caa:	00 00       	nop
     cac:	f2 cf       	rjmp	.-28     	; 0xc92 <_ZN6CTimer8delay_msEm+0x32>
     cae:	0f 90       	pop	r0
     cb0:	0f 90       	pop	r0
     cb2:	0f 90       	pop	r0
     cb4:	0f 90       	pop	r0
     cb6:	df 91       	pop	r29
     cb8:	cf 91       	pop	r28
     cba:	1f 91       	pop	r17
     cbc:	0f 91       	pop	r16
     cbe:	ff 90       	pop	r15
     cc0:	ef 90       	pop	r14
     cc2:	df 90       	pop	r13
     cc4:	cf 90       	pop	r12
     cc6:	08 95       	ret

00000cc8 <__vector_19>:
     cc8:	1f 92       	push	r1
     cca:	0f 92       	push	r0
     ccc:	0f b6       	in	r0, 0x3f	; 63
     cce:	0f 92       	push	r0
     cd0:	11 24       	eor	r1, r1
     cd2:	2f 93       	push	r18
     cd4:	3f 93       	push	r19
     cd6:	4f 93       	push	r20
     cd8:	5f 93       	push	r21
     cda:	6f 93       	push	r22
     cdc:	7f 93       	push	r23
     cde:	8f 93       	push	r24
     ce0:	9f 93       	push	r25
     ce2:	af 93       	push	r26
     ce4:	bf 93       	push	r27
     ce6:	cf 93       	push	r28
     ce8:	df 93       	push	r29
     cea:	ef 93       	push	r30
     cec:	ff 93       	push	r31
     cee:	c0 e0       	ldi	r28, 0x00	; 0
     cf0:	d0 e0       	ldi	r29, 0x00	; 0
     cf2:	ce 01       	movw	r24, r28
     cf4:	23 e0       	ldi	r18, 0x03	; 3
     cf6:	88 0f       	add	r24, r24
     cf8:	99 1f       	adc	r25, r25
     cfa:	2a 95       	dec	r18
     cfc:	e1 f7       	brne	.-8      	; 0xcf6 <__vector_19+0x2e>
     cfe:	fc 01       	movw	r30, r24
     d00:	eb 55       	subi	r30, 0x5B	; 91
     d02:	ff 4f       	sbci	r31, 0xFF	; 255
     d04:	24 81       	ldd	r18, Z+4	; 0x04
     d06:	35 81       	ldd	r19, Z+5	; 0x05
     d08:	23 2b       	or	r18, r19
     d0a:	31 f0       	breq	.+12     	; 0xd18 <__vector_19+0x50>
     d0c:	84 81       	ldd	r24, Z+4	; 0x04
     d0e:	95 81       	ldd	r25, Z+5	; 0x05
     d10:	01 97       	sbiw	r24, 0x01	; 1
     d12:	95 83       	std	Z+5, r25	; 0x05
     d14:	84 83       	std	Z+4, r24	; 0x04
     d16:	18 c0       	rjmp	.+48     	; 0xd48 <__vector_19+0x80>
     d18:	22 81       	ldd	r18, Z+2	; 0x02
     d1a:	33 81       	ldd	r19, Z+3	; 0x03
     d1c:	35 83       	std	Z+5, r19	; 0x05
     d1e:	24 83       	std	Z+4, r18	; 0x04
     d20:	26 81       	ldd	r18, Z+6	; 0x06
     d22:	2f 3f       	cpi	r18, 0xFF	; 255
     d24:	19 f0       	breq	.+6      	; 0xd2c <__vector_19+0x64>
     d26:	26 81       	ldd	r18, Z+6	; 0x06
     d28:	2f 5f       	subi	r18, 0xFF	; 255
     d2a:	26 83       	std	Z+6, r18	; 0x06
     d2c:	fc 01       	movw	r30, r24
     d2e:	eb 55       	subi	r30, 0x5B	; 91
     d30:	ff 4f       	sbci	r31, 0xFF	; 255
     d32:	87 81       	ldd	r24, Z+7	; 0x07
     d34:	81 11       	cpse	r24, r1
     d36:	08 c0       	rjmp	.+16     	; 0xd48 <__vector_19+0x80>
     d38:	80 81       	ld	r24, Z
     d3a:	91 81       	ldd	r25, Z+1	; 0x01
     d3c:	89 2b       	or	r24, r25
     d3e:	21 f0       	breq	.+8      	; 0xd48 <__vector_19+0x80>
     d40:	01 90       	ld	r0, Z+
     d42:	f0 81       	ld	r31, Z
     d44:	e0 2d       	mov	r30, r0
     d46:	09 95       	icall
     d48:	21 96       	adiw	r28, 0x01	; 1
     d4a:	c8 30       	cpi	r28, 0x08	; 8
     d4c:	d1 05       	cpc	r29, r1
     d4e:	89 f6       	brne	.-94     	; 0xcf2 <__vector_19+0x2a>
     d50:	80 91 e5 00 	lds	r24, 0x00E5
     d54:	90 91 e6 00 	lds	r25, 0x00E6
     d58:	a0 91 e7 00 	lds	r26, 0x00E7
     d5c:	b0 91 e8 00 	lds	r27, 0x00E8
     d60:	01 96       	adiw	r24, 0x01	; 1
     d62:	a1 1d       	adc	r26, r1
     d64:	b1 1d       	adc	r27, r1
     d66:	80 93 e5 00 	sts	0x00E5, r24
     d6a:	90 93 e6 00 	sts	0x00E6, r25
     d6e:	a0 93 e7 00 	sts	0x00E7, r26
     d72:	b0 93 e8 00 	sts	0x00E8, r27
     d76:	ff 91       	pop	r31
     d78:	ef 91       	pop	r30
     d7a:	df 91       	pop	r29
     d7c:	cf 91       	pop	r28
     d7e:	bf 91       	pop	r27
     d80:	af 91       	pop	r26
     d82:	9f 91       	pop	r25
     d84:	8f 91       	pop	r24
     d86:	7f 91       	pop	r23
     d88:	6f 91       	pop	r22
     d8a:	5f 91       	pop	r21
     d8c:	4f 91       	pop	r20
     d8e:	3f 91       	pop	r19
     d90:	2f 91       	pop	r18
     d92:	0f 90       	pop	r0
     d94:	0f be       	out	0x3f, r0	; 63
     d96:	0f 90       	pop	r0
     d98:	1f 90       	pop	r1
     d9a:	18 95       	reti

00000d9c <_GLOBAL__sub_I_timer>:
     d9c:	89 ee       	ldi	r24, 0xE9	; 233
     d9e:	90 e0       	ldi	r25, 0x00	; 0
     da0:	0c 94 c1 05 	jmp	0xb82	; 0xb82 <_ZN6CTimerC1Ev>

00000da4 <__divmodsi4>:
     da4:	05 2e       	mov	r0, r21
     da6:	97 fb       	bst	r25, 7
     da8:	1e f4       	brtc	.+6      	; 0xdb0 <__divmodsi4+0xc>
     daa:	00 94       	com	r0
     dac:	0e 94 e9 06 	call	0xdd2	; 0xdd2 <__negsi2>
     db0:	57 fd       	sbrc	r21, 7
     db2:	07 d0       	rcall	.+14     	; 0xdc2 <__divmodsi4_neg2>
     db4:	0e 94 f1 06 	call	0xde2	; 0xde2 <__udivmodsi4>
     db8:	07 fc       	sbrc	r0, 7
     dba:	03 d0       	rcall	.+6      	; 0xdc2 <__divmodsi4_neg2>
     dbc:	4e f4       	brtc	.+18     	; 0xdd0 <__divmodsi4_exit>
     dbe:	0c 94 e9 06 	jmp	0xdd2	; 0xdd2 <__negsi2>

00000dc2 <__divmodsi4_neg2>:
     dc2:	50 95       	com	r21
     dc4:	40 95       	com	r20
     dc6:	30 95       	com	r19
     dc8:	21 95       	neg	r18
     dca:	3f 4f       	sbci	r19, 0xFF	; 255
     dcc:	4f 4f       	sbci	r20, 0xFF	; 255
     dce:	5f 4f       	sbci	r21, 0xFF	; 255

00000dd0 <__divmodsi4_exit>:
     dd0:	08 95       	ret

00000dd2 <__negsi2>:
     dd2:	90 95       	com	r25
     dd4:	80 95       	com	r24
     dd6:	70 95       	com	r23
     dd8:	61 95       	neg	r22
     dda:	7f 4f       	sbci	r23, 0xFF	; 255
     ddc:	8f 4f       	sbci	r24, 0xFF	; 255
     dde:	9f 4f       	sbci	r25, 0xFF	; 255
     de0:	08 95       	ret

00000de2 <__udivmodsi4>:
     de2:	a1 e2       	ldi	r26, 0x21	; 33
     de4:	1a 2e       	mov	r1, r26
     de6:	aa 1b       	sub	r26, r26
     de8:	bb 1b       	sub	r27, r27
     dea:	fd 01       	movw	r30, r26
     dec:	0d c0       	rjmp	.+26     	; 0xe08 <__udivmodsi4_ep>

00000dee <__udivmodsi4_loop>:
     dee:	aa 1f       	adc	r26, r26
     df0:	bb 1f       	adc	r27, r27
     df2:	ee 1f       	adc	r30, r30
     df4:	ff 1f       	adc	r31, r31
     df6:	a2 17       	cp	r26, r18
     df8:	b3 07       	cpc	r27, r19
     dfa:	e4 07       	cpc	r30, r20
     dfc:	f5 07       	cpc	r31, r21
     dfe:	20 f0       	brcs	.+8      	; 0xe08 <__udivmodsi4_ep>
     e00:	a2 1b       	sub	r26, r18
     e02:	b3 0b       	sbc	r27, r19
     e04:	e4 0b       	sbc	r30, r20
     e06:	f5 0b       	sbc	r31, r21

00000e08 <__udivmodsi4_ep>:
     e08:	66 1f       	adc	r22, r22
     e0a:	77 1f       	adc	r23, r23
     e0c:	88 1f       	adc	r24, r24
     e0e:	99 1f       	adc	r25, r25
     e10:	1a 94       	dec	r1
     e12:	69 f7       	brne	.-38     	; 0xdee <__udivmodsi4_loop>
     e14:	60 95       	com	r22
     e16:	70 95       	com	r23
     e18:	80 95       	com	r24
     e1a:	90 95       	com	r25
     e1c:	9b 01       	movw	r18, r22
     e1e:	ac 01       	movw	r20, r24
     e20:	bd 01       	movw	r22, r26
     e22:	cf 01       	movw	r24, r30
     e24:	08 95       	ret

00000e26 <__tablejump2__>:
     e26:	ee 0f       	add	r30, r30
     e28:	ff 1f       	adc	r31, r31
     e2a:	05 90       	lpm	r0, Z+
     e2c:	f4 91       	lpm	r31, Z
     e2e:	e0 2d       	mov	r30, r0
     e30:	09 94       	ijmp

00000e32 <__subsf3>:
     e32:	50 58       	subi	r21, 0x80	; 128

00000e34 <__addsf3>:
     e34:	bb 27       	eor	r27, r27
     e36:	aa 27       	eor	r26, r26
     e38:	0e 94 31 07 	call	0xe62	; 0xe62 <__addsf3x>
     e3c:	0c 94 1b 09 	jmp	0x1236	; 0x1236 <__fp_round>
     e40:	0e 94 0d 09 	call	0x121a	; 0x121a <__fp_pscA>
     e44:	38 f0       	brcs	.+14     	; 0xe54 <__addsf3+0x20>
     e46:	0e 94 14 09 	call	0x1228	; 0x1228 <__fp_pscB>
     e4a:	20 f0       	brcs	.+8      	; 0xe54 <__addsf3+0x20>
     e4c:	39 f4       	brne	.+14     	; 0xe5c <__addsf3+0x28>
     e4e:	9f 3f       	cpi	r25, 0xFF	; 255
     e50:	19 f4       	brne	.+6      	; 0xe58 <__addsf3+0x24>
     e52:	26 f4       	brtc	.+8      	; 0xe5c <__addsf3+0x28>
     e54:	0c 94 e3 08 	jmp	0x11c6	; 0x11c6 <__fp_nan>
     e58:	0e f4       	brtc	.+2      	; 0xe5c <__addsf3+0x28>
     e5a:	e0 95       	com	r30
     e5c:	e7 fb       	bst	r30, 7
     e5e:	0c 94 dd 08 	jmp	0x11ba	; 0x11ba <__fp_inf>

00000e62 <__addsf3x>:
     e62:	e9 2f       	mov	r30, r25
     e64:	0e 94 2c 09 	call	0x1258	; 0x1258 <__fp_split3>
     e68:	58 f3       	brcs	.-42     	; 0xe40 <__addsf3+0xc>
     e6a:	ba 17       	cp	r27, r26
     e6c:	62 07       	cpc	r22, r18
     e6e:	73 07       	cpc	r23, r19
     e70:	84 07       	cpc	r24, r20
     e72:	95 07       	cpc	r25, r21
     e74:	20 f0       	brcs	.+8      	; 0xe7e <__addsf3x+0x1c>
     e76:	79 f4       	brne	.+30     	; 0xe96 <__addsf3x+0x34>
     e78:	a6 f5       	brtc	.+104    	; 0xee2 <__addsf3x+0x80>
     e7a:	0c 94 4e 09 	jmp	0x129c	; 0x129c <__fp_zero>
     e7e:	0e f4       	brtc	.+2      	; 0xe82 <__addsf3x+0x20>
     e80:	e0 95       	com	r30
     e82:	0b 2e       	mov	r0, r27
     e84:	ba 2f       	mov	r27, r26
     e86:	a0 2d       	mov	r26, r0
     e88:	0b 01       	movw	r0, r22
     e8a:	b9 01       	movw	r22, r18
     e8c:	90 01       	movw	r18, r0
     e8e:	0c 01       	movw	r0, r24
     e90:	ca 01       	movw	r24, r20
     e92:	a0 01       	movw	r20, r0
     e94:	11 24       	eor	r1, r1
     e96:	ff 27       	eor	r31, r31
     e98:	59 1b       	sub	r21, r25
     e9a:	99 f0       	breq	.+38     	; 0xec2 <__addsf3x+0x60>
     e9c:	59 3f       	cpi	r21, 0xF9	; 249
     e9e:	50 f4       	brcc	.+20     	; 0xeb4 <__addsf3x+0x52>
     ea0:	50 3e       	cpi	r21, 0xE0	; 224
     ea2:	68 f1       	brcs	.+90     	; 0xefe <__addsf3x+0x9c>
     ea4:	1a 16       	cp	r1, r26
     ea6:	f0 40       	sbci	r31, 0x00	; 0
     ea8:	a2 2f       	mov	r26, r18
     eaa:	23 2f       	mov	r18, r19
     eac:	34 2f       	mov	r19, r20
     eae:	44 27       	eor	r20, r20
     eb0:	58 5f       	subi	r21, 0xF8	; 248
     eb2:	f3 cf       	rjmp	.-26     	; 0xe9a <__addsf3x+0x38>
     eb4:	46 95       	lsr	r20
     eb6:	37 95       	ror	r19
     eb8:	27 95       	ror	r18
     eba:	a7 95       	ror	r26
     ebc:	f0 40       	sbci	r31, 0x00	; 0
     ebe:	53 95       	inc	r21
     ec0:	c9 f7       	brne	.-14     	; 0xeb4 <__addsf3x+0x52>
     ec2:	7e f4       	brtc	.+30     	; 0xee2 <__addsf3x+0x80>
     ec4:	1f 16       	cp	r1, r31
     ec6:	ba 0b       	sbc	r27, r26
     ec8:	62 0b       	sbc	r22, r18
     eca:	73 0b       	sbc	r23, r19
     ecc:	84 0b       	sbc	r24, r20
     ece:	ba f0       	brmi	.+46     	; 0xefe <__addsf3x+0x9c>
     ed0:	91 50       	subi	r25, 0x01	; 1
     ed2:	a1 f0       	breq	.+40     	; 0xefc <__addsf3x+0x9a>
     ed4:	ff 0f       	add	r31, r31
     ed6:	bb 1f       	adc	r27, r27
     ed8:	66 1f       	adc	r22, r22
     eda:	77 1f       	adc	r23, r23
     edc:	88 1f       	adc	r24, r24
     ede:	c2 f7       	brpl	.-16     	; 0xed0 <__addsf3x+0x6e>
     ee0:	0e c0       	rjmp	.+28     	; 0xefe <__addsf3x+0x9c>
     ee2:	ba 0f       	add	r27, r26
     ee4:	62 1f       	adc	r22, r18
     ee6:	73 1f       	adc	r23, r19
     ee8:	84 1f       	adc	r24, r20
     eea:	48 f4       	brcc	.+18     	; 0xefe <__addsf3x+0x9c>
     eec:	87 95       	ror	r24
     eee:	77 95       	ror	r23
     ef0:	67 95       	ror	r22
     ef2:	b7 95       	ror	r27
     ef4:	f7 95       	ror	r31
     ef6:	9e 3f       	cpi	r25, 0xFE	; 254
     ef8:	08 f0       	brcs	.+2      	; 0xefc <__addsf3x+0x9a>
     efa:	b0 cf       	rjmp	.-160    	; 0xe5c <__addsf3+0x28>
     efc:	93 95       	inc	r25
     efe:	88 0f       	add	r24, r24
     f00:	08 f0       	brcs	.+2      	; 0xf04 <__addsf3x+0xa2>
     f02:	99 27       	eor	r25, r25
     f04:	ee 0f       	add	r30, r30
     f06:	97 95       	ror	r25
     f08:	87 95       	ror	r24
     f0a:	08 95       	ret
     f0c:	0e 94 0d 09 	call	0x121a	; 0x121a <__fp_pscA>
     f10:	60 f0       	brcs	.+24     	; 0xf2a <__addsf3x+0xc8>
     f12:	80 e8       	ldi	r24, 0x80	; 128
     f14:	91 e0       	ldi	r25, 0x01	; 1
     f16:	09 f4       	brne	.+2      	; 0xf1a <__addsf3x+0xb8>
     f18:	9e ef       	ldi	r25, 0xFE	; 254
     f1a:	0e 94 14 09 	call	0x1228	; 0x1228 <__fp_pscB>
     f1e:	28 f0       	brcs	.+10     	; 0xf2a <__addsf3x+0xc8>
     f20:	40 e8       	ldi	r20, 0x80	; 128
     f22:	51 e0       	ldi	r21, 0x01	; 1
     f24:	71 f4       	brne	.+28     	; 0xf42 <atan2+0x10>
     f26:	5e ef       	ldi	r21, 0xFE	; 254
     f28:	0c c0       	rjmp	.+24     	; 0xf42 <atan2+0x10>
     f2a:	0c 94 e3 08 	jmp	0x11c6	; 0x11c6 <__fp_nan>
     f2e:	0c 94 4e 09 	jmp	0x129c	; 0x129c <__fp_zero>

00000f32 <atan2>:
     f32:	e9 2f       	mov	r30, r25
     f34:	e0 78       	andi	r30, 0x80	; 128
     f36:	0e 94 2c 09 	call	0x1258	; 0x1258 <__fp_split3>
     f3a:	40 f3       	brcs	.-48     	; 0xf0c <__addsf3x+0xaa>
     f3c:	09 2e       	mov	r0, r25
     f3e:	05 2a       	or	r0, r21
     f40:	b1 f3       	breq	.-20     	; 0xf2e <__addsf3x+0xcc>
     f42:	26 17       	cp	r18, r22
     f44:	37 07       	cpc	r19, r23
     f46:	48 07       	cpc	r20, r24
     f48:	59 07       	cpc	r21, r25
     f4a:	38 f0       	brcs	.+14     	; 0xf5a <atan2+0x28>
     f4c:	0e 2e       	mov	r0, r30
     f4e:	07 f8       	bld	r0, 7
     f50:	e0 25       	eor	r30, r0
     f52:	69 f0       	breq	.+26     	; 0xf6e <atan2+0x3c>
     f54:	e0 25       	eor	r30, r0
     f56:	e0 64       	ori	r30, 0x40	; 64
     f58:	0a c0       	rjmp	.+20     	; 0xf6e <atan2+0x3c>
     f5a:	ef 63       	ori	r30, 0x3F	; 63
     f5c:	07 f8       	bld	r0, 7
     f5e:	00 94       	com	r0
     f60:	07 fa       	bst	r0, 7
     f62:	db 01       	movw	r26, r22
     f64:	b9 01       	movw	r22, r18
     f66:	9d 01       	movw	r18, r26
     f68:	dc 01       	movw	r26, r24
     f6a:	ca 01       	movw	r24, r20
     f6c:	ad 01       	movw	r20, r26
     f6e:	ef 93       	push	r30
     f70:	0e 94 0f 08 	call	0x101e	; 0x101e <__divsf3_pse>
     f74:	0e 94 1b 09 	call	0x1236	; 0x1236 <__fp_round>
     f78:	0e 94 c9 07 	call	0xf92	; 0xf92 <atan>
     f7c:	5f 91       	pop	r21
     f7e:	55 23       	and	r21, r21
     f80:	39 f0       	breq	.+14     	; 0xf90 <atan2+0x5e>
     f82:	2b ed       	ldi	r18, 0xDB	; 219
     f84:	3f e0       	ldi	r19, 0x0F	; 15
     f86:	49 e4       	ldi	r20, 0x49	; 73
     f88:	50 fd       	sbrc	r21, 0
     f8a:	49 ec       	ldi	r20, 0xC9	; 201
     f8c:	0c 94 1a 07 	jmp	0xe34	; 0xe34 <__addsf3>
     f90:	08 95       	ret

00000f92 <atan>:
     f92:	df 93       	push	r29
     f94:	dd 27       	eor	r29, r29
     f96:	b9 2f       	mov	r27, r25
     f98:	bf 77       	andi	r27, 0x7F	; 127
     f9a:	40 e8       	ldi	r20, 0x80	; 128
     f9c:	5f e3       	ldi	r21, 0x3F	; 63
     f9e:	16 16       	cp	r1, r22
     fa0:	17 06       	cpc	r1, r23
     fa2:	48 07       	cpc	r20, r24
     fa4:	5b 07       	cpc	r21, r27
     fa6:	18 f4       	brcc	.+6      	; 0xfae <atan+0x1c>
     fa8:	d9 2f       	mov	r29, r25
     faa:	0e 94 55 09 	call	0x12aa	; 0x12aa <inverse>
     fae:	9f 93       	push	r25
     fb0:	8f 93       	push	r24
     fb2:	7f 93       	push	r23
     fb4:	6f 93       	push	r22
     fb6:	0e 94 ca 09 	call	0x1394	; 0x1394 <square>
     fba:	e4 e5       	ldi	r30, 0x54	; 84
     fbc:	f0 e0       	ldi	r31, 0x00	; 0
     fbe:	0e 94 e6 08 	call	0x11cc	; 0x11cc <__fp_powser>
     fc2:	0e 94 1b 09 	call	0x1236	; 0x1236 <__fp_round>
     fc6:	2f 91       	pop	r18
     fc8:	3f 91       	pop	r19
     fca:	4f 91       	pop	r20
     fcc:	5f 91       	pop	r21
     fce:	0e 94 70 09 	call	0x12e0	; 0x12e0 <__mulsf3x>
     fd2:	dd 23       	and	r29, r29
     fd4:	51 f0       	breq	.+20     	; 0xfea <atan+0x58>
     fd6:	90 58       	subi	r25, 0x80	; 128
     fd8:	a2 ea       	ldi	r26, 0xA2	; 162
     fda:	2a ed       	ldi	r18, 0xDA	; 218
     fdc:	3f e0       	ldi	r19, 0x0F	; 15
     fde:	49 ec       	ldi	r20, 0xC9	; 201
     fe0:	5f e3       	ldi	r21, 0x3F	; 63
     fe2:	d0 78       	andi	r29, 0x80	; 128
     fe4:	5d 27       	eor	r21, r29
     fe6:	0e 94 31 07 	call	0xe62	; 0xe62 <__addsf3x>
     fea:	df 91       	pop	r29
     fec:	0c 94 1b 09 	jmp	0x1236	; 0x1236 <__fp_round>

00000ff0 <__divsf3>:
     ff0:	0e 94 0c 08 	call	0x1018	; 0x1018 <__divsf3x>
     ff4:	0c 94 1b 09 	jmp	0x1236	; 0x1236 <__fp_round>
     ff8:	0e 94 14 09 	call	0x1228	; 0x1228 <__fp_pscB>
     ffc:	58 f0       	brcs	.+22     	; 0x1014 <__divsf3+0x24>
     ffe:	0e 94 0d 09 	call	0x121a	; 0x121a <__fp_pscA>
    1002:	40 f0       	brcs	.+16     	; 0x1014 <__divsf3+0x24>
    1004:	29 f4       	brne	.+10     	; 0x1010 <__divsf3+0x20>
    1006:	5f 3f       	cpi	r21, 0xFF	; 255
    1008:	29 f0       	breq	.+10     	; 0x1014 <__divsf3+0x24>
    100a:	0c 94 dd 08 	jmp	0x11ba	; 0x11ba <__fp_inf>
    100e:	51 11       	cpse	r21, r1
    1010:	0c 94 4f 09 	jmp	0x129e	; 0x129e <__fp_szero>
    1014:	0c 94 e3 08 	jmp	0x11c6	; 0x11c6 <__fp_nan>

00001018 <__divsf3x>:
    1018:	0e 94 2c 09 	call	0x1258	; 0x1258 <__fp_split3>
    101c:	68 f3       	brcs	.-38     	; 0xff8 <__divsf3+0x8>

0000101e <__divsf3_pse>:
    101e:	99 23       	and	r25, r25
    1020:	b1 f3       	breq	.-20     	; 0x100e <__divsf3+0x1e>
    1022:	55 23       	and	r21, r21
    1024:	91 f3       	breq	.-28     	; 0x100a <__divsf3+0x1a>
    1026:	95 1b       	sub	r25, r21
    1028:	55 0b       	sbc	r21, r21
    102a:	bb 27       	eor	r27, r27
    102c:	aa 27       	eor	r26, r26
    102e:	62 17       	cp	r22, r18
    1030:	73 07       	cpc	r23, r19
    1032:	84 07       	cpc	r24, r20
    1034:	38 f0       	brcs	.+14     	; 0x1044 <__divsf3_pse+0x26>
    1036:	9f 5f       	subi	r25, 0xFF	; 255
    1038:	5f 4f       	sbci	r21, 0xFF	; 255
    103a:	22 0f       	add	r18, r18
    103c:	33 1f       	adc	r19, r19
    103e:	44 1f       	adc	r20, r20
    1040:	aa 1f       	adc	r26, r26
    1042:	a9 f3       	breq	.-22     	; 0x102e <__divsf3_pse+0x10>
    1044:	35 d0       	rcall	.+106    	; 0x10b0 <__divsf3_pse+0x92>
    1046:	0e 2e       	mov	r0, r30
    1048:	3a f0       	brmi	.+14     	; 0x1058 <__divsf3_pse+0x3a>
    104a:	e0 e8       	ldi	r30, 0x80	; 128
    104c:	32 d0       	rcall	.+100    	; 0x10b2 <__divsf3_pse+0x94>
    104e:	91 50       	subi	r25, 0x01	; 1
    1050:	50 40       	sbci	r21, 0x00	; 0
    1052:	e6 95       	lsr	r30
    1054:	00 1c       	adc	r0, r0
    1056:	ca f7       	brpl	.-14     	; 0x104a <__divsf3_pse+0x2c>
    1058:	2b d0       	rcall	.+86     	; 0x10b0 <__divsf3_pse+0x92>
    105a:	fe 2f       	mov	r31, r30
    105c:	29 d0       	rcall	.+82     	; 0x10b0 <__divsf3_pse+0x92>
    105e:	66 0f       	add	r22, r22
    1060:	77 1f       	adc	r23, r23
    1062:	88 1f       	adc	r24, r24
    1064:	bb 1f       	adc	r27, r27
    1066:	26 17       	cp	r18, r22
    1068:	37 07       	cpc	r19, r23
    106a:	48 07       	cpc	r20, r24
    106c:	ab 07       	cpc	r26, r27
    106e:	b0 e8       	ldi	r27, 0x80	; 128
    1070:	09 f0       	breq	.+2      	; 0x1074 <__divsf3_pse+0x56>
    1072:	bb 0b       	sbc	r27, r27
    1074:	80 2d       	mov	r24, r0
    1076:	bf 01       	movw	r22, r30
    1078:	ff 27       	eor	r31, r31
    107a:	93 58       	subi	r25, 0x83	; 131
    107c:	5f 4f       	sbci	r21, 0xFF	; 255
    107e:	3a f0       	brmi	.+14     	; 0x108e <__divsf3_pse+0x70>
    1080:	9e 3f       	cpi	r25, 0xFE	; 254
    1082:	51 05       	cpc	r21, r1
    1084:	78 f0       	brcs	.+30     	; 0x10a4 <__divsf3_pse+0x86>
    1086:	0c 94 dd 08 	jmp	0x11ba	; 0x11ba <__fp_inf>
    108a:	0c 94 4f 09 	jmp	0x129e	; 0x129e <__fp_szero>
    108e:	5f 3f       	cpi	r21, 0xFF	; 255
    1090:	e4 f3       	brlt	.-8      	; 0x108a <__divsf3_pse+0x6c>
    1092:	98 3e       	cpi	r25, 0xE8	; 232
    1094:	d4 f3       	brlt	.-12     	; 0x108a <__divsf3_pse+0x6c>
    1096:	86 95       	lsr	r24
    1098:	77 95       	ror	r23
    109a:	67 95       	ror	r22
    109c:	b7 95       	ror	r27
    109e:	f7 95       	ror	r31
    10a0:	9f 5f       	subi	r25, 0xFF	; 255
    10a2:	c9 f7       	brne	.-14     	; 0x1096 <__divsf3_pse+0x78>
    10a4:	88 0f       	add	r24, r24
    10a6:	91 1d       	adc	r25, r1
    10a8:	96 95       	lsr	r25
    10aa:	87 95       	ror	r24
    10ac:	97 f9       	bld	r25, 7
    10ae:	08 95       	ret
    10b0:	e1 e0       	ldi	r30, 0x01	; 1
    10b2:	66 0f       	add	r22, r22
    10b4:	77 1f       	adc	r23, r23
    10b6:	88 1f       	adc	r24, r24
    10b8:	bb 1f       	adc	r27, r27
    10ba:	62 17       	cp	r22, r18
    10bc:	73 07       	cpc	r23, r19
    10be:	84 07       	cpc	r24, r20
    10c0:	ba 07       	cpc	r27, r26
    10c2:	20 f0       	brcs	.+8      	; 0x10cc <__divsf3_pse+0xae>
    10c4:	62 1b       	sub	r22, r18
    10c6:	73 0b       	sbc	r23, r19
    10c8:	84 0b       	sbc	r24, r20
    10ca:	ba 0b       	sbc	r27, r26
    10cc:	ee 1f       	adc	r30, r30
    10ce:	88 f7       	brcc	.-30     	; 0x10b2 <__divsf3_pse+0x94>
    10d0:	e0 95       	com	r30
    10d2:	08 95       	ret

000010d4 <__fixsfsi>:
    10d4:	0e 94 71 08 	call	0x10e2	; 0x10e2 <__fixunssfsi>
    10d8:	68 94       	set
    10da:	b1 11       	cpse	r27, r1
    10dc:	0c 94 4f 09 	jmp	0x129e	; 0x129e <__fp_szero>
    10e0:	08 95       	ret

000010e2 <__fixunssfsi>:
    10e2:	0e 94 34 09 	call	0x1268	; 0x1268 <__fp_splitA>
    10e6:	88 f0       	brcs	.+34     	; 0x110a <__fixunssfsi+0x28>
    10e8:	9f 57       	subi	r25, 0x7F	; 127
    10ea:	98 f0       	brcs	.+38     	; 0x1112 <__fixunssfsi+0x30>
    10ec:	b9 2f       	mov	r27, r25
    10ee:	99 27       	eor	r25, r25
    10f0:	b7 51       	subi	r27, 0x17	; 23
    10f2:	b0 f0       	brcs	.+44     	; 0x1120 <__fixunssfsi+0x3e>
    10f4:	e1 f0       	breq	.+56     	; 0x112e <__fixunssfsi+0x4c>
    10f6:	66 0f       	add	r22, r22
    10f8:	77 1f       	adc	r23, r23
    10fa:	88 1f       	adc	r24, r24
    10fc:	99 1f       	adc	r25, r25
    10fe:	1a f0       	brmi	.+6      	; 0x1106 <__fixunssfsi+0x24>
    1100:	ba 95       	dec	r27
    1102:	c9 f7       	brne	.-14     	; 0x10f6 <__fixunssfsi+0x14>
    1104:	14 c0       	rjmp	.+40     	; 0x112e <__fixunssfsi+0x4c>
    1106:	b1 30       	cpi	r27, 0x01	; 1
    1108:	91 f0       	breq	.+36     	; 0x112e <__fixunssfsi+0x4c>
    110a:	0e 94 4e 09 	call	0x129c	; 0x129c <__fp_zero>
    110e:	b1 e0       	ldi	r27, 0x01	; 1
    1110:	08 95       	ret
    1112:	0c 94 4e 09 	jmp	0x129c	; 0x129c <__fp_zero>
    1116:	67 2f       	mov	r22, r23
    1118:	78 2f       	mov	r23, r24
    111a:	88 27       	eor	r24, r24
    111c:	b8 5f       	subi	r27, 0xF8	; 248
    111e:	39 f0       	breq	.+14     	; 0x112e <__fixunssfsi+0x4c>
    1120:	b9 3f       	cpi	r27, 0xF9	; 249
    1122:	cc f3       	brlt	.-14     	; 0x1116 <__fixunssfsi+0x34>
    1124:	86 95       	lsr	r24
    1126:	77 95       	ror	r23
    1128:	67 95       	ror	r22
    112a:	b3 95       	inc	r27
    112c:	d9 f7       	brne	.-10     	; 0x1124 <__fixunssfsi+0x42>
    112e:	3e f4       	brtc	.+14     	; 0x113e <__fixunssfsi+0x5c>
    1130:	90 95       	com	r25
    1132:	80 95       	com	r24
    1134:	70 95       	com	r23
    1136:	61 95       	neg	r22
    1138:	7f 4f       	sbci	r23, 0xFF	; 255
    113a:	8f 4f       	sbci	r24, 0xFF	; 255
    113c:	9f 4f       	sbci	r25, 0xFF	; 255
    113e:	08 95       	ret

00001140 <__floatunsisf>:
    1140:	e8 94       	clt
    1142:	09 c0       	rjmp	.+18     	; 0x1156 <__floatsisf+0x12>

00001144 <__floatsisf>:
    1144:	97 fb       	bst	r25, 7
    1146:	3e f4       	brtc	.+14     	; 0x1156 <__floatsisf+0x12>
    1148:	90 95       	com	r25
    114a:	80 95       	com	r24
    114c:	70 95       	com	r23
    114e:	61 95       	neg	r22
    1150:	7f 4f       	sbci	r23, 0xFF	; 255
    1152:	8f 4f       	sbci	r24, 0xFF	; 255
    1154:	9f 4f       	sbci	r25, 0xFF	; 255
    1156:	99 23       	and	r25, r25
    1158:	a9 f0       	breq	.+42     	; 0x1184 <__floatsisf+0x40>
    115a:	f9 2f       	mov	r31, r25
    115c:	96 e9       	ldi	r25, 0x96	; 150
    115e:	bb 27       	eor	r27, r27
    1160:	93 95       	inc	r25
    1162:	f6 95       	lsr	r31
    1164:	87 95       	ror	r24
    1166:	77 95       	ror	r23
    1168:	67 95       	ror	r22
    116a:	b7 95       	ror	r27
    116c:	f1 11       	cpse	r31, r1
    116e:	f8 cf       	rjmp	.-16     	; 0x1160 <__floatsisf+0x1c>
    1170:	fa f4       	brpl	.+62     	; 0x11b0 <__floatsisf+0x6c>
    1172:	bb 0f       	add	r27, r27
    1174:	11 f4       	brne	.+4      	; 0x117a <__floatsisf+0x36>
    1176:	60 ff       	sbrs	r22, 0
    1178:	1b c0       	rjmp	.+54     	; 0x11b0 <__floatsisf+0x6c>
    117a:	6f 5f       	subi	r22, 0xFF	; 255
    117c:	7f 4f       	sbci	r23, 0xFF	; 255
    117e:	8f 4f       	sbci	r24, 0xFF	; 255
    1180:	9f 4f       	sbci	r25, 0xFF	; 255
    1182:	16 c0       	rjmp	.+44     	; 0x11b0 <__floatsisf+0x6c>
    1184:	88 23       	and	r24, r24
    1186:	11 f0       	breq	.+4      	; 0x118c <__floatsisf+0x48>
    1188:	96 e9       	ldi	r25, 0x96	; 150
    118a:	11 c0       	rjmp	.+34     	; 0x11ae <__floatsisf+0x6a>
    118c:	77 23       	and	r23, r23
    118e:	21 f0       	breq	.+8      	; 0x1198 <__floatsisf+0x54>
    1190:	9e e8       	ldi	r25, 0x8E	; 142
    1192:	87 2f       	mov	r24, r23
    1194:	76 2f       	mov	r23, r22
    1196:	05 c0       	rjmp	.+10     	; 0x11a2 <__floatsisf+0x5e>
    1198:	66 23       	and	r22, r22
    119a:	71 f0       	breq	.+28     	; 0x11b8 <__floatsisf+0x74>
    119c:	96 e8       	ldi	r25, 0x86	; 134
    119e:	86 2f       	mov	r24, r22
    11a0:	70 e0       	ldi	r23, 0x00	; 0
    11a2:	60 e0       	ldi	r22, 0x00	; 0
    11a4:	2a f0       	brmi	.+10     	; 0x11b0 <__floatsisf+0x6c>
    11a6:	9a 95       	dec	r25
    11a8:	66 0f       	add	r22, r22
    11aa:	77 1f       	adc	r23, r23
    11ac:	88 1f       	adc	r24, r24
    11ae:	da f7       	brpl	.-10     	; 0x11a6 <__floatsisf+0x62>
    11b0:	88 0f       	add	r24, r24
    11b2:	96 95       	lsr	r25
    11b4:	87 95       	ror	r24
    11b6:	97 f9       	bld	r25, 7
    11b8:	08 95       	ret

000011ba <__fp_inf>:
    11ba:	97 f9       	bld	r25, 7
    11bc:	9f 67       	ori	r25, 0x7F	; 127
    11be:	80 e8       	ldi	r24, 0x80	; 128
    11c0:	70 e0       	ldi	r23, 0x00	; 0
    11c2:	60 e0       	ldi	r22, 0x00	; 0
    11c4:	08 95       	ret

000011c6 <__fp_nan>:
    11c6:	9f ef       	ldi	r25, 0xFF	; 255
    11c8:	80 ec       	ldi	r24, 0xC0	; 192
    11ca:	08 95       	ret

000011cc <__fp_powser>:
    11cc:	df 93       	push	r29
    11ce:	cf 93       	push	r28
    11d0:	1f 93       	push	r17
    11d2:	0f 93       	push	r16
    11d4:	ff 92       	push	r15
    11d6:	ef 92       	push	r14
    11d8:	df 92       	push	r13
    11da:	7b 01       	movw	r14, r22
    11dc:	8c 01       	movw	r16, r24
    11de:	68 94       	set
    11e0:	06 c0       	rjmp	.+12     	; 0x11ee <__fp_powser+0x22>
    11e2:	da 2e       	mov	r13, r26
    11e4:	ef 01       	movw	r28, r30
    11e6:	0e 94 70 09 	call	0x12e0	; 0x12e0 <__mulsf3x>
    11ea:	fe 01       	movw	r30, r28
    11ec:	e8 94       	clt
    11ee:	a5 91       	lpm	r26, Z+
    11f0:	25 91       	lpm	r18, Z+
    11f2:	35 91       	lpm	r19, Z+
    11f4:	45 91       	lpm	r20, Z+
    11f6:	55 91       	lpm	r21, Z+
    11f8:	a6 f3       	brts	.-24     	; 0x11e2 <__fp_powser+0x16>
    11fa:	ef 01       	movw	r28, r30
    11fc:	0e 94 31 07 	call	0xe62	; 0xe62 <__addsf3x>
    1200:	fe 01       	movw	r30, r28
    1202:	97 01       	movw	r18, r14
    1204:	a8 01       	movw	r20, r16
    1206:	da 94       	dec	r13
    1208:	69 f7       	brne	.-38     	; 0x11e4 <__fp_powser+0x18>
    120a:	df 90       	pop	r13
    120c:	ef 90       	pop	r14
    120e:	ff 90       	pop	r15
    1210:	0f 91       	pop	r16
    1212:	1f 91       	pop	r17
    1214:	cf 91       	pop	r28
    1216:	df 91       	pop	r29
    1218:	08 95       	ret

0000121a <__fp_pscA>:
    121a:	00 24       	eor	r0, r0
    121c:	0a 94       	dec	r0
    121e:	16 16       	cp	r1, r22
    1220:	17 06       	cpc	r1, r23
    1222:	18 06       	cpc	r1, r24
    1224:	09 06       	cpc	r0, r25
    1226:	08 95       	ret

00001228 <__fp_pscB>:
    1228:	00 24       	eor	r0, r0
    122a:	0a 94       	dec	r0
    122c:	12 16       	cp	r1, r18
    122e:	13 06       	cpc	r1, r19
    1230:	14 06       	cpc	r1, r20
    1232:	05 06       	cpc	r0, r21
    1234:	08 95       	ret

00001236 <__fp_round>:
    1236:	09 2e       	mov	r0, r25
    1238:	03 94       	inc	r0
    123a:	00 0c       	add	r0, r0
    123c:	11 f4       	brne	.+4      	; 0x1242 <__fp_round+0xc>
    123e:	88 23       	and	r24, r24
    1240:	52 f0       	brmi	.+20     	; 0x1256 <__fp_round+0x20>
    1242:	bb 0f       	add	r27, r27
    1244:	40 f4       	brcc	.+16     	; 0x1256 <__fp_round+0x20>
    1246:	bf 2b       	or	r27, r31
    1248:	11 f4       	brne	.+4      	; 0x124e <__fp_round+0x18>
    124a:	60 ff       	sbrs	r22, 0
    124c:	04 c0       	rjmp	.+8      	; 0x1256 <__fp_round+0x20>
    124e:	6f 5f       	subi	r22, 0xFF	; 255
    1250:	7f 4f       	sbci	r23, 0xFF	; 255
    1252:	8f 4f       	sbci	r24, 0xFF	; 255
    1254:	9f 4f       	sbci	r25, 0xFF	; 255
    1256:	08 95       	ret

00001258 <__fp_split3>:
    1258:	57 fd       	sbrc	r21, 7
    125a:	90 58       	subi	r25, 0x80	; 128
    125c:	44 0f       	add	r20, r20
    125e:	55 1f       	adc	r21, r21
    1260:	59 f0       	breq	.+22     	; 0x1278 <__fp_splitA+0x10>
    1262:	5f 3f       	cpi	r21, 0xFF	; 255
    1264:	71 f0       	breq	.+28     	; 0x1282 <__fp_splitA+0x1a>
    1266:	47 95       	ror	r20

00001268 <__fp_splitA>:
    1268:	88 0f       	add	r24, r24
    126a:	97 fb       	bst	r25, 7
    126c:	99 1f       	adc	r25, r25
    126e:	61 f0       	breq	.+24     	; 0x1288 <__fp_splitA+0x20>
    1270:	9f 3f       	cpi	r25, 0xFF	; 255
    1272:	79 f0       	breq	.+30     	; 0x1292 <__fp_splitA+0x2a>
    1274:	87 95       	ror	r24
    1276:	08 95       	ret
    1278:	12 16       	cp	r1, r18
    127a:	13 06       	cpc	r1, r19
    127c:	14 06       	cpc	r1, r20
    127e:	55 1f       	adc	r21, r21
    1280:	f2 cf       	rjmp	.-28     	; 0x1266 <__fp_split3+0xe>
    1282:	46 95       	lsr	r20
    1284:	f1 df       	rcall	.-30     	; 0x1268 <__fp_splitA>
    1286:	08 c0       	rjmp	.+16     	; 0x1298 <__fp_splitA+0x30>
    1288:	16 16       	cp	r1, r22
    128a:	17 06       	cpc	r1, r23
    128c:	18 06       	cpc	r1, r24
    128e:	99 1f       	adc	r25, r25
    1290:	f1 cf       	rjmp	.-30     	; 0x1274 <__fp_splitA+0xc>
    1292:	86 95       	lsr	r24
    1294:	71 05       	cpc	r23, r1
    1296:	61 05       	cpc	r22, r1
    1298:	08 94       	sec
    129a:	08 95       	ret

0000129c <__fp_zero>:
    129c:	e8 94       	clt

0000129e <__fp_szero>:
    129e:	bb 27       	eor	r27, r27
    12a0:	66 27       	eor	r22, r22
    12a2:	77 27       	eor	r23, r23
    12a4:	cb 01       	movw	r24, r22
    12a6:	97 f9       	bld	r25, 7
    12a8:	08 95       	ret

000012aa <inverse>:
    12aa:	9b 01       	movw	r18, r22
    12ac:	ac 01       	movw	r20, r24
    12ae:	60 e0       	ldi	r22, 0x00	; 0
    12b0:	70 e0       	ldi	r23, 0x00	; 0
    12b2:	80 e8       	ldi	r24, 0x80	; 128
    12b4:	9f e3       	ldi	r25, 0x3F	; 63
    12b6:	0c 94 f8 07 	jmp	0xff0	; 0xff0 <__divsf3>

000012ba <__mulsf3>:
    12ba:	0e 94 70 09 	call	0x12e0	; 0x12e0 <__mulsf3x>
    12be:	0c 94 1b 09 	jmp	0x1236	; 0x1236 <__fp_round>
    12c2:	0e 94 0d 09 	call	0x121a	; 0x121a <__fp_pscA>
    12c6:	38 f0       	brcs	.+14     	; 0x12d6 <__mulsf3+0x1c>
    12c8:	0e 94 14 09 	call	0x1228	; 0x1228 <__fp_pscB>
    12cc:	20 f0       	brcs	.+8      	; 0x12d6 <__mulsf3+0x1c>
    12ce:	95 23       	and	r25, r21
    12d0:	11 f0       	breq	.+4      	; 0x12d6 <__mulsf3+0x1c>
    12d2:	0c 94 dd 08 	jmp	0x11ba	; 0x11ba <__fp_inf>
    12d6:	0c 94 e3 08 	jmp	0x11c6	; 0x11c6 <__fp_nan>
    12da:	11 24       	eor	r1, r1
    12dc:	0c 94 4f 09 	jmp	0x129e	; 0x129e <__fp_szero>

000012e0 <__mulsf3x>:
    12e0:	0e 94 2c 09 	call	0x1258	; 0x1258 <__fp_split3>
    12e4:	70 f3       	brcs	.-36     	; 0x12c2 <__mulsf3+0x8>

000012e6 <__mulsf3_pse>:
    12e6:	95 9f       	mul	r25, r21
    12e8:	c1 f3       	breq	.-16     	; 0x12da <__mulsf3+0x20>
    12ea:	95 0f       	add	r25, r21
    12ec:	50 e0       	ldi	r21, 0x00	; 0
    12ee:	55 1f       	adc	r21, r21
    12f0:	62 9f       	mul	r22, r18
    12f2:	f0 01       	movw	r30, r0
    12f4:	72 9f       	mul	r23, r18
    12f6:	bb 27       	eor	r27, r27
    12f8:	f0 0d       	add	r31, r0
    12fa:	b1 1d       	adc	r27, r1
    12fc:	63 9f       	mul	r22, r19
    12fe:	aa 27       	eor	r26, r26
    1300:	f0 0d       	add	r31, r0
    1302:	b1 1d       	adc	r27, r1
    1304:	aa 1f       	adc	r26, r26
    1306:	64 9f       	mul	r22, r20
    1308:	66 27       	eor	r22, r22
    130a:	b0 0d       	add	r27, r0
    130c:	a1 1d       	adc	r26, r1
    130e:	66 1f       	adc	r22, r22
    1310:	82 9f       	mul	r24, r18
    1312:	22 27       	eor	r18, r18
    1314:	b0 0d       	add	r27, r0
    1316:	a1 1d       	adc	r26, r1
    1318:	62 1f       	adc	r22, r18
    131a:	73 9f       	mul	r23, r19
    131c:	b0 0d       	add	r27, r0
    131e:	a1 1d       	adc	r26, r1
    1320:	62 1f       	adc	r22, r18
    1322:	83 9f       	mul	r24, r19
    1324:	a0 0d       	add	r26, r0
    1326:	61 1d       	adc	r22, r1
    1328:	22 1f       	adc	r18, r18
    132a:	74 9f       	mul	r23, r20
    132c:	33 27       	eor	r19, r19
    132e:	a0 0d       	add	r26, r0
    1330:	61 1d       	adc	r22, r1
    1332:	23 1f       	adc	r18, r19
    1334:	84 9f       	mul	r24, r20
    1336:	60 0d       	add	r22, r0
    1338:	21 1d       	adc	r18, r1
    133a:	82 2f       	mov	r24, r18
    133c:	76 2f       	mov	r23, r22
    133e:	6a 2f       	mov	r22, r26
    1340:	11 24       	eor	r1, r1
    1342:	9f 57       	subi	r25, 0x7F	; 127
    1344:	50 40       	sbci	r21, 0x00	; 0
    1346:	9a f0       	brmi	.+38     	; 0x136e <__mulsf3_pse+0x88>
    1348:	f1 f0       	breq	.+60     	; 0x1386 <__mulsf3_pse+0xa0>
    134a:	88 23       	and	r24, r24
    134c:	4a f0       	brmi	.+18     	; 0x1360 <__mulsf3_pse+0x7a>
    134e:	ee 0f       	add	r30, r30
    1350:	ff 1f       	adc	r31, r31
    1352:	bb 1f       	adc	r27, r27
    1354:	66 1f       	adc	r22, r22
    1356:	77 1f       	adc	r23, r23
    1358:	88 1f       	adc	r24, r24
    135a:	91 50       	subi	r25, 0x01	; 1
    135c:	50 40       	sbci	r21, 0x00	; 0
    135e:	a9 f7       	brne	.-22     	; 0x134a <__mulsf3_pse+0x64>
    1360:	9e 3f       	cpi	r25, 0xFE	; 254
    1362:	51 05       	cpc	r21, r1
    1364:	80 f0       	brcs	.+32     	; 0x1386 <__mulsf3_pse+0xa0>
    1366:	0c 94 dd 08 	jmp	0x11ba	; 0x11ba <__fp_inf>
    136a:	0c 94 4f 09 	jmp	0x129e	; 0x129e <__fp_szero>
    136e:	5f 3f       	cpi	r21, 0xFF	; 255
    1370:	e4 f3       	brlt	.-8      	; 0x136a <__mulsf3_pse+0x84>
    1372:	98 3e       	cpi	r25, 0xE8	; 232
    1374:	d4 f3       	brlt	.-12     	; 0x136a <__mulsf3_pse+0x84>
    1376:	86 95       	lsr	r24
    1378:	77 95       	ror	r23
    137a:	67 95       	ror	r22
    137c:	b7 95       	ror	r27
    137e:	f7 95       	ror	r31
    1380:	e7 95       	ror	r30
    1382:	9f 5f       	subi	r25, 0xFF	; 255
    1384:	c1 f7       	brne	.-16     	; 0x1376 <__mulsf3_pse+0x90>
    1386:	fe 2b       	or	r31, r30
    1388:	88 0f       	add	r24, r24
    138a:	91 1d       	adc	r25, r1
    138c:	96 95       	lsr	r25
    138e:	87 95       	ror	r24
    1390:	97 f9       	bld	r25, 7
    1392:	08 95       	ret

00001394 <square>:
    1394:	9b 01       	movw	r18, r22
    1396:	ac 01       	movw	r20, r24
    1398:	0c 94 5d 09 	jmp	0x12ba	; 0x12ba <__mulsf3>

0000139c <__do_global_dtors>:
    139c:	10 e0       	ldi	r17, 0x00	; 0
    139e:	c5 e4       	ldi	r28, 0x45	; 69
    13a0:	d0 e0       	ldi	r29, 0x00	; 0
    13a2:	04 c0       	rjmp	.+8      	; 0x13ac <__do_global_dtors+0x10>
    13a4:	fe 01       	movw	r30, r28
    13a6:	0e 94 13 07 	call	0xe26	; 0xe26 <__tablejump2__>
    13aa:	21 96       	adiw	r28, 0x01	; 1
    13ac:	c6 34       	cpi	r28, 0x46	; 70
    13ae:	d1 07       	cpc	r29, r17
    13b0:	c9 f7       	brne	.-14     	; 0x13a4 <__do_global_dtors+0x8>
    13b2:	f8 94       	cli

000013b4 <__stop_program>:
    13b4:	ff cf       	rjmp	.-2      	; 0x13b4 <__stop_program>
