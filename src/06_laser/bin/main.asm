
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 30 00 	jmp	0x60	; 0x60 <__dtors_end>
       4:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
       8:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
       c:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      10:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      14:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      18:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      1c:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      20:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      24:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      28:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      2c:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      30:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      34:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      38:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      3c:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      40:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      44:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      48:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>
      4c:	0c 94 59 08 	jmp	0x10b2	; 0x10b2 <__vector_19>
      50:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>

00000054 <__ctors_start>:
      54:	b0 01       	movw	r22, r0
      56:	ba 04       	cpc	r11, r10
      58:	9d 08       	sbc	r9, r13
      5a:	30 0a       	sbc	r3, r16

0000005c <__ctors_end>:
      5c:	0f 02       	muls	r16, r31
      5e:	34 0a       	sbc	r3, r20

00000060 <__dtors_end>:
      60:	11 24       	eor	r1, r1
      62:	1f be       	out	0x3f, r1	; 63
      64:	cf e5       	ldi	r28, 0x5F	; 95
      66:	d4 e0       	ldi	r29, 0x04	; 4
      68:	de bf       	out	0x3e, r29	; 62
      6a:	cd bf       	out	0x3d, r28	; 61

0000006c <__do_copy_data>:
      6c:	10 e0       	ldi	r17, 0x00	; 0
      6e:	a0 e6       	ldi	r26, 0x60	; 96
      70:	b0 e0       	ldi	r27, 0x00	; 0
      72:	e8 e7       	ldi	r30, 0x78	; 120
      74:	fb e1       	ldi	r31, 0x1B	; 27
      76:	02 c0       	rjmp	.+4      	; 0x7c <__do_copy_data+0x10>
      78:	05 90       	lpm	r0, Z+
      7a:	0d 92       	st	X+, r0
      7c:	a2 3c       	cpi	r26, 0xC2	; 194
      7e:	b1 07       	cpc	r27, r17
      80:	d9 f7       	brne	.-10     	; 0x78 <__do_copy_data+0xc>

00000082 <__do_clear_bss>:
      82:	21 e0       	ldi	r18, 0x01	; 1
      84:	a2 ec       	ldi	r26, 0xC2	; 194
      86:	b0 e0       	ldi	r27, 0x00	; 0
      88:	01 c0       	rjmp	.+2      	; 0x8c <.do_clear_bss_start>

0000008a <.do_clear_bss_loop>:
      8a:	1d 92       	st	X+, r1

0000008c <.do_clear_bss_start>:
      8c:	ac 34       	cpi	r26, 0x4C	; 76
      8e:	b2 07       	cpc	r27, r18
      90:	e1 f7       	brne	.-8      	; 0x8a <.do_clear_bss_loop>

00000092 <__do_global_ctors>:
      92:	10 e0       	ldi	r17, 0x00	; 0
      94:	ce e2       	ldi	r28, 0x2E	; 46
      96:	d0 e0       	ldi	r29, 0x00	; 0
      98:	04 c0       	rjmp	.+8      	; 0xa2 <__do_global_ctors+0x10>
      9a:	21 97       	sbiw	r28, 0x01	; 1
      9c:	fe 01       	movw	r30, r28
      9e:	0e 94 05 0b 	call	0x160a	; 0x160a <__tablejump2__>
      a2:	ca 32       	cpi	r28, 0x2A	; 42
      a4:	d1 07       	cpc	r29, r17
      a6:	c9 f7       	brne	.-14     	; 0x9a <__do_global_ctors+0x8>
      a8:	0e 94 61 01 	call	0x2c2	; 0x2c2 <main>
      ac:	0c 94 af 0d 	jmp	0x1b5e	; 0x1b5e <__do_global_dtors>

000000b0 <__bad_interrupt>:
      b0:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b4 <_ZN6CBlinkD1Ev>:
      b4:	08 95       	ret

000000b6 <_ZN6CBlinkD0Ev>:
      b6:	0c 94 fe 07 	jmp	0xffc	; 0xffc <_ZdlPv>

000000ba <_ZN10CLaserTaskclEv>:
      ba:	4f 92       	push	r4
      bc:	5f 92       	push	r5
      be:	6f 92       	push	r6
      c0:	7f 92       	push	r7
      c2:	8f 92       	push	r8
      c4:	9f 92       	push	r9
      c6:	af 92       	push	r10
      c8:	bf 92       	push	r11
      ca:	cf 92       	push	r12
      cc:	df 92       	push	r13
      ce:	ef 92       	push	r14
      d0:	ff 92       	push	r15
      d2:	cf 93       	push	r28
      d4:	df 93       	push	r29
      d6:	ec 01       	movw	r28, r24
      d8:	2a 8d       	ldd	r18, Y+26	; 0x1a
      da:	3b 8d       	ldd	r19, Y+27	; 0x1b
      dc:	4c 8d       	ldd	r20, Y+28	; 0x1c
      de:	5d 8d       	ldd	r21, Y+29	; 0x1d
      e0:	af e1       	ldi	r26, 0x1F	; 31
      e2:	b0 e0       	ldi	r27, 0x00	; 0
      e4:	0e 94 e6 0a 	call	0x15cc	; 0x15cc <__muluhisi3>
      e8:	6b 01       	movw	r12, r22
      ea:	7c 01       	movw	r14, r24
      ec:	ce 01       	movw	r24, r28
      ee:	02 96       	adiw	r24, 0x02	; 2
      f0:	0e 94 c9 04 	call	0x992	; 0x992 <_ZN8CVL53L0X4readEv>
      f4:	44 97       	sbiw	r24, 0x14	; 20
      f6:	09 2e       	mov	r0, r25
      f8:	00 0c       	add	r0, r0
      fa:	aa 0b       	sbc	r26, r26
      fc:	bb 0b       	sbc	r27, r27
      fe:	8c 0d       	add	r24, r12
     100:	9d 1d       	adc	r25, r13
     102:	ae 1d       	adc	r26, r14
     104:	bf 1d       	adc	r27, r15
     106:	35 e0       	ldi	r19, 0x05	; 5
     108:	b6 95       	lsr	r27
     10a:	a7 95       	ror	r26
     10c:	97 95       	ror	r25
     10e:	87 95       	ror	r24
     110:	3a 95       	dec	r19
     112:	d1 f7       	brne	.-12     	; 0x108 <_ZN10CLaserTaskclEv+0x4e>
     114:	8d 32       	cpi	r24, 0x2D	; 45
     116:	21 e0       	ldi	r18, 0x01	; 1
     118:	92 07       	cpc	r25, r18
     11a:	a1 05       	cpc	r26, r1
     11c:	b1 05       	cpc	r27, r1
     11e:	20 f0       	brcs	.+8      	; 0x128 <_ZN10CLaserTaskclEv+0x6e>
     120:	8c e2       	ldi	r24, 0x2C	; 44
     122:	91 e0       	ldi	r25, 0x01	; 1
     124:	a0 e0       	ldi	r26, 0x00	; 0
     126:	b0 e0       	ldi	r27, 0x00	; 0
     128:	8a 8f       	std	Y+26, r24	; 0x1a
     12a:	9b 8f       	std	Y+27, r25	; 0x1b
     12c:	ac 8f       	std	Y+28, r26	; 0x1c
     12e:	bd 8f       	std	Y+29, r27	; 0x1d
     130:	8d 8d       	ldd	r24, Y+29	; 0x1d
     132:	8f 93       	push	r24
     134:	8c 8d       	ldd	r24, Y+28	; 0x1c
     136:	8f 93       	push	r24
     138:	8b 8d       	ldd	r24, Y+27	; 0x1b
     13a:	8f 93       	push	r24
     13c:	8a 8d       	ldd	r24, Y+26	; 0x1a
     13e:	8f 93       	push	r24
     140:	86 e6       	ldi	r24, 0x66	; 102
     142:	90 e0       	ldi	r25, 0x00	; 0
     144:	9f 93       	push	r25
     146:	8f 93       	push	r24
     148:	87 e4       	ldi	r24, 0x47	; 71
     14a:	91 e0       	ldi	r25, 0x01	; 1
     14c:	9f 93       	push	r25
     14e:	8f 93       	push	r24
     150:	0e 94 ac 09 	call	0x1358	; 0x1358 <_ZN9CTerminal6printfEPKcz>
     154:	6a 8d       	ldd	r22, Y+26	; 0x1a
     156:	7b 8d       	ldd	r23, Y+27	; 0x1b
     158:	8c 8d       	ldd	r24, Y+28	; 0x1c
     15a:	9d 8d       	ldd	r25, Y+29	; 0x1d
     15c:	2a e0       	ldi	r18, 0x0A	; 10
     15e:	c2 2e       	mov	r12, r18
     160:	d1 2c       	mov	r13, r1
     162:	e1 2c       	mov	r14, r1
     164:	f1 2c       	mov	r15, r1
     166:	a7 01       	movw	r20, r14
     168:	96 01       	movw	r18, r12
     16a:	0e 94 a5 0a 	call	0x154a	; 0x154a <__udivmodsi4>
     16e:	62 2f       	mov	r22, r18
     170:	ce 01       	movw	r24, r28
     172:	44 96       	adiw	r24, 0x14	; 20
     174:	0e 94 6b 0a 	call	0x14d6	; 0x14d6 <_ZN11CLEDDisplay11display_decEh>
     178:	8e 8d       	ldd	r24, Y+30	; 0x1e
     17a:	9f 8d       	ldd	r25, Y+31	; 0x1f
     17c:	a8 a1       	ldd	r26, Y+32	; 0x20
     17e:	b9 a1       	ldd	r27, Y+33	; 0x21
     180:	2d b7       	in	r18, 0x3d	; 61
     182:	3e b7       	in	r19, 0x3e	; 62
     184:	28 5f       	subi	r18, 0xF8	; 248
     186:	3f 4f       	sbci	r19, 0xFF	; 255
     188:	0f b6       	in	r0, 0x3f	; 63
     18a:	f8 94       	cli
     18c:	3e bf       	out	0x3e, r19	; 62
     18e:	0f be       	out	0x3f, r0	; 63
     190:	2d bf       	out	0x3d, r18	; 61
     192:	00 97       	sbiw	r24, 0x00	; 0
     194:	a1 05       	cpc	r26, r1
     196:	b1 05       	cpc	r27, r1
     198:	41 f0       	breq	.+16     	; 0x1aa <_ZN10CLaserTaskclEv+0xf0>
     19a:	01 97       	sbiw	r24, 0x01	; 1
     19c:	a1 09       	sbc	r26, r1
     19e:	b1 09       	sbc	r27, r1
     1a0:	8e 8f       	std	Y+30, r24	; 0x1e
     1a2:	9f 8f       	std	Y+31, r25	; 0x1f
     1a4:	a8 a3       	std	Y+32, r26	; 0x20
     1a6:	b9 a3       	std	Y+33, r27	; 0x21
     1a8:	0c c0       	rjmp	.+24     	; 0x1c2 <_ZN10CLaserTaskclEv+0x108>
     1aa:	6a 8d       	ldd	r22, Y+26	; 0x1a
     1ac:	7b 8d       	ldd	r23, Y+27	; 0x1b
     1ae:	8c 8d       	ldd	r24, Y+28	; 0x1c
     1b0:	9d 8d       	ldd	r25, Y+29	; 0x1d
     1b2:	a7 01       	movw	r20, r14
     1b4:	96 01       	movw	r18, r12
     1b6:	0e 94 a5 0a 	call	0x154a	; 0x154a <__udivmodsi4>
     1ba:	2e 8f       	std	Y+30, r18	; 0x1e
     1bc:	3f 8f       	std	Y+31, r19	; 0x1f
     1be:	48 a3       	std	Y+32, r20	; 0x20
     1c0:	59 a3       	std	Y+33, r21	; 0x21
     1c2:	8e 8d       	ldd	r24, Y+30	; 0x1e
     1c4:	9f 8d       	ldd	r25, Y+31	; 0x1f
     1c6:	a8 a1       	ldd	r26, Y+32	; 0x20
     1c8:	b9 a1       	ldd	r27, Y+33	; 0x21
     1ca:	01 97       	sbiw	r24, 0x01	; 1
     1cc:	a1 05       	cpc	r26, r1
     1ce:	b1 05       	cpc	r27, r1
     1d0:	11 f4       	brne	.+4      	; 0x1d6 <_ZN10CLaserTaskclEv+0x11c>
     1d2:	df 98       	cbi	0x1b, 7	; 27
     1d4:	01 c0       	rjmp	.+2      	; 0x1d8 <_ZN10CLaserTaskclEv+0x11e>
     1d6:	df 9a       	sbi	0x1b, 7	; 27
     1d8:	ce a8       	ldd	r12, Y+54	; 0x36
     1da:	df a8       	ldd	r13, Y+55	; 0x37
     1dc:	e8 ac       	ldd	r14, Y+56	; 0x38
     1de:	f9 ac       	ldd	r15, Y+57	; 0x39
     1e0:	ca ae       	std	Y+58, r12	; 0x3a
     1e2:	db ae       	std	Y+59, r13	; 0x3b
     1e4:	ec ae       	std	Y+60, r14	; 0x3c
     1e6:	fd ae       	std	Y+61, r15	; 0x3d
     1e8:	8a a8       	ldd	r8, Y+50	; 0x32
     1ea:	9b a8       	ldd	r9, Y+51	; 0x33
     1ec:	ac a8       	ldd	r10, Y+52	; 0x34
     1ee:	bd a8       	ldd	r11, Y+53	; 0x35
     1f0:	8e aa       	std	Y+54, r8	; 0x36
     1f2:	9f aa       	std	Y+55, r9	; 0x37
     1f4:	a8 ae       	std	Y+56, r10	; 0x38
     1f6:	b9 ae       	std	Y+57, r11	; 0x39
     1f8:	6a 8d       	ldd	r22, Y+26	; 0x1a
     1fa:	7b 8d       	ldd	r23, Y+27	; 0x1b
     1fc:	8c 8d       	ldd	r24, Y+28	; 0x1c
     1fe:	9d 8d       	ldd	r25, Y+29	; 0x1d
     200:	0e 94 87 0b 	call	0x170e	; 0x170e <__floatunsisf>
     204:	9b 01       	movw	r18, r22
     206:	ac 01       	movw	r20, r24
     208:	60 e0       	ldi	r22, 0x00	; 0
     20a:	70 e0       	ldi	r23, 0x00	; 0
     20c:	86 e1       	ldi	r24, 0x16	; 22
     20e:	93 e4       	ldi	r25, 0x43	; 67
     210:	0e 94 1a 0b 	call	0x1634	; 0x1634 <__subsf3>
     214:	6a ab       	std	Y+50, r22	; 0x32
     216:	7b ab       	std	Y+51, r23	; 0x33
     218:	8c ab       	std	Y+52, r24	; 0x34
     21a:	9d ab       	std	Y+53, r25	; 0x35
     21c:	2e a1       	ldd	r18, Y+38	; 0x26
     21e:	3f a1       	ldd	r19, Y+39	; 0x27
     220:	48 a5       	ldd	r20, Y+40	; 0x28
     222:	59 a5       	ldd	r21, Y+41	; 0x29
     224:	0e 94 15 0c 	call	0x182a	; 0x182a <__mulsf3>
     228:	2b 01       	movw	r4, r22
     22a:	3c 01       	movw	r6, r24
     22c:	2a a5       	ldd	r18, Y+42	; 0x2a
     22e:	3b a5       	ldd	r19, Y+43	; 0x2b
     230:	4c a5       	ldd	r20, Y+44	; 0x2c
     232:	5d a5       	ldd	r21, Y+45	; 0x2d
     234:	c5 01       	movw	r24, r10
     236:	b4 01       	movw	r22, r8
     238:	0e 94 15 0c 	call	0x182a	; 0x182a <__mulsf3>
     23c:	9b 01       	movw	r18, r22
     23e:	ac 01       	movw	r20, r24
     240:	c3 01       	movw	r24, r6
     242:	b2 01       	movw	r22, r4
     244:	0e 94 1b 0b 	call	0x1636	; 0x1636 <__addsf3>
     248:	4b 01       	movw	r8, r22
     24a:	5c 01       	movw	r10, r24
     24c:	2e a5       	ldd	r18, Y+46	; 0x2e
     24e:	3f a5       	ldd	r19, Y+47	; 0x2f
     250:	48 a9       	ldd	r20, Y+48	; 0x30
     252:	59 a9       	ldd	r21, Y+49	; 0x31
     254:	c7 01       	movw	r24, r14
     256:	b6 01       	movw	r22, r12
     258:	0e 94 15 0c 	call	0x182a	; 0x182a <__mulsf3>
     25c:	9b 01       	movw	r18, r22
     25e:	ac 01       	movw	r20, r24
     260:	c5 01       	movw	r24, r10
     262:	b4 01       	movw	r22, r8
     264:	0e 94 1b 0b 	call	0x1636	; 0x1636 <__addsf3>
     268:	9b 01       	movw	r18, r22
     26a:	ac 01       	movw	r20, r24
     26c:	6a a1       	ldd	r22, Y+34	; 0x22
     26e:	7b a1       	ldd	r23, Y+35	; 0x23
     270:	8c a1       	ldd	r24, Y+36	; 0x24
     272:	9d a1       	ldd	r25, Y+37	; 0x25
     274:	0e 94 1b 0b 	call	0x1636	; 0x1636 <__addsf3>
     278:	6a a3       	std	Y+34, r22	; 0x22
     27a:	7b a3       	std	Y+35, r23	; 0x23
     27c:	8c a3       	std	Y+36, r24	; 0x24
     27e:	9d a3       	std	Y+37, r25	; 0x25
     280:	df 91       	pop	r29
     282:	cf 91       	pop	r28
     284:	ff 90       	pop	r15
     286:	ef 90       	pop	r14
     288:	df 90       	pop	r13
     28a:	cf 90       	pop	r12
     28c:	bf 90       	pop	r11
     28e:	af 90       	pop	r10
     290:	9f 90       	pop	r9
     292:	8f 90       	pop	r8
     294:	7f 90       	pop	r7
     296:	6f 90       	pop	r6
     298:	5f 90       	pop	r5
     29a:	4f 90       	pop	r4
     29c:	08 95       	ret

0000029e <_ZN6CBlinkclEv>:
     29e:	fc 01       	movw	r30, r24
     2a0:	83 81       	ldd	r24, Z+3	; 0x03
     2a2:	94 81       	ldd	r25, Z+4	; 0x04
     2a4:	00 97       	sbiw	r24, 0x00	; 0
     2a6:	19 f0       	breq	.+6      	; 0x2ae <_ZN6CBlinkclEv+0x10>
     2a8:	01 97       	sbiw	r24, 0x01	; 1
     2aa:	39 f0       	breq	.+14     	; 0x2ba <_ZN6CBlinkclEv+0x1c>
     2ac:	08 95       	ret
     2ae:	dd 9a       	sbi	0x1b, 5	; 27
     2b0:	81 e0       	ldi	r24, 0x01	; 1
     2b2:	90 e0       	ldi	r25, 0x00	; 0
     2b4:	94 83       	std	Z+4, r25	; 0x04
     2b6:	83 83       	std	Z+3, r24	; 0x03
     2b8:	08 95       	ret
     2ba:	dd 98       	cbi	0x1b, 5	; 27
     2bc:	14 82       	std	Z+4, r1	; 0x04
     2be:	13 82       	std	Z+3, r1	; 0x03
     2c0:	08 95       	ret

000002c2 <main>:
     2c2:	bb 98       	cbi	0x17, 3	; 23
     2c4:	c3 9a       	sbi	0x18, 3	; 24
     2c6:	ba 98       	cbi	0x17, 2	; 23
     2c8:	c2 9a       	sbi	0x18, 2	; 24
     2ca:	48 ec       	ldi	r20, 0xC8	; 200
     2cc:	50 e0       	ldi	r21, 0x00	; 0
     2ce:	61 e0       	ldi	r22, 0x01	; 1
     2d0:	71 e0       	ldi	r23, 0x01	; 1
     2d2:	8a e0       	ldi	r24, 0x0A	; 10
     2d4:	91 e0       	ldi	r25, 0x01	; 1
     2d6:	0e 94 1a 08 	call	0x1034	; 0x1034 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     2da:	8a e6       	ldi	r24, 0x6A	; 106
     2dc:	90 e0       	ldi	r25, 0x00	; 0
     2de:	9f 93       	push	r25
     2e0:	8f 93       	push	r24
     2e2:	87 e4       	ldi	r24, 0x47	; 71
     2e4:	91 e0       	ldi	r25, 0x01	; 1
     2e6:	9f 93       	push	r25
     2e8:	8f 93       	push	r24
     2ea:	0e 94 ac 09 	call	0x1358	; 0x1358 <_ZN9CTerminal6printfEPKcz>
     2ee:	0f 90       	pop	r0
     2f0:	0f 90       	pop	r0
     2f2:	0f 90       	pop	r0
     2f4:	0f 90       	pop	r0
     2f6:	b3 9b       	sbis	0x16, 3	; 22
     2f8:	07 c0       	rjmp	.+14     	; 0x308 <main+0x46>
     2fa:	b2 9b       	sbis	0x16, 2	; 22
     2fc:	05 c0       	rjmp	.+10     	; 0x308 <main+0x46>
     2fe:	8a e0       	ldi	r24, 0x0A	; 10
     300:	91 e0       	ldi	r25, 0x01	; 1
     302:	0e 94 3c 08 	call	0x1078	; 0x1078 <_ZN8CRTTimer4mainEv>
     306:	f7 cf       	rjmp	.-18     	; 0x2f6 <main+0x34>
     308:	60 e0       	ldi	r22, 0x00	; 0
     30a:	86 ed       	ldi	r24, 0xD6	; 214
     30c:	90 e0       	ldi	r25, 0x00	; 0
     30e:	0e 94 6b 0a 	call	0x14d6	; 0x14d6 <_ZN11CLEDDisplay11display_decEh>
     312:	66 e0       	ldi	r22, 0x06	; 6
     314:	71 e0       	ldi	r23, 0x01	; 1
     316:	84 ec       	ldi	r24, 0xC4	; 196
     318:	90 e0       	ldi	r25, 0x00	; 0
     31a:	0e 94 4b 06 	call	0xc96	; 0xc96 <_ZN8CVL53L0X4initEP14CI2C_Interface>
     31e:	88 ee       	ldi	r24, 0xE8	; 232
     320:	93 e0       	ldi	r25, 0x03	; 3
     322:	a0 e0       	ldi	r26, 0x00	; 0
     324:	b0 e0       	ldi	r27, 0x00	; 0
     326:	80 93 dc 00 	sts	0x00DC, r24
     32a:	90 93 dd 00 	sts	0x00DD, r25
     32e:	a0 93 de 00 	sts	0x00DE, r26
     332:	b0 93 df 00 	sts	0x00DF, r27
     336:	10 92 e0 00 	sts	0x00E0, r1
     33a:	10 92 e1 00 	sts	0x00E1, r1
     33e:	10 92 e2 00 	sts	0x00E2, r1
     342:	10 92 e3 00 	sts	0x00E3, r1
     346:	44 e1       	ldi	r20, 0x14	; 20
     348:	50 e0       	ldi	r21, 0x00	; 0
     34a:	62 ec       	ldi	r22, 0xC2	; 194
     34c:	70 e0       	ldi	r23, 0x00	; 0
     34e:	8a e0       	ldi	r24, 0x0A	; 10
     350:	91 e0       	ldi	r25, 0x01	; 1
     352:	0e 94 1a 08 	call	0x1034	; 0x1034 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     356:	8a e0       	ldi	r24, 0x0A	; 10
     358:	91 e0       	ldi	r25, 0x01	; 1
     35a:	0e 94 3c 08 	call	0x1078	; 0x1078 <_ZN8CRTTimer4mainEv>
     35e:	fb cf       	rjmp	.-10     	; 0x356 <main+0x94>

