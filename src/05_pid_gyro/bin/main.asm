
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
      4c:	0c 94 da 02 	jmp	0x5b4	; 0x5b4 <__vector_19>
      50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
      54:	1e 03       	fmul	r17, r22
      56:	7d 08       	sbc	r7, r13
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
      a4:	0e 94 fa 01 	call	0x3f4	; 0x3f4 <main>
      a8:	0c 94 d4 0b 	jmp	0x17a8	; 0x17a8 <__do_global_dtors>

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
     15e:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     162:	a7 01       	movw	r20, r14
     164:	96 01       	movw	r18, r12
     166:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
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
     188:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     18c:	9b 01       	movw	r18, r22
     18e:	ac 01       	movw	r20, r24
     190:	c5 01       	movw	r24, r10
     192:	b4 01       	movw	r22, r8
     194:	0e 94 db 08 	call	0x11b6	; 0x11b6 <__subsf3>
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
     222:	0e 94 3a 0a 	call	0x1474	; 0x1474 <__mulsf3>
     226:	2b 01       	movw	r4, r22
     228:	3c 01       	movw	r6, r24
     22a:	28 8d       	ldd	r18, Y+24	; 0x18
     22c:	39 8d       	ldd	r19, Y+25	; 0x19
     22e:	4a 8d       	ldd	r20, Y+26	; 0x1a
     230:	5b 8d       	ldd	r21, Y+27	; 0x1b
     232:	c5 01       	movw	r24, r10
     234:	b4 01       	movw	r22, r8
     236:	0e 94 3a 0a 	call	0x1474	; 0x1474 <__mulsf3>
     23a:	9b 01       	movw	r18, r22
     23c:	ac 01       	movw	r20, r24
     23e:	c3 01       	movw	r24, r6
     240:	b2 01       	movw	r22, r4
     242:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     246:	4b 01       	movw	r8, r22
     248:	5c 01       	movw	r10, r24
     24a:	2c 8d       	ldd	r18, Y+28	; 0x1c
     24c:	3d 8d       	ldd	r19, Y+29	; 0x1d
     24e:	4e 8d       	ldd	r20, Y+30	; 0x1e
     250:	5f 8d       	ldd	r21, Y+31	; 0x1f
     252:	c7 01       	movw	r24, r14
     254:	b6 01       	movw	r22, r12
     256:	0e 94 3a 0a 	call	0x1474	; 0x1474 <__mulsf3>
     25a:	9b 01       	movw	r18, r22
     25c:	ac 01       	movw	r20, r24
     25e:	c5 01       	movw	r24, r10
     260:	b4 01       	movw	r22, r8
     262:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     266:	28 81       	ld	r18, Y
     268:	39 81       	ldd	r19, Y+1	; 0x01
     26a:	4a 81       	ldd	r20, Y+2	; 0x02
     26c:	5b 81       	ldd	r21, Y+3	; 0x03
     26e:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
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
     286:	0e 94 35 0a 	call	0x146a	; 0x146a <__gesf2>
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
     2aa:	0e 94 48 09 	call	0x1290	; 0x1290 <__cmpsf2>
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

000002e0 <_ZN5BlinkD1Ev>:
     2e0:	08 95       	ret

000002e2 <_ZN5BlinkD0Ev>:
     2e2:	0c 94 8a 08 	jmp	0x1114	; 0x1114 <_ZdlPv>

000002e6 <_ZN13Stabilization4mainEv>:
     2e6:	8f 92       	push	r8
     2e8:	9f 92       	push	r9
     2ea:	af 92       	push	r10
     2ec:	bf 92       	push	r11
     2ee:	cf 92       	push	r12
     2f0:	df 92       	push	r13
     2f2:	ef 92       	push	r14
     2f4:	ff 92       	push	r15
     2f6:	cf 93       	push	r28
     2f8:	df 93       	push	r29
     2fa:	ec 01       	movw	r28, r24
     2fc:	60 e0       	ldi	r22, 0x00	; 0
     2fe:	03 96       	adiw	r24, 0x03	; 3
     300:	0e 94 69 03 	call	0x6d2	; 0x6d2 <_ZN4Gyro4readEb>
     304:	8f 8d       	ldd	r24, Y+31	; 0x1f
     306:	98 a1       	ldd	r25, Y+32	; 0x20
     308:	a9 a1       	ldd	r26, Y+33	; 0x21
     30a:	ba a1       	ldd	r27, Y+34	; 0x22
     30c:	9c 01       	movw	r18, r24
     30e:	ad 01       	movw	r20, r26
     310:	66 27       	eor	r22, r22
     312:	77 27       	eor	r23, r23
     314:	cb 01       	movw	r24, r22
     316:	62 1b       	sub	r22, r18
     318:	73 0b       	sbc	r23, r19
     31a:	84 0b       	sbc	r24, r20
     31c:	95 0b       	sbc	r25, r21
     31e:	0e 94 85 09 	call	0x130a	; 0x130a <__floatsisf>
     322:	2d ec       	ldi	r18, 0xCD	; 205
     324:	3c ec       	ldi	r19, 0xCC	; 204
     326:	4c ec       	ldi	r20, 0xCC	; 204
     328:	5d e3       	ldi	r21, 0x3D	; 61
     32a:	0e 94 3a 0a 	call	0x1474	; 0x1474 <__mulsf3>
     32e:	9b 01       	movw	r18, r22
     330:	ac 01       	movw	r20, r24
     332:	60 e0       	ldi	r22, 0x00	; 0
     334:	70 e0       	ldi	r23, 0x00	; 0
     336:	cb 01       	movw	r24, r22
     338:	0e 94 db 08 	call	0x11b6	; 0x11b6 <__subsf3>
     33c:	ab 01       	movw	r20, r22
     33e:	bc 01       	movw	r22, r24
     340:	ce 01       	movw	r24, r28
     342:	cd 96       	adiw	r24, 0x3d	; 61
     344:	0e 94 e8 00 	call	0x1d0	; 0x1d0 <_ZN3PID7processEf>
     348:	6b 01       	movw	r12, r22
     34a:	7c 01       	movw	r14, r24
     34c:	9b 01       	movw	r18, r22
     34e:	ac 01       	movw	r20, r24
     350:	60 e0       	ldi	r22, 0x00	; 0
     352:	70 e0       	ldi	r23, 0x00	; 0
     354:	cb 01       	movw	r24, r22
     356:	0e 94 db 08 	call	0x11b6	; 0x11b6 <__subsf3>
     35a:	0e 94 4d 09 	call	0x129a	; 0x129a <__fixsfsi>
     35e:	4b 01       	movw	r8, r22
     360:	5c 01       	movw	r10, r24
     362:	20 e0       	ldi	r18, 0x00	; 0
     364:	30 e0       	ldi	r19, 0x00	; 0
     366:	a9 01       	movw	r20, r18
     368:	c7 01       	movw	r24, r14
     36a:	b6 01       	movw	r22, r12
     36c:	0e 94 dc 08 	call	0x11b8	; 0x11b8 <__addsf3>
     370:	0e 94 4d 09 	call	0x129a	; 0x129a <__fixsfsi>
     374:	a4 01       	movw	r20, r8
     376:	ce 01       	movw	r24, r28
     378:	02 96       	adiw	r24, 0x02	; 2
     37a:	df 91       	pop	r29
     37c:	cf 91       	pop	r28
     37e:	ff 90       	pop	r15
     380:	ef 90       	pop	r14
     382:	df 90       	pop	r13
     384:	cf 90       	pop	r12
     386:	bf 90       	pop	r11
     388:	af 90       	pop	r10
     38a:	9f 90       	pop	r9
     38c:	8f 90       	pop	r8
     38e:	0c 94 2f 03 	jmp	0x65e	; 0x65e <_ZN5Motor3runEii>

00000392 <_ZN13StabilizationD1Ev>:
     392:	cf 93       	push	r28
     394:	df 93       	push	r29
     396:	ec 01       	movw	r28, r24
     398:	84 e7       	ldi	r24, 0x74	; 116
     39a:	90 e0       	ldi	r25, 0x00	; 0
     39c:	99 83       	std	Y+1, r25	; 0x01
     39e:	88 83       	st	Y, r24
     3a0:	ce 01       	movw	r24, r28
     3a2:	cd 96       	adiw	r24, 0x3d	; 61
     3a4:	0e 94 7e 00 	call	0xfc	; 0xfc <_ZN3PIDD1Ev>
     3a8:	ce 01       	movw	r24, r28
     3aa:	03 96       	adiw	r24, 0x03	; 3
     3ac:	0e 94 68 03 	call	0x6d0	; 0x6d0 <_ZN4GyroD1Ev>
     3b0:	ce 01       	movw	r24, r28
     3b2:	02 96       	adiw	r24, 0x02	; 2
     3b4:	df 91       	pop	r29
     3b6:	cf 91       	pop	r28
     3b8:	0c 94 2e 03 	jmp	0x65c	; 0x65c <_ZN5MotorD1Ev>

000003bc <_ZN13StabilizationD0Ev>:
     3bc:	cf 93       	push	r28
     3be:	df 93       	push	r29
     3c0:	ec 01       	movw	r28, r24
     3c2:	0e 94 c9 01 	call	0x392	; 0x392 <_ZN13StabilizationD1Ev>
     3c6:	ce 01       	movw	r24, r28
     3c8:	df 91       	pop	r29
     3ca:	cf 91       	pop	r28
     3cc:	0c 94 8a 08 	jmp	0x1114	; 0x1114 <_ZdlPv>

000003d0 <_ZN5Blink4mainEv>:
     3d0:	fc 01       	movw	r30, r24
     3d2:	83 81       	ldd	r24, Z+3	; 0x03
     3d4:	94 81       	ldd	r25, Z+4	; 0x04
     3d6:	00 97       	sbiw	r24, 0x00	; 0
     3d8:	19 f0       	breq	.+6      	; 0x3e0 <_ZN5Blink4mainEv+0x10>
     3da:	01 97       	sbiw	r24, 0x01	; 1
     3dc:	39 f0       	breq	.+14     	; 0x3ec <_ZN5Blink4mainEv+0x1c>
     3de:	08 95       	ret
     3e0:	dd 9a       	sbi	0x1b, 5	; 27
     3e2:	81 e0       	ldi	r24, 0x01	; 1
     3e4:	90 e0       	ldi	r25, 0x00	; 0
     3e6:	94 83       	std	Z+4, r25	; 0x04
     3e8:	83 83       	std	Z+3, r24	; 0x03
     3ea:	08 95       	ret
     3ec:	dd 98       	cbi	0x1b, 5	; 27
     3ee:	14 82       	std	Z+4, r1	; 0x04
     3f0:	13 82       	std	Z+3, r1	; 0x03
     3f2:	08 95       	ret

