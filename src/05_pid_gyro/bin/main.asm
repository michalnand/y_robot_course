
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
      4c:	0c 94 e5 05 	jmp	0xbca	; 0xbca <__vector_19>
      50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
      54:	34 05       	cpc	r19, r4
      56:	26 06       	cpc	r2, r22
      58:	9b 08       	sbc	r9, r11

0000005a <__ctors_end>:
      5a:	38 05       	cpc	r19, r8

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
      6e:	ea ee       	ldi	r30, 0xEA	; 234
      70:	f7 e1       	ldi	r31, 0x17	; 23
      72:	02 c0       	rjmp	.+4      	; 0x78 <__do_copy_data+0x10>
      74:	05 90       	lpm	r0, Z+
      76:	0d 92       	st	X+, r0
      78:	ac 3a       	cpi	r26, 0xAC	; 172
      7a:	b1 07       	cpc	r27, r17
      7c:	d9 f7       	brne	.-10     	; 0x74 <__do_copy_data+0xc>

0000007e <__do_clear_bss>:
      7e:	20 e0       	ldi	r18, 0x00	; 0
      80:	ac ea       	ldi	r26, 0xAC	; 172
      82:	b0 e0       	ldi	r27, 0x00	; 0
      84:	01 c0       	rjmp	.+2      	; 0x88 <.do_clear_bss_start>

00000086 <.do_clear_bss_loop>:
      86:	1d 92       	st	X+, r1

00000088 <.do_clear_bss_start>:
      88:	a2 3f       	cpi	r26, 0xF2	; 242
      8a:	b2 07       	cpc	r27, r18
      8c:	e1 f7       	brne	.-8      	; 0x86 <.do_clear_bss_loop>

0000008e <__do_global_ctors>:
      8e:	10 e0       	ldi	r17, 0x00	; 0
      90:	cd e2       	ldi	r28, 0x2D	; 45
      92:	d0 e0       	ldi	r29, 0x00	; 0
      94:	04 c0       	rjmp	.+8      	; 0x9e <__do_global_ctors+0x10>
      96:	21 97       	sbiw	r28, 0x01	; 1
      98:	fe 01       	movw	r30, r28
      9a:	0e 94 f5 08 	call	0x11ea	; 0x11ea <__tablejump2__>
      9e:	ca 32       	cpi	r28, 0x2A	; 42
      a0:	d1 07       	cpc	r29, r17
      a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
      a4:	0e 94 09 02 	call	0x412	; 0x412 <main>
      a8:	0c 94 e8 0b 	jmp	0x17d0	; 0x17d0 <__do_global_dtors>

000000ac <__bad_interrupt>:
      ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN3PIDC1Ev>:
      b0:	fc 01       	movw	r30, r24
      b2:	10 82       	st	Z, r1
      b4:	11 82       	std	Z+1, r1	; 0x01
      b6:	12 82       	std	Z+2, r1	; 0x02
      b8:	13 82       	std	Z+3, r1	; 0x03
      ba:	14 82       	std	Z+4, r1	; 0x04
      bc:	15 82       	std	Z+5, r1	; 0x05
      be:	16 82       	std	Z+6, r1	; 0x06
      c0:	17 82       	std	Z+7, r1	; 0x07
      c2:	10 86       	std	Z+8, r1	; 0x08
      c4:	11 86       	std	Z+9, r1	; 0x09
      c6:	12 86       	std	Z+10, r1	; 0x0a
      c8:	13 86       	std	Z+11, r1	; 0x0b
      ca:	14 86       	std	Z+12, r1	; 0x0c
      cc:	15 86       	std	Z+13, r1	; 0x0d
      ce:	16 86       	std	Z+14, r1	; 0x0e
      d0:	17 86       	std	Z+15, r1	; 0x0f
      d2:	10 8a       	std	Z+16, r1	; 0x10
      d4:	11 8a       	std	Z+17, r1	; 0x11
      d6:	12 8a       	std	Z+18, r1	; 0x12
      d8:	13 8a       	std	Z+19, r1	; 0x13
      da:	14 8a       	std	Z+20, r1	; 0x14
      dc:	15 8a       	std	Z+21, r1	; 0x15
      de:	16 8a       	std	Z+22, r1	; 0x16
      e0:	17 8a       	std	Z+23, r1	; 0x17
      e2:	80 e0       	ldi	r24, 0x00	; 0
      e4:	90 e0       	ldi	r25, 0x00	; 0
      e6:	a0 e0       	ldi	r26, 0x00	; 0
      e8:	b0 e8       	ldi	r27, 0x80	; 128
      ea:	80 8f       	std	Z+24, r24	; 0x18
      ec:	91 8f       	std	Z+25, r25	; 0x19
      ee:	a2 8f       	std	Z+26, r26	; 0x1a
      f0:	b3 8f       	std	Z+27, r27	; 0x1b
      f2:	14 8e       	std	Z+28, r1	; 0x1c
      f4:	15 8e       	std	Z+29, r1	; 0x1d
      f6:	16 8e       	std	Z+30, r1	; 0x1e
      f8:	17 8e       	std	Z+31, r1	; 0x1f
      fa:	08 95       	ret

000000fc <_ZN3PIDD1Ev>:
      fc:	08 95       	ret

000000fe <_ZN3PID4initEffff>:
      fe:	2f 92       	push	r2
     100:	3f 92       	push	r3
     102:	4f 92       	push	r4
     104:	5f 92       	push	r5
     106:	6f 92       	push	r6
     108:	7f 92       	push	r7
     10a:	8f 92       	push	r8
     10c:	9f 92       	push	r9
     10e:	af 92       	push	r10
     110:	bf 92       	push	r11
     112:	cf 92       	push	r12
     114:	df 92       	push	r13
     116:	ef 92       	push	r14
     118:	ff 92       	push	r15
     11a:	0f 93       	push	r16
     11c:	1f 93       	push	r17
     11e:	cf 93       	push	r28
     120:	df 93       	push	r29
     122:	cd b7       	in	r28, 0x3d	; 61
     124:	de b7       	in	r29, 0x3e	; 62
     126:	3c 01       	movw	r6, r24
     128:	1a 01       	movw	r2, r20
     12a:	2b 01       	movw	r4, r22
     12c:	fc 01       	movw	r30, r24
     12e:	10 82       	st	Z, r1
     130:	11 82       	std	Z+1, r1	; 0x01
     132:	12 82       	std	Z+2, r1	; 0x02
     134:	13 82       	std	Z+3, r1	; 0x03
     136:	84 82       	std	Z+4, r8	; 0x04
     138:	95 82       	std	Z+5, r9	; 0x05
     13a:	a6 82       	std	Z+6, r10	; 0x06
     13c:	b7 82       	std	Z+7, r11	; 0x07
     13e:	10 86       	std	Z+8, r1	; 0x08
     140:	11 86       	std	Z+9, r1	; 0x09
     142:	12 86       	std	Z+10, r1	; 0x0a
     144:	13 86       	std	Z+11, r1	; 0x0b
     146:	14 86       	std	Z+12, r1	; 0x0c
     148:	15 86       	std	Z+13, r1	; 0x0d
     14a:	16 86       	std	Z+14, r1	; 0x0e
     14c:	17 86       	std	Z+15, r1	; 0x0f
     14e:	10 8a       	std	Z+16, r1	; 0x10
     150:	11 8a       	std	Z+17, r1	; 0x11
     152:	12 8a       	std	Z+18, r1	; 0x12
     154:	13 8a       	std	Z+19, r1	; 0x13
     156:	a9 01       	movw	r20, r18
     158:	98 01       	movw	r18, r16
     15a:	c2 01       	movw	r24, r4
     15c:	b1 01       	movw	r22, r2
     15e:	0e 94 fc 08 	call	0x11f8	; 0x11f8 <__addsf3>
     162:	a7 01       	movw	r20, r14
     164:	96 01       	movw	r18, r12
     166:	0e 94 fc 08 	call	0x11f8	; 0x11f8 <__addsf3>
     16a:	f3 01       	movw	r30, r6
     16c:	64 8b       	std	Z+20, r22	; 0x14
     16e:	75 8b       	std	Z+21, r23	; 0x15
     170:	86 8b       	std	Z+22, r24	; 0x16
     172:	97 8b       	std	Z+23, r25	; 0x17
     174:	52 01       	movw	r10, r4
     176:	41 01       	movw	r8, r2
     178:	b7 fa       	bst	r11, 7
     17a:	b0 94       	com	r11
     17c:	b7 f8       	bld	r11, 7
     17e:	b0 94       	com	r11
     180:	a7 01       	movw	r20, r14
     182:	96 01       	movw	r18, r12
     184:	c7 01       	movw	r24, r14
     186:	b6 01       	movw	r22, r12
     188:	0e 94 fc 08 	call	0x11f8	; 0x11f8 <__addsf3>
     18c:	9b 01       	movw	r18, r22
     18e:	ac 01       	movw	r20, r24
     190:	c5 01       	movw	r24, r10
     192:	b4 01       	movw	r22, r8
     194:	0e 94 fb 08 	call	0x11f6	; 0x11f6 <__subsf3>
     198:	f3 01       	movw	r30, r6
     19a:	60 8f       	std	Z+24, r22	; 0x18
     19c:	71 8f       	std	Z+25, r23	; 0x19
     19e:	82 8f       	std	Z+26, r24	; 0x1a
     1a0:	93 8f       	std	Z+27, r25	; 0x1b
     1a2:	c4 8e       	std	Z+28, r12	; 0x1c
     1a4:	d5 8e       	std	Z+29, r13	; 0x1d
     1a6:	e6 8e       	std	Z+30, r14	; 0x1e
     1a8:	f7 8e       	std	Z+31, r15	; 0x1f
     1aa:	df 91       	pop	r29
     1ac:	cf 91       	pop	r28
     1ae:	1f 91       	pop	r17
     1b0:	0f 91       	pop	r16
     1b2:	ff 90       	pop	r15
     1b4:	ef 90       	pop	r14
     1b6:	df 90       	pop	r13
     1b8:	cf 90       	pop	r12
     1ba:	bf 90       	pop	r11
     1bc:	af 90       	pop	r10
     1be:	9f 90       	pop	r9
     1c0:	8f 90       	pop	r8
     1c2:	7f 90       	pop	r7
     1c4:	6f 90       	pop	r6
     1c6:	5f 90       	pop	r5
     1c8:	4f 90       	pop	r4
     1ca:	3f 90       	pop	r3
     1cc:	2f 90       	pop	r2
     1ce:	08 95       	ret

000001d0 <_ZN3PID7processEf>:
     1d0:	4f 92       	push	r4
     1d2:	5f 92       	push	r5
     1d4:	6f 92       	push	r6
     1d6:	7f 92       	push	r7
     1d8:	8f 92       	push	r8
     1da:	9f 92       	push	r9
     1dc:	af 92       	push	r10
     1de:	bf 92       	push	r11
     1e0:	cf 92       	push	r12
     1e2:	df 92       	push	r13
     1e4:	ef 92       	push	r14
     1e6:	ff 92       	push	r15
     1e8:	cf 93       	push	r28
     1ea:	df 93       	push	r29
     1ec:	ec 01       	movw	r28, r24
     1ee:	cb 01       	movw	r24, r22
     1f0:	ba 01       	movw	r22, r20
     1f2:	cc 84       	ldd	r12, Y+12	; 0x0c
     1f4:	dd 84       	ldd	r13, Y+13	; 0x0d
     1f6:	ee 84       	ldd	r14, Y+14	; 0x0e
     1f8:	ff 84       	ldd	r15, Y+15	; 0x0f
     1fa:	c8 8a       	std	Y+16, r12	; 0x10
     1fc:	d9 8a       	std	Y+17, r13	; 0x11
     1fe:	ea 8a       	std	Y+18, r14	; 0x12
     200:	fb 8a       	std	Y+19, r15	; 0x13
     202:	88 84       	ldd	r8, Y+8	; 0x08
     204:	99 84       	ldd	r9, Y+9	; 0x09
     206:	aa 84       	ldd	r10, Y+10	; 0x0a
     208:	bb 84       	ldd	r11, Y+11	; 0x0b
     20a:	8c 86       	std	Y+12, r8	; 0x0c
     20c:	9d 86       	std	Y+13, r9	; 0x0d
     20e:	ae 86       	std	Y+14, r10	; 0x0e
     210:	bf 86       	std	Y+15, r11	; 0x0f
     212:	68 87       	std	Y+8, r22	; 0x08
     214:	79 87       	std	Y+9, r23	; 0x09
     216:	8a 87       	std	Y+10, r24	; 0x0a
     218:	9b 87       	std	Y+11, r25	; 0x0b
     21a:	2c 89       	ldd	r18, Y+20	; 0x14
     21c:	3d 89       	ldd	r19, Y+21	; 0x15
     21e:	4e 89       	ldd	r20, Y+22	; 0x16
     220:	5f 89       	ldd	r21, Y+23	; 0x17
     222:	0e 94 5a 0a 	call	0x14b4	; 0x14b4 <__mulsf3>
     226:	2b 01       	movw	r4, r22
     228:	3c 01       	movw	r6, r24
     22a:	28 8d       	ldd	r18, Y+24	; 0x18
     22c:	39 8d       	ldd	r19, Y+25	; 0x19
     22e:	4a 8d       	ldd	r20, Y+26	; 0x1a
     230:	5b 8d       	ldd	r21, Y+27	; 0x1b
     232:	c5 01       	movw	r24, r10
     234:	b4 01       	movw	r22, r8
     236:	0e 94 5a 0a 	call	0x14b4	; 0x14b4 <__mulsf3>
     23a:	9b 01       	movw	r18, r22
     23c:	ac 01       	movw	r20, r24
     23e:	c3 01       	movw	r24, r6
     240:	b2 01       	movw	r22, r4
     242:	0e 94 fc 08 	call	0x11f8	; 0x11f8 <__addsf3>
     246:	4b 01       	movw	r8, r22
     248:	5c 01       	movw	r10, r24
     24a:	2c 8d       	ldd	r18, Y+28	; 0x1c
     24c:	3d 8d       	ldd	r19, Y+29	; 0x1d
     24e:	4e 8d       	ldd	r20, Y+30	; 0x1e
     250:	5f 8d       	ldd	r21, Y+31	; 0x1f
     252:	c7 01       	movw	r24, r14
     254:	b6 01       	movw	r22, r12
     256:	0e 94 5a 0a 	call	0x14b4	; 0x14b4 <__mulsf3>
     25a:	9b 01       	movw	r18, r22
     25c:	ac 01       	movw	r20, r24
     25e:	c5 01       	movw	r24, r10
     260:	b4 01       	movw	r22, r8
     262:	0e 94 fc 08 	call	0x11f8	; 0x11f8 <__addsf3>
     266:	28 81       	ld	r18, Y
     268:	39 81       	ldd	r19, Y+1	; 0x01
     26a:	4a 81       	ldd	r20, Y+2	; 0x02
     26c:	5b 81       	ldd	r21, Y+3	; 0x03
     26e:	0e 94 fc 08 	call	0x11f8	; 0x11f8 <__addsf3>
     272:	68 83       	st	Y, r22
     274:	79 83       	std	Y+1, r23	; 0x01
     276:	8a 83       	std	Y+2, r24	; 0x02
     278:	9b 83       	std	Y+3, r25	; 0x03
     27a:	cc 80       	ldd	r12, Y+4	; 0x04
     27c:	dd 80       	ldd	r13, Y+5	; 0x05
     27e:	ee 80       	ldd	r14, Y+6	; 0x06
     280:	ff 80       	ldd	r15, Y+7	; 0x07
     282:	a7 01       	movw	r20, r14
     284:	96 01       	movw	r18, r12
     286:	0e 94 55 0a 	call	0x14aa	; 0x14aa <__gesf2>
     28a:	18 16       	cp	r1, r24
     28c:	24 f4       	brge	.+8      	; 0x296 <_ZN3PID7processEf+0xc6>
     28e:	c8 82       	st	Y, r12
     290:	d9 82       	std	Y+1, r13	; 0x01
     292:	ea 82       	std	Y+2, r14	; 0x02
     294:	fb 82       	std	Y+3, r15	; 0x03
     296:	f7 fa       	bst	r15, 7
     298:	f0 94       	com	r15
     29a:	f7 f8       	bld	r15, 7
     29c:	f0 94       	com	r15
     29e:	a7 01       	movw	r20, r14
     2a0:	96 01       	movw	r18, r12
     2a2:	68 81       	ld	r22, Y
     2a4:	79 81       	ldd	r23, Y+1	; 0x01
     2a6:	8a 81       	ldd	r24, Y+2	; 0x02
     2a8:	9b 81       	ldd	r25, Y+3	; 0x03
     2aa:	0e 94 68 09 	call	0x12d0	; 0x12d0 <__cmpsf2>
     2ae:	87 ff       	sbrs	r24, 7
     2b0:	04 c0       	rjmp	.+8      	; 0x2ba <_ZN3PID7processEf+0xea>
     2b2:	c8 82       	st	Y, r12
     2b4:	d9 82       	std	Y+1, r13	; 0x01
     2b6:	ea 82       	std	Y+2, r14	; 0x02
     2b8:	fb 82       	std	Y+3, r15	; 0x03
     2ba:	68 81       	ld	r22, Y
     2bc:	79 81       	ldd	r23, Y+1	; 0x01
     2be:	8a 81       	ldd	r24, Y+2	; 0x02
     2c0:	9b 81       	ldd	r25, Y+3	; 0x03
     2c2:	df 91       	pop	r29
     2c4:	cf 91       	pop	r28
     2c6:	ff 90       	pop	r15
     2c8:	ef 90       	pop	r14
     2ca:	df 90       	pop	r13
     2cc:	cf 90       	pop	r12
     2ce:	bf 90       	pop	r11
     2d0:	af 90       	pop	r10
     2d2:	9f 90       	pop	r9
     2d4:	8f 90       	pop	r8
     2d6:	7f 90       	pop	r7
     2d8:	6f 90       	pop	r6
     2da:	5f 90       	pop	r5
     2dc:	4f 90       	pop	r4
     2de:	08 95       	ret

000002e0 <_ZN13Stabilization4mainEv>:
     2e0:	8f 92       	push	r8
     2e2:	9f 92       	push	r9
     2e4:	af 92       	push	r10
     2e6:	bf 92       	push	r11
     2e8:	cf 92       	push	r12
     2ea:	df 92       	push	r13
     2ec:	ef 92       	push	r14
     2ee:	ff 92       	push	r15
     2f0:	cf 93       	push	r28
     2f2:	df 93       	push	r29
     2f4:	ec 01       	movw	r28, r24
     2f6:	60 e0       	ldi	r22, 0x00	; 0
     2f8:	03 96       	adiw	r24, 0x03	; 3
     2fa:	0e 94 a2 02 	call	0x544	; 0x544 <_ZN4Gyro4readEb>
     2fe:	8f 8d       	ldd	r24, Y+31	; 0x1f
     300:	98 a1       	ldd	r25, Y+32	; 0x20
     302:	a9 a1       	ldd	r26, Y+33	; 0x21
     304:	ba a1       	ldd	r27, Y+34	; 0x22
     306:	9c 01       	movw	r18, r24
     308:	ad 01       	movw	r20, r26
     30a:	66 27       	eor	r22, r22
     30c:	77 27       	eor	r23, r23
     30e:	cb 01       	movw	r24, r22
     310:	62 1b       	sub	r22, r18
     312:	73 0b       	sbc	r23, r19
     314:	84 0b       	sbc	r24, r20
     316:	95 0b       	sbc	r25, r21
     318:	0e 94 a5 09 	call	0x134a	; 0x134a <__floatsisf>
     31c:	2d ec       	ldi	r18, 0xCD	; 205
     31e:	3c ec       	ldi	r19, 0xCC	; 204
     320:	4c ec       	ldi	r20, 0xCC	; 204
     322:	5d e3       	ldi	r21, 0x3D	; 61
     324:	0e 94 5a 0a 	call	0x14b4	; 0x14b4 <__mulsf3>
     328:	9b 01       	movw	r18, r22
     32a:	ac 01       	movw	r20, r24
     32c:	60 e0       	ldi	r22, 0x00	; 0
     32e:	70 e0       	ldi	r23, 0x00	; 0
     330:	cb 01       	movw	r24, r22
     332:	0e 94 fb 08 	call	0x11f6	; 0x11f6 <__subsf3>
     336:	ab 01       	movw	r20, r22
     338:	bc 01       	movw	r22, r24
     33a:	ce 01       	movw	r24, r28
     33c:	cd 96       	adiw	r24, 0x3d	; 61
     33e:	0e 94 e8 00 	call	0x1d0	; 0x1d0 <_ZN3PID7processEf>
     342:	6b 01       	movw	r12, r22
     344:	7c 01       	movw	r14, r24
     346:	9b 01       	movw	r18, r22
     348:	ac 01       	movw	r20, r24
     34a:	60 e0       	ldi	r22, 0x00	; 0
     34c:	70 e0       	ldi	r23, 0x00	; 0
     34e:	cb 01       	movw	r24, r22
     350:	0e 94 fb 08 	call	0x11f6	; 0x11f6 <__subsf3>
     354:	0e 94 6d 09 	call	0x12da	; 0x12da <__fixsfsi>
     358:	4b 01       	movw	r8, r22
     35a:	5c 01       	movw	r10, r24
     35c:	20 e0       	ldi	r18, 0x00	; 0
     35e:	30 e0       	ldi	r19, 0x00	; 0
     360:	a9 01       	movw	r20, r18
     362:	c7 01       	movw	r24, r14
     364:	b6 01       	movw	r22, r12
     366:	0e 94 fc 08 	call	0x11f8	; 0x11f8 <__addsf3>
     36a:	0e 94 6d 09 	call	0x12da	; 0x12da <__fixsfsi>
     36e:	a4 01       	movw	r20, r8
     370:	ce 01       	movw	r24, r28
     372:	02 96       	adiw	r24, 0x02	; 2
     374:	df 91       	pop	r29
     376:	cf 91       	pop	r28
     378:	ff 90       	pop	r15
     37a:	ef 90       	pop	r14
     37c:	df 90       	pop	r13
     37e:	cf 90       	pop	r12
     380:	bf 90       	pop	r11
     382:	af 90       	pop	r10
     384:	9f 90       	pop	r9
     386:	8f 90       	pop	r8
     388:	0c 94 4b 05 	jmp	0xa96	; 0xa96 <_ZN5Motor3runEii>