00000360 <_GLOBAL__sub_I_blink_task>:
     360:	cf 93       	push	r28
     362:	df 93       	push	r29
     364:	e1 e0       	ldi	r30, 0x01	; 1
     366:	f1 e0       	ldi	r31, 0x01	; 1
     368:	80 e8       	ldi	r24, 0x80	; 128
     36a:	90 e0       	ldi	r25, 0x00	; 0
     36c:	91 83       	std	Z+1, r25	; 0x01
     36e:	80 83       	st	Z, r24
     370:	d5 9a       	sbi	0x1a, 5	; 26
     372:	14 82       	std	Z+4, r1	; 0x04
     374:	13 82       	std	Z+3, r1	; 0x03
     376:	c2 ec       	ldi	r28, 0xC2	; 194
     378:	d0 e0       	ldi	r29, 0x00	; 0
     37a:	8a e8       	ldi	r24, 0x8A	; 138
     37c:	90 e0       	ldi	r25, 0x00	; 0
     37e:	99 83       	std	Y+1, r25	; 0x01
     380:	88 83       	st	Y, r24
     382:	84 ec       	ldi	r24, 0xC4	; 196
     384:	90 e0       	ldi	r25, 0x00	; 0
     386:	0e 94 c7 04 	call	0x98e	; 0x98e <_ZN8CVL53L0XC1Ev>
     38a:	86 ed       	ldi	r24, 0xD6	; 214
     38c:	90 e0       	ldi	r25, 0x00	; 0
     38e:	0e 94 53 0a 	call	0x14a6	; 0x14a6 <_ZN11CLEDDisplayC1Ev>
     392:	d7 9a       	sbi	0x1a, 7	; 26
     394:	80 e0       	ldi	r24, 0x00	; 0
     396:	91 e0       	ldi	r25, 0x01	; 1
     398:	0e 94 2e 02 	call	0x45c	; 0x45c <_ZN6CMotorC1Ev>
     39c:	df 9a       	sbi	0x1b, 7	; 27
     39e:	1a a2       	std	Y+34, r1	; 0x22
     3a0:	1b a2       	std	Y+35, r1	; 0x23
     3a2:	1c a2       	std	Y+36, r1	; 0x24
     3a4:	1d a2       	std	Y+37, r1	; 0x25
     3a6:	80 e0       	ldi	r24, 0x00	; 0
     3a8:	90 e0       	ldi	r25, 0x00	; 0
     3aa:	a0 e8       	ldi	r26, 0x80	; 128
     3ac:	b0 e4       	ldi	r27, 0x40	; 64
     3ae:	8e a3       	std	Y+38, r24	; 0x26
     3b0:	9f a3       	std	Y+39, r25	; 0x27
     3b2:	a8 a7       	std	Y+40, r26	; 0x28
     3b4:	b9 a7       	std	Y+41, r27	; 0x29
     3b6:	80 e0       	ldi	r24, 0x00	; 0
     3b8:	90 e0       	ldi	r25, 0x00	; 0
     3ba:	a0 ec       	ldi	r26, 0xC0	; 192
     3bc:	b0 ec       	ldi	r27, 0xC0	; 192
     3be:	8a a7       	std	Y+42, r24	; 0x2a
     3c0:	9b a7       	std	Y+43, r25	; 0x2b
     3c2:	ac a7       	std	Y+44, r26	; 0x2c
     3c4:	bd a7       	std	Y+45, r27	; 0x2d
     3c6:	80 e0       	ldi	r24, 0x00	; 0
     3c8:	90 e0       	ldi	r25, 0x00	; 0
     3ca:	a0 e0       	ldi	r26, 0x00	; 0
     3cc:	b0 e4       	ldi	r27, 0x40	; 64
     3ce:	8e a7       	std	Y+46, r24	; 0x2e
     3d0:	9f a7       	std	Y+47, r25	; 0x2f
     3d2:	a8 ab       	std	Y+48, r26	; 0x30
     3d4:	b9 ab       	std	Y+49, r27	; 0x31
     3d6:	1a aa       	std	Y+50, r1	; 0x32
     3d8:	1b aa       	std	Y+51, r1	; 0x33
     3da:	1c aa       	std	Y+52, r1	; 0x34
     3dc:	1d aa       	std	Y+53, r1	; 0x35
     3de:	1e aa       	std	Y+54, r1	; 0x36
     3e0:	1f aa       	std	Y+55, r1	; 0x37
     3e2:	18 ae       	std	Y+56, r1	; 0x38
     3e4:	19 ae       	std	Y+57, r1	; 0x39
     3e6:	1a ae       	std	Y+58, r1	; 0x3a
     3e8:	1b ae       	std	Y+59, r1	; 0x3b
     3ea:	1c ae       	std	Y+60, r1	; 0x3c
     3ec:	1d ae       	std	Y+61, r1	; 0x3d
     3ee:	df 91       	pop	r29
     3f0:	cf 91       	pop	r28
     3f2:	08 95       	ret

000003f4 <_ZN10CLaserTaskD1Ev>:
     3f4:	cf 93       	push	r28
     3f6:	df 93       	push	r29
     3f8:	ec 01       	movw	r28, r24
     3fa:	8a e8       	ldi	r24, 0x8A	; 138
     3fc:	90 e0       	ldi	r25, 0x00	; 0
     3fe:	99 83       	std	Y+1, r25	; 0x01
     400:	88 83       	st	Y, r24
     402:	ce 01       	movw	r24, r28
     404:	ce 96       	adiw	r24, 0x3e	; 62
     406:	0e 94 3a 02 	call	0x474	; 0x474 <_ZN6CMotorD1Ev>
     40a:	ce 01       	movw	r24, r28
     40c:	44 96       	adiw	r24, 0x14	; 20
     40e:	0e 94 38 0a 	call	0x1470	; 0x1470 <_ZN11CLEDDisplayD1Ev>
     412:	ce 01       	movw	r24, r28
     414:	02 96       	adiw	r24, 0x02	; 2
     416:	df 91       	pop	r29
     418:	cf 91       	pop	r28
     41a:	0c 94 c8 04 	jmp	0x990	; 0x990 <_ZN8CVL53L0XD1Ev>

0000041e <_GLOBAL__sub_D_blink_task>:
     41e:	82 ec       	ldi	r24, 0xC2	; 194
     420:	90 e0       	ldi	r25, 0x00	; 0
     422:	0c 94 fa 01 	jmp	0x3f4	; 0x3f4 <_ZN10CLaserTaskD1Ev>

00000426 <_ZN10CLaserTaskD0Ev>:
     426:	cf 93       	push	r28
     428:	df 93       	push	r29
     42a:	ec 01       	movw	r28, r24
     42c:	0e 94 fa 01 	call	0x3f4	; 0x3f4 <_ZN10CLaserTaskD1Ev>
     430:	ce 01       	movw	r24, r28
     432:	df 91       	pop	r29
     434:	cf 91       	pop	r28
     436:	0c 94 fe 07 	jmp	0xffc	; 0xffc <_ZdlPv>

0000043a <_ZN6CUSARTC1Ev>:
     43a:	10 bc       	out	0x20, r1	; 32
     43c:	80 e4       	ldi	r24, 0x40	; 64
     43e:	89 b9       	out	0x09, r24	; 9
     440:	80 b5       	in	r24, 0x20	; 32
     442:	86 68       	ori	r24, 0x86	; 134
     444:	80 bd       	out	0x20, r24	; 32
     446:	8a b1       	in	r24, 0x0a	; 10
     448:	88 61       	ori	r24, 0x18	; 24
     44a:	8a b9       	out	0x0a, r24	; 10
     44c:	08 95       	ret

0000044e <_ZN6CUSARTD1Ev>:
     44e:	08 95       	ret

00000450 <_ZN6CUSART7putcharEc>:
     450:	6c b9       	out	0x0c, r22	; 12
     452:	5d 99       	sbic	0x0b, 5	; 11
     454:	02 c0       	rjmp	.+4      	; 0x45a <_ZN6CUSART7putcharEc+0xa>
     456:	00 00       	nop
     458:	fc cf       	rjmp	.-8      	; 0x452 <_ZN6CUSART7putcharEc+0x2>
     45a:	08 95       	ret

0000045c <_ZN6CMotorC1Ev>:
     45c:	80 ef       	ldi	r24, 0xF0	; 240
     45e:	81 bb       	out	0x11, r24	; 17
     460:	95 98       	cbi	0x12, 5	; 18
     462:	81 ea       	ldi	r24, 0xA1	; 161
     464:	8f bd       	out	0x2f, r24	; 47
     466:	81 e0       	ldi	r24, 0x01	; 1
     468:	8e bd       	out	0x2e, r24	; 46
     46a:	1b bc       	out	0x2b, r1	; 43
     46c:	1a bc       	out	0x2a, r1	; 42
     46e:	19 bc       	out	0x29, r1	; 41
     470:	18 bc       	out	0x28, r1	; 40
     472:	08 95       	ret

00000474 <_ZN6CMotorD1Ev>:
     474:	08 95       	ret

00000476 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     476:	0f 93       	push	r16
     478:	1f 93       	push	r17
     47a:	cf 93       	push	r28
     47c:	df 93       	push	r29
     47e:	00 d0       	rcall	.+0      	; 0x480 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     480:	1f 92       	push	r1
     482:	cd b7       	in	r28, 0x3d	; 61
     484:	de b7       	in	r29, 0x3e	; 62
     486:	8c 01       	movw	r16, r24
     488:	dc 01       	movw	r26, r24
     48a:	ed 91       	ld	r30, X+
     48c:	fc 91       	ld	r31, X
     48e:	01 90       	ld	r0, Z+
     490:	f0 81       	ld	r31, Z
     492:	e0 2d       	mov	r30, r0
     494:	2b 83       	std	Y+3, r18	; 0x03
     496:	4a 83       	std	Y+2, r20	; 0x02
     498:	69 83       	std	Y+1, r22	; 0x01
     49a:	09 95       	icall
     49c:	d8 01       	movw	r26, r16
     49e:	ed 91       	ld	r30, X+
     4a0:	fc 91       	ld	r31, X
     4a2:	04 80       	ldd	r0, Z+4	; 0x04
     4a4:	f5 81       	ldd	r31, Z+5	; 0x05
     4a6:	e0 2d       	mov	r30, r0
     4a8:	69 81       	ldd	r22, Y+1	; 0x01
     4aa:	c8 01       	movw	r24, r16
     4ac:	09 95       	icall
     4ae:	d8 01       	movw	r26, r16
     4b0:	ed 91       	ld	r30, X+
     4b2:	fc 91       	ld	r31, X
     4b4:	04 80       	ldd	r0, Z+4	; 0x04
     4b6:	f5 81       	ldd	r31, Z+5	; 0x05
     4b8:	e0 2d       	mov	r30, r0
     4ba:	4a 81       	ldd	r20, Y+2	; 0x02
     4bc:	64 2f       	mov	r22, r20
     4be:	c8 01       	movw	r24, r16
     4c0:	09 95       	icall
     4c2:	d8 01       	movw	r26, r16
     4c4:	ed 91       	ld	r30, X+
     4c6:	fc 91       	ld	r31, X
     4c8:	04 80       	ldd	r0, Z+4	; 0x04
     4ca:	f5 81       	ldd	r31, Z+5	; 0x05
     4cc:	e0 2d       	mov	r30, r0
     4ce:	2b 81       	ldd	r18, Y+3	; 0x03
     4d0:	62 2f       	mov	r22, r18
     4d2:	c8 01       	movw	r24, r16
     4d4:	09 95       	icall
     4d6:	d8 01       	movw	r26, r16
     4d8:	ed 91       	ld	r30, X+
     4da:	fc 91       	ld	r31, X
     4dc:	02 80       	ldd	r0, Z+2	; 0x02
     4de:	f3 81       	ldd	r31, Z+3	; 0x03
     4e0:	e0 2d       	mov	r30, r0
     4e2:	c8 01       	movw	r24, r16
     4e4:	0f 90       	pop	r0
     4e6:	0f 90       	pop	r0
     4e8:	0f 90       	pop	r0
     4ea:	df 91       	pop	r29
     4ec:	cf 91       	pop	r28
     4ee:	1f 91       	pop	r17
     4f0:	0f 91       	pop	r16
     4f2:	09 94       	ijmp

000004f4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     4f4:	0f 93       	push	r16
     4f6:	1f 93       	push	r17
     4f8:	cf 93       	push	r28
     4fa:	df 93       	push	r29
     4fc:	00 d0       	rcall	.+0      	; 0x4fe <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     4fe:	00 d0       	rcall	.+0      	; 0x500 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     500:	cd b7       	in	r28, 0x3d	; 61
     502:	de b7       	in	r29, 0x3e	; 62
     504:	8c 01       	movw	r16, r24
     506:	dc 01       	movw	r26, r24
     508:	ed 91       	ld	r30, X+
     50a:	fc 91       	ld	r31, X
     50c:	01 90       	ld	r0, Z+
     50e:	f0 81       	ld	r31, Z
     510:	e0 2d       	mov	r30, r0
     512:	2c 83       	std	Y+4, r18	; 0x04
     514:	3b 83       	std	Y+3, r19	; 0x03
     516:	4a 83       	std	Y+2, r20	; 0x02
     518:	69 83       	std	Y+1, r22	; 0x01
     51a:	09 95       	icall
     51c:	d8 01       	movw	r26, r16
     51e:	ed 91       	ld	r30, X+
     520:	fc 91       	ld	r31, X
     522:	04 80       	ldd	r0, Z+4	; 0x04
     524:	f5 81       	ldd	r31, Z+5	; 0x05
     526:	e0 2d       	mov	r30, r0
     528:	69 81       	ldd	r22, Y+1	; 0x01
     52a:	c8 01       	movw	r24, r16
     52c:	09 95       	icall
     52e:	d8 01       	movw	r26, r16
     530:	ed 91       	ld	r30, X+
     532:	fc 91       	ld	r31, X
     534:	04 80       	ldd	r0, Z+4	; 0x04
     536:	f5 81       	ldd	r31, Z+5	; 0x05
     538:	e0 2d       	mov	r30, r0
     53a:	4a 81       	ldd	r20, Y+2	; 0x02
     53c:	64 2f       	mov	r22, r20
     53e:	c8 01       	movw	r24, r16
     540:	09 95       	icall
     542:	d8 01       	movw	r26, r16
     544:	ed 91       	ld	r30, X+
     546:	fc 91       	ld	r31, X
     548:	04 80       	ldd	r0, Z+4	; 0x04
     54a:	f5 81       	ldd	r31, Z+5	; 0x05
     54c:	e0 2d       	mov	r30, r0
     54e:	3b 81       	ldd	r19, Y+3	; 0x03
     550:	63 2f       	mov	r22, r19
     552:	c8 01       	movw	r24, r16
     554:	09 95       	icall
     556:	d8 01       	movw	r26, r16
     558:	ed 91       	ld	r30, X+
     55a:	fc 91       	ld	r31, X
     55c:	04 80       	ldd	r0, Z+4	; 0x04
     55e:	f5 81       	ldd	r31, Z+5	; 0x05
     560:	e0 2d       	mov	r30, r0
     562:	2c 81       	ldd	r18, Y+4	; 0x04
     564:	62 2f       	mov	r22, r18
     566:	c8 01       	movw	r24, r16
     568:	09 95       	icall
     56a:	d8 01       	movw	r26, r16
     56c:	ed 91       	ld	r30, X+
     56e:	fc 91       	ld	r31, X
     570:	02 80       	ldd	r0, Z+2	; 0x02
     572:	f3 81       	ldd	r31, Z+3	; 0x03
     574:	e0 2d       	mov	r30, r0
     576:	c8 01       	movw	r24, r16
     578:	0f 90       	pop	r0
     57a:	0f 90       	pop	r0
     57c:	0f 90       	pop	r0
     57e:	0f 90       	pop	r0
     580:	df 91       	pop	r29
     582:	cf 91       	pop	r28
     584:	1f 91       	pop	r17
     586:	0f 91       	pop	r16
     588:	09 94       	ijmp

0000058a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     58a:	cf 92       	push	r12
     58c:	df 92       	push	r13
     58e:	ef 92       	push	r14
     590:	ff 92       	push	r15
     592:	0f 93       	push	r16
     594:	1f 93       	push	r17
     596:	cf 93       	push	r28
     598:	df 93       	push	r29
     59a:	00 d0       	rcall	.+0      	; 0x59c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     59c:	00 d0       	rcall	.+0      	; 0x59e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     59e:	cd b7       	in	r28, 0x3d	; 61
     5a0:	de b7       	in	r29, 0x3e	; 62
     5a2:	6c 01       	movw	r12, r24
     5a4:	dc 01       	movw	r26, r24
     5a6:	ed 91       	ld	r30, X+
     5a8:	fc 91       	ld	r31, X
     5aa:	01 90       	ld	r0, Z+
     5ac:	f0 81       	ld	r31, Z
     5ae:	e0 2d       	mov	r30, r0
     5b0:	2b 83       	std	Y+3, r18	; 0x03
     5b2:	3c 83       	std	Y+4, r19	; 0x04
     5b4:	4a 83       	std	Y+2, r20	; 0x02
     5b6:	69 83       	std	Y+1, r22	; 0x01
     5b8:	09 95       	icall
     5ba:	d6 01       	movw	r26, r12
     5bc:	ed 91       	ld	r30, X+
     5be:	fc 91       	ld	r31, X
     5c0:	04 80       	ldd	r0, Z+4	; 0x04
     5c2:	f5 81       	ldd	r31, Z+5	; 0x05
     5c4:	e0 2d       	mov	r30, r0
     5c6:	69 81       	ldd	r22, Y+1	; 0x01
     5c8:	c6 01       	movw	r24, r12
     5ca:	09 95       	icall
     5cc:	d6 01       	movw	r26, r12
     5ce:	ed 91       	ld	r30, X+
     5d0:	fc 91       	ld	r31, X
     5d2:	04 80       	ldd	r0, Z+4	; 0x04
     5d4:	f5 81       	ldd	r31, Z+5	; 0x05
     5d6:	e0 2d       	mov	r30, r0
     5d8:	4a 81       	ldd	r20, Y+2	; 0x02
     5da:	64 2f       	mov	r22, r20
     5dc:	c6 01       	movw	r24, r12
     5de:	09 95       	icall
     5e0:	2b 81       	ldd	r18, Y+3	; 0x03
     5e2:	e2 2e       	mov	r14, r18
     5e4:	3c 81       	ldd	r19, Y+4	; 0x04
     5e6:	f3 2e       	mov	r15, r19
     5e8:	0e 0d       	add	r16, r14
     5ea:	1f 1d       	adc	r17, r15
     5ec:	d6 01       	movw	r26, r12
     5ee:	ed 91       	ld	r30, X+
     5f0:	fc 91       	ld	r31, X
     5f2:	e0 16       	cp	r14, r16
     5f4:	f1 06       	cpc	r15, r17
     5f6:	49 f0       	breq	.+18     	; 0x60a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
     5f8:	d7 01       	movw	r26, r14
     5fa:	6d 91       	ld	r22, X+
     5fc:	7d 01       	movw	r14, r26
     5fe:	04 80       	ldd	r0, Z+4	; 0x04
     600:	f5 81       	ldd	r31, Z+5	; 0x05
     602:	e0 2d       	mov	r30, r0
     604:	c6 01       	movw	r24, r12
     606:	09 95       	icall
     608:	f1 cf       	rjmp	.-30     	; 0x5ec <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
     60a:	02 80       	ldd	r0, Z+2	; 0x02
     60c:	f3 81       	ldd	r31, Z+3	; 0x03
     60e:	e0 2d       	mov	r30, r0
     610:	c6 01       	movw	r24, r12
     612:	0f 90       	pop	r0
     614:	0f 90       	pop	r0
     616:	0f 90       	pop	r0
     618:	0f 90       	pop	r0
     61a:	df 91       	pop	r29
     61c:	cf 91       	pop	r28
     61e:	1f 91       	pop	r17
     620:	0f 91       	pop	r16
     622:	ff 90       	pop	r15
     624:	ef 90       	pop	r14
     626:	df 90       	pop	r13
     628:	cf 90       	pop	r12
     62a:	09 94       	ijmp

0000062c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     62c:	ef 92       	push	r14
     62e:	ff 92       	push	r15
     630:	1f 93       	push	r17
     632:	cf 93       	push	r28
     634:	df 93       	push	r29
     636:	1f 92       	push	r1
     638:	cd b7       	in	r28, 0x3d	; 61
     63a:	de b7       	in	r29, 0x3e	; 62
     63c:	7c 01       	movw	r14, r24
     63e:	16 2f       	mov	r17, r22
     640:	dc 01       	movw	r26, r24
     642:	ed 91       	ld	r30, X+
     644:	fc 91       	ld	r31, X
     646:	01 90       	ld	r0, Z+
     648:	f0 81       	ld	r31, Z
     64a:	e0 2d       	mov	r30, r0
     64c:	49 83       	std	Y+1, r20	; 0x01
     64e:	09 95       	icall
     650:	d7 01       	movw	r26, r14
     652:	ed 91       	ld	r30, X+
     654:	fc 91       	ld	r31, X
     656:	04 80       	ldd	r0, Z+4	; 0x04
     658:	f5 81       	ldd	r31, Z+5	; 0x05
     65a:	e0 2d       	mov	r30, r0
     65c:	61 2f       	mov	r22, r17
     65e:	c7 01       	movw	r24, r14
     660:	09 95       	icall
     662:	d7 01       	movw	r26, r14
     664:	ed 91       	ld	r30, X+
     666:	fc 91       	ld	r31, X
     668:	04 80       	ldd	r0, Z+4	; 0x04
     66a:	f5 81       	ldd	r31, Z+5	; 0x05
     66c:	e0 2d       	mov	r30, r0
     66e:	49 81       	ldd	r20, Y+1	; 0x01
     670:	64 2f       	mov	r22, r20
     672:	c7 01       	movw	r24, r14
     674:	09 95       	icall
     676:	d7 01       	movw	r26, r14
     678:	ed 91       	ld	r30, X+
     67a:	fc 91       	ld	r31, X
     67c:	01 90       	ld	r0, Z+
     67e:	f0 81       	ld	r31, Z
     680:	e0 2d       	mov	r30, r0
     682:	c7 01       	movw	r24, r14
     684:	09 95       	icall
     686:	d7 01       	movw	r26, r14
     688:	ed 91       	ld	r30, X+
     68a:	fc 91       	ld	r31, X
     68c:	61 2f       	mov	r22, r17
     68e:	61 60       	ori	r22, 0x01	; 1
     690:	04 80       	ldd	r0, Z+4	; 0x04
     692:	f5 81       	ldd	r31, Z+5	; 0x05
     694:	e0 2d       	mov	r30, r0
     696:	c7 01       	movw	r24, r14
     698:	09 95       	icall
     69a:	d7 01       	movw	r26, r14
     69c:	ed 91       	ld	r30, X+
     69e:	fc 91       	ld	r31, X
     6a0:	06 80       	ldd	r0, Z+6	; 0x06
     6a2:	f7 81       	ldd	r31, Z+7	; 0x07
     6a4:	e0 2d       	mov	r30, r0
     6a6:	60 e0       	ldi	r22, 0x00	; 0
     6a8:	c7 01       	movw	r24, r14
     6aa:	09 95       	icall
     6ac:	18 2f       	mov	r17, r24
     6ae:	d7 01       	movw	r26, r14
     6b0:	ed 91       	ld	r30, X+
     6b2:	fc 91       	ld	r31, X
     6b4:	02 80       	ldd	r0, Z+2	; 0x02
     6b6:	f3 81       	ldd	r31, Z+3	; 0x03
     6b8:	e0 2d       	mov	r30, r0
     6ba:	c7 01       	movw	r24, r14
     6bc:	09 95       	icall
     6be:	81 2f       	mov	r24, r17
     6c0:	0f 90       	pop	r0
     6c2:	df 91       	pop	r29
     6c4:	cf 91       	pop	r28
     6c6:	1f 91       	pop	r17
     6c8:	ff 90       	pop	r15
     6ca:	ef 90       	pop	r14
     6cc:	08 95       	ret