000003f4 <main>:
     3f4:	cf 93       	push	r28
     3f6:	df 93       	push	r29
     3f8:	cd b7       	in	r28, 0x3d	; 61
     3fa:	de b7       	in	r29, 0x3e	; 62
     3fc:	c2 56       	subi	r28, 0x62	; 98
     3fe:	d1 09       	sbc	r29, r1
     400:	0f b6       	in	r0, 0x3f	; 63
     402:	f8 94       	cli
     404:	de bf       	out	0x3e, r29	; 62
     406:	0f be       	out	0x3f, r0	; 63
     408:	cd bf       	out	0x3d, r28	; 61
     40a:	8a e6       	ldi	r24, 0x6A	; 106
     40c:	90 e0       	ldi	r25, 0x00	; 0
     40e:	a0 96       	adiw	r28, 0x20	; 32
     410:	9f af       	std	Y+63, r25	; 0x3f
     412:	8e af       	std	Y+62, r24	; 0x3e
     414:	a0 97       	sbiw	r28, 0x20	; 32
     416:	d5 9a       	sbi	0x1a, 5	; 26
     418:	a3 96       	adiw	r28, 0x23	; 35
     41a:	1f ae       	std	Y+63, r1	; 0x3f
     41c:	1e ae       	std	Y+62, r1	; 0x3e
     41e:	a3 97       	sbiw	r28, 0x23	; 35
     420:	48 ec       	ldi	r20, 0xC8	; 200
     422:	50 e0       	ldi	r21, 0x00	; 0
     424:	be 01       	movw	r22, r28
     426:	62 5a       	subi	r22, 0xA2	; 162
     428:	7f 4f       	sbci	r23, 0xFF	; 255
     42a:	82 e9       	ldi	r24, 0x92	; 146
     42c:	90 e0       	ldi	r25, 0x00	; 0
     42e:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5Timer8add_taskEP4Taskj>
     432:	84 e7       	ldi	r24, 0x74	; 116
     434:	90 e0       	ldi	r25, 0x00	; 0
     436:	9a 83       	std	Y+2, r25	; 0x02
     438:	89 83       	std	Y+1, r24	; 0x01
     43a:	ce 01       	movw	r24, r28
     43c:	03 96       	adiw	r24, 0x03	; 3
     43e:	0e 94 22 03 	call	0x644	; 0x644 <_ZN5MotorC1Ev>
     442:	ce 01       	movw	r24, r28
     444:	04 96       	adiw	r24, 0x04	; 4
     446:	0e 94 67 03 	call	0x6ce	; 0x6ce <_ZN4GyroC1Ev>
     44a:	ce 01       	movw	r24, r28
     44c:	ce 96       	adiw	r24, 0x3e	; 62
     44e:	0e 94 58 00 	call	0xb0	; 0xb0 <_ZN3PIDC1Ev>
     452:	6f ec       	ldi	r22, 0xCF	; 207
     454:	70 e0       	ldi	r23, 0x00	; 0
     456:	ce 01       	movw	r24, r28
     458:	04 96       	adiw	r24, 0x04	; 4
     45a:	0e 94 ff 04 	call	0x9fe	; 0x9fe <_ZN4Gyro4initEP13I2C_Interface>
     45e:	81 2c       	mov	r8, r1
     460:	91 2c       	mov	r9, r1
     462:	2f e7       	ldi	r18, 0x7F	; 127
     464:	a2 2e       	mov	r10, r18
     466:	23 e4       	ldi	r18, 0x43	; 67
     468:	b2 2e       	mov	r11, r18
     46a:	c1 2c       	mov	r12, r1
     46c:	d1 2c       	mov	r13, r1
     46e:	76 01       	movw	r14, r12
     470:	97 01       	movw	r18, r14
     472:	86 01       	movw	r16, r12
     474:	40 e0       	ldi	r20, 0x00	; 0
     476:	50 e0       	ldi	r21, 0x00	; 0
     478:	60 e8       	ldi	r22, 0x80	; 128
     47a:	7f e3       	ldi	r23, 0x3F	; 63
     47c:	ce 01       	movw	r24, r28
     47e:	ce 96       	adiw	r24, 0x3e	; 62
     480:	0e 94 7f 00 	call	0xfe	; 0xfe <_ZN3PID4initEffff>
     484:	bb 98       	cbi	0x17, 3	; 23
     486:	c3 9a       	sbi	0x18, 3	; 24
     488:	ba 98       	cbi	0x17, 2	; 23
     48a:	c2 9a       	sbi	0x18, 2	; 24
     48c:	b3 9b       	sbis	0x16, 3	; 22
     48e:	07 c0       	rjmp	.+14     	; 0x49e <__stack+0x3f>
     490:	b2 9b       	sbis	0x16, 2	; 22
     492:	05 c0       	rjmp	.+10     	; 0x49e <__stack+0x3f>
     494:	82 e9       	ldi	r24, 0x92	; 146
     496:	90 e0       	ldi	r25, 0x00	; 0
     498:	0e 94 bd 02 	call	0x57a	; 0x57a <_ZN5Timer4mainEv>
     49c:	f7 cf       	rjmp	.-18     	; 0x48c <__stack+0x2d>
     49e:	b3 99       	sbic	0x16, 3	; 22
     4a0:	17 c0       	rjmp	.+46     	; 0x4d0 <__stack+0x71>
     4a2:	81 2c       	mov	r8, r1
     4a4:	91 2c       	mov	r9, r1
     4a6:	8f e7       	ldi	r24, 0x7F	; 127
     4a8:	a8 2e       	mov	r10, r24
     4aa:	83 e4       	ldi	r24, 0x43	; 67
     4ac:	b8 2e       	mov	r11, r24
     4ae:	c1 2c       	mov	r12, r1
     4b0:	d1 2c       	mov	r13, r1
     4b2:	90 ea       	ldi	r25, 0xA0	; 160
     4b4:	e9 2e       	mov	r14, r25
     4b6:	90 e4       	ldi	r25, 0x40	; 64
     4b8:	f9 2e       	mov	r15, r25
     4ba:	00 e0       	ldi	r16, 0x00	; 0
     4bc:	10 e0       	ldi	r17, 0x00	; 0
     4be:	98 01       	movw	r18, r16
     4c0:	40 e0       	ldi	r20, 0x00	; 0
     4c2:	50 e0       	ldi	r21, 0x00	; 0
     4c4:	60 ec       	ldi	r22, 0xC0	; 192
     4c6:	7f e3       	ldi	r23, 0x3F	; 63
     4c8:	ce 01       	movw	r24, r28
     4ca:	ce 96       	adiw	r24, 0x3e	; 62
     4cc:	0e 94 7f 00 	call	0xfe	; 0xfe <_ZN3PID4initEffff>
     4d0:	4a e0       	ldi	r20, 0x0A	; 10
     4d2:	50 e0       	ldi	r21, 0x00	; 0
     4d4:	be 01       	movw	r22, r28
     4d6:	6f 5f       	subi	r22, 0xFF	; 255
     4d8:	7f 4f       	sbci	r23, 0xFF	; 255
     4da:	82 e9       	ldi	r24, 0x92	; 146
     4dc:	90 e0       	ldi	r25, 0x00	; 0
     4de:	0e 94 9b 02 	call	0x536	; 0x536 <_ZN5Timer8add_taskEP4Taskj>
     4e2:	82 e9       	ldi	r24, 0x92	; 146
     4e4:	90 e0       	ldi	r25, 0x00	; 0
     4e6:	0e 94 bd 02 	call	0x57a	; 0x57a <_ZN5Timer4mainEv>
     4ea:	fb cf       	rjmp	.-10     	; 0x4e2 <__stack+0x83>

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

00000502 <_ZN5TimerC1Ev>:
     502:	e3 e9       	ldi	r30, 0x93	; 147
     504:	f0 e0       	ldi	r31, 0x00	; 0
     506:	11 82       	std	Z+1, r1	; 0x01
     508:	10 82       	st	Z, r1
     50a:	13 82       	std	Z+3, r1	; 0x03
     50c:	12 82       	std	Z+2, r1	; 0x02
     50e:	15 82       	std	Z+5, r1	; 0x05
     510:	14 82       	std	Z+4, r1	; 0x04
     512:	16 82       	std	Z+6, r1	; 0x06
     514:	37 96       	adiw	r30, 0x07	; 7
     516:	80 e0       	ldi	r24, 0x00	; 0
     518:	eb 3c       	cpi	r30, 0xCB	; 203
     51a:	f8 07       	cpc	r31, r24
     51c:	a1 f7       	brne	.-24     	; 0x506 <_ZN5TimerC1Ev+0x4>
     51e:	83 b7       	in	r24, 0x33	; 51
     520:	88 60       	ori	r24, 0x08	; 8
     522:	83 bf       	out	0x33, r24	; 51
     524:	8b e9       	ldi	r24, 0x9B	; 155
     526:	8c bf       	out	0x3c, r24	; 60
     528:	83 e0       	ldi	r24, 0x03	; 3
     52a:	83 bf       	out	0x33, r24	; 51
     52c:	89 b7       	in	r24, 0x39	; 57
     52e:	82 60       	ori	r24, 0x02	; 2
     530:	89 bf       	out	0x39, r24	; 57
     532:	78 94       	sei
     534:	08 95       	ret

00000536 <_ZN5Timer8add_taskEP4Taskj>:
     536:	f8 94       	cli
     538:	e3 e9       	ldi	r30, 0x93	; 147
     53a:	f0 e0       	ldi	r31, 0x00	; 0
     53c:	80 e0       	ldi	r24, 0x00	; 0
     53e:	90 e0       	ldi	r25, 0x00	; 0
     540:	20 81       	ld	r18, Z
     542:	31 81       	ldd	r19, Z+1	; 0x01
     544:	23 2b       	or	r18, r19
     546:	81 f4       	brne	.+32     	; 0x568 <_ZN5Timer8add_taskEP4Taskj+0x32>
     548:	27 e0       	ldi	r18, 0x07	; 7
     54a:	28 9f       	mul	r18, r24
     54c:	f0 01       	movw	r30, r0
     54e:	29 9f       	mul	r18, r25
     550:	f0 0d       	add	r31, r0
     552:	11 24       	eor	r1, r1
     554:	ed 56       	subi	r30, 0x6D	; 109
     556:	ff 4f       	sbci	r31, 0xFF	; 255
     558:	71 83       	std	Z+1, r23	; 0x01
     55a:	60 83       	st	Z, r22
     55c:	53 83       	std	Z+3, r21	; 0x03
     55e:	42 83       	std	Z+2, r20	; 0x02
     560:	55 83       	std	Z+5, r21	; 0x05
     562:	44 83       	std	Z+4, r20	; 0x04
     564:	16 82       	std	Z+6, r1	; 0x06
     566:	07 c0       	rjmp	.+14     	; 0x576 <_ZN5Timer8add_taskEP4Taskj+0x40>
     568:	01 96       	adiw	r24, 0x01	; 1
     56a:	37 96       	adiw	r30, 0x07	; 7
     56c:	88 30       	cpi	r24, 0x08	; 8
     56e:	91 05       	cpc	r25, r1
     570:	39 f7       	brne	.-50     	; 0x540 <_ZN5Timer8add_taskEP4Taskj+0xa>
     572:	8f ef       	ldi	r24, 0xFF	; 255
     574:	9f ef       	ldi	r25, 0xFF	; 255
     576:	78 94       	sei
     578:	08 95       	ret

0000057a <_ZN5Timer4mainEv>:
     57a:	cf 93       	push	r28
     57c:	df 93       	push	r29
     57e:	c9 e9       	ldi	r28, 0x99	; 153
     580:	d0 e0       	ldi	r29, 0x00	; 0
     582:	fe 01       	movw	r30, r28
     584:	36 97       	sbiw	r30, 0x06	; 6
     586:	80 81       	ld	r24, Z
     588:	91 81       	ldd	r25, Z+1	; 0x01
     58a:	00 97       	sbiw	r24, 0x00	; 0
     58c:	59 f0       	breq	.+22     	; 0x5a4 <_ZN5Timer4mainEv+0x2a>
     58e:	28 81       	ld	r18, Y
     590:	22 23       	and	r18, r18
     592:	41 f0       	breq	.+16     	; 0x5a4 <_ZN5Timer4mainEv+0x2a>
     594:	18 82       	st	Y, r1
     596:	dc 01       	movw	r26, r24
     598:	ed 91       	ld	r30, X+
     59a:	fc 91       	ld	r31, X
     59c:	04 80       	ldd	r0, Z+4	; 0x04
     59e:	f5 81       	ldd	r31, Z+5	; 0x05
     5a0:	e0 2d       	mov	r30, r0
     5a2:	09 95       	icall
     5a4:	27 96       	adiw	r28, 0x07	; 7
     5a6:	b0 e0       	ldi	r27, 0x00	; 0
     5a8:	c1 3d       	cpi	r28, 0xD1	; 209
     5aa:	db 07       	cpc	r29, r27
     5ac:	51 f7       	brne	.-44     	; 0x582 <_ZN5Timer4mainEv+0x8>
     5ae:	df 91       	pop	r29
     5b0:	cf 91       	pop	r28
     5b2:	08 95       	ret

000005b4 <__vector_19>:
     5b4:	1f 92       	push	r1
     5b6:	0f 92       	push	r0
     5b8:	0f b6       	in	r0, 0x3f	; 63
     5ba:	0f 92       	push	r0
     5bc:	11 24       	eor	r1, r1
     5be:	8f 93       	push	r24
     5c0:	9f 93       	push	r25
     5c2:	af 93       	push	r26
     5c4:	bf 93       	push	r27
     5c6:	ef 93       	push	r30
     5c8:	ff 93       	push	r31
     5ca:	e3 e9       	ldi	r30, 0x93	; 147
     5cc:	f0 e0       	ldi	r31, 0x00	; 0
     5ce:	a9 e9       	ldi	r26, 0x99	; 153
     5d0:	b0 e0       	ldi	r27, 0x00	; 0
     5d2:	84 81       	ldd	r24, Z+4	; 0x04
     5d4:	95 81       	ldd	r25, Z+5	; 0x05
     5d6:	00 97       	sbiw	r24, 0x00	; 0
     5d8:	21 f0       	breq	.+8      	; 0x5e2 <__vector_19+0x2e>
     5da:	01 97       	sbiw	r24, 0x01	; 1
     5dc:	95 83       	std	Z+5, r25	; 0x05
     5de:	84 83       	std	Z+4, r24	; 0x04
     5e0:	09 c0       	rjmp	.+18     	; 0x5f4 <__vector_19+0x40>
     5e2:	82 81       	ldd	r24, Z+2	; 0x02
     5e4:	93 81       	ldd	r25, Z+3	; 0x03
     5e6:	95 83       	std	Z+5, r25	; 0x05
     5e8:	84 83       	std	Z+4, r24	; 0x04
     5ea:	8c 91       	ld	r24, X
     5ec:	8f 3f       	cpi	r24, 0xFF	; 255
     5ee:	11 f0       	breq	.+4      	; 0x5f4 <__vector_19+0x40>
     5f0:	8f 5f       	subi	r24, 0xFF	; 255
     5f2:	8c 93       	st	X, r24
     5f4:	37 96       	adiw	r30, 0x07	; 7
     5f6:	17 96       	adiw	r26, 0x07	; 7
     5f8:	80 e0       	ldi	r24, 0x00	; 0
     5fa:	eb 3c       	cpi	r30, 0xCB	; 203
     5fc:	f8 07       	cpc	r31, r24
     5fe:	49 f7       	brne	.-46     	; 0x5d2 <__vector_19+0x1e>
     600:	80 91 cb 00 	lds	r24, 0x00CB
     604:	90 91 cc 00 	lds	r25, 0x00CC
     608:	a0 91 cd 00 	lds	r26, 0x00CD
     60c:	b0 91 ce 00 	lds	r27, 0x00CE
     610:	01 96       	adiw	r24, 0x01	; 1
     612:	a1 1d       	adc	r26, r1
     614:	b1 1d       	adc	r27, r1
     616:	80 93 cb 00 	sts	0x00CB, r24
     61a:	90 93 cc 00 	sts	0x00CC, r25
     61e:	a0 93 cd 00 	sts	0x00CD, r26
     622:	b0 93 ce 00 	sts	0x00CE, r27
     626:	ff 91       	pop	r31
     628:	ef 91       	pop	r30
     62a:	bf 91       	pop	r27
     62c:	af 91       	pop	r26
     62e:	9f 91       	pop	r25
     630:	8f 91       	pop	r24
     632:	0f 90       	pop	r0
     634:	0f be       	out	0x3f, r0	; 63
     636:	0f 90       	pop	r0
     638:	1f 90       	pop	r1
     63a:	18 95       	reti

