
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
      4c:	0c 94 38 06 	jmp	0xc70	; 0xc70 <__vector_19>
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
      82:	ee 03       	fmulsu	r22, r22
      84:	28 04       	cpc	r2, r8
      86:	93 05       	cpc	r25, r3
      88:	a2 06       	cpc	r10, r18

0000008a <__ctors_end>:
      8a:	2d 04       	cpc	r2, r13

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
      9e:	ee e5       	ldi	r30, 0x5E	; 94
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
      ca:	0e 94 e7 06 	call	0xdce	; 0xdce <__tablejump2__>
      ce:	c1 34       	cpi	r28, 0x41	; 65
      d0:	d1 07       	cpc	r29, r17
      d2:	c9 f7       	brne	.-14     	; 0xc6 <__do_global_ctors+0x8>
      d4:	0e 94 10 04 	call	0x820	; 0x820 <main>
      d8:	0c 94 a2 09 	jmp	0x1344	; 0x1344 <__do_global_dtors>

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
      f2:	0c 94 31 04 	jmp	0x862	; 0x862 <_ZN5CGyroC1Ev>

000000f6 <_ZN14CRobotControllD1Ev>:
      f6:	cf 93       	push	r28
      f8:	df 93       	push	r29
      fa:	ec 01       	movw	r28, r24
      fc:	01 96       	adiw	r24, 0x01	; 1
      fe:	0e 94 32 04 	call	0x864	; 0x864 <_ZN5CGyroD1Ev>
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
     118:	0e 94 19 05 	call	0xa32	; 0xa32 <_ZN5CGyro4initEP14CI2C_Interface>
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
     1bc:	0e 94 ed 06 	call	0xdda	; 0xdda <__subsf3>
     1c0:	6f 8b       	std	Y+23, r22	; 0x17
     1c2:	78 8f       	std	Y+24, r23	; 0x18
     1c4:	89 8f       	std	Y+25, r24	; 0x19
     1c6:	9a 8f       	std	Y+26, r25	; 0x1a
     1c8:	2b 85       	ldd	r18, Y+11	; 0x0b
     1ca:	3c 85       	ldd	r19, Y+12	; 0x0c
     1cc:	4d 85       	ldd	r20, Y+13	; 0x0d
     1ce:	5e 85       	ldd	r21, Y+14	; 0x0e
     1d0:	0e 94 31 09 	call	0x1262	; 0x1262 <__mulsf3>
     1d4:	2b 01       	movw	r4, r22
     1d6:	3c 01       	movw	r6, r24
     1d8:	2f 85       	ldd	r18, Y+15	; 0x0f
     1da:	38 89       	ldd	r19, Y+16	; 0x10
     1dc:	49 89       	ldd	r20, Y+17	; 0x11
     1de:	5a 89       	ldd	r21, Y+18	; 0x12
     1e0:	c5 01       	movw	r24, r10
     1e2:	b4 01       	movw	r22, r8
     1e4:	0e 94 31 09 	call	0x1262	; 0x1262 <__mulsf3>
     1e8:	9b 01       	movw	r18, r22
     1ea:	ac 01       	movw	r20, r24
     1ec:	c3 01       	movw	r24, r6
     1ee:	b2 01       	movw	r22, r4
     1f0:	0e 94 ee 06 	call	0xddc	; 0xddc <__addsf3>
     1f4:	4b 01       	movw	r8, r22
     1f6:	5c 01       	movw	r10, r24
     1f8:	2b 89       	ldd	r18, Y+19	; 0x13
     1fa:	3c 89       	ldd	r19, Y+20	; 0x14
     1fc:	4d 89       	ldd	r20, Y+21	; 0x15
     1fe:	5e 89       	ldd	r21, Y+22	; 0x16
     200:	c7 01       	movw	r24, r14
     202:	b6 01       	movw	r22, r12
     204:	0e 94 31 09 	call	0x1262	; 0x1262 <__mulsf3>
     208:	9b 01       	movw	r18, r22
     20a:	ac 01       	movw	r20, r24
     20c:	c5 01       	movw	r24, r10
     20e:	b4 01       	movw	r22, r8
     210:	0e 94 ee 06 	call	0xddc	; 0xddc <__addsf3>
     214:	2b a1       	ldd	r18, Y+35	; 0x23
     216:	3c a1       	ldd	r19, Y+36	; 0x24
     218:	4d a1       	ldd	r20, Y+37	; 0x25
     21a:	5e a1       	ldd	r21, Y+38	; 0x26
     21c:	0e 94 ee 06 	call	0xddc	; 0xddc <__addsf3>
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
     256:	0e 94 33 04 	call	0x866	; 0x866 <_ZN5CGyro4readEv>
     25a:	c5 01       	movw	r24, r10
     25c:	0e 94 8d 05 	call	0xb1a	; 0xb1a <_ZN5CGyro7get_yawEv>
     260:	0e 94 76 08 	call	0x10ec	; 0x10ec <__floatsisf>
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
     27a:	0e 94 3e 08 	call	0x107c	; 0x107c <__fixsfsi>
     27e:	2b 01       	movw	r4, r22
     280:	3c 01       	movw	r6, r24
     282:	c7 01       	movw	r24, r14
     284:	b6 01       	movw	r22, r12
     286:	0e 94 3e 08 	call	0x107c	; 0x107c <__fixsfsi>
     28a:	a2 01       	movw	r20, r4
     28c:	ce 01       	movw	r24, r28
     28e:	0e 94 5f 01 	call	0x2be	; 0x2be <_ZN6CMotor3runEii>
     292:	4a e0       	ldi	r20, 0x0A	; 10
     294:	50 e0       	ldi	r21, 0x00	; 0
     296:	60 e0       	ldi	r22, 0x00	; 0
     298:	70 e0       	ldi	r23, 0x00	; 0
     29a:	89 ee       	ldi	r24, 0xE9	; 233
     29c:	90 e0       	ldi	r25, 0x00	; 0
     29e:	0e 94 04 06 	call	0xc08	; 0xc08 <_ZN6CTimer8delay_msEm>
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

0000070c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>:
     70c:	82 e3       	ldi	r24, 0x32	; 50
     70e:	00 00       	nop
     710:	81 50       	subi	r24, 0x01	; 1
     712:	e9 f7       	brne	.-6      	; 0x70e <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6+0x2>
     714:	08 95       	ret

00000716 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5writeEh>:
     716:	cf 93       	push	r28
     718:	df 93       	push	r29
     71a:	d6 2f       	mov	r29, r22
     71c:	c8 e0       	ldi	r28, 0x08	; 8
     71e:	bf 9a       	sbi	0x17, 7	; 23
     720:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     724:	d7 ff       	sbrs	r29, 7
     726:	02 c0       	rjmp	.+4      	; 0x72c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5writeEh+0x16>
     728:	bd 98       	cbi	0x17, 5	; 23
     72a:	01 c0       	rjmp	.+2      	; 0x72e <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5writeEh+0x18>
     72c:	bd 9a       	sbi	0x17, 5	; 23
     72e:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     732:	bf 98       	cbi	0x17, 7	; 23
     734:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     738:	dd 0f       	add	r29, r29
     73a:	c1 50       	subi	r28, 0x01	; 1
     73c:	81 f7       	brne	.-32     	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5writeEh+0x8>
     73e:	bf 9a       	sbi	0x17, 7	; 23
     740:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     744:	bd 98       	cbi	0x17, 5	; 23
     746:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     74a:	bf 98       	cbi	0x17, 7	; 23
     74c:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     750:	c6 b3       	in	r28, 0x16	; 22
     752:	bf 9a       	sbi	0x17, 7	; 23
     754:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     758:	c5 fb       	bst	r28, 5
     75a:	cc 27       	eor	r28, r28
     75c:	c0 f9       	bld	r28, 0
     75e:	81 e0       	ldi	r24, 0x01	; 1
     760:	8c 27       	eor	r24, r28
     762:	df 91       	pop	r29
     764:	cf 91       	pop	r28
     766:	08 95       	ret

00000768 <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4readEh>:
     768:	1f 93       	push	r17
     76a:	cf 93       	push	r28
     76c:	df 93       	push	r29
     76e:	16 2f       	mov	r17, r22
     770:	bd 98       	cbi	0x17, 5	; 23
     772:	bf 9a       	sbi	0x17, 7	; 23
     774:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     778:	d8 e0       	ldi	r29, 0x08	; 8
     77a:	c0 e0       	ldi	r28, 0x00	; 0
     77c:	cc 0f       	add	r28, r28
     77e:	bf 98       	cbi	0x17, 7	; 23
     780:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     784:	b5 99       	sbic	0x16, 5	; 22
     786:	c1 60       	ori	r28, 0x01	; 1
     788:	bf 9a       	sbi	0x17, 7	; 23
     78a:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     78e:	d1 50       	subi	r29, 0x01	; 1
     790:	a9 f7       	brne	.-22     	; 0x77c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4readEh+0x14>
     792:	11 23       	and	r17, r17
     794:	11 f0       	breq	.+4      	; 0x79a <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4readEh+0x32>
     796:	bd 9a       	sbi	0x17, 5	; 23
     798:	01 c0       	rjmp	.+2      	; 0x79c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4readEh+0x34>
     79a:	bd 98       	cbi	0x17, 5	; 23
     79c:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7a0:	bf 98       	cbi	0x17, 7	; 23
     7a2:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7a6:	bf 9a       	sbi	0x17, 7	; 23
     7a8:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7ac:	bd 98       	cbi	0x17, 5	; 23
     7ae:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>
     7b2:	8c 2f       	mov	r24, r28
     7b4:	df 91       	pop	r29
     7b6:	cf 91       	pop	r28
     7b8:	1f 91       	pop	r17
     7ba:	08 95       	ret

000007bc <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5startEv>:
     7bc:	bf 98       	cbi	0x17, 7	; 23
     7be:	bd 98       	cbi	0x17, 5	; 23
     7c0:	bf 98       	cbi	0x17, 7	; 23
     7c2:	bd 9a       	sbi	0x17, 5	; 23
     7c4:	bf 9a       	sbi	0x17, 7	; 23
     7c6:	bd 98       	cbi	0x17, 5	; 23
     7c8:	0c 94 86 03 	jmp	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>

000007cc <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE4stopEv>:
     7cc:	bf 9a       	sbi	0x17, 7	; 23
     7ce:	bd 9a       	sbi	0x17, 5	; 23
     7d0:	bf 98       	cbi	0x17, 7	; 23
     7d2:	bd 9a       	sbi	0x17, 5	; 23
     7d4:	bf 98       	cbi	0x17, 7	; 23
     7d6:	bd 98       	cbi	0x17, 5	; 23
     7d8:	0c 94 86 03 	jmp	0x70c	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh50ELh1EE5delayEv.isra.6>

000007dc <_GLOBAL__sub_I_i2c>:
     7dc:	84 e6       	ldi	r24, 0x64	; 100
     7de:	90 e0       	ldi	r25, 0x00	; 0
     7e0:	90 93 79 00 	sts	0x0079, r25
     7e4:	80 93 78 00 	sts	0x0078, r24
     7e8:	bd 98       	cbi	0x17, 5	; 23
     7ea:	bf 98       	cbi	0x17, 7	; 23
     7ec:	c5 98       	cbi	0x18, 5	; 24
     7ee:	c7 98       	cbi	0x18, 7	; 24
     7f0:	08 95       	ret

000007f2 <_Z5blinkv>:
     7f2:	80 91 7c 00 	lds	r24, 0x007C
     7f6:	90 91 7d 00 	lds	r25, 0x007D
     7fa:	00 97       	sbiw	r24, 0x00	; 0
     7fc:	19 f0       	breq	.+6      	; 0x804 <_Z5blinkv+0x12>
     7fe:	01 97       	sbiw	r24, 0x01	; 1
     800:	49 f0       	breq	.+18     	; 0x814 <_Z5blinkv+0x22>
     802:	08 95       	ret
     804:	dd 9a       	sbi	0x1b, 5	; 27
     806:	81 e0       	ldi	r24, 0x01	; 1
     808:	90 e0       	ldi	r25, 0x00	; 0
     80a:	90 93 7d 00 	sts	0x007D, r25
     80e:	80 93 7c 00 	sts	0x007C, r24
     812:	08 95       	ret
     814:	dd 98       	cbi	0x1b, 5	; 27
     816:	10 92 7d 00 	sts	0x007D, r1
     81a:	10 92 7c 00 	sts	0x007C, r1
     81e:	08 95       	ret