000006ce <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     6ce:	ef 92       	push	r14
     6d0:	ff 92       	push	r15
     6d2:	0f 93       	push	r16
     6d4:	1f 93       	push	r17
     6d6:	cf 93       	push	r28
     6d8:	df 93       	push	r29
     6da:	1f 92       	push	r1
     6dc:	cd b7       	in	r28, 0x3d	; 61
     6de:	de b7       	in	r29, 0x3e	; 62
     6e0:	7c 01       	movw	r14, r24
     6e2:	16 2f       	mov	r17, r22
     6e4:	dc 01       	movw	r26, r24
     6e6:	ed 91       	ld	r30, X+
     6e8:	fc 91       	ld	r31, X
     6ea:	01 90       	ld	r0, Z+
     6ec:	f0 81       	ld	r31, Z
     6ee:	e0 2d       	mov	r30, r0
     6f0:	49 83       	std	Y+1, r20	; 0x01
     6f2:	09 95       	icall
     6f4:	d7 01       	movw	r26, r14
     6f6:	ed 91       	ld	r30, X+
     6f8:	fc 91       	ld	r31, X
     6fa:	04 80       	ldd	r0, Z+4	; 0x04
     6fc:	f5 81       	ldd	r31, Z+5	; 0x05
     6fe:	e0 2d       	mov	r30, r0
     700:	61 2f       	mov	r22, r17
     702:	c7 01       	movw	r24, r14
     704:	09 95       	icall
     706:	d7 01       	movw	r26, r14
     708:	ed 91       	ld	r30, X+
     70a:	fc 91       	ld	r31, X
     70c:	04 80       	ldd	r0, Z+4	; 0x04
     70e:	f5 81       	ldd	r31, Z+5	; 0x05
     710:	e0 2d       	mov	r30, r0
     712:	49 81       	ldd	r20, Y+1	; 0x01
     714:	64 2f       	mov	r22, r20
     716:	c7 01       	movw	r24, r14
     718:	09 95       	icall
     71a:	d7 01       	movw	r26, r14
     71c:	ed 91       	ld	r30, X+
     71e:	fc 91       	ld	r31, X
     720:	01 90       	ld	r0, Z+
     722:	f0 81       	ld	r31, Z
     724:	e0 2d       	mov	r30, r0
     726:	c7 01       	movw	r24, r14
     728:	09 95       	icall
     72a:	d7 01       	movw	r26, r14
     72c:	ed 91       	ld	r30, X+
     72e:	fc 91       	ld	r31, X
     730:	61 2f       	mov	r22, r17
     732:	61 60       	ori	r22, 0x01	; 1
     734:	04 80       	ldd	r0, Z+4	; 0x04
     736:	f5 81       	ldd	r31, Z+5	; 0x05
     738:	e0 2d       	mov	r30, r0
     73a:	c7 01       	movw	r24, r14
     73c:	09 95       	icall
     73e:	d7 01       	movw	r26, r14
     740:	ed 91       	ld	r30, X+
     742:	fc 91       	ld	r31, X
     744:	06 80       	ldd	r0, Z+6	; 0x06
     746:	f7 81       	ldd	r31, Z+7	; 0x07
     748:	e0 2d       	mov	r30, r0
     74a:	61 e0       	ldi	r22, 0x01	; 1
     74c:	c7 01       	movw	r24, r14
     74e:	09 95       	icall
     750:	08 2f       	mov	r16, r24
     752:	10 e0       	ldi	r17, 0x00	; 0
     754:	10 2f       	mov	r17, r16
     756:	00 27       	eor	r16, r16
     758:	d7 01       	movw	r26, r14
     75a:	ed 91       	ld	r30, X+
     75c:	fc 91       	ld	r31, X
     75e:	06 80       	ldd	r0, Z+6	; 0x06
     760:	f7 81       	ldd	r31, Z+7	; 0x07
     762:	e0 2d       	mov	r30, r0
     764:	60 e0       	ldi	r22, 0x00	; 0
     766:	c7 01       	movw	r24, r14
     768:	09 95       	icall
     76a:	08 2b       	or	r16, r24
     76c:	d7 01       	movw	r26, r14
     76e:	ed 91       	ld	r30, X+
     770:	fc 91       	ld	r31, X
     772:	02 80       	ldd	r0, Z+2	; 0x02
     774:	f3 81       	ldd	r31, Z+3	; 0x03
     776:	e0 2d       	mov	r30, r0
     778:	c7 01       	movw	r24, r14
     77a:	09 95       	icall
     77c:	c8 01       	movw	r24, r16
     77e:	0f 90       	pop	r0
     780:	df 91       	pop	r29
     782:	cf 91       	pop	r28
     784:	1f 91       	pop	r17
     786:	0f 91       	pop	r16
     788:	ff 90       	pop	r15
     78a:	ef 90       	pop	r14
     78c:	08 95       	ret

0000078e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     78e:	cf 92       	push	r12
     790:	df 92       	push	r13
     792:	ef 92       	push	r14
     794:	ff 92       	push	r15
     796:	0f 93       	push	r16
     798:	1f 93       	push	r17
     79a:	cf 93       	push	r28
     79c:	df 93       	push	r29
     79e:	00 d0       	rcall	.+0      	; 0x7a0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     7a0:	1f 92       	push	r1
     7a2:	cd b7       	in	r28, 0x3d	; 61
     7a4:	de b7       	in	r29, 0x3e	; 62
     7a6:	6c 01       	movw	r12, r24
     7a8:	f6 2e       	mov	r15, r22
     7aa:	dc 01       	movw	r26, r24
     7ac:	ed 91       	ld	r30, X+
     7ae:	fc 91       	ld	r31, X
     7b0:	01 90       	ld	r0, Z+
     7b2:	f0 81       	ld	r31, Z
     7b4:	e0 2d       	mov	r30, r0
     7b6:	2a 83       	std	Y+2, r18	; 0x02
     7b8:	3b 83       	std	Y+3, r19	; 0x03
     7ba:	49 83       	std	Y+1, r20	; 0x01
     7bc:	09 95       	icall
     7be:	d6 01       	movw	r26, r12
     7c0:	ed 91       	ld	r30, X+
     7c2:	fc 91       	ld	r31, X
     7c4:	04 80       	ldd	r0, Z+4	; 0x04
     7c6:	f5 81       	ldd	r31, Z+5	; 0x05
     7c8:	e0 2d       	mov	r30, r0
     7ca:	6f 2d       	mov	r22, r15
     7cc:	c6 01       	movw	r24, r12
     7ce:	09 95       	icall
     7d0:	d6 01       	movw	r26, r12
     7d2:	ed 91       	ld	r30, X+
     7d4:	fc 91       	ld	r31, X
     7d6:	04 80       	ldd	r0, Z+4	; 0x04
     7d8:	f5 81       	ldd	r31, Z+5	; 0x05
     7da:	e0 2d       	mov	r30, r0
     7dc:	49 81       	ldd	r20, Y+1	; 0x01
     7de:	64 2f       	mov	r22, r20
     7e0:	c6 01       	movw	r24, r12
     7e2:	09 95       	icall
     7e4:	d6 01       	movw	r26, r12
     7e6:	ed 91       	ld	r30, X+
     7e8:	fc 91       	ld	r31, X
     7ea:	01 90       	ld	r0, Z+
     7ec:	f0 81       	ld	r31, Z
     7ee:	e0 2d       	mov	r30, r0
     7f0:	c6 01       	movw	r24, r12
     7f2:	09 95       	icall
     7f4:	d6 01       	movw	r26, r12
     7f6:	ed 91       	ld	r30, X+
     7f8:	fc 91       	ld	r31, X
     7fa:	6f 2d       	mov	r22, r15
     7fc:	61 60       	ori	r22, 0x01	; 1
     7fe:	04 80       	ldd	r0, Z+4	; 0x04
     800:	f5 81       	ldd	r31, Z+5	; 0x05
     802:	e0 2d       	mov	r30, r0
     804:	c6 01       	movw	r24, r12
     806:	09 95       	icall
     808:	2a 81       	ldd	r18, Y+2	; 0x02
     80a:	e2 2e       	mov	r14, r18
     80c:	3b 81       	ldd	r19, Y+3	; 0x03
     80e:	f3 2e       	mov	r15, r19
     810:	0e 0d       	add	r16, r14
     812:	1f 1d       	adc	r17, r15
     814:	d6 01       	movw	r26, r12
     816:	ed 91       	ld	r30, X+
     818:	fc 91       	ld	r31, X
     81a:	e0 16       	cp	r14, r16
     81c:	f1 06       	cpc	r15, r17
     81e:	51 f0       	breq	.+20     	; 0x834 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     820:	06 80       	ldd	r0, Z+6	; 0x06
     822:	f7 81       	ldd	r31, Z+7	; 0x07
     824:	e0 2d       	mov	r30, r0
     826:	61 e0       	ldi	r22, 0x01	; 1
     828:	c6 01       	movw	r24, r12
     82a:	09 95       	icall
     82c:	f7 01       	movw	r30, r14
     82e:	81 93       	st	Z+, r24
     830:	7f 01       	movw	r14, r30
     832:	f0 cf       	rjmp	.-32     	; 0x814 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     834:	02 80       	ldd	r0, Z+2	; 0x02
     836:	f3 81       	ldd	r31, Z+3	; 0x03
     838:	e0 2d       	mov	r30, r0
     83a:	c6 01       	movw	r24, r12
     83c:	0f 90       	pop	r0
     83e:	0f 90       	pop	r0
     840:	0f 90       	pop	r0
     842:	df 91       	pop	r29
     844:	cf 91       	pop	r28
     846:	1f 91       	pop	r17
     848:	0f 91       	pop	r16
     84a:	ff 90       	pop	r15
     84c:	ef 90       	pop	r14
     84e:	df 90       	pop	r13
     850:	cf 90       	pop	r12
     852:	09 94       	ijmp

00000854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     854:	88 23       	and	r24, r24
     856:	21 f0       	breq	.+8      	; 0x860 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     858:	bf 98       	cbi	0x17, 7	; 23
     85a:	82 30       	cpi	r24, 0x02	; 2
     85c:	19 f0       	breq	.+6      	; 0x864 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     85e:	08 95       	ret
     860:	bf 9a       	sbi	0x17, 7	; 23
     862:	08 95       	ret
     864:	c7 9a       	sbi	0x18, 7	; 24
     866:	08 95       	ret

00000868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     868:	00 00       	nop
     86a:	00 00       	nop
     86c:	08 95       	ret

0000086e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     86e:	1f 93       	push	r17
     870:	cf 93       	push	r28
     872:	df 93       	push	r29
     874:	16 2f       	mov	r17, r22
     876:	bd 98       	cbi	0x17, 5	; 23
     878:	80 e0       	ldi	r24, 0x00	; 0
     87a:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     87e:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     882:	d8 e0       	ldi	r29, 0x08	; 8
     884:	c0 e0       	ldi	r28, 0x00	; 0
     886:	cc 0f       	add	r28, r28
     888:	81 e0       	ldi	r24, 0x01	; 1
     88a:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     88e:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     892:	b5 99       	sbic	0x16, 5	; 22
     894:	c1 60       	ori	r28, 0x01	; 1
     896:	80 e0       	ldi	r24, 0x00	; 0
     898:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     89c:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     8a0:	d1 50       	subi	r29, 0x01	; 1
     8a2:	89 f7       	brne	.-30     	; 0x886 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
     8a4:	11 23       	and	r17, r17
     8a6:	11 f0       	breq	.+4      	; 0x8ac <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
     8a8:	bd 9a       	sbi	0x17, 5	; 23
     8aa:	01 c0       	rjmp	.+2      	; 0x8ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
     8ac:	bd 98       	cbi	0x17, 5	; 23
     8ae:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     8b2:	81 e0       	ldi	r24, 0x01	; 1
     8b4:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     8b8:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     8bc:	80 e0       	ldi	r24, 0x00	; 0
     8be:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     8c2:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     8c6:	bd 98       	cbi	0x17, 5	; 23
     8c8:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     8cc:	8c 2f       	mov	r24, r28
     8ce:	df 91       	pop	r29
     8d0:	cf 91       	pop	r28
     8d2:	1f 91       	pop	r17
     8d4:	08 95       	ret

000008d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
     8d6:	cf 93       	push	r28
     8d8:	df 93       	push	r29
     8da:	d6 2f       	mov	r29, r22
     8dc:	c8 e0       	ldi	r28, 0x08	; 8
     8de:	80 e0       	ldi	r24, 0x00	; 0
     8e0:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     8e4:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     8e8:	d7 ff       	sbrs	r29, 7
     8ea:	02 c0       	rjmp	.+4      	; 0x8f0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
     8ec:	bd 98       	cbi	0x17, 5	; 23
     8ee:	01 c0       	rjmp	.+2      	; 0x8f2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
     8f0:	bd 9a       	sbi	0x17, 5	; 23
     8f2:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     8f6:	81 e0       	ldi	r24, 0x01	; 1
     8f8:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     8fc:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     900:	dd 0f       	add	r29, r29
     902:	c1 50       	subi	r28, 0x01	; 1
     904:	61 f7       	brne	.-40     	; 0x8de <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
     906:	80 e0       	ldi	r24, 0x00	; 0
     908:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     90c:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     910:	bd 98       	cbi	0x17, 5	; 23
     912:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     916:	81 e0       	ldi	r24, 0x01	; 1
     918:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     91c:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     920:	c6 b3       	in	r28, 0x16	; 22
     922:	80 e0       	ldi	r24, 0x00	; 0
     924:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     928:	0e 94 34 04 	call	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     92c:	c5 fb       	bst	r28, 5
     92e:	cc 27       	eor	r28, r28
     930:	c0 f9       	bld	r28, 0
     932:	81 e0       	ldi	r24, 0x01	; 1
     934:	8c 27       	eor	r24, r28
     936:	df 91       	pop	r29
     938:	cf 91       	pop	r28
     93a:	08 95       	ret

0000093c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
     93c:	81 e0       	ldi	r24, 0x01	; 1
     93e:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     942:	bd 98       	cbi	0x17, 5	; 23
     944:	81 e0       	ldi	r24, 0x01	; 1
     946:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     94a:	bd 9a       	sbi	0x17, 5	; 23
     94c:	80 e0       	ldi	r24, 0x00	; 0
     94e:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     952:	bd 98       	cbi	0x17, 5	; 23
     954:	0c 94 34 04 	jmp	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000958 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
     958:	80 e0       	ldi	r24, 0x00	; 0
     95a:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     95e:	bd 9a       	sbi	0x17, 5	; 23
     960:	81 e0       	ldi	r24, 0x01	; 1
     962:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     966:	bd 9a       	sbi	0x17, 5	; 23
     968:	81 e0       	ldi	r24, 0x01	; 1
     96a:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     96e:	bd 98       	cbi	0x17, 5	; 23
     970:	0c 94 34 04 	jmp	0x868	; 0x868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000974 <_GLOBAL__sub_I_i2c>:
     974:	84 e9       	ldi	r24, 0x94	; 148
     976:	90 e0       	ldi	r25, 0x00	; 0
     978:	90 93 07 01 	sts	0x0107, r25
     97c:	80 93 06 01 	sts	0x0106, r24
     980:	bd 98       	cbi	0x17, 5	; 23
     982:	81 e0       	ldi	r24, 0x01	; 1
     984:	0e 94 2a 04 	call	0x854	; 0x854 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     988:	c5 98       	cbi	0x18, 5	; 24
     98a:	c7 98       	cbi	0x18, 7	; 24
     98c:	08 95       	ret

0000098e <_ZN8CVL53L0XC1Ev>:
     98e:	08 95       	ret

00000990 <_ZN8CVL53L0XD1Ev>:
     990:	08 95       	ret

00000992 <_ZN8CVL53L0X4readEv>:
     992:	0f 93       	push	r16
     994:	1f 93       	push	r17
     996:	cf 93       	push	r28
     998:	df 93       	push	r29
     99a:	ec 01       	movw	r28, r24
     99c:	88 89       	ldd	r24, Y+16	; 0x10
     99e:	99 89       	ldd	r25, Y+17	; 0x11
     9a0:	dc 01       	movw	r26, r24
     9a2:	ed 91       	ld	r30, X+
     9a4:	fc 91       	ld	r31, X
     9a6:	00 84       	ldd	r0, Z+8	; 0x08
     9a8:	f1 85       	ldd	r31, Z+9	; 0x09
     9aa:	e0 2d       	mov	r30, r0
     9ac:	21 e0       	ldi	r18, 0x01	; 1
     9ae:	4b e0       	ldi	r20, 0x0B	; 11
     9b0:	62 e5       	ldi	r22, 0x52	; 82
     9b2:	09 95       	icall
     9b4:	88 89       	ldd	r24, Y+16	; 0x10
     9b6:	99 89       	ldd	r25, Y+17	; 0x11
     9b8:	dc 01       	movw	r26, r24
     9ba:	ed 91       	ld	r30, X+
     9bc:	fc 91       	ld	r31, X
     9be:	9e 01       	movw	r18, r28
     9c0:	2e 5f       	subi	r18, 0xFE	; 254
     9c2:	3f 4f       	sbci	r19, 0xFF	; 255
     9c4:	02 88       	ldd	r0, Z+18	; 0x12
     9c6:	f3 89       	ldd	r31, Z+19	; 0x13
     9c8:	e0 2d       	mov	r30, r0
     9ca:	0e e0       	ldi	r16, 0x0E	; 14
     9cc:	10 e0       	ldi	r17, 0x00	; 0
     9ce:	44 e1       	ldi	r20, 0x14	; 20
     9d0:	62 e5       	ldi	r22, 0x52	; 82
     9d2:	09 95       	icall
     9d4:	2c 85       	ldd	r18, Y+12	; 0x0c
     9d6:	30 e0       	ldi	r19, 0x00	; 0
     9d8:	32 2f       	mov	r19, r18
     9da:	22 27       	eor	r18, r18
     9dc:	8d 85       	ldd	r24, Y+13	; 0x0d
     9de:	28 2b       	or	r18, r24
     9e0:	c9 01       	movw	r24, r18
     9e2:	06 97       	sbiw	r24, 0x06	; 6
     9e4:	8a 3f       	cpi	r24, 0xFA	; 250
     9e6:	93 40       	sbci	r25, 0x03	; 3
     9e8:	80 f4       	brcc	.+32     	; 0xa0a <_ZN8CVL53L0X4readEv+0x78>
     9ea:	88 81       	ld	r24, Y
     9ec:	99 81       	ldd	r25, Y+1	; 0x01
     9ee:	43 e0       	ldi	r20, 0x03	; 3
     9f0:	88 0f       	add	r24, r24
     9f2:	99 1f       	adc	r25, r25
     9f4:	4a 95       	dec	r20
     9f6:	e1 f7       	brne	.-8      	; 0x9f0 <_ZN8CVL53L0X4readEv+0x5e>
     9f8:	82 0f       	add	r24, r18
     9fa:	93 1f       	adc	r25, r19
     9fc:	69 e0       	ldi	r22, 0x09	; 9
     9fe:	70 e0       	ldi	r23, 0x00	; 0
     a00:	0e 94 91 0a 	call	0x1522	; 0x1522 <__divmodhi4>
     a04:	79 83       	std	Y+1, r23	; 0x01
     a06:	68 83       	st	Y, r22
     a08:	04 c0       	rjmp	.+8      	; 0xa12 <_ZN8CVL53L0X4readEv+0x80>
     a0a:	80 e0       	ldi	r24, 0x00	; 0
     a0c:	94 e0       	ldi	r25, 0x04	; 4
     a0e:	99 83       	std	Y+1, r25	; 0x01
     a10:	88 83       	st	Y, r24
     a12:	88 81       	ld	r24, Y
     a14:	99 81       	ldd	r25, Y+1	; 0x01
     a16:	df 91       	pop	r29
     a18:	cf 91       	pop	r28
     a1a:	1f 91       	pop	r17
     a1c:	0f 91       	pop	r16
     a1e:	08 95       	ret