0000063c <_GLOBAL__sub_I_g_rt_time>:
     63c:	82 e9       	ldi	r24, 0x92	; 146
     63e:	90 e0       	ldi	r25, 0x00	; 0
     640:	0c 94 81 02 	jmp	0x502	; 0x502 <_ZN5TimerC1Ev>

00000644 <_ZN5MotorC1Ev>:
     644:	80 ef       	ldi	r24, 0xF0	; 240
     646:	81 bb       	out	0x11, r24	; 17
     648:	95 98       	cbi	0x12, 5	; 18
     64a:	81 ea       	ldi	r24, 0xA1	; 161
     64c:	8f bd       	out	0x2f, r24	; 47
     64e:	81 e0       	ldi	r24, 0x01	; 1
     650:	8e bd       	out	0x2e, r24	; 46
     652:	1b bc       	out	0x2b, r1	; 43
     654:	1a bc       	out	0x2a, r1	; 42
     656:	19 bc       	out	0x29, r1	; 41
     658:	18 bc       	out	0x28, r1	; 40
     65a:	08 95       	ret

0000065c <_ZN5MotorD1Ev>:
     65c:	08 95       	ret

0000065e <_ZN5Motor3runEii>:
     65e:	6f 3f       	cpi	r22, 0xFF	; 255
     660:	71 05       	cpc	r23, r1
     662:	09 f0       	breq	.+2      	; 0x666 <_ZN5Motor3runEii+0x8>
     664:	3c f4       	brge	.+14     	; 0x674 <_ZN5Motor3runEii+0x16>
     666:	61 30       	cpi	r22, 0x01	; 1
     668:	8f ef       	ldi	r24, 0xFF	; 255
     66a:	78 07       	cpc	r23, r24
     66c:	2c f4       	brge	.+10     	; 0x678 <_ZN5Motor3runEii+0x1a>
     66e:	61 e0       	ldi	r22, 0x01	; 1
     670:	7f ef       	ldi	r23, 0xFF	; 255
     672:	02 c0       	rjmp	.+4      	; 0x678 <_ZN5Motor3runEii+0x1a>
     674:	6f ef       	ldi	r22, 0xFF	; 255
     676:	70 e0       	ldi	r23, 0x00	; 0
     678:	4f 3f       	cpi	r20, 0xFF	; 255
     67a:	51 05       	cpc	r21, r1
     67c:	09 f0       	breq	.+2      	; 0x680 <_ZN5Motor3runEii+0x22>
     67e:	44 f4       	brge	.+16     	; 0x690 <_ZN5Motor3runEii+0x32>
     680:	41 30       	cpi	r20, 0x01	; 1
     682:	8f ef       	ldi	r24, 0xFF	; 255
     684:	58 07       	cpc	r21, r24
     686:	6c f0       	brlt	.+26     	; 0x6a2 <_ZN5Motor3runEii+0x44>
     688:	14 16       	cp	r1, r20
     68a:	15 06       	cpc	r1, r21
     68c:	1c f0       	brlt	.+6      	; 0x694 <_ZN5Motor3runEii+0x36>
     68e:	05 c0       	rjmp	.+10     	; 0x69a <_ZN5Motor3runEii+0x3c>
     690:	4f ef       	ldi	r20, 0xFF	; 255
     692:	50 e0       	ldi	r21, 0x00	; 0
     694:	4a bd       	out	0x2a, r20	; 42
     696:	96 9a       	sbi	0x12, 6	; 18
     698:	0b c0       	rjmp	.+22     	; 0x6b0 <_ZN5Motor3runEii+0x52>
     69a:	41 15       	cp	r20, r1
     69c:	51 05       	cpc	r21, r1
     69e:	39 f0       	breq	.+14     	; 0x6ae <_ZN5Motor3runEii+0x50>
     6a0:	02 c0       	rjmp	.+4      	; 0x6a6 <_ZN5Motor3runEii+0x48>
     6a2:	41 e0       	ldi	r20, 0x01	; 1
     6a4:	5f ef       	ldi	r21, 0xFF	; 255
     6a6:	41 95       	neg	r20
     6a8:	4a bd       	out	0x2a, r20	; 42
     6aa:	96 98       	cbi	0x12, 6	; 18
     6ac:	01 c0       	rjmp	.+2      	; 0x6b0 <_ZN5Motor3runEii+0x52>
     6ae:	1a bc       	out	0x2a, r1	; 42
     6b0:	16 16       	cp	r1, r22
     6b2:	17 06       	cpc	r1, r23
     6b4:	1c f4       	brge	.+6      	; 0x6bc <_ZN5Motor3runEii+0x5e>
     6b6:	68 bd       	out	0x28, r22	; 40
     6b8:	97 98       	cbi	0x12, 7	; 18
     6ba:	08 95       	ret
     6bc:	61 15       	cp	r22, r1
     6be:	71 05       	cpc	r23, r1
     6c0:	21 f0       	breq	.+8      	; 0x6ca <_ZN5Motor3runEii+0x6c>
     6c2:	61 95       	neg	r22
     6c4:	68 bd       	out	0x28, r22	; 40
     6c6:	97 9a       	sbi	0x12, 7	; 18
     6c8:	08 95       	ret
     6ca:	18 bc       	out	0x28, r1	; 40
     6cc:	08 95       	ret

000006ce <_ZN4GyroC1Ev>:
     6ce:	08 95       	ret

000006d0 <_ZN4GyroD1Ev>:
     6d0:	08 95       	ret