00000820 <main>:
     820:	bb 98       	cbi	0x17, 3	; 23
     822:	c3 9a       	sbi	0x18, 3	; 24
     824:	20 e0       	ldi	r18, 0x00	; 0
     826:	48 ec       	ldi	r20, 0xC8	; 200
     828:	50 e0       	ldi	r21, 0x00	; 0
     82a:	69 ef       	ldi	r22, 0xF9	; 249
     82c:	73 e0       	ldi	r23, 0x03	; 3
     82e:	89 ee       	ldi	r24, 0xE9	; 233
     830:	90 e0       	ldi	r25, 0x00	; 0
     832:	0e 94 bf 05 	call	0xb7e	; 0xb7e <_ZN6CTimer8add_taskEPFvvEjb>
     836:	8e e7       	ldi	r24, 0x7E	; 126
     838:	90 e0       	ldi	r25, 0x00	; 0
     83a:	0e 94 86 00 	call	0x10c	; 0x10c <_ZN14CRobotControll4initEv>
     83e:	b3 9b       	sbis	0x16, 3	; 22
     840:	02 c0       	rjmp	.+4      	; 0x846 <main+0x26>
     842:	00 00       	nop
     844:	fc cf       	rjmp	.-8      	; 0x83e <main+0x1e>
     846:	8e e7       	ldi	r24, 0x7E	; 126
     848:	90 e0       	ldi	r25, 0x00	; 0
     84a:	0e 94 25 01 	call	0x24a	; 0x24a <_ZN14CRobotControll4mainEv>
     84e:	f7 cf       	rjmp	.-18     	; 0x83e <main+0x1e>

00000850 <_GLOBAL__sub_I_led1>:
     850:	d5 9a       	sbi	0x1a, 5	; 26
     852:	8e e7       	ldi	r24, 0x7E	; 126
     854:	90 e0       	ldi	r25, 0x00	; 0
     856:	0c 94 70 00 	jmp	0xe0	; 0xe0 <_ZN14CRobotControllC1Ev>

0000085a <_GLOBAL__sub_D_led1>:
     85a:	8e e7       	ldi	r24, 0x7E	; 126
     85c:	90 e0       	ldi	r25, 0x00	; 0
     85e:	0c 94 7b 00 	jmp	0xf6	; 0xf6 <_ZN14CRobotControllD1Ev>

00000862 <_ZN5CGyroC1Ev>:
     862:	08 95       	ret

00000864 <_ZN5CGyroD1Ev>:
     864:	08 95       	ret

00000866 <_ZN5CGyro4readEv>:
     866:	cf 92       	push	r12
     868:	df 92       	push	r13
     86a:	ef 92       	push	r14
     86c:	ff 92       	push	r15
     86e:	0f 93       	push	r16
     870:	1f 93       	push	r17
     872:	cf 93       	push	r28
     874:	df 93       	push	r29
     876:	00 d0       	rcall	.+0      	; 0x878 <_ZN5CGyro4readEv+0x12>
     878:	00 d0       	rcall	.+0      	; 0x87a <_ZN5CGyro4readEv+0x14>
     87a:	cd b7       	in	r28, 0x3d	; 61
     87c:	de b7       	in	r29, 0x3e	; 62
     87e:	6c 01       	movw	r12, r24
     880:	dc 01       	movw	r26, r24
     882:	18 96       	adiw	r26, 0x08	; 8
     884:	8d 91       	ld	r24, X+
     886:	9c 91       	ld	r25, X
     888:	19 97       	sbiw	r26, 0x09	; 9
     88a:	dc 01       	movw	r26, r24
     88c:	ed 91       	ld	r30, X+
     88e:	fc 91       	ld	r31, X
     890:	01 90       	ld	r0, Z+
     892:	f0 81       	ld	r31, Z
     894:	e0 2d       	mov	r30, r0
     896:	09 95       	icall
     898:	f6 01       	movw	r30, r12
     89a:	80 85       	ldd	r24, Z+8	; 0x08
     89c:	91 85       	ldd	r25, Z+9	; 0x09
     89e:	dc 01       	movw	r26, r24
     8a0:	ed 91       	ld	r30, X+
     8a2:	fc 91       	ld	r31, X
     8a4:	04 80       	ldd	r0, Z+4	; 0x04
     8a6:	f5 81       	ldd	r31, Z+5	; 0x05
     8a8:	e0 2d       	mov	r30, r0
     8aa:	6c e3       	ldi	r22, 0x3C	; 60
     8ac:	09 95       	icall
     8ae:	f6 01       	movw	r30, r12
     8b0:	80 85       	ldd	r24, Z+8	; 0x08
     8b2:	91 85       	ldd	r25, Z+9	; 0x09
     8b4:	dc 01       	movw	r26, r24
     8b6:	ed 91       	ld	r30, X+
     8b8:	fc 91       	ld	r31, X
     8ba:	04 80       	ldd	r0, Z+4	; 0x04
     8bc:	f5 81       	ldd	r31, Z+5	; 0x05
     8be:	e0 2d       	mov	r30, r0
     8c0:	63 e0       	ldi	r22, 0x03	; 3
     8c2:	09 95       	icall
     8c4:	f6 01       	movw	r30, r12
     8c6:	80 85       	ldd	r24, Z+8	; 0x08
     8c8:	91 85       	ldd	r25, Z+9	; 0x09
     8ca:	dc 01       	movw	r26, r24
     8cc:	ed 91       	ld	r30, X+
     8ce:	fc 91       	ld	r31, X
     8d0:	02 80       	ldd	r0, Z+2	; 0x02
     8d2:	f3 81       	ldd	r31, Z+3	; 0x03
     8d4:	e0 2d       	mov	r30, r0
     8d6:	09 95       	icall
     8d8:	f6 01       	movw	r30, r12
     8da:	80 85       	ldd	r24, Z+8	; 0x08
     8dc:	91 85       	ldd	r25, Z+9	; 0x09
     8de:	dc 01       	movw	r26, r24
     8e0:	ed 91       	ld	r30, X+
     8e2:	fc 91       	ld	r31, X
     8e4:	01 90       	ld	r0, Z+
     8e6:	f0 81       	ld	r31, Z
     8e8:	e0 2d       	mov	r30, r0
     8ea:	09 95       	icall
     8ec:	f6 01       	movw	r30, r12
     8ee:	80 85       	ldd	r24, Z+8	; 0x08
     8f0:	91 85       	ldd	r25, Z+9	; 0x09
     8f2:	dc 01       	movw	r26, r24
     8f4:	ed 91       	ld	r30, X+
     8f6:	fc 91       	ld	r31, X
     8f8:	04 80       	ldd	r0, Z+4	; 0x04
     8fa:	f5 81       	ldd	r31, Z+5	; 0x05
     8fc:	e0 2d       	mov	r30, r0
     8fe:	6d e3       	ldi	r22, 0x3D	; 61
     900:	09 95       	icall
     902:	f6 01       	movw	r30, r12
     904:	80 85       	ldd	r24, Z+8	; 0x08
     906:	91 85       	ldd	r25, Z+9	; 0x09
     908:	dc 01       	movw	r26, r24
     90a:	ed 91       	ld	r30, X+
     90c:	fc 91       	ld	r31, X
     90e:	06 80       	ldd	r0, Z+6	; 0x06
     910:	f7 81       	ldd	r31, Z+7	; 0x07
     912:	e0 2d       	mov	r30, r0
     914:	61 e0       	ldi	r22, 0x01	; 1
     916:	09 95       	icall
     918:	e8 2e       	mov	r14, r24
     91a:	f6 01       	movw	r30, r12
     91c:	80 85       	ldd	r24, Z+8	; 0x08
     91e:	91 85       	ldd	r25, Z+9	; 0x09
     920:	dc 01       	movw	r26, r24
     922:	ed 91       	ld	r30, X+
     924:	fc 91       	ld	r31, X
     926:	06 80       	ldd	r0, Z+6	; 0x06
     928:	f7 81       	ldd	r31, Z+7	; 0x07
     92a:	e0 2d       	mov	r30, r0
     92c:	61 e0       	ldi	r22, 0x01	; 1
     92e:	09 95       	icall
     930:	08 2f       	mov	r16, r24
     932:	f6 01       	movw	r30, r12
     934:	80 85       	ldd	r24, Z+8	; 0x08
     936:	91 85       	ldd	r25, Z+9	; 0x09
     938:	dc 01       	movw	r26, r24
     93a:	ed 91       	ld	r30, X+
     93c:	fc 91       	ld	r31, X
     93e:	06 80       	ldd	r0, Z+6	; 0x06
     940:	f7 81       	ldd	r31, Z+7	; 0x07
     942:	e0 2d       	mov	r30, r0
     944:	61 e0       	ldi	r22, 0x01	; 1
     946:	09 95       	icall
     948:	f6 01       	movw	r30, r12
     94a:	80 85       	ldd	r24, Z+8	; 0x08
     94c:	91 85       	ldd	r25, Z+9	; 0x09
     94e:	dc 01       	movw	r26, r24
     950:	ed 91       	ld	r30, X+
     952:	fc 91       	ld	r31, X
     954:	06 80       	ldd	r0, Z+6	; 0x06
     956:	f7 81       	ldd	r31, Z+7	; 0x07
     958:	e0 2d       	mov	r30, r0
     95a:	61 e0       	ldi	r22, 0x01	; 1
     95c:	09 95       	icall
     95e:	f6 01       	movw	r30, r12
     960:	80 85       	ldd	r24, Z+8	; 0x08
     962:	91 85       	ldd	r25, Z+9	; 0x09
     964:	dc 01       	movw	r26, r24
     966:	ed 91       	ld	r30, X+
     968:	fc 91       	ld	r31, X
     96a:	06 80       	ldd	r0, Z+6	; 0x06
     96c:	f7 81       	ldd	r31, Z+7	; 0x07
     96e:	e0 2d       	mov	r30, r0
     970:	61 e0       	ldi	r22, 0x01	; 1
     972:	09 95       	icall
     974:	f8 2e       	mov	r15, r24
     976:	f6 01       	movw	r30, r12
     978:	80 85       	ldd	r24, Z+8	; 0x08
     97a:	91 85       	ldd	r25, Z+9	; 0x09
     97c:	dc 01       	movw	r26, r24
     97e:	ed 91       	ld	r30, X+
     980:	fc 91       	ld	r31, X
     982:	06 80       	ldd	r0, Z+6	; 0x06
     984:	f7 81       	ldd	r31, Z+7	; 0x07
     986:	e0 2d       	mov	r30, r0
     988:	60 e0       	ldi	r22, 0x00	; 0
     98a:	09 95       	icall
     98c:	18 2f       	mov	r17, r24
     98e:	f6 01       	movw	r30, r12
     990:	80 85       	ldd	r24, Z+8	; 0x08
     992:	91 85       	ldd	r25, Z+9	; 0x09
     994:	dc 01       	movw	r26, r24
     996:	ed 91       	ld	r30, X+
     998:	fc 91       	ld	r31, X
     99a:	02 80       	ldd	r0, Z+2	; 0x02
     99c:	f3 81       	ldd	r31, Z+3	; 0x03
     99e:	e0 2d       	mov	r30, r0
     9a0:	09 95       	icall
     9a2:	60 2f       	mov	r22, r16
     9a4:	70 e0       	ldi	r23, 0x00	; 0
     9a6:	7e 29       	or	r23, r14
     9a8:	07 2e       	mov	r0, r23
     9aa:	00 0c       	add	r0, r0
     9ac:	88 0b       	sbc	r24, r24
     9ae:	99 0b       	sbc	r25, r25
     9b0:	0e 94 76 08 	call	0x10ec	; 0x10ec <__floatsisf>
     9b4:	9b 01       	movw	r18, r22
     9b6:	ac 01       	movw	r20, r24
     9b8:	81 2f       	mov	r24, r17
     9ba:	90 e0       	ldi	r25, 0x00	; 0
     9bc:	9f 29       	or	r25, r15
     9be:	bc 01       	movw	r22, r24
     9c0:	99 0f       	add	r25, r25
     9c2:	88 0b       	sbc	r24, r24
     9c4:	99 0b       	sbc	r25, r25
     9c6:	29 83       	std	Y+1, r18	; 0x01
     9c8:	3a 83       	std	Y+2, r19	; 0x02
     9ca:	4b 83       	std	Y+3, r20	; 0x03
     9cc:	5c 83       	std	Y+4, r21	; 0x04
     9ce:	0e 94 76 08 	call	0x10ec	; 0x10ec <__floatsisf>
     9d2:	29 81       	ldd	r18, Y+1	; 0x01
     9d4:	3a 81       	ldd	r19, Y+2	; 0x02
     9d6:	4b 81       	ldd	r20, Y+3	; 0x03
     9d8:	5c 81       	ldd	r21, Y+4	; 0x04
     9da:	0e 94 6d 07 	call	0xeda	; 0xeda <atan2>
     9de:	20 e0       	ldi	r18, 0x00	; 0
     9e0:	30 e0       	ldi	r19, 0x00	; 0
     9e2:	44 e3       	ldi	r20, 0x34	; 52
     9e4:	53 e4       	ldi	r21, 0x43	; 67
     9e6:	0e 94 31 09 	call	0x1262	; 0x1262 <__mulsf3>
     9ea:	2b ed       	ldi	r18, 0xDB	; 219
     9ec:	3f e0       	ldi	r19, 0x0F	; 15
     9ee:	49 e4       	ldi	r20, 0x49	; 73
     9f0:	50 e4       	ldi	r21, 0x40	; 64
     9f2:	0e 94 cc 07 	call	0xf98	; 0xf98 <__divsf3>
     9f6:	0e 94 3e 08 	call	0x107c	; 0x107c <__fixsfsi>
     9fa:	f6 01       	movw	r30, r12
     9fc:	04 81       	ldd	r16, Z+4	; 0x04
     9fe:	15 81       	ldd	r17, Z+5	; 0x05
     a00:	26 81       	ldd	r18, Z+6	; 0x06
     a02:	37 81       	ldd	r19, Z+7	; 0x07
     a04:	dc 01       	movw	r26, r24
     a06:	cb 01       	movw	r24, r22
     a08:	80 1b       	sub	r24, r16
     a0a:	91 0b       	sbc	r25, r17
     a0c:	a2 0b       	sbc	r26, r18
     a0e:	b3 0b       	sbc	r27, r19
     a10:	80 83       	st	Z, r24
     a12:	91 83       	std	Z+1, r25	; 0x01
     a14:	a2 83       	std	Z+2, r26	; 0x02
     a16:	b3 83       	std	Z+3, r27	; 0x03
     a18:	0f 90       	pop	r0
     a1a:	0f 90       	pop	r0
     a1c:	0f 90       	pop	r0
     a1e:	0f 90       	pop	r0
     a20:	df 91       	pop	r29
     a22:	cf 91       	pop	r28
     a24:	1f 91       	pop	r17
     a26:	0f 91       	pop	r16
     a28:	ff 90       	pop	r15
     a2a:	ef 90       	pop	r14
     a2c:	df 90       	pop	r13
     a2e:	cf 90       	pop	r12
     a30:	08 95       	ret