0000038c <_ZN13StabilizationD1Ev>:
     38c:	cf 93       	push	r28
     38e:	df 93       	push	r29
     390:	ec 01       	movw	r28, r24
     392:	84 e7       	ldi	r24, 0x74	; 116
     394:	90 e0       	ldi	r25, 0x00	; 0
     396:	99 83       	std	Y+1, r25	; 0x01
     398:	88 83       	st	Y, r24
     39a:	ce 01       	movw	r24, r28
     39c:	cd 96       	adiw	r24, 0x3d	; 61
     39e:	0e 94 7e 00 	call	0xfc	; 0xfc <_ZN3PIDD1Ev>
     3a2:	ce 01       	movw	r24, r28
     3a4:	03 96       	adiw	r24, 0x03	; 3
     3a6:	0e 94 a1 02 	call	0x542	; 0x542 <_ZN4GyroD1Ev>
     3aa:	ce 01       	movw	r24, r28
     3ac:	02 96       	adiw	r24, 0x02	; 2
     3ae:	df 91       	pop	r29
     3b0:	cf 91       	pop	r28
     3b2:	0c 94 4a 05 	jmp	0xa94	; 0xa94 <_ZN5MotorD1Ev>

000003b6 <_ZN13StabilizationD0Ev>:
     3b6:	cf 93       	push	r28
     3b8:	df 93       	push	r29
     3ba:	ec 01       	movw	r28, r24
     3bc:	0e 94 c6 01 	call	0x38c	; 0x38c <_ZN13StabilizationD1Ev>
     3c0:	ce 01       	movw	r24, r28
     3c2:	df 91       	pop	r29
     3c4:	cf 91       	pop	r28
     3c6:	0c 94 3c 05 	jmp	0xa78	; 0xa78 <_ZdlPv>

000003ca <_ZN5Blink4mainEv>:
     3ca:	cf 93       	push	r28
     3cc:	df 93       	push	r29
     3ce:	ec 01       	movw	r28, r24
     3d0:	8b 81       	ldd	r24, Y+3	; 0x03
     3d2:	9c 81       	ldd	r25, Y+4	; 0x04
     3d4:	00 97       	sbiw	r24, 0x00	; 0
     3d6:	81 f0       	breq	.+32     	; 0x3f8 <_ZN5Blink4mainEv+0x2e>
     3d8:	01 97       	sbiw	r24, 0x01	; 1
     3da:	c1 f4       	brne	.+48     	; 0x40c <__LOCK_REGION_LENGTH__+0xc>
     3dc:	dd 98       	cbi	0x1b, 5	; 27
     3de:	6a 85       	ldd	r22, Y+10	; 0x0a
     3e0:	ce 01       	movw	r24, r28
     3e2:	05 96       	adiw	r24, 0x05	; 5
     3e4:	0e 94 5d 06 	call	0xcba	; 0xcba <_ZN10LEDDisplay11display_decEh>
     3e8:	1c 82       	std	Y+4, r1	; 0x04
     3ea:	1b 82       	std	Y+3, r1	; 0x03
     3ec:	8a 85       	ldd	r24, Y+10	; 0x0a
     3ee:	9b 85       	ldd	r25, Y+11	; 0x0b
     3f0:	01 96       	adiw	r24, 0x01	; 1
     3f2:	9b 87       	std	Y+11, r25	; 0x0b
     3f4:	8a 87       	std	Y+10, r24	; 0x0a
     3f6:	0a c0       	rjmp	.+20     	; 0x40c <__LOCK_REGION_LENGTH__+0xc>
     3f8:	dd 9a       	sbi	0x1b, 5	; 27
     3fa:	68 e5       	ldi	r22, 0x58	; 88
     3fc:	ce 01       	movw	r24, r28
     3fe:	05 96       	adiw	r24, 0x05	; 5
     400:	0e 94 5d 06 	call	0xcba	; 0xcba <_ZN10LEDDisplay11display_decEh>
     404:	81 e0       	ldi	r24, 0x01	; 1
     406:	90 e0       	ldi	r25, 0x00	; 0
     408:	9c 83       	std	Y+4, r25	; 0x04
     40a:	8b 83       	std	Y+3, r24	; 0x03
     40c:	df 91       	pop	r29
     40e:	cf 91       	pop	r28
     410:	08 95       	ret

00000412 <main>:
     412:	cf 93       	push	r28
     414:	df 93       	push	r29
     416:	cd b7       	in	r28, 0x3d	; 61
     418:	de b7       	in	r29, 0x3e	; 62
     41a:	c9 56       	subi	r28, 0x69	; 105
     41c:	d1 09       	sbc	r29, r1
     41e:	0f b6       	in	r0, 0x3f	; 63
     420:	f8 94       	cli
     422:	de bf       	out	0x3e, r29	; 62
     424:	0f be       	out	0x3f, r0	; 63
     426:	cd bf       	out	0x3d, r28	; 61
     428:	8a e6       	ldi	r24, 0x6A	; 106
     42a:	90 e0       	ldi	r25, 0x00	; 0
     42c:	a0 96       	adiw	r28, 0x20	; 32
     42e:	9f af       	std	Y+63, r25	; 0x3f
     430:	8e af       	std	Y+62, r24	; 0x3e
     432:	a0 97       	sbiw	r28, 0x20	; 32
     434:	d5 9a       	sbi	0x1a, 5	; 26
     436:	8e e5       	ldi	r24, 0x5E	; 94
     438:	90 e0       	ldi	r25, 0x00	; 0
     43a:	8c 0f       	add	r24, r28
     43c:	9d 1f       	adc	r25, r29
     43e:	05 96       	adiw	r24, 0x05	; 5
     440:	0e 94 45 06 	call	0xc8a	; 0xc8a <_ZN10LEDDisplayC1Ev>
     444:	a3 96       	adiw	r28, 0x23	; 35
     446:	1f ae       	std	Y+63, r1	; 0x3f
     448:	1e ae       	std	Y+62, r1	; 0x3e
     44a:	a3 97       	sbiw	r28, 0x23	; 35
     44c:	aa 96       	adiw	r28, 0x2a	; 42
     44e:	1f ae       	std	Y+63, r1	; 0x3f
     450:	1e ae       	std	Y+62, r1	; 0x3e
     452:	aa 97       	sbiw	r28, 0x2a	; 42
     454:	48 ec       	ldi	r20, 0xC8	; 200
     456:	50 e0       	ldi	r21, 0x00	; 0
     458:	be 01       	movw	r22, r28
     45a:	62 5a       	subi	r22, 0xA2	; 162
     45c:	7f 4f       	sbci	r23, 0xFF	; 255
     45e:	8d ea       	ldi	r24, 0xAD	; 173
     460:	90 e0       	ldi	r25, 0x00	; 0
     462:	0e 94 a8 05 	call	0xb50	; 0xb50 <_ZN5Timer8add_taskEP4Taskj>
     466:	84 e7       	ldi	r24, 0x74	; 116
     468:	90 e0       	ldi	r25, 0x00	; 0
     46a:	9a 83       	std	Y+2, r25	; 0x02
     46c:	89 83       	std	Y+1, r24	; 0x01
     46e:	ce 01       	movw	r24, r28
     470:	03 96       	adiw	r24, 0x03	; 3
     472:	0e 94 3e 05 	call	0xa7c	; 0xa7c <_ZN5MotorC1Ev>
     476:	ce 01       	movw	r24, r28
     478:	04 96       	adiw	r24, 0x04	; 4
     47a:	0e 94 a0 02 	call	0x540	; 0x540 <_ZN4GyroC1Ev>
     47e:	ce 01       	movw	r24, r28
     480:	ce 96       	adiw	r24, 0x3e	; 62
     482:	0e 94 58 00 	call	0xb0	; 0xb0 <_ZN3PIDC1Ev>
     486:	6a ee       	ldi	r22, 0xEA	; 234
     488:	70 e0       	ldi	r23, 0x00	; 0
     48a:	ce 01       	movw	r24, r28
     48c:	04 96       	adiw	r24, 0x04	; 4
     48e:	0e 94 2e 04 	call	0x85c	; 0x85c <_ZN4Gyro4initEP13I2C_Interface>
     492:	81 2c       	mov	r8, r1
     494:	91 2c       	mov	r9, r1
     496:	2f e7       	ldi	r18, 0x7F	; 127
     498:	a2 2e       	mov	r10, r18
     49a:	23 e4       	ldi	r18, 0x43	; 67
     49c:	b2 2e       	mov	r11, r18
     49e:	c1 2c       	mov	r12, r1
     4a0:	d1 2c       	mov	r13, r1
     4a2:	76 01       	movw	r14, r12
     4a4:	97 01       	movw	r18, r14
     4a6:	86 01       	movw	r16, r12
     4a8:	43 e3       	ldi	r20, 0x33	; 51
     4aa:	53 e3       	ldi	r21, 0x33	; 51
     4ac:	63 e3       	ldi	r22, 0x33	; 51
     4ae:	7f e3       	ldi	r23, 0x3F	; 63
     4b0:	ce 01       	movw	r24, r28
     4b2:	ce 96       	adiw	r24, 0x3e	; 62
     4b4:	0e 94 7f 00 	call	0xfe	; 0xfe <_ZN3PID4initEffff>
     4b8:	bb 98       	cbi	0x17, 3	; 23
     4ba:	c3 9a       	sbi	0x18, 3	; 24
     4bc:	ba 98       	cbi	0x17, 2	; 23
     4be:	c2 9a       	sbi	0x18, 2	; 24
     4c0:	b3 9b       	sbis	0x16, 3	; 22
     4c2:	07 c0       	rjmp	.+14     	; 0x4d2 <__stack+0x73>
     4c4:	b2 9b       	sbis	0x16, 2	; 22
     4c6:	05 c0       	rjmp	.+10     	; 0x4d2 <__stack+0x73>
     4c8:	8d ea       	ldi	r24, 0xAD	; 173
     4ca:	90 e0       	ldi	r25, 0x00	; 0
     4cc:	0e 94 ca 05 	call	0xb94	; 0xb94 <_ZN5Timer4mainEv>
     4d0:	f7 cf       	rjmp	.-18     	; 0x4c0 <__stack+0x61>
     4d2:	b3 99       	sbic	0x16, 3	; 22
     4d4:	15 c0       	rjmp	.+42     	; 0x500 <__stack+0xa1>
     4d6:	81 2c       	mov	r8, r1
     4d8:	91 2c       	mov	r9, r1
     4da:	8f e7       	ldi	r24, 0x7F	; 127
     4dc:	a8 2e       	mov	r10, r24
     4de:	83 e4       	ldi	r24, 0x43	; 67
     4e0:	b8 2e       	mov	r11, r24
     4e2:	c1 2c       	mov	r12, r1
     4e4:	d1 2c       	mov	r13, r1
     4e6:	90 e8       	ldi	r25, 0x80	; 128
     4e8:	e9 2e       	mov	r14, r25
     4ea:	9f e3       	ldi	r25, 0x3F	; 63
     4ec:	f9 2e       	mov	r15, r25
     4ee:	00 e0       	ldi	r16, 0x00	; 0
     4f0:	10 e0       	ldi	r17, 0x00	; 0
     4f2:	98 01       	movw	r18, r16
     4f4:	b7 01       	movw	r22, r14
     4f6:	a6 01       	movw	r20, r12
     4f8:	ce 01       	movw	r24, r28
     4fa:	ce 96       	adiw	r24, 0x3e	; 62
     4fc:	0e 94 7f 00 	call	0xfe	; 0xfe <_ZN3PID4initEffff>
     500:	4a e0       	ldi	r20, 0x0A	; 10
     502:	50 e0       	ldi	r21, 0x00	; 0
     504:	be 01       	movw	r22, r28
     506:	6f 5f       	subi	r22, 0xFF	; 255
     508:	7f 4f       	sbci	r23, 0xFF	; 255
     50a:	8d ea       	ldi	r24, 0xAD	; 173
     50c:	90 e0       	ldi	r25, 0x00	; 0
     50e:	0e 94 a8 05 	call	0xb50	; 0xb50 <_ZN5Timer8add_taskEP4Taskj>
     512:	8d ea       	ldi	r24, 0xAD	; 173
     514:	90 e0       	ldi	r25, 0x00	; 0
     516:	0e 94 ca 05 	call	0xb94	; 0xb94 <_ZN5Timer4mainEv>
     51a:	fb cf       	rjmp	.-10     	; 0x512 <__stack+0xb3>

0000051c <_ZN5BlinkD1Ev>:
     51c:	2a e6       	ldi	r18, 0x6A	; 106
     51e:	30 e0       	ldi	r19, 0x00	; 0
     520:	fc 01       	movw	r30, r24
     522:	31 83       	std	Z+1, r19	; 0x01
     524:	20 83       	st	Z, r18
     526:	05 96       	adiw	r24, 0x05	; 5
     528:	0c 94 2a 06 	jmp	0xc54	; 0xc54 <_ZN10LEDDisplayD1Ev>

0000052c <_ZN5BlinkD0Ev>:
     52c:	cf 93       	push	r28
     52e:	df 93       	push	r29
     530:	ec 01       	movw	r28, r24
     532:	0e 94 8e 02 	call	0x51c	; 0x51c <_ZN5BlinkD1Ev>
     536:	ce 01       	movw	r24, r28
     538:	df 91       	pop	r29
     53a:	cf 91       	pop	r28
     53c:	0c 94 3c 05 	jmp	0xa78	; 0xa78 <_ZdlPv>

00000540 <_ZN4GyroC1Ev>:
     540:	08 95       	ret

00000542 <_ZN4GyroD1Ev>:
     542:	08 95       	ret