000006d2 <_ZN4Gyro4readEb>:
     6d2:	4f 92       	push	r4
     6d4:	5f 92       	push	r5
     6d6:	6f 92       	push	r6
     6d8:	7f 92       	push	r7
     6da:	8f 92       	push	r8
     6dc:	9f 92       	push	r9
     6de:	af 92       	push	r10
     6e0:	bf 92       	push	r11
     6e2:	cf 92       	push	r12
     6e4:	df 92       	push	r13
     6e6:	ef 92       	push	r14
     6e8:	ff 92       	push	r15
     6ea:	0f 93       	push	r16
     6ec:	1f 93       	push	r17
     6ee:	cf 93       	push	r28
     6f0:	df 93       	push	r29
     6f2:	ec 01       	movw	r28, r24
     6f4:	f6 2e       	mov	r15, r22
     6f6:	88 ad       	ldd	r24, Y+56	; 0x38
     6f8:	99 ad       	ldd	r25, Y+57	; 0x39
     6fa:	dc 01       	movw	r26, r24
     6fc:	ed 91       	ld	r30, X+
     6fe:	fc 91       	ld	r31, X
     700:	06 84       	ldd	r0, Z+14	; 0x0e
     702:	f7 85       	ldd	r31, Z+15	; 0x0f
     704:	e0 2d       	mov	r30, r0
     706:	4f e0       	ldi	r20, 0x0F	; 15
     708:	66 ed       	ldi	r22, 0xD6	; 214
     70a:	09 95       	icall
     70c:	88 36       	cpi	r24, 0x68	; 104
     70e:	49 f4       	brne	.+18     	; 0x722 <_ZN4Gyro4readEb+0x50>
     710:	81 e0       	ldi	r24, 0x01	; 1
     712:	90 e0       	ldi	r25, 0x00	; 0
     714:	a0 e0       	ldi	r26, 0x00	; 0
     716:	b0 e0       	ldi	r27, 0x00	; 0
     718:	88 ab       	std	Y+48, r24	; 0x30
     71a:	99 ab       	std	Y+49, r25	; 0x31
     71c:	aa ab       	std	Y+50, r26	; 0x32
     71e:	bb ab       	std	Y+51, r27	; 0x33
     720:	04 c0       	rjmp	.+8      	; 0x72a <_ZN4Gyro4readEb+0x58>
     722:	18 aa       	std	Y+48, r1	; 0x30
     724:	19 aa       	std	Y+49, r1	; 0x31
     726:	1a aa       	std	Y+50, r1	; 0x32
     728:	1b aa       	std	Y+51, r1	; 0x33
     72a:	88 ad       	ldd	r24, Y+56	; 0x38
     72c:	99 ad       	ldd	r25, Y+57	; 0x39
     72e:	dc 01       	movw	r26, r24
     730:	ed 91       	ld	r30, X+
     732:	fc 91       	ld	r31, X
     734:	06 84       	ldd	r0, Z+14	; 0x0e
     736:	f7 85       	ldd	r31, Z+15	; 0x0f
     738:	e0 2d       	mov	r30, r0
     73a:	49 e1       	ldi	r20, 0x19	; 25
     73c:	66 ed       	ldi	r22, 0xD6	; 214
     73e:	09 95       	icall
     740:	a8 2e       	mov	r10, r24
     742:	b1 2c       	mov	r11, r1
     744:	ba 2c       	mov	r11, r10
     746:	aa 24       	eor	r10, r10
     748:	88 ad       	ldd	r24, Y+56	; 0x38
     74a:	99 ad       	ldd	r25, Y+57	; 0x39
     74c:	dc 01       	movw	r26, r24
     74e:	ed 91       	ld	r30, X+
     750:	fc 91       	ld	r31, X
     752:	06 84       	ldd	r0, Z+14	; 0x0e
     754:	f7 85       	ldd	r31, Z+15	; 0x0f
     756:	e0 2d       	mov	r30, r0
     758:	48 e1       	ldi	r20, 0x18	; 24
     75a:	66 ed       	ldi	r22, 0xD6	; 214
     75c:	09 95       	icall
     75e:	a8 2a       	or	r10, r24
     760:	88 ad       	ldd	r24, Y+56	; 0x38
     762:	99 ad       	ldd	r25, Y+57	; 0x39
     764:	dc 01       	movw	r26, r24
     766:	ed 91       	ld	r30, X+
     768:	fc 91       	ld	r31, X
     76a:	06 84       	ldd	r0, Z+14	; 0x0e
     76c:	f7 85       	ldd	r31, Z+15	; 0x0f
     76e:	e0 2d       	mov	r30, r0
     770:	4b e1       	ldi	r20, 0x1B	; 27
     772:	66 ed       	ldi	r22, 0xD6	; 214
     774:	09 95       	icall
     776:	08 2f       	mov	r16, r24
     778:	10 e0       	ldi	r17, 0x00	; 0
     77a:	10 2f       	mov	r17, r16
     77c:	00 27       	eor	r16, r16
     77e:	88 ad       	ldd	r24, Y+56	; 0x38
     780:	99 ad       	ldd	r25, Y+57	; 0x39
     782:	dc 01       	movw	r26, r24
     784:	ed 91       	ld	r30, X+
     786:	fc 91       	ld	r31, X
     788:	06 84       	ldd	r0, Z+14	; 0x0e
     78a:	f7 85       	ldd	r31, Z+15	; 0x0f
     78c:	e0 2d       	mov	r30, r0
     78e:	4a e1       	ldi	r20, 0x1A	; 26
     790:	66 ed       	ldi	r22, 0xD6	; 214
     792:	09 95       	icall
     794:	08 2b       	or	r16, r24
     796:	88 ad       	ldd	r24, Y+56	; 0x38
     798:	99 ad       	ldd	r25, Y+57	; 0x39
     79a:	dc 01       	movw	r26, r24
     79c:	ed 91       	ld	r30, X+
     79e:	fc 91       	ld	r31, X
     7a0:	06 84       	ldd	r0, Z+14	; 0x0e
     7a2:	f7 85       	ldd	r31, Z+15	; 0x0f
     7a4:	e0 2d       	mov	r30, r0
     7a6:	4d e1       	ldi	r20, 0x1D	; 29
     7a8:	66 ed       	ldi	r22, 0xD6	; 214
     7aa:	09 95       	icall
     7ac:	c8 2e       	mov	r12, r24
     7ae:	d1 2c       	mov	r13, r1
     7b0:	dc 2c       	mov	r13, r12
     7b2:	cc 24       	eor	r12, r12
     7b4:	88 ad       	ldd	r24, Y+56	; 0x38
     7b6:	99 ad       	ldd	r25, Y+57	; 0x39
     7b8:	dc 01       	movw	r26, r24
     7ba:	ed 91       	ld	r30, X+
     7bc:	fc 91       	ld	r31, X
     7be:	06 84       	ldd	r0, Z+14	; 0x0e
     7c0:	f7 85       	ldd	r31, Z+15	; 0x0f
     7c2:	e0 2d       	mov	r30, r0
     7c4:	4c e1       	ldi	r20, 0x1C	; 28
     7c6:	66 ed       	ldi	r22, 0xD6	; 214
     7c8:	09 95       	icall
     7ca:	c8 2a       	or	r12, r24
     7cc:	c5 01       	movw	r24, r10
     7ce:	bb 0c       	add	r11, r11
     7d0:	aa 0b       	sbc	r26, r26
     7d2:	bb 0b       	sbc	r27, r27
     7d4:	01 2e       	mov	r0, r17
     7d6:	00 0c       	add	r0, r0
     7d8:	22 0b       	sbc	r18, r18
     7da:	33 0b       	sbc	r19, r19
     7dc:	46 01       	movw	r8, r12
     7de:	dd 0c       	add	r13, r13
     7e0:	aa 08       	sbc	r10, r10
     7e2:	bb 08       	sbc	r11, r11
     7e4:	ff 20       	and	r15, r15
     7e6:	21 f1       	breq	.+72     	; 0x830 <_ZN4Gyro4readEb+0x15e>
     7e8:	cc a0       	ldd	r12, Y+36	; 0x24
     7ea:	dd a0       	ldd	r13, Y+37	; 0x25
     7ec:	ee a0       	ldd	r14, Y+38	; 0x26
     7ee:	ff a0       	ldd	r15, Y+39	; 0x27
     7f0:	c8 0e       	add	r12, r24
     7f2:	d9 1e       	adc	r13, r25
     7f4:	ea 1e       	adc	r14, r26
     7f6:	fb 1e       	adc	r15, r27
     7f8:	cc a2       	std	Y+36, r12	; 0x24
     7fa:	dd a2       	std	Y+37, r13	; 0x25
     7fc:	ee a2       	std	Y+38, r14	; 0x26
     7fe:	ff a2       	std	Y+39, r15	; 0x27
     800:	c8 a4       	ldd	r12, Y+40	; 0x28
     802:	d9 a4       	ldd	r13, Y+41	; 0x29
     804:	ea a4       	ldd	r14, Y+42	; 0x2a
     806:	fb a4       	ldd	r15, Y+43	; 0x2b
     808:	c0 0e       	add	r12, r16
     80a:	d1 1e       	adc	r13, r17
     80c:	e2 1e       	adc	r14, r18
     80e:	f3 1e       	adc	r15, r19
     810:	c8 a6       	std	Y+40, r12	; 0x28
     812:	d9 a6       	std	Y+41, r13	; 0x29
     814:	ea a6       	std	Y+42, r14	; 0x2a
     816:	fb a6       	std	Y+43, r15	; 0x2b
     818:	cc a4       	ldd	r12, Y+44	; 0x2c
     81a:	dd a4       	ldd	r13, Y+45	; 0x2d
     81c:	ee a4       	ldd	r14, Y+46	; 0x2e
     81e:	ff a4       	ldd	r15, Y+47	; 0x2f
     820:	c8 0c       	add	r12, r8
     822:	d9 1c       	adc	r13, r9
     824:	ea 1c       	adc	r14, r10
     826:	fb 1c       	adc	r15, r11
     828:	cc a6       	std	Y+44, r12	; 0x2c
     82a:	dd a6       	std	Y+45, r13	; 0x2d
     82c:	ee a6       	std	Y+46, r14	; 0x2e
     82e:	ff a6       	std	Y+47, r15	; 0x2f
     830:	cc a0       	ldd	r12, Y+36	; 0x24
     832:	dd a0       	ldd	r13, Y+37	; 0x25
     834:	ee a0       	ldd	r14, Y+38	; 0x26
     836:	ff a0       	ldd	r15, Y+39	; 0x27
     838:	bc 01       	movw	r22, r24
     83a:	cd 01       	movw	r24, r26
     83c:	6c 19       	sub	r22, r12
     83e:	7d 09       	sbc	r23, r13
     840:	8e 09       	sbc	r24, r14
     842:	9f 09       	sbc	r25, r15
     844:	6c 87       	std	Y+12, r22	; 0x0c
     846:	7d 87       	std	Y+13, r23	; 0x0d
     848:	8e 87       	std	Y+14, r24	; 0x0e
     84a:	9f 87       	std	Y+15, r25	; 0x0f
     84c:	c8 a4       	ldd	r12, Y+40	; 0x28
     84e:	d9 a4       	ldd	r13, Y+41	; 0x29
     850:	ea a4       	ldd	r14, Y+42	; 0x2a
     852:	fb a4       	ldd	r15, Y+43	; 0x2b
     854:	28 01       	movw	r4, r16
     856:	39 01       	movw	r6, r18
     858:	4c 18       	sub	r4, r12
     85a:	5d 08       	sbc	r5, r13
     85c:	6e 08       	sbc	r6, r14
     85e:	7f 08       	sbc	r7, r15
     860:	48 8a       	std	Y+16, r4	; 0x10
     862:	59 8a       	std	Y+17, r5	; 0x11
     864:	6a 8a       	std	Y+18, r6	; 0x12
     866:	7b 8a       	std	Y+19, r7	; 0x13
     868:	0c a5       	ldd	r16, Y+44	; 0x2c
     86a:	1d a5       	ldd	r17, Y+45	; 0x2d
     86c:	2e a5       	ldd	r18, Y+46	; 0x2e
     86e:	3f a5       	ldd	r19, Y+47	; 0x2f
     870:	75 01       	movw	r14, r10
     872:	64 01       	movw	r12, r8
     874:	c0 1a       	sub	r12, r16
     876:	d1 0a       	sbc	r13, r17
     878:	e2 0a       	sbc	r14, r18
     87a:	f3 0a       	sbc	r15, r19
     87c:	cc 8a       	std	Y+20, r12	; 0x14
     87e:	dd 8a       	std	Y+21, r13	; 0x15
     880:	ee 8a       	std	Y+22, r14	; 0x16
     882:	ff 8a       	std	Y+23, r15	; 0x17
     884:	29 e1       	ldi	r18, 0x19	; 25
     886:	82 2e       	mov	r8, r18
     888:	91 2c       	mov	r9, r1
     88a:	a1 2c       	mov	r10, r1
     88c:	b1 2c       	mov	r11, r1
     88e:	a5 01       	movw	r20, r10
     890:	94 01       	movw	r18, r8
     892:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     896:	88 8d       	ldd	r24, Y+24	; 0x18
     898:	99 8d       	ldd	r25, Y+25	; 0x19
     89a:	aa 8d       	ldd	r26, Y+26	; 0x1a
     89c:	bb 8d       	ldd	r27, Y+27	; 0x1b
     89e:	82 0f       	add	r24, r18
     8a0:	93 1f       	adc	r25, r19
     8a2:	a4 1f       	adc	r26, r20
     8a4:	b5 1f       	adc	r27, r21
     8a6:	88 8f       	std	Y+24, r24	; 0x18
     8a8:	99 8f       	std	Y+25, r25	; 0x19
     8aa:	aa 8f       	std	Y+26, r26	; 0x1a
     8ac:	bb 8f       	std	Y+27, r27	; 0x1b
     8ae:	c3 01       	movw	r24, r6
     8b0:	b2 01       	movw	r22, r4
     8b2:	a5 01       	movw	r20, r10
     8b4:	94 01       	movw	r18, r8
     8b6:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     8ba:	8c 8d       	ldd	r24, Y+28	; 0x1c
     8bc:	9d 8d       	ldd	r25, Y+29	; 0x1d
     8be:	ae 8d       	ldd	r26, Y+30	; 0x1e
     8c0:	bf 8d       	ldd	r27, Y+31	; 0x1f
     8c2:	82 0f       	add	r24, r18
     8c4:	93 1f       	adc	r25, r19
     8c6:	a4 1f       	adc	r26, r20
     8c8:	b5 1f       	adc	r27, r21
     8ca:	8c 8f       	std	Y+28, r24	; 0x1c
     8cc:	9d 8f       	std	Y+29, r25	; 0x1d
     8ce:	ae 8f       	std	Y+30, r26	; 0x1e
     8d0:	bf 8f       	std	Y+31, r27	; 0x1f
     8d2:	c7 01       	movw	r24, r14
     8d4:	b6 01       	movw	r22, r12
     8d6:	a5 01       	movw	r20, r10
     8d8:	94 01       	movw	r18, r8
     8da:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     8de:	88 a1       	ldd	r24, Y+32	; 0x20
     8e0:	99 a1       	ldd	r25, Y+33	; 0x21
     8e2:	aa a1       	ldd	r26, Y+34	; 0x22
     8e4:	bb a1       	ldd	r27, Y+35	; 0x23
     8e6:	82 0f       	add	r24, r18
     8e8:	93 1f       	adc	r25, r19
     8ea:	a4 1f       	adc	r26, r20
     8ec:	b5 1f       	adc	r27, r21
     8ee:	88 a3       	std	Y+32, r24	; 0x20
     8f0:	99 a3       	std	Y+33, r25	; 0x21
     8f2:	aa a3       	std	Y+34, r26	; 0x22
     8f4:	bb a3       	std	Y+35, r27	; 0x23
     8f6:	88 ad       	ldd	r24, Y+56	; 0x38
     8f8:	99 ad       	ldd	r25, Y+57	; 0x39
     8fa:	dc 01       	movw	r26, r24
     8fc:	ed 91       	ld	r30, X+
     8fe:	fc 91       	ld	r31, X
     900:	06 84       	ldd	r0, Z+14	; 0x0e
     902:	f7 85       	ldd	r31, Z+15	; 0x0f
     904:	e0 2d       	mov	r30, r0
     906:	49 e2       	ldi	r20, 0x29	; 41
     908:	66 ed       	ldi	r22, 0xD6	; 214
     90a:	09 95       	icall
     90c:	08 2f       	mov	r16, r24
     90e:	10 e0       	ldi	r17, 0x00	; 0
     910:	10 2f       	mov	r17, r16
     912:	00 27       	eor	r16, r16
     914:	88 ad       	ldd	r24, Y+56	; 0x38
     916:	99 ad       	ldd	r25, Y+57	; 0x39
     918:	dc 01       	movw	r26, r24
     91a:	ed 91       	ld	r30, X+
     91c:	fc 91       	ld	r31, X
     91e:	06 84       	ldd	r0, Z+14	; 0x0e
     920:	f7 85       	ldd	r31, Z+15	; 0x0f
     922:	e0 2d       	mov	r30, r0
     924:	48 e2       	ldi	r20, 0x28	; 40
     926:	66 ed       	ldi	r22, 0xD6	; 214
     928:	09 95       	icall
     92a:	68 01       	movw	r12, r16
     92c:	c8 2a       	or	r12, r24
     92e:	88 ad       	ldd	r24, Y+56	; 0x38
     930:	99 ad       	ldd	r25, Y+57	; 0x39
     932:	dc 01       	movw	r26, r24
     934:	ed 91       	ld	r30, X+
     936:	fc 91       	ld	r31, X
     938:	06 84       	ldd	r0, Z+14	; 0x0e
     93a:	f7 85       	ldd	r31, Z+15	; 0x0f
     93c:	e0 2d       	mov	r30, r0
     93e:	4b e2       	ldi	r20, 0x2B	; 43
     940:	66 ed       	ldi	r22, 0xD6	; 214
     942:	09 95       	icall
     944:	08 2f       	mov	r16, r24
     946:	10 e0       	ldi	r17, 0x00	; 0
     948:	10 2f       	mov	r17, r16
     94a:	00 27       	eor	r16, r16
     94c:	88 ad       	ldd	r24, Y+56	; 0x38
     94e:	99 ad       	ldd	r25, Y+57	; 0x39
     950:	dc 01       	movw	r26, r24
     952:	ed 91       	ld	r30, X+
     954:	fc 91       	ld	r31, X
     956:	06 84       	ldd	r0, Z+14	; 0x0e
     958:	f7 85       	ldd	r31, Z+15	; 0x0f
     95a:	e0 2d       	mov	r30, r0
     95c:	4a e2       	ldi	r20, 0x2A	; 42
     95e:	66 ed       	ldi	r22, 0xD6	; 214
     960:	09 95       	icall
     962:	08 2b       	or	r16, r24
     964:	88 ad       	ldd	r24, Y+56	; 0x38
     966:	99 ad       	ldd	r25, Y+57	; 0x39
     968:	dc 01       	movw	r26, r24
     96a:	ed 91       	ld	r30, X+
     96c:	fc 91       	ld	r31, X
     96e:	06 84       	ldd	r0, Z+14	; 0x0e
     970:	f7 85       	ldd	r31, Z+15	; 0x0f
     972:	e0 2d       	mov	r30, r0
     974:	4d e2       	ldi	r20, 0x2D	; 45
     976:	66 ed       	ldi	r22, 0xD6	; 214
     978:	09 95       	icall
     97a:	90 e0       	ldi	r25, 0x00	; 0
     97c:	f8 2e       	mov	r15, r24
     97e:	ee 24       	eor	r14, r14
     980:	88 ad       	ldd	r24, Y+56	; 0x38
     982:	99 ad       	ldd	r25, Y+57	; 0x39
     984:	dc 01       	movw	r26, r24
     986:	ed 91       	ld	r30, X+
     988:	fc 91       	ld	r31, X
     98a:	06 84       	ldd	r0, Z+14	; 0x0e
     98c:	f7 85       	ldd	r31, Z+15	; 0x0f
     98e:	e0 2d       	mov	r30, r0
     990:	4c e2       	ldi	r20, 0x2C	; 44
     992:	66 ed       	ldi	r22, 0xD6	; 214
     994:	09 95       	icall
     996:	a6 01       	movw	r20, r12
     998:	dd 0c       	add	r13, r13
     99a:	66 0b       	sbc	r22, r22
     99c:	77 0b       	sbc	r23, r23
     99e:	48 83       	st	Y, r20
     9a0:	59 83       	std	Y+1, r21	; 0x01
     9a2:	6a 83       	std	Y+2, r22	; 0x02
     9a4:	7b 83       	std	Y+3, r23	; 0x03
     9a6:	01 2e       	mov	r0, r17
     9a8:	00 0c       	add	r0, r0
     9aa:	22 0b       	sbc	r18, r18
     9ac:	33 0b       	sbc	r19, r19
     9ae:	0c 83       	std	Y+4, r16	; 0x04
     9b0:	1d 83       	std	Y+5, r17	; 0x05
     9b2:	2e 83       	std	Y+6, r18	; 0x06
     9b4:	3f 83       	std	Y+7, r19	; 0x07
     9b6:	97 01       	movw	r18, r14
     9b8:	28 2b       	or	r18, r24
     9ba:	c9 01       	movw	r24, r18
     9bc:	09 2e       	mov	r0, r25
     9be:	00 0c       	add	r0, r0
     9c0:	aa 0b       	sbc	r26, r26
     9c2:	bb 0b       	sbc	r27, r27
     9c4:	88 87       	std	Y+8, r24	; 0x08
     9c6:	99 87       	std	Y+9, r25	; 0x09
     9c8:	aa 87       	std	Y+10, r26	; 0x0a
     9ca:	bb 87       	std	Y+11, r27	; 0x0b
     9cc:	df 91       	pop	r29
     9ce:	cf 91       	pop	r28
     9d0:	1f 91       	pop	r17
     9d2:	0f 91       	pop	r16
     9d4:	ff 90       	pop	r15
     9d6:	ef 90       	pop	r14
     9d8:	df 90       	pop	r13
     9da:	cf 90       	pop	r12
     9dc:	bf 90       	pop	r11
     9de:	af 90       	pop	r10
     9e0:	9f 90       	pop	r9
     9e2:	8f 90       	pop	r8
     9e4:	7f 90       	pop	r7
     9e6:	6f 90       	pop	r6
     9e8:	5f 90       	pop	r5
     9ea:	4f 90       	pop	r4
     9ec:	08 95       	ret