00000a32 <_ZN5CGyro4initEP14CI2C_Interface>:
     a32:	cf 92       	push	r12
     a34:	df 92       	push	r13
     a36:	ef 92       	push	r14
     a38:	ff 92       	push	r15
     a3a:	0f 93       	push	r16
     a3c:	1f 93       	push	r17
     a3e:	cf 93       	push	r28
     a40:	df 93       	push	r29
     a42:	ec 01       	movw	r28, r24
     a44:	cb 01       	movw	r24, r22
     a46:	79 87       	std	Y+9, r23	; 0x09
     a48:	68 87       	std	Y+8, r22	; 0x08
     a4a:	db 01       	movw	r26, r22
     a4c:	ed 91       	ld	r30, X+
     a4e:	fc 91       	ld	r31, X
     a50:	00 84       	ldd	r0, Z+8	; 0x08
     a52:	f1 85       	ldd	r31, Z+9	; 0x09
     a54:	e0 2d       	mov	r30, r0
     a56:	24 e1       	ldi	r18, 0x14	; 20
     a58:	40 e0       	ldi	r20, 0x00	; 0
     a5a:	6c e3       	ldi	r22, 0x3C	; 60
     a5c:	09 95       	icall
     a5e:	88 85       	ldd	r24, Y+8	; 0x08
     a60:	99 85       	ldd	r25, Y+9	; 0x09
     a62:	dc 01       	movw	r26, r24
     a64:	ed 91       	ld	r30, X+
     a66:	fc 91       	ld	r31, X
     a68:	00 84       	ldd	r0, Z+8	; 0x08
     a6a:	f1 85       	ldd	r31, Z+9	; 0x09
     a6c:	e0 2d       	mov	r30, r0
     a6e:	20 e0       	ldi	r18, 0x00	; 0
     a70:	41 e0       	ldi	r20, 0x01	; 1
     a72:	6c e3       	ldi	r22, 0x3C	; 60
     a74:	09 95       	icall
     a76:	88 85       	ldd	r24, Y+8	; 0x08
     a78:	99 85       	ldd	r25, Y+9	; 0x09
     a7a:	dc 01       	movw	r26, r24
     a7c:	ed 91       	ld	r30, X+
     a7e:	fc 91       	ld	r31, X
     a80:	00 84       	ldd	r0, Z+8	; 0x08
     a82:	f1 85       	ldd	r31, Z+9	; 0x09
     a84:	e0 2d       	mov	r30, r0
     a86:	20 e0       	ldi	r18, 0x00	; 0
     a88:	42 e0       	ldi	r20, 0x02	; 2
     a8a:	6c e3       	ldi	r22, 0x3C	; 60
     a8c:	09 95       	icall
     a8e:	88 85       	ldd	r24, Y+8	; 0x08
     a90:	99 85       	ldd	r25, Y+9	; 0x09
     a92:	dc 01       	movw	r26, r24
     a94:	ed 91       	ld	r30, X+
     a96:	fc 91       	ld	r31, X
     a98:	06 84       	ldd	r0, Z+14	; 0x0e
     a9a:	f7 85       	ldd	r31, Z+15	; 0x0f
     a9c:	e0 2d       	mov	r30, r0
     a9e:	4a e0       	ldi	r20, 0x0A	; 10
     aa0:	6c e3       	ldi	r22, 0x3C	; 60
     aa2:	09 95       	icall
     aa4:	88 34       	cpi	r24, 0x48	; 72
     aa6:	11 f4       	brne	.+4      	; 0xaac <_ZN5CGyro4initEP14CI2C_Interface+0x7a>
     aa8:	de 98       	cbi	0x1b, 6	; 27
     aaa:	01 c0       	rjmp	.+2      	; 0xaae <_ZN5CGyro4initEP14CI2C_Interface+0x7c>
     aac:	de 9a       	sbi	0x1b, 6	; 27
     aae:	18 82       	st	Y, r1
     ab0:	19 82       	std	Y+1, r1	; 0x01
     ab2:	1a 82       	std	Y+2, r1	; 0x02
     ab4:	1b 82       	std	Y+3, r1	; 0x03
     ab6:	1c 82       	std	Y+4, r1	; 0x04
     ab8:	1d 82       	std	Y+5, r1	; 0x05
     aba:	1e 82       	std	Y+6, r1	; 0x06
     abc:	1f 82       	std	Y+7, r1	; 0x07
     abe:	00 e0       	ldi	r16, 0x00	; 0
     ac0:	10 e0       	ldi	r17, 0x00	; 0
     ac2:	c1 2c       	mov	r12, r1
     ac4:	d1 2c       	mov	r13, r1
     ac6:	76 01       	movw	r14, r12
     ac8:	ce 01       	movw	r24, r28
     aca:	0e 94 33 04 	call	0x866	; 0x866 <_ZN5CGyro4readEv>
     ace:	88 81       	ld	r24, Y
     ad0:	99 81       	ldd	r25, Y+1	; 0x01
     ad2:	aa 81       	ldd	r26, Y+2	; 0x02
     ad4:	bb 81       	ldd	r27, Y+3	; 0x03
     ad6:	c8 0e       	add	r12, r24
     ad8:	d9 1e       	adc	r13, r25
     ada:	ea 1e       	adc	r14, r26
     adc:	fb 1e       	adc	r15, r27
     ade:	0f 5f       	subi	r16, 0xFF	; 255
     ae0:	1f 4f       	sbci	r17, 0xFF	; 255
     ae2:	04 36       	cpi	r16, 0x64	; 100
     ae4:	11 05       	cpc	r17, r1
     ae6:	81 f7       	brne	.-32     	; 0xac8 <_ZN5CGyro4initEP14CI2C_Interface+0x96>
     ae8:	c7 01       	movw	r24, r14
     aea:	b6 01       	movw	r22, r12
     aec:	24 e6       	ldi	r18, 0x64	; 100
     aee:	30 e0       	ldi	r19, 0x00	; 0
     af0:	40 e0       	ldi	r20, 0x00	; 0
     af2:	50 e0       	ldi	r21, 0x00	; 0
     af4:	0e 94 a6 06 	call	0xd4c	; 0xd4c <__divmodsi4>
     af8:	2c 83       	std	Y+4, r18	; 0x04
     afa:	3d 83       	std	Y+5, r19	; 0x05
     afc:	4e 83       	std	Y+6, r20	; 0x06
     afe:	5f 83       	std	Y+7, r21	; 0x07
     b00:	18 82       	st	Y, r1
     b02:	19 82       	std	Y+1, r1	; 0x01
     b04:	1a 82       	std	Y+2, r1	; 0x02
     b06:	1b 82       	std	Y+3, r1	; 0x03
     b08:	df 91       	pop	r29
     b0a:	cf 91       	pop	r28
     b0c:	1f 91       	pop	r17
     b0e:	0f 91       	pop	r16
     b10:	ff 90       	pop	r15
     b12:	ef 90       	pop	r14
     b14:	df 90       	pop	r13
     b16:	cf 90       	pop	r12
     b18:	08 95       	ret

00000b1a <_ZN5CGyro7get_yawEv>:
     b1a:	fc 01       	movw	r30, r24
     b1c:	60 81       	ld	r22, Z
     b1e:	71 81       	ldd	r23, Z+1	; 0x01
     b20:	82 81       	ldd	r24, Z+2	; 0x02
     b22:	93 81       	ldd	r25, Z+3	; 0x03
     b24:	08 95       	ret

00000b26 <_GLOBAL__sub_I_error>:
     b26:	d6 9a       	sbi	0x1a, 6	; 26
     b28:	08 95       	ret

00000b2a <_ZN6CTimerC1Ev>:
     b2a:	80 e0       	ldi	r24, 0x00	; 0
     b2c:	90 e0       	ldi	r25, 0x00	; 0
     b2e:	fc 01       	movw	r30, r24
     b30:	23 e0       	ldi	r18, 0x03	; 3
     b32:	ee 0f       	add	r30, r30
     b34:	ff 1f       	adc	r31, r31
     b36:	2a 95       	dec	r18
     b38:	e1 f7       	brne	.-8      	; 0xb32 <_ZN6CTimerC1Ev+0x8>
     b3a:	eb 55       	subi	r30, 0x5B	; 91
     b3c:	ff 4f       	sbci	r31, 0xFF	; 255
     b3e:	11 82       	std	Z+1, r1	; 0x01
     b40:	10 82       	st	Z, r1
     b42:	13 82       	std	Z+3, r1	; 0x03
     b44:	12 82       	std	Z+2, r1	; 0x02
     b46:	15 82       	std	Z+5, r1	; 0x05
     b48:	14 82       	std	Z+4, r1	; 0x04
     b4a:	16 82       	std	Z+6, r1	; 0x06
     b4c:	17 82       	std	Z+7, r1	; 0x07
     b4e:	01 96       	adiw	r24, 0x01	; 1
     b50:	88 30       	cpi	r24, 0x08	; 8
     b52:	91 05       	cpc	r25, r1
     b54:	61 f7       	brne	.-40     	; 0xb2e <_ZN6CTimerC1Ev+0x4>
     b56:	10 92 e5 00 	sts	0x00E5, r1
     b5a:	10 92 e6 00 	sts	0x00E6, r1
     b5e:	10 92 e7 00 	sts	0x00E7, r1
     b62:	10 92 e8 00 	sts	0x00E8, r1
     b66:	83 b7       	in	r24, 0x33	; 51
     b68:	88 60       	ori	r24, 0x08	; 8
     b6a:	83 bf       	out	0x33, r24	; 51
     b6c:	8b e9       	ldi	r24, 0x9B	; 155
     b6e:	8c bf       	out	0x3c, r24	; 60
     b70:	83 e0       	ldi	r24, 0x03	; 3
     b72:	83 bf       	out	0x33, r24	; 51
     b74:	89 b7       	in	r24, 0x39	; 57
     b76:	82 60       	ori	r24, 0x02	; 2
     b78:	89 bf       	out	0x39, r24	; 57
     b7a:	78 94       	sei
     b7c:	08 95       	ret