00000a20 <_ZN8CVL53L0X11getSPADinfoEPhPb>:
     a20:	af 92       	push	r10
     a22:	bf 92       	push	r11
     a24:	cf 92       	push	r12
     a26:	df 92       	push	r13
     a28:	ef 92       	push	r14
     a2a:	ff 92       	push	r15
     a2c:	0f 93       	push	r16
     a2e:	1f 93       	push	r17
     a30:	cf 93       	push	r28
     a32:	df 93       	push	r29
     a34:	ec 01       	movw	r28, r24
     a36:	8b 01       	movw	r16, r22
     a38:	5a 01       	movw	r10, r20
     a3a:	db 01       	movw	r26, r22
     a3c:	1c 92       	st	X, r1
     a3e:	88 89       	ldd	r24, Y+16	; 0x10
     a40:	99 89       	ldd	r25, Y+17	; 0x11
     a42:	dc 01       	movw	r26, r24
     a44:	ed 91       	ld	r30, X+
     a46:	fc 91       	ld	r31, X
     a48:	00 84       	ldd	r0, Z+8	; 0x08
     a4a:	f1 85       	ldd	r31, Z+9	; 0x09
     a4c:	e0 2d       	mov	r30, r0
     a4e:	21 e0       	ldi	r18, 0x01	; 1
     a50:	40 e8       	ldi	r20, 0x80	; 128
     a52:	62 e5       	ldi	r22, 0x52	; 82
     a54:	09 95       	icall
     a56:	88 89       	ldd	r24, Y+16	; 0x10
     a58:	99 89       	ldd	r25, Y+17	; 0x11
     a5a:	dc 01       	movw	r26, r24
     a5c:	ed 91       	ld	r30, X+
     a5e:	fc 91       	ld	r31, X
     a60:	00 84       	ldd	r0, Z+8	; 0x08
     a62:	f1 85       	ldd	r31, Z+9	; 0x09
     a64:	e0 2d       	mov	r30, r0
     a66:	21 e0       	ldi	r18, 0x01	; 1
     a68:	4f ef       	ldi	r20, 0xFF	; 255
     a6a:	62 e5       	ldi	r22, 0x52	; 82
     a6c:	09 95       	icall
     a6e:	88 89       	ldd	r24, Y+16	; 0x10
     a70:	99 89       	ldd	r25, Y+17	; 0x11
     a72:	dc 01       	movw	r26, r24
     a74:	ed 91       	ld	r30, X+
     a76:	fc 91       	ld	r31, X
     a78:	00 84       	ldd	r0, Z+8	; 0x08
     a7a:	f1 85       	ldd	r31, Z+9	; 0x09
     a7c:	e0 2d       	mov	r30, r0
     a7e:	20 e0       	ldi	r18, 0x00	; 0
     a80:	40 e0       	ldi	r20, 0x00	; 0
     a82:	62 e5       	ldi	r22, 0x52	; 82
     a84:	09 95       	icall
     a86:	88 89       	ldd	r24, Y+16	; 0x10
     a88:	99 89       	ldd	r25, Y+17	; 0x11
     a8a:	dc 01       	movw	r26, r24
     a8c:	ed 91       	ld	r30, X+
     a8e:	fc 91       	ld	r31, X
     a90:	00 84       	ldd	r0, Z+8	; 0x08
     a92:	f1 85       	ldd	r31, Z+9	; 0x09
     a94:	e0 2d       	mov	r30, r0
     a96:	26 e0       	ldi	r18, 0x06	; 6
     a98:	4f ef       	ldi	r20, 0xFF	; 255
     a9a:	62 e5       	ldi	r22, 0x52	; 82
     a9c:	09 95       	icall
     a9e:	88 89       	ldd	r24, Y+16	; 0x10
     aa0:	99 89       	ldd	r25, Y+17	; 0x11
     aa2:	fc 01       	movw	r30, r24
     aa4:	a0 81       	ld	r26, Z
     aa6:	b1 81       	ldd	r27, Z+1	; 0x01
     aa8:	18 96       	adiw	r26, 0x08	; 8
     aaa:	ed 90       	ld	r14, X+
     aac:	fc 90       	ld	r15, X
     aae:	19 97       	sbiw	r26, 0x09	; 9
     ab0:	1e 96       	adiw	r26, 0x0e	; 14
     ab2:	ed 91       	ld	r30, X+
     ab4:	fc 91       	ld	r31, X
     ab6:	1f 97       	sbiw	r26, 0x0f	; 15
     ab8:	43 e8       	ldi	r20, 0x83	; 131
     aba:	62 e5       	ldi	r22, 0x52	; 82
     abc:	09 95       	icall
     abe:	28 2f       	mov	r18, r24
     ac0:	24 60       	ori	r18, 0x04	; 4
     ac2:	43 e8       	ldi	r20, 0x83	; 131
     ac4:	62 e5       	ldi	r22, 0x52	; 82
     ac6:	88 89       	ldd	r24, Y+16	; 0x10
     ac8:	99 89       	ldd	r25, Y+17	; 0x11
     aca:	f7 01       	movw	r30, r14
     acc:	09 95       	icall
     ace:	88 89       	ldd	r24, Y+16	; 0x10
     ad0:	99 89       	ldd	r25, Y+17	; 0x11
     ad2:	dc 01       	movw	r26, r24
     ad4:	ed 91       	ld	r30, X+
     ad6:	fc 91       	ld	r31, X
     ad8:	00 84       	ldd	r0, Z+8	; 0x08
     ada:	f1 85       	ldd	r31, Z+9	; 0x09
     adc:	e0 2d       	mov	r30, r0
     ade:	27 e0       	ldi	r18, 0x07	; 7
     ae0:	4f ef       	ldi	r20, 0xFF	; 255
     ae2:	62 e5       	ldi	r22, 0x52	; 82
     ae4:	09 95       	icall
     ae6:	88 89       	ldd	r24, Y+16	; 0x10
     ae8:	99 89       	ldd	r25, Y+17	; 0x11
     aea:	dc 01       	movw	r26, r24
     aec:	ed 91       	ld	r30, X+
     aee:	fc 91       	ld	r31, X
     af0:	00 84       	ldd	r0, Z+8	; 0x08
     af2:	f1 85       	ldd	r31, Z+9	; 0x09
     af4:	e0 2d       	mov	r30, r0
     af6:	21 e0       	ldi	r18, 0x01	; 1
     af8:	41 e8       	ldi	r20, 0x81	; 129
     afa:	62 e5       	ldi	r22, 0x52	; 82
     afc:	09 95       	icall
     afe:	88 89       	ldd	r24, Y+16	; 0x10
     b00:	99 89       	ldd	r25, Y+17	; 0x11
     b02:	dc 01       	movw	r26, r24
     b04:	ed 91       	ld	r30, X+
     b06:	fc 91       	ld	r31, X
     b08:	00 84       	ldd	r0, Z+8	; 0x08
     b0a:	f1 85       	ldd	r31, Z+9	; 0x09
     b0c:	e0 2d       	mov	r30, r0
     b0e:	21 e0       	ldi	r18, 0x01	; 1
     b10:	40 e8       	ldi	r20, 0x80	; 128
     b12:	62 e5       	ldi	r22, 0x52	; 82
     b14:	09 95       	icall
     b16:	88 89       	ldd	r24, Y+16	; 0x10
     b18:	99 89       	ldd	r25, Y+17	; 0x11
     b1a:	dc 01       	movw	r26, r24
     b1c:	ed 91       	ld	r30, X+
     b1e:	fc 91       	ld	r31, X
     b20:	00 84       	ldd	r0, Z+8	; 0x08
     b22:	f1 85       	ldd	r31, Z+9	; 0x09
     b24:	e0 2d       	mov	r30, r0
     b26:	2b e6       	ldi	r18, 0x6B	; 107
     b28:	44 e9       	ldi	r20, 0x94	; 148
     b2a:	62 e5       	ldi	r22, 0x52	; 82
     b2c:	09 95       	icall
     b2e:	88 89       	ldd	r24, Y+16	; 0x10
     b30:	99 89       	ldd	r25, Y+17	; 0x11
     b32:	dc 01       	movw	r26, r24
     b34:	ed 91       	ld	r30, X+
     b36:	fc 91       	ld	r31, X
     b38:	00 84       	ldd	r0, Z+8	; 0x08
     b3a:	f1 85       	ldd	r31, Z+9	; 0x09
     b3c:	e0 2d       	mov	r30, r0
     b3e:	20 e0       	ldi	r18, 0x00	; 0
     b40:	43 e8       	ldi	r20, 0x83	; 131
     b42:	62 e5       	ldi	r22, 0x52	; 82
     b44:	09 95       	icall
     b46:	81 e4       	ldi	r24, 0x41	; 65
     b48:	c8 2e       	mov	r12, r24
     b4a:	82 e4       	ldi	r24, 0x42	; 66
     b4c:	d8 2e       	mov	r13, r24
     b4e:	8f e0       	ldi	r24, 0x0F	; 15
     b50:	e8 2e       	mov	r14, r24
     b52:	f1 2c       	mov	r15, r1
     b54:	88 89       	ldd	r24, Y+16	; 0x10
     b56:	99 89       	ldd	r25, Y+17	; 0x11
     b58:	dc 01       	movw	r26, r24
     b5a:	ed 91       	ld	r30, X+
     b5c:	fc 91       	ld	r31, X
     b5e:	06 84       	ldd	r0, Z+14	; 0x0e
     b60:	f7 85       	ldd	r31, Z+15	; 0x0f
     b62:	e0 2d       	mov	r30, r0
     b64:	43 e8       	ldi	r20, 0x83	; 131
     b66:	62 e5       	ldi	r22, 0x52	; 82
     b68:	09 95       	icall
     b6a:	81 11       	cpse	r24, r1
     b6c:	08 c0       	rjmp	.+16     	; 0xb7e <_ZN8CVL53L0X11getSPADinfoEPhPb+0x15e>
     b6e:	b1 e0       	ldi	r27, 0x01	; 1
     b70:	cb 1a       	sub	r12, r27
     b72:	d1 08       	sbc	r13, r1
     b74:	e1 08       	sbc	r14, r1
     b76:	f1 08       	sbc	r15, r1
     b78:	69 f7       	brne	.-38     	; 0xb54 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x134>
     b7a:	80 e0       	ldi	r24, 0x00	; 0
     b7c:	81 c0       	rjmp	.+258    	; 0xc80 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x260>
     b7e:	88 89       	ldd	r24, Y+16	; 0x10
     b80:	99 89       	ldd	r25, Y+17	; 0x11
     b82:	dc 01       	movw	r26, r24
     b84:	ed 91       	ld	r30, X+
     b86:	fc 91       	ld	r31, X
     b88:	00 84       	ldd	r0, Z+8	; 0x08
     b8a:	f1 85       	ldd	r31, Z+9	; 0x09
     b8c:	e0 2d       	mov	r30, r0
     b8e:	21 e0       	ldi	r18, 0x01	; 1
     b90:	43 e8       	ldi	r20, 0x83	; 131
     b92:	62 e5       	ldi	r22, 0x52	; 82
     b94:	09 95       	icall
     b96:	88 89       	ldd	r24, Y+16	; 0x10
     b98:	99 89       	ldd	r25, Y+17	; 0x11
     b9a:	dc 01       	movw	r26, r24
     b9c:	ed 91       	ld	r30, X+
     b9e:	fc 91       	ld	r31, X
     ba0:	06 84       	ldd	r0, Z+14	; 0x0e
     ba2:	f7 85       	ldd	r31, Z+15	; 0x0f
     ba4:	e0 2d       	mov	r30, r0
     ba6:	42 e9       	ldi	r20, 0x92	; 146
     ba8:	62 e5       	ldi	r22, 0x52	; 82
     baa:	09 95       	icall
     bac:	98 2f       	mov	r25, r24
     bae:	9f 77       	andi	r25, 0x7F	; 127
     bb0:	f8 01       	movw	r30, r16
     bb2:	90 83       	st	Z, r25
     bb4:	98 2f       	mov	r25, r24
     bb6:	99 1f       	adc	r25, r25
     bb8:	99 27       	eor	r25, r25
     bba:	99 1f       	adc	r25, r25
     bbc:	d5 01       	movw	r26, r10
     bbe:	9c 93       	st	X, r25
     bc0:	88 89       	ldd	r24, Y+16	; 0x10
     bc2:	99 89       	ldd	r25, Y+17	; 0x11
     bc4:	dc 01       	movw	r26, r24
     bc6:	ed 91       	ld	r30, X+
     bc8:	fc 91       	ld	r31, X
     bca:	00 84       	ldd	r0, Z+8	; 0x08
     bcc:	f1 85       	ldd	r31, Z+9	; 0x09
     bce:	e0 2d       	mov	r30, r0
     bd0:	20 e0       	ldi	r18, 0x00	; 0
     bd2:	41 e8       	ldi	r20, 0x81	; 129
     bd4:	62 e5       	ldi	r22, 0x52	; 82
     bd6:	09 95       	icall
     bd8:	88 89       	ldd	r24, Y+16	; 0x10
     bda:	99 89       	ldd	r25, Y+17	; 0x11
     bdc:	dc 01       	movw	r26, r24
     bde:	ed 91       	ld	r30, X+
     be0:	fc 91       	ld	r31, X
     be2:	00 84       	ldd	r0, Z+8	; 0x08
     be4:	f1 85       	ldd	r31, Z+9	; 0x09
     be6:	e0 2d       	mov	r30, r0
     be8:	26 e0       	ldi	r18, 0x06	; 6
     bea:	4f ef       	ldi	r20, 0xFF	; 255
     bec:	62 e5       	ldi	r22, 0x52	; 82
     bee:	09 95       	icall
     bf0:	88 89       	ldd	r24, Y+16	; 0x10
     bf2:	99 89       	ldd	r25, Y+17	; 0x11
     bf4:	fc 01       	movw	r30, r24
     bf6:	a0 81       	ld	r26, Z
     bf8:	b1 81       	ldd	r27, Z+1	; 0x01
     bfa:	18 96       	adiw	r26, 0x08	; 8
     bfc:	0d 91       	ld	r16, X+
     bfe:	1c 91       	ld	r17, X
     c00:	19 97       	sbiw	r26, 0x09	; 9
     c02:	1e 96       	adiw	r26, 0x0e	; 14
     c04:	ed 91       	ld	r30, X+
     c06:	fc 91       	ld	r31, X
     c08:	1f 97       	sbiw	r26, 0x0f	; 15
     c0a:	43 e8       	ldi	r20, 0x83	; 131
     c0c:	62 e5       	ldi	r22, 0x52	; 82
     c0e:	09 95       	icall
     c10:	28 2f       	mov	r18, r24
     c12:	43 e8       	ldi	r20, 0x83	; 131
     c14:	62 e5       	ldi	r22, 0x52	; 82
     c16:	88 89       	ldd	r24, Y+16	; 0x10
     c18:	99 89       	ldd	r25, Y+17	; 0x11
     c1a:	f8 01       	movw	r30, r16
     c1c:	09 95       	icall
     c1e:	88 89       	ldd	r24, Y+16	; 0x10
     c20:	99 89       	ldd	r25, Y+17	; 0x11
     c22:	dc 01       	movw	r26, r24
     c24:	ed 91       	ld	r30, X+
     c26:	fc 91       	ld	r31, X
     c28:	00 84       	ldd	r0, Z+8	; 0x08
     c2a:	f1 85       	ldd	r31, Z+9	; 0x09
     c2c:	e0 2d       	mov	r30, r0
     c2e:	21 e0       	ldi	r18, 0x01	; 1
     c30:	4f ef       	ldi	r20, 0xFF	; 255
     c32:	62 e5       	ldi	r22, 0x52	; 82
     c34:	09 95       	icall
     c36:	88 89       	ldd	r24, Y+16	; 0x10
     c38:	99 89       	ldd	r25, Y+17	; 0x11
     c3a:	dc 01       	movw	r26, r24
     c3c:	ed 91       	ld	r30, X+
     c3e:	fc 91       	ld	r31, X
     c40:	00 84       	ldd	r0, Z+8	; 0x08
     c42:	f1 85       	ldd	r31, Z+9	; 0x09
     c44:	e0 2d       	mov	r30, r0
     c46:	21 e0       	ldi	r18, 0x01	; 1
     c48:	40 e0       	ldi	r20, 0x00	; 0
     c4a:	62 e5       	ldi	r22, 0x52	; 82
     c4c:	09 95       	icall
     c4e:	88 89       	ldd	r24, Y+16	; 0x10
     c50:	99 89       	ldd	r25, Y+17	; 0x11
     c52:	dc 01       	movw	r26, r24
     c54:	ed 91       	ld	r30, X+
     c56:	fc 91       	ld	r31, X
     c58:	00 84       	ldd	r0, Z+8	; 0x08
     c5a:	f1 85       	ldd	r31, Z+9	; 0x09
     c5c:	e0 2d       	mov	r30, r0
     c5e:	20 e0       	ldi	r18, 0x00	; 0
     c60:	4f ef       	ldi	r20, 0xFF	; 255
     c62:	62 e5       	ldi	r22, 0x52	; 82
     c64:	09 95       	icall
     c66:	88 89       	ldd	r24, Y+16	; 0x10
     c68:	99 89       	ldd	r25, Y+17	; 0x11
     c6a:	dc 01       	movw	r26, r24
     c6c:	ed 91       	ld	r30, X+
     c6e:	fc 91       	ld	r31, X
     c70:	00 84       	ldd	r0, Z+8	; 0x08
     c72:	f1 85       	ldd	r31, Z+9	; 0x09
     c74:	e0 2d       	mov	r30, r0
     c76:	20 e0       	ldi	r18, 0x00	; 0
     c78:	40 e8       	ldi	r20, 0x80	; 128
     c7a:	62 e5       	ldi	r22, 0x52	; 82
     c7c:	09 95       	icall
     c7e:	81 e0       	ldi	r24, 0x01	; 1
     c80:	df 91       	pop	r29
     c82:	cf 91       	pop	r28
     c84:	1f 91       	pop	r17
     c86:	0f 91       	pop	r16
     c88:	ff 90       	pop	r15
     c8a:	ef 90       	pop	r14
     c8c:	df 90       	pop	r13
     c8e:	cf 90       	pop	r12
     c90:	bf 90       	pop	r11
     c92:	af 90       	pop	r10
     c94:	08 95       	ret

00000c96 <_ZN8CVL53L0X4initEP14CI2C_Interface>:
     c96:	ef 92       	push	r14
     c98:	ff 92       	push	r15
     c9a:	0f 93       	push	r16
     c9c:	1f 93       	push	r17
     c9e:	cf 93       	push	r28
     ca0:	df 93       	push	r29
     ca2:	cd b7       	in	r28, 0x3d	; 61
     ca4:	de b7       	in	r29, 0x3e	; 62
     ca6:	28 97       	sbiw	r28, 0x08	; 8
     ca8:	0f b6       	in	r0, 0x3f	; 63
     caa:	f8 94       	cli
     cac:	de bf       	out	0x3e, r29	; 62
     cae:	0f be       	out	0x3f, r0	; 63
     cb0:	cd bf       	out	0x3d, r28	; 61
     cb2:	7c 01       	movw	r14, r24
     cb4:	cb 01       	movw	r24, r22
     cb6:	d7 01       	movw	r26, r14
     cb8:	51 96       	adiw	r26, 0x11	; 17
     cba:	7c 93       	st	X, r23
     cbc:	6e 93       	st	-X, r22
     cbe:	50 97       	sbiw	r26, 0x10	; 16
     cc0:	20 e0       	ldi	r18, 0x00	; 0
     cc2:	30 e2       	ldi	r19, 0x20	; 32
     cc4:	2d 93       	st	X+, r18
     cc6:	3c 93       	st	X, r19
     cc8:	fb 01       	movw	r30, r22
     cca:	a0 81       	ld	r26, Z
     ccc:	b1 81       	ldd	r27, Z+1	; 0x01
     cce:	18 96       	adiw	r26, 0x08	; 8
     cd0:	0d 91       	ld	r16, X+
     cd2:	1c 91       	ld	r17, X
     cd4:	19 97       	sbiw	r26, 0x09	; 9
     cd6:	1e 96       	adiw	r26, 0x0e	; 14
     cd8:	ed 91       	ld	r30, X+
     cda:	fc 91       	ld	r31, X
     cdc:	1f 97       	sbiw	r26, 0x0f	; 15
     cde:	49 e8       	ldi	r20, 0x89	; 137
     ce0:	62 e5       	ldi	r22, 0x52	; 82
     ce2:	09 95       	icall
     ce4:	28 2f       	mov	r18, r24
     ce6:	21 60       	ori	r18, 0x01	; 1
     ce8:	49 e8       	ldi	r20, 0x89	; 137
     cea:	62 e5       	ldi	r22, 0x52	; 82
     cec:	d7 01       	movw	r26, r14
     cee:	50 96       	adiw	r26, 0x10	; 16
     cf0:	8d 91       	ld	r24, X+
     cf2:	9c 91       	ld	r25, X
     cf4:	51 97       	sbiw	r26, 0x11	; 17
     cf6:	f8 01       	movw	r30, r16
     cf8:	09 95       	icall
     cfa:	d7 01       	movw	r26, r14
     cfc:	50 96       	adiw	r26, 0x10	; 16
     cfe:	8d 91       	ld	r24, X+
     d00:	9c 91       	ld	r25, X
     d02:	51 97       	sbiw	r26, 0x11	; 17
     d04:	dc 01       	movw	r26, r24
     d06:	ed 91       	ld	r30, X+
     d08:	fc 91       	ld	r31, X
     d0a:	06 84       	ldd	r0, Z+14	; 0x0e
     d0c:	f7 85       	ldd	r31, Z+15	; 0x0f
     d0e:	e0 2d       	mov	r30, r0
     d10:	40 ec       	ldi	r20, 0xC0	; 192
     d12:	62 e5       	ldi	r22, 0x52	; 82
     d14:	09 95       	icall
     d16:	8e 3e       	cpi	r24, 0xEE	; 238
     d18:	09 f0       	breq	.+2      	; 0xd1c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x86>
     d1a:	61 c1       	rjmp	.+706    	; 0xfde <_ZN8CVL53L0X4initEP14CI2C_Interface+0x348>
     d1c:	f7 01       	movw	r30, r14
     d1e:	80 89       	ldd	r24, Z+16	; 0x10
     d20:	91 89       	ldd	r25, Z+17	; 0x11
     d22:	dc 01       	movw	r26, r24
     d24:	ed 91       	ld	r30, X+
     d26:	fc 91       	ld	r31, X
     d28:	00 84       	ldd	r0, Z+8	; 0x08
     d2a:	f1 85       	ldd	r31, Z+9	; 0x09
     d2c:	e0 2d       	mov	r30, r0
     d2e:	21 e0       	ldi	r18, 0x01	; 1
     d30:	4f eb       	ldi	r20, 0xBF	; 191
     d32:	62 e5       	ldi	r22, 0x52	; 82
     d34:	09 95       	icall
     d36:	81 ea       	ldi	r24, 0xA1	; 161
     d38:	96 e8       	ldi	r25, 0x86	; 134
     d3a:	a1 e0       	ldi	r26, 0x01	; 1
     d3c:	b0 e0       	ldi	r27, 0x00	; 0
     d3e:	01 97       	sbiw	r24, 0x01	; 1
     d40:	a1 09       	sbc	r26, r1
     d42:	b1 09       	sbc	r27, r1
     d44:	11 f0       	breq	.+4      	; 0xd4a <_ZN8CVL53L0X4initEP14CI2C_Interface+0xb4>
     d46:	00 00       	nop
     d48:	fa cf       	rjmp	.-12     	; 0xd3e <_ZN8CVL53L0X4initEP14CI2C_Interface+0xa8>
     d4a:	f7 01       	movw	r30, r14
     d4c:	80 89       	ldd	r24, Z+16	; 0x10
     d4e:	91 89       	ldd	r25, Z+17	; 0x11
     d50:	dc 01       	movw	r26, r24
     d52:	ed 91       	ld	r30, X+
     d54:	fc 91       	ld	r31, X
     d56:	00 84       	ldd	r0, Z+8	; 0x08
     d58:	f1 85       	ldd	r31, Z+9	; 0x09
     d5a:	e0 2d       	mov	r30, r0
     d5c:	20 e0       	ldi	r18, 0x00	; 0
     d5e:	48 e8       	ldi	r20, 0x88	; 136
     d60:	62 e5       	ldi	r22, 0x52	; 82
     d62:	09 95       	icall
     d64:	f7 01       	movw	r30, r14
     d66:	80 89       	ldd	r24, Z+16	; 0x10
     d68:	91 89       	ldd	r25, Z+17	; 0x11
     d6a:	dc 01       	movw	r26, r24
     d6c:	ed 91       	ld	r30, X+
     d6e:	fc 91       	ld	r31, X
     d70:	00 84       	ldd	r0, Z+8	; 0x08
     d72:	f1 85       	ldd	r31, Z+9	; 0x09
     d74:	e0 2d       	mov	r30, r0
     d76:	21 e0       	ldi	r18, 0x01	; 1
     d78:	40 e8       	ldi	r20, 0x80	; 128
     d7a:	62 e5       	ldi	r22, 0x52	; 82
     d7c:	09 95       	icall
     d7e:	f7 01       	movw	r30, r14
     d80:	80 89       	ldd	r24, Z+16	; 0x10
     d82:	91 89       	ldd	r25, Z+17	; 0x11
     d84:	dc 01       	movw	r26, r24
     d86:	ed 91       	ld	r30, X+
     d88:	fc 91       	ld	r31, X
     d8a:	00 84       	ldd	r0, Z+8	; 0x08
     d8c:	f1 85       	ldd	r31, Z+9	; 0x09
     d8e:	e0 2d       	mov	r30, r0
     d90:	21 e0       	ldi	r18, 0x01	; 1
     d92:	4f ef       	ldi	r20, 0xFF	; 255
     d94:	62 e5       	ldi	r22, 0x52	; 82
     d96:	09 95       	icall
     d98:	f7 01       	movw	r30, r14
     d9a:	80 89       	ldd	r24, Z+16	; 0x10
     d9c:	91 89       	ldd	r25, Z+17	; 0x11
     d9e:	dc 01       	movw	r26, r24
     da0:	ed 91       	ld	r30, X+
     da2:	fc 91       	ld	r31, X
     da4:	00 84       	ldd	r0, Z+8	; 0x08
     da6:	f1 85       	ldd	r31, Z+9	; 0x09
     da8:	e0 2d       	mov	r30, r0
     daa:	20 e0       	ldi	r18, 0x00	; 0
     dac:	40 e0       	ldi	r20, 0x00	; 0
     dae:	62 e5       	ldi	r22, 0x52	; 82
     db0:	09 95       	icall
     db2:	f7 01       	movw	r30, r14
     db4:	80 89       	ldd	r24, Z+16	; 0x10
     db6:	91 89       	ldd	r25, Z+17	; 0x11
     db8:	dc 01       	movw	r26, r24
     dba:	ed 91       	ld	r30, X+
     dbc:	fc 91       	ld	r31, X
     dbe:	06 84       	ldd	r0, Z+14	; 0x0e
     dc0:	f7 85       	ldd	r31, Z+15	; 0x0f
     dc2:	e0 2d       	mov	r30, r0
     dc4:	41 e9       	ldi	r20, 0x91	; 145
     dc6:	62 e5       	ldi	r22, 0x52	; 82
     dc8:	09 95       	icall
     dca:	f7 01       	movw	r30, r14
     dcc:	80 89       	ldd	r24, Z+16	; 0x10
     dce:	91 89       	ldd	r25, Z+17	; 0x11
     dd0:	dc 01       	movw	r26, r24
     dd2:	ed 91       	ld	r30, X+
     dd4:	fc 91       	ld	r31, X
     dd6:	00 84       	ldd	r0, Z+8	; 0x08
     dd8:	f1 85       	ldd	r31, Z+9	; 0x09
     dda:	e0 2d       	mov	r30, r0
     ddc:	21 e0       	ldi	r18, 0x01	; 1
     dde:	40 e0       	ldi	r20, 0x00	; 0
     de0:	62 e5       	ldi	r22, 0x52	; 82
     de2:	09 95       	icall
     de4:	f7 01       	movw	r30, r14
     de6:	80 89       	ldd	r24, Z+16	; 0x10
     de8:	91 89       	ldd	r25, Z+17	; 0x11
     dea:	dc 01       	movw	r26, r24
     dec:	ed 91       	ld	r30, X+
     dee:	fc 91       	ld	r31, X
     df0:	00 84       	ldd	r0, Z+8	; 0x08
     df2:	f1 85       	ldd	r31, Z+9	; 0x09
     df4:	e0 2d       	mov	r30, r0
     df6:	20 e0       	ldi	r18, 0x00	; 0
     df8:	4f ef       	ldi	r20, 0xFF	; 255
     dfa:	62 e5       	ldi	r22, 0x52	; 82
     dfc:	09 95       	icall
     dfe:	f7 01       	movw	r30, r14
     e00:	80 89       	ldd	r24, Z+16	; 0x10
     e02:	91 89       	ldd	r25, Z+17	; 0x11
     e04:	dc 01       	movw	r26, r24
     e06:	ed 91       	ld	r30, X+
     e08:	fc 91       	ld	r31, X
     e0a:	00 84       	ldd	r0, Z+8	; 0x08
     e0c:	f1 85       	ldd	r31, Z+9	; 0x09
     e0e:	e0 2d       	mov	r30, r0
     e10:	20 e0       	ldi	r18, 0x00	; 0
     e12:	40 e8       	ldi	r20, 0x80	; 128
     e14:	62 e5       	ldi	r22, 0x52	; 82
     e16:	09 95       	icall
     e18:	18 86       	std	Y+8, r1	; 0x08
     e1a:	ae 01       	movw	r20, r28
     e1c:	49 5f       	subi	r20, 0xF9	; 249
     e1e:	5f 4f       	sbci	r21, 0xFF	; 255
     e20:	be 01       	movw	r22, r28
     e22:	68 5f       	subi	r22, 0xF8	; 248
     e24:	7f 4f       	sbci	r23, 0xFF	; 255
     e26:	c7 01       	movw	r24, r14
     e28:	0e 94 10 05 	call	0xa20	; 0xa20 <_ZN8CVL53L0X11getSPADinfoEPhPb>
     e2c:	f7 01       	movw	r30, r14
     e2e:	80 89       	ldd	r24, Z+16	; 0x10
     e30:	91 89       	ldd	r25, Z+17	; 0x11
     e32:	dc 01       	movw	r26, r24
     e34:	ed 91       	ld	r30, X+
     e36:	fc 91       	ld	r31, X
     e38:	02 88       	ldd	r0, Z+18	; 0x12
     e3a:	f3 89       	ldd	r31, Z+19	; 0x13
     e3c:	e0 2d       	mov	r30, r0
     e3e:	06 e0       	ldi	r16, 0x06	; 6
     e40:	10 e0       	ldi	r17, 0x00	; 0
     e42:	9e 01       	movw	r18, r28
     e44:	2f 5f       	subi	r18, 0xFF	; 255
     e46:	3f 4f       	sbci	r19, 0xFF	; 255
     e48:	40 eb       	ldi	r20, 0xB0	; 176
     e4a:	62 e5       	ldi	r22, 0x52	; 82
     e4c:	09 95       	icall
     e4e:	f7 01       	movw	r30, r14
     e50:	80 89       	ldd	r24, Z+16	; 0x10
     e52:	91 89       	ldd	r25, Z+17	; 0x11
     e54:	dc 01       	movw	r26, r24
     e56:	ed 91       	ld	r30, X+
     e58:	fc 91       	ld	r31, X
     e5a:	00 84       	ldd	r0, Z+8	; 0x08
     e5c:	f1 85       	ldd	r31, Z+9	; 0x09
     e5e:	e0 2d       	mov	r30, r0
     e60:	21 e0       	ldi	r18, 0x01	; 1
     e62:	4f ef       	ldi	r20, 0xFF	; 255
     e64:	62 e5       	ldi	r22, 0x52	; 82
     e66:	09 95       	icall
     e68:	f7 01       	movw	r30, r14
     e6a:	80 89       	ldd	r24, Z+16	; 0x10
     e6c:	91 89       	ldd	r25, Z+17	; 0x11
     e6e:	dc 01       	movw	r26, r24
     e70:	ed 91       	ld	r30, X+
     e72:	fc 91       	ld	r31, X
     e74:	00 84       	ldd	r0, Z+8	; 0x08
     e76:	f1 85       	ldd	r31, Z+9	; 0x09
     e78:	e0 2d       	mov	r30, r0
     e7a:	20 e0       	ldi	r18, 0x00	; 0
     e7c:	4f e4       	ldi	r20, 0x4F	; 79
     e7e:	62 e5       	ldi	r22, 0x52	; 82
     e80:	09 95       	icall
     e82:	f7 01       	movw	r30, r14
     e84:	80 89       	ldd	r24, Z+16	; 0x10
     e86:	91 89       	ldd	r25, Z+17	; 0x11
     e88:	dc 01       	movw	r26, r24
     e8a:	ed 91       	ld	r30, X+
     e8c:	fc 91       	ld	r31, X
     e8e:	00 84       	ldd	r0, Z+8	; 0x08
     e90:	f1 85       	ldd	r31, Z+9	; 0x09
     e92:	e0 2d       	mov	r30, r0
     e94:	2c e2       	ldi	r18, 0x2C	; 44
     e96:	4e e4       	ldi	r20, 0x4E	; 78
     e98:	62 e5       	ldi	r22, 0x52	; 82
     e9a:	09 95       	icall
     e9c:	f7 01       	movw	r30, r14
     e9e:	80 89       	ldd	r24, Z+16	; 0x10
     ea0:	91 89       	ldd	r25, Z+17	; 0x11
     ea2:	dc 01       	movw	r26, r24
     ea4:	ed 91       	ld	r30, X+
     ea6:	fc 91       	ld	r31, X
     ea8:	00 84       	ldd	r0, Z+8	; 0x08
     eaa:	f1 85       	ldd	r31, Z+9	; 0x09
     eac:	e0 2d       	mov	r30, r0
     eae:	20 e0       	ldi	r18, 0x00	; 0
     eb0:	4f ef       	ldi	r20, 0xFF	; 255
     eb2:	62 e5       	ldi	r22, 0x52	; 82
     eb4:	09 95       	icall
     eb6:	f7 01       	movw	r30, r14
     eb8:	80 89       	ldd	r24, Z+16	; 0x10
     eba:	91 89       	ldd	r25, Z+17	; 0x11
     ebc:	dc 01       	movw	r26, r24
     ebe:	ed 91       	ld	r30, X+
     ec0:	fc 91       	ld	r31, X
     ec2:	00 84       	ldd	r0, Z+8	; 0x08
     ec4:	f1 85       	ldd	r31, Z+9	; 0x09
     ec6:	e0 2d       	mov	r30, r0
     ec8:	24 eb       	ldi	r18, 0xB4	; 180
     eca:	46 eb       	ldi	r20, 0xB6	; 182
     ecc:	62 e5       	ldi	r22, 0x52	; 82
     ece:	09 95       	icall
     ed0:	8f 81       	ldd	r24, Y+7	; 0x07
     ed2:	81 11       	cpse	r24, r1
     ed4:	02 c0       	rjmp	.+4      	; 0xeda <_ZN8CVL53L0X4initEP14CI2C_Interface+0x244>
     ed6:	40 e0       	ldi	r20, 0x00	; 0
     ed8:	01 c0       	rjmp	.+2      	; 0xedc <_ZN8CVL53L0X4initEP14CI2C_Interface+0x246>
     eda:	4c e0       	ldi	r20, 0x0C	; 12
     edc:	a8 85       	ldd	r26, Y+8	; 0x08
     ede:	80 e0       	ldi	r24, 0x00	; 0
     ee0:	90 e0       	ldi	r25, 0x00	; 0
     ee2:	61 e0       	ldi	r22, 0x01	; 1
     ee4:	70 e0       	ldi	r23, 0x00	; 0
     ee6:	28 2f       	mov	r18, r24
     ee8:	26 95       	lsr	r18
     eea:	26 95       	lsr	r18
     eec:	26 95       	lsr	r18
     eee:	58 2f       	mov	r21, r24
     ef0:	57 70       	andi	r21, 0x07	; 7
     ef2:	e1 e0       	ldi	r30, 0x01	; 1
     ef4:	f0 e0       	ldi	r31, 0x00	; 0
     ef6:	ec 0f       	add	r30, r28
     ef8:	fd 1f       	adc	r31, r29
     efa:	e2 0f       	add	r30, r18
     efc:	f1 1d       	adc	r31, r1
     efe:	84 17       	cp	r24, r20
     f00:	10 f0       	brcs	.+4      	; 0xf06 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x270>
     f02:	9a 13       	cpse	r25, r26
     f04:	0a c0       	rjmp	.+20     	; 0xf1a <_ZN8CVL53L0X4initEP14CI2C_Interface+0x284>
     f06:	9b 01       	movw	r18, r22
     f08:	01 c0       	rjmp	.+2      	; 0xf0c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x276>
     f0a:	22 0f       	add	r18, r18
     f0c:	5a 95       	dec	r21
     f0e:	ea f7       	brpl	.-6      	; 0xf0a <_ZN8CVL53L0X4initEP14CI2C_Interface+0x274>
     f10:	20 95       	com	r18
     f12:	30 81       	ld	r19, Z
     f14:	23 23       	and	r18, r19
     f16:	20 83       	st	Z, r18
     f18:	09 c0       	rjmp	.+18     	; 0xf2c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x296>
     f1a:	20 81       	ld	r18, Z
     f1c:	30 e0       	ldi	r19, 0x00	; 0
     f1e:	02 c0       	rjmp	.+4      	; 0xf24 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28e>
     f20:	35 95       	asr	r19
     f22:	27 95       	ror	r18
     f24:	5a 95       	dec	r21
     f26:	e2 f7       	brpl	.-8      	; 0xf20 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28a>
     f28:	20 fd       	sbrc	r18, 0
     f2a:	9f 5f       	subi	r25, 0xFF	; 255
     f2c:	8f 5f       	subi	r24, 0xFF	; 255
     f2e:	80 33       	cpi	r24, 0x30	; 48
     f30:	d1 f6       	brne	.-76     	; 0xee6 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x250>
     f32:	f7 01       	movw	r30, r14
     f34:	80 89       	ldd	r24, Z+16	; 0x10
     f36:	91 89       	ldd	r25, Z+17	; 0x11
     f38:	dc 01       	movw	r26, r24
     f3a:	ed 91       	ld	r30, X+
     f3c:	fc 91       	ld	r31, X
     f3e:	04 84       	ldd	r0, Z+12	; 0x0c
     f40:	f5 85       	ldd	r31, Z+13	; 0x0d
     f42:	e0 2d       	mov	r30, r0
     f44:	06 e0       	ldi	r16, 0x06	; 6
     f46:	10 e0       	ldi	r17, 0x00	; 0
     f48:	9e 01       	movw	r18, r28
     f4a:	2f 5f       	subi	r18, 0xFF	; 255
     f4c:	3f 4f       	sbci	r19, 0xFF	; 255
     f4e:	40 eb       	ldi	r20, 0xB0	; 176
     f50:	62 e5       	ldi	r22, 0x52	; 82
     f52:	09 95       	icall
     f54:	f7 01       	movw	r30, r14
     f56:	80 89       	ldd	r24, Z+16	; 0x10
     f58:	91 89       	ldd	r25, Z+17	; 0x11
     f5a:	dc 01       	movw	r26, r24
     f5c:	ed 91       	ld	r30, X+
     f5e:	fc 91       	ld	r31, X
     f60:	06 84       	ldd	r0, Z+14	; 0x0e
     f62:	f7 85       	ldd	r31, Z+15	; 0x0f
     f64:	e0 2d       	mov	r30, r0
     f66:	44 e8       	ldi	r20, 0x84	; 132
     f68:	62 e5       	ldi	r22, 0x52	; 82
     f6a:	09 95       	icall
     f6c:	18 2f       	mov	r17, r24
     f6e:	f7 01       	movw	r30, r14
     f70:	80 89       	ldd	r24, Z+16	; 0x10
     f72:	91 89       	ldd	r25, Z+17	; 0x11
     f74:	dc 01       	movw	r26, r24
     f76:	ed 91       	ld	r30, X+
     f78:	fc 91       	ld	r31, X
     f7a:	00 84       	ldd	r0, Z+8	; 0x08
     f7c:	f1 85       	ldd	r31, Z+9	; 0x09
     f7e:	e0 2d       	mov	r30, r0
     f80:	24 e0       	ldi	r18, 0x04	; 4
     f82:	4a e0       	ldi	r20, 0x0A	; 10
     f84:	62 e5       	ldi	r22, 0x52	; 82
     f86:	09 95       	icall
     f88:	f7 01       	movw	r30, r14
     f8a:	80 89       	ldd	r24, Z+16	; 0x10
     f8c:	91 89       	ldd	r25, Z+17	; 0x11
     f8e:	dc 01       	movw	r26, r24
     f90:	ed 91       	ld	r30, X+
     f92:	fc 91       	ld	r31, X
     f94:	21 2f       	mov	r18, r17
     f96:	2f 7e       	andi	r18, 0xEF	; 239
     f98:	00 84       	ldd	r0, Z+8	; 0x08
     f9a:	f1 85       	ldd	r31, Z+9	; 0x09
     f9c:	e0 2d       	mov	r30, r0
     f9e:	44 e8       	ldi	r20, 0x84	; 132
     fa0:	62 e5       	ldi	r22, 0x52	; 82
     fa2:	09 95       	icall
     fa4:	f7 01       	movw	r30, r14
     fa6:	80 89       	ldd	r24, Z+16	; 0x10
     fa8:	91 89       	ldd	r25, Z+17	; 0x11
     faa:	dc 01       	movw	r26, r24
     fac:	ed 91       	ld	r30, X+
     fae:	fc 91       	ld	r31, X
     fb0:	00 84       	ldd	r0, Z+8	; 0x08
     fb2:	f1 85       	ldd	r31, Z+9	; 0x09
     fb4:	e0 2d       	mov	r30, r0
     fb6:	21 e0       	ldi	r18, 0x01	; 1
     fb8:	4b e0       	ldi	r20, 0x0B	; 11
     fba:	62 e5       	ldi	r22, 0x52	; 82
     fbc:	09 95       	icall
     fbe:	f7 01       	movw	r30, r14
     fc0:	80 89       	ldd	r24, Z+16	; 0x10
     fc2:	91 89       	ldd	r25, Z+17	; 0x11
     fc4:	dc 01       	movw	r26, r24
     fc6:	ed 91       	ld	r30, X+
     fc8:	fc 91       	ld	r31, X
     fca:	00 84       	ldd	r0, Z+8	; 0x08
     fcc:	f1 85       	ldd	r31, Z+9	; 0x09
     fce:	e0 2d       	mov	r30, r0
     fd0:	22 e0       	ldi	r18, 0x02	; 2
     fd2:	40 e0       	ldi	r20, 0x00	; 0
     fd4:	62 e5       	ldi	r22, 0x52	; 82
     fd6:	09 95       	icall
     fd8:	80 e0       	ldi	r24, 0x00	; 0
     fda:	90 e0       	ldi	r25, 0x00	; 0
     fdc:	02 c0       	rjmp	.+4      	; 0xfe2 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x34c>
     fde:	8e ef       	ldi	r24, 0xFE	; 254
     fe0:	9f ef       	ldi	r25, 0xFF	; 255
     fe2:	28 96       	adiw	r28, 0x08	; 8
     fe4:	0f b6       	in	r0, 0x3f	; 63
     fe6:	f8 94       	cli
     fe8:	de bf       	out	0x3e, r29	; 62
     fea:	0f be       	out	0x3f, r0	; 63
     fec:	cd bf       	out	0x3d, r28	; 61
     fee:	df 91       	pop	r29
     ff0:	cf 91       	pop	r28
     ff2:	1f 91       	pop	r17
     ff4:	0f 91       	pop	r16
     ff6:	ff 90       	pop	r15
     ff8:	ef 90       	pop	r14
     ffa:	08 95       	ret