000009ee <_ZN4Gyro11delay_loopsEm>:
     9ee:	41 50       	subi	r20, 0x01	; 1
     9f0:	51 09       	sbc	r21, r1
     9f2:	61 09       	sbc	r22, r1
     9f4:	71 09       	sbc	r23, r1
     9f6:	10 f0       	brcs	.+4      	; 0x9fc <_ZN4Gyro11delay_loopsEm+0xe>
     9f8:	00 00       	nop
     9fa:	f9 cf       	rjmp	.-14     	; 0x9ee <_ZN4Gyro11delay_loopsEm>
     9fc:	08 95       	ret

000009fe <_ZN4Gyro4initEP13I2C_Interface>:
     9fe:	cf 92       	push	r12
     a00:	df 92       	push	r13
     a02:	ef 92       	push	r14
     a04:	ff 92       	push	r15
     a06:	cf 93       	push	r28
     a08:	df 93       	push	r29
     a0a:	ec 01       	movw	r28, r24
     a0c:	79 af       	std	Y+57, r23	; 0x39
     a0e:	68 af       	std	Y+56, r22	; 0x38
     a10:	1c 86       	std	Y+12, r1	; 0x0c
     a12:	1d 86       	std	Y+13, r1	; 0x0d
     a14:	1e 86       	std	Y+14, r1	; 0x0e
     a16:	1f 86       	std	Y+15, r1	; 0x0f
     a18:	18 8a       	std	Y+16, r1	; 0x10
     a1a:	19 8a       	std	Y+17, r1	; 0x11
     a1c:	1a 8a       	std	Y+18, r1	; 0x12
     a1e:	1b 8a       	std	Y+19, r1	; 0x13
     a20:	1c 8a       	std	Y+20, r1	; 0x14
     a22:	1d 8a       	std	Y+21, r1	; 0x15
     a24:	1e 8a       	std	Y+22, r1	; 0x16
     a26:	1f 8a       	std	Y+23, r1	; 0x17
     a28:	1c a2       	std	Y+36, r1	; 0x24
     a2a:	1d a2       	std	Y+37, r1	; 0x25
     a2c:	1e a2       	std	Y+38, r1	; 0x26
     a2e:	1f a2       	std	Y+39, r1	; 0x27
     a30:	18 a6       	std	Y+40, r1	; 0x28
     a32:	19 a6       	std	Y+41, r1	; 0x29
     a34:	1a a6       	std	Y+42, r1	; 0x2a
     a36:	1b a6       	std	Y+43, r1	; 0x2b
     a38:	1c a6       	std	Y+44, r1	; 0x2c
     a3a:	1d a6       	std	Y+45, r1	; 0x2d
     a3c:	1e a6       	std	Y+46, r1	; 0x2e
     a3e:	1f a6       	std	Y+47, r1	; 0x2f
     a40:	18 8e       	std	Y+24, r1	; 0x18
     a42:	19 8e       	std	Y+25, r1	; 0x19
     a44:	1a 8e       	std	Y+26, r1	; 0x1a
     a46:	1b 8e       	std	Y+27, r1	; 0x1b
     a48:	1c 8e       	std	Y+28, r1	; 0x1c
     a4a:	1d 8e       	std	Y+29, r1	; 0x1d
     a4c:	1e 8e       	std	Y+30, r1	; 0x1e
     a4e:	1f 8e       	std	Y+31, r1	; 0x1f
     a50:	18 a2       	std	Y+32, r1	; 0x20
     a52:	19 a2       	std	Y+33, r1	; 0x21
     a54:	1a a2       	std	Y+34, r1	; 0x22
     a56:	1b a2       	std	Y+35, r1	; 0x23
     a58:	40 e1       	ldi	r20, 0x10	; 16
     a5a:	57 e2       	ldi	r21, 0x27	; 39
     a5c:	60 e0       	ldi	r22, 0x00	; 0
     a5e:	70 e0       	ldi	r23, 0x00	; 0
     a60:	0e 94 f7 04 	call	0x9ee	; 0x9ee <_ZN4Gyro11delay_loopsEm>
     a64:	18 aa       	std	Y+48, r1	; 0x30
     a66:	19 aa       	std	Y+49, r1	; 0x31
     a68:	1a aa       	std	Y+50, r1	; 0x32
     a6a:	1b aa       	std	Y+51, r1	; 0x33
     a6c:	88 ad       	ldd	r24, Y+56	; 0x38
     a6e:	99 ad       	ldd	r25, Y+57	; 0x39
     a70:	dc 01       	movw	r26, r24
     a72:	ed 91       	ld	r30, X+
     a74:	fc 91       	ld	r31, X
     a76:	06 84       	ldd	r0, Z+14	; 0x0e
     a78:	f7 85       	ldd	r31, Z+15	; 0x0f
     a7a:	e0 2d       	mov	r30, r0
     a7c:	4f e0       	ldi	r20, 0x0F	; 15
     a7e:	66 ed       	ldi	r22, 0xD6	; 214
     a80:	09 95       	icall
     a82:	88 36       	cpi	r24, 0x68	; 104
     a84:	41 f4       	brne	.+16     	; 0xa96 <_ZN4Gyro4initEP13I2C_Interface+0x98>
     a86:	81 e0       	ldi	r24, 0x01	; 1
     a88:	90 e0       	ldi	r25, 0x00	; 0
     a8a:	a0 e0       	ldi	r26, 0x00	; 0
     a8c:	b0 e0       	ldi	r27, 0x00	; 0
     a8e:	88 ab       	std	Y+48, r24	; 0x30
     a90:	99 ab       	std	Y+49, r25	; 0x31
     a92:	aa ab       	std	Y+50, r26	; 0x32
     a94:	bb ab       	std	Y+51, r27	; 0x33
     a96:	88 ad       	ldd	r24, Y+56	; 0x38
     a98:	99 ad       	ldd	r25, Y+57	; 0x39
     a9a:	dc 01       	movw	r26, r24
     a9c:	ed 91       	ld	r30, X+
     a9e:	fc 91       	ld	r31, X
     aa0:	00 84       	ldd	r0, Z+8	; 0x08
     aa2:	f1 85       	ldd	r31, Z+9	; 0x09
     aa4:	e0 2d       	mov	r30, r0
     aa6:	28 ea       	ldi	r18, 0xA8	; 168
     aa8:	40 e1       	ldi	r20, 0x10	; 16
     aaa:	66 ed       	ldi	r22, 0xD6	; 214
     aac:	09 95       	icall
     aae:	88 ad       	ldd	r24, Y+56	; 0x38
     ab0:	99 ad       	ldd	r25, Y+57	; 0x39
     ab2:	dc 01       	movw	r26, r24
     ab4:	ed 91       	ld	r30, X+
     ab6:	fc 91       	ld	r31, X
     ab8:	00 84       	ldd	r0, Z+8	; 0x08
     aba:	f1 85       	ldd	r31, Z+9	; 0x09
     abc:	e0 2d       	mov	r30, r0
     abe:	28 e3       	ldi	r18, 0x38	; 56
     ac0:	4e e1       	ldi	r20, 0x1E	; 30
     ac2:	66 ed       	ldi	r22, 0xD6	; 214
     ac4:	09 95       	icall
     ac6:	88 ad       	ldd	r24, Y+56	; 0x38
     ac8:	99 ad       	ldd	r25, Y+57	; 0x39
     aca:	dc 01       	movw	r26, r24
     acc:	ed 91       	ld	r30, X+
     ace:	fc 91       	ld	r31, X
     ad0:	00 84       	ldd	r0, Z+8	; 0x08
     ad2:	f1 85       	ldd	r31, Z+9	; 0x09
     ad4:	e0 2d       	mov	r30, r0
     ad6:	20 e0       	ldi	r18, 0x00	; 0
     ad8:	4e e2       	ldi	r20, 0x2E	; 46
     ada:	66 ed       	ldi	r22, 0xD6	; 214
     adc:	09 95       	icall
     ade:	88 ad       	ldd	r24, Y+56	; 0x38
     ae0:	99 ad       	ldd	r25, Y+57	; 0x39
     ae2:	dc 01       	movw	r26, r24
     ae4:	ed 91       	ld	r30, X+
     ae6:	fc 91       	ld	r31, X
     ae8:	00 84       	ldd	r0, Z+8	; 0x08
     aea:	f1 85       	ldd	r31, Z+9	; 0x09
     aec:	e0 2d       	mov	r30, r0
     aee:	20 e0       	ldi	r18, 0x00	; 0
     af0:	42 e1       	ldi	r20, 0x12	; 18
     af2:	66 ed       	ldi	r22, 0xD6	; 214
     af4:	09 95       	icall
     af6:	88 ad       	ldd	r24, Y+56	; 0x38
     af8:	99 ad       	ldd	r25, Y+57	; 0x39
     afa:	dc 01       	movw	r26, r24
     afc:	ed 91       	ld	r30, X+
     afe:	fc 91       	ld	r31, X
     b00:	00 84       	ldd	r0, Z+8	; 0x08
     b02:	f1 85       	ldd	r31, Z+9	; 0x09
     b04:	e0 2d       	mov	r30, r0
     b06:	20 e6       	ldi	r18, 0x60	; 96
     b08:	40 e2       	ldi	r20, 0x20	; 32
     b0a:	66 ed       	ldi	r22, 0xD6	; 214
     b0c:	09 95       	icall
     b0e:	88 ad       	ldd	r24, Y+56	; 0x38
     b10:	99 ad       	ldd	r25, Y+57	; 0x39
     b12:	dc 01       	movw	r26, r24
     b14:	ed 91       	ld	r30, X+
     b16:	fc 91       	ld	r31, X
     b18:	00 84       	ldd	r0, Z+8	; 0x08
     b1a:	f1 85       	ldd	r31, Z+9	; 0x09
     b1c:	e0 2d       	mov	r30, r0
     b1e:	28 e3       	ldi	r18, 0x38	; 56
     b20:	4f e1       	ldi	r20, 0x1F	; 31
     b22:	66 ed       	ldi	r22, 0xD6	; 214
     b24:	09 95       	icall
     b26:	40 e1       	ldi	r20, 0x10	; 16
     b28:	57 e2       	ldi	r21, 0x27	; 39
     b2a:	60 e0       	ldi	r22, 0x00	; 0
     b2c:	70 e0       	ldi	r23, 0x00	; 0
     b2e:	ce 01       	movw	r24, r28
     b30:	0e 94 f7 04 	call	0x9ee	; 0x9ee <_ZN4Gyro11delay_loopsEm>
     b34:	60 e0       	ldi	r22, 0x00	; 0
     b36:	ce 01       	movw	r24, r28
     b38:	0e 94 69 03 	call	0x6d2	; 0x6d2 <_ZN4Gyro4readEb>
     b3c:	1c aa       	std	Y+52, r1	; 0x34
     b3e:	1d aa       	std	Y+53, r1	; 0x35
     b40:	1e aa       	std	Y+54, r1	; 0x36
     b42:	1f aa       	std	Y+55, r1	; 0x37
     b44:	e1 2c       	mov	r14, r1
     b46:	f1 2c       	mov	r15, r1
     b48:	61 e0       	ldi	r22, 0x01	; 1
     b4a:	ce 01       	movw	r24, r28
     b4c:	0e 94 69 03 	call	0x6d2	; 0x6d2 <_ZN4Gyro4readEb>
     b50:	48 ee       	ldi	r20, 0xE8	; 232
     b52:	53 e0       	ldi	r21, 0x03	; 3
     b54:	60 e0       	ldi	r22, 0x00	; 0
     b56:	70 e0       	ldi	r23, 0x00	; 0
     b58:	ce 01       	movw	r24, r28
     b5a:	0e 94 f7 04 	call	0x9ee	; 0x9ee <_ZN4Gyro11delay_loopsEm>
     b5e:	bf ef       	ldi	r27, 0xFF	; 255
     b60:	eb 1a       	sub	r14, r27
     b62:	fb 0a       	sbc	r15, r27
     b64:	88 ec       	ldi	r24, 0xC8	; 200
     b66:	e8 16       	cp	r14, r24
     b68:	f1 04       	cpc	r15, r1
     b6a:	71 f7       	brne	.-36     	; 0xb48 <_ZN4Gyro4initEP13I2C_Interface+0x14a>
     b6c:	6c a1       	ldd	r22, Y+36	; 0x24
     b6e:	7d a1       	ldd	r23, Y+37	; 0x25
     b70:	8e a1       	ldd	r24, Y+38	; 0x26
     b72:	9f a1       	ldd	r25, Y+39	; 0x27
     b74:	28 ec       	ldi	r18, 0xC8	; 200
     b76:	c2 2e       	mov	r12, r18
     b78:	d1 2c       	mov	r13, r1
     b7a:	e1 2c       	mov	r14, r1
     b7c:	f1 2c       	mov	r15, r1
     b7e:	a7 01       	movw	r20, r14
     b80:	96 01       	movw	r18, r12
     b82:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     b86:	2c a3       	std	Y+36, r18	; 0x24
     b88:	3d a3       	std	Y+37, r19	; 0x25
     b8a:	4e a3       	std	Y+38, r20	; 0x26
     b8c:	5f a3       	std	Y+39, r21	; 0x27
     b8e:	68 a5       	ldd	r22, Y+40	; 0x28
     b90:	79 a5       	ldd	r23, Y+41	; 0x29
     b92:	8a a5       	ldd	r24, Y+42	; 0x2a
     b94:	9b a5       	ldd	r25, Y+43	; 0x2b
     b96:	a7 01       	movw	r20, r14
     b98:	96 01       	movw	r18, r12
     b9a:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     b9e:	28 a7       	std	Y+40, r18	; 0x28
     ba0:	39 a7       	std	Y+41, r19	; 0x29
     ba2:	4a a7       	std	Y+42, r20	; 0x2a
     ba4:	5b a7       	std	Y+43, r21	; 0x2b
     ba6:	6c a5       	ldd	r22, Y+44	; 0x2c
     ba8:	7d a5       	ldd	r23, Y+45	; 0x2d
     baa:	8e a5       	ldd	r24, Y+46	; 0x2e
     bac:	9f a5       	ldd	r25, Y+47	; 0x2f
     bae:	a7 01       	movw	r20, r14
     bb0:	96 01       	movw	r18, r12
     bb2:	0e 94 b6 08 	call	0x116c	; 0x116c <__divmodsi4>
     bb6:	2c a7       	std	Y+44, r18	; 0x2c
     bb8:	3d a7       	std	Y+45, r19	; 0x2d
     bba:	4e a7       	std	Y+46, r20	; 0x2e
     bbc:	5f a7       	std	Y+47, r21	; 0x2f
     bbe:	18 8e       	std	Y+24, r1	; 0x18
     bc0:	19 8e       	std	Y+25, r1	; 0x19
     bc2:	1a 8e       	std	Y+26, r1	; 0x1a
     bc4:	1b 8e       	std	Y+27, r1	; 0x1b
     bc6:	1c 8e       	std	Y+28, r1	; 0x1c
     bc8:	1d 8e       	std	Y+29, r1	; 0x1d
     bca:	1e 8e       	std	Y+30, r1	; 0x1e
     bcc:	1f 8e       	std	Y+31, r1	; 0x1f
     bce:	18 a2       	std	Y+32, r1	; 0x20
     bd0:	19 a2       	std	Y+33, r1	; 0x21
     bd2:	1a a2       	std	Y+34, r1	; 0x22
     bd4:	1b a2       	std	Y+35, r1	; 0x23
     bd6:	18 82       	st	Y, r1
     bd8:	19 82       	std	Y+1, r1	; 0x01
     bda:	1a 82       	std	Y+2, r1	; 0x02
     bdc:	1b 82       	std	Y+3, r1	; 0x03
     bde:	1c 82       	std	Y+4, r1	; 0x04
     be0:	1d 82       	std	Y+5, r1	; 0x05
     be2:	1e 82       	std	Y+6, r1	; 0x06
     be4:	1f 82       	std	Y+7, r1	; 0x07
     be6:	18 86       	std	Y+8, r1	; 0x08
     be8:	19 86       	std	Y+9, r1	; 0x09
     bea:	1a 86       	std	Y+10, r1	; 0x0a
     bec:	1b 86       	std	Y+11, r1	; 0x0b
     bee:	df 91       	pop	r29
     bf0:	cf 91       	pop	r28
     bf2:	ff 90       	pop	r15
     bf4:	ef 90       	pop	r14
     bf6:	df 90       	pop	r13
     bf8:	cf 90       	pop	r12
     bfa:	08 95       	ret