00000b7e <_ZN6CTimer8add_taskEPFvvEjb>:
     b7e:	80 e0       	ldi	r24, 0x00	; 0
     b80:	90 e0       	ldi	r25, 0x00	; 0
     b82:	ef ef       	ldi	r30, 0xFF	; 255
     b84:	dc 01       	movw	r26, r24
     b86:	33 e0       	ldi	r19, 0x03	; 3
     b88:	aa 0f       	add	r26, r26
     b8a:	bb 1f       	adc	r27, r27
     b8c:	3a 95       	dec	r19
     b8e:	e1 f7       	brne	.-8      	; 0xb88 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
     b90:	ab 55       	subi	r26, 0x5B	; 91
     b92:	bf 4f       	sbci	r27, 0xFF	; 255
     b94:	0d 90       	ld	r0, X+
     b96:	bc 91       	ld	r27, X
     b98:	a0 2d       	mov	r26, r0
     b9a:	ab 2b       	or	r26, r27
     b9c:	09 f4       	brne	.+2      	; 0xba0 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
     b9e:	e8 2f       	mov	r30, r24
     ba0:	01 96       	adiw	r24, 0x01	; 1
     ba2:	88 30       	cpi	r24, 0x08	; 8
     ba4:	91 05       	cpc	r25, r1
     ba6:	71 f7       	brne	.-36     	; 0xb84 <_ZN6CTimer8add_taskEPFvvEjb+0x6>
     ba8:	ef 3f       	cpi	r30, 0xFF	; 255
     baa:	71 f0       	breq	.+28     	; 0xbc8 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
     bac:	88 e0       	ldi	r24, 0x08	; 8
     bae:	e8 02       	muls	r30, r24
     bb0:	f0 01       	movw	r30, r0
     bb2:	11 24       	eor	r1, r1
     bb4:	eb 55       	subi	r30, 0x5B	; 91
     bb6:	ff 4f       	sbci	r31, 0xFF	; 255
     bb8:	71 83       	std	Z+1, r23	; 0x01
     bba:	60 83       	st	Z, r22
     bbc:	53 83       	std	Z+3, r21	; 0x03
     bbe:	42 83       	std	Z+2, r20	; 0x02
     bc0:	55 83       	std	Z+5, r21	; 0x05
     bc2:	44 83       	std	Z+4, r20	; 0x04
     bc4:	16 82       	std	Z+6, r1	; 0x06
     bc6:	27 83       	std	Z+7, r18	; 0x07
     bc8:	08 95       	ret

00000bca <_ZN6CTimer8get_timeEv>:
     bca:	cf 93       	push	r28
     bcc:	df 93       	push	r29
     bce:	00 d0       	rcall	.+0      	; 0xbd0 <_ZN6CTimer8get_timeEv+0x6>
     bd0:	00 d0       	rcall	.+0      	; 0xbd2 <_ZN6CTimer8get_timeEv+0x8>
     bd2:	cd b7       	in	r28, 0x3d	; 61
     bd4:	de b7       	in	r29, 0x3e	; 62
     bd6:	f8 94       	cli
     bd8:	80 91 e5 00 	lds	r24, 0x00E5
     bdc:	90 91 e6 00 	lds	r25, 0x00E6
     be0:	a0 91 e7 00 	lds	r26, 0x00E7
     be4:	b0 91 e8 00 	lds	r27, 0x00E8
     be8:	89 83       	std	Y+1, r24	; 0x01
     bea:	9a 83       	std	Y+2, r25	; 0x02
     bec:	ab 83       	std	Y+3, r26	; 0x03
     bee:	bc 83       	std	Y+4, r27	; 0x04
     bf0:	78 94       	sei
     bf2:	69 81       	ldd	r22, Y+1	; 0x01
     bf4:	7a 81       	ldd	r23, Y+2	; 0x02
     bf6:	8b 81       	ldd	r24, Y+3	; 0x03
     bf8:	9c 81       	ldd	r25, Y+4	; 0x04
     bfa:	0f 90       	pop	r0
     bfc:	0f 90       	pop	r0
     bfe:	0f 90       	pop	r0
     c00:	0f 90       	pop	r0
     c02:	df 91       	pop	r29
     c04:	cf 91       	pop	r28
     c06:	08 95       	ret

00000c08 <_ZN6CTimer8delay_msEm>:
     c08:	cf 92       	push	r12
     c0a:	df 92       	push	r13
     c0c:	ef 92       	push	r14
     c0e:	ff 92       	push	r15
     c10:	0f 93       	push	r16
     c12:	1f 93       	push	r17
     c14:	cf 93       	push	r28
     c16:	df 93       	push	r29
     c18:	00 d0       	rcall	.+0      	; 0xc1a <_ZN6CTimer8delay_msEm+0x12>
     c1a:	00 d0       	rcall	.+0      	; 0xc1c <_ZN6CTimer8delay_msEm+0x14>
     c1c:	cd b7       	in	r28, 0x3d	; 61
     c1e:	de b7       	in	r29, 0x3e	; 62
     c20:	8c 01       	movw	r16, r24
     c22:	6a 01       	movw	r12, r20
     c24:	7b 01       	movw	r14, r22
     c26:	0e 94 e5 05 	call	0xbca	; 0xbca <_ZN6CTimer8get_timeEv>
     c2a:	c6 0e       	add	r12, r22
     c2c:	d7 1e       	adc	r13, r23
     c2e:	e8 1e       	adc	r14, r24
     c30:	f9 1e       	adc	r15, r25
     c32:	c9 82       	std	Y+1, r12	; 0x01
     c34:	da 82       	std	Y+2, r13	; 0x02
     c36:	eb 82       	std	Y+3, r14	; 0x03
     c38:	fc 82       	std	Y+4, r15	; 0x04
     c3a:	c8 01       	movw	r24, r16
     c3c:	0e 94 e5 05 	call	0xbca	; 0xbca <_ZN6CTimer8get_timeEv>
     c40:	c9 80       	ldd	r12, Y+1	; 0x01
     c42:	da 80       	ldd	r13, Y+2	; 0x02
     c44:	eb 80       	ldd	r14, Y+3	; 0x03
     c46:	fc 80       	ldd	r15, Y+4	; 0x04
     c48:	6c 15       	cp	r22, r12
     c4a:	7d 05       	cpc	r23, r13
     c4c:	8e 05       	cpc	r24, r14
     c4e:	9f 05       	cpc	r25, r15
     c50:	10 f4       	brcc	.+4      	; 0xc56 <_ZN6CTimer8delay_msEm+0x4e>
     c52:	00 00       	nop
     c54:	f2 cf       	rjmp	.-28     	; 0xc3a <_ZN6CTimer8delay_msEm+0x32>
     c56:	0f 90       	pop	r0
     c58:	0f 90       	pop	r0
     c5a:	0f 90       	pop	r0
     c5c:	0f 90       	pop	r0
     c5e:	df 91       	pop	r29
     c60:	cf 91       	pop	r28
     c62:	1f 91       	pop	r17
     c64:	0f 91       	pop	r16
     c66:	ff 90       	pop	r15
     c68:	ef 90       	pop	r14
     c6a:	df 90       	pop	r13
     c6c:	cf 90       	pop	r12
     c6e:	08 95       	ret

00000c70 <__vector_19>:
     c70:	1f 92       	push	r1
     c72:	0f 92       	push	r0
     c74:	0f b6       	in	r0, 0x3f	; 63
     c76:	0f 92       	push	r0
     c78:	11 24       	eor	r1, r1
     c7a:	2f 93       	push	r18
     c7c:	3f 93       	push	r19
     c7e:	4f 93       	push	r20
     c80:	5f 93       	push	r21
     c82:	6f 93       	push	r22
     c84:	7f 93       	push	r23
     c86:	8f 93       	push	r24
     c88:	9f 93       	push	r25
     c8a:	af 93       	push	r26
     c8c:	bf 93       	push	r27
     c8e:	cf 93       	push	r28
     c90:	df 93       	push	r29
     c92:	ef 93       	push	r30
     c94:	ff 93       	push	r31
     c96:	c0 e0       	ldi	r28, 0x00	; 0
     c98:	d0 e0       	ldi	r29, 0x00	; 0
     c9a:	ce 01       	movw	r24, r28
     c9c:	23 e0       	ldi	r18, 0x03	; 3
     c9e:	88 0f       	add	r24, r24
     ca0:	99 1f       	adc	r25, r25
     ca2:	2a 95       	dec	r18
     ca4:	e1 f7       	brne	.-8      	; 0xc9e <__vector_19+0x2e>
     ca6:	fc 01       	movw	r30, r24
     ca8:	eb 55       	subi	r30, 0x5B	; 91
     caa:	ff 4f       	sbci	r31, 0xFF	; 255
     cac:	24 81       	ldd	r18, Z+4	; 0x04
     cae:	35 81       	ldd	r19, Z+5	; 0x05
     cb0:	23 2b       	or	r18, r19
     cb2:	31 f0       	breq	.+12     	; 0xcc0 <__vector_19+0x50>
     cb4:	84 81       	ldd	r24, Z+4	; 0x04
     cb6:	95 81       	ldd	r25, Z+5	; 0x05
     cb8:	01 97       	sbiw	r24, 0x01	; 1
     cba:	95 83       	std	Z+5, r25	; 0x05
     cbc:	84 83       	std	Z+4, r24	; 0x04
     cbe:	18 c0       	rjmp	.+48     	; 0xcf0 <__vector_19+0x80>
     cc0:	22 81       	ldd	r18, Z+2	; 0x02
     cc2:	33 81       	ldd	r19, Z+3	; 0x03
     cc4:	35 83       	std	Z+5, r19	; 0x05
     cc6:	24 83       	std	Z+4, r18	; 0x04
     cc8:	26 81       	ldd	r18, Z+6	; 0x06
     cca:	2f 3f       	cpi	r18, 0xFF	; 255
     ccc:	19 f0       	breq	.+6      	; 0xcd4 <__vector_19+0x64>
     cce:	26 81       	ldd	r18, Z+6	; 0x06
     cd0:	2f 5f       	subi	r18, 0xFF	; 255
     cd2:	26 83       	std	Z+6, r18	; 0x06
     cd4:	fc 01       	movw	r30, r24
     cd6:	eb 55       	subi	r30, 0x5B	; 91
     cd8:	ff 4f       	sbci	r31, 0xFF	; 255
     cda:	87 81       	ldd	r24, Z+7	; 0x07
     cdc:	81 11       	cpse	r24, r1
     cde:	08 c0       	rjmp	.+16     	; 0xcf0 <__vector_19+0x80>
     ce0:	80 81       	ld	r24, Z
     ce2:	91 81       	ldd	r25, Z+1	; 0x01
     ce4:	89 2b       	or	r24, r25
     ce6:	21 f0       	breq	.+8      	; 0xcf0 <__vector_19+0x80>
     ce8:	01 90       	ld	r0, Z+
     cea:	f0 81       	ld	r31, Z
     cec:	e0 2d       	mov	r30, r0
     cee:	09 95       	icall
     cf0:	21 96       	adiw	r28, 0x01	; 1
     cf2:	c8 30       	cpi	r28, 0x08	; 8
     cf4:	d1 05       	cpc	r29, r1
     cf6:	89 f6       	brne	.-94     	; 0xc9a <__vector_19+0x2a>
     cf8:	80 91 e5 00 	lds	r24, 0x00E5
     cfc:	90 91 e6 00 	lds	r25, 0x00E6
     d00:	a0 91 e7 00 	lds	r26, 0x00E7
     d04:	b0 91 e8 00 	lds	r27, 0x00E8
     d08:	01 96       	adiw	r24, 0x01	; 1
     d0a:	a1 1d       	adc	r26, r1
     d0c:	b1 1d       	adc	r27, r1
     d0e:	80 93 e5 00 	sts	0x00E5, r24
     d12:	90 93 e6 00 	sts	0x00E6, r25
     d16:	a0 93 e7 00 	sts	0x00E7, r26
     d1a:	b0 93 e8 00 	sts	0x00E8, r27
     d1e:	ff 91       	pop	r31
     d20:	ef 91       	pop	r30
     d22:	df 91       	pop	r29
     d24:	cf 91       	pop	r28
     d26:	bf 91       	pop	r27
     d28:	af 91       	pop	r26
     d2a:	9f 91       	pop	r25
     d2c:	8f 91       	pop	r24
     d2e:	7f 91       	pop	r23
     d30:	6f 91       	pop	r22
     d32:	5f 91       	pop	r21
     d34:	4f 91       	pop	r20
     d36:	3f 91       	pop	r19
     d38:	2f 91       	pop	r18
     d3a:	0f 90       	pop	r0
     d3c:	0f be       	out	0x3f, r0	; 63
     d3e:	0f 90       	pop	r0
     d40:	1f 90       	pop	r1
     d42:	18 95       	reti