00000ffc <_ZdlPv>:
     ffc:	0c 94 17 0d 	jmp	0x1a2e	; 0x1a2e <free>

00001000 <_ZN8CRTTimerC1Ev>:
    1000:	eb e0       	ldi	r30, 0x0B	; 11
    1002:	f1 e0       	ldi	r31, 0x01	; 1
    1004:	11 82       	std	Z+1, r1	; 0x01
    1006:	10 82       	st	Z, r1
    1008:	13 82       	std	Z+3, r1	; 0x03
    100a:	12 82       	std	Z+2, r1	; 0x02
    100c:	15 82       	std	Z+5, r1	; 0x05
    100e:	14 82       	std	Z+4, r1	; 0x04
    1010:	16 82       	std	Z+6, r1	; 0x06
    1012:	37 96       	adiw	r30, 0x07	; 7
    1014:	81 e0       	ldi	r24, 0x01	; 1
    1016:	e3 34       	cpi	r30, 0x43	; 67
    1018:	f8 07       	cpc	r31, r24
    101a:	a1 f7       	brne	.-24     	; 0x1004 <_ZN8CRTTimerC1Ev+0x4>
    101c:	83 b7       	in	r24, 0x33	; 51
    101e:	88 60       	ori	r24, 0x08	; 8
    1020:	83 bf       	out	0x33, r24	; 51
    1022:	8b e9       	ldi	r24, 0x9B	; 155
    1024:	8c bf       	out	0x3c, r24	; 60
    1026:	83 e0       	ldi	r24, 0x03	; 3
    1028:	83 bf       	out	0x33, r24	; 51
    102a:	89 b7       	in	r24, 0x39	; 57
    102c:	82 60       	ori	r24, 0x02	; 2
    102e:	89 bf       	out	0x39, r24	; 57
    1030:	78 94       	sei
    1032:	08 95       	ret

00001034 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>:
    1034:	f8 94       	cli
    1036:	eb e0       	ldi	r30, 0x0B	; 11
    1038:	f1 e0       	ldi	r31, 0x01	; 1
    103a:	80 e0       	ldi	r24, 0x00	; 0
    103c:	90 e0       	ldi	r25, 0x00	; 0
    103e:	20 81       	ld	r18, Z
    1040:	31 81       	ldd	r19, Z+1	; 0x01
    1042:	23 2b       	or	r18, r19
    1044:	81 f4       	brne	.+32     	; 0x1066 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x32>
    1046:	27 e0       	ldi	r18, 0x07	; 7
    1048:	28 9f       	mul	r18, r24
    104a:	f0 01       	movw	r30, r0
    104c:	29 9f       	mul	r18, r25
    104e:	f0 0d       	add	r31, r0
    1050:	11 24       	eor	r1, r1
    1052:	e5 5f       	subi	r30, 0xF5	; 245
    1054:	fe 4f       	sbci	r31, 0xFE	; 254
    1056:	71 83       	std	Z+1, r23	; 0x01
    1058:	60 83       	st	Z, r22
    105a:	53 83       	std	Z+3, r21	; 0x03
    105c:	42 83       	std	Z+2, r20	; 0x02
    105e:	55 83       	std	Z+5, r21	; 0x05
    1060:	44 83       	std	Z+4, r20	; 0x04
    1062:	16 82       	std	Z+6, r1	; 0x06
    1064:	07 c0       	rjmp	.+14     	; 0x1074 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x40>
    1066:	01 96       	adiw	r24, 0x01	; 1
    1068:	37 96       	adiw	r30, 0x07	; 7
    106a:	88 30       	cpi	r24, 0x08	; 8
    106c:	91 05       	cpc	r25, r1
    106e:	39 f7       	brne	.-50     	; 0x103e <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0xa>
    1070:	8f ef       	ldi	r24, 0xFF	; 255
    1072:	9f ef       	ldi	r25, 0xFF	; 255
    1074:	78 94       	sei
    1076:	08 95       	ret

00001078 <_ZN8CRTTimer4mainEv>:
    1078:	cf 93       	push	r28
    107a:	df 93       	push	r29
    107c:	c1 e1       	ldi	r28, 0x11	; 17
    107e:	d1 e0       	ldi	r29, 0x01	; 1
    1080:	fe 01       	movw	r30, r28
    1082:	36 97       	sbiw	r30, 0x06	; 6
    1084:	80 81       	ld	r24, Z
    1086:	91 81       	ldd	r25, Z+1	; 0x01
    1088:	00 97       	sbiw	r24, 0x00	; 0
    108a:	59 f0       	breq	.+22     	; 0x10a2 <_ZN8CRTTimer4mainEv+0x2a>
    108c:	28 81       	ld	r18, Y
    108e:	22 23       	and	r18, r18
    1090:	41 f0       	breq	.+16     	; 0x10a2 <_ZN8CRTTimer4mainEv+0x2a>
    1092:	18 82       	st	Y, r1
    1094:	dc 01       	movw	r26, r24
    1096:	ed 91       	ld	r30, X+
    1098:	fc 91       	ld	r31, X
    109a:	04 80       	ldd	r0, Z+4	; 0x04
    109c:	f5 81       	ldd	r31, Z+5	; 0x05
    109e:	e0 2d       	mov	r30, r0
    10a0:	09 95       	icall
    10a2:	27 96       	adiw	r28, 0x07	; 7
    10a4:	b1 e0       	ldi	r27, 0x01	; 1
    10a6:	c9 34       	cpi	r28, 0x49	; 73
    10a8:	db 07       	cpc	r29, r27
    10aa:	51 f7       	brne	.-44     	; 0x1080 <_ZN8CRTTimer4mainEv+0x8>
    10ac:	df 91       	pop	r29
    10ae:	cf 91       	pop	r28
    10b0:	08 95       	ret

000010b2 <__vector_19>:
    10b2:	1f 92       	push	r1
    10b4:	0f 92       	push	r0
    10b6:	0f b6       	in	r0, 0x3f	; 63
    10b8:	0f 92       	push	r0
    10ba:	11 24       	eor	r1, r1
    10bc:	8f 93       	push	r24
    10be:	9f 93       	push	r25
    10c0:	af 93       	push	r26
    10c2:	bf 93       	push	r27
    10c4:	ef 93       	push	r30
    10c6:	ff 93       	push	r31
    10c8:	eb e0       	ldi	r30, 0x0B	; 11
    10ca:	f1 e0       	ldi	r31, 0x01	; 1
    10cc:	a1 e1       	ldi	r26, 0x11	; 17
    10ce:	b1 e0       	ldi	r27, 0x01	; 1
    10d0:	84 81       	ldd	r24, Z+4	; 0x04
    10d2:	95 81       	ldd	r25, Z+5	; 0x05
    10d4:	00 97       	sbiw	r24, 0x00	; 0
    10d6:	21 f0       	breq	.+8      	; 0x10e0 <__vector_19+0x2e>
    10d8:	01 97       	sbiw	r24, 0x01	; 1
    10da:	95 83       	std	Z+5, r25	; 0x05
    10dc:	84 83       	std	Z+4, r24	; 0x04
    10de:	09 c0       	rjmp	.+18     	; 0x10f2 <__vector_19+0x40>
    10e0:	82 81       	ldd	r24, Z+2	; 0x02
    10e2:	93 81       	ldd	r25, Z+3	; 0x03
    10e4:	95 83       	std	Z+5, r25	; 0x05
    10e6:	84 83       	std	Z+4, r24	; 0x04
    10e8:	8c 91       	ld	r24, X
    10ea:	8f 3f       	cpi	r24, 0xFF	; 255
    10ec:	11 f0       	breq	.+4      	; 0x10f2 <__vector_19+0x40>
    10ee:	8f 5f       	subi	r24, 0xFF	; 255
    10f0:	8c 93       	st	X, r24
    10f2:	37 96       	adiw	r30, 0x07	; 7
    10f4:	17 96       	adiw	r26, 0x07	; 7
    10f6:	81 e0       	ldi	r24, 0x01	; 1
    10f8:	e3 34       	cpi	r30, 0x43	; 67
    10fa:	f8 07       	cpc	r31, r24
    10fc:	49 f7       	brne	.-46     	; 0x10d0 <__vector_19+0x1e>
    10fe:	80 91 43 01 	lds	r24, 0x0143
    1102:	90 91 44 01 	lds	r25, 0x0144
    1106:	a0 91 45 01 	lds	r26, 0x0145
    110a:	b0 91 46 01 	lds	r27, 0x0146
    110e:	01 96       	adiw	r24, 0x01	; 1
    1110:	a1 1d       	adc	r26, r1
    1112:	b1 1d       	adc	r27, r1
    1114:	80 93 43 01 	sts	0x0143, r24
    1118:	90 93 44 01 	sts	0x0144, r25
    111c:	a0 93 45 01 	sts	0x0145, r26
    1120:	b0 93 46 01 	sts	0x0146, r27
    1124:	ff 91       	pop	r31
    1126:	ef 91       	pop	r30
    1128:	bf 91       	pop	r27
    112a:	af 91       	pop	r26
    112c:	9f 91       	pop	r25
    112e:	8f 91       	pop	r24
    1130:	0f 90       	pop	r0
    1132:	0f be       	out	0x3f, r0	; 63
    1134:	0f 90       	pop	r0
    1136:	1f 90       	pop	r1
    1138:	18 95       	reti

0000113a <_GLOBAL__sub_I_g_rt_time>:
    113a:	8a e0       	ldi	r24, 0x0A	; 10
    113c:	91 e0       	ldi	r25, 0x01	; 1
    113e:	0c 94 00 08 	jmp	0x1000	; 0x1000 <_ZN8CRTTimerC1Ev>

00001142 <_ZN9CTerminal4putsEPc>:
    1142:	0f 93       	push	r16
    1144:	1f 93       	push	r17
    1146:	cf 93       	push	r28
    1148:	df 93       	push	r29
    114a:	8c 01       	movw	r16, r24
    114c:	eb 01       	movw	r28, r22
    114e:	69 91       	ld	r22, Y+
    1150:	66 23       	and	r22, r22
    1152:	21 f0       	breq	.+8      	; 0x115c <_ZN9CTerminal4putsEPc+0x1a>
    1154:	c8 01       	movw	r24, r16
    1156:	0e 94 28 02 	call	0x450	; 0x450 <_ZN6CUSART7putcharEc>
    115a:	f9 cf       	rjmp	.-14     	; 0x114e <_ZN9CTerminal4putsEPc+0xc>
    115c:	df 91       	pop	r29
    115e:	cf 91       	pop	r28
    1160:	1f 91       	pop	r17
    1162:	0f 91       	pop	r16
    1164:	08 95       	ret