00000bfc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     bfc:	0f 93       	push	r16
     bfe:	1f 93       	push	r17
     c00:	cf 93       	push	r28
     c02:	df 93       	push	r29
     c04:	00 d0       	rcall	.+0      	; 0xc06 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     c06:	1f 92       	push	r1
     c08:	cd b7       	in	r28, 0x3d	; 61
     c0a:	de b7       	in	r29, 0x3e	; 62
     c0c:	8c 01       	movw	r16, r24
     c0e:	dc 01       	movw	r26, r24
     c10:	ed 91       	ld	r30, X+
     c12:	fc 91       	ld	r31, X
     c14:	01 90       	ld	r0, Z+
     c16:	f0 81       	ld	r31, Z
     c18:	e0 2d       	mov	r30, r0
     c1a:	2b 83       	std	Y+3, r18	; 0x03
     c1c:	4a 83       	std	Y+2, r20	; 0x02
     c1e:	69 83       	std	Y+1, r22	; 0x01
     c20:	09 95       	icall
     c22:	d8 01       	movw	r26, r16
     c24:	ed 91       	ld	r30, X+
     c26:	fc 91       	ld	r31, X
     c28:	04 80       	ldd	r0, Z+4	; 0x04
     c2a:	f5 81       	ldd	r31, Z+5	; 0x05
     c2c:	e0 2d       	mov	r30, r0
     c2e:	69 81       	ldd	r22, Y+1	; 0x01
     c30:	c8 01       	movw	r24, r16
     c32:	09 95       	icall
     c34:	d8 01       	movw	r26, r16
     c36:	ed 91       	ld	r30, X+
     c38:	fc 91       	ld	r31, X
     c3a:	04 80       	ldd	r0, Z+4	; 0x04
     c3c:	f5 81       	ldd	r31, Z+5	; 0x05
     c3e:	e0 2d       	mov	r30, r0
     c40:	4a 81       	ldd	r20, Y+2	; 0x02
     c42:	64 2f       	mov	r22, r20
     c44:	c8 01       	movw	r24, r16
     c46:	09 95       	icall
     c48:	d8 01       	movw	r26, r16
     c4a:	ed 91       	ld	r30, X+
     c4c:	fc 91       	ld	r31, X
     c4e:	04 80       	ldd	r0, Z+4	; 0x04
     c50:	f5 81       	ldd	r31, Z+5	; 0x05
     c52:	e0 2d       	mov	r30, r0
     c54:	2b 81       	ldd	r18, Y+3	; 0x03
     c56:	62 2f       	mov	r22, r18
     c58:	c8 01       	movw	r24, r16
     c5a:	09 95       	icall
     c5c:	d8 01       	movw	r26, r16
     c5e:	ed 91       	ld	r30, X+
     c60:	fc 91       	ld	r31, X
     c62:	02 80       	ldd	r0, Z+2	; 0x02
     c64:	f3 81       	ldd	r31, Z+3	; 0x03
     c66:	e0 2d       	mov	r30, r0
     c68:	c8 01       	movw	r24, r16
     c6a:	0f 90       	pop	r0
     c6c:	0f 90       	pop	r0
     c6e:	0f 90       	pop	r0
     c70:	df 91       	pop	r29
     c72:	cf 91       	pop	r28
     c74:	1f 91       	pop	r17
     c76:	0f 91       	pop	r16
     c78:	09 94       	ijmp

00000c7a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     c7a:	0f 93       	push	r16
     c7c:	1f 93       	push	r17
     c7e:	cf 93       	push	r28
     c80:	df 93       	push	r29
     c82:	00 d0       	rcall	.+0      	; 0xc84 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     c84:	00 d0       	rcall	.+0      	; 0xc86 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     c86:	cd b7       	in	r28, 0x3d	; 61
     c88:	de b7       	in	r29, 0x3e	; 62
     c8a:	8c 01       	movw	r16, r24
     c8c:	dc 01       	movw	r26, r24
     c8e:	ed 91       	ld	r30, X+
     c90:	fc 91       	ld	r31, X
     c92:	01 90       	ld	r0, Z+
     c94:	f0 81       	ld	r31, Z
     c96:	e0 2d       	mov	r30, r0
     c98:	2c 83       	std	Y+4, r18	; 0x04
     c9a:	3b 83       	std	Y+3, r19	; 0x03
     c9c:	4a 83       	std	Y+2, r20	; 0x02
     c9e:	69 83       	std	Y+1, r22	; 0x01
     ca0:	09 95       	icall
     ca2:	d8 01       	movw	r26, r16
     ca4:	ed 91       	ld	r30, X+
     ca6:	fc 91       	ld	r31, X
     ca8:	04 80       	ldd	r0, Z+4	; 0x04
     caa:	f5 81       	ldd	r31, Z+5	; 0x05
     cac:	e0 2d       	mov	r30, r0
     cae:	69 81       	ldd	r22, Y+1	; 0x01
     cb0:	c8 01       	movw	r24, r16
     cb2:	09 95       	icall
     cb4:	d8 01       	movw	r26, r16
     cb6:	ed 91       	ld	r30, X+
     cb8:	fc 91       	ld	r31, X
     cba:	04 80       	ldd	r0, Z+4	; 0x04
     cbc:	f5 81       	ldd	r31, Z+5	; 0x05
     cbe:	e0 2d       	mov	r30, r0
     cc0:	4a 81       	ldd	r20, Y+2	; 0x02
     cc2:	64 2f       	mov	r22, r20
     cc4:	c8 01       	movw	r24, r16
     cc6:	09 95       	icall
     cc8:	d8 01       	movw	r26, r16
     cca:	ed 91       	ld	r30, X+
     ccc:	fc 91       	ld	r31, X
     cce:	04 80       	ldd	r0, Z+4	; 0x04
     cd0:	f5 81       	ldd	r31, Z+5	; 0x05
     cd2:	e0 2d       	mov	r30, r0
     cd4:	3b 81       	ldd	r19, Y+3	; 0x03
     cd6:	63 2f       	mov	r22, r19
     cd8:	c8 01       	movw	r24, r16
     cda:	09 95       	icall
     cdc:	d8 01       	movw	r26, r16
     cde:	ed 91       	ld	r30, X+
     ce0:	fc 91       	ld	r31, X
     ce2:	04 80       	ldd	r0, Z+4	; 0x04
     ce4:	f5 81       	ldd	r31, Z+5	; 0x05
     ce6:	e0 2d       	mov	r30, r0
     ce8:	2c 81       	ldd	r18, Y+4	; 0x04
     cea:	62 2f       	mov	r22, r18
     cec:	c8 01       	movw	r24, r16
     cee:	09 95       	icall
     cf0:	d8 01       	movw	r26, r16
     cf2:	ed 91       	ld	r30, X+
     cf4:	fc 91       	ld	r31, X
     cf6:	02 80       	ldd	r0, Z+2	; 0x02
     cf8:	f3 81       	ldd	r31, Z+3	; 0x03
     cfa:	e0 2d       	mov	r30, r0
     cfc:	c8 01       	movw	r24, r16
     cfe:	0f 90       	pop	r0
     d00:	0f 90       	pop	r0
     d02:	0f 90       	pop	r0
     d04:	0f 90       	pop	r0
     d06:	df 91       	pop	r29
     d08:	cf 91       	pop	r28
     d0a:	1f 91       	pop	r17
     d0c:	0f 91       	pop	r16
     d0e:	09 94       	ijmp