00000d44 <_GLOBAL__sub_I_timer>:
     d44:	89 ee       	ldi	r24, 0xE9	; 233
     d46:	90 e0       	ldi	r25, 0x00	; 0
     d48:	0c 94 95 05 	jmp	0xb2a	; 0xb2a <_ZN6CTimerC1Ev>

00000d4c <__divmodsi4>:
     d4c:	05 2e       	mov	r0, r21
     d4e:	97 fb       	bst	r25, 7
     d50:	1e f4       	brtc	.+6      	; 0xd58 <__divmodsi4+0xc>
     d52:	00 94       	com	r0
     d54:	0e 94 bd 06 	call	0xd7a	; 0xd7a <__negsi2>
     d58:	57 fd       	sbrc	r21, 7
     d5a:	07 d0       	rcall	.+14     	; 0xd6a <__divmodsi4_neg2>
     d5c:	0e 94 c5 06 	call	0xd8a	; 0xd8a <__udivmodsi4>
     d60:	07 fc       	sbrc	r0, 7
     d62:	03 d0       	rcall	.+6      	; 0xd6a <__divmodsi4_neg2>
     d64:	4e f4       	brtc	.+18     	; 0xd78 <__divmodsi4_exit>
     d66:	0c 94 bd 06 	jmp	0xd7a	; 0xd7a <__negsi2>

00000d6a <__divmodsi4_neg2>:
     d6a:	50 95       	com	r21
     d6c:	40 95       	com	r20
     d6e:	30 95       	com	r19
     d70:	21 95       	neg	r18
     d72:	3f 4f       	sbci	r19, 0xFF	; 255
     d74:	4f 4f       	sbci	r20, 0xFF	; 255
     d76:	5f 4f       	sbci	r21, 0xFF	; 255

00000d78 <__divmodsi4_exit>:
     d78:	08 95       	ret

00000d7a <__negsi2>:
     d7a:	90 95       	com	r25
     d7c:	80 95       	com	r24
     d7e:	70 95       	com	r23
     d80:	61 95       	neg	r22
     d82:	7f 4f       	sbci	r23, 0xFF	; 255
     d84:	8f 4f       	sbci	r24, 0xFF	; 255
     d86:	9f 4f       	sbci	r25, 0xFF	; 255
     d88:	08 95       	ret

00000d8a <__udivmodsi4>:
     d8a:	a1 e2       	ldi	r26, 0x21	; 33
     d8c:	1a 2e       	mov	r1, r26
     d8e:	aa 1b       	sub	r26, r26
     d90:	bb 1b       	sub	r27, r27
     d92:	fd 01       	movw	r30, r26
     d94:	0d c0       	rjmp	.+26     	; 0xdb0 <__udivmodsi4_ep>

00000d96 <__udivmodsi4_loop>:
     d96:	aa 1f       	adc	r26, r26
     d98:	bb 1f       	adc	r27, r27
     d9a:	ee 1f       	adc	r30, r30
     d9c:	ff 1f       	adc	r31, r31
     d9e:	a2 17       	cp	r26, r18
     da0:	b3 07       	cpc	r27, r19
     da2:	e4 07       	cpc	r30, r20
     da4:	f5 07       	cpc	r31, r21
     da6:	20 f0       	brcs	.+8      	; 0xdb0 <__udivmodsi4_ep>
     da8:	a2 1b       	sub	r26, r18
     daa:	b3 0b       	sbc	r27, r19
     dac:	e4 0b       	sbc	r30, r20
     dae:	f5 0b       	sbc	r31, r21

00000db0 <__udivmodsi4_ep>:
     db0:	66 1f       	adc	r22, r22
     db2:	77 1f       	adc	r23, r23
     db4:	88 1f       	adc	r24, r24
     db6:	99 1f       	adc	r25, r25
     db8:	1a 94       	dec	r1
     dba:	69 f7       	brne	.-38     	; 0xd96 <__udivmodsi4_loop>
     dbc:	60 95       	com	r22
     dbe:	70 95       	com	r23
     dc0:	80 95       	com	r24
     dc2:	90 95       	com	r25
     dc4:	9b 01       	movw	r18, r22
     dc6:	ac 01       	movw	r20, r24
     dc8:	bd 01       	movw	r22, r26
     dca:	cf 01       	movw	r24, r30
     dcc:	08 95       	ret

00000dce <__tablejump2__>:
     dce:	ee 0f       	add	r30, r30
     dd0:	ff 1f       	adc	r31, r31
     dd2:	05 90       	lpm	r0, Z+
     dd4:	f4 91       	lpm	r31, Z
     dd6:	e0 2d       	mov	r30, r0
     dd8:	09 94       	ijmp

00000dda <__subsf3>:
     dda:	50 58       	subi	r21, 0x80	; 128

00000ddc <__addsf3>:
     ddc:	bb 27       	eor	r27, r27
     dde:	aa 27       	eor	r26, r26
     de0:	0e 94 05 07 	call	0xe0a	; 0xe0a <__addsf3x>
     de4:	0c 94 ef 08 	jmp	0x11de	; 0x11de <__fp_round>
     de8:	0e 94 e1 08 	call	0x11c2	; 0x11c2 <__fp_pscA>
     dec:	38 f0       	brcs	.+14     	; 0xdfc <__addsf3+0x20>
     dee:	0e 94 e8 08 	call	0x11d0	; 0x11d0 <__fp_pscB>
     df2:	20 f0       	brcs	.+8      	; 0xdfc <__addsf3+0x20>
     df4:	39 f4       	brne	.+14     	; 0xe04 <__addsf3+0x28>
     df6:	9f 3f       	cpi	r25, 0xFF	; 255
     df8:	19 f4       	brne	.+6      	; 0xe00 <__addsf3+0x24>
     dfa:	26 f4       	brtc	.+8      	; 0xe04 <__addsf3+0x28>
     dfc:	0c 94 b7 08 	jmp	0x116e	; 0x116e <__fp_nan>
     e00:	0e f4       	brtc	.+2      	; 0xe04 <__addsf3+0x28>
     e02:	e0 95       	com	r30
     e04:	e7 fb       	bst	r30, 7
     e06:	0c 94 b1 08 	jmp	0x1162	; 0x1162 <__fp_inf>

00000e0a <__addsf3x>:
     e0a:	e9 2f       	mov	r30, r25
     e0c:	0e 94 00 09 	call	0x1200	; 0x1200 <__fp_split3>
     e10:	58 f3       	brcs	.-42     	; 0xde8 <__addsf3+0xc>
     e12:	ba 17       	cp	r27, r26
     e14:	62 07       	cpc	r22, r18
     e16:	73 07       	cpc	r23, r19
     e18:	84 07       	cpc	r24, r20
     e1a:	95 07       	cpc	r25, r21
     e1c:	20 f0       	brcs	.+8      	; 0xe26 <__addsf3x+0x1c>
     e1e:	79 f4       	brne	.+30     	; 0xe3e <__addsf3x+0x34>
     e20:	a6 f5       	brtc	.+104    	; 0xe8a <__addsf3x+0x80>
     e22:	0c 94 22 09 	jmp	0x1244	; 0x1244 <__fp_zero>
     e26:	0e f4       	brtc	.+2      	; 0xe2a <__addsf3x+0x20>
     e28:	e0 95       	com	r30
     e2a:	0b 2e       	mov	r0, r27
     e2c:	ba 2f       	mov	r27, r26
     e2e:	a0 2d       	mov	r26, r0
     e30:	0b 01       	movw	r0, r22
     e32:	b9 01       	movw	r22, r18
     e34:	90 01       	movw	r18, r0
     e36:	0c 01       	movw	r0, r24
     e38:	ca 01       	movw	r24, r20
     e3a:	a0 01       	movw	r20, r0
     e3c:	11 24       	eor	r1, r1
     e3e:	ff 27       	eor	r31, r31
     e40:	59 1b       	sub	r21, r25
     e42:	99 f0       	breq	.+38     	; 0xe6a <__addsf3x+0x60>
     e44:	59 3f       	cpi	r21, 0xF9	; 249
     e46:	50 f4       	brcc	.+20     	; 0xe5c <__addsf3x+0x52>
     e48:	50 3e       	cpi	r21, 0xE0	; 224
     e4a:	68 f1       	brcs	.+90     	; 0xea6 <__addsf3x+0x9c>
     e4c:	1a 16       	cp	r1, r26
     e4e:	f0 40       	sbci	r31, 0x00	; 0
     e50:	a2 2f       	mov	r26, r18
     e52:	23 2f       	mov	r18, r19
     e54:	34 2f       	mov	r19, r20
     e56:	44 27       	eor	r20, r20
     e58:	58 5f       	subi	r21, 0xF8	; 248
     e5a:	f3 cf       	rjmp	.-26     	; 0xe42 <__addsf3x+0x38>
     e5c:	46 95       	lsr	r20
     e5e:	37 95       	ror	r19
     e60:	27 95       	ror	r18
     e62:	a7 95       	ror	r26
     e64:	f0 40       	sbci	r31, 0x00	; 0
     e66:	53 95       	inc	r21
     e68:	c9 f7       	brne	.-14     	; 0xe5c <__addsf3x+0x52>
     e6a:	7e f4       	brtc	.+30     	; 0xe8a <__addsf3x+0x80>
     e6c:	1f 16       	cp	r1, r31
     e6e:	ba 0b       	sbc	r27, r26
     e70:	62 0b       	sbc	r22, r18
     e72:	73 0b       	sbc	r23, r19
     e74:	84 0b       	sbc	r24, r20
     e76:	ba f0       	brmi	.+46     	; 0xea6 <__addsf3x+0x9c>
     e78:	91 50       	subi	r25, 0x01	; 1
     e7a:	a1 f0       	breq	.+40     	; 0xea4 <__addsf3x+0x9a>
     e7c:	ff 0f       	add	r31, r31
     e7e:	bb 1f       	adc	r27, r27
     e80:	66 1f       	adc	r22, r22
     e82:	77 1f       	adc	r23, r23
     e84:	88 1f       	adc	r24, r24
     e86:	c2 f7       	brpl	.-16     	; 0xe78 <__addsf3x+0x6e>
     e88:	0e c0       	rjmp	.+28     	; 0xea6 <__addsf3x+0x9c>
     e8a:	ba 0f       	add	r27, r26
     e8c:	62 1f       	adc	r22, r18
     e8e:	73 1f       	adc	r23, r19
     e90:	84 1f       	adc	r24, r20
     e92:	48 f4       	brcc	.+18     	; 0xea6 <__addsf3x+0x9c>
     e94:	87 95       	ror	r24
     e96:	77 95       	ror	r23
     e98:	67 95       	ror	r22
     e9a:	b7 95       	ror	r27
     e9c:	f7 95       	ror	r31
     e9e:	9e 3f       	cpi	r25, 0xFE	; 254
     ea0:	08 f0       	brcs	.+2      	; 0xea4 <__addsf3x+0x9a>
     ea2:	b0 cf       	rjmp	.-160    	; 0xe04 <__addsf3+0x28>
     ea4:	93 95       	inc	r25
     ea6:	88 0f       	add	r24, r24
     ea8:	08 f0       	brcs	.+2      	; 0xeac <__addsf3x+0xa2>
     eaa:	99 27       	eor	r25, r25
     eac:	ee 0f       	add	r30, r30
     eae:	97 95       	ror	r25
     eb0:	87 95       	ror	r24
     eb2:	08 95       	ret
     eb4:	0e 94 e1 08 	call	0x11c2	; 0x11c2 <__fp_pscA>
     eb8:	60 f0       	brcs	.+24     	; 0xed2 <__addsf3x+0xc8>
     eba:	80 e8       	ldi	r24, 0x80	; 128
     ebc:	91 e0       	ldi	r25, 0x01	; 1
     ebe:	09 f4       	brne	.+2      	; 0xec2 <__addsf3x+0xb8>
     ec0:	9e ef       	ldi	r25, 0xFE	; 254
     ec2:	0e 94 e8 08 	call	0x11d0	; 0x11d0 <__fp_pscB>
     ec6:	28 f0       	brcs	.+10     	; 0xed2 <__addsf3x+0xc8>
     ec8:	40 e8       	ldi	r20, 0x80	; 128
     eca:	51 e0       	ldi	r21, 0x01	; 1
     ecc:	71 f4       	brne	.+28     	; 0xeea <atan2+0x10>
     ece:	5e ef       	ldi	r21, 0xFE	; 254
     ed0:	0c c0       	rjmp	.+24     	; 0xeea <atan2+0x10>
     ed2:	0c 94 b7 08 	jmp	0x116e	; 0x116e <__fp_nan>
     ed6:	0c 94 22 09 	jmp	0x1244	; 0x1244 <__fp_zero>