00000544 <_ZN4Gyro4readEb>:
     544:	4f 92       	push	r4
     546:	5f 92       	push	r5
     548:	6f 92       	push	r6
     54a:	7f 92       	push	r7
     54c:	8f 92       	push	r8
     54e:	9f 92       	push	r9
     550:	af 92       	push	r10
     552:	bf 92       	push	r11
     554:	cf 92       	push	r12
     556:	df 92       	push	r13
     558:	ef 92       	push	r14
     55a:	ff 92       	push	r15
     55c:	0f 93       	push	r16
     55e:	1f 93       	push	r17
     560:	cf 93       	push	r28
     562:	df 93       	push	r29
     564:	ec 01       	movw	r28, r24
     566:	b6 2e       	mov	r11, r22
     568:	88 ad       	ldd	r24, Y+56	; 0x38
     56a:	99 ad       	ldd	r25, Y+57	; 0x39
     56c:	dc 01       	movw	r26, r24
     56e:	ed 91       	ld	r30, X+
     570:	fc 91       	ld	r31, X
     572:	06 84       	ldd	r0, Z+14	; 0x0e
     574:	f7 85       	ldd	r31, Z+15	; 0x0f
     576:	e0 2d       	mov	r30, r0
     578:	4f e0       	ldi	r20, 0x0F	; 15
     57a:	64 ed       	ldi	r22, 0xD4	; 212
     57c:	09 95       	icall
     57e:	88 36       	cpi	r24, 0x68	; 104
     580:	49 f4       	brne	.+18     	; 0x594 <_ZN4Gyro4readEb+0x50>
     582:	81 e0       	ldi	r24, 0x01	; 1
     584:	90 e0       	ldi	r25, 0x00	; 0
     586:	a0 e0       	ldi	r26, 0x00	; 0
     588:	b0 e0       	ldi	r27, 0x00	; 0
     58a:	88 ab       	std	Y+48, r24	; 0x30
     58c:	99 ab       	std	Y+49, r25	; 0x31
     58e:	aa ab       	std	Y+50, r26	; 0x32
     590:	bb ab       	std	Y+51, r27	; 0x33
     592:	04 c0       	rjmp	.+8      	; 0x59c <_ZN4Gyro4readEb+0x58>
     594:	18 aa       	std	Y+48, r1	; 0x30
     596:	19 aa       	std	Y+49, r1	; 0x31
     598:	1a aa       	std	Y+50, r1	; 0x32
     59a:	1b aa       	std	Y+51, r1	; 0x33
     59c:	88 ad       	ldd	r24, Y+56	; 0x38
     59e:	99 ad       	ldd	r25, Y+57	; 0x39
     5a0:	dc 01       	movw	r26, r24
     5a2:	ed 91       	ld	r30, X+
     5a4:	fc 91       	ld	r31, X
     5a6:	06 84       	ldd	r0, Z+14	; 0x0e
     5a8:	f7 85       	ldd	r31, Z+15	; 0x0f
     5aa:	e0 2d       	mov	r30, r0
     5ac:	49 e1       	ldi	r20, 0x19	; 25
     5ae:	64 ed       	ldi	r22, 0xD4	; 212
     5b0:	09 95       	icall
     5b2:	08 2f       	mov	r16, r24
     5b4:	10 e0       	ldi	r17, 0x00	; 0
     5b6:	10 2f       	mov	r17, r16
     5b8:	00 27       	eor	r16, r16
     5ba:	88 ad       	ldd	r24, Y+56	; 0x38
     5bc:	99 ad       	ldd	r25, Y+57	; 0x39
     5be:	dc 01       	movw	r26, r24
     5c0:	ed 91       	ld	r30, X+
     5c2:	fc 91       	ld	r31, X
     5c4:	06 84       	ldd	r0, Z+14	; 0x0e
     5c6:	f7 85       	ldd	r31, Z+15	; 0x0f
     5c8:	e0 2d       	mov	r30, r0
     5ca:	48 e1       	ldi	r20, 0x18	; 24
     5cc:	64 ed       	ldi	r22, 0xD4	; 212
     5ce:	09 95       	icall
     5d0:	08 2b       	or	r16, r24
     5d2:	88 ad       	ldd	r24, Y+56	; 0x38
     5d4:	99 ad       	ldd	r25, Y+57	; 0x39
     5d6:	dc 01       	movw	r26, r24
     5d8:	ed 91       	ld	r30, X+
     5da:	fc 91       	ld	r31, X
     5dc:	06 84       	ldd	r0, Z+14	; 0x0e
     5de:	f7 85       	ldd	r31, Z+15	; 0x0f
     5e0:	e0 2d       	mov	r30, r0
     5e2:	4b e1       	ldi	r20, 0x1B	; 27
     5e4:	64 ed       	ldi	r22, 0xD4	; 212
     5e6:	09 95       	icall
     5e8:	e8 2e       	mov	r14, r24
     5ea:	f1 2c       	mov	r15, r1
     5ec:	fe 2c       	mov	r15, r14
     5ee:	ee 24       	eor	r14, r14
     5f0:	88 ad       	ldd	r24, Y+56	; 0x38
     5f2:	99 ad       	ldd	r25, Y+57	; 0x39
     5f4:	dc 01       	movw	r26, r24
     5f6:	ed 91       	ld	r30, X+
     5f8:	fc 91       	ld	r31, X
     5fa:	06 84       	ldd	r0, Z+14	; 0x0e
     5fc:	f7 85       	ldd	r31, Z+15	; 0x0f
     5fe:	e0 2d       	mov	r30, r0
     600:	4a e1       	ldi	r20, 0x1A	; 26
     602:	64 ed       	ldi	r22, 0xD4	; 212
     604:	09 95       	icall
     606:	e8 2a       	or	r14, r24
     608:	88 ad       	ldd	r24, Y+56	; 0x38
     60a:	99 ad       	ldd	r25, Y+57	; 0x39
     60c:	dc 01       	movw	r26, r24
     60e:	ed 91       	ld	r30, X+
     610:	fc 91       	ld	r31, X
     612:	06 84       	ldd	r0, Z+14	; 0x0e
     614:	f7 85       	ldd	r31, Z+15	; 0x0f
     616:	e0 2d       	mov	r30, r0
     618:	4d e1       	ldi	r20, 0x1D	; 29
     61a:	64 ed       	ldi	r22, 0xD4	; 212
     61c:	09 95       	icall
     61e:	c8 2e       	mov	r12, r24
     620:	d1 2c       	mov	r13, r1
     622:	dc 2c       	mov	r13, r12
     624:	cc 24       	eor	r12, r12
     626:	88 ad       	ldd	r24, Y+56	; 0x38
     628:	99 ad       	ldd	r25, Y+57	; 0x39
     62a:	dc 01       	movw	r26, r24
     62c:	ed 91       	ld	r30, X+
     62e:	fc 91       	ld	r31, X
     630:	06 84       	ldd	r0, Z+14	; 0x0e
     632:	f7 85       	ldd	r31, Z+15	; 0x0f
     634:	e0 2d       	mov	r30, r0
     636:	4c e1       	ldi	r20, 0x1C	; 28
     638:	64 ed       	ldi	r22, 0xD4	; 212
     63a:	09 95       	icall
     63c:	c8 2a       	or	r12, r24
     63e:	c8 01       	movw	r24, r16
     640:	11 0f       	add	r17, r17
     642:	aa 0b       	sbc	r26, r26
     644:	bb 0b       	sbc	r27, r27
     646:	27 01       	movw	r4, r14
     648:	ff 0c       	add	r15, r15
     64a:	66 08       	sbc	r6, r6
     64c:	77 08       	sbc	r7, r7
     64e:	0d 2c       	mov	r0, r13
     650:	00 0c       	add	r0, r0
     652:	ee 08       	sbc	r14, r14
     654:	ff 08       	sbc	r15, r15
     656:	bb 20       	and	r11, r11
     658:	21 f1       	breq	.+72     	; 0x6a2 <_ZN4Gyro4readEb+0x15e>
     65a:	0c a1       	ldd	r16, Y+36	; 0x24
     65c:	1d a1       	ldd	r17, Y+37	; 0x25
     65e:	2e a1       	ldd	r18, Y+38	; 0x26
     660:	3f a1       	ldd	r19, Y+39	; 0x27
     662:	08 0f       	add	r16, r24
     664:	19 1f       	adc	r17, r25
     666:	2a 1f       	adc	r18, r26
     668:	3b 1f       	adc	r19, r27
     66a:	0c a3       	std	Y+36, r16	; 0x24
     66c:	1d a3       	std	Y+37, r17	; 0x25
     66e:	2e a3       	std	Y+38, r18	; 0x26
     670:	3f a3       	std	Y+39, r19	; 0x27
     672:	08 a5       	ldd	r16, Y+40	; 0x28
     674:	19 a5       	ldd	r17, Y+41	; 0x29
     676:	2a a5       	ldd	r18, Y+42	; 0x2a
     678:	3b a5       	ldd	r19, Y+43	; 0x2b
     67a:	04 0d       	add	r16, r4
     67c:	15 1d       	adc	r17, r5
     67e:	26 1d       	adc	r18, r6
     680:	37 1d       	adc	r19, r7
     682:	08 a7       	std	Y+40, r16	; 0x28
     684:	19 a7       	std	Y+41, r17	; 0x29
     686:	2a a7       	std	Y+42, r18	; 0x2a
     688:	3b a7       	std	Y+43, r19	; 0x2b
     68a:	0c a5       	ldd	r16, Y+44	; 0x2c
     68c:	1d a5       	ldd	r17, Y+45	; 0x2d
     68e:	2e a5       	ldd	r18, Y+46	; 0x2e
     690:	3f a5       	ldd	r19, Y+47	; 0x2f
     692:	0c 0d       	add	r16, r12
     694:	1d 1d       	adc	r17, r13
     696:	2e 1d       	adc	r18, r14
     698:	3f 1d       	adc	r19, r15
     69a:	0c a7       	std	Y+44, r16	; 0x2c
     69c:	1d a7       	std	Y+45, r17	; 0x2d
     69e:	2e a7       	std	Y+46, r18	; 0x2e
     6a0:	3f a7       	std	Y+47, r19	; 0x2f
     6a2:	0c a1       	ldd	r16, Y+36	; 0x24
     6a4:	1d a1       	ldd	r17, Y+37	; 0x25
     6a6:	2e a1       	ldd	r18, Y+38	; 0x26
     6a8:	3f a1       	ldd	r19, Y+39	; 0x27
     6aa:	bc 01       	movw	r22, r24
     6ac:	cd 01       	movw	r24, r26
     6ae:	60 1b       	sub	r22, r16
     6b0:	71 0b       	sbc	r23, r17
     6b2:	82 0b       	sbc	r24, r18
     6b4:	93 0b       	sbc	r25, r19
     6b6:	6c 87       	std	Y+12, r22	; 0x0c
     6b8:	7d 87       	std	Y+13, r23	; 0x0d
     6ba:	8e 87       	std	Y+14, r24	; 0x0e
     6bc:	9f 87       	std	Y+15, r25	; 0x0f
     6be:	08 a5       	ldd	r16, Y+40	; 0x28
     6c0:	19 a5       	ldd	r17, Y+41	; 0x29
     6c2:	2a a5       	ldd	r18, Y+42	; 0x2a
     6c4:	3b a5       	ldd	r19, Y+43	; 0x2b
     6c6:	53 01       	movw	r10, r6
     6c8:	42 01       	movw	r8, r4
     6ca:	80 1a       	sub	r8, r16
     6cc:	91 0a       	sbc	r9, r17
     6ce:	a2 0a       	sbc	r10, r18
     6d0:	b3 0a       	sbc	r11, r19
     6d2:	88 8a       	std	Y+16, r8	; 0x10
     6d4:	99 8a       	std	Y+17, r9	; 0x11
     6d6:	aa 8a       	std	Y+18, r10	; 0x12
     6d8:	bb 8a       	std	Y+19, r11	; 0x13
     6da:	0c a5       	ldd	r16, Y+44	; 0x2c
     6dc:	1d a5       	ldd	r17, Y+45	; 0x2d
     6de:	2e a5       	ldd	r18, Y+46	; 0x2e
     6e0:	3f a5       	ldd	r19, Y+47	; 0x2f
     6e2:	c0 1a       	sub	r12, r16
     6e4:	d1 0a       	sbc	r13, r17
     6e6:	e2 0a       	sbc	r14, r18
     6e8:	f3 0a       	sbc	r15, r19
     6ea:	cc 8a       	std	Y+20, r12	; 0x14
     6ec:	dd 8a       	std	Y+21, r13	; 0x15
     6ee:	ee 8a       	std	Y+22, r14	; 0x16
     6f0:	ff 8a       	std	Y+23, r15	; 0x17
     6f2:	29 e1       	ldi	r18, 0x19	; 25
     6f4:	42 2e       	mov	r4, r18
     6f6:	51 2c       	mov	r5, r1
     6f8:	61 2c       	mov	r6, r1
     6fa:	71 2c       	mov	r7, r1
     6fc:	a3 01       	movw	r20, r6
     6fe:	92 01       	movw	r18, r4
     700:	0e 94 d6 08 	call	0x11ac	; 0x11ac <__divmodsi4>
     704:	88 8d       	ldd	r24, Y+24	; 0x18
     706:	99 8d       	ldd	r25, Y+25	; 0x19
     708:	aa 8d       	ldd	r26, Y+26	; 0x1a
     70a:	bb 8d       	ldd	r27, Y+27	; 0x1b
     70c:	82 0f       	add	r24, r18
     70e:	93 1f       	adc	r25, r19
     710:	a4 1f       	adc	r26, r20
     712:	b5 1f       	adc	r27, r21
     714:	88 8f       	std	Y+24, r24	; 0x18
     716:	99 8f       	std	Y+25, r25	; 0x19
     718:	aa 8f       	std	Y+26, r26	; 0x1a
     71a:	bb 8f       	std	Y+27, r27	; 0x1b
     71c:	c5 01       	movw	r24, r10
     71e:	b4 01       	movw	r22, r8
     720:	a3 01       	movw	r20, r6
     722:	92 01       	movw	r18, r4
     724:	0e 94 d6 08 	call	0x11ac	; 0x11ac <__divmodsi4>
     728:	8c 8d       	ldd	r24, Y+28	; 0x1c
     72a:	9d 8d       	ldd	r25, Y+29	; 0x1d
     72c:	ae 8d       	ldd	r26, Y+30	; 0x1e
     72e:	bf 8d       	ldd	r27, Y+31	; 0x1f
     730:	82 0f       	add	r24, r18
     732:	93 1f       	adc	r25, r19
     734:	a4 1f       	adc	r26, r20
     736:	b5 1f       	adc	r27, r21
     738:	8c 8f       	std	Y+28, r24	; 0x1c
     73a:	9d 8f       	std	Y+29, r25	; 0x1d
     73c:	ae 8f       	std	Y+30, r26	; 0x1e
     73e:	bf 8f       	std	Y+31, r27	; 0x1f
     740:	c7 01       	movw	r24, r14
     742:	b6 01       	movw	r22, r12
     744:	a3 01       	movw	r20, r6
     746:	92 01       	movw	r18, r4
     748:	0e 94 d6 08 	call	0x11ac	; 0x11ac <__divmodsi4>
     74c:	88 a1       	ldd	r24, Y+32	; 0x20
     74e:	99 a1       	ldd	r25, Y+33	; 0x21
     750:	aa a1       	ldd	r26, Y+34	; 0x22
     752:	bb a1       	ldd	r27, Y+35	; 0x23
     754:	82 0f       	add	r24, r18
     756:	93 1f       	adc	r25, r19
     758:	a4 1f       	adc	r26, r20
     75a:	b5 1f       	adc	r27, r21
     75c:	88 a3       	std	Y+32, r24	; 0x20
     75e:	99 a3       	std	Y+33, r25	; 0x21
     760:	aa a3       	std	Y+34, r26	; 0x22
     762:	bb a3       	std	Y+35, r27	; 0x23
     764:	88 ad       	ldd	r24, Y+56	; 0x38
     766:	99 ad       	ldd	r25, Y+57	; 0x39
     768:	dc 01       	movw	r26, r24
     76a:	ed 91       	ld	r30, X+
     76c:	fc 91       	ld	r31, X
     76e:	06 84       	ldd	r0, Z+14	; 0x0e
     770:	f7 85       	ldd	r31, Z+15	; 0x0f
     772:	e0 2d       	mov	r30, r0
     774:	49 e2       	ldi	r20, 0x29	; 41
     776:	64 ed       	ldi	r22, 0xD4	; 212
     778:	09 95       	icall
     77a:	08 2f       	mov	r16, r24
     77c:	10 e0       	ldi	r17, 0x00	; 0
     77e:	10 2f       	mov	r17, r16
     780:	00 27       	eor	r16, r16
     782:	88 ad       	ldd	r24, Y+56	; 0x38
     784:	99 ad       	ldd	r25, Y+57	; 0x39
     786:	dc 01       	movw	r26, r24
     788:	ed 91       	ld	r30, X+
     78a:	fc 91       	ld	r31, X
     78c:	06 84       	ldd	r0, Z+14	; 0x0e
     78e:	f7 85       	ldd	r31, Z+15	; 0x0f
     790:	e0 2d       	mov	r30, r0
     792:	48 e2       	ldi	r20, 0x28	; 40
     794:	64 ed       	ldi	r22, 0xD4	; 212
     796:	09 95       	icall
     798:	68 01       	movw	r12, r16
     79a:	c8 2a       	or	r12, r24
     79c:	88 ad       	ldd	r24, Y+56	; 0x38
     79e:	99 ad       	ldd	r25, Y+57	; 0x39
     7a0:	dc 01       	movw	r26, r24
     7a2:	ed 91       	ld	r30, X+
     7a4:	fc 91       	ld	r31, X
     7a6:	06 84       	ldd	r0, Z+14	; 0x0e
     7a8:	f7 85       	ldd	r31, Z+15	; 0x0f
     7aa:	e0 2d       	mov	r30, r0
     7ac:	4b e2       	ldi	r20, 0x2B	; 43
     7ae:	64 ed       	ldi	r22, 0xD4	; 212
     7b0:	09 95       	icall
     7b2:	08 2f       	mov	r16, r24
     7b4:	10 e0       	ldi	r17, 0x00	; 0
     7b6:	10 2f       	mov	r17, r16
     7b8:	00 27       	eor	r16, r16
     7ba:	88 ad       	ldd	r24, Y+56	; 0x38
     7bc:	99 ad       	ldd	r25, Y+57	; 0x39
     7be:	dc 01       	movw	r26, r24
     7c0:	ed 91       	ld	r30, X+
     7c2:	fc 91       	ld	r31, X
     7c4:	06 84       	ldd	r0, Z+14	; 0x0e
     7c6:	f7 85       	ldd	r31, Z+15	; 0x0f
     7c8:	e0 2d       	mov	r30, r0
     7ca:	4a e2       	ldi	r20, 0x2A	; 42
     7cc:	64 ed       	ldi	r22, 0xD4	; 212
     7ce:	09 95       	icall
     7d0:	08 2b       	or	r16, r24
     7d2:	88 ad       	ldd	r24, Y+56	; 0x38
     7d4:	99 ad       	ldd	r25, Y+57	; 0x39
     7d6:	dc 01       	movw	r26, r24
     7d8:	ed 91       	ld	r30, X+
     7da:	fc 91       	ld	r31, X
     7dc:	06 84       	ldd	r0, Z+14	; 0x0e
     7de:	f7 85       	ldd	r31, Z+15	; 0x0f
     7e0:	e0 2d       	mov	r30, r0
     7e2:	4d e2       	ldi	r20, 0x2D	; 45
     7e4:	64 ed       	ldi	r22, 0xD4	; 212
     7e6:	09 95       	icall
     7e8:	90 e0       	ldi	r25, 0x00	; 0
     7ea:	f8 2e       	mov	r15, r24
     7ec:	ee 24       	eor	r14, r14
     7ee:	88 ad       	ldd	r24, Y+56	; 0x38
     7f0:	99 ad       	ldd	r25, Y+57	; 0x39
     7f2:	dc 01       	movw	r26, r24
     7f4:	ed 91       	ld	r30, X+
     7f6:	fc 91       	ld	r31, X
     7f8:	06 84       	ldd	r0, Z+14	; 0x0e
     7fa:	f7 85       	ldd	r31, Z+15	; 0x0f
     7fc:	e0 2d       	mov	r30, r0
     7fe:	4c e2       	ldi	r20, 0x2C	; 44
     800:	64 ed       	ldi	r22, 0xD4	; 212
     802:	09 95       	icall
     804:	a6 01       	movw	r20, r12
     806:	dd 0c       	add	r13, r13
     808:	66 0b       	sbc	r22, r22
     80a:	77 0b       	sbc	r23, r23
     80c:	48 83       	st	Y, r20
     80e:	59 83       	std	Y+1, r21	; 0x01
     810:	6a 83       	std	Y+2, r22	; 0x02
     812:	7b 83       	std	Y+3, r23	; 0x03
     814:	01 2e       	mov	r0, r17
     816:	00 0c       	add	r0, r0
     818:	22 0b       	sbc	r18, r18
     81a:	33 0b       	sbc	r19, r19
     81c:	0c 83       	std	Y+4, r16	; 0x04
     81e:	1d 83       	std	Y+5, r17	; 0x05
     820:	2e 83       	std	Y+6, r18	; 0x06
     822:	3f 83       	std	Y+7, r19	; 0x07
     824:	97 01       	movw	r18, r14
     826:	28 2b       	or	r18, r24
     828:	c9 01       	movw	r24, r18
     82a:	09 2e       	mov	r0, r25
     82c:	00 0c       	add	r0, r0
     82e:	aa 0b       	sbc	r26, r26
     830:	bb 0b       	sbc	r27, r27
     832:	88 87       	std	Y+8, r24	; 0x08
     834:	99 87       	std	Y+9, r25	; 0x09
     836:	aa 87       	std	Y+10, r26	; 0x0a
     838:	bb 87       	std	Y+11, r27	; 0x0b
     83a:	df 91       	pop	r29
     83c:	cf 91       	pop	r28
     83e:	1f 91       	pop	r17
     840:	0f 91       	pop	r16
     842:	ff 90       	pop	r15
     844:	ef 90       	pop	r14
     846:	df 90       	pop	r13
     848:	cf 90       	pop	r12
     84a:	bf 90       	pop	r11
     84c:	af 90       	pop	r10
     84e:	9f 90       	pop	r9
     850:	8f 90       	pop	r8
     852:	7f 90       	pop	r7
     854:	6f 90       	pop	r6
     856:	5f 90       	pop	r5
     858:	4f 90       	pop	r4
     85a:	08 95       	ret