00001166 <_ZN9CTerminal4putiEl>:
    1166:	8f 92       	push	r8
    1168:	9f 92       	push	r9
    116a:	af 92       	push	r10
    116c:	bf 92       	push	r11
    116e:	cf 92       	push	r12
    1170:	df 92       	push	r13
    1172:	ef 92       	push	r14
    1174:	ff 92       	push	r15
    1176:	0f 93       	push	r16
    1178:	1f 93       	push	r17
    117a:	cf 93       	push	r28
    117c:	df 93       	push	r29
    117e:	cd b7       	in	r28, 0x3d	; 61
    1180:	de b7       	in	r29, 0x3e	; 62
    1182:	2c 97       	sbiw	r28, 0x0c	; 12
    1184:	0f b6       	in	r0, 0x3f	; 63
    1186:	f8 94       	cli
    1188:	de bf       	out	0x3e, r29	; 62
    118a:	0f be       	out	0x3f, r0	; 63
    118c:	cd bf       	out	0x3d, r28	; 61
    118e:	7c 01       	movw	r14, r24
    1190:	77 ff       	sbrs	r23, 7
    1192:	09 c0       	rjmp	.+18     	; 0x11a6 <_ZN9CTerminal4putiEl+0x40>
    1194:	70 95       	com	r23
    1196:	60 95       	com	r22
    1198:	50 95       	com	r21
    119a:	41 95       	neg	r20
    119c:	5f 4f       	sbci	r21, 0xFF	; 255
    119e:	6f 4f       	sbci	r22, 0xFF	; 255
    11a0:	7f 4f       	sbci	r23, 0xFF	; 255
    11a2:	01 e0       	ldi	r16, 0x01	; 1
    11a4:	01 c0       	rjmp	.+2      	; 0x11a8 <_ZN9CTerminal4putiEl+0x42>
    11a6:	00 e0       	ldi	r16, 0x00	; 0
    11a8:	1c 86       	std	Y+12, r1	; 0x0c
    11aa:	1a e0       	ldi	r17, 0x0A	; 10
    11ac:	9a e0       	ldi	r25, 0x0A	; 10
    11ae:	89 2e       	mov	r8, r25
    11b0:	91 2c       	mov	r9, r1
    11b2:	a1 2c       	mov	r10, r1
    11b4:	b1 2c       	mov	r11, r1
    11b6:	cc 24       	eor	r12, r12
    11b8:	c3 94       	inc	r12
    11ba:	d1 2c       	mov	r13, r1
    11bc:	cc 0e       	add	r12, r28
    11be:	dd 1e       	adc	r13, r29
    11c0:	c1 0e       	add	r12, r17
    11c2:	d1 1c       	adc	r13, r1
    11c4:	cb 01       	movw	r24, r22
    11c6:	ba 01       	movw	r22, r20
    11c8:	a5 01       	movw	r20, r10
    11ca:	94 01       	movw	r18, r8
    11cc:	0e 94 c7 0a 	call	0x158e	; 0x158e <__divmodsi4>
    11d0:	94 2f       	mov	r25, r20
    11d2:	85 2f       	mov	r24, r21
    11d4:	60 5d       	subi	r22, 0xD0	; 208
    11d6:	f6 01       	movw	r30, r12
    11d8:	60 83       	st	Z, r22
    11da:	a9 01       	movw	r20, r18
    11dc:	69 2f       	mov	r22, r25
    11de:	78 2f       	mov	r23, r24
    11e0:	8f ef       	ldi	r24, 0xFF	; 255
    11e2:	81 0f       	add	r24, r17
    11e4:	41 15       	cp	r20, r1
    11e6:	51 05       	cpc	r21, r1
    11e8:	61 05       	cpc	r22, r1
    11ea:	71 05       	cpc	r23, r1
    11ec:	11 f0       	breq	.+4      	; 0x11f2 <_ZN9CTerminal4putiEl+0x8c>
    11ee:	18 2f       	mov	r17, r24
    11f0:	e2 cf       	rjmp	.-60     	; 0x11b6 <_ZN9CTerminal4putiEl+0x50>
    11f2:	00 23       	and	r16, r16
    11f4:	49 f0       	breq	.+18     	; 0x1208 <_ZN9CTerminal4putiEl+0xa2>
    11f6:	e1 e0       	ldi	r30, 0x01	; 1
    11f8:	f0 e0       	ldi	r31, 0x00	; 0
    11fa:	ec 0f       	add	r30, r28
    11fc:	fd 1f       	adc	r31, r29
    11fe:	e8 0f       	add	r30, r24
    1200:	f1 1d       	adc	r31, r1
    1202:	9d e2       	ldi	r25, 0x2D	; 45
    1204:	90 83       	st	Z, r25
    1206:	18 2f       	mov	r17, r24
    1208:	61 e0       	ldi	r22, 0x01	; 1
    120a:	70 e0       	ldi	r23, 0x00	; 0
    120c:	6c 0f       	add	r22, r28
    120e:	7d 1f       	adc	r23, r29
    1210:	61 0f       	add	r22, r17
    1212:	71 1d       	adc	r23, r1
    1214:	c7 01       	movw	r24, r14
    1216:	0e 94 a1 08 	call	0x1142	; 0x1142 <_ZN9CTerminal4putsEPc>
    121a:	2c 96       	adiw	r28, 0x0c	; 12
    121c:	0f b6       	in	r0, 0x3f	; 63
    121e:	f8 94       	cli
    1220:	de bf       	out	0x3e, r29	; 62
    1222:	0f be       	out	0x3f, r0	; 63
    1224:	cd bf       	out	0x3d, r28	; 61
    1226:	df 91       	pop	r29
    1228:	cf 91       	pop	r28
    122a:	1f 91       	pop	r17
    122c:	0f 91       	pop	r16
    122e:	ff 90       	pop	r15
    1230:	ef 90       	pop	r14
    1232:	df 90       	pop	r13
    1234:	cf 90       	pop	r12
    1236:	bf 90       	pop	r11
    1238:	af 90       	pop	r10
    123a:	9f 90       	pop	r9
    123c:	8f 90       	pop	r8
    123e:	08 95       	ret

00001240 <_ZN9CTerminal5putuiEm>:
    1240:	8f 92       	push	r8
    1242:	9f 92       	push	r9
    1244:	af 92       	push	r10
    1246:	bf 92       	push	r11
    1248:	cf 92       	push	r12
    124a:	df 92       	push	r13
    124c:	ef 92       	push	r14
    124e:	ff 92       	push	r15
    1250:	1f 93       	push	r17
    1252:	cf 93       	push	r28
    1254:	df 93       	push	r29
    1256:	cd b7       	in	r28, 0x3d	; 61
    1258:	de b7       	in	r29, 0x3e	; 62
    125a:	2c 97       	sbiw	r28, 0x0c	; 12
    125c:	0f b6       	in	r0, 0x3f	; 63
    125e:	f8 94       	cli
    1260:	de bf       	out	0x3e, r29	; 62
    1262:	0f be       	out	0x3f, r0	; 63
    1264:	cd bf       	out	0x3d, r28	; 61
    1266:	6c 01       	movw	r12, r24
    1268:	1c 86       	std	Y+12, r1	; 0x0c
    126a:	1a e0       	ldi	r17, 0x0A	; 10
    126c:	9a e0       	ldi	r25, 0x0A	; 10
    126e:	89 2e       	mov	r8, r25
    1270:	91 2c       	mov	r9, r1
    1272:	a1 2c       	mov	r10, r1
    1274:	b1 2c       	mov	r11, r1
    1276:	ee 24       	eor	r14, r14
    1278:	e3 94       	inc	r14
    127a:	f1 2c       	mov	r15, r1
    127c:	ec 0e       	add	r14, r28
    127e:	fd 1e       	adc	r15, r29
    1280:	e1 0e       	add	r14, r17
    1282:	f1 1c       	adc	r15, r1
    1284:	cb 01       	movw	r24, r22
    1286:	ba 01       	movw	r22, r20
    1288:	a5 01       	movw	r20, r10
    128a:	94 01       	movw	r18, r8
    128c:	0e 94 a5 0a 	call	0x154a	; 0x154a <__udivmodsi4>
    1290:	94 2f       	mov	r25, r20
    1292:	85 2f       	mov	r24, r21
    1294:	60 5d       	subi	r22, 0xD0	; 208
    1296:	f7 01       	movw	r30, r14
    1298:	60 83       	st	Z, r22
    129a:	a9 01       	movw	r20, r18
    129c:	69 2f       	mov	r22, r25
    129e:	78 2f       	mov	r23, r24
    12a0:	11 50       	subi	r17, 0x01	; 1
    12a2:	41 15       	cp	r20, r1
    12a4:	51 05       	cpc	r21, r1
    12a6:	61 05       	cpc	r22, r1
    12a8:	71 05       	cpc	r23, r1
    12aa:	29 f7       	brne	.-54     	; 0x1276 <_ZN9CTerminal5putuiEm+0x36>
    12ac:	b7 01       	movw	r22, r14
    12ae:	c6 01       	movw	r24, r12
    12b0:	0e 94 a1 08 	call	0x1142	; 0x1142 <_ZN9CTerminal4putsEPc>
    12b4:	2c 96       	adiw	r28, 0x0c	; 12
    12b6:	0f b6       	in	r0, 0x3f	; 63
    12b8:	f8 94       	cli
    12ba:	de bf       	out	0x3e, r29	; 62
    12bc:	0f be       	out	0x3f, r0	; 63
    12be:	cd bf       	out	0x3d, r28	; 61
    12c0:	df 91       	pop	r29
    12c2:	cf 91       	pop	r28
    12c4:	1f 91       	pop	r17
    12c6:	ff 90       	pop	r15
    12c8:	ef 90       	pop	r14
    12ca:	df 90       	pop	r13
    12cc:	cf 90       	pop	r12
    12ce:	bf 90       	pop	r11
    12d0:	af 90       	pop	r10
    12d2:	9f 90       	pop	r9
    12d4:	8f 90       	pop	r8
    12d6:	08 95       	ret

000012d8 <_ZN9CTerminal4putxEm>:
    12d8:	ef 92       	push	r14
    12da:	ff 92       	push	r15
    12dc:	cf 93       	push	r28
    12de:	df 93       	push	r29
    12e0:	cd b7       	in	r28, 0x3d	; 61
    12e2:	de b7       	in	r29, 0x3e	; 62
    12e4:	2c 97       	sbiw	r28, 0x0c	; 12
    12e6:	0f b6       	in	r0, 0x3f	; 63
    12e8:	f8 94       	cli
    12ea:	de bf       	out	0x3e, r29	; 62
    12ec:	0f be       	out	0x3f, r0	; 63
    12ee:	cd bf       	out	0x3d, r28	; 61
    12f0:	fc 01       	movw	r30, r24
    12f2:	1c 86       	std	Y+12, r1	; 0x0c
    12f4:	2a e0       	ldi	r18, 0x0A	; 10
    12f6:	94 2f       	mov	r25, r20
    12f8:	9f 70       	andi	r25, 0x0F	; 15
    12fa:	e2 2e       	mov	r14, r18
    12fc:	f1 2c       	mov	r15, r1
    12fe:	a1 e0       	ldi	r26, 0x01	; 1
    1300:	b0 e0       	ldi	r27, 0x00	; 0
    1302:	ac 0f       	add	r26, r28
    1304:	bd 1f       	adc	r27, r29
    1306:	ae 0d       	add	r26, r14
    1308:	bf 1d       	adc	r27, r15
    130a:	9a 30       	cpi	r25, 0x0A	; 10
    130c:	14 f4       	brge	.+4      	; 0x1312 <_ZN9CTerminal4putxEm+0x3a>
    130e:	90 5d       	subi	r25, 0xD0	; 208
    1310:	01 c0       	rjmp	.+2      	; 0x1314 <_ZN9CTerminal4putxEm+0x3c>
    1312:	99 5a       	subi	r25, 0xA9	; 169
    1314:	9c 93       	st	X, r25
    1316:	84 e0       	ldi	r24, 0x04	; 4
    1318:	76 95       	lsr	r23
    131a:	67 95       	ror	r22
    131c:	57 95       	ror	r21
    131e:	47 95       	ror	r20
    1320:	8a 95       	dec	r24
    1322:	d1 f7       	brne	.-12     	; 0x1318 <_ZN9CTerminal4putxEm+0x40>
    1324:	21 50       	subi	r18, 0x01	; 1
    1326:	41 15       	cp	r20, r1
    1328:	51 05       	cpc	r21, r1
    132a:	61 05       	cpc	r22, r1
    132c:	71 05       	cpc	r23, r1
    132e:	19 f7       	brne	.-58     	; 0x12f6 <_ZN9CTerminal4putxEm+0x1e>
    1330:	61 e0       	ldi	r22, 0x01	; 1
    1332:	70 e0       	ldi	r23, 0x00	; 0
    1334:	6c 0f       	add	r22, r28
    1336:	7d 1f       	adc	r23, r29
    1338:	6e 0d       	add	r22, r14
    133a:	7f 1d       	adc	r23, r15
    133c:	cf 01       	movw	r24, r30
    133e:	0e 94 a1 08 	call	0x1142	; 0x1142 <_ZN9CTerminal4putsEPc>
    1342:	2c 96       	adiw	r28, 0x0c	; 12
    1344:	0f b6       	in	r0, 0x3f	; 63
    1346:	f8 94       	cli
    1348:	de bf       	out	0x3e, r29	; 62
    134a:	0f be       	out	0x3f, r0	; 63
    134c:	cd bf       	out	0x3d, r28	; 61
    134e:	df 91       	pop	r29
    1350:	cf 91       	pop	r28
    1352:	ff 90       	pop	r15
    1354:	ef 90       	pop	r14
    1356:	08 95       	ret

00001358 <_ZN9CTerminal6printfEPKcz>:
    1358:	af 92       	push	r10
    135a:	bf 92       	push	r11
    135c:	cf 92       	push	r12
    135e:	df 92       	push	r13
    1360:	ef 92       	push	r14
    1362:	ff 92       	push	r15
    1364:	0f 93       	push	r16
    1366:	1f 93       	push	r17
    1368:	cf 93       	push	r28
    136a:	df 93       	push	r29
    136c:	cd b7       	in	r28, 0x3d	; 61
    136e:	de b7       	in	r29, 0x3e	; 62
    1370:	ed 84       	ldd	r14, Y+13	; 0x0d
    1372:	fe 84       	ldd	r15, Y+14	; 0x0e
    1374:	8e 01       	movw	r16, r28
    1376:	0f 5e       	subi	r16, 0xEF	; 239
    1378:	1f 4f       	sbci	r17, 0xFF	; 255
    137a:	c1 2c       	mov	r12, r1
    137c:	d1 2c       	mov	r13, r1
    137e:	ef 85       	ldd	r30, Y+15	; 0x0f
    1380:	f8 89       	ldd	r31, Y+16	; 0x10
    1382:	ec 0d       	add	r30, r12
    1384:	fd 1d       	adc	r31, r13
    1386:	60 81       	ld	r22, Z
    1388:	66 23       	and	r22, r22
    138a:	09 f4       	brne	.+2      	; 0x138e <_ZN9CTerminal6printfEPKcz+0x36>
    138c:	5e c0       	rjmp	.+188    	; 0x144a <_ZN9CTerminal6printfEPKcz+0xf2>
    138e:	65 32       	cpi	r22, 0x25	; 37
    1390:	39 f0       	breq	.+14     	; 0x13a0 <_ZN9CTerminal6printfEPKcz+0x48>
    1392:	c7 01       	movw	r24, r14
    1394:	0e 94 28 02 	call	0x450	; 0x450 <_ZN6CUSART7putcharEc>
    1398:	8f ef       	ldi	r24, 0xFF	; 255
    139a:	c8 1a       	sub	r12, r24
    139c:	d8 0a       	sbc	r13, r24
    139e:	ef cf       	rjmp	.-34     	; 0x137e <_ZN9CTerminal6printfEPKcz+0x26>
    13a0:	81 81       	ldd	r24, Z+1	; 0x01
    13a2:	89 36       	cpi	r24, 0x69	; 105
    13a4:	11 f1       	breq	.+68     	; 0x13ea <_ZN9CTerminal6printfEPKcz+0x92>
    13a6:	84 f4       	brge	.+32     	; 0x13c8 <_ZN9CTerminal6printfEPKcz+0x70>
    13a8:	85 32       	cpi	r24, 0x25	; 37
    13aa:	09 f4       	brne	.+2      	; 0x13ae <_ZN9CTerminal6printfEPKcz+0x56>
    13ac:	46 c0       	rjmp	.+140    	; 0x143a <_ZN9CTerminal6printfEPKcz+0xe2>
    13ae:	83 36       	cpi	r24, 0x63	; 99
    13b0:	09 f0       	breq	.+2      	; 0x13b4 <_ZN9CTerminal6printfEPKcz+0x5c>
    13b2:	47 c0       	rjmp	.+142    	; 0x1442 <_ZN9CTerminal6printfEPKcz+0xea>
    13b4:	58 01       	movw	r10, r16
    13b6:	f2 e0       	ldi	r31, 0x02	; 2
    13b8:	af 0e       	add	r10, r31
    13ba:	b1 1c       	adc	r11, r1
    13bc:	f8 01       	movw	r30, r16
    13be:	60 81       	ld	r22, Z
    13c0:	c7 01       	movw	r24, r14
    13c2:	0e 94 28 02 	call	0x450	; 0x450 <_ZN6CUSART7putcharEc>
    13c6:	2a c0       	rjmp	.+84     	; 0x141c <_ZN9CTerminal6printfEPKcz+0xc4>
    13c8:	85 37       	cpi	r24, 0x75	; 117
    13ca:	e1 f0       	breq	.+56     	; 0x1404 <_ZN9CTerminal6printfEPKcz+0xac>
    13cc:	88 37       	cpi	r24, 0x78	; 120
    13ce:	41 f1       	breq	.+80     	; 0x1420 <_ZN9CTerminal6printfEPKcz+0xc8>
    13d0:	83 37       	cpi	r24, 0x73	; 115
    13d2:	b9 f5       	brne	.+110    	; 0x1442 <_ZN9CTerminal6printfEPKcz+0xea>
    13d4:	58 01       	movw	r10, r16
    13d6:	f2 e0       	ldi	r31, 0x02	; 2
    13d8:	af 0e       	add	r10, r31
    13da:	b1 1c       	adc	r11, r1
    13dc:	f8 01       	movw	r30, r16
    13de:	60 81       	ld	r22, Z
    13e0:	71 81       	ldd	r23, Z+1	; 0x01
    13e2:	c7 01       	movw	r24, r14
    13e4:	0e 94 a1 08 	call	0x1142	; 0x1142 <_ZN9CTerminal4putsEPc>
    13e8:	19 c0       	rjmp	.+50     	; 0x141c <_ZN9CTerminal6printfEPKcz+0xc4>
    13ea:	58 01       	movw	r10, r16
    13ec:	94 e0       	ldi	r25, 0x04	; 4
    13ee:	a9 0e       	add	r10, r25
    13f0:	b1 1c       	adc	r11, r1
    13f2:	f8 01       	movw	r30, r16
    13f4:	40 81       	ld	r20, Z
    13f6:	51 81       	ldd	r21, Z+1	; 0x01
    13f8:	62 81       	ldd	r22, Z+2	; 0x02
    13fa:	73 81       	ldd	r23, Z+3	; 0x03
    13fc:	c7 01       	movw	r24, r14
    13fe:	0e 94 b3 08 	call	0x1166	; 0x1166 <_ZN9CTerminal4putiEl>
    1402:	0c c0       	rjmp	.+24     	; 0x141c <_ZN9CTerminal6printfEPKcz+0xc4>
    1404:	58 01       	movw	r10, r16
    1406:	f4 e0       	ldi	r31, 0x04	; 4
    1408:	af 0e       	add	r10, r31
    140a:	b1 1c       	adc	r11, r1
    140c:	f8 01       	movw	r30, r16
    140e:	40 81       	ld	r20, Z
    1410:	51 81       	ldd	r21, Z+1	; 0x01
    1412:	62 81       	ldd	r22, Z+2	; 0x02
    1414:	73 81       	ldd	r23, Z+3	; 0x03
    1416:	c7 01       	movw	r24, r14
    1418:	0e 94 20 09 	call	0x1240	; 0x1240 <_ZN9CTerminal5putuiEm>
    141c:	85 01       	movw	r16, r10
    141e:	11 c0       	rjmp	.+34     	; 0x1442 <_ZN9CTerminal6printfEPKcz+0xea>
    1420:	58 01       	movw	r10, r16
    1422:	f4 e0       	ldi	r31, 0x04	; 4
    1424:	af 0e       	add	r10, r31
    1426:	b1 1c       	adc	r11, r1
    1428:	f8 01       	movw	r30, r16
    142a:	40 81       	ld	r20, Z
    142c:	51 81       	ldd	r21, Z+1	; 0x01
    142e:	62 81       	ldd	r22, Z+2	; 0x02
    1430:	73 81       	ldd	r23, Z+3	; 0x03
    1432:	c7 01       	movw	r24, r14
    1434:	0e 94 6c 09 	call	0x12d8	; 0x12d8 <_ZN9CTerminal4putxEm>
    1438:	f1 cf       	rjmp	.-30     	; 0x141c <_ZN9CTerminal6printfEPKcz+0xc4>
    143a:	65 e2       	ldi	r22, 0x25	; 37
    143c:	c7 01       	movw	r24, r14
    143e:	0e 94 28 02 	call	0x450	; 0x450 <_ZN6CUSART7putcharEc>
    1442:	f2 e0       	ldi	r31, 0x02	; 2
    1444:	cf 0e       	add	r12, r31
    1446:	d1 1c       	adc	r13, r1
    1448:	9a cf       	rjmp	.-204    	; 0x137e <_ZN9CTerminal6printfEPKcz+0x26>
    144a:	df 91       	pop	r29
    144c:	cf 91       	pop	r28
    144e:	1f 91       	pop	r17
    1450:	0f 91       	pop	r16
    1452:	ff 90       	pop	r15
    1454:	ef 90       	pop	r14
    1456:	df 90       	pop	r13
    1458:	cf 90       	pop	r12
    145a:	bf 90       	pop	r11
    145c:	af 90       	pop	r10
    145e:	08 95       	ret

00001460 <_GLOBAL__sub_I_terminal>:
    1460:	87 e4       	ldi	r24, 0x47	; 71
    1462:	91 e0       	ldi	r25, 0x01	; 1
    1464:	0c 94 1d 02 	jmp	0x43a	; 0x43a <_ZN6CUSARTC1Ev>

00001468 <_GLOBAL__sub_D_terminal>:
    1468:	87 e4       	ldi	r24, 0x47	; 71
    146a:	91 e0       	ldi	r25, 0x01	; 1
    146c:	0c 94 27 02 	jmp	0x44e	; 0x44e <_ZN6CUSARTD1Ev>

00001470 <_ZN11CLEDDisplayD1Ev>:
    1470:	08 95       	ret

00001472 <_ZN11CLEDDisplayD0Ev>:
    1472:	0c 94 fe 07 	jmp	0xffc	; 0xffc <_ZdlPv>

00001476 <_ZN11CLEDDisplayclEv>:
    1476:	fc 01       	movw	r30, r24
    1478:	82 81       	ldd	r24, Z+2	; 0x02
    147a:	88 23       	and	r24, r24
    147c:	19 f0       	breq	.+6      	; 0x1484 <_ZN11CLEDDisplayclEv+0xe>
    147e:	81 30       	cpi	r24, 0x01	; 1
    1480:	51 f0       	breq	.+20     	; 0x1496 <_ZN11CLEDDisplayclEv+0x20>
    1482:	08 95       	ret
    1484:	88 b3       	in	r24, 0x18	; 24
    1486:	83 60       	ori	r24, 0x03	; 3
    1488:	88 bb       	out	0x18, r24	; 24
    148a:	83 81       	ldd	r24, Z+3	; 0x03
    148c:	85 bb       	out	0x15, r24	; 21
    148e:	c0 98       	cbi	0x18, 0	; 24
    1490:	81 e0       	ldi	r24, 0x01	; 1
    1492:	82 83       	std	Z+2, r24	; 0x02
    1494:	08 95       	ret
    1496:	88 b3       	in	r24, 0x18	; 24
    1498:	83 60       	ori	r24, 0x03	; 3
    149a:	88 bb       	out	0x18, r24	; 24
    149c:	84 81       	ldd	r24, Z+4	; 0x04
    149e:	85 bb       	out	0x15, r24	; 21
    14a0:	c1 98       	cbi	0x18, 1	; 24
    14a2:	12 82       	std	Z+2, r1	; 0x02
    14a4:	08 95       	ret

000014a6 <_ZN11CLEDDisplayC1Ev>:
    14a6:	fc 01       	movw	r30, r24
    14a8:	8c eb       	ldi	r24, 0xBC	; 188
    14aa:	90 e0       	ldi	r25, 0x00	; 0
    14ac:	91 83       	std	Z+1, r25	; 0x01
    14ae:	80 83       	st	Z, r24
    14b0:	12 82       	std	Z+2, r1	; 0x02
    14b2:	8f ef       	ldi	r24, 0xFF	; 255
    14b4:	83 83       	std	Z+3, r24	; 0x03
    14b6:	84 83       	std	Z+4, r24	; 0x04
    14b8:	97 b3       	in	r25, 0x17	; 23
    14ba:	93 60       	ori	r25, 0x03	; 3
    14bc:	97 bb       	out	0x17, r25	; 23
    14be:	98 b3       	in	r25, 0x18	; 24
    14c0:	93 60       	ori	r25, 0x03	; 3
    14c2:	98 bb       	out	0x18, r25	; 24
    14c4:	85 bb       	out	0x15, r24	; 21
    14c6:	84 bb       	out	0x14, r24	; 20
    14c8:	45 e0       	ldi	r20, 0x05	; 5
    14ca:	50 e0       	ldi	r21, 0x00	; 0
    14cc:	bf 01       	movw	r22, r30
    14ce:	8a e0       	ldi	r24, 0x0A	; 10
    14d0:	91 e0       	ldi	r25, 0x01	; 1
    14d2:	0c 94 1a 08 	jmp	0x1034	; 0x1034 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>