00000eda <atan2>:
     eda:	e9 2f       	mov	r30, r25
     edc:	e0 78       	andi	r30, 0x80	; 128
     ede:	0e 94 00 09 	call	0x1200	; 0x1200 <__fp_split3>
     ee2:	40 f3       	brcs	.-48     	; 0xeb4 <__addsf3x+0xaa>
     ee4:	09 2e       	mov	r0, r25
     ee6:	05 2a       	or	r0, r21
     ee8:	b1 f3       	breq	.-20     	; 0xed6 <__addsf3x+0xcc>
     eea:	26 17       	cp	r18, r22
     eec:	37 07       	cpc	r19, r23
     eee:	48 07       	cpc	r20, r24
     ef0:	59 07       	cpc	r21, r25
     ef2:	38 f0       	brcs	.+14     	; 0xf02 <atan2+0x28>
     ef4:	0e 2e       	mov	r0, r30
     ef6:	07 f8       	bld	r0, 7
     ef8:	e0 25       	eor	r30, r0
     efa:	69 f0       	breq	.+26     	; 0xf16 <atan2+0x3c>
     efc:	e0 25       	eor	r30, r0
     efe:	e0 64       	ori	r30, 0x40	; 64
     f00:	0a c0       	rjmp	.+20     	; 0xf16 <atan2+0x3c>
     f02:	ef 63       	ori	r30, 0x3F	; 63
     f04:	07 f8       	bld	r0, 7
     f06:	00 94       	com	r0
     f08:	07 fa       	bst	r0, 7
     f0a:	db 01       	movw	r26, r22
     f0c:	b9 01       	movw	r22, r18
     f0e:	9d 01       	movw	r18, r26
     f10:	dc 01       	movw	r26, r24
     f12:	ca 01       	movw	r24, r20
     f14:	ad 01       	movw	r20, r26
     f16:	ef 93       	push	r30
     f18:	0e 94 e3 07 	call	0xfc6	; 0xfc6 <__divsf3_pse>
     f1c:	0e 94 ef 08 	call	0x11de	; 0x11de <__fp_round>
     f20:	0e 94 9d 07 	call	0xf3a	; 0xf3a <atan>
     f24:	5f 91       	pop	r21
     f26:	55 23       	and	r21, r21
     f28:	39 f0       	breq	.+14     	; 0xf38 <atan2+0x5e>
     f2a:	2b ed       	ldi	r18, 0xDB	; 219
     f2c:	3f e0       	ldi	r19, 0x0F	; 15
     f2e:	49 e4       	ldi	r20, 0x49	; 73
     f30:	50 fd       	sbrc	r21, 0
     f32:	49 ec       	ldi	r20, 0xC9	; 201
     f34:	0c 94 ee 06 	jmp	0xddc	; 0xddc <__addsf3>
     f38:	08 95       	ret

00000f3a <atan>:
     f3a:	df 93       	push	r29
     f3c:	dd 27       	eor	r29, r29
     f3e:	b9 2f       	mov	r27, r25
     f40:	bf 77       	andi	r27, 0x7F	; 127
     f42:	40 e8       	ldi	r20, 0x80	; 128
     f44:	5f e3       	ldi	r21, 0x3F	; 63
     f46:	16 16       	cp	r1, r22
     f48:	17 06       	cpc	r1, r23
     f4a:	48 07       	cpc	r20, r24
     f4c:	5b 07       	cpc	r21, r27
     f4e:	18 f4       	brcc	.+6      	; 0xf56 <atan+0x1c>
     f50:	d9 2f       	mov	r29, r25
     f52:	0e 94 29 09 	call	0x1252	; 0x1252 <inverse>
     f56:	9f 93       	push	r25
     f58:	8f 93       	push	r24
     f5a:	7f 93       	push	r23
     f5c:	6f 93       	push	r22
     f5e:	0e 94 9e 09 	call	0x133c	; 0x133c <square>
     f62:	e4 e5       	ldi	r30, 0x54	; 84
     f64:	f0 e0       	ldi	r31, 0x00	; 0
     f66:	0e 94 ba 08 	call	0x1174	; 0x1174 <__fp_powser>
     f6a:	0e 94 ef 08 	call	0x11de	; 0x11de <__fp_round>
     f6e:	2f 91       	pop	r18
     f70:	3f 91       	pop	r19
     f72:	4f 91       	pop	r20
     f74:	5f 91       	pop	r21
     f76:	0e 94 44 09 	call	0x1288	; 0x1288 <__mulsf3x>
     f7a:	dd 23       	and	r29, r29
     f7c:	51 f0       	breq	.+20     	; 0xf92 <atan+0x58>
     f7e:	90 58       	subi	r25, 0x80	; 128
     f80:	a2 ea       	ldi	r26, 0xA2	; 162
     f82:	2a ed       	ldi	r18, 0xDA	; 218
     f84:	3f e0       	ldi	r19, 0x0F	; 15
     f86:	49 ec       	ldi	r20, 0xC9	; 201
     f88:	5f e3       	ldi	r21, 0x3F	; 63
     f8a:	d0 78       	andi	r29, 0x80	; 128
     f8c:	5d 27       	eor	r21, r29
     f8e:	0e 94 05 07 	call	0xe0a	; 0xe0a <__addsf3x>
     f92:	df 91       	pop	r29
     f94:	0c 94 ef 08 	jmp	0x11de	; 0x11de <__fp_round>

00000f98 <__divsf3>:
     f98:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <__divsf3x>
     f9c:	0c 94 ef 08 	jmp	0x11de	; 0x11de <__fp_round>
     fa0:	0e 94 e8 08 	call	0x11d0	; 0x11d0 <__fp_pscB>
     fa4:	58 f0       	brcs	.+22     	; 0xfbc <__divsf3+0x24>
     fa6:	0e 94 e1 08 	call	0x11c2	; 0x11c2 <__fp_pscA>
     faa:	40 f0       	brcs	.+16     	; 0xfbc <__divsf3+0x24>
     fac:	29 f4       	brne	.+10     	; 0xfb8 <__divsf3+0x20>
     fae:	5f 3f       	cpi	r21, 0xFF	; 255
     fb0:	29 f0       	breq	.+10     	; 0xfbc <__divsf3+0x24>
     fb2:	0c 94 b1 08 	jmp	0x1162	; 0x1162 <__fp_inf>
     fb6:	51 11       	cpse	r21, r1
     fb8:	0c 94 23 09 	jmp	0x1246	; 0x1246 <__fp_szero>
     fbc:	0c 94 b7 08 	jmp	0x116e	; 0x116e <__fp_nan>

00000fc0 <__divsf3x>:
     fc0:	0e 94 00 09 	call	0x1200	; 0x1200 <__fp_split3>
     fc4:	68 f3       	brcs	.-38     	; 0xfa0 <__divsf3+0x8>

00000fc6 <__divsf3_pse>:
     fc6:	99 23       	and	r25, r25
     fc8:	b1 f3       	breq	.-20     	; 0xfb6 <__divsf3+0x1e>
     fca:	55 23       	and	r21, r21
     fcc:	91 f3       	breq	.-28     	; 0xfb2 <__divsf3+0x1a>
     fce:	95 1b       	sub	r25, r21
     fd0:	55 0b       	sbc	r21, r21
     fd2:	bb 27       	eor	r27, r27
     fd4:	aa 27       	eor	r26, r26
     fd6:	62 17       	cp	r22, r18
     fd8:	73 07       	cpc	r23, r19
     fda:	84 07       	cpc	r24, r20
     fdc:	38 f0       	brcs	.+14     	; 0xfec <__divsf3_pse+0x26>
     fde:	9f 5f       	subi	r25, 0xFF	; 255
     fe0:	5f 4f       	sbci	r21, 0xFF	; 255
     fe2:	22 0f       	add	r18, r18
     fe4:	33 1f       	adc	r19, r19
     fe6:	44 1f       	adc	r20, r20
     fe8:	aa 1f       	adc	r26, r26
     fea:	a9 f3       	breq	.-22     	; 0xfd6 <__divsf3_pse+0x10>
     fec:	35 d0       	rcall	.+106    	; 0x1058 <__divsf3_pse+0x92>
     fee:	0e 2e       	mov	r0, r30
     ff0:	3a f0       	brmi	.+14     	; 0x1000 <__divsf3_pse+0x3a>
     ff2:	e0 e8       	ldi	r30, 0x80	; 128
     ff4:	32 d0       	rcall	.+100    	; 0x105a <__divsf3_pse+0x94>
     ff6:	91 50       	subi	r25, 0x01	; 1
     ff8:	50 40       	sbci	r21, 0x00	; 0
     ffa:	e6 95       	lsr	r30
     ffc:	00 1c       	adc	r0, r0
     ffe:	ca f7       	brpl	.-14     	; 0xff2 <__divsf3_pse+0x2c>
    1000:	2b d0       	rcall	.+86     	; 0x1058 <__divsf3_pse+0x92>
    1002:	fe 2f       	mov	r31, r30
    1004:	29 d0       	rcall	.+82     	; 0x1058 <__divsf3_pse+0x92>
    1006:	66 0f       	add	r22, r22
    1008:	77 1f       	adc	r23, r23
    100a:	88 1f       	adc	r24, r24
    100c:	bb 1f       	adc	r27, r27
    100e:	26 17       	cp	r18, r22
    1010:	37 07       	cpc	r19, r23
    1012:	48 07       	cpc	r20, r24
    1014:	ab 07       	cpc	r26, r27
    1016:	b0 e8       	ldi	r27, 0x80	; 128
    1018:	09 f0       	breq	.+2      	; 0x101c <__divsf3_pse+0x56>
    101a:	bb 0b       	sbc	r27, r27
    101c:	80 2d       	mov	r24, r0
    101e:	bf 01       	movw	r22, r30
    1020:	ff 27       	eor	r31, r31
    1022:	93 58       	subi	r25, 0x83	; 131
    1024:	5f 4f       	sbci	r21, 0xFF	; 255
    1026:	3a f0       	brmi	.+14     	; 0x1036 <__divsf3_pse+0x70>
    1028:	9e 3f       	cpi	r25, 0xFE	; 254
    102a:	51 05       	cpc	r21, r1
    102c:	78 f0       	brcs	.+30     	; 0x104c <__divsf3_pse+0x86>
    102e:	0c 94 b1 08 	jmp	0x1162	; 0x1162 <__fp_inf>
    1032:	0c 94 23 09 	jmp	0x1246	; 0x1246 <__fp_szero>
    1036:	5f 3f       	cpi	r21, 0xFF	; 255
    1038:	e4 f3       	brlt	.-8      	; 0x1032 <__divsf3_pse+0x6c>
    103a:	98 3e       	cpi	r25, 0xE8	; 232
    103c:	d4 f3       	brlt	.-12     	; 0x1032 <__divsf3_pse+0x6c>
    103e:	86 95       	lsr	r24
    1040:	77 95       	ror	r23
    1042:	67 95       	ror	r22
    1044:	b7 95       	ror	r27
    1046:	f7 95       	ror	r31
    1048:	9f 5f       	subi	r25, 0xFF	; 255
    104a:	c9 f7       	brne	.-14     	; 0x103e <__divsf3_pse+0x78>
    104c:	88 0f       	add	r24, r24
    104e:	91 1d       	adc	r25, r1
    1050:	96 95       	lsr	r25
    1052:	87 95       	ror	r24
    1054:	97 f9       	bld	r25, 7
    1056:	08 95       	ret
    1058:	e1 e0       	ldi	r30, 0x01	; 1
    105a:	66 0f       	add	r22, r22
    105c:	77 1f       	adc	r23, r23
    105e:	88 1f       	adc	r24, r24
    1060:	bb 1f       	adc	r27, r27
    1062:	62 17       	cp	r22, r18
    1064:	73 07       	cpc	r23, r19
    1066:	84 07       	cpc	r24, r20
    1068:	ba 07       	cpc	r27, r26
    106a:	20 f0       	brcs	.+8      	; 0x1074 <__divsf3_pse+0xae>
    106c:	62 1b       	sub	r22, r18
    106e:	73 0b       	sbc	r23, r19
    1070:	84 0b       	sbc	r24, r20
    1072:	ba 0b       	sbc	r27, r26
    1074:	ee 1f       	adc	r30, r30
    1076:	88 f7       	brcc	.-30     	; 0x105a <__divsf3_pse+0x94>
    1078:	e0 95       	com	r30
    107a:	08 95       	ret