0000085c <_ZN4Gyro4initEP13I2C_Interface>:
     85c:	cf 92       	push	r12
     85e:	df 92       	push	r13
     860:	ef 92       	push	r14
     862:	ff 92       	push	r15
     864:	cf 93       	push	r28
     866:	df 93       	push	r29
     868:	ec 01       	movw	r28, r24
     86a:	cb 01       	movw	r24, r22
     86c:	79 af       	std	Y+57, r23	; 0x39
     86e:	68 af       	std	Y+56, r22	; 0x38
     870:	1c 86       	std	Y+12, r1	; 0x0c
     872:	1d 86       	std	Y+13, r1	; 0x0d
     874:	1e 86       	std	Y+14, r1	; 0x0e
     876:	1f 86       	std	Y+15, r1	; 0x0f
     878:	18 8a       	std	Y+16, r1	; 0x10
     87a:	19 8a       	std	Y+17, r1	; 0x11
     87c:	1a 8a       	std	Y+18, r1	; 0x12
     87e:	1b 8a       	std	Y+19, r1	; 0x13
     880:	1c 8a       	std	Y+20, r1	; 0x14
     882:	1d 8a       	std	Y+21, r1	; 0x15
     884:	1e 8a       	std	Y+22, r1	; 0x16
     886:	1f 8a       	std	Y+23, r1	; 0x17
     888:	1c a2       	std	Y+36, r1	; 0x24
     88a:	1d a2       	std	Y+37, r1	; 0x25
     88c:	1e a2       	std	Y+38, r1	; 0x26
     88e:	1f a2       	std	Y+39, r1	; 0x27
     890:	18 a6       	std	Y+40, r1	; 0x28
     892:	19 a6       	std	Y+41, r1	; 0x29
     894:	1a a6       	std	Y+42, r1	; 0x2a
     896:	1b a6       	std	Y+43, r1	; 0x2b
     898:	1c a6       	std	Y+44, r1	; 0x2c
     89a:	1d a6       	std	Y+45, r1	; 0x2d
     89c:	1e a6       	std	Y+46, r1	; 0x2e
     89e:	1f a6       	std	Y+47, r1	; 0x2f
     8a0:	18 8e       	std	Y+24, r1	; 0x18
     8a2:	19 8e       	std	Y+25, r1	; 0x19
     8a4:	1a 8e       	std	Y+26, r1	; 0x1a
     8a6:	1b 8e       	std	Y+27, r1	; 0x1b
     8a8:	1c 8e       	std	Y+28, r1	; 0x1c
     8aa:	1d 8e       	std	Y+29, r1	; 0x1d
     8ac:	1e 8e       	std	Y+30, r1	; 0x1e
     8ae:	1f 8e       	std	Y+31, r1	; 0x1f
     8b0:	18 a2       	std	Y+32, r1	; 0x20
     8b2:	19 a2       	std	Y+33, r1	; 0x21
     8b4:	1a a2       	std	Y+34, r1	; 0x22
     8b6:	1b a2       	std	Y+35, r1	; 0x23
     8b8:	20 e0       	ldi	r18, 0x00	; 0
     8ba:	30 e0       	ldi	r19, 0x00	; 0
     8bc:	2f 5f       	subi	r18, 0xFF	; 255
     8be:	3f 4f       	sbci	r19, 0xFF	; 255
     8c0:	21 31       	cpi	r18, 0x11	; 17
     8c2:	47 e2       	ldi	r20, 0x27	; 39
     8c4:	34 07       	cpc	r19, r20
     8c6:	11 f0       	breq	.+4      	; 0x8cc <_ZN4Gyro4initEP13I2C_Interface+0x70>
     8c8:	00 00       	nop
     8ca:	f8 cf       	rjmp	.-16     	; 0x8bc <_ZN4Gyro4initEP13I2C_Interface+0x60>
     8cc:	18 aa       	std	Y+48, r1	; 0x30
     8ce:	19 aa       	std	Y+49, r1	; 0x31
     8d0:	1a aa       	std	Y+50, r1	; 0x32
     8d2:	1b aa       	std	Y+51, r1	; 0x33
     8d4:	dc 01       	movw	r26, r24
     8d6:	ed 91       	ld	r30, X+
     8d8:	fc 91       	ld	r31, X
     8da:	06 84       	ldd	r0, Z+14	; 0x0e
     8dc:	f7 85       	ldd	r31, Z+15	; 0x0f
     8de:	e0 2d       	mov	r30, r0
     8e0:	4f e0       	ldi	r20, 0x0F	; 15
     8e2:	64 ed       	ldi	r22, 0xD4	; 212
     8e4:	09 95       	icall
     8e6:	88 36       	cpi	r24, 0x68	; 104
     8e8:	41 f4       	brne	.+16     	; 0x8fa <_ZN4Gyro4initEP13I2C_Interface+0x9e>
     8ea:	81 e0       	ldi	r24, 0x01	; 1
     8ec:	90 e0       	ldi	r25, 0x00	; 0
     8ee:	a0 e0       	ldi	r26, 0x00	; 0
     8f0:	b0 e0       	ldi	r27, 0x00	; 0
     8f2:	88 ab       	std	Y+48, r24	; 0x30
     8f4:	99 ab       	std	Y+49, r25	; 0x31
     8f6:	aa ab       	std	Y+50, r26	; 0x32
     8f8:	bb ab       	std	Y+51, r27	; 0x33
     8fa:	88 ad       	ldd	r24, Y+56	; 0x38
     8fc:	99 ad       	ldd	r25, Y+57	; 0x39
     8fe:	dc 01       	movw	r26, r24
     900:	ed 91       	ld	r30, X+
     902:	fc 91       	ld	r31, X
     904:	00 84       	ldd	r0, Z+8	; 0x08
     906:	f1 85       	ldd	r31, Z+9	; 0x09
     908:	e0 2d       	mov	r30, r0
     90a:	28 ea       	ldi	r18, 0xA8	; 168
     90c:	40 e1       	ldi	r20, 0x10	; 16
     90e:	64 ed       	ldi	r22, 0xD4	; 212
     910:	09 95       	icall
     912:	88 ad       	ldd	r24, Y+56	; 0x38
     914:	99 ad       	ldd	r25, Y+57	; 0x39
     916:	dc 01       	movw	r26, r24
     918:	ed 91       	ld	r30, X+
     91a:	fc 91       	ld	r31, X
     91c:	00 84       	ldd	r0, Z+8	; 0x08
     91e:	f1 85       	ldd	r31, Z+9	; 0x09
     920:	e0 2d       	mov	r30, r0
     922:	28 e3       	ldi	r18, 0x38	; 56
     924:	4e e1       	ldi	r20, 0x1E	; 30
     926:	64 ed       	ldi	r22, 0xD4	; 212
     928:	09 95       	icall
     92a:	88 ad       	ldd	r24, Y+56	; 0x38
     92c:	99 ad       	ldd	r25, Y+57	; 0x39
     92e:	dc 01       	movw	r26, r24
     930:	ed 91       	ld	r30, X+
     932:	fc 91       	ld	r31, X
     934:	00 84       	ldd	r0, Z+8	; 0x08
     936:	f1 85       	ldd	r31, Z+9	; 0x09
     938:	e0 2d       	mov	r30, r0
     93a:	20 e0       	ldi	r18, 0x00	; 0
     93c:	4e e2       	ldi	r20, 0x2E	; 46
     93e:	64 ed       	ldi	r22, 0xD4	; 212
     940:	09 95       	icall
     942:	88 ad       	ldd	r24, Y+56	; 0x38
     944:	99 ad       	ldd	r25, Y+57	; 0x39
     946:	dc 01       	movw	r26, r24
     948:	ed 91       	ld	r30, X+
     94a:	fc 91       	ld	r31, X
     94c:	00 84       	ldd	r0, Z+8	; 0x08
     94e:	f1 85       	ldd	r31, Z+9	; 0x09
     950:	e0 2d       	mov	r30, r0
     952:	20 e0       	ldi	r18, 0x00	; 0
     954:	42 e1       	ldi	r20, 0x12	; 18
     956:	64 ed       	ldi	r22, 0xD4	; 212
     958:	09 95       	icall
     95a:	88 ad       	ldd	r24, Y+56	; 0x38
     95c:	99 ad       	ldd	r25, Y+57	; 0x39
     95e:	dc 01       	movw	r26, r24
     960:	ed 91       	ld	r30, X+
     962:	fc 91       	ld	r31, X
     964:	00 84       	ldd	r0, Z+8	; 0x08
     966:	f1 85       	ldd	r31, Z+9	; 0x09
     968:	e0 2d       	mov	r30, r0
     96a:	20 e6       	ldi	r18, 0x60	; 96
     96c:	40 e2       	ldi	r20, 0x20	; 32
     96e:	64 ed       	ldi	r22, 0xD4	; 212
     970:	09 95       	icall
     972:	88 ad       	ldd	r24, Y+56	; 0x38
     974:	99 ad       	ldd	r25, Y+57	; 0x39
     976:	dc 01       	movw	r26, r24
     978:	ed 91       	ld	r30, X+
     97a:	fc 91       	ld	r31, X
     97c:	00 84       	ldd	r0, Z+8	; 0x08
     97e:	f1 85       	ldd	r31, Z+9	; 0x09
     980:	e0 2d       	mov	r30, r0
     982:	28 e3       	ldi	r18, 0x38	; 56
     984:	4f e1       	ldi	r20, 0x1F	; 31
     986:	64 ed       	ldi	r22, 0xD4	; 212
     988:	09 95       	icall
     98a:	80 e0       	ldi	r24, 0x00	; 0
     98c:	90 e0       	ldi	r25, 0x00	; 0
     98e:	01 96       	adiw	r24, 0x01	; 1
     990:	81 31       	cpi	r24, 0x11	; 17
     992:	b7 e2       	ldi	r27, 0x27	; 39
     994:	9b 07       	cpc	r25, r27
     996:	11 f0       	breq	.+4      	; 0x99c <_ZN4Gyro4initEP13I2C_Interface+0x140>
     998:	00 00       	nop
     99a:	f9 cf       	rjmp	.-14     	; 0x98e <_ZN4Gyro4initEP13I2C_Interface+0x132>
     99c:	60 e0       	ldi	r22, 0x00	; 0
     99e:	ce 01       	movw	r24, r28
     9a0:	0e 94 a2 02 	call	0x544	; 0x544 <_ZN4Gyro4readEb>
     9a4:	1c aa       	std	Y+52, r1	; 0x34
     9a6:	1d aa       	std	Y+53, r1	; 0x35
     9a8:	1e aa       	std	Y+54, r1	; 0x36
     9aa:	1f aa       	std	Y+55, r1	; 0x37
     9ac:	e1 2c       	mov	r14, r1
     9ae:	f1 2c       	mov	r15, r1
     9b0:	61 e0       	ldi	r22, 0x01	; 1
     9b2:	ce 01       	movw	r24, r28
     9b4:	0e 94 a2 02 	call	0x544	; 0x544 <_ZN4Gyro4readEb>
     9b8:	80 e0       	ldi	r24, 0x00	; 0
     9ba:	90 e0       	ldi	r25, 0x00	; 0
     9bc:	01 96       	adiw	r24, 0x01	; 1
     9be:	89 3e       	cpi	r24, 0xE9	; 233
     9c0:	23 e0       	ldi	r18, 0x03	; 3
     9c2:	92 07       	cpc	r25, r18
     9c4:	11 f0       	breq	.+4      	; 0x9ca <_ZN4Gyro4initEP13I2C_Interface+0x16e>
     9c6:	00 00       	nop
     9c8:	f9 cf       	rjmp	.-14     	; 0x9bc <_ZN4Gyro4initEP13I2C_Interface+0x160>
     9ca:	4f ef       	ldi	r20, 0xFF	; 255
     9cc:	e4 1a       	sub	r14, r20
     9ce:	f4 0a       	sbc	r15, r20
     9d0:	88 ec       	ldi	r24, 0xC8	; 200
     9d2:	e8 16       	cp	r14, r24
     9d4:	f1 04       	cpc	r15, r1
     9d6:	61 f7       	brne	.-40     	; 0x9b0 <_ZN4Gyro4initEP13I2C_Interface+0x154>
     9d8:	6c a1       	ldd	r22, Y+36	; 0x24
     9da:	7d a1       	ldd	r23, Y+37	; 0x25
     9dc:	8e a1       	ldd	r24, Y+38	; 0x26
     9de:	9f a1       	ldd	r25, Y+39	; 0x27
     9e0:	28 ec       	ldi	r18, 0xC8	; 200
     9e2:	c2 2e       	mov	r12, r18
     9e4:	d1 2c       	mov	r13, r1
     9e6:	e1 2c       	mov	r14, r1
     9e8:	f1 2c       	mov	r15, r1
     9ea:	a7 01       	movw	r20, r14
     9ec:	96 01       	movw	r18, r12
     9ee:	0e 94 d6 08 	call	0x11ac	; 0x11ac <__divmodsi4>
     9f2:	2c a3       	std	Y+36, r18	; 0x24
     9f4:	3d a3       	std	Y+37, r19	; 0x25
     9f6:	4e a3       	std	Y+38, r20	; 0x26
     9f8:	5f a3       	std	Y+39, r21	; 0x27
     9fa:	68 a5       	ldd	r22, Y+40	; 0x28
     9fc:	79 a5       	ldd	r23, Y+41	; 0x29
     9fe:	8a a5       	ldd	r24, Y+42	; 0x2a
     a00:	9b a5       	ldd	r25, Y+43	; 0x2b
     a02:	a7 01       	movw	r20, r14
     a04:	96 01       	movw	r18, r12
     a06:	0e 94 d6 08 	call	0x11ac	; 0x11ac <__divmodsi4>
     a0a:	28 a7       	std	Y+40, r18	; 0x28
     a0c:	39 a7       	std	Y+41, r19	; 0x29
     a0e:	4a a7       	std	Y+42, r20	; 0x2a
     a10:	5b a7       	std	Y+43, r21	; 0x2b
     a12:	6c a5       	ldd	r22, Y+44	; 0x2c
     a14:	7d a5       	ldd	r23, Y+45	; 0x2d
     a16:	8e a5       	ldd	r24, Y+46	; 0x2e
     a18:	9f a5       	ldd	r25, Y+47	; 0x2f
     a1a:	a7 01       	movw	r20, r14
     a1c:	96 01       	movw	r18, r12
     a1e:	0e 94 d6 08 	call	0x11ac	; 0x11ac <__divmodsi4>
     a22:	2c a7       	std	Y+44, r18	; 0x2c
     a24:	3d a7       	std	Y+45, r19	; 0x2d
     a26:	4e a7       	std	Y+46, r20	; 0x2e
     a28:	5f a7       	std	Y+47, r21	; 0x2f
     a2a:	18 8e       	std	Y+24, r1	; 0x18
     a2c:	19 8e       	std	Y+25, r1	; 0x19
     a2e:	1a 8e       	std	Y+26, r1	; 0x1a
     a30:	1b 8e       	std	Y+27, r1	; 0x1b
     a32:	1c 8e       	std	Y+28, r1	; 0x1c
     a34:	1d 8e       	std	Y+29, r1	; 0x1d
     a36:	1e 8e       	std	Y+30, r1	; 0x1e
     a38:	1f 8e       	std	Y+31, r1	; 0x1f
     a3a:	18 a2       	std	Y+32, r1	; 0x20
     a3c:	19 a2       	std	Y+33, r1	; 0x21
     a3e:	1a a2       	std	Y+34, r1	; 0x22
     a40:	1b a2       	std	Y+35, r1	; 0x23
     a42:	18 82       	st	Y, r1
     a44:	19 82       	std	Y+1, r1	; 0x01
     a46:	1a 82       	std	Y+2, r1	; 0x02
     a48:	1b 82       	std	Y+3, r1	; 0x03
     a4a:	1c 82       	std	Y+4, r1	; 0x04
     a4c:	1d 82       	std	Y+5, r1	; 0x05
     a4e:	1e 82       	std	Y+6, r1	; 0x06
     a50:	1f 82       	std	Y+7, r1	; 0x07
     a52:	18 86       	std	Y+8, r1	; 0x08
     a54:	19 86       	std	Y+9, r1	; 0x09
     a56:	1a 86       	std	Y+10, r1	; 0x0a
     a58:	1b 86       	std	Y+11, r1	; 0x0b
     a5a:	df 91       	pop	r29
     a5c:	cf 91       	pop	r28
     a5e:	ff 90       	pop	r15
     a60:	ef 90       	pop	r14
     a62:	df 90       	pop	r13
     a64:	cf 90       	pop	r12
     a66:	08 95       	ret

00000a68 <_GLOBAL__sub_I_terminal>:
     a68:	8c ea       	ldi	r24, 0xAC	; 172
     a6a:	90 e0       	ldi	r25, 0x00	; 0
     a6c:	0c 94 83 05 	jmp	0xb06	; 0xb06 <_ZN5USARTC1Ev>

00000a70 <_GLOBAL__sub_D_terminal>:
     a70:	8c ea       	ldi	r24, 0xAC	; 172
     a72:	90 e0       	ldi	r25, 0x00	; 0
     a74:	0c 94 8d 05 	jmp	0xb1a	; 0xb1a <_ZN5USARTD1Ev>

00000a78 <_ZdlPv>:
     a78:	0c 94 5f 0b 	jmp	0x16be	; 0x16be <free>

00000a7c <_ZN5MotorC1Ev>:
     a7c:	80 ef       	ldi	r24, 0xF0	; 240
     a7e:	81 bb       	out	0x11, r24	; 17
     a80:	95 98       	cbi	0x12, 5	; 18
     a82:	81 ea       	ldi	r24, 0xA1	; 161
     a84:	8f bd       	out	0x2f, r24	; 47
     a86:	81 e0       	ldi	r24, 0x01	; 1
     a88:	8e bd       	out	0x2e, r24	; 46
     a8a:	1b bc       	out	0x2b, r1	; 43
     a8c:	1a bc       	out	0x2a, r1	; 42
     a8e:	19 bc       	out	0x29, r1	; 41
     a90:	18 bc       	out	0x28, r1	; 40
     a92:	08 95       	ret

00000a94 <_ZN5MotorD1Ev>:
     a94:	08 95       	ret

00000a96 <_ZN5Motor3runEii>:
     a96:	6f 3f       	cpi	r22, 0xFF	; 255
     a98:	71 05       	cpc	r23, r1
     a9a:	09 f0       	breq	.+2      	; 0xa9e <_ZN5Motor3runEii+0x8>
     a9c:	3c f4       	brge	.+14     	; 0xaac <_ZN5Motor3runEii+0x16>
     a9e:	61 30       	cpi	r22, 0x01	; 1
     aa0:	8f ef       	ldi	r24, 0xFF	; 255
     aa2:	78 07       	cpc	r23, r24
     aa4:	2c f4       	brge	.+10     	; 0xab0 <_ZN5Motor3runEii+0x1a>
     aa6:	61 e0       	ldi	r22, 0x01	; 1
     aa8:	7f ef       	ldi	r23, 0xFF	; 255
     aaa:	02 c0       	rjmp	.+4      	; 0xab0 <_ZN5Motor3runEii+0x1a>
     aac:	6f ef       	ldi	r22, 0xFF	; 255
     aae:	70 e0       	ldi	r23, 0x00	; 0
     ab0:	4f 3f       	cpi	r20, 0xFF	; 255
     ab2:	51 05       	cpc	r21, r1
     ab4:	09 f0       	breq	.+2      	; 0xab8 <_ZN5Motor3runEii+0x22>
     ab6:	44 f4       	brge	.+16     	; 0xac8 <_ZN5Motor3runEii+0x32>
     ab8:	41 30       	cpi	r20, 0x01	; 1
     aba:	8f ef       	ldi	r24, 0xFF	; 255
     abc:	58 07       	cpc	r21, r24
     abe:	6c f0       	brlt	.+26     	; 0xada <_ZN5Motor3runEii+0x44>
     ac0:	14 16       	cp	r1, r20
     ac2:	15 06       	cpc	r1, r21
     ac4:	1c f0       	brlt	.+6      	; 0xacc <_ZN5Motor3runEii+0x36>
     ac6:	05 c0       	rjmp	.+10     	; 0xad2 <_ZN5Motor3runEii+0x3c>
     ac8:	4f ef       	ldi	r20, 0xFF	; 255
     aca:	50 e0       	ldi	r21, 0x00	; 0
     acc:	4a bd       	out	0x2a, r20	; 42
     ace:	96 9a       	sbi	0x12, 6	; 18
     ad0:	0b c0       	rjmp	.+22     	; 0xae8 <_ZN5Motor3runEii+0x52>
     ad2:	41 15       	cp	r20, r1
     ad4:	51 05       	cpc	r21, r1
     ad6:	39 f0       	breq	.+14     	; 0xae6 <_ZN5Motor3runEii+0x50>
     ad8:	02 c0       	rjmp	.+4      	; 0xade <_ZN5Motor3runEii+0x48>
     ada:	41 e0       	ldi	r20, 0x01	; 1
     adc:	5f ef       	ldi	r21, 0xFF	; 255
     ade:	41 95       	neg	r20
     ae0:	4a bd       	out	0x2a, r20	; 42
     ae2:	96 98       	cbi	0x12, 6	; 18
     ae4:	01 c0       	rjmp	.+2      	; 0xae8 <_ZN5Motor3runEii+0x52>
     ae6:	1a bc       	out	0x2a, r1	; 42
     ae8:	16 16       	cp	r1, r22
     aea:	17 06       	cpc	r1, r23
     aec:	1c f4       	brge	.+6      	; 0xaf4 <_ZN5Motor3runEii+0x5e>
     aee:	68 bd       	out	0x28, r22	; 40
     af0:	97 98       	cbi	0x12, 7	; 18
     af2:	08 95       	ret
     af4:	61 15       	cp	r22, r1
     af6:	71 05       	cpc	r23, r1
     af8:	21 f0       	breq	.+8      	; 0xb02 <_ZN5Motor3runEii+0x6c>
     afa:	61 95       	neg	r22
     afc:	68 bd       	out	0x28, r22	; 40
     afe:	97 9a       	sbi	0x12, 7	; 18
     b00:	08 95       	ret
     b02:	18 bc       	out	0x28, r1	; 40
     b04:	08 95       	ret

00000b06 <_ZN5USARTC1Ev>:
     b06:	10 bc       	out	0x20, r1	; 32
     b08:	80 e4       	ldi	r24, 0x40	; 64
     b0a:	89 b9       	out	0x09, r24	; 9
     b0c:	80 b5       	in	r24, 0x20	; 32
     b0e:	86 68       	ori	r24, 0x86	; 134
     b10:	80 bd       	out	0x20, r24	; 32
     b12:	8a b1       	in	r24, 0x0a	; 10
     b14:	88 61       	ori	r24, 0x18	; 24
     b16:	8a b9       	out	0x0a, r24	; 10
     b18:	08 95       	ret

00000b1a <_ZN5USARTD1Ev>:
     b1a:	08 95       	ret

00000b1c <_ZN5TimerC1Ev>:
     b1c:	ee ea       	ldi	r30, 0xAE	; 174
     b1e:	f0 e0       	ldi	r31, 0x00	; 0
     b20:	11 82       	std	Z+1, r1	; 0x01
     b22:	10 82       	st	Z, r1
     b24:	13 82       	std	Z+3, r1	; 0x03
     b26:	12 82       	std	Z+2, r1	; 0x02
     b28:	15 82       	std	Z+5, r1	; 0x05
     b2a:	14 82       	std	Z+4, r1	; 0x04
     b2c:	16 82       	std	Z+6, r1	; 0x06
     b2e:	37 96       	adiw	r30, 0x07	; 7
     b30:	80 e0       	ldi	r24, 0x00	; 0
     b32:	e6 3e       	cpi	r30, 0xE6	; 230
     b34:	f8 07       	cpc	r31, r24
     b36:	a1 f7       	brne	.-24     	; 0xb20 <_ZN5TimerC1Ev+0x4>
     b38:	83 b7       	in	r24, 0x33	; 51
     b3a:	88 60       	ori	r24, 0x08	; 8
     b3c:	83 bf       	out	0x33, r24	; 51
     b3e:	8b e9       	ldi	r24, 0x9B	; 155
     b40:	8c bf       	out	0x3c, r24	; 60
     b42:	83 e0       	ldi	r24, 0x03	; 3
     b44:	83 bf       	out	0x33, r24	; 51
     b46:	89 b7       	in	r24, 0x39	; 57
     b48:	82 60       	ori	r24, 0x02	; 2
     b4a:	89 bf       	out	0x39, r24	; 57
     b4c:	78 94       	sei
     b4e:	08 95       	ret

00000b50 <_ZN5Timer8add_taskEP4Taskj>:
     b50:	f8 94       	cli
     b52:	ee ea       	ldi	r30, 0xAE	; 174
     b54:	f0 e0       	ldi	r31, 0x00	; 0
     b56:	80 e0       	ldi	r24, 0x00	; 0
     b58:	90 e0       	ldi	r25, 0x00	; 0
     b5a:	20 81       	ld	r18, Z
     b5c:	31 81       	ldd	r19, Z+1	; 0x01
     b5e:	23 2b       	or	r18, r19
     b60:	81 f4       	brne	.+32     	; 0xb82 <_ZN5Timer8add_taskEP4Taskj+0x32>
     b62:	27 e0       	ldi	r18, 0x07	; 7
     b64:	28 9f       	mul	r18, r24
     b66:	f0 01       	movw	r30, r0
     b68:	29 9f       	mul	r18, r25
     b6a:	f0 0d       	add	r31, r0
     b6c:	11 24       	eor	r1, r1
     b6e:	e2 55       	subi	r30, 0x52	; 82
     b70:	ff 4f       	sbci	r31, 0xFF	; 255
     b72:	71 83       	std	Z+1, r23	; 0x01
     b74:	60 83       	st	Z, r22
     b76:	53 83       	std	Z+3, r21	; 0x03
     b78:	42 83       	std	Z+2, r20	; 0x02
     b7a:	55 83       	std	Z+5, r21	; 0x05
     b7c:	44 83       	std	Z+4, r20	; 0x04
     b7e:	16 82       	std	Z+6, r1	; 0x06
     b80:	07 c0       	rjmp	.+14     	; 0xb90 <_ZN5Timer8add_taskEP4Taskj+0x40>
     b82:	01 96       	adiw	r24, 0x01	; 1
     b84:	37 96       	adiw	r30, 0x07	; 7
     b86:	88 30       	cpi	r24, 0x08	; 8
     b88:	91 05       	cpc	r25, r1
     b8a:	39 f7       	brne	.-50     	; 0xb5a <_ZN5Timer8add_taskEP4Taskj+0xa>
     b8c:	8f ef       	ldi	r24, 0xFF	; 255
     b8e:	9f ef       	ldi	r25, 0xFF	; 255
     b90:	78 94       	sei
     b92:	08 95       	ret

00000b94 <_ZN5Timer4mainEv>:
     b94:	cf 93       	push	r28
     b96:	df 93       	push	r29
     b98:	ce ea       	ldi	r28, 0xAE	; 174
     b9a:	d0 e0       	ldi	r29, 0x00	; 0
     b9c:	88 81       	ld	r24, Y
     b9e:	99 81       	ldd	r25, Y+1	; 0x01
     ba0:	00 97       	sbiw	r24, 0x00	; 0
     ba2:	59 f0       	breq	.+22     	; 0xbba <_ZN5Timer4mainEv+0x26>
     ba4:	2e 81       	ldd	r18, Y+6	; 0x06
     ba6:	22 23       	and	r18, r18
     ba8:	41 f0       	breq	.+16     	; 0xbba <_ZN5Timer4mainEv+0x26>
     baa:	1e 82       	std	Y+6, r1	; 0x06
     bac:	dc 01       	movw	r26, r24
     bae:	ed 91       	ld	r30, X+
     bb0:	fc 91       	ld	r31, X
     bb2:	04 80       	ldd	r0, Z+4	; 0x04
     bb4:	f5 81       	ldd	r31, Z+5	; 0x05
     bb6:	e0 2d       	mov	r30, r0
     bb8:	09 95       	icall
     bba:	27 96       	adiw	r28, 0x07	; 7
     bbc:	b0 e0       	ldi	r27, 0x00	; 0
     bbe:	c6 3e       	cpi	r28, 0xE6	; 230
     bc0:	db 07       	cpc	r29, r27
     bc2:	61 f7       	brne	.-40     	; 0xb9c <_ZN5Timer4mainEv+0x8>
     bc4:	df 91       	pop	r29
     bc6:	cf 91       	pop	r28
     bc8:	08 95       	ret