00000d10 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     d10:	cf 92       	push	r12
     d12:	df 92       	push	r13
     d14:	ef 92       	push	r14
     d16:	ff 92       	push	r15
     d18:	0f 93       	push	r16
     d1a:	1f 93       	push	r17
     d1c:	cf 93       	push	r28
     d1e:	df 93       	push	r29
     d20:	00 d0       	rcall	.+0      	; 0xd22 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     d22:	00 d0       	rcall	.+0      	; 0xd24 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     d24:	cd b7       	in	r28, 0x3d	; 61
     d26:	de b7       	in	r29, 0x3e	; 62
     d28:	6c 01       	movw	r12, r24
     d2a:	dc 01       	movw	r26, r24
     d2c:	ed 91       	ld	r30, X+
     d2e:	fc 91       	ld	r31, X
     d30:	01 90       	ld	r0, Z+
     d32:	f0 81       	ld	r31, Z
     d34:	e0 2d       	mov	r30, r0
     d36:	2b 83       	std	Y+3, r18	; 0x03
     d38:	3c 83       	std	Y+4, r19	; 0x04
     d3a:	4a 83       	std	Y+2, r20	; 0x02
     d3c:	69 83       	std	Y+1, r22	; 0x01
     d3e:	09 95       	icall
     d40:	d6 01       	movw	r26, r12
     d42:	ed 91       	ld	r30, X+
     d44:	fc 91       	ld	r31, X
     d46:	04 80       	ldd	r0, Z+4	; 0x04
     d48:	f5 81       	ldd	r31, Z+5	; 0x05
     d4a:	e0 2d       	mov	r30, r0
     d4c:	69 81       	ldd	r22, Y+1	; 0x01
     d4e:	c6 01       	movw	r24, r12
     d50:	09 95       	icall
     d52:	d6 01       	movw	r26, r12
     d54:	ed 91       	ld	r30, X+
     d56:	fc 91       	ld	r31, X
     d58:	04 80       	ldd	r0, Z+4	; 0x04
     d5a:	f5 81       	ldd	r31, Z+5	; 0x05
     d5c:	e0 2d       	mov	r30, r0
     d5e:	4a 81       	ldd	r20, Y+2	; 0x02
     d60:	64 2f       	mov	r22, r20
     d62:	c6 01       	movw	r24, r12
     d64:	09 95       	icall
     d66:	2b 81       	ldd	r18, Y+3	; 0x03
     d68:	e2 2e       	mov	r14, r18
     d6a:	3c 81       	ldd	r19, Y+4	; 0x04
     d6c:	f3 2e       	mov	r15, r19
     d6e:	0e 0d       	add	r16, r14
     d70:	1f 1d       	adc	r17, r15
     d72:	d6 01       	movw	r26, r12
     d74:	ed 91       	ld	r30, X+
     d76:	fc 91       	ld	r31, X
     d78:	e0 16       	cp	r14, r16
     d7a:	f1 06       	cpc	r15, r17
     d7c:	49 f0       	breq	.+18     	; 0xd90 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
     d7e:	d7 01       	movw	r26, r14
     d80:	6d 91       	ld	r22, X+
     d82:	7d 01       	movw	r14, r26
     d84:	04 80       	ldd	r0, Z+4	; 0x04
     d86:	f5 81       	ldd	r31, Z+5	; 0x05
     d88:	e0 2d       	mov	r30, r0
     d8a:	c6 01       	movw	r24, r12
     d8c:	09 95       	icall
     d8e:	f1 cf       	rjmp	.-30     	; 0xd72 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
     d90:	02 80       	ldd	r0, Z+2	; 0x02
     d92:	f3 81       	ldd	r31, Z+3	; 0x03
     d94:	e0 2d       	mov	r30, r0
     d96:	c6 01       	movw	r24, r12
     d98:	0f 90       	pop	r0
     d9a:	0f 90       	pop	r0
     d9c:	0f 90       	pop	r0
     d9e:	0f 90       	pop	r0
     da0:	df 91       	pop	r29
     da2:	cf 91       	pop	r28
     da4:	1f 91       	pop	r17
     da6:	0f 91       	pop	r16
     da8:	ff 90       	pop	r15
     daa:	ef 90       	pop	r14
     dac:	df 90       	pop	r13
     dae:	cf 90       	pop	r12
     db0:	09 94       	ijmp

00000db2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     db2:	ef 92       	push	r14
     db4:	ff 92       	push	r15
     db6:	1f 93       	push	r17
     db8:	cf 93       	push	r28
     dba:	df 93       	push	r29
     dbc:	1f 92       	push	r1
     dbe:	cd b7       	in	r28, 0x3d	; 61
     dc0:	de b7       	in	r29, 0x3e	; 62
     dc2:	7c 01       	movw	r14, r24
     dc4:	16 2f       	mov	r17, r22
     dc6:	dc 01       	movw	r26, r24
     dc8:	ed 91       	ld	r30, X+
     dca:	fc 91       	ld	r31, X
     dcc:	01 90       	ld	r0, Z+
     dce:	f0 81       	ld	r31, Z
     dd0:	e0 2d       	mov	r30, r0
     dd2:	49 83       	std	Y+1, r20	; 0x01
     dd4:	09 95       	icall
     dd6:	d7 01       	movw	r26, r14
     dd8:	ed 91       	ld	r30, X+
     dda:	fc 91       	ld	r31, X
     ddc:	04 80       	ldd	r0, Z+4	; 0x04
     dde:	f5 81       	ldd	r31, Z+5	; 0x05
     de0:	e0 2d       	mov	r30, r0
     de2:	61 2f       	mov	r22, r17
     de4:	c7 01       	movw	r24, r14
     de6:	09 95       	icall
     de8:	d7 01       	movw	r26, r14
     dea:	ed 91       	ld	r30, X+
     dec:	fc 91       	ld	r31, X
     dee:	04 80       	ldd	r0, Z+4	; 0x04
     df0:	f5 81       	ldd	r31, Z+5	; 0x05
     df2:	e0 2d       	mov	r30, r0
     df4:	49 81       	ldd	r20, Y+1	; 0x01
     df6:	64 2f       	mov	r22, r20
     df8:	c7 01       	movw	r24, r14
     dfa:	09 95       	icall
     dfc:	d7 01       	movw	r26, r14
     dfe:	ed 91       	ld	r30, X+
     e00:	fc 91       	ld	r31, X
     e02:	01 90       	ld	r0, Z+
     e04:	f0 81       	ld	r31, Z
     e06:	e0 2d       	mov	r30, r0
     e08:	c7 01       	movw	r24, r14
     e0a:	09 95       	icall
     e0c:	d7 01       	movw	r26, r14
     e0e:	ed 91       	ld	r30, X+
     e10:	fc 91       	ld	r31, X
     e12:	61 2f       	mov	r22, r17
     e14:	61 60       	ori	r22, 0x01	; 1
     e16:	04 80       	ldd	r0, Z+4	; 0x04
     e18:	f5 81       	ldd	r31, Z+5	; 0x05
     e1a:	e0 2d       	mov	r30, r0
     e1c:	c7 01       	movw	r24, r14
     e1e:	09 95       	icall
     e20:	d7 01       	movw	r26, r14
     e22:	ed 91       	ld	r30, X+
     e24:	fc 91       	ld	r31, X
     e26:	06 80       	ldd	r0, Z+6	; 0x06
     e28:	f7 81       	ldd	r31, Z+7	; 0x07
     e2a:	e0 2d       	mov	r30, r0
     e2c:	60 e0       	ldi	r22, 0x00	; 0
     e2e:	c7 01       	movw	r24, r14
     e30:	09 95       	icall
     e32:	18 2f       	mov	r17, r24
     e34:	d7 01       	movw	r26, r14
     e36:	ed 91       	ld	r30, X+
     e38:	fc 91       	ld	r31, X
     e3a:	02 80       	ldd	r0, Z+2	; 0x02
     e3c:	f3 81       	ldd	r31, Z+3	; 0x03
     e3e:	e0 2d       	mov	r30, r0
     e40:	c7 01       	movw	r24, r14
     e42:	09 95       	icall
     e44:	81 2f       	mov	r24, r17
     e46:	0f 90       	pop	r0
     e48:	df 91       	pop	r29
     e4a:	cf 91       	pop	r28
     e4c:	1f 91       	pop	r17
     e4e:	ff 90       	pop	r15
     e50:	ef 90       	pop	r14
     e52:	08 95       	ret

00000e54 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     e54:	ef 92       	push	r14
     e56:	ff 92       	push	r15
     e58:	0f 93       	push	r16
     e5a:	1f 93       	push	r17
     e5c:	cf 93       	push	r28
     e5e:	df 93       	push	r29
     e60:	1f 92       	push	r1
     e62:	cd b7       	in	r28, 0x3d	; 61
     e64:	de b7       	in	r29, 0x3e	; 62
     e66:	7c 01       	movw	r14, r24
     e68:	16 2f       	mov	r17, r22
     e6a:	dc 01       	movw	r26, r24
     e6c:	ed 91       	ld	r30, X+
     e6e:	fc 91       	ld	r31, X
     e70:	01 90       	ld	r0, Z+
     e72:	f0 81       	ld	r31, Z
     e74:	e0 2d       	mov	r30, r0
     e76:	49 83       	std	Y+1, r20	; 0x01
     e78:	09 95       	icall
     e7a:	d7 01       	movw	r26, r14
     e7c:	ed 91       	ld	r30, X+
     e7e:	fc 91       	ld	r31, X
     e80:	04 80       	ldd	r0, Z+4	; 0x04
     e82:	f5 81       	ldd	r31, Z+5	; 0x05
     e84:	e0 2d       	mov	r30, r0
     e86:	61 2f       	mov	r22, r17
     e88:	c7 01       	movw	r24, r14
     e8a:	09 95       	icall
     e8c:	d7 01       	movw	r26, r14
     e8e:	ed 91       	ld	r30, X+
     e90:	fc 91       	ld	r31, X
     e92:	04 80       	ldd	r0, Z+4	; 0x04
     e94:	f5 81       	ldd	r31, Z+5	; 0x05
     e96:	e0 2d       	mov	r30, r0
     e98:	49 81       	ldd	r20, Y+1	; 0x01
     e9a:	64 2f       	mov	r22, r20
     e9c:	c7 01       	movw	r24, r14
     e9e:	09 95       	icall
     ea0:	d7 01       	movw	r26, r14
     ea2:	ed 91       	ld	r30, X+
     ea4:	fc 91       	ld	r31, X
     ea6:	01 90       	ld	r0, Z+
     ea8:	f0 81       	ld	r31, Z
     eaa:	e0 2d       	mov	r30, r0
     eac:	c7 01       	movw	r24, r14
     eae:	09 95       	icall
     eb0:	d7 01       	movw	r26, r14
     eb2:	ed 91       	ld	r30, X+
     eb4:	fc 91       	ld	r31, X
     eb6:	61 2f       	mov	r22, r17
     eb8:	61 60       	ori	r22, 0x01	; 1
     eba:	04 80       	ldd	r0, Z+4	; 0x04
     ebc:	f5 81       	ldd	r31, Z+5	; 0x05
     ebe:	e0 2d       	mov	r30, r0
     ec0:	c7 01       	movw	r24, r14
     ec2:	09 95       	icall
     ec4:	d7 01       	movw	r26, r14
     ec6:	ed 91       	ld	r30, X+
     ec8:	fc 91       	ld	r31, X
     eca:	06 80       	ldd	r0, Z+6	; 0x06
     ecc:	f7 81       	ldd	r31, Z+7	; 0x07
     ece:	e0 2d       	mov	r30, r0
     ed0:	61 e0       	ldi	r22, 0x01	; 1
     ed2:	c7 01       	movw	r24, r14
     ed4:	09 95       	icall
     ed6:	08 2f       	mov	r16, r24
     ed8:	10 e0       	ldi	r17, 0x00	; 0
     eda:	10 2f       	mov	r17, r16
     edc:	00 27       	eor	r16, r16
     ede:	d7 01       	movw	r26, r14
     ee0:	ed 91       	ld	r30, X+
     ee2:	fc 91       	ld	r31, X
     ee4:	06 80       	ldd	r0, Z+6	; 0x06
     ee6:	f7 81       	ldd	r31, Z+7	; 0x07
     ee8:	e0 2d       	mov	r30, r0
     eea:	60 e0       	ldi	r22, 0x00	; 0
     eec:	c7 01       	movw	r24, r14
     eee:	09 95       	icall
     ef0:	08 2b       	or	r16, r24
     ef2:	d7 01       	movw	r26, r14
     ef4:	ed 91       	ld	r30, X+
     ef6:	fc 91       	ld	r31, X
     ef8:	02 80       	ldd	r0, Z+2	; 0x02
     efa:	f3 81       	ldd	r31, Z+3	; 0x03
     efc:	e0 2d       	mov	r30, r0
     efe:	c7 01       	movw	r24, r14
     f00:	09 95       	icall
     f02:	c8 01       	movw	r24, r16
     f04:	0f 90       	pop	r0
     f06:	df 91       	pop	r29
     f08:	cf 91       	pop	r28
     f0a:	1f 91       	pop	r17
     f0c:	0f 91       	pop	r16
     f0e:	ff 90       	pop	r15
     f10:	ef 90       	pop	r14
     f12:	08 95       	ret