0000107c <__fixsfsi>:
    107c:	0e 94 45 08 	call	0x108a	; 0x108a <__fixunssfsi>
    1080:	68 94       	set
    1082:	b1 11       	cpse	r27, r1
    1084:	0c 94 23 09 	jmp	0x1246	; 0x1246 <__fp_szero>
    1088:	08 95       	ret

0000108a <__fixunssfsi>:
    108a:	0e 94 08 09 	call	0x1210	; 0x1210 <__fp_splitA>
    108e:	88 f0       	brcs	.+34     	; 0x10b2 <__fixunssfsi+0x28>
    1090:	9f 57       	subi	r25, 0x7F	; 127
    1092:	98 f0       	brcs	.+38     	; 0x10ba <__fixunssfsi+0x30>
    1094:	b9 2f       	mov	r27, r25
    1096:	99 27       	eor	r25, r25
    1098:	b7 51       	subi	r27, 0x17	; 23
    109a:	b0 f0       	brcs	.+44     	; 0x10c8 <__fixunssfsi+0x3e>
    109c:	e1 f0       	breq	.+56     	; 0x10d6 <__fixunssfsi+0x4c>
    109e:	66 0f       	add	r22, r22
    10a0:	77 1f       	adc	r23, r23
    10a2:	88 1f       	adc	r24, r24
    10a4:	99 1f       	adc	r25, r25
    10a6:	1a f0       	brmi	.+6      	; 0x10ae <__fixunssfsi+0x24>
    10a8:	ba 95       	dec	r27
    10aa:	c9 f7       	brne	.-14     	; 0x109e <__fixunssfsi+0x14>
    10ac:	14 c0       	rjmp	.+40     	; 0x10d6 <__fixunssfsi+0x4c>
    10ae:	b1 30       	cpi	r27, 0x01	; 1
    10b0:	91 f0       	breq	.+36     	; 0x10d6 <__fixunssfsi+0x4c>
    10b2:	0e 94 22 09 	call	0x1244	; 0x1244 <__fp_zero>
    10b6:	b1 e0       	ldi	r27, 0x01	; 1
    10b8:	08 95       	ret
    10ba:	0c 94 22 09 	jmp	0x1244	; 0x1244 <__fp_zero>
    10be:	67 2f       	mov	r22, r23
    10c0:	78 2f       	mov	r23, r24
    10c2:	88 27       	eor	r24, r24
    10c4:	b8 5f       	subi	r27, 0xF8	; 248
    10c6:	39 f0       	breq	.+14     	; 0x10d6 <__fixunssfsi+0x4c>
    10c8:	b9 3f       	cpi	r27, 0xF9	; 249
    10ca:	cc f3       	brlt	.-14     	; 0x10be <__fixunssfsi+0x34>
    10cc:	86 95       	lsr	r24
    10ce:	77 95       	ror	r23
    10d0:	67 95       	ror	r22
    10d2:	b3 95       	inc	r27
    10d4:	d9 f7       	brne	.-10     	; 0x10cc <__fixunssfsi+0x42>
    10d6:	3e f4       	brtc	.+14     	; 0x10e6 <__fixunssfsi+0x5c>
    10d8:	90 95       	com	r25
    10da:	80 95       	com	r24
    10dc:	70 95       	com	r23
    10de:	61 95       	neg	r22
    10e0:	7f 4f       	sbci	r23, 0xFF	; 255
    10e2:	8f 4f       	sbci	r24, 0xFF	; 255
    10e4:	9f 4f       	sbci	r25, 0xFF	; 255
    10e6:	08 95       	ret

000010e8 <__floatunsisf>:
    10e8:	e8 94       	clt
    10ea:	09 c0       	rjmp	.+18     	; 0x10fe <__floatsisf+0x12>

000010ec <__floatsisf>:
    10ec:	97 fb       	bst	r25, 7
    10ee:	3e f4       	brtc	.+14     	; 0x10fe <__floatsisf+0x12>
    10f0:	90 95       	com	r25
    10f2:	80 95       	com	r24
    10f4:	70 95       	com	r23
    10f6:	61 95       	neg	r22
    10f8:	7f 4f       	sbci	r23, 0xFF	; 255
    10fa:	8f 4f       	sbci	r24, 0xFF	; 255
    10fc:	9f 4f       	sbci	r25, 0xFF	; 255
    10fe:	99 23       	and	r25, r25
    1100:	a9 f0       	breq	.+42     	; 0x112c <__floatsisf+0x40>
    1102:	f9 2f       	mov	r31, r25
    1104:	96 e9       	ldi	r25, 0x96	; 150
    1106:	bb 27       	eor	r27, r27
    1108:	93 95       	inc	r25
    110a:	f6 95       	lsr	r31
    110c:	87 95       	ror	r24
    110e:	77 95       	ror	r23
    1110:	67 95       	ror	r22
    1112:	b7 95       	ror	r27
    1114:	f1 11       	cpse	r31, r1
    1116:	f8 cf       	rjmp	.-16     	; 0x1108 <__floatsisf+0x1c>
    1118:	fa f4       	brpl	.+62     	; 0x1158 <__floatsisf+0x6c>
    111a:	bb 0f       	add	r27, r27
    111c:	11 f4       	brne	.+4      	; 0x1122 <__floatsisf+0x36>
    111e:	60 ff       	sbrs	r22, 0
    1120:	1b c0       	rjmp	.+54     	; 0x1158 <__floatsisf+0x6c>
    1122:	6f 5f       	subi	r22, 0xFF	; 255
    1124:	7f 4f       	sbci	r23, 0xFF	; 255
    1126:	8f 4f       	sbci	r24, 0xFF	; 255
    1128:	9f 4f       	sbci	r25, 0xFF	; 255
    112a:	16 c0       	rjmp	.+44     	; 0x1158 <__floatsisf+0x6c>
    112c:	88 23       	and	r24, r24
    112e:	11 f0       	breq	.+4      	; 0x1134 <__floatsisf+0x48>
    1130:	96 e9       	ldi	r25, 0x96	; 150
    1132:	11 c0       	rjmp	.+34     	; 0x1156 <__floatsisf+0x6a>
    1134:	77 23       	and	r23, r23
    1136:	21 f0       	breq	.+8      	; 0x1140 <__floatsisf+0x54>
    1138:	9e e8       	ldi	r25, 0x8E	; 142
    113a:	87 2f       	mov	r24, r23
    113c:	76 2f       	mov	r23, r22
    113e:	05 c0       	rjmp	.+10     	; 0x114a <__floatsisf+0x5e>
    1140:	66 23       	and	r22, r22
    1142:	71 f0       	breq	.+28     	; 0x1160 <__floatsisf+0x74>
    1144:	96 e8       	ldi	r25, 0x86	; 134
    1146:	86 2f       	mov	r24, r22
    1148:	70 e0       	ldi	r23, 0x00	; 0
    114a:	60 e0       	ldi	r22, 0x00	; 0
    114c:	2a f0       	brmi	.+10     	; 0x1158 <__floatsisf+0x6c>
    114e:	9a 95       	dec	r25
    1150:	66 0f       	add	r22, r22
    1152:	77 1f       	adc	r23, r23
    1154:	88 1f       	adc	r24, r24
    1156:	da f7       	brpl	.-10     	; 0x114e <__floatsisf+0x62>
    1158:	88 0f       	add	r24, r24
    115a:	96 95       	lsr	r25
    115c:	87 95       	ror	r24
    115e:	97 f9       	bld	r25, 7
    1160:	08 95       	ret

00001162 <__fp_inf>:
    1162:	97 f9       	bld	r25, 7
    1164:	9f 67       	ori	r25, 0x7F	; 127
    1166:	80 e8       	ldi	r24, 0x80	; 128
    1168:	70 e0       	ldi	r23, 0x00	; 0
    116a:	60 e0       	ldi	r22, 0x00	; 0
    116c:	08 95       	ret

0000116e <__fp_nan>:
    116e:	9f ef       	ldi	r25, 0xFF	; 255
    1170:	80 ec       	ldi	r24, 0xC0	; 192
    1172:	08 95       	ret

00001174 <__fp_powser>:
    1174:	df 93       	push	r29
    1176:	cf 93       	push	r28
    1178:	1f 93       	push	r17
    117a:	0f 93       	push	r16
    117c:	ff 92       	push	r15
    117e:	ef 92       	push	r14
    1180:	df 92       	push	r13
    1182:	7b 01       	movw	r14, r22
    1184:	8c 01       	movw	r16, r24
    1186:	68 94       	set
    1188:	06 c0       	rjmp	.+12     	; 0x1196 <__fp_powser+0x22>
    118a:	da 2e       	mov	r13, r26
    118c:	ef 01       	movw	r28, r30
    118e:	0e 94 44 09 	call	0x1288	; 0x1288 <__mulsf3x>
    1192:	fe 01       	movw	r30, r28
    1194:	e8 94       	clt
    1196:	a5 91       	lpm	r26, Z+
    1198:	25 91       	lpm	r18, Z+
    119a:	35 91       	lpm	r19, Z+
    119c:	45 91       	lpm	r20, Z+
    119e:	55 91       	lpm	r21, Z+
    11a0:	a6 f3       	brts	.-24     	; 0x118a <__fp_powser+0x16>
    11a2:	ef 01       	movw	r28, r30
    11a4:	0e 94 05 07 	call	0xe0a	; 0xe0a <__addsf3x>
    11a8:	fe 01       	movw	r30, r28
    11aa:	97 01       	movw	r18, r14
    11ac:	a8 01       	movw	r20, r16
    11ae:	da 94       	dec	r13
    11b0:	69 f7       	brne	.-38     	; 0x118c <__fp_powser+0x18>
    11b2:	df 90       	pop	r13
    11b4:	ef 90       	pop	r14
    11b6:	ff 90       	pop	r15
    11b8:	0f 91       	pop	r16
    11ba:	1f 91       	pop	r17
    11bc:	cf 91       	pop	r28
    11be:	df 91       	pop	r29
    11c0:	08 95       	ret