00000bca <__vector_19>:
     bca:	1f 92       	push	r1
     bcc:	0f 92       	push	r0
     bce:	0f b6       	in	r0, 0x3f	; 63
     bd0:	0f 92       	push	r0
     bd2:	11 24       	eor	r1, r1
     bd4:	8f 93       	push	r24
     bd6:	9f 93       	push	r25
     bd8:	af 93       	push	r26
     bda:	bf 93       	push	r27
     bdc:	ef 93       	push	r30
     bde:	ff 93       	push	r31
     be0:	ee ea       	ldi	r30, 0xAE	; 174
     be2:	f0 e0       	ldi	r31, 0x00	; 0
     be4:	84 81       	ldd	r24, Z+4	; 0x04
     be6:	95 81       	ldd	r25, Z+5	; 0x05
     be8:	00 97       	sbiw	r24, 0x00	; 0
     bea:	21 f0       	breq	.+8      	; 0xbf4 <__vector_19+0x2a>
     bec:	01 97       	sbiw	r24, 0x01	; 1
     bee:	95 83       	std	Z+5, r25	; 0x05
     bf0:	84 83       	std	Z+4, r24	; 0x04
     bf2:	09 c0       	rjmp	.+18     	; 0xc06 <__vector_19+0x3c>
     bf4:	82 81       	ldd	r24, Z+2	; 0x02
     bf6:	93 81       	ldd	r25, Z+3	; 0x03
     bf8:	95 83       	std	Z+5, r25	; 0x05
     bfa:	84 83       	std	Z+4, r24	; 0x04
     bfc:	86 81       	ldd	r24, Z+6	; 0x06
     bfe:	8f 3f       	cpi	r24, 0xFF	; 255
     c00:	11 f0       	breq	.+4      	; 0xc06 <__vector_19+0x3c>
     c02:	8f 5f       	subi	r24, 0xFF	; 255
     c04:	86 83       	std	Z+6, r24	; 0x06
     c06:	37 96       	adiw	r30, 0x07	; 7
     c08:	80 e0       	ldi	r24, 0x00	; 0
     c0a:	e6 3e       	cpi	r30, 0xE6	; 230
     c0c:	f8 07       	cpc	r31, r24
     c0e:	51 f7       	brne	.-44     	; 0xbe4 <__vector_19+0x1a>
     c10:	80 91 e6 00 	lds	r24, 0x00E6	; 0x8000e6 <g_rt_time>
     c14:	90 91 e7 00 	lds	r25, 0x00E7	; 0x8000e7 <g_rt_time+0x1>
     c18:	a0 91 e8 00 	lds	r26, 0x00E8	; 0x8000e8 <g_rt_time+0x2>
     c1c:	b0 91 e9 00 	lds	r27, 0x00E9	; 0x8000e9 <g_rt_time+0x3>
     c20:	01 96       	adiw	r24, 0x01	; 1
     c22:	a1 1d       	adc	r26, r1
     c24:	b1 1d       	adc	r27, r1
     c26:	80 93 e6 00 	sts	0x00E6, r24	; 0x8000e6 <g_rt_time>
     c2a:	90 93 e7 00 	sts	0x00E7, r25	; 0x8000e7 <g_rt_time+0x1>
     c2e:	a0 93 e8 00 	sts	0x00E8, r26	; 0x8000e8 <g_rt_time+0x2>
     c32:	b0 93 e9 00 	sts	0x00E9, r27	; 0x8000e9 <g_rt_time+0x3>
     c36:	ff 91       	pop	r31
     c38:	ef 91       	pop	r30
     c3a:	bf 91       	pop	r27
     c3c:	af 91       	pop	r26
     c3e:	9f 91       	pop	r25
     c40:	8f 91       	pop	r24
     c42:	0f 90       	pop	r0
     c44:	0f be       	out	0x3f, r0	; 63
     c46:	0f 90       	pop	r0
     c48:	1f 90       	pop	r1
     c4a:	18 95       	reti

00000c4c <_GLOBAL__sub_I_g_rt_time>:
     c4c:	8d ea       	ldi	r24, 0xAD	; 173
     c4e:	90 e0       	ldi	r25, 0x00	; 0
     c50:	0c 94 8e 05 	jmp	0xb1c	; 0xb1c <_ZN5TimerC1Ev>

00000c54 <_ZN10LEDDisplayD1Ev>:
     c54:	08 95       	ret

00000c56 <_ZN10LEDDisplay4mainEv>:
     c56:	fc 01       	movw	r30, r24
     c58:	82 81       	ldd	r24, Z+2	; 0x02
     c5a:	88 23       	and	r24, r24
     c5c:	19 f0       	breq	.+6      	; 0xc64 <_ZN10LEDDisplay4mainEv+0xe>
     c5e:	81 30       	cpi	r24, 0x01	; 1
     c60:	51 f0       	breq	.+20     	; 0xc76 <_ZN10LEDDisplay4mainEv+0x20>
     c62:	08 95       	ret
     c64:	88 b3       	in	r24, 0x18	; 24
     c66:	83 60       	ori	r24, 0x03	; 3
     c68:	88 bb       	out	0x18, r24	; 24
     c6a:	83 81       	ldd	r24, Z+3	; 0x03
     c6c:	85 bb       	out	0x15, r24	; 21
     c6e:	c0 98       	cbi	0x18, 0	; 24
     c70:	81 e0       	ldi	r24, 0x01	; 1
     c72:	82 83       	std	Z+2, r24	; 0x02
     c74:	08 95       	ret
     c76:	88 b3       	in	r24, 0x18	; 24
     c78:	83 60       	ori	r24, 0x03	; 3
     c7a:	88 bb       	out	0x18, r24	; 24
     c7c:	84 81       	ldd	r24, Z+4	; 0x04
     c7e:	85 bb       	out	0x15, r24	; 21
     c80:	c1 98       	cbi	0x18, 1	; 24
     c82:	12 82       	std	Z+2, r1	; 0x02
     c84:	08 95       	ret

00000c86 <_ZN10LEDDisplayD0Ev>:
     c86:	0c 94 3c 05 	jmp	0xa78	; 0xa78 <_ZdlPv>

00000c8a <_ZN10LEDDisplayC1Ev>:
     c8a:	fc 01       	movw	r30, r24
     c8c:	8e e8       	ldi	r24, 0x8E	; 142
     c8e:	90 e0       	ldi	r25, 0x00	; 0
     c90:	91 83       	std	Z+1, r25	; 0x01
     c92:	80 83       	st	Z, r24
     c94:	12 82       	std	Z+2, r1	; 0x02
     c96:	8f ef       	ldi	r24, 0xFF	; 255
     c98:	83 83       	std	Z+3, r24	; 0x03
     c9a:	84 83       	std	Z+4, r24	; 0x04
     c9c:	97 b3       	in	r25, 0x17	; 23
     c9e:	93 60       	ori	r25, 0x03	; 3
     ca0:	97 bb       	out	0x17, r25	; 23
     ca2:	98 b3       	in	r25, 0x18	; 24
     ca4:	93 60       	ori	r25, 0x03	; 3
     ca6:	98 bb       	out	0x18, r25	; 24
     ca8:	85 bb       	out	0x15, r24	; 21
     caa:	84 bb       	out	0x14, r24	; 20
     cac:	45 e0       	ldi	r20, 0x05	; 5
     cae:	50 e0       	ldi	r21, 0x00	; 0
     cb0:	bf 01       	movw	r22, r30
     cb2:	8d ea       	ldi	r24, 0xAD	; 173
     cb4:	90 e0       	ldi	r25, 0x00	; 0
     cb6:	0c 94 a8 05 	jmp	0xb50	; 0xb50 <_ZN5Timer8add_taskEP4Taskj>

00000cba <_ZN10LEDDisplay11display_decEh>:
     cba:	dc 01       	movw	r26, r24
     cbc:	86 2f       	mov	r24, r22
     cbe:	64 36       	cpi	r22, 0x64	; 100
     cc0:	08 f0       	brcs	.+2      	; 0xcc4 <_ZN10LEDDisplay11display_decEh+0xa>
     cc2:	83 e6       	ldi	r24, 0x63	; 99
     cc4:	6a e0       	ldi	r22, 0x0A	; 10
     cc6:	0e 94 a8 08 	call	0x1150	; 0x1150 <__udivmodqi4>
     cca:	e8 2f       	mov	r30, r24
     ccc:	f0 e0       	ldi	r31, 0x00	; 0
     cce:	e6 58       	subi	r30, 0x86	; 134
     cd0:	ff 4f       	sbci	r31, 0xFF	; 255
     cd2:	80 81       	ld	r24, Z
     cd4:	80 95       	com	r24
     cd6:	13 96       	adiw	r26, 0x03	; 3
     cd8:	8c 93       	st	X, r24
     cda:	13 97       	sbiw	r26, 0x03	; 3
     cdc:	e9 2f       	mov	r30, r25
     cde:	f0 e0       	ldi	r31, 0x00	; 0
     ce0:	e6 58       	subi	r30, 0x86	; 134
     ce2:	ff 4f       	sbci	r31, 0xFF	; 255
     ce4:	80 81       	ld	r24, Z
     ce6:	80 95       	com	r24
     ce8:	14 96       	adiw	r26, 0x04	; 4
     cea:	8c 93       	st	X, r24
     cec:	08 95       	ret

00000cee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     cee:	ff 92       	push	r15
     cf0:	0f 93       	push	r16
     cf2:	1f 93       	push	r17
     cf4:	cf 93       	push	r28
     cf6:	df 93       	push	r29
     cf8:	ec 01       	movw	r28, r24
     cfa:	f6 2e       	mov	r15, r22
     cfc:	04 2f       	mov	r16, r20
     cfe:	12 2f       	mov	r17, r18
     d00:	e8 81       	ld	r30, Y
     d02:	f9 81       	ldd	r31, Y+1	; 0x01
     d04:	01 90       	ld	r0, Z+
     d06:	f0 81       	ld	r31, Z
     d08:	e0 2d       	mov	r30, r0
     d0a:	09 95       	icall
     d0c:	e8 81       	ld	r30, Y
     d0e:	f9 81       	ldd	r31, Y+1	; 0x01
     d10:	04 80       	ldd	r0, Z+4	; 0x04
     d12:	f5 81       	ldd	r31, Z+5	; 0x05
     d14:	e0 2d       	mov	r30, r0
     d16:	6f 2d       	mov	r22, r15
     d18:	ce 01       	movw	r24, r28
     d1a:	09 95       	icall
     d1c:	e8 81       	ld	r30, Y
     d1e:	f9 81       	ldd	r31, Y+1	; 0x01
     d20:	04 80       	ldd	r0, Z+4	; 0x04
     d22:	f5 81       	ldd	r31, Z+5	; 0x05
     d24:	e0 2d       	mov	r30, r0
     d26:	60 2f       	mov	r22, r16
     d28:	ce 01       	movw	r24, r28
     d2a:	09 95       	icall
     d2c:	e8 81       	ld	r30, Y
     d2e:	f9 81       	ldd	r31, Y+1	; 0x01
     d30:	04 80       	ldd	r0, Z+4	; 0x04
     d32:	f5 81       	ldd	r31, Z+5	; 0x05
     d34:	e0 2d       	mov	r30, r0
     d36:	61 2f       	mov	r22, r17
     d38:	ce 01       	movw	r24, r28
     d3a:	09 95       	icall
     d3c:	e8 81       	ld	r30, Y
     d3e:	f9 81       	ldd	r31, Y+1	; 0x01
     d40:	02 80       	ldd	r0, Z+2	; 0x02
     d42:	f3 81       	ldd	r31, Z+3	; 0x03
     d44:	e0 2d       	mov	r30, r0
     d46:	ce 01       	movw	r24, r28
     d48:	df 91       	pop	r29
     d4a:	cf 91       	pop	r28
     d4c:	1f 91       	pop	r17
     d4e:	0f 91       	pop	r16
     d50:	ff 90       	pop	r15
     d52:	09 94       	ijmp

00000d54 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     d54:	ef 92       	push	r14
     d56:	ff 92       	push	r15
     d58:	0f 93       	push	r16
     d5a:	1f 93       	push	r17
     d5c:	cf 93       	push	r28
     d5e:	df 93       	push	r29
     d60:	ec 01       	movw	r28, r24
     d62:	e6 2e       	mov	r14, r22
     d64:	f4 2e       	mov	r15, r20
     d66:	12 2f       	mov	r17, r18
     d68:	03 2f       	mov	r16, r19
     d6a:	e8 81       	ld	r30, Y
     d6c:	f9 81       	ldd	r31, Y+1	; 0x01
     d6e:	01 90       	ld	r0, Z+
     d70:	f0 81       	ld	r31, Z
     d72:	e0 2d       	mov	r30, r0
     d74:	09 95       	icall
     d76:	e8 81       	ld	r30, Y
     d78:	f9 81       	ldd	r31, Y+1	; 0x01
     d7a:	04 80       	ldd	r0, Z+4	; 0x04
     d7c:	f5 81       	ldd	r31, Z+5	; 0x05
     d7e:	e0 2d       	mov	r30, r0
     d80:	6e 2d       	mov	r22, r14
     d82:	ce 01       	movw	r24, r28
     d84:	09 95       	icall
     d86:	e8 81       	ld	r30, Y
     d88:	f9 81       	ldd	r31, Y+1	; 0x01
     d8a:	04 80       	ldd	r0, Z+4	; 0x04
     d8c:	f5 81       	ldd	r31, Z+5	; 0x05
     d8e:	e0 2d       	mov	r30, r0
     d90:	6f 2d       	mov	r22, r15
     d92:	ce 01       	movw	r24, r28
     d94:	09 95       	icall
     d96:	e8 81       	ld	r30, Y
     d98:	f9 81       	ldd	r31, Y+1	; 0x01
     d9a:	04 80       	ldd	r0, Z+4	; 0x04
     d9c:	f5 81       	ldd	r31, Z+5	; 0x05
     d9e:	e0 2d       	mov	r30, r0
     da0:	60 2f       	mov	r22, r16
     da2:	ce 01       	movw	r24, r28
     da4:	09 95       	icall
     da6:	e8 81       	ld	r30, Y
     da8:	f9 81       	ldd	r31, Y+1	; 0x01
     daa:	04 80       	ldd	r0, Z+4	; 0x04
     dac:	f5 81       	ldd	r31, Z+5	; 0x05
     dae:	e0 2d       	mov	r30, r0
     db0:	61 2f       	mov	r22, r17
     db2:	ce 01       	movw	r24, r28
     db4:	09 95       	icall
     db6:	e8 81       	ld	r30, Y
     db8:	f9 81       	ldd	r31, Y+1	; 0x01
     dba:	02 80       	ldd	r0, Z+2	; 0x02
     dbc:	f3 81       	ldd	r31, Z+3	; 0x03
     dbe:	e0 2d       	mov	r30, r0
     dc0:	ce 01       	movw	r24, r28
     dc2:	df 91       	pop	r29
     dc4:	cf 91       	pop	r28
     dc6:	1f 91       	pop	r17
     dc8:	0f 91       	pop	r16
     dca:	ff 90       	pop	r15
     dcc:	ef 90       	pop	r14
     dce:	09 94       	ijmp

00000dd0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     dd0:	cf 92       	push	r12
     dd2:	df 92       	push	r13
     dd4:	ef 92       	push	r14
     dd6:	ff 92       	push	r15
     dd8:	0f 93       	push	r16
     dda:	1f 93       	push	r17
     ddc:	cf 93       	push	r28
     dde:	df 93       	push	r29
     de0:	ec 01       	movw	r28, r24
     de2:	e6 2e       	mov	r14, r22
     de4:	f4 2e       	mov	r15, r20
     de6:	69 01       	movw	r12, r18
     de8:	e8 81       	ld	r30, Y
     dea:	f9 81       	ldd	r31, Y+1	; 0x01
     dec:	01 90       	ld	r0, Z+
     dee:	f0 81       	ld	r31, Z
     df0:	e0 2d       	mov	r30, r0
     df2:	09 95       	icall
     df4:	e8 81       	ld	r30, Y
     df6:	f9 81       	ldd	r31, Y+1	; 0x01
     df8:	04 80       	ldd	r0, Z+4	; 0x04
     dfa:	f5 81       	ldd	r31, Z+5	; 0x05
     dfc:	e0 2d       	mov	r30, r0
     dfe:	6e 2d       	mov	r22, r14
     e00:	ce 01       	movw	r24, r28
     e02:	09 95       	icall
     e04:	e8 81       	ld	r30, Y
     e06:	f9 81       	ldd	r31, Y+1	; 0x01
     e08:	04 80       	ldd	r0, Z+4	; 0x04
     e0a:	f5 81       	ldd	r31, Z+5	; 0x05
     e0c:	e0 2d       	mov	r30, r0
     e0e:	6f 2d       	mov	r22, r15
     e10:	ce 01       	movw	r24, r28
     e12:	09 95       	icall
     e14:	76 01       	movw	r14, r12
     e16:	0c 0d       	add	r16, r12
     e18:	1d 1d       	adc	r17, r13
     e1a:	e8 81       	ld	r30, Y
     e1c:	f9 81       	ldd	r31, Y+1	; 0x01
     e1e:	e0 16       	cp	r14, r16
     e20:	f1 06       	cpc	r15, r17
     e22:	49 f0       	breq	.+18     	; 0xe36 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x66>
     e24:	d7 01       	movw	r26, r14
     e26:	6d 91       	ld	r22, X+
     e28:	7d 01       	movw	r14, r26
     e2a:	04 80       	ldd	r0, Z+4	; 0x04
     e2c:	f5 81       	ldd	r31, Z+5	; 0x05
     e2e:	e0 2d       	mov	r30, r0
     e30:	ce 01       	movw	r24, r28
     e32:	09 95       	icall
     e34:	f2 cf       	rjmp	.-28     	; 0xe1a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x4a>
     e36:	02 80       	ldd	r0, Z+2	; 0x02
     e38:	f3 81       	ldd	r31, Z+3	; 0x03
     e3a:	e0 2d       	mov	r30, r0
     e3c:	ce 01       	movw	r24, r28
     e3e:	df 91       	pop	r29
     e40:	cf 91       	pop	r28
     e42:	1f 91       	pop	r17
     e44:	0f 91       	pop	r16
     e46:	ff 90       	pop	r15
     e48:	ef 90       	pop	r14
     e4a:	df 90       	pop	r13
     e4c:	cf 90       	pop	r12
     e4e:	09 94       	ijmp

00000e50 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     e50:	0f 93       	push	r16
     e52:	1f 93       	push	r17
     e54:	cf 93       	push	r28
     e56:	df 93       	push	r29
     e58:	ec 01       	movw	r28, r24
     e5a:	16 2f       	mov	r17, r22
     e5c:	04 2f       	mov	r16, r20
     e5e:	e8 81       	ld	r30, Y
     e60:	f9 81       	ldd	r31, Y+1	; 0x01
     e62:	01 90       	ld	r0, Z+
     e64:	f0 81       	ld	r31, Z
     e66:	e0 2d       	mov	r30, r0
     e68:	09 95       	icall
     e6a:	e8 81       	ld	r30, Y
     e6c:	f9 81       	ldd	r31, Y+1	; 0x01
     e6e:	04 80       	ldd	r0, Z+4	; 0x04
     e70:	f5 81       	ldd	r31, Z+5	; 0x05
     e72:	e0 2d       	mov	r30, r0
     e74:	61 2f       	mov	r22, r17
     e76:	ce 01       	movw	r24, r28
     e78:	09 95       	icall
     e7a:	e8 81       	ld	r30, Y
     e7c:	f9 81       	ldd	r31, Y+1	; 0x01
     e7e:	04 80       	ldd	r0, Z+4	; 0x04
     e80:	f5 81       	ldd	r31, Z+5	; 0x05
     e82:	e0 2d       	mov	r30, r0
     e84:	60 2f       	mov	r22, r16
     e86:	ce 01       	movw	r24, r28
     e88:	09 95       	icall
     e8a:	e8 81       	ld	r30, Y
     e8c:	f9 81       	ldd	r31, Y+1	; 0x01
     e8e:	01 90       	ld	r0, Z+
     e90:	f0 81       	ld	r31, Z
     e92:	e0 2d       	mov	r30, r0
     e94:	ce 01       	movw	r24, r28
     e96:	09 95       	icall
     e98:	61 2f       	mov	r22, r17
     e9a:	61 60       	ori	r22, 0x01	; 1
     e9c:	e8 81       	ld	r30, Y
     e9e:	f9 81       	ldd	r31, Y+1	; 0x01
     ea0:	04 80       	ldd	r0, Z+4	; 0x04
     ea2:	f5 81       	ldd	r31, Z+5	; 0x05
     ea4:	e0 2d       	mov	r30, r0
     ea6:	ce 01       	movw	r24, r28
     ea8:	09 95       	icall
     eaa:	e8 81       	ld	r30, Y
     eac:	f9 81       	ldd	r31, Y+1	; 0x01
     eae:	06 80       	ldd	r0, Z+6	; 0x06
     eb0:	f7 81       	ldd	r31, Z+7	; 0x07
     eb2:	e0 2d       	mov	r30, r0
     eb4:	60 e0       	ldi	r22, 0x00	; 0
     eb6:	ce 01       	movw	r24, r28
     eb8:	09 95       	icall
     eba:	18 2f       	mov	r17, r24
     ebc:	e8 81       	ld	r30, Y
     ebe:	f9 81       	ldd	r31, Y+1	; 0x01
     ec0:	02 80       	ldd	r0, Z+2	; 0x02
     ec2:	f3 81       	ldd	r31, Z+3	; 0x03
     ec4:	e0 2d       	mov	r30, r0
     ec6:	ce 01       	movw	r24, r28
     ec8:	09 95       	icall
     eca:	81 2f       	mov	r24, r17
     ecc:	df 91       	pop	r29
     ece:	cf 91       	pop	r28
     ed0:	1f 91       	pop	r17
     ed2:	0f 91       	pop	r16
     ed4:	08 95       	ret