000014d6 <_ZN11CLEDDisplay11display_decEh>:
    14d6:	dc 01       	movw	r26, r24
    14d8:	86 2f       	mov	r24, r22
    14da:	64 36       	cpi	r22, 0x64	; 100
    14dc:	08 f0       	brcs	.+2      	; 0x14e0 <_ZN11CLEDDisplay11display_decEh+0xa>
    14de:	83 e6       	ldi	r24, 0x63	; 99
    14e0:	6a e0       	ldi	r22, 0x0A	; 10
    14e2:	0e 94 85 0a 	call	0x150a	; 0x150a <__udivmodqi4>
    14e6:	e8 2f       	mov	r30, r24
    14e8:	f0 e0       	ldi	r31, 0x00	; 0
    14ea:	e8 55       	subi	r30, 0x58	; 88
    14ec:	ff 4f       	sbci	r31, 0xFF	; 255
    14ee:	20 81       	ld	r18, Z
    14f0:	20 95       	com	r18
    14f2:	13 96       	adiw	r26, 0x03	; 3
    14f4:	2c 93       	st	X, r18
    14f6:	13 97       	sbiw	r26, 0x03	; 3
    14f8:	e9 2f       	mov	r30, r25
    14fa:	f0 e0       	ldi	r31, 0x00	; 0
    14fc:	e8 55       	subi	r30, 0x58	; 88
    14fe:	ff 4f       	sbci	r31, 0xFF	; 255
    1500:	90 81       	ld	r25, Z
    1502:	90 95       	com	r25
    1504:	14 96       	adiw	r26, 0x04	; 4
    1506:	9c 93       	st	X, r25
    1508:	08 95       	ret

0000150a <__udivmodqi4>:
    150a:	99 1b       	sub	r25, r25
    150c:	79 e0       	ldi	r23, 0x09	; 9
    150e:	04 c0       	rjmp	.+8      	; 0x1518 <__udivmodqi4_ep>

00001510 <__udivmodqi4_loop>:
    1510:	99 1f       	adc	r25, r25
    1512:	96 17       	cp	r25, r22
    1514:	08 f0       	brcs	.+2      	; 0x1518 <__udivmodqi4_ep>
    1516:	96 1b       	sub	r25, r22

00001518 <__udivmodqi4_ep>:
    1518:	88 1f       	adc	r24, r24
    151a:	7a 95       	dec	r23
    151c:	c9 f7       	brne	.-14     	; 0x1510 <__udivmodqi4_loop>
    151e:	80 95       	com	r24
    1520:	08 95       	ret

00001522 <__divmodhi4>:
    1522:	97 fb       	bst	r25, 7
    1524:	07 2e       	mov	r0, r23
    1526:	16 f4       	brtc	.+4      	; 0x152c <__divmodhi4+0xa>
    1528:	00 94       	com	r0
    152a:	07 d0       	rcall	.+14     	; 0x153a <__divmodhi4_neg1>
    152c:	77 fd       	sbrc	r23, 7
    152e:	09 d0       	rcall	.+18     	; 0x1542 <__divmodhi4_neg2>
    1530:	0e 94 f1 0a 	call	0x15e2	; 0x15e2 <__udivmodhi4>
    1534:	07 fc       	sbrc	r0, 7
    1536:	05 d0       	rcall	.+10     	; 0x1542 <__divmodhi4_neg2>
    1538:	3e f4       	brtc	.+14     	; 0x1548 <__divmodhi4_exit>

0000153a <__divmodhi4_neg1>:
    153a:	90 95       	com	r25
    153c:	81 95       	neg	r24
    153e:	9f 4f       	sbci	r25, 0xFF	; 255
    1540:	08 95       	ret

00001542 <__divmodhi4_neg2>:
    1542:	70 95       	com	r23
    1544:	61 95       	neg	r22
    1546:	7f 4f       	sbci	r23, 0xFF	; 255

00001548 <__divmodhi4_exit>:
    1548:	08 95       	ret

0000154a <__udivmodsi4>:
    154a:	a1 e2       	ldi	r26, 0x21	; 33
    154c:	1a 2e       	mov	r1, r26
    154e:	aa 1b       	sub	r26, r26
    1550:	bb 1b       	sub	r27, r27
    1552:	fd 01       	movw	r30, r26
    1554:	0d c0       	rjmp	.+26     	; 0x1570 <__udivmodsi4_ep>

00001556 <__udivmodsi4_loop>:
    1556:	aa 1f       	adc	r26, r26
    1558:	bb 1f       	adc	r27, r27
    155a:	ee 1f       	adc	r30, r30
    155c:	ff 1f       	adc	r31, r31
    155e:	a2 17       	cp	r26, r18
    1560:	b3 07       	cpc	r27, r19
    1562:	e4 07       	cpc	r30, r20
    1564:	f5 07       	cpc	r31, r21
    1566:	20 f0       	brcs	.+8      	; 0x1570 <__udivmodsi4_ep>
    1568:	a2 1b       	sub	r26, r18
    156a:	b3 0b       	sbc	r27, r19
    156c:	e4 0b       	sbc	r30, r20
    156e:	f5 0b       	sbc	r31, r21

00001570 <__udivmodsi4_ep>:
    1570:	66 1f       	adc	r22, r22
    1572:	77 1f       	adc	r23, r23
    1574:	88 1f       	adc	r24, r24
    1576:	99 1f       	adc	r25, r25
    1578:	1a 94       	dec	r1
    157a:	69 f7       	brne	.-38     	; 0x1556 <__udivmodsi4_loop>
    157c:	60 95       	com	r22
    157e:	70 95       	com	r23
    1580:	80 95       	com	r24
    1582:	90 95       	com	r25
    1584:	9b 01       	movw	r18, r22
    1586:	ac 01       	movw	r20, r24
    1588:	bd 01       	movw	r22, r26
    158a:	cf 01       	movw	r24, r30
    158c:	08 95       	ret

0000158e <__divmodsi4>:
    158e:	05 2e       	mov	r0, r21
    1590:	97 fb       	bst	r25, 7
    1592:	1e f4       	brtc	.+6      	; 0x159a <__divmodsi4+0xc>
    1594:	00 94       	com	r0
    1596:	0e 94 de 0a 	call	0x15bc	; 0x15bc <__negsi2>
    159a:	57 fd       	sbrc	r21, 7
    159c:	07 d0       	rcall	.+14     	; 0x15ac <__divmodsi4_neg2>
    159e:	0e 94 a5 0a 	call	0x154a	; 0x154a <__udivmodsi4>
    15a2:	07 fc       	sbrc	r0, 7
    15a4:	03 d0       	rcall	.+6      	; 0x15ac <__divmodsi4_neg2>
    15a6:	4e f4       	brtc	.+18     	; 0x15ba <__divmodsi4_exit>
    15a8:	0c 94 de 0a 	jmp	0x15bc	; 0x15bc <__negsi2>

000015ac <__divmodsi4_neg2>:
    15ac:	50 95       	com	r21
    15ae:	40 95       	com	r20
    15b0:	30 95       	com	r19
    15b2:	21 95       	neg	r18
    15b4:	3f 4f       	sbci	r19, 0xFF	; 255
    15b6:	4f 4f       	sbci	r20, 0xFF	; 255
    15b8:	5f 4f       	sbci	r21, 0xFF	; 255

000015ba <__divmodsi4_exit>:
    15ba:	08 95       	ret

000015bc <__negsi2>:
    15bc:	90 95       	com	r25
    15be:	80 95       	com	r24
    15c0:	70 95       	com	r23
    15c2:	61 95       	neg	r22
    15c4:	7f 4f       	sbci	r23, 0xFF	; 255
    15c6:	8f 4f       	sbci	r24, 0xFF	; 255
    15c8:	9f 4f       	sbci	r25, 0xFF	; 255
    15ca:	08 95       	ret

000015cc <__muluhisi3>:
    15cc:	0e 94 0b 0b 	call	0x1616	; 0x1616 <__umulhisi3>
    15d0:	a5 9f       	mul	r26, r21
    15d2:	90 0d       	add	r25, r0
    15d4:	b4 9f       	mul	r27, r20
    15d6:	90 0d       	add	r25, r0
    15d8:	a4 9f       	mul	r26, r20
    15da:	80 0d       	add	r24, r0
    15dc:	91 1d       	adc	r25, r1
    15de:	11 24       	eor	r1, r1
    15e0:	08 95       	ret

000015e2 <__udivmodhi4>:
    15e2:	aa 1b       	sub	r26, r26
    15e4:	bb 1b       	sub	r27, r27
    15e6:	51 e1       	ldi	r21, 0x11	; 17
    15e8:	07 c0       	rjmp	.+14     	; 0x15f8 <__udivmodhi4_ep>

000015ea <__udivmodhi4_loop>:
    15ea:	aa 1f       	adc	r26, r26
    15ec:	bb 1f       	adc	r27, r27
    15ee:	a6 17       	cp	r26, r22
    15f0:	b7 07       	cpc	r27, r23
    15f2:	10 f0       	brcs	.+4      	; 0x15f8 <__udivmodhi4_ep>
    15f4:	a6 1b       	sub	r26, r22
    15f6:	b7 0b       	sbc	r27, r23

000015f8 <__udivmodhi4_ep>:
    15f8:	88 1f       	adc	r24, r24
    15fa:	99 1f       	adc	r25, r25
    15fc:	5a 95       	dec	r21
    15fe:	a9 f7       	brne	.-22     	; 0x15ea <__udivmodhi4_loop>
    1600:	80 95       	com	r24
    1602:	90 95       	com	r25
    1604:	bc 01       	movw	r22, r24
    1606:	cd 01       	movw	r24, r26
    1608:	08 95       	ret

0000160a <__tablejump2__>:
    160a:	ee 0f       	add	r30, r30
    160c:	ff 1f       	adc	r31, r31
    160e:	05 90       	lpm	r0, Z+
    1610:	f4 91       	lpm	r31, Z
    1612:	e0 2d       	mov	r30, r0
    1614:	09 94       	ijmp

00001616 <__umulhisi3>:
    1616:	a2 9f       	mul	r26, r18
    1618:	b0 01       	movw	r22, r0
    161a:	b3 9f       	mul	r27, r19
    161c:	c0 01       	movw	r24, r0
    161e:	a3 9f       	mul	r26, r19
    1620:	70 0d       	add	r23, r0
    1622:	81 1d       	adc	r24, r1
    1624:	11 24       	eor	r1, r1
    1626:	91 1d       	adc	r25, r1
    1628:	b2 9f       	mul	r27, r18
    162a:	70 0d       	add	r23, r0
    162c:	81 1d       	adc	r24, r1
    162e:	11 24       	eor	r1, r1
    1630:	91 1d       	adc	r25, r1
    1632:	08 95       	ret

00001634 <__subsf3>:
    1634:	50 58       	subi	r21, 0x80	; 128

00001636 <__addsf3>:
    1636:	bb 27       	eor	r27, r27
    1638:	aa 27       	eor	r26, r26
    163a:	0e 94 32 0b 	call	0x1664	; 0x1664 <__addsf3x>
    163e:	0c 94 db 0b 	jmp	0x17b6	; 0x17b6 <__fp_round>
    1642:	0e 94 cd 0b 	call	0x179a	; 0x179a <__fp_pscA>
    1646:	38 f0       	brcs	.+14     	; 0x1656 <__addsf3+0x20>
    1648:	0e 94 d4 0b 	call	0x17a8	; 0x17a8 <__fp_pscB>
    164c:	20 f0       	brcs	.+8      	; 0x1656 <__addsf3+0x20>
    164e:	39 f4       	brne	.+14     	; 0x165e <__addsf3+0x28>
    1650:	9f 3f       	cpi	r25, 0xFF	; 255
    1652:	19 f4       	brne	.+6      	; 0x165a <__addsf3+0x24>
    1654:	26 f4       	brtc	.+8      	; 0x165e <__addsf3+0x28>
    1656:	0c 94 ca 0b 	jmp	0x1794	; 0x1794 <__fp_nan>
    165a:	0e f4       	brtc	.+2      	; 0x165e <__addsf3+0x28>
    165c:	e0 95       	com	r30
    165e:	e7 fb       	bst	r30, 7
    1660:	0c 94 c4 0b 	jmp	0x1788	; 0x1788 <__fp_inf>

00001664 <__addsf3x>:
    1664:	e9 2f       	mov	r30, r25
    1666:	0e 94 ec 0b 	call	0x17d8	; 0x17d8 <__fp_split3>
    166a:	58 f3       	brcs	.-42     	; 0x1642 <__addsf3+0xc>
    166c:	ba 17       	cp	r27, r26
    166e:	62 07       	cpc	r22, r18
    1670:	73 07       	cpc	r23, r19
    1672:	84 07       	cpc	r24, r20
    1674:	95 07       	cpc	r25, r21
    1676:	20 f0       	brcs	.+8      	; 0x1680 <__addsf3x+0x1c>
    1678:	79 f4       	brne	.+30     	; 0x1698 <__addsf3x+0x34>
    167a:	a6 f5       	brtc	.+104    	; 0x16e4 <__addsf3x+0x80>
    167c:	0c 94 0e 0c 	jmp	0x181c	; 0x181c <__fp_zero>
    1680:	0e f4       	brtc	.+2      	; 0x1684 <__addsf3x+0x20>
    1682:	e0 95       	com	r30
    1684:	0b 2e       	mov	r0, r27
    1686:	ba 2f       	mov	r27, r26
    1688:	a0 2d       	mov	r26, r0
    168a:	0b 01       	movw	r0, r22
    168c:	b9 01       	movw	r22, r18
    168e:	90 01       	movw	r18, r0
    1690:	0c 01       	movw	r0, r24
    1692:	ca 01       	movw	r24, r20
    1694:	a0 01       	movw	r20, r0
    1696:	11 24       	eor	r1, r1
    1698:	ff 27       	eor	r31, r31
    169a:	59 1b       	sub	r21, r25
    169c:	99 f0       	breq	.+38     	; 0x16c4 <__addsf3x+0x60>
    169e:	59 3f       	cpi	r21, 0xF9	; 249
    16a0:	50 f4       	brcc	.+20     	; 0x16b6 <__addsf3x+0x52>
    16a2:	50 3e       	cpi	r21, 0xE0	; 224
    16a4:	68 f1       	brcs	.+90     	; 0x1700 <__addsf3x+0x9c>
    16a6:	1a 16       	cp	r1, r26
    16a8:	f0 40       	sbci	r31, 0x00	; 0
    16aa:	a2 2f       	mov	r26, r18
    16ac:	23 2f       	mov	r18, r19
    16ae:	34 2f       	mov	r19, r20
    16b0:	44 27       	eor	r20, r20
    16b2:	58 5f       	subi	r21, 0xF8	; 248
    16b4:	f3 cf       	rjmp	.-26     	; 0x169c <__addsf3x+0x38>
    16b6:	46 95       	lsr	r20
    16b8:	37 95       	ror	r19
    16ba:	27 95       	ror	r18
    16bc:	a7 95       	ror	r26
    16be:	f0 40       	sbci	r31, 0x00	; 0
    16c0:	53 95       	inc	r21
    16c2:	c9 f7       	brne	.-14     	; 0x16b6 <__addsf3x+0x52>
    16c4:	7e f4       	brtc	.+30     	; 0x16e4 <__addsf3x+0x80>
    16c6:	1f 16       	cp	r1, r31
    16c8:	ba 0b       	sbc	r27, r26
    16ca:	62 0b       	sbc	r22, r18
    16cc:	73 0b       	sbc	r23, r19
    16ce:	84 0b       	sbc	r24, r20
    16d0:	ba f0       	brmi	.+46     	; 0x1700 <__addsf3x+0x9c>
    16d2:	91 50       	subi	r25, 0x01	; 1
    16d4:	a1 f0       	breq	.+40     	; 0x16fe <__addsf3x+0x9a>
    16d6:	ff 0f       	add	r31, r31
    16d8:	bb 1f       	adc	r27, r27
    16da:	66 1f       	adc	r22, r22
    16dc:	77 1f       	adc	r23, r23
    16de:	88 1f       	adc	r24, r24
    16e0:	c2 f7       	brpl	.-16     	; 0x16d2 <__addsf3x+0x6e>
    16e2:	0e c0       	rjmp	.+28     	; 0x1700 <__addsf3x+0x9c>
    16e4:	ba 0f       	add	r27, r26
    16e6:	62 1f       	adc	r22, r18
    16e8:	73 1f       	adc	r23, r19
    16ea:	84 1f       	adc	r24, r20
    16ec:	48 f4       	brcc	.+18     	; 0x1700 <__addsf3x+0x9c>
    16ee:	87 95       	ror	r24
    16f0:	77 95       	ror	r23
    16f2:	67 95       	ror	r22
    16f4:	b7 95       	ror	r27
    16f6:	f7 95       	ror	r31
    16f8:	9e 3f       	cpi	r25, 0xFE	; 254
    16fa:	08 f0       	brcs	.+2      	; 0x16fe <__addsf3x+0x9a>
    16fc:	b0 cf       	rjmp	.-160    	; 0x165e <__addsf3+0x28>
    16fe:	93 95       	inc	r25
    1700:	88 0f       	add	r24, r24
    1702:	08 f0       	brcs	.+2      	; 0x1706 <__addsf3x+0xa2>
    1704:	99 27       	eor	r25, r25
    1706:	ee 0f       	add	r30, r30
    1708:	97 95       	ror	r25
    170a:	87 95       	ror	r24
    170c:	08 95       	ret

0000170e <__floatunsisf>:
    170e:	e8 94       	clt
    1710:	09 c0       	rjmp	.+18     	; 0x1724 <__floatsisf+0x12>

00001712 <__floatsisf>:
    1712:	97 fb       	bst	r25, 7
    1714:	3e f4       	brtc	.+14     	; 0x1724 <__floatsisf+0x12>
    1716:	90 95       	com	r25
    1718:	80 95       	com	r24
    171a:	70 95       	com	r23
    171c:	61 95       	neg	r22
    171e:	7f 4f       	sbci	r23, 0xFF	; 255
    1720:	8f 4f       	sbci	r24, 0xFF	; 255
    1722:	9f 4f       	sbci	r25, 0xFF	; 255
    1724:	99 23       	and	r25, r25
    1726:	a9 f0       	breq	.+42     	; 0x1752 <__floatsisf+0x40>
    1728:	f9 2f       	mov	r31, r25
    172a:	96 e9       	ldi	r25, 0x96	; 150
    172c:	bb 27       	eor	r27, r27
    172e:	93 95       	inc	r25
    1730:	f6 95       	lsr	r31
    1732:	87 95       	ror	r24
    1734:	77 95       	ror	r23
    1736:	67 95       	ror	r22
    1738:	b7 95       	ror	r27
    173a:	f1 11       	cpse	r31, r1
    173c:	f8 cf       	rjmp	.-16     	; 0x172e <__floatsisf+0x1c>
    173e:	fa f4       	brpl	.+62     	; 0x177e <__floatsisf+0x6c>
    1740:	bb 0f       	add	r27, r27
    1742:	11 f4       	brne	.+4      	; 0x1748 <__floatsisf+0x36>
    1744:	60 ff       	sbrs	r22, 0
    1746:	1b c0       	rjmp	.+54     	; 0x177e <__floatsisf+0x6c>
    1748:	6f 5f       	subi	r22, 0xFF	; 255
    174a:	7f 4f       	sbci	r23, 0xFF	; 255
    174c:	8f 4f       	sbci	r24, 0xFF	; 255
    174e:	9f 4f       	sbci	r25, 0xFF	; 255
    1750:	16 c0       	rjmp	.+44     	; 0x177e <__floatsisf+0x6c>
    1752:	88 23       	and	r24, r24
    1754:	11 f0       	breq	.+4      	; 0x175a <__floatsisf+0x48>
    1756:	96 e9       	ldi	r25, 0x96	; 150
    1758:	11 c0       	rjmp	.+34     	; 0x177c <__floatsisf+0x6a>
    175a:	77 23       	and	r23, r23
    175c:	21 f0       	breq	.+8      	; 0x1766 <__floatsisf+0x54>
    175e:	9e e8       	ldi	r25, 0x8E	; 142
    1760:	87 2f       	mov	r24, r23
    1762:	76 2f       	mov	r23, r22
    1764:	05 c0       	rjmp	.+10     	; 0x1770 <__floatsisf+0x5e>
    1766:	66 23       	and	r22, r22
    1768:	71 f0       	breq	.+28     	; 0x1786 <__floatsisf+0x74>
    176a:	96 e8       	ldi	r25, 0x86	; 134
    176c:	86 2f       	mov	r24, r22
    176e:	70 e0       	ldi	r23, 0x00	; 0
    1770:	60 e0       	ldi	r22, 0x00	; 0
    1772:	2a f0       	brmi	.+10     	; 0x177e <__floatsisf+0x6c>
    1774:	9a 95       	dec	r25
    1776:	66 0f       	add	r22, r22
    1778:	77 1f       	adc	r23, r23
    177a:	88 1f       	adc	r24, r24
    177c:	da f7       	brpl	.-10     	; 0x1774 <__floatsisf+0x62>
    177e:	88 0f       	add	r24, r24
    1780:	96 95       	lsr	r25
    1782:	87 95       	ror	r24
    1784:	97 f9       	bld	r25, 7
    1786:	08 95       	ret

00001788 <__fp_inf>:
    1788:	97 f9       	bld	r25, 7
    178a:	9f 67       	ori	r25, 0x7F	; 127
    178c:	80 e8       	ldi	r24, 0x80	; 128
    178e:	70 e0       	ldi	r23, 0x00	; 0
    1790:	60 e0       	ldi	r22, 0x00	; 0
    1792:	08 95       	ret

00001794 <__fp_nan>:
    1794:	9f ef       	ldi	r25, 0xFF	; 255
    1796:	80 ec       	ldi	r24, 0xC0	; 192
    1798:	08 95       	ret

0000179a <__fp_pscA>:
    179a:	00 24       	eor	r0, r0
    179c:	0a 94       	dec	r0
    179e:	16 16       	cp	r1, r22
    17a0:	17 06       	cpc	r1, r23
    17a2:	18 06       	cpc	r1, r24
    17a4:	09 06       	cpc	r0, r25
    17a6:	08 95       	ret

000017a8 <__fp_pscB>:
    17a8:	00 24       	eor	r0, r0
    17aa:	0a 94       	dec	r0
    17ac:	12 16       	cp	r1, r18
    17ae:	13 06       	cpc	r1, r19
    17b0:	14 06       	cpc	r1, r20
    17b2:	05 06       	cpc	r0, r21
    17b4:	08 95       	ret

000017b6 <__fp_round>:
    17b6:	09 2e       	mov	r0, r25
    17b8:	03 94       	inc	r0
    17ba:	00 0c       	add	r0, r0
    17bc:	11 f4       	brne	.+4      	; 0x17c2 <__fp_round+0xc>
    17be:	88 23       	and	r24, r24
    17c0:	52 f0       	brmi	.+20     	; 0x17d6 <__fp_round+0x20>
    17c2:	bb 0f       	add	r27, r27
    17c4:	40 f4       	brcc	.+16     	; 0x17d6 <__fp_round+0x20>
    17c6:	bf 2b       	or	r27, r31
    17c8:	11 f4       	brne	.+4      	; 0x17ce <__fp_round+0x18>
    17ca:	60 ff       	sbrs	r22, 0
    17cc:	04 c0       	rjmp	.+8      	; 0x17d6 <__fp_round+0x20>
    17ce:	6f 5f       	subi	r22, 0xFF	; 255
    17d0:	7f 4f       	sbci	r23, 0xFF	; 255
    17d2:	8f 4f       	sbci	r24, 0xFF	; 255
    17d4:	9f 4f       	sbci	r25, 0xFF	; 255
    17d6:	08 95       	ret

000017d8 <__fp_split3>:
    17d8:	57 fd       	sbrc	r21, 7
    17da:	90 58       	subi	r25, 0x80	; 128
    17dc:	44 0f       	add	r20, r20
    17de:	55 1f       	adc	r21, r21
    17e0:	59 f0       	breq	.+22     	; 0x17f8 <__fp_splitA+0x10>
    17e2:	5f 3f       	cpi	r21, 0xFF	; 255
    17e4:	71 f0       	breq	.+28     	; 0x1802 <__fp_splitA+0x1a>
    17e6:	47 95       	ror	r20

000017e8 <__fp_splitA>:
    17e8:	88 0f       	add	r24, r24
    17ea:	97 fb       	bst	r25, 7
    17ec:	99 1f       	adc	r25, r25
    17ee:	61 f0       	breq	.+24     	; 0x1808 <__fp_splitA+0x20>
    17f0:	9f 3f       	cpi	r25, 0xFF	; 255
    17f2:	79 f0       	breq	.+30     	; 0x1812 <__fp_splitA+0x2a>
    17f4:	87 95       	ror	r24
    17f6:	08 95       	ret
    17f8:	12 16       	cp	r1, r18
    17fa:	13 06       	cpc	r1, r19
    17fc:	14 06       	cpc	r1, r20
    17fe:	55 1f       	adc	r21, r21
    1800:	f2 cf       	rjmp	.-28     	; 0x17e6 <__fp_split3+0xe>
    1802:	46 95       	lsr	r20
    1804:	f1 df       	rcall	.-30     	; 0x17e8 <__fp_splitA>
    1806:	08 c0       	rjmp	.+16     	; 0x1818 <__fp_splitA+0x30>
    1808:	16 16       	cp	r1, r22
    180a:	17 06       	cpc	r1, r23
    180c:	18 06       	cpc	r1, r24
    180e:	99 1f       	adc	r25, r25
    1810:	f1 cf       	rjmp	.-30     	; 0x17f4 <__fp_splitA+0xc>
    1812:	86 95       	lsr	r24
    1814:	71 05       	cpc	r23, r1
    1816:	61 05       	cpc	r22, r1
    1818:	08 94       	sec
    181a:	08 95       	ret