000011c2 <__fp_pscA>:
    11c2:	00 24       	eor	r0, r0
    11c4:	0a 94       	dec	r0
    11c6:	16 16       	cp	r1, r22
    11c8:	17 06       	cpc	r1, r23
    11ca:	18 06       	cpc	r1, r24
    11cc:	09 06       	cpc	r0, r25
    11ce:	08 95       	ret

000011d0 <__fp_pscB>:
    11d0:	00 24       	eor	r0, r0
    11d2:	0a 94       	dec	r0
    11d4:	12 16       	cp	r1, r18
    11d6:	13 06       	cpc	r1, r19
    11d8:	14 06       	cpc	r1, r20
    11da:	05 06       	cpc	r0, r21
    11dc:	08 95       	ret

000011de <__fp_round>:
    11de:	09 2e       	mov	r0, r25
    11e0:	03 94       	inc	r0
    11e2:	00 0c       	add	r0, r0
    11e4:	11 f4       	brne	.+4      	; 0x11ea <__fp_round+0xc>
    11e6:	88 23       	and	r24, r24
    11e8:	52 f0       	brmi	.+20     	; 0x11fe <__fp_round+0x20>
    11ea:	bb 0f       	add	r27, r27
    11ec:	40 f4       	brcc	.+16     	; 0x11fe <__fp_round+0x20>
    11ee:	bf 2b       	or	r27, r31
    11f0:	11 f4       	brne	.+4      	; 0x11f6 <__fp_round+0x18>
    11f2:	60 ff       	sbrs	r22, 0
    11f4:	04 c0       	rjmp	.+8      	; 0x11fe <__fp_round+0x20>
    11f6:	6f 5f       	subi	r22, 0xFF	; 255
    11f8:	7f 4f       	sbci	r23, 0xFF	; 255
    11fa:	8f 4f       	sbci	r24, 0xFF	; 255
    11fc:	9f 4f       	sbci	r25, 0xFF	; 255
    11fe:	08 95       	ret

00001200 <__fp_split3>:
    1200:	57 fd       	sbrc	r21, 7
    1202:	90 58       	subi	r25, 0x80	; 128
    1204:	44 0f       	add	r20, r20
    1206:	55 1f       	adc	r21, r21
    1208:	59 f0       	breq	.+22     	; 0x1220 <__fp_splitA+0x10>
    120a:	5f 3f       	cpi	r21, 0xFF	; 255
    120c:	71 f0       	breq	.+28     	; 0x122a <__fp_splitA+0x1a>
    120e:	47 95       	ror	r20

00001210 <__fp_splitA>:
    1210:	88 0f       	add	r24, r24
    1212:	97 fb       	bst	r25, 7
    1214:	99 1f       	adc	r25, r25
    1216:	61 f0       	breq	.+24     	; 0x1230 <__fp_splitA+0x20>
    1218:	9f 3f       	cpi	r25, 0xFF	; 255
    121a:	79 f0       	breq	.+30     	; 0x123a <__fp_splitA+0x2a>
    121c:	87 95       	ror	r24
    121e:	08 95       	ret
    1220:	12 16       	cp	r1, r18
    1222:	13 06       	cpc	r1, r19
    1224:	14 06       	cpc	r1, r20
    1226:	55 1f       	adc	r21, r21
    1228:	f2 cf       	rjmp	.-28     	; 0x120e <__fp_split3+0xe>
    122a:	46 95       	lsr	r20
    122c:	f1 df       	rcall	.-30     	; 0x1210 <__fp_splitA>
    122e:	08 c0       	rjmp	.+16     	; 0x1240 <__fp_splitA+0x30>
    1230:	16 16       	cp	r1, r22
    1232:	17 06       	cpc	r1, r23
    1234:	18 06       	cpc	r1, r24
    1236:	99 1f       	adc	r25, r25
    1238:	f1 cf       	rjmp	.-30     	; 0x121c <__fp_splitA+0xc>
    123a:	86 95       	lsr	r24
    123c:	71 05       	cpc	r23, r1
    123e:	61 05       	cpc	r22, r1
    1240:	08 94       	sec
    1242:	08 95       	ret

00001244 <__fp_zero>:
    1244:	e8 94       	clt

00001246 <__fp_szero>:
    1246:	bb 27       	eor	r27, r27
    1248:	66 27       	eor	r22, r22
    124a:	77 27       	eor	r23, r23
    124c:	cb 01       	movw	r24, r22
    124e:	97 f9       	bld	r25, 7
    1250:	08 95       	ret

00001252 <inverse>:
    1252:	9b 01       	movw	r18, r22
    1254:	ac 01       	movw	r20, r24
    1256:	60 e0       	ldi	r22, 0x00	; 0
    1258:	70 e0       	ldi	r23, 0x00	; 0
    125a:	80 e8       	ldi	r24, 0x80	; 128
    125c:	9f e3       	ldi	r25, 0x3F	; 63
    125e:	0c 94 cc 07 	jmp	0xf98	; 0xf98 <__divsf3>

00001262 <__mulsf3>:
    1262:	0e 94 44 09 	call	0x1288	; 0x1288 <__mulsf3x>
    1266:	0c 94 ef 08 	jmp	0x11de	; 0x11de <__fp_round>
    126a:	0e 94 e1 08 	call	0x11c2	; 0x11c2 <__fp_pscA>
    126e:	38 f0       	brcs	.+14     	; 0x127e <__mulsf3+0x1c>
    1270:	0e 94 e8 08 	call	0x11d0	; 0x11d0 <__fp_pscB>
    1274:	20 f0       	brcs	.+8      	; 0x127e <__mulsf3+0x1c>
    1276:	95 23       	and	r25, r21
    1278:	11 f0       	breq	.+4      	; 0x127e <__mulsf3+0x1c>
    127a:	0c 94 b1 08 	jmp	0x1162	; 0x1162 <__fp_inf>
    127e:	0c 94 b7 08 	jmp	0x116e	; 0x116e <__fp_nan>
    1282:	11 24       	eor	r1, r1
    1284:	0c 94 23 09 	jmp	0x1246	; 0x1246 <__fp_szero>

00001288 <__mulsf3x>:
    1288:	0e 94 00 09 	call	0x1200	; 0x1200 <__fp_split3>
    128c:	70 f3       	brcs	.-36     	; 0x126a <__mulsf3+0x8>

0000128e <__mulsf3_pse>:
    128e:	95 9f       	mul	r25, r21
    1290:	c1 f3       	breq	.-16     	; 0x1282 <__mulsf3+0x20>
    1292:	95 0f       	add	r25, r21
    1294:	50 e0       	ldi	r21, 0x00	; 0
    1296:	55 1f       	adc	r21, r21
    1298:	62 9f       	mul	r22, r18
    129a:	f0 01       	movw	r30, r0
    129c:	72 9f       	mul	r23, r18
    129e:	bb 27       	eor	r27, r27
    12a0:	f0 0d       	add	r31, r0
    12a2:	b1 1d       	adc	r27, r1
    12a4:	63 9f       	mul	r22, r19
    12a6:	aa 27       	eor	r26, r26
    12a8:	f0 0d       	add	r31, r0
    12aa:	b1 1d       	adc	r27, r1
    12ac:	aa 1f       	adc	r26, r26
    12ae:	64 9f       	mul	r22, r20
    12b0:	66 27       	eor	r22, r22
    12b2:	b0 0d       	add	r27, r0
    12b4:	a1 1d       	adc	r26, r1
    12b6:	66 1f       	adc	r22, r22
    12b8:	82 9f       	mul	r24, r18
    12ba:	22 27       	eor	r18, r18
    12bc:	b0 0d       	add	r27, r0
    12be:	a1 1d       	adc	r26, r1
    12c0:	62 1f       	adc	r22, r18
    12c2:	73 9f       	mul	r23, r19
    12c4:	b0 0d       	add	r27, r0
    12c6:	a1 1d       	adc	r26, r1
    12c8:	62 1f       	adc	r22, r18
    12ca:	83 9f       	mul	r24, r19
    12cc:	a0 0d       	add	r26, r0
    12ce:	61 1d       	adc	r22, r1
    12d0:	22 1f       	adc	r18, r18
    12d2:	74 9f       	mul	r23, r20
    12d4:	33 27       	eor	r19, r19
    12d6:	a0 0d       	add	r26, r0
    12d8:	61 1d       	adc	r22, r1
    12da:	23 1f       	adc	r18, r19
    12dc:	84 9f       	mul	r24, r20
    12de:	60 0d       	add	r22, r0
    12e0:	21 1d       	adc	r18, r1
    12e2:	82 2f       	mov	r24, r18
    12e4:	76 2f       	mov	r23, r22
    12e6:	6a 2f       	mov	r22, r26
    12e8:	11 24       	eor	r1, r1
    12ea:	9f 57       	subi	r25, 0x7F	; 127
    12ec:	50 40       	sbci	r21, 0x00	; 0
    12ee:	9a f0       	brmi	.+38     	; 0x1316 <__mulsf3_pse+0x88>
    12f0:	f1 f0       	breq	.+60     	; 0x132e <__mulsf3_pse+0xa0>
    12f2:	88 23       	and	r24, r24
    12f4:	4a f0       	brmi	.+18     	; 0x1308 <__mulsf3_pse+0x7a>
    12f6:	ee 0f       	add	r30, r30
    12f8:	ff 1f       	adc	r31, r31
    12fa:	bb 1f       	adc	r27, r27
    12fc:	66 1f       	adc	r22, r22
    12fe:	77 1f       	adc	r23, r23
    1300:	88 1f       	adc	r24, r24
    1302:	91 50       	subi	r25, 0x01	; 1
    1304:	50 40       	sbci	r21, 0x00	; 0
    1306:	a9 f7       	brne	.-22     	; 0x12f2 <__mulsf3_pse+0x64>
    1308:	9e 3f       	cpi	r25, 0xFE	; 254
    130a:	51 05       	cpc	r21, r1
    130c:	80 f0       	brcs	.+32     	; 0x132e <__mulsf3_pse+0xa0>
    130e:	0c 94 b1 08 	jmp	0x1162	; 0x1162 <__fp_inf>
    1312:	0c 94 23 09 	jmp	0x1246	; 0x1246 <__fp_szero>
    1316:	5f 3f       	cpi	r21, 0xFF	; 255
    1318:	e4 f3       	brlt	.-8      	; 0x1312 <__mulsf3_pse+0x84>
    131a:	98 3e       	cpi	r25, 0xE8	; 232
    131c:	d4 f3       	brlt	.-12     	; 0x1312 <__mulsf3_pse+0x84>
    131e:	86 95       	lsr	r24
    1320:	77 95       	ror	r23
    1322:	67 95       	ror	r22
    1324:	b7 95       	ror	r27
    1326:	f7 95       	ror	r31
    1328:	e7 95       	ror	r30
    132a:	9f 5f       	subi	r25, 0xFF	; 255
    132c:	c1 f7       	brne	.-16     	; 0x131e <__mulsf3_pse+0x90>
    132e:	fe 2b       	or	r31, r30
    1330:	88 0f       	add	r24, r24
    1332:	91 1d       	adc	r25, r1
    1334:	96 95       	lsr	r25
    1336:	87 95       	ror	r24
    1338:	97 f9       	bld	r25, 7
    133a:	08 95       	ret

0000133c <square>:
    133c:	9b 01       	movw	r18, r22
    133e:	ac 01       	movw	r20, r24
    1340:	0c 94 31 09 	jmp	0x1262	; 0x1262 <__mulsf3>

00001344 <__do_global_dtors>:
    1344:	10 e0       	ldi	r17, 0x00	; 0
    1346:	c5 e4       	ldi	r28, 0x45	; 69
    1348:	d0 e0       	ldi	r29, 0x00	; 0
    134a:	04 c0       	rjmp	.+8      	; 0x1354 <__do_global_dtors+0x10>
    134c:	fe 01       	movw	r30, r28
    134e:	0e 94 e7 06 	call	0xdce	; 0xdce <__tablejump2__>
    1352:	21 96       	adiw	r28, 0x01	; 1
    1354:	c6 34       	cpi	r28, 0x46	; 70
    1356:	d1 07       	cpc	r29, r17
    1358:	c9 f7       	brne	.-14     	; 0x134c <__do_global_dtors+0x8>
    135a:	f8 94       	cli

0000135c <__stop_program>:
    135c:	ff cf       	rjmp	.-2      	; 0x135c <__stop_program>