00000ed6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     ed6:	0f 93       	push	r16
     ed8:	1f 93       	push	r17
     eda:	cf 93       	push	r28
     edc:	df 93       	push	r29
     ede:	ec 01       	movw	r28, r24
     ee0:	16 2f       	mov	r17, r22
     ee2:	04 2f       	mov	r16, r20
     ee4:	e8 81       	ld	r30, Y
     ee6:	f9 81       	ldd	r31, Y+1	; 0x01
     ee8:	01 90       	ld	r0, Z+
     eea:	f0 81       	ld	r31, Z
     eec:	e0 2d       	mov	r30, r0
     eee:	09 95       	icall
     ef0:	e8 81       	ld	r30, Y
     ef2:	f9 81       	ldd	r31, Y+1	; 0x01
     ef4:	04 80       	ldd	r0, Z+4	; 0x04
     ef6:	f5 81       	ldd	r31, Z+5	; 0x05
     ef8:	e0 2d       	mov	r30, r0
     efa:	61 2f       	mov	r22, r17
     efc:	ce 01       	movw	r24, r28
     efe:	09 95       	icall
     f00:	e8 81       	ld	r30, Y
     f02:	f9 81       	ldd	r31, Y+1	; 0x01
     f04:	04 80       	ldd	r0, Z+4	; 0x04
     f06:	f5 81       	ldd	r31, Z+5	; 0x05
     f08:	e0 2d       	mov	r30, r0
     f0a:	60 2f       	mov	r22, r16
     f0c:	ce 01       	movw	r24, r28
     f0e:	09 95       	icall
     f10:	e8 81       	ld	r30, Y
     f12:	f9 81       	ldd	r31, Y+1	; 0x01
     f14:	01 90       	ld	r0, Z+
     f16:	f0 81       	ld	r31, Z
     f18:	e0 2d       	mov	r30, r0
     f1a:	ce 01       	movw	r24, r28
     f1c:	09 95       	icall
     f1e:	61 2f       	mov	r22, r17
     f20:	61 60       	ori	r22, 0x01	; 1
     f22:	e8 81       	ld	r30, Y
     f24:	f9 81       	ldd	r31, Y+1	; 0x01
     f26:	04 80       	ldd	r0, Z+4	; 0x04
     f28:	f5 81       	ldd	r31, Z+5	; 0x05
     f2a:	e0 2d       	mov	r30, r0
     f2c:	ce 01       	movw	r24, r28
     f2e:	09 95       	icall
     f30:	e8 81       	ld	r30, Y
     f32:	f9 81       	ldd	r31, Y+1	; 0x01
     f34:	06 80       	ldd	r0, Z+6	; 0x06
     f36:	f7 81       	ldd	r31, Z+7	; 0x07
     f38:	e0 2d       	mov	r30, r0
     f3a:	61 e0       	ldi	r22, 0x01	; 1
     f3c:	ce 01       	movw	r24, r28
     f3e:	09 95       	icall
     f40:	08 2f       	mov	r16, r24
     f42:	10 e0       	ldi	r17, 0x00	; 0
     f44:	10 2f       	mov	r17, r16
     f46:	00 27       	eor	r16, r16
     f48:	e8 81       	ld	r30, Y
     f4a:	f9 81       	ldd	r31, Y+1	; 0x01
     f4c:	06 80       	ldd	r0, Z+6	; 0x06
     f4e:	f7 81       	ldd	r31, Z+7	; 0x07
     f50:	e0 2d       	mov	r30, r0
     f52:	60 e0       	ldi	r22, 0x00	; 0
     f54:	ce 01       	movw	r24, r28
     f56:	09 95       	icall
     f58:	08 2b       	or	r16, r24
     f5a:	e8 81       	ld	r30, Y
     f5c:	f9 81       	ldd	r31, Y+1	; 0x01
     f5e:	02 80       	ldd	r0, Z+2	; 0x02
     f60:	f3 81       	ldd	r31, Z+3	; 0x03
     f62:	e0 2d       	mov	r30, r0
     f64:	ce 01       	movw	r24, r28
     f66:	09 95       	icall
     f68:	c8 01       	movw	r24, r16
     f6a:	df 91       	pop	r29
     f6c:	cf 91       	pop	r28
     f6e:	1f 91       	pop	r17
     f70:	0f 91       	pop	r16
     f72:	08 95       	ret

00000f74 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     f74:	cf 92       	push	r12
     f76:	df 92       	push	r13
     f78:	ef 92       	push	r14
     f7a:	ff 92       	push	r15
     f7c:	0f 93       	push	r16
     f7e:	1f 93       	push	r17
     f80:	cf 93       	push	r28
     f82:	df 93       	push	r29
     f84:	ec 01       	movw	r28, r24
     f86:	f6 2e       	mov	r15, r22
     f88:	e4 2e       	mov	r14, r20
     f8a:	69 01       	movw	r12, r18
     f8c:	e8 81       	ld	r30, Y
     f8e:	f9 81       	ldd	r31, Y+1	; 0x01
     f90:	01 90       	ld	r0, Z+
     f92:	f0 81       	ld	r31, Z
     f94:	e0 2d       	mov	r30, r0
     f96:	09 95       	icall
     f98:	e8 81       	ld	r30, Y
     f9a:	f9 81       	ldd	r31, Y+1	; 0x01
     f9c:	04 80       	ldd	r0, Z+4	; 0x04
     f9e:	f5 81       	ldd	r31, Z+5	; 0x05
     fa0:	e0 2d       	mov	r30, r0
     fa2:	6f 2d       	mov	r22, r15
     fa4:	ce 01       	movw	r24, r28
     fa6:	09 95       	icall
     fa8:	e8 81       	ld	r30, Y
     faa:	f9 81       	ldd	r31, Y+1	; 0x01
     fac:	04 80       	ldd	r0, Z+4	; 0x04
     fae:	f5 81       	ldd	r31, Z+5	; 0x05
     fb0:	e0 2d       	mov	r30, r0
     fb2:	6e 2d       	mov	r22, r14
     fb4:	ce 01       	movw	r24, r28
     fb6:	09 95       	icall
     fb8:	e8 81       	ld	r30, Y
     fba:	f9 81       	ldd	r31, Y+1	; 0x01
     fbc:	01 90       	ld	r0, Z+
     fbe:	f0 81       	ld	r31, Z
     fc0:	e0 2d       	mov	r30, r0
     fc2:	ce 01       	movw	r24, r28
     fc4:	09 95       	icall
     fc6:	6f 2d       	mov	r22, r15
     fc8:	61 60       	ori	r22, 0x01	; 1
     fca:	e8 81       	ld	r30, Y
     fcc:	f9 81       	ldd	r31, Y+1	; 0x01
     fce:	04 80       	ldd	r0, Z+4	; 0x04
     fd0:	f5 81       	ldd	r31, Z+5	; 0x05
     fd2:	e0 2d       	mov	r30, r0
     fd4:	ce 01       	movw	r24, r28
     fd6:	09 95       	icall
     fd8:	76 01       	movw	r14, r12
     fda:	0c 0d       	add	r16, r12
     fdc:	1d 1d       	adc	r17, r13
     fde:	e8 81       	ld	r30, Y
     fe0:	f9 81       	ldd	r31, Y+1	; 0x01
     fe2:	e0 16       	cp	r14, r16
     fe4:	f1 06       	cpc	r15, r17
     fe6:	51 f0       	breq	.+20     	; 0xffc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x88>
     fe8:	06 80       	ldd	r0, Z+6	; 0x06
     fea:	f7 81       	ldd	r31, Z+7	; 0x07
     fec:	e0 2d       	mov	r30, r0
     fee:	61 e0       	ldi	r22, 0x01	; 1
     ff0:	ce 01       	movw	r24, r28
     ff2:	09 95       	icall
     ff4:	f7 01       	movw	r30, r14
     ff6:	81 93       	st	Z+, r24
     ff8:	7f 01       	movw	r14, r30
     ffa:	f1 cf       	rjmp	.-30     	; 0xfde <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x6a>
     ffc:	02 80       	ldd	r0, Z+2	; 0x02
     ffe:	f3 81       	ldd	r31, Z+3	; 0x03
    1000:	e0 2d       	mov	r30, r0
    1002:	ce 01       	movw	r24, r28
    1004:	df 91       	pop	r29
    1006:	cf 91       	pop	r28
    1008:	1f 91       	pop	r17
    100a:	0f 91       	pop	r16
    100c:	ff 90       	pop	r15
    100e:	ef 90       	pop	r14
    1010:	df 90       	pop	r13
    1012:	cf 90       	pop	r12
    1014:	09 94       	ijmp

00001016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
    1016:	88 23       	and	r24, r24
    1018:	21 f0       	breq	.+8      	; 0x1022 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
    101a:	bf 98       	cbi	0x17, 7	; 23
    101c:	82 30       	cpi	r24, 0x02	; 2
    101e:	19 f0       	breq	.+6      	; 0x1026 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
    1020:	08 95       	ret
    1022:	bf 9a       	sbi	0x17, 7	; 23
    1024:	08 95       	ret
    1026:	c7 9a       	sbi	0x18, 7	; 24
    1028:	08 95       	ret

0000102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
    102a:	00 00       	nop
    102c:	00 00       	nop
    102e:	08 95       	ret

00001030 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
    1030:	81 e0       	ldi	r24, 0x01	; 1
    1032:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1036:	bd 98       	cbi	0x17, 5	; 23
    1038:	81 e0       	ldi	r24, 0x01	; 1
    103a:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    103e:	bd 9a       	sbi	0x17, 5	; 23
    1040:	80 e0       	ldi	r24, 0x00	; 0
    1042:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1046:	bd 98       	cbi	0x17, 5	; 23
    1048:	0c 94 15 08 	jmp	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000104c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
    104c:	80 e0       	ldi	r24, 0x00	; 0
    104e:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1052:	bd 9a       	sbi	0x17, 5	; 23
    1054:	81 e0       	ldi	r24, 0x01	; 1
    1056:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    105a:	bd 9a       	sbi	0x17, 5	; 23
    105c:	81 e0       	ldi	r24, 0x01	; 1
    105e:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1062:	bd 98       	cbi	0x17, 5	; 23
    1064:	0c 94 15 08 	jmp	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00001068 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
    1068:	cf 93       	push	r28
    106a:	df 93       	push	r29
    106c:	d6 2f       	mov	r29, r22
    106e:	c8 e0       	ldi	r28, 0x08	; 8
    1070:	80 e0       	ldi	r24, 0x00	; 0
    1072:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1076:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    107a:	d7 ff       	sbrs	r29, 7
    107c:	02 c0       	rjmp	.+4      	; 0x1082 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
    107e:	bd 98       	cbi	0x17, 5	; 23
    1080:	01 c0       	rjmp	.+2      	; 0x1084 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
    1082:	bd 9a       	sbi	0x17, 5	; 23
    1084:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1088:	81 e0       	ldi	r24, 0x01	; 1
    108a:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    108e:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1092:	dd 0f       	add	r29, r29
    1094:	c1 50       	subi	r28, 0x01	; 1
    1096:	61 f7       	brne	.-40     	; 0x1070 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
    1098:	80 e0       	ldi	r24, 0x00	; 0
    109a:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    109e:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    10a2:	bd 98       	cbi	0x17, 5	; 23
    10a4:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    10a8:	81 e0       	ldi	r24, 0x01	; 1
    10aa:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10ae:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    10b2:	c6 b3       	in	r28, 0x16	; 22
    10b4:	80 e0       	ldi	r24, 0x00	; 0
    10b6:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10ba:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    10be:	c5 fb       	bst	r28, 5
    10c0:	cc 27       	eor	r28, r28
    10c2:	c0 f9       	bld	r28, 0
    10c4:	81 e0       	ldi	r24, 0x01	; 1
    10c6:	8c 27       	eor	r24, r28
    10c8:	df 91       	pop	r29
    10ca:	cf 91       	pop	r28
    10cc:	08 95       	ret

000010ce <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
    10ce:	1f 93       	push	r17
    10d0:	cf 93       	push	r28
    10d2:	df 93       	push	r29
    10d4:	16 2f       	mov	r17, r22
    10d6:	bd 98       	cbi	0x17, 5	; 23
    10d8:	80 e0       	ldi	r24, 0x00	; 0
    10da:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10de:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    10e2:	d8 e0       	ldi	r29, 0x08	; 8
    10e4:	c0 e0       	ldi	r28, 0x00	; 0
    10e6:	cc 0f       	add	r28, r28
    10e8:	81 e0       	ldi	r24, 0x01	; 1
    10ea:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10ee:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    10f2:	b5 99       	sbic	0x16, 5	; 22
    10f4:	c1 60       	ori	r28, 0x01	; 1
    10f6:	80 e0       	ldi	r24, 0x00	; 0
    10f8:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10fc:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1100:	d1 50       	subi	r29, 0x01	; 1
    1102:	89 f7       	brne	.-30     	; 0x10e6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
    1104:	11 23       	and	r17, r17
    1106:	11 f0       	breq	.+4      	; 0x110c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
    1108:	bd 9a       	sbi	0x17, 5	; 23
    110a:	01 c0       	rjmp	.+2      	; 0x110e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
    110c:	bd 98       	cbi	0x17, 5	; 23
    110e:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1112:	81 e0       	ldi	r24, 0x01	; 1
    1114:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1118:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    111c:	80 e0       	ldi	r24, 0x00	; 0
    111e:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1122:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1126:	bd 98       	cbi	0x17, 5	; 23
    1128:	0e 94 15 08 	call	0x102a	; 0x102a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    112c:	8c 2f       	mov	r24, r28
    112e:	df 91       	pop	r29
    1130:	cf 91       	pop	r28
    1132:	1f 91       	pop	r17
    1134:	08 95       	ret

00001136 <_GLOBAL__sub_I_i2c>:
    1136:	88 e9       	ldi	r24, 0x98	; 152
    1138:	90 e0       	ldi	r25, 0x00	; 0
    113a:	90 93 eb 00 	sts	0x00EB, r25	; 0x8000eb <i2c+0x1>
    113e:	80 93 ea 00 	sts	0x00EA, r24	; 0x8000ea <i2c>
    1142:	bd 98       	cbi	0x17, 5	; 23
    1144:	81 e0       	ldi	r24, 0x01	; 1
    1146:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    114a:	c5 98       	cbi	0x18, 5	; 24
    114c:	c7 98       	cbi	0x18, 7	; 24
    114e:	08 95       	ret

00001150 <__udivmodqi4>:
    1150:	99 1b       	sub	r25, r25
    1152:	79 e0       	ldi	r23, 0x09	; 9
    1154:	04 c0       	rjmp	.+8      	; 0x115e <__udivmodqi4_ep>

00001156 <__udivmodqi4_loop>:
    1156:	99 1f       	adc	r25, r25
    1158:	96 17       	cp	r25, r22
    115a:	08 f0       	brcs	.+2      	; 0x115e <__udivmodqi4_ep>
    115c:	96 1b       	sub	r25, r22

0000115e <__udivmodqi4_ep>:
    115e:	88 1f       	adc	r24, r24
    1160:	7a 95       	dec	r23
    1162:	c9 f7       	brne	.-14     	; 0x1156 <__udivmodqi4_loop>
    1164:	80 95       	com	r24
    1166:	08 95       	ret

00001168 <__udivmodsi4>:
    1168:	a1 e2       	ldi	r26, 0x21	; 33
    116a:	1a 2e       	mov	r1, r26
    116c:	aa 1b       	sub	r26, r26
    116e:	bb 1b       	sub	r27, r27
    1170:	fd 01       	movw	r30, r26
    1172:	0d c0       	rjmp	.+26     	; 0x118e <__udivmodsi4_ep>

00001174 <__udivmodsi4_loop>:
    1174:	aa 1f       	adc	r26, r26
    1176:	bb 1f       	adc	r27, r27
    1178:	ee 1f       	adc	r30, r30
    117a:	ff 1f       	adc	r31, r31
    117c:	a2 17       	cp	r26, r18
    117e:	b3 07       	cpc	r27, r19
    1180:	e4 07       	cpc	r30, r20
    1182:	f5 07       	cpc	r31, r21
    1184:	20 f0       	brcs	.+8      	; 0x118e <__udivmodsi4_ep>
    1186:	a2 1b       	sub	r26, r18
    1188:	b3 0b       	sbc	r27, r19
    118a:	e4 0b       	sbc	r30, r20
    118c:	f5 0b       	sbc	r31, r21

0000118e <__udivmodsi4_ep>:
    118e:	66 1f       	adc	r22, r22
    1190:	77 1f       	adc	r23, r23
    1192:	88 1f       	adc	r24, r24
    1194:	99 1f       	adc	r25, r25
    1196:	1a 94       	dec	r1
    1198:	69 f7       	brne	.-38     	; 0x1174 <__udivmodsi4_loop>
    119a:	60 95       	com	r22
    119c:	70 95       	com	r23
    119e:	80 95       	com	r24
    11a0:	90 95       	com	r25
    11a2:	9b 01       	movw	r18, r22
    11a4:	ac 01       	movw	r20, r24
    11a6:	bd 01       	movw	r22, r26
    11a8:	cf 01       	movw	r24, r30
    11aa:	08 95       	ret

000011ac <__divmodsi4>:
    11ac:	05 2e       	mov	r0, r21
    11ae:	97 fb       	bst	r25, 7
    11b0:	1e f4       	brtc	.+6      	; 0x11b8 <__divmodsi4+0xc>
    11b2:	00 94       	com	r0
    11b4:	0e 94 ed 08 	call	0x11da	; 0x11da <__negsi2>
    11b8:	57 fd       	sbrc	r21, 7
    11ba:	07 d0       	rcall	.+14     	; 0x11ca <__divmodsi4_neg2>
    11bc:	0e 94 b4 08 	call	0x1168	; 0x1168 <__udivmodsi4>
    11c0:	07 fc       	sbrc	r0, 7
    11c2:	03 d0       	rcall	.+6      	; 0x11ca <__divmodsi4_neg2>
    11c4:	4e f4       	brtc	.+18     	; 0x11d8 <__divmodsi4_exit>
    11c6:	0c 94 ed 08 	jmp	0x11da	; 0x11da <__negsi2>

000011ca <__divmodsi4_neg2>:
    11ca:	50 95       	com	r21
    11cc:	40 95       	com	r20
    11ce:	30 95       	com	r19
    11d0:	21 95       	neg	r18
    11d2:	3f 4f       	sbci	r19, 0xFF	; 255
    11d4:	4f 4f       	sbci	r20, 0xFF	; 255
    11d6:	5f 4f       	sbci	r21, 0xFF	; 255

000011d8 <__divmodsi4_exit>:
    11d8:	08 95       	ret

000011da <__negsi2>:
    11da:	90 95       	com	r25
    11dc:	80 95       	com	r24
    11de:	70 95       	com	r23
    11e0:	61 95       	neg	r22
    11e2:	7f 4f       	sbci	r23, 0xFF	; 255
    11e4:	8f 4f       	sbci	r24, 0xFF	; 255
    11e6:	9f 4f       	sbci	r25, 0xFF	; 255
    11e8:	08 95       	ret

000011ea <__tablejump2__>:
    11ea:	ee 0f       	add	r30, r30
    11ec:	ff 1f       	adc	r31, r31
    11ee:	05 90       	lpm	r0, Z+
    11f0:	f4 91       	lpm	r31, Z
    11f2:	e0 2d       	mov	r30, r0
    11f4:	09 94       	ijmp

000011f6 <__subsf3>:
    11f6:	50 58       	subi	r21, 0x80	; 128

000011f8 <__addsf3>:
    11f8:	bb 27       	eor	r27, r27
    11fa:	aa 27       	eor	r26, r26
    11fc:	0e 94 13 09 	call	0x1226	; 0x1226 <__addsf3x>
    1200:	0c 94 1b 0a 	jmp	0x1436	; 0x1436 <__fp_round>
    1204:	0e 94 0d 0a 	call	0x141a	; 0x141a <__fp_pscA>
    1208:	38 f0       	brcs	.+14     	; 0x1218 <__addsf3+0x20>
    120a:	0e 94 14 0a 	call	0x1428	; 0x1428 <__fp_pscB>
    120e:	20 f0       	brcs	.+8      	; 0x1218 <__addsf3+0x20>
    1210:	39 f4       	brne	.+14     	; 0x1220 <__addsf3+0x28>
    1212:	9f 3f       	cpi	r25, 0xFF	; 255
    1214:	19 f4       	brne	.+6      	; 0x121c <__addsf3+0x24>
    1216:	26 f4       	brtc	.+8      	; 0x1220 <__addsf3+0x28>
    1218:	0c 94 0a 0a 	jmp	0x1414	; 0x1414 <__fp_nan>
    121c:	0e f4       	brtc	.+2      	; 0x1220 <__addsf3+0x28>
    121e:	e0 95       	com	r30
    1220:	e7 fb       	bst	r30, 7
    1222:	0c 94 04 0a 	jmp	0x1408	; 0x1408 <__fp_inf>