00000f14 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     f14:	cf 92       	push	r12
     f16:	df 92       	push	r13
     f18:	ef 92       	push	r14
     f1a:	ff 92       	push	r15
     f1c:	0f 93       	push	r16
     f1e:	1f 93       	push	r17
     f20:	cf 93       	push	r28
     f22:	df 93       	push	r29
     f24:	00 d0       	rcall	.+0      	; 0xf26 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     f26:	1f 92       	push	r1
     f28:	cd b7       	in	r28, 0x3d	; 61
     f2a:	de b7       	in	r29, 0x3e	; 62
     f2c:	6c 01       	movw	r12, r24
     f2e:	f6 2e       	mov	r15, r22
     f30:	dc 01       	movw	r26, r24
     f32:	ed 91       	ld	r30, X+
     f34:	fc 91       	ld	r31, X
     f36:	01 90       	ld	r0, Z+
     f38:	f0 81       	ld	r31, Z
     f3a:	e0 2d       	mov	r30, r0
     f3c:	2a 83       	std	Y+2, r18	; 0x02
     f3e:	3b 83       	std	Y+3, r19	; 0x03
     f40:	49 83       	std	Y+1, r20	; 0x01
     f42:	09 95       	icall
     f44:	d6 01       	movw	r26, r12
     f46:	ed 91       	ld	r30, X+
     f48:	fc 91       	ld	r31, X
     f4a:	04 80       	ldd	r0, Z+4	; 0x04
     f4c:	f5 81       	ldd	r31, Z+5	; 0x05
     f4e:	e0 2d       	mov	r30, r0
     f50:	6f 2d       	mov	r22, r15
     f52:	c6 01       	movw	r24, r12
     f54:	09 95       	icall
     f56:	d6 01       	movw	r26, r12
     f58:	ed 91       	ld	r30, X+
     f5a:	fc 91       	ld	r31, X
     f5c:	04 80       	ldd	r0, Z+4	; 0x04
     f5e:	f5 81       	ldd	r31, Z+5	; 0x05
     f60:	e0 2d       	mov	r30, r0
     f62:	49 81       	ldd	r20, Y+1	; 0x01
     f64:	64 2f       	mov	r22, r20
     f66:	c6 01       	movw	r24, r12
     f68:	09 95       	icall
     f6a:	d6 01       	movw	r26, r12
     f6c:	ed 91       	ld	r30, X+
     f6e:	fc 91       	ld	r31, X
     f70:	01 90       	ld	r0, Z+
     f72:	f0 81       	ld	r31, Z
     f74:	e0 2d       	mov	r30, r0
     f76:	c6 01       	movw	r24, r12
     f78:	09 95       	icall
     f7a:	d6 01       	movw	r26, r12
     f7c:	ed 91       	ld	r30, X+
     f7e:	fc 91       	ld	r31, X
     f80:	6f 2d       	mov	r22, r15
     f82:	61 60       	ori	r22, 0x01	; 1
     f84:	04 80       	ldd	r0, Z+4	; 0x04
     f86:	f5 81       	ldd	r31, Z+5	; 0x05
     f88:	e0 2d       	mov	r30, r0
     f8a:	c6 01       	movw	r24, r12
     f8c:	09 95       	icall
     f8e:	2a 81       	ldd	r18, Y+2	; 0x02
     f90:	e2 2e       	mov	r14, r18
     f92:	3b 81       	ldd	r19, Y+3	; 0x03
     f94:	f3 2e       	mov	r15, r19
     f96:	0e 0d       	add	r16, r14
     f98:	1f 1d       	adc	r17, r15
     f9a:	d6 01       	movw	r26, r12
     f9c:	ed 91       	ld	r30, X+
     f9e:	fc 91       	ld	r31, X
     fa0:	e0 16       	cp	r14, r16
     fa2:	f1 06       	cpc	r15, r17
     fa4:	51 f0       	breq	.+20     	; 0xfba <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     fa6:	06 80       	ldd	r0, Z+6	; 0x06
     fa8:	f7 81       	ldd	r31, Z+7	; 0x07
     faa:	e0 2d       	mov	r30, r0
     fac:	61 e0       	ldi	r22, 0x01	; 1
     fae:	c6 01       	movw	r24, r12
     fb0:	09 95       	icall
     fb2:	f7 01       	movw	r30, r14
     fb4:	81 93       	st	Z+, r24
     fb6:	7f 01       	movw	r14, r30
     fb8:	f0 cf       	rjmp	.-32     	; 0xf9a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     fba:	02 80       	ldd	r0, Z+2	; 0x02
     fbc:	f3 81       	ldd	r31, Z+3	; 0x03
     fbe:	e0 2d       	mov	r30, r0
     fc0:	c6 01       	movw	r24, r12
     fc2:	0f 90       	pop	r0
     fc4:	0f 90       	pop	r0
     fc6:	0f 90       	pop	r0
     fc8:	df 91       	pop	r29
     fca:	cf 91       	pop	r28
     fcc:	1f 91       	pop	r17
     fce:	0f 91       	pop	r16
     fd0:	ff 90       	pop	r15
     fd2:	ef 90       	pop	r14
     fd4:	df 90       	pop	r13
     fd6:	cf 90       	pop	r12
     fd8:	09 94       	ijmp

00000fda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     fda:	88 23       	and	r24, r24
     fdc:	21 f0       	breq	.+8      	; 0xfe6 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     fde:	bf 98       	cbi	0x17, 7	; 23
     fe0:	82 30       	cpi	r24, 0x02	; 2
     fe2:	19 f0       	breq	.+6      	; 0xfea <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     fe4:	08 95       	ret
     fe6:	bf 9a       	sbi	0x17, 7	; 23
     fe8:	08 95       	ret
     fea:	c7 9a       	sbi	0x18, 7	; 24
     fec:	08 95       	ret

00000fee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     fee:	00 00       	nop
     ff0:	00 00       	nop
     ff2:	08 95       	ret

00000ff4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     ff4:	1f 93       	push	r17
     ff6:	cf 93       	push	r28
     ff8:	df 93       	push	r29
     ffa:	16 2f       	mov	r17, r22
     ffc:	bd 98       	cbi	0x17, 5	; 23
     ffe:	80 e0       	ldi	r24, 0x00	; 0
    1000:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1004:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1008:	d8 e0       	ldi	r29, 0x08	; 8
    100a:	c0 e0       	ldi	r28, 0x00	; 0
    100c:	cc 0f       	add	r28, r28
    100e:	81 e0       	ldi	r24, 0x01	; 1
    1010:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1014:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1018:	b5 99       	sbic	0x16, 5	; 22
    101a:	c1 60       	ori	r28, 0x01	; 1
    101c:	80 e0       	ldi	r24, 0x00	; 0
    101e:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1022:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1026:	d1 50       	subi	r29, 0x01	; 1
    1028:	89 f7       	brne	.-30     	; 0x100c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
    102a:	11 23       	and	r17, r17
    102c:	11 f0       	breq	.+4      	; 0x1032 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
    102e:	bd 9a       	sbi	0x17, 5	; 23
    1030:	01 c0       	rjmp	.+2      	; 0x1034 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
    1032:	bd 98       	cbi	0x17, 5	; 23
    1034:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1038:	81 e0       	ldi	r24, 0x01	; 1
    103a:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    103e:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1042:	80 e0       	ldi	r24, 0x00	; 0
    1044:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1048:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    104c:	bd 98       	cbi	0x17, 5	; 23
    104e:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1052:	8c 2f       	mov	r24, r28
    1054:	df 91       	pop	r29
    1056:	cf 91       	pop	r28
    1058:	1f 91       	pop	r17
    105a:	08 95       	ret

0000105c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
    105c:	cf 93       	push	r28
    105e:	df 93       	push	r29
    1060:	d6 2f       	mov	r29, r22
    1062:	c8 e0       	ldi	r28, 0x08	; 8
    1064:	80 e0       	ldi	r24, 0x00	; 0
    1066:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    106a:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    106e:	d7 ff       	sbrs	r29, 7
    1070:	02 c0       	rjmp	.+4      	; 0x1076 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
    1072:	bd 98       	cbi	0x17, 5	; 23
    1074:	01 c0       	rjmp	.+2      	; 0x1078 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
    1076:	bd 9a       	sbi	0x17, 5	; 23
    1078:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    107c:	81 e0       	ldi	r24, 0x01	; 1
    107e:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1082:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1086:	dd 0f       	add	r29, r29
    1088:	c1 50       	subi	r28, 0x01	; 1
    108a:	61 f7       	brne	.-40     	; 0x1064 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
    108c:	80 e0       	ldi	r24, 0x00	; 0
    108e:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1092:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1096:	bd 98       	cbi	0x17, 5	; 23
    1098:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    109c:	81 e0       	ldi	r24, 0x01	; 1
    109e:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10a2:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    10a6:	c6 b3       	in	r28, 0x16	; 22
    10a8:	80 e0       	ldi	r24, 0x00	; 0
    10aa:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10ae:	0e 94 f7 07 	call	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    10b2:	c5 fb       	bst	r28, 5
    10b4:	cc 27       	eor	r28, r28
    10b6:	c0 f9       	bld	r28, 0
    10b8:	81 e0       	ldi	r24, 0x01	; 1
    10ba:	8c 27       	eor	r24, r28
    10bc:	df 91       	pop	r29
    10be:	cf 91       	pop	r28
    10c0:	08 95       	ret

000010c2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
    10c2:	81 e0       	ldi	r24, 0x01	; 1
    10c4:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10c8:	bd 98       	cbi	0x17, 5	; 23
    10ca:	81 e0       	ldi	r24, 0x01	; 1
    10cc:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10d0:	bd 9a       	sbi	0x17, 5	; 23
    10d2:	80 e0       	ldi	r24, 0x00	; 0
    10d4:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10d8:	bd 98       	cbi	0x17, 5	; 23
    10da:	0c 94 f7 07 	jmp	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

000010de <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
    10de:	80 e0       	ldi	r24, 0x00	; 0
    10e0:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10e4:	bd 9a       	sbi	0x17, 5	; 23
    10e6:	81 e0       	ldi	r24, 0x01	; 1
    10e8:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10ec:	bd 9a       	sbi	0x17, 5	; 23
    10ee:	81 e0       	ldi	r24, 0x01	; 1
    10f0:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10f4:	bd 98       	cbi	0x17, 5	; 23
    10f6:	0c 94 f7 07 	jmp	0xfee	; 0xfee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

000010fa <_GLOBAL__sub_I_i2c>:
    10fa:	8e e7       	ldi	r24, 0x7E	; 126
    10fc:	90 e0       	ldi	r25, 0x00	; 0
    10fe:	90 93 d0 00 	sts	0x00D0, r25
    1102:	80 93 cf 00 	sts	0x00CF, r24
    1106:	bd 98       	cbi	0x17, 5	; 23
    1108:	81 e0       	ldi	r24, 0x01	; 1
    110a:	0e 94 ed 07 	call	0xfda	; 0xfda <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    110e:	c5 98       	cbi	0x18, 5	; 24
    1110:	c7 98       	cbi	0x18, 7	; 24
    1112:	08 95       	ret

00001114 <_ZdlPv>:
    1114:	0c 94 3c 0b 	jmp	0x1678	; 0x1678 <free>

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