0000181c <__fp_zero>:
    181c:	e8 94       	clt

0000181e <__fp_szero>:
    181e:	bb 27       	eor	r27, r27
    1820:	66 27       	eor	r22, r22
    1822:	77 27       	eor	r23, r23
    1824:	cb 01       	movw	r24, r22
    1826:	97 f9       	bld	r25, 7
    1828:	08 95       	ret

0000182a <__mulsf3>:
    182a:	0e 94 28 0c 	call	0x1850	; 0x1850 <__mulsf3x>
    182e:	0c 94 db 0b 	jmp	0x17b6	; 0x17b6 <__fp_round>
    1832:	0e 94 cd 0b 	call	0x179a	; 0x179a <__fp_pscA>
    1836:	38 f0       	brcs	.+14     	; 0x1846 <__mulsf3+0x1c>
    1838:	0e 94 d4 0b 	call	0x17a8	; 0x17a8 <__fp_pscB>
    183c:	20 f0       	brcs	.+8      	; 0x1846 <__mulsf3+0x1c>
    183e:	95 23       	and	r25, r21
    1840:	11 f0       	breq	.+4      	; 0x1846 <__mulsf3+0x1c>
    1842:	0c 94 c4 0b 	jmp	0x1788	; 0x1788 <__fp_inf>
    1846:	0c 94 ca 0b 	jmp	0x1794	; 0x1794 <__fp_nan>
    184a:	11 24       	eor	r1, r1
    184c:	0c 94 0f 0c 	jmp	0x181e	; 0x181e <__fp_szero>

00001850 <__mulsf3x>:
    1850:	0e 94 ec 0b 	call	0x17d8	; 0x17d8 <__fp_split3>
    1854:	70 f3       	brcs	.-36     	; 0x1832 <__mulsf3+0x8>

00001856 <__mulsf3_pse>:
    1856:	95 9f       	mul	r25, r21
    1858:	c1 f3       	breq	.-16     	; 0x184a <__mulsf3+0x20>
    185a:	95 0f       	add	r25, r21
    185c:	50 e0       	ldi	r21, 0x00	; 0
    185e:	55 1f       	adc	r21, r21
    1860:	62 9f       	mul	r22, r18
    1862:	f0 01       	movw	r30, r0
    1864:	72 9f       	mul	r23, r18
    1866:	bb 27       	eor	r27, r27
    1868:	f0 0d       	add	r31, r0
    186a:	b1 1d       	adc	r27, r1
    186c:	63 9f       	mul	r22, r19
    186e:	aa 27       	eor	r26, r26
    1870:	f0 0d       	add	r31, r0
    1872:	b1 1d       	adc	r27, r1
    1874:	aa 1f       	adc	r26, r26
    1876:	64 9f       	mul	r22, r20
    1878:	66 27       	eor	r22, r22
    187a:	b0 0d       	add	r27, r0
    187c:	a1 1d       	adc	r26, r1
    187e:	66 1f       	adc	r22, r22
    1880:	82 9f       	mul	r24, r18
    1882:	22 27       	eor	r18, r18
    1884:	b0 0d       	add	r27, r0
    1886:	a1 1d       	adc	r26, r1
    1888:	62 1f       	adc	r22, r18
    188a:	73 9f       	mul	r23, r19
    188c:	b0 0d       	add	r27, r0
    188e:	a1 1d       	adc	r26, r1
    1890:	62 1f       	adc	r22, r18
    1892:	83 9f       	mul	r24, r19
    1894:	a0 0d       	add	r26, r0
    1896:	61 1d       	adc	r22, r1
    1898:	22 1f       	adc	r18, r18
    189a:	74 9f       	mul	r23, r20
    189c:	33 27       	eor	r19, r19
    189e:	a0 0d       	add	r26, r0
    18a0:	61 1d       	adc	r22, r1
    18a2:	23 1f       	adc	r18, r19
    18a4:	84 9f       	mul	r24, r20
    18a6:	60 0d       	add	r22, r0
    18a8:	21 1d       	adc	r18, r1
    18aa:	82 2f       	mov	r24, r18
    18ac:	76 2f       	mov	r23, r22
    18ae:	6a 2f       	mov	r22, r26
    18b0:	11 24       	eor	r1, r1
    18b2:	9f 57       	subi	r25, 0x7F	; 127
    18b4:	50 40       	sbci	r21, 0x00	; 0
    18b6:	9a f0       	brmi	.+38     	; 0x18de <__mulsf3_pse+0x88>
    18b8:	f1 f0       	breq	.+60     	; 0x18f6 <__mulsf3_pse+0xa0>
    18ba:	88 23       	and	r24, r24
    18bc:	4a f0       	brmi	.+18     	; 0x18d0 <__mulsf3_pse+0x7a>
    18be:	ee 0f       	add	r30, r30
    18c0:	ff 1f       	adc	r31, r31
    18c2:	bb 1f       	adc	r27, r27
    18c4:	66 1f       	adc	r22, r22
    18c6:	77 1f       	adc	r23, r23
    18c8:	88 1f       	adc	r24, r24
    18ca:	91 50       	subi	r25, 0x01	; 1
    18cc:	50 40       	sbci	r21, 0x00	; 0
    18ce:	a9 f7       	brne	.-22     	; 0x18ba <__mulsf3_pse+0x64>
    18d0:	9e 3f       	cpi	r25, 0xFE	; 254
    18d2:	51 05       	cpc	r21, r1
    18d4:	80 f0       	brcs	.+32     	; 0x18f6 <__mulsf3_pse+0xa0>
    18d6:	0c 94 c4 0b 	jmp	0x1788	; 0x1788 <__fp_inf>
    18da:	0c 94 0f 0c 	jmp	0x181e	; 0x181e <__fp_szero>
    18de:	5f 3f       	cpi	r21, 0xFF	; 255
    18e0:	e4 f3       	brlt	.-8      	; 0x18da <__mulsf3_pse+0x84>
    18e2:	98 3e       	cpi	r25, 0xE8	; 232
    18e4:	d4 f3       	brlt	.-12     	; 0x18da <__mulsf3_pse+0x84>
    18e6:	86 95       	lsr	r24
    18e8:	77 95       	ror	r23
    18ea:	67 95       	ror	r22
    18ec:	b7 95       	ror	r27
    18ee:	f7 95       	ror	r31
    18f0:	e7 95       	ror	r30
    18f2:	9f 5f       	subi	r25, 0xFF	; 255
    18f4:	c1 f7       	brne	.-16     	; 0x18e6 <__mulsf3_pse+0x90>
    18f6:	fe 2b       	or	r31, r30
    18f8:	88 0f       	add	r24, r24
    18fa:	91 1d       	adc	r25, r1
    18fc:	96 95       	lsr	r25
    18fe:	87 95       	ror	r24
    1900:	97 f9       	bld	r25, 7
    1902:	08 95       	ret

00001904 <malloc>:
    1904:	cf 93       	push	r28
    1906:	df 93       	push	r29
    1908:	82 30       	cpi	r24, 0x02	; 2
    190a:	91 05       	cpc	r25, r1
    190c:	10 f4       	brcc	.+4      	; 0x1912 <malloc+0xe>
    190e:	82 e0       	ldi	r24, 0x02	; 2
    1910:	90 e0       	ldi	r25, 0x00	; 0
    1912:	e0 91 4a 01 	lds	r30, 0x014A
    1916:	f0 91 4b 01 	lds	r31, 0x014B
    191a:	20 e0       	ldi	r18, 0x00	; 0
    191c:	30 e0       	ldi	r19, 0x00	; 0
    191e:	c0 e0       	ldi	r28, 0x00	; 0
    1920:	d0 e0       	ldi	r29, 0x00	; 0
    1922:	30 97       	sbiw	r30, 0x00	; 0
    1924:	11 f1       	breq	.+68     	; 0x196a <malloc+0x66>
    1926:	40 81       	ld	r20, Z
    1928:	51 81       	ldd	r21, Z+1	; 0x01
    192a:	48 17       	cp	r20, r24
    192c:	59 07       	cpc	r21, r25
    192e:	c0 f0       	brcs	.+48     	; 0x1960 <malloc+0x5c>
    1930:	48 17       	cp	r20, r24
    1932:	59 07       	cpc	r21, r25
    1934:	61 f4       	brne	.+24     	; 0x194e <malloc+0x4a>
    1936:	82 81       	ldd	r24, Z+2	; 0x02
    1938:	93 81       	ldd	r25, Z+3	; 0x03
    193a:	20 97       	sbiw	r28, 0x00	; 0
    193c:	19 f0       	breq	.+6      	; 0x1944 <malloc+0x40>
    193e:	9b 83       	std	Y+3, r25	; 0x03
    1940:	8a 83       	std	Y+2, r24	; 0x02
    1942:	2b c0       	rjmp	.+86     	; 0x199a <malloc+0x96>
    1944:	90 93 4b 01 	sts	0x014B, r25
    1948:	80 93 4a 01 	sts	0x014A, r24
    194c:	26 c0       	rjmp	.+76     	; 0x199a <malloc+0x96>
    194e:	21 15       	cp	r18, r1
    1950:	31 05       	cpc	r19, r1
    1952:	19 f0       	breq	.+6      	; 0x195a <malloc+0x56>
    1954:	42 17       	cp	r20, r18
    1956:	53 07       	cpc	r21, r19
    1958:	18 f4       	brcc	.+6      	; 0x1960 <malloc+0x5c>
    195a:	9a 01       	movw	r18, r20
    195c:	be 01       	movw	r22, r28
    195e:	df 01       	movw	r26, r30
    1960:	ef 01       	movw	r28, r30
    1962:	02 80       	ldd	r0, Z+2	; 0x02
    1964:	f3 81       	ldd	r31, Z+3	; 0x03
    1966:	e0 2d       	mov	r30, r0
    1968:	dc cf       	rjmp	.-72     	; 0x1922 <malloc+0x1e>
    196a:	21 15       	cp	r18, r1
    196c:	31 05       	cpc	r19, r1
    196e:	09 f1       	breq	.+66     	; 0x19b2 <malloc+0xae>
    1970:	28 1b       	sub	r18, r24
    1972:	39 0b       	sbc	r19, r25
    1974:	24 30       	cpi	r18, 0x04	; 4
    1976:	31 05       	cpc	r19, r1
    1978:	90 f4       	brcc	.+36     	; 0x199e <malloc+0x9a>
    197a:	12 96       	adiw	r26, 0x02	; 2
    197c:	8d 91       	ld	r24, X+
    197e:	9c 91       	ld	r25, X
    1980:	13 97       	sbiw	r26, 0x03	; 3
    1982:	61 15       	cp	r22, r1
    1984:	71 05       	cpc	r23, r1
    1986:	21 f0       	breq	.+8      	; 0x1990 <malloc+0x8c>
    1988:	fb 01       	movw	r30, r22
    198a:	93 83       	std	Z+3, r25	; 0x03
    198c:	82 83       	std	Z+2, r24	; 0x02
    198e:	04 c0       	rjmp	.+8      	; 0x1998 <malloc+0x94>
    1990:	90 93 4b 01 	sts	0x014B, r25
    1994:	80 93 4a 01 	sts	0x014A, r24
    1998:	fd 01       	movw	r30, r26
    199a:	32 96       	adiw	r30, 0x02	; 2
    199c:	44 c0       	rjmp	.+136    	; 0x1a26 <malloc+0x122>
    199e:	fd 01       	movw	r30, r26
    19a0:	e2 0f       	add	r30, r18
    19a2:	f3 1f       	adc	r31, r19
    19a4:	81 93       	st	Z+, r24
    19a6:	91 93       	st	Z+, r25
    19a8:	22 50       	subi	r18, 0x02	; 2
    19aa:	31 09       	sbc	r19, r1
    19ac:	2d 93       	st	X+, r18
    19ae:	3c 93       	st	X, r19
    19b0:	3a c0       	rjmp	.+116    	; 0x1a26 <malloc+0x122>
    19b2:	20 91 48 01 	lds	r18, 0x0148
    19b6:	30 91 49 01 	lds	r19, 0x0149
    19ba:	23 2b       	or	r18, r19
    19bc:	41 f4       	brne	.+16     	; 0x19ce <malloc+0xca>
    19be:	20 91 62 00 	lds	r18, 0x0062
    19c2:	30 91 63 00 	lds	r19, 0x0063
    19c6:	30 93 49 01 	sts	0x0149, r19
    19ca:	20 93 48 01 	sts	0x0148, r18
    19ce:	20 91 60 00 	lds	r18, 0x0060
    19d2:	30 91 61 00 	lds	r19, 0x0061
    19d6:	21 15       	cp	r18, r1
    19d8:	31 05       	cpc	r19, r1
    19da:	41 f4       	brne	.+16     	; 0x19ec <malloc+0xe8>
    19dc:	2d b7       	in	r18, 0x3d	; 61
    19de:	3e b7       	in	r19, 0x3e	; 62
    19e0:	40 91 64 00 	lds	r20, 0x0064
    19e4:	50 91 65 00 	lds	r21, 0x0065
    19e8:	24 1b       	sub	r18, r20
    19ea:	35 0b       	sbc	r19, r21
    19ec:	e0 91 48 01 	lds	r30, 0x0148
    19f0:	f0 91 49 01 	lds	r31, 0x0149
    19f4:	e2 17       	cp	r30, r18
    19f6:	f3 07       	cpc	r31, r19
    19f8:	a0 f4       	brcc	.+40     	; 0x1a22 <malloc+0x11e>
    19fa:	2e 1b       	sub	r18, r30
    19fc:	3f 0b       	sbc	r19, r31
    19fe:	28 17       	cp	r18, r24
    1a00:	39 07       	cpc	r19, r25
    1a02:	78 f0       	brcs	.+30     	; 0x1a22 <malloc+0x11e>
    1a04:	ac 01       	movw	r20, r24
    1a06:	4e 5f       	subi	r20, 0xFE	; 254
    1a08:	5f 4f       	sbci	r21, 0xFF	; 255
    1a0a:	24 17       	cp	r18, r20
    1a0c:	35 07       	cpc	r19, r21
    1a0e:	48 f0       	brcs	.+18     	; 0x1a22 <malloc+0x11e>
    1a10:	4e 0f       	add	r20, r30
    1a12:	5f 1f       	adc	r21, r31
    1a14:	50 93 49 01 	sts	0x0149, r21
    1a18:	40 93 48 01 	sts	0x0148, r20
    1a1c:	81 93       	st	Z+, r24
    1a1e:	91 93       	st	Z+, r25
    1a20:	02 c0       	rjmp	.+4      	; 0x1a26 <malloc+0x122>
    1a22:	e0 e0       	ldi	r30, 0x00	; 0
    1a24:	f0 e0       	ldi	r31, 0x00	; 0
    1a26:	cf 01       	movw	r24, r30
    1a28:	df 91       	pop	r29
    1a2a:	cf 91       	pop	r28
    1a2c:	08 95       	ret

00001a2e <free>:
    1a2e:	0f 93       	push	r16
    1a30:	1f 93       	push	r17
    1a32:	cf 93       	push	r28
    1a34:	df 93       	push	r29
    1a36:	00 97       	sbiw	r24, 0x00	; 0
    1a38:	09 f4       	brne	.+2      	; 0x1a3c <free+0xe>
    1a3a:	8c c0       	rjmp	.+280    	; 0x1b54 <free+0x126>
    1a3c:	fc 01       	movw	r30, r24
    1a3e:	32 97       	sbiw	r30, 0x02	; 2
    1a40:	13 82       	std	Z+3, r1	; 0x03
    1a42:	12 82       	std	Z+2, r1	; 0x02
    1a44:	00 91 4a 01 	lds	r16, 0x014A
    1a48:	10 91 4b 01 	lds	r17, 0x014B
    1a4c:	01 15       	cp	r16, r1
    1a4e:	11 05       	cpc	r17, r1
    1a50:	81 f4       	brne	.+32     	; 0x1a72 <free+0x44>
    1a52:	20 81       	ld	r18, Z
    1a54:	31 81       	ldd	r19, Z+1	; 0x01
    1a56:	82 0f       	add	r24, r18
    1a58:	93 1f       	adc	r25, r19
    1a5a:	20 91 48 01 	lds	r18, 0x0148
    1a5e:	30 91 49 01 	lds	r19, 0x0149
    1a62:	28 17       	cp	r18, r24
    1a64:	39 07       	cpc	r19, r25
    1a66:	79 f5       	brne	.+94     	; 0x1ac6 <free+0x98>
    1a68:	f0 93 49 01 	sts	0x0149, r31
    1a6c:	e0 93 48 01 	sts	0x0148, r30
    1a70:	71 c0       	rjmp	.+226    	; 0x1b54 <free+0x126>
    1a72:	d8 01       	movw	r26, r16
    1a74:	40 e0       	ldi	r20, 0x00	; 0
    1a76:	50 e0       	ldi	r21, 0x00	; 0
    1a78:	ae 17       	cp	r26, r30
    1a7a:	bf 07       	cpc	r27, r31
    1a7c:	50 f4       	brcc	.+20     	; 0x1a92 <free+0x64>
    1a7e:	12 96       	adiw	r26, 0x02	; 2
    1a80:	2d 91       	ld	r18, X+
    1a82:	3c 91       	ld	r19, X
    1a84:	13 97       	sbiw	r26, 0x03	; 3
    1a86:	ad 01       	movw	r20, r26
    1a88:	21 15       	cp	r18, r1
    1a8a:	31 05       	cpc	r19, r1
    1a8c:	09 f1       	breq	.+66     	; 0x1ad0 <free+0xa2>
    1a8e:	d9 01       	movw	r26, r18
    1a90:	f3 cf       	rjmp	.-26     	; 0x1a78 <free+0x4a>
    1a92:	9d 01       	movw	r18, r26
    1a94:	da 01       	movw	r26, r20
    1a96:	33 83       	std	Z+3, r19	; 0x03
    1a98:	22 83       	std	Z+2, r18	; 0x02
    1a9a:	60 81       	ld	r22, Z
    1a9c:	71 81       	ldd	r23, Z+1	; 0x01
    1a9e:	86 0f       	add	r24, r22
    1aa0:	97 1f       	adc	r25, r23
    1aa2:	82 17       	cp	r24, r18
    1aa4:	93 07       	cpc	r25, r19
    1aa6:	69 f4       	brne	.+26     	; 0x1ac2 <free+0x94>
    1aa8:	ec 01       	movw	r28, r24
    1aaa:	28 81       	ld	r18, Y
    1aac:	39 81       	ldd	r19, Y+1	; 0x01
    1aae:	26 0f       	add	r18, r22
    1ab0:	37 1f       	adc	r19, r23
    1ab2:	2e 5f       	subi	r18, 0xFE	; 254
    1ab4:	3f 4f       	sbci	r19, 0xFF	; 255
    1ab6:	31 83       	std	Z+1, r19	; 0x01
    1ab8:	20 83       	st	Z, r18
    1aba:	8a 81       	ldd	r24, Y+2	; 0x02
    1abc:	9b 81       	ldd	r25, Y+3	; 0x03
    1abe:	93 83       	std	Z+3, r25	; 0x03
    1ac0:	82 83       	std	Z+2, r24	; 0x02
    1ac2:	45 2b       	or	r20, r21
    1ac4:	29 f4       	brne	.+10     	; 0x1ad0 <free+0xa2>
    1ac6:	f0 93 4b 01 	sts	0x014B, r31
    1aca:	e0 93 4a 01 	sts	0x014A, r30
    1ace:	42 c0       	rjmp	.+132    	; 0x1b54 <free+0x126>
    1ad0:	13 96       	adiw	r26, 0x03	; 3
    1ad2:	fc 93       	st	X, r31
    1ad4:	ee 93       	st	-X, r30
    1ad6:	12 97       	sbiw	r26, 0x02	; 2
    1ad8:	ed 01       	movw	r28, r26
    1ada:	49 91       	ld	r20, Y+
    1adc:	59 91       	ld	r21, Y+
    1ade:	9e 01       	movw	r18, r28
    1ae0:	24 0f       	add	r18, r20
    1ae2:	35 1f       	adc	r19, r21
    1ae4:	e2 17       	cp	r30, r18
    1ae6:	f3 07       	cpc	r31, r19
    1ae8:	71 f4       	brne	.+28     	; 0x1b06 <free+0xd8>
    1aea:	80 81       	ld	r24, Z
    1aec:	91 81       	ldd	r25, Z+1	; 0x01
    1aee:	84 0f       	add	r24, r20
    1af0:	95 1f       	adc	r25, r21
    1af2:	02 96       	adiw	r24, 0x02	; 2
    1af4:	11 96       	adiw	r26, 0x01	; 1
    1af6:	9c 93       	st	X, r25
    1af8:	8e 93       	st	-X, r24
    1afa:	82 81       	ldd	r24, Z+2	; 0x02
    1afc:	93 81       	ldd	r25, Z+3	; 0x03
    1afe:	13 96       	adiw	r26, 0x03	; 3
    1b00:	9c 93       	st	X, r25
    1b02:	8e 93       	st	-X, r24
    1b04:	12 97       	sbiw	r26, 0x02	; 2
    1b06:	e0 e0       	ldi	r30, 0x00	; 0
    1b08:	f0 e0       	ldi	r31, 0x00	; 0
    1b0a:	d8 01       	movw	r26, r16
    1b0c:	12 96       	adiw	r26, 0x02	; 2
    1b0e:	8d 91       	ld	r24, X+
    1b10:	9c 91       	ld	r25, X
    1b12:	13 97       	sbiw	r26, 0x03	; 3
    1b14:	00 97       	sbiw	r24, 0x00	; 0
    1b16:	19 f0       	breq	.+6      	; 0x1b1e <free+0xf0>
    1b18:	f8 01       	movw	r30, r16
    1b1a:	8c 01       	movw	r16, r24
    1b1c:	f6 cf       	rjmp	.-20     	; 0x1b0a <free+0xdc>
    1b1e:	8d 91       	ld	r24, X+
    1b20:	9c 91       	ld	r25, X
    1b22:	98 01       	movw	r18, r16
    1b24:	2e 5f       	subi	r18, 0xFE	; 254
    1b26:	3f 4f       	sbci	r19, 0xFF	; 255
    1b28:	82 0f       	add	r24, r18
    1b2a:	93 1f       	adc	r25, r19
    1b2c:	20 91 48 01 	lds	r18, 0x0148
    1b30:	30 91 49 01 	lds	r19, 0x0149
    1b34:	28 17       	cp	r18, r24
    1b36:	39 07       	cpc	r19, r25
    1b38:	69 f4       	brne	.+26     	; 0x1b54 <free+0x126>
    1b3a:	30 97       	sbiw	r30, 0x00	; 0
    1b3c:	29 f4       	brne	.+10     	; 0x1b48 <free+0x11a>
    1b3e:	10 92 4b 01 	sts	0x014B, r1
    1b42:	10 92 4a 01 	sts	0x014A, r1
    1b46:	02 c0       	rjmp	.+4      	; 0x1b4c <free+0x11e>
    1b48:	13 82       	std	Z+3, r1	; 0x03
    1b4a:	12 82       	std	Z+2, r1	; 0x02
    1b4c:	10 93 49 01 	sts	0x0149, r17
    1b50:	00 93 48 01 	sts	0x0148, r16
    1b54:	df 91       	pop	r29
    1b56:	cf 91       	pop	r28
    1b58:	1f 91       	pop	r17
    1b5a:	0f 91       	pop	r16
    1b5c:	08 95       	ret

00001b5e <__do_global_dtors>:
    1b5e:	10 e0       	ldi	r17, 0x00	; 0
    1b60:	ce e2       	ldi	r28, 0x2E	; 46
    1b62:	d0 e0       	ldi	r29, 0x00	; 0
    1b64:	04 c0       	rjmp	.+8      	; 0x1b6e <__do_global_dtors+0x10>
    1b66:	fe 01       	movw	r30, r28
    1b68:	0e 94 05 0b 	call	0x160a	; 0x160a <__tablejump2__>
    1b6c:	21 96       	adiw	r28, 0x01	; 1
    1b6e:	c0 33       	cpi	r28, 0x30	; 48
    1b70:	d1 07       	cpc	r29, r17
    1b72:	c9 f7       	brne	.-14     	; 0x1b66 <__do_global_dtors+0x8>
    1b74:	f8 94       	cli

00001b76 <__stop_program>:
    1b76:	ff cf       	rjmp	.-2      	; 0x1b76 <__stop_program>