00001226 <__addsf3x>:
    1226:	e9 2f       	mov	r30, r25
    1228:	0e 94 2c 0a 	call	0x1458	; 0x1458 <__fp_split3>
    122c:	58 f3       	brcs	.-42     	; 0x1204 <__addsf3+0xc>
    122e:	ba 17       	cp	r27, r26
    1230:	62 07       	cpc	r22, r18
    1232:	73 07       	cpc	r23, r19
    1234:	84 07       	cpc	r24, r20
    1236:	95 07       	cpc	r25, r21
    1238:	20 f0       	brcs	.+8      	; 0x1242 <__addsf3x+0x1c>
    123a:	79 f4       	brne	.+30     	; 0x125a <__addsf3x+0x34>
    123c:	a6 f5       	brtc	.+104    	; 0x12a6 <__addsf3x+0x80>
    123e:	0c 94 4e 0a 	jmp	0x149c	; 0x149c <__fp_zero>
    1242:	0e f4       	brtc	.+2      	; 0x1246 <__addsf3x+0x20>
    1244:	e0 95       	com	r30
    1246:	0b 2e       	mov	r0, r27
    1248:	ba 2f       	mov	r27, r26
    124a:	a0 2d       	mov	r26, r0
    124c:	0b 01       	movw	r0, r22
    124e:	b9 01       	movw	r22, r18
    1250:	90 01       	movw	r18, r0
    1252:	0c 01       	movw	r0, r24
    1254:	ca 01       	movw	r24, r20
    1256:	a0 01       	movw	r20, r0
    1258:	11 24       	eor	r1, r1
    125a:	ff 27       	eor	r31, r31
    125c:	59 1b       	sub	r21, r25
    125e:	99 f0       	breq	.+38     	; 0x1286 <__addsf3x+0x60>
    1260:	59 3f       	cpi	r21, 0xF9	; 249
    1262:	50 f4       	brcc	.+20     	; 0x1278 <__addsf3x+0x52>
    1264:	50 3e       	cpi	r21, 0xE0	; 224
    1266:	68 f1       	brcs	.+90     	; 0x12c2 <__addsf3x+0x9c>
    1268:	1a 16       	cp	r1, r26
    126a:	f0 40       	sbci	r31, 0x00	; 0
    126c:	a2 2f       	mov	r26, r18
    126e:	23 2f       	mov	r18, r19
    1270:	34 2f       	mov	r19, r20
    1272:	44 27       	eor	r20, r20
    1274:	58 5f       	subi	r21, 0xF8	; 248
    1276:	f3 cf       	rjmp	.-26     	; 0x125e <__addsf3x+0x38>
    1278:	46 95       	lsr	r20
    127a:	37 95       	ror	r19
    127c:	27 95       	ror	r18
    127e:	a7 95       	ror	r26
    1280:	f0 40       	sbci	r31, 0x00	; 0
    1282:	53 95       	inc	r21
    1284:	c9 f7       	brne	.-14     	; 0x1278 <__addsf3x+0x52>
    1286:	7e f4       	brtc	.+30     	; 0x12a6 <__addsf3x+0x80>
    1288:	1f 16       	cp	r1, r31
    128a:	ba 0b       	sbc	r27, r26
    128c:	62 0b       	sbc	r22, r18
    128e:	73 0b       	sbc	r23, r19
    1290:	84 0b       	sbc	r24, r20
    1292:	ba f0       	brmi	.+46     	; 0x12c2 <__addsf3x+0x9c>
    1294:	91 50       	subi	r25, 0x01	; 1
    1296:	a1 f0       	breq	.+40     	; 0x12c0 <__addsf3x+0x9a>
    1298:	ff 0f       	add	r31, r31
    129a:	bb 1f       	adc	r27, r27
    129c:	66 1f       	adc	r22, r22
    129e:	77 1f       	adc	r23, r23
    12a0:	88 1f       	adc	r24, r24
    12a2:	c2 f7       	brpl	.-16     	; 0x1294 <__addsf3x+0x6e>
    12a4:	0e c0       	rjmp	.+28     	; 0x12c2 <__addsf3x+0x9c>
    12a6:	ba 0f       	add	r27, r26
    12a8:	62 1f       	adc	r22, r18
    12aa:	73 1f       	adc	r23, r19
    12ac:	84 1f       	adc	r24, r20
    12ae:	48 f4       	brcc	.+18     	; 0x12c2 <__addsf3x+0x9c>
    12b0:	87 95       	ror	r24
    12b2:	77 95       	ror	r23
    12b4:	67 95       	ror	r22
    12b6:	b7 95       	ror	r27
    12b8:	f7 95       	ror	r31
    12ba:	9e 3f       	cpi	r25, 0xFE	; 254
    12bc:	08 f0       	brcs	.+2      	; 0x12c0 <__addsf3x+0x9a>
    12be:	b0 cf       	rjmp	.-160    	; 0x1220 <__addsf3+0x28>
    12c0:	93 95       	inc	r25
    12c2:	88 0f       	add	r24, r24
    12c4:	08 f0       	brcs	.+2      	; 0x12c8 <__addsf3x+0xa2>
    12c6:	99 27       	eor	r25, r25
    12c8:	ee 0f       	add	r30, r30
    12ca:	97 95       	ror	r25
    12cc:	87 95       	ror	r24
    12ce:	08 95       	ret

000012d0 <__cmpsf2>:
    12d0:	0e 94 e0 09 	call	0x13c0	; 0x13c0 <__fp_cmp>
    12d4:	08 f4       	brcc	.+2      	; 0x12d8 <__cmpsf2+0x8>
    12d6:	81 e0       	ldi	r24, 0x01	; 1
    12d8:	08 95       	ret

000012da <__fixsfsi>:
    12da:	0e 94 74 09 	call	0x12e8	; 0x12e8 <__fixunssfsi>
    12de:	68 94       	set
    12e0:	b1 11       	cpse	r27, r1
    12e2:	0c 94 4f 0a 	jmp	0x149e	; 0x149e <__fp_szero>
    12e6:	08 95       	ret

000012e8 <__fixunssfsi>:
    12e8:	0e 94 34 0a 	call	0x1468	; 0x1468 <__fp_splitA>
    12ec:	88 f0       	brcs	.+34     	; 0x1310 <__fixunssfsi+0x28>
    12ee:	9f 57       	subi	r25, 0x7F	; 127
    12f0:	98 f0       	brcs	.+38     	; 0x1318 <__fixunssfsi+0x30>
    12f2:	b9 2f       	mov	r27, r25
    12f4:	99 27       	eor	r25, r25
    12f6:	b7 51       	subi	r27, 0x17	; 23
    12f8:	b0 f0       	brcs	.+44     	; 0x1326 <__fixunssfsi+0x3e>
    12fa:	e1 f0       	breq	.+56     	; 0x1334 <__fixunssfsi+0x4c>
    12fc:	66 0f       	add	r22, r22
    12fe:	77 1f       	adc	r23, r23
    1300:	88 1f       	adc	r24, r24
    1302:	99 1f       	adc	r25, r25
    1304:	1a f0       	brmi	.+6      	; 0x130c <__fixunssfsi+0x24>
    1306:	ba 95       	dec	r27
    1308:	c9 f7       	brne	.-14     	; 0x12fc <__fixunssfsi+0x14>
    130a:	14 c0       	rjmp	.+40     	; 0x1334 <__fixunssfsi+0x4c>
    130c:	b1 30       	cpi	r27, 0x01	; 1
    130e:	91 f0       	breq	.+36     	; 0x1334 <__fixunssfsi+0x4c>
    1310:	0e 94 4e 0a 	call	0x149c	; 0x149c <__fp_zero>
    1314:	b1 e0       	ldi	r27, 0x01	; 1
    1316:	08 95       	ret
    1318:	0c 94 4e 0a 	jmp	0x149c	; 0x149c <__fp_zero>
    131c:	67 2f       	mov	r22, r23
    131e:	78 2f       	mov	r23, r24
    1320:	88 27       	eor	r24, r24
    1322:	b8 5f       	subi	r27, 0xF8	; 248
    1324:	39 f0       	breq	.+14     	; 0x1334 <__fixunssfsi+0x4c>
    1326:	b9 3f       	cpi	r27, 0xF9	; 249
    1328:	cc f3       	brlt	.-14     	; 0x131c <__fixunssfsi+0x34>
    132a:	86 95       	lsr	r24
    132c:	77 95       	ror	r23
    132e:	67 95       	ror	r22
    1330:	b3 95       	inc	r27
    1332:	d9 f7       	brne	.-10     	; 0x132a <__fixunssfsi+0x42>
    1334:	3e f4       	brtc	.+14     	; 0x1344 <__fixunssfsi+0x5c>
    1336:	90 95       	com	r25
    1338:	80 95       	com	r24
    133a:	70 95       	com	r23
    133c:	61 95       	neg	r22
    133e:	7f 4f       	sbci	r23, 0xFF	; 255
    1340:	8f 4f       	sbci	r24, 0xFF	; 255
    1342:	9f 4f       	sbci	r25, 0xFF	; 255
    1344:	08 95       	ret

00001346 <__floatunsisf>:
    1346:	e8 94       	clt
    1348:	09 c0       	rjmp	.+18     	; 0x135c <__floatsisf+0x12>

0000134a <__floatsisf>:
    134a:	97 fb       	bst	r25, 7
    134c:	3e f4       	brtc	.+14     	; 0x135c <__floatsisf+0x12>
    134e:	90 95       	com	r25
    1350:	80 95       	com	r24
    1352:	70 95       	com	r23
    1354:	61 95       	neg	r22
    1356:	7f 4f       	sbci	r23, 0xFF	; 255
    1358:	8f 4f       	sbci	r24, 0xFF	; 255
    135a:	9f 4f       	sbci	r25, 0xFF	; 255
    135c:	99 23       	and	r25, r25
    135e:	a9 f0       	breq	.+42     	; 0x138a <__floatsisf+0x40>
    1360:	f9 2f       	mov	r31, r25
    1362:	96 e9       	ldi	r25, 0x96	; 150
    1364:	bb 27       	eor	r27, r27
    1366:	93 95       	inc	r25
    1368:	f6 95       	lsr	r31
    136a:	87 95       	ror	r24
    136c:	77 95       	ror	r23
    136e:	67 95       	ror	r22
    1370:	b7 95       	ror	r27
    1372:	f1 11       	cpse	r31, r1
    1374:	f8 cf       	rjmp	.-16     	; 0x1366 <__floatsisf+0x1c>
    1376:	fa f4       	brpl	.+62     	; 0x13b6 <__floatsisf+0x6c>
    1378:	bb 0f       	add	r27, r27
    137a:	11 f4       	brne	.+4      	; 0x1380 <__floatsisf+0x36>
    137c:	60 ff       	sbrs	r22, 0
    137e:	1b c0       	rjmp	.+54     	; 0x13b6 <__floatsisf+0x6c>
    1380:	6f 5f       	subi	r22, 0xFF	; 255
    1382:	7f 4f       	sbci	r23, 0xFF	; 255
    1384:	8f 4f       	sbci	r24, 0xFF	; 255
    1386:	9f 4f       	sbci	r25, 0xFF	; 255
    1388:	16 c0       	rjmp	.+44     	; 0x13b6 <__floatsisf+0x6c>
    138a:	88 23       	and	r24, r24
    138c:	11 f0       	breq	.+4      	; 0x1392 <__floatsisf+0x48>
    138e:	96 e9       	ldi	r25, 0x96	; 150
    1390:	11 c0       	rjmp	.+34     	; 0x13b4 <__floatsisf+0x6a>
    1392:	77 23       	and	r23, r23
    1394:	21 f0       	breq	.+8      	; 0x139e <__floatsisf+0x54>
    1396:	9e e8       	ldi	r25, 0x8E	; 142
    1398:	87 2f       	mov	r24, r23
    139a:	76 2f       	mov	r23, r22
    139c:	05 c0       	rjmp	.+10     	; 0x13a8 <__floatsisf+0x5e>
    139e:	66 23       	and	r22, r22
    13a0:	71 f0       	breq	.+28     	; 0x13be <__floatsisf+0x74>
    13a2:	96 e8       	ldi	r25, 0x86	; 134
    13a4:	86 2f       	mov	r24, r22
    13a6:	70 e0       	ldi	r23, 0x00	; 0
    13a8:	60 e0       	ldi	r22, 0x00	; 0
    13aa:	2a f0       	brmi	.+10     	; 0x13b6 <__floatsisf+0x6c>
    13ac:	9a 95       	dec	r25
    13ae:	66 0f       	add	r22, r22
    13b0:	77 1f       	adc	r23, r23
    13b2:	88 1f       	adc	r24, r24
    13b4:	da f7       	brpl	.-10     	; 0x13ac <__floatsisf+0x62>
    13b6:	88 0f       	add	r24, r24
    13b8:	96 95       	lsr	r25
    13ba:	87 95       	ror	r24
    13bc:	97 f9       	bld	r25, 7
    13be:	08 95       	ret

000013c0 <__fp_cmp>:
    13c0:	99 0f       	add	r25, r25
    13c2:	00 08       	sbc	r0, r0
    13c4:	55 0f       	add	r21, r21
    13c6:	aa 0b       	sbc	r26, r26
    13c8:	e0 e8       	ldi	r30, 0x80	; 128
    13ca:	fe ef       	ldi	r31, 0xFE	; 254
    13cc:	16 16       	cp	r1, r22
    13ce:	17 06       	cpc	r1, r23
    13d0:	e8 07       	cpc	r30, r24
    13d2:	f9 07       	cpc	r31, r25
    13d4:	c0 f0       	brcs	.+48     	; 0x1406 <__fp_cmp+0x46>
    13d6:	12 16       	cp	r1, r18
    13d8:	13 06       	cpc	r1, r19
    13da:	e4 07       	cpc	r30, r20
    13dc:	f5 07       	cpc	r31, r21
    13de:	98 f0       	brcs	.+38     	; 0x1406 <__fp_cmp+0x46>
    13e0:	62 1b       	sub	r22, r18
    13e2:	73 0b       	sbc	r23, r19
    13e4:	84 0b       	sbc	r24, r20
    13e6:	95 0b       	sbc	r25, r21
    13e8:	39 f4       	brne	.+14     	; 0x13f8 <__fp_cmp+0x38>
    13ea:	0a 26       	eor	r0, r26
    13ec:	61 f0       	breq	.+24     	; 0x1406 <__fp_cmp+0x46>
    13ee:	23 2b       	or	r18, r19
    13f0:	24 2b       	or	r18, r20
    13f2:	25 2b       	or	r18, r21
    13f4:	21 f4       	brne	.+8      	; 0x13fe <__fp_cmp+0x3e>
    13f6:	08 95       	ret
    13f8:	0a 26       	eor	r0, r26
    13fa:	09 f4       	brne	.+2      	; 0x13fe <__fp_cmp+0x3e>
    13fc:	a1 40       	sbci	r26, 0x01	; 1
    13fe:	a6 95       	lsr	r26
    1400:	8f ef       	ldi	r24, 0xFF	; 255
    1402:	81 1d       	adc	r24, r1
    1404:	81 1d       	adc	r24, r1
    1406:	08 95       	ret

00001408 <__fp_inf>:
    1408:	97 f9       	bld	r25, 7
    140a:	9f 67       	ori	r25, 0x7F	; 127
    140c:	80 e8       	ldi	r24, 0x80	; 128
    140e:	70 e0       	ldi	r23, 0x00	; 0
    1410:	60 e0       	ldi	r22, 0x00	; 0
    1412:	08 95       	ret

00001414 <__fp_nan>:
    1414:	9f ef       	ldi	r25, 0xFF	; 255
    1416:	80 ec       	ldi	r24, 0xC0	; 192
    1418:	08 95       	ret

0000141a <__fp_pscA>:
    141a:	00 24       	eor	r0, r0
    141c:	0a 94       	dec	r0
    141e:	16 16       	cp	r1, r22
    1420:	17 06       	cpc	r1, r23
    1422:	18 06       	cpc	r1, r24
    1424:	09 06       	cpc	r0, r25
    1426:	08 95       	ret

00001428 <__fp_pscB>:
    1428:	00 24       	eor	r0, r0
    142a:	0a 94       	dec	r0
    142c:	12 16       	cp	r1, r18
    142e:	13 06       	cpc	r1, r19
    1430:	14 06       	cpc	r1, r20
    1432:	05 06       	cpc	r0, r21
    1434:	08 95       	ret

00001436 <__fp_round>:
    1436:	09 2e       	mov	r0, r25
    1438:	03 94       	inc	r0
    143a:	00 0c       	add	r0, r0
    143c:	11 f4       	brne	.+4      	; 0x1442 <__fp_round+0xc>
    143e:	88 23       	and	r24, r24
    1440:	52 f0       	brmi	.+20     	; 0x1456 <__fp_round+0x20>
    1442:	bb 0f       	add	r27, r27
    1444:	40 f4       	brcc	.+16     	; 0x1456 <__fp_round+0x20>
    1446:	bf 2b       	or	r27, r31
    1448:	11 f4       	brne	.+4      	; 0x144e <__fp_round+0x18>
    144a:	60 ff       	sbrs	r22, 0
    144c:	04 c0       	rjmp	.+8      	; 0x1456 <__fp_round+0x20>
    144e:	6f 5f       	subi	r22, 0xFF	; 255
    1450:	7f 4f       	sbci	r23, 0xFF	; 255
    1452:	8f 4f       	sbci	r24, 0xFF	; 255
    1454:	9f 4f       	sbci	r25, 0xFF	; 255
    1456:	08 95       	ret

00001458 <__fp_split3>:
    1458:	57 fd       	sbrc	r21, 7
    145a:	90 58       	subi	r25, 0x80	; 128
    145c:	44 0f       	add	r20, r20
    145e:	55 1f       	adc	r21, r21
    1460:	59 f0       	breq	.+22     	; 0x1478 <__fp_splitA+0x10>
    1462:	5f 3f       	cpi	r21, 0xFF	; 255
    1464:	71 f0       	breq	.+28     	; 0x1482 <__fp_splitA+0x1a>
    1466:	47 95       	ror	r20

00001468 <__fp_splitA>:
    1468:	88 0f       	add	r24, r24
    146a:	97 fb       	bst	r25, 7
    146c:	99 1f       	adc	r25, r25
    146e:	61 f0       	breq	.+24     	; 0x1488 <__fp_splitA+0x20>
    1470:	9f 3f       	cpi	r25, 0xFF	; 255
    1472:	79 f0       	breq	.+30     	; 0x1492 <__fp_splitA+0x2a>
    1474:	87 95       	ror	r24
    1476:	08 95       	ret
    1478:	12 16       	cp	r1, r18
    147a:	13 06       	cpc	r1, r19
    147c:	14 06       	cpc	r1, r20
    147e:	55 1f       	adc	r21, r21
    1480:	f2 cf       	rjmp	.-28     	; 0x1466 <__fp_split3+0xe>
    1482:	46 95       	lsr	r20
    1484:	f1 df       	rcall	.-30     	; 0x1468 <__fp_splitA>
    1486:	08 c0       	rjmp	.+16     	; 0x1498 <__fp_splitA+0x30>
    1488:	16 16       	cp	r1, r22
    148a:	17 06       	cpc	r1, r23
    148c:	18 06       	cpc	r1, r24
    148e:	99 1f       	adc	r25, r25
    1490:	f1 cf       	rjmp	.-30     	; 0x1474 <__fp_splitA+0xc>
    1492:	86 95       	lsr	r24
    1494:	71 05       	cpc	r23, r1
    1496:	61 05       	cpc	r22, r1
    1498:	08 94       	sec
    149a:	08 95       	ret

0000149c <__fp_zero>:
    149c:	e8 94       	clt

0000149e <__fp_szero>:
    149e:	bb 27       	eor	r27, r27
    14a0:	66 27       	eor	r22, r22
    14a2:	77 27       	eor	r23, r23
    14a4:	cb 01       	movw	r24, r22
    14a6:	97 f9       	bld	r25, 7
    14a8:	08 95       	ret

000014aa <__gesf2>:
    14aa:	0e 94 e0 09 	call	0x13c0	; 0x13c0 <__fp_cmp>
    14ae:	08 f4       	brcc	.+2      	; 0x14b2 <__gesf2+0x8>
    14b0:	8f ef       	ldi	r24, 0xFF	; 255
    14b2:	08 95       	ret

000014b4 <__mulsf3>:
    14b4:	0e 94 6d 0a 	call	0x14da	; 0x14da <__mulsf3x>
    14b8:	0c 94 1b 0a 	jmp	0x1436	; 0x1436 <__fp_round>
    14bc:	0e 94 0d 0a 	call	0x141a	; 0x141a <__fp_pscA>
    14c0:	38 f0       	brcs	.+14     	; 0x14d0 <__mulsf3+0x1c>
    14c2:	0e 94 14 0a 	call	0x1428	; 0x1428 <__fp_pscB>
    14c6:	20 f0       	brcs	.+8      	; 0x14d0 <__mulsf3+0x1c>
    14c8:	95 23       	and	r25, r21
    14ca:	11 f0       	breq	.+4      	; 0x14d0 <__mulsf3+0x1c>
    14cc:	0c 94 04 0a 	jmp	0x1408	; 0x1408 <__fp_inf>
    14d0:	0c 94 0a 0a 	jmp	0x1414	; 0x1414 <__fp_nan>
    14d4:	11 24       	eor	r1, r1
    14d6:	0c 94 4f 0a 	jmp	0x149e	; 0x149e <__fp_szero>

000014da <__mulsf3x>:
    14da:	0e 94 2c 0a 	call	0x1458	; 0x1458 <__fp_split3>
    14de:	70 f3       	brcs	.-36     	; 0x14bc <__mulsf3+0x8>

000014e0 <__mulsf3_pse>:
    14e0:	95 9f       	mul	r25, r21
    14e2:	c1 f3       	breq	.-16     	; 0x14d4 <__mulsf3+0x20>
    14e4:	95 0f       	add	r25, r21
    14e6:	50 e0       	ldi	r21, 0x00	; 0
    14e8:	55 1f       	adc	r21, r21
    14ea:	62 9f       	mul	r22, r18
    14ec:	f0 01       	movw	r30, r0
    14ee:	72 9f       	mul	r23, r18
    14f0:	bb 27       	eor	r27, r27
    14f2:	f0 0d       	add	r31, r0
    14f4:	b1 1d       	adc	r27, r1
    14f6:	63 9f       	mul	r22, r19
    14f8:	aa 27       	eor	r26, r26
    14fa:	f0 0d       	add	r31, r0
    14fc:	b1 1d       	adc	r27, r1
    14fe:	aa 1f       	adc	r26, r26
    1500:	64 9f       	mul	r22, r20
    1502:	66 27       	eor	r22, r22
    1504:	b0 0d       	add	r27, r0
    1506:	a1 1d       	adc	r26, r1
    1508:	66 1f       	adc	r22, r22
    150a:	82 9f       	mul	r24, r18
    150c:	22 27       	eor	r18, r18
    150e:	b0 0d       	add	r27, r0
    1510:	a1 1d       	adc	r26, r1
    1512:	62 1f       	adc	r22, r18
    1514:	73 9f       	mul	r23, r19
    1516:	b0 0d       	add	r27, r0
    1518:	a1 1d       	adc	r26, r1
    151a:	62 1f       	adc	r22, r18
    151c:	83 9f       	mul	r24, r19
    151e:	a0 0d       	add	r26, r0
    1520:	61 1d       	adc	r22, r1
    1522:	22 1f       	adc	r18, r18
    1524:	74 9f       	mul	r23, r20
    1526:	33 27       	eor	r19, r19
    1528:	a0 0d       	add	r26, r0
    152a:	61 1d       	adc	r22, r1
    152c:	23 1f       	adc	r18, r19
    152e:	84 9f       	mul	r24, r20
    1530:	60 0d       	add	r22, r0
    1532:	21 1d       	adc	r18, r1
    1534:	82 2f       	mov	r24, r18
    1536:	76 2f       	mov	r23, r22
    1538:	6a 2f       	mov	r22, r26
    153a:	11 24       	eor	r1, r1
    153c:	9f 57       	subi	r25, 0x7F	; 127
    153e:	50 40       	sbci	r21, 0x00	; 0
    1540:	9a f0       	brmi	.+38     	; 0x1568 <__mulsf3_pse+0x88>
    1542:	f1 f0       	breq	.+60     	; 0x1580 <__mulsf3_pse+0xa0>
    1544:	88 23       	and	r24, r24
    1546:	4a f0       	brmi	.+18     	; 0x155a <__mulsf3_pse+0x7a>
    1548:	ee 0f       	add	r30, r30
    154a:	ff 1f       	adc	r31, r31
    154c:	bb 1f       	adc	r27, r27
    154e:	66 1f       	adc	r22, r22
    1550:	77 1f       	adc	r23, r23
    1552:	88 1f       	adc	r24, r24
    1554:	91 50       	subi	r25, 0x01	; 1
    1556:	50 40       	sbci	r21, 0x00	; 0
    1558:	a9 f7       	brne	.-22     	; 0x1544 <__mulsf3_pse+0x64>
    155a:	9e 3f       	cpi	r25, 0xFE	; 254
    155c:	51 05       	cpc	r21, r1
    155e:	80 f0       	brcs	.+32     	; 0x1580 <__mulsf3_pse+0xa0>
    1560:	0c 94 04 0a 	jmp	0x1408	; 0x1408 <__fp_inf>
    1564:	0c 94 4f 0a 	jmp	0x149e	; 0x149e <__fp_szero>
    1568:	5f 3f       	cpi	r21, 0xFF	; 255
    156a:	e4 f3       	brlt	.-8      	; 0x1564 <__mulsf3_pse+0x84>
    156c:	98 3e       	cpi	r25, 0xE8	; 232
    156e:	d4 f3       	brlt	.-12     	; 0x1564 <__mulsf3_pse+0x84>
    1570:	86 95       	lsr	r24
    1572:	77 95       	ror	r23
    1574:	67 95       	ror	r22
    1576:	b7 95       	ror	r27
    1578:	f7 95       	ror	r31
    157a:	e7 95       	ror	r30
    157c:	9f 5f       	subi	r25, 0xFF	; 255
    157e:	c1 f7       	brne	.-16     	; 0x1570 <__mulsf3_pse+0x90>
    1580:	fe 2b       	or	r31, r30
    1582:	88 0f       	add	r24, r24
    1584:	91 1d       	adc	r25, r1
    1586:	96 95       	lsr	r25
    1588:	87 95       	ror	r24
    158a:	97 f9       	bld	r25, 7
    158c:	08 95       	ret

0000158e <malloc>:
    158e:	0f 93       	push	r16
    1590:	1f 93       	push	r17
    1592:	cf 93       	push	r28
    1594:	df 93       	push	r29
    1596:	82 30       	cpi	r24, 0x02	; 2
    1598:	91 05       	cpc	r25, r1
    159a:	10 f4       	brcc	.+4      	; 0x15a0 <malloc+0x12>
    159c:	82 e0       	ldi	r24, 0x02	; 2
    159e:	90 e0       	ldi	r25, 0x00	; 0
    15a0:	e0 91 f0 00 	lds	r30, 0x00F0	; 0x8000f0 <__flp>
    15a4:	f0 91 f1 00 	lds	r31, 0x00F1	; 0x8000f1 <__flp+0x1>
    15a8:	20 e0       	ldi	r18, 0x00	; 0
    15aa:	30 e0       	ldi	r19, 0x00	; 0
    15ac:	a0 e0       	ldi	r26, 0x00	; 0
    15ae:	b0 e0       	ldi	r27, 0x00	; 0
    15b0:	30 97       	sbiw	r30, 0x00	; 0
    15b2:	19 f1       	breq	.+70     	; 0x15fa <malloc+0x6c>
    15b4:	40 81       	ld	r20, Z
    15b6:	51 81       	ldd	r21, Z+1	; 0x01
    15b8:	02 81       	ldd	r16, Z+2	; 0x02
    15ba:	13 81       	ldd	r17, Z+3	; 0x03
    15bc:	48 17       	cp	r20, r24
    15be:	59 07       	cpc	r21, r25
    15c0:	c8 f0       	brcs	.+50     	; 0x15f4 <malloc+0x66>
    15c2:	84 17       	cp	r24, r20
    15c4:	95 07       	cpc	r25, r21
    15c6:	69 f4       	brne	.+26     	; 0x15e2 <malloc+0x54>
    15c8:	10 97       	sbiw	r26, 0x00	; 0
    15ca:	31 f0       	breq	.+12     	; 0x15d8 <malloc+0x4a>
    15cc:	12 96       	adiw	r26, 0x02	; 2
    15ce:	0c 93       	st	X, r16
    15d0:	12 97       	sbiw	r26, 0x02	; 2
    15d2:	13 96       	adiw	r26, 0x03	; 3
    15d4:	1c 93       	st	X, r17
    15d6:	27 c0       	rjmp	.+78     	; 0x1626 <malloc+0x98>
    15d8:	00 93 f0 00 	sts	0x00F0, r16	; 0x8000f0 <__flp>
    15dc:	10 93 f1 00 	sts	0x00F1, r17	; 0x8000f1 <__flp+0x1>
    15e0:	22 c0       	rjmp	.+68     	; 0x1626 <malloc+0x98>
    15e2:	21 15       	cp	r18, r1
    15e4:	31 05       	cpc	r19, r1
    15e6:	19 f0       	breq	.+6      	; 0x15ee <malloc+0x60>
    15e8:	42 17       	cp	r20, r18
    15ea:	53 07       	cpc	r21, r19
    15ec:	18 f4       	brcc	.+6      	; 0x15f4 <malloc+0x66>
    15ee:	9a 01       	movw	r18, r20
    15f0:	bd 01       	movw	r22, r26
    15f2:	ef 01       	movw	r28, r30
    15f4:	df 01       	movw	r26, r30
    15f6:	f8 01       	movw	r30, r16
    15f8:	db cf       	rjmp	.-74     	; 0x15b0 <malloc+0x22>
    15fa:	21 15       	cp	r18, r1
    15fc:	31 05       	cpc	r19, r1
    15fe:	f9 f0       	breq	.+62     	; 0x163e <malloc+0xb0>
    1600:	28 1b       	sub	r18, r24
    1602:	39 0b       	sbc	r19, r25
    1604:	24 30       	cpi	r18, 0x04	; 4
    1606:	31 05       	cpc	r19, r1
    1608:	80 f4       	brcc	.+32     	; 0x162a <malloc+0x9c>
    160a:	8a 81       	ldd	r24, Y+2	; 0x02
    160c:	9b 81       	ldd	r25, Y+3	; 0x03
    160e:	61 15       	cp	r22, r1
    1610:	71 05       	cpc	r23, r1
    1612:	21 f0       	breq	.+8      	; 0x161c <malloc+0x8e>
    1614:	fb 01       	movw	r30, r22
    1616:	93 83       	std	Z+3, r25	; 0x03
    1618:	82 83       	std	Z+2, r24	; 0x02
    161a:	04 c0       	rjmp	.+8      	; 0x1624 <malloc+0x96>
    161c:	90 93 f1 00 	sts	0x00F1, r25	; 0x8000f1 <__flp+0x1>
    1620:	80 93 f0 00 	sts	0x00F0, r24	; 0x8000f0 <__flp>
    1624:	fe 01       	movw	r30, r28
    1626:	32 96       	adiw	r30, 0x02	; 2
    1628:	44 c0       	rjmp	.+136    	; 0x16b2 <malloc+0x124>
    162a:	fe 01       	movw	r30, r28
    162c:	e2 0f       	add	r30, r18
    162e:	f3 1f       	adc	r31, r19
    1630:	81 93       	st	Z+, r24
    1632:	91 93       	st	Z+, r25
    1634:	22 50       	subi	r18, 0x02	; 2
    1636:	31 09       	sbc	r19, r1
    1638:	39 83       	std	Y+1, r19	; 0x01
    163a:	28 83       	st	Y, r18
    163c:	3a c0       	rjmp	.+116    	; 0x16b2 <malloc+0x124>
    163e:	20 91 ee 00 	lds	r18, 0x00EE	; 0x8000ee <__brkval>
    1642:	30 91 ef 00 	lds	r19, 0x00EF	; 0x8000ef <__brkval+0x1>
    1646:	23 2b       	or	r18, r19
    1648:	41 f4       	brne	.+16     	; 0x165a <malloc+0xcc>
    164a:	20 91 62 00 	lds	r18, 0x0062	; 0x800062 <__malloc_heap_start>
    164e:	30 91 63 00 	lds	r19, 0x0063	; 0x800063 <__malloc_heap_start+0x1>
    1652:	30 93 ef 00 	sts	0x00EF, r19	; 0x8000ef <__brkval+0x1>
    1656:	20 93 ee 00 	sts	0x00EE, r18	; 0x8000ee <__brkval>
    165a:	20 91 60 00 	lds	r18, 0x0060	; 0x800060 <__data_start>
    165e:	30 91 61 00 	lds	r19, 0x0061	; 0x800061 <__data_start+0x1>
    1662:	21 15       	cp	r18, r1
    1664:	31 05       	cpc	r19, r1
    1666:	41 f4       	brne	.+16     	; 0x1678 <malloc+0xea>
    1668:	2d b7       	in	r18, 0x3d	; 61
    166a:	3e b7       	in	r19, 0x3e	; 62
    166c:	40 91 64 00 	lds	r20, 0x0064	; 0x800064 <__malloc_margin>
    1670:	50 91 65 00 	lds	r21, 0x0065	; 0x800065 <__malloc_margin+0x1>
    1674:	24 1b       	sub	r18, r20
    1676:	35 0b       	sbc	r19, r21
    1678:	e0 91 ee 00 	lds	r30, 0x00EE	; 0x8000ee <__brkval>
    167c:	f0 91 ef 00 	lds	r31, 0x00EF	; 0x8000ef <__brkval+0x1>
    1680:	e2 17       	cp	r30, r18
    1682:	f3 07       	cpc	r31, r19
    1684:	a0 f4       	brcc	.+40     	; 0x16ae <malloc+0x120>
    1686:	2e 1b       	sub	r18, r30
    1688:	3f 0b       	sbc	r19, r31
    168a:	28 17       	cp	r18, r24
    168c:	39 07       	cpc	r19, r25
    168e:	78 f0       	brcs	.+30     	; 0x16ae <malloc+0x120>
    1690:	ac 01       	movw	r20, r24
    1692:	4e 5f       	subi	r20, 0xFE	; 254
    1694:	5f 4f       	sbci	r21, 0xFF	; 255
    1696:	24 17       	cp	r18, r20
    1698:	35 07       	cpc	r19, r21
    169a:	48 f0       	brcs	.+18     	; 0x16ae <malloc+0x120>
    169c:	4e 0f       	add	r20, r30
    169e:	5f 1f       	adc	r21, r31
    16a0:	50 93 ef 00 	sts	0x00EF, r21	; 0x8000ef <__brkval+0x1>
    16a4:	40 93 ee 00 	sts	0x00EE, r20	; 0x8000ee <__brkval>
    16a8:	81 93       	st	Z+, r24
    16aa:	91 93       	st	Z+, r25
    16ac:	02 c0       	rjmp	.+4      	; 0x16b2 <malloc+0x124>
    16ae:	e0 e0       	ldi	r30, 0x00	; 0
    16b0:	f0 e0       	ldi	r31, 0x00	; 0
    16b2:	cf 01       	movw	r24, r30
    16b4:	df 91       	pop	r29
    16b6:	cf 91       	pop	r28
    16b8:	1f 91       	pop	r17
    16ba:	0f 91       	pop	r16
    16bc:	08 95       	ret

000016be <free>:
    16be:	cf 93       	push	r28
    16c0:	df 93       	push	r29
    16c2:	00 97       	sbiw	r24, 0x00	; 0
    16c4:	09 f4       	brne	.+2      	; 0x16c8 <free+0xa>
    16c6:	81 c0       	rjmp	.+258    	; 0x17ca <free+0x10c>
    16c8:	fc 01       	movw	r30, r24
    16ca:	32 97       	sbiw	r30, 0x02	; 2
    16cc:	13 82       	std	Z+3, r1	; 0x03
    16ce:	12 82       	std	Z+2, r1	; 0x02
    16d0:	a0 91 f0 00 	lds	r26, 0x00F0	; 0x8000f0 <__flp>
    16d4:	b0 91 f1 00 	lds	r27, 0x00F1	; 0x8000f1 <__flp+0x1>
    16d8:	10 97       	sbiw	r26, 0x00	; 0
    16da:	81 f4       	brne	.+32     	; 0x16fc <free+0x3e>
    16dc:	20 81       	ld	r18, Z
    16de:	31 81       	ldd	r19, Z+1	; 0x01
    16e0:	82 0f       	add	r24, r18
    16e2:	93 1f       	adc	r25, r19
    16e4:	20 91 ee 00 	lds	r18, 0x00EE	; 0x8000ee <__brkval>
    16e8:	30 91 ef 00 	lds	r19, 0x00EF	; 0x8000ef <__brkval+0x1>
    16ec:	28 17       	cp	r18, r24
    16ee:	39 07       	cpc	r19, r25
    16f0:	51 f5       	brne	.+84     	; 0x1746 <free+0x88>
    16f2:	f0 93 ef 00 	sts	0x00EF, r31	; 0x8000ef <__brkval+0x1>
    16f6:	e0 93 ee 00 	sts	0x00EE, r30	; 0x8000ee <__brkval>
    16fa:	67 c0       	rjmp	.+206    	; 0x17ca <free+0x10c>
    16fc:	ed 01       	movw	r28, r26
    16fe:	20 e0       	ldi	r18, 0x00	; 0
    1700:	30 e0       	ldi	r19, 0x00	; 0
    1702:	ce 17       	cp	r28, r30
    1704:	df 07       	cpc	r29, r31
    1706:	40 f4       	brcc	.+16     	; 0x1718 <free+0x5a>
    1708:	4a 81       	ldd	r20, Y+2	; 0x02
    170a:	5b 81       	ldd	r21, Y+3	; 0x03
    170c:	9e 01       	movw	r18, r28
    170e:	41 15       	cp	r20, r1
    1710:	51 05       	cpc	r21, r1
    1712:	f1 f0       	breq	.+60     	; 0x1750 <free+0x92>
    1714:	ea 01       	movw	r28, r20
    1716:	f5 cf       	rjmp	.-22     	; 0x1702 <free+0x44>
    1718:	d3 83       	std	Z+3, r29	; 0x03
    171a:	c2 83       	std	Z+2, r28	; 0x02
    171c:	40 81       	ld	r20, Z
    171e:	51 81       	ldd	r21, Z+1	; 0x01
    1720:	84 0f       	add	r24, r20
    1722:	95 1f       	adc	r25, r21
    1724:	c8 17       	cp	r28, r24
    1726:	d9 07       	cpc	r29, r25
    1728:	59 f4       	brne	.+22     	; 0x1740 <free+0x82>
    172a:	88 81       	ld	r24, Y
    172c:	99 81       	ldd	r25, Y+1	; 0x01
    172e:	84 0f       	add	r24, r20
    1730:	95 1f       	adc	r25, r21
    1732:	02 96       	adiw	r24, 0x02	; 2
    1734:	91 83       	std	Z+1, r25	; 0x01
    1736:	80 83       	st	Z, r24
    1738:	8a 81       	ldd	r24, Y+2	; 0x02
    173a:	9b 81       	ldd	r25, Y+3	; 0x03
    173c:	93 83       	std	Z+3, r25	; 0x03
    173e:	82 83       	std	Z+2, r24	; 0x02
    1740:	21 15       	cp	r18, r1
    1742:	31 05       	cpc	r19, r1
    1744:	29 f4       	brne	.+10     	; 0x1750 <free+0x92>
    1746:	f0 93 f1 00 	sts	0x00F1, r31	; 0x8000f1 <__flp+0x1>
    174a:	e0 93 f0 00 	sts	0x00F0, r30	; 0x8000f0 <__flp>
    174e:	3d c0       	rjmp	.+122    	; 0x17ca <free+0x10c>
    1750:	e9 01       	movw	r28, r18
    1752:	fb 83       	std	Y+3, r31	; 0x03
    1754:	ea 83       	std	Y+2, r30	; 0x02
    1756:	49 91       	ld	r20, Y+
    1758:	59 91       	ld	r21, Y+
    175a:	c4 0f       	add	r28, r20
    175c:	d5 1f       	adc	r29, r21
    175e:	ec 17       	cp	r30, r28
    1760:	fd 07       	cpc	r31, r29
    1762:	61 f4       	brne	.+24     	; 0x177c <free+0xbe>
    1764:	80 81       	ld	r24, Z
    1766:	91 81       	ldd	r25, Z+1	; 0x01
    1768:	84 0f       	add	r24, r20
    176a:	95 1f       	adc	r25, r21
    176c:	02 96       	adiw	r24, 0x02	; 2
    176e:	e9 01       	movw	r28, r18
    1770:	99 83       	std	Y+1, r25	; 0x01
    1772:	88 83       	st	Y, r24
    1774:	82 81       	ldd	r24, Z+2	; 0x02
    1776:	93 81       	ldd	r25, Z+3	; 0x03
    1778:	9b 83       	std	Y+3, r25	; 0x03
    177a:	8a 83       	std	Y+2, r24	; 0x02
    177c:	e0 e0       	ldi	r30, 0x00	; 0
    177e:	f0 e0       	ldi	r31, 0x00	; 0
    1780:	12 96       	adiw	r26, 0x02	; 2
    1782:	8d 91       	ld	r24, X+
    1784:	9c 91       	ld	r25, X
    1786:	13 97       	sbiw	r26, 0x03	; 3
    1788:	00 97       	sbiw	r24, 0x00	; 0
    178a:	19 f0       	breq	.+6      	; 0x1792 <free+0xd4>
    178c:	fd 01       	movw	r30, r26
    178e:	dc 01       	movw	r26, r24
    1790:	f7 cf       	rjmp	.-18     	; 0x1780 <free+0xc2>
    1792:	8d 91       	ld	r24, X+
    1794:	9c 91       	ld	r25, X
    1796:	11 97       	sbiw	r26, 0x01	; 1
    1798:	9d 01       	movw	r18, r26
    179a:	2e 5f       	subi	r18, 0xFE	; 254
    179c:	3f 4f       	sbci	r19, 0xFF	; 255
    179e:	82 0f       	add	r24, r18
    17a0:	93 1f       	adc	r25, r19
    17a2:	20 91 ee 00 	lds	r18, 0x00EE	; 0x8000ee <__brkval>
    17a6:	30 91 ef 00 	lds	r19, 0x00EF	; 0x8000ef <__brkval+0x1>
    17aa:	28 17       	cp	r18, r24
    17ac:	39 07       	cpc	r19, r25
    17ae:	69 f4       	brne	.+26     	; 0x17ca <free+0x10c>
    17b0:	30 97       	sbiw	r30, 0x00	; 0
    17b2:	29 f4       	brne	.+10     	; 0x17be <free+0x100>
    17b4:	10 92 f1 00 	sts	0x00F1, r1	; 0x8000f1 <__flp+0x1>
    17b8:	10 92 f0 00 	sts	0x00F0, r1	; 0x8000f0 <__flp>
    17bc:	02 c0       	rjmp	.+4      	; 0x17c2 <free+0x104>
    17be:	13 82       	std	Z+3, r1	; 0x03
    17c0:	12 82       	std	Z+2, r1	; 0x02
    17c2:	b0 93 ef 00 	sts	0x00EF, r27	; 0x8000ef <__brkval+0x1>
    17c6:	a0 93 ee 00 	sts	0x00EE, r26	; 0x8000ee <__brkval>
    17ca:	df 91       	pop	r29
    17cc:	cf 91       	pop	r28
    17ce:	08 95       	ret

000017d0 <__do_global_dtors>:
    17d0:	10 e0       	ldi	r17, 0x00	; 0
    17d2:	cd e2       	ldi	r28, 0x2D	; 45
    17d4:	d0 e0       	ldi	r29, 0x00	; 0
    17d6:	04 c0       	rjmp	.+8      	; 0x17e0 <__do_global_dtors+0x10>
    17d8:	fe 01       	movw	r30, r28
    17da:	0e 94 f5 08 	call	0x11ea	; 0x11ea <__tablejump2__>
    17de:	21 96       	adiw	r28, 0x01	; 1
    17e0:	ce 32       	cpi	r28, 0x2E	; 46
    17e2:	d1 07       	cpc	r29, r17
    17e4:	c9 f7       	brne	.-14     	; 0x17d8 <__do_global_dtors+0x8>
    17e6:	f8 94       	cli

000017e8 <__stop_program>:
    17e8:	ff cf       	rjmp	.-2      	; 0x17e8 <__stop_program>
