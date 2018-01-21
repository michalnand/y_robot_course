
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
      4c:	0c 94 7b 01 	jmp	0x2f6	; 0x2f6 <__vector_19>
      50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
      54:	bf 01       	movw	r22, r30
      56:	42 04       	cpc	r4, r2
      58:	d5 07       	cpc	r29, r21

0000005a <__ctors_end>:
      5a:	d9 07       	cpc	r29, r25

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
      6e:	ea e1       	ldi	r30, 0x1A	; 26
      70:	f3 e1       	ldi	r31, 0x13	; 19
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
      9a:	0e 94 3e 08 	call	0x107c	; 0x107c <__tablejump2__>
      9e:	ca 32       	cpi	r28, 0x2A	; 42
      a0:	d1 07       	cpc	r29, r17
      a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
      a4:	0e 94 b5 00 	call	0x16a	; 0x16a <main>
      a8:	0c 94 80 09 	jmp	0x1300	; 0x1300 <__do_global_dtors>

000000ac <__bad_interrupt>:
      ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN5BlinkD1Ev>:
      b0:	08 95       	ret

000000b2 <_ZN5BlinkD0Ev>:
      b2:	0c 94 4f 04 	jmp	0x89e	; 0x89e <_ZdlPv>

000000b6 <_ZN9LaserTask4mainEv>:
      b6:	cf 92       	push	r12
      b8:	df 92       	push	r13
      ba:	ef 92       	push	r14
      bc:	ff 92       	push	r15
      be:	cf 93       	push	r28
      c0:	df 93       	push	r29
      c2:	ec 01       	movw	r28, r24
      c4:	29 8d       	ldd	r18, Y+25	; 0x19
      c6:	3a 8d       	ldd	r19, Y+26	; 0x1a
      c8:	4b 8d       	ldd	r20, Y+27	; 0x1b
      ca:	5c 8d       	ldd	r21, Y+28	; 0x1c
      cc:	af e1       	ldi	r26, 0x1F	; 31
      ce:	b0 e0       	ldi	r27, 0x00	; 0
      d0:	0e 94 1f 08 	call	0x103e	; 0x103e <__muluhisi3>
      d4:	6b 01       	movw	r12, r22
      d6:	7c 01       	movw	r14, r24
      d8:	ce 01       	movw	r24, r28
      da:	02 96       	adiw	r24, 0x02	; 2
      dc:	0e 94 a0 04 	call	0x940	; 0x940 <_ZN7VL53L0X4readEv>
      e0:	44 97       	sbiw	r24, 0x14	; 20
      e2:	09 2e       	mov	r0, r25
      e4:	00 0c       	add	r0, r0
      e6:	aa 0b       	sbc	r26, r26
      e8:	bb 0b       	sbc	r27, r27
      ea:	8c 0d       	add	r24, r12
      ec:	9d 1d       	adc	r25, r13
      ee:	ae 1d       	adc	r26, r14
      f0:	bf 1d       	adc	r27, r15
      f2:	25 e0       	ldi	r18, 0x05	; 5
      f4:	b6 95       	lsr	r27
      f6:	a7 95       	ror	r26
      f8:	97 95       	ror	r25
      fa:	87 95       	ror	r24
      fc:	2a 95       	dec	r18
      fe:	d1 f7       	brne	.-12     	; 0xf4 <_ZN9LaserTask4mainEv+0x3e>
     100:	8d 32       	cpi	r24, 0x2D	; 45
     102:	21 e0       	ldi	r18, 0x01	; 1
     104:	92 07       	cpc	r25, r18
     106:	a1 05       	cpc	r26, r1
     108:	b1 05       	cpc	r27, r1
     10a:	20 f0       	brcs	.+8      	; 0x114 <_ZN9LaserTask4mainEv+0x5e>
     10c:	8c e2       	ldi	r24, 0x2C	; 44
     10e:	91 e0       	ldi	r25, 0x01	; 1
     110:	a0 e0       	ldi	r26, 0x00	; 0
     112:	b0 e0       	ldi	r27, 0x00	; 0
     114:	89 8f       	std	Y+25, r24	; 0x19
     116:	9a 8f       	std	Y+26, r25	; 0x1a
     118:	ab 8f       	std	Y+27, r26	; 0x1b
     11a:	bc 8f       	std	Y+28, r27	; 0x1c
     11c:	69 8d       	ldd	r22, Y+25	; 0x19
     11e:	7a 8d       	ldd	r23, Y+26	; 0x1a
     120:	8b 8d       	ldd	r24, Y+27	; 0x1b
     122:	9c 8d       	ldd	r25, Y+28	; 0x1c
     124:	2a e0       	ldi	r18, 0x0A	; 10
     126:	30 e0       	ldi	r19, 0x00	; 0
     128:	40 e0       	ldi	r20, 0x00	; 0
     12a:	50 e0       	ldi	r21, 0x00	; 0
     12c:	0e 94 fd 07 	call	0xffa	; 0xffa <__udivmodsi4>
     130:	62 2f       	mov	r22, r18
     132:	ce 01       	movw	r24, r28
     134:	44 96       	adiw	r24, 0x14	; 20
     136:	df 91       	pop	r29
     138:	cf 91       	pop	r28
     13a:	ff 90       	pop	r15
     13c:	ef 90       	pop	r14
     13e:	df 90       	pop	r13
     140:	cf 90       	pop	r12
     142:	0c 94 84 04 	jmp	0x908	; 0x908 <_ZN10LEDDisplay11display_decEh>

00000146 <_ZN5Blink4mainEv>:
     146:	fc 01       	movw	r30, r24
     148:	83 81       	ldd	r24, Z+3	; 0x03
     14a:	94 81       	ldd	r25, Z+4	; 0x04
     14c:	00 97       	sbiw	r24, 0x00	; 0
     14e:	19 f0       	breq	.+6      	; 0x156 <_ZN5Blink4mainEv+0x10>
     150:	01 97       	sbiw	r24, 0x01	; 1
     152:	39 f0       	breq	.+14     	; 0x162 <_ZN5Blink4mainEv+0x1c>
     154:	08 95       	ret
     156:	dd 9a       	sbi	0x1b, 5	; 27
     158:	81 e0       	ldi	r24, 0x01	; 1
     15a:	90 e0       	ldi	r25, 0x00	; 0
     15c:	94 83       	std	Z+4, r25	; 0x04
     15e:	83 83       	std	Z+3, r24	; 0x03
     160:	08 95       	ret
     162:	dd 98       	cbi	0x1b, 5	; 27
     164:	14 82       	std	Z+4, r1	; 0x04
     166:	13 82       	std	Z+3, r1	; 0x03
     168:	08 95       	ret

0000016a <main>:
     16a:	cf 93       	push	r28
     16c:	df 93       	push	r29
     16e:	cd b7       	in	r28, 0x3d	; 61
     170:	de b7       	in	r29, 0x3e	; 62
     172:	a2 97       	sbiw	r28, 0x22	; 34
     174:	0f b6       	in	r0, 0x3f	; 63
     176:	f8 94       	cli
     178:	de bf       	out	0x3e, r29	; 62
     17a:	0f be       	out	0x3f, r0	; 63
     17c:	cd bf       	out	0x3d, r28	; 61
     17e:	8a e6       	ldi	r24, 0x6A	; 106
     180:	90 e0       	ldi	r25, 0x00	; 0
     182:	9f 8f       	std	Y+31, r25	; 0x1f
     184:	8e 8f       	std	Y+30, r24	; 0x1e
     186:	d5 9a       	sbi	0x1a, 5	; 26
     188:	1a a2       	std	Y+34, r1	; 0x22
     18a:	19 a2       	std	Y+33, r1	; 0x21
     18c:	84 e7       	ldi	r24, 0x74	; 116
     18e:	90 e0       	ldi	r25, 0x00	; 0
     190:	9a 83       	std	Y+2, r25	; 0x02
     192:	89 83       	std	Y+1, r24	; 0x01
     194:	ce 01       	movw	r24, r28
     196:	03 96       	adiw	r24, 0x03	; 3
     198:	0e 94 9e 04 	call	0x93c	; 0x93c <_ZN7VL53L0XC1Ev>
     19c:	ce 01       	movw	r24, r28
     19e:	45 96       	adiw	r24, 0x15	; 21
     1a0:	0e 94 6c 04 	call	0x8d8	; 0x8d8 <_ZN10LEDDisplayC1Ev>
     1a4:	60 e0       	ldi	r22, 0x00	; 0
     1a6:	ce 01       	movw	r24, r28
     1a8:	45 96       	adiw	r24, 0x15	; 21
     1aa:	0e 94 84 04 	call	0x908	; 0x908 <_ZN10LEDDisplay11display_decEh>
     1ae:	69 ee       	ldi	r22, 0xE9	; 233
     1b0:	70 e0       	ldi	r23, 0x00	; 0
     1b2:	ce 01       	movw	r24, r28
     1b4:	03 96       	adiw	r24, 0x03	; 3
     1b6:	0e 94 22 06 	call	0xc44	; 0xc44 <_ZN7VL53L0X4initEP13I2C_Interface>
     1ba:	1a 8e       	std	Y+26, r1	; 0x1a
     1bc:	1b 8e       	std	Y+27, r1	; 0x1b
     1be:	1c 8e       	std	Y+28, r1	; 0x1c
     1c0:	1d 8e       	std	Y+29, r1	; 0x1d
     1c2:	bb 98       	cbi	0x17, 3	; 23
     1c4:	c3 9a       	sbi	0x18, 3	; 24
     1c6:	ba 98       	cbi	0x17, 2	; 23
     1c8:	c2 9a       	sbi	0x18, 2	; 24
     1ca:	48 ec       	ldi	r20, 0xC8	; 200
     1cc:	50 e0       	ldi	r21, 0x00	; 0
     1ce:	be 01       	movw	r22, r28
     1d0:	62 5e       	subi	r22, 0xE2	; 226
     1d2:	7f 4f       	sbci	r23, 0xFF	; 255
     1d4:	8c ea       	ldi	r24, 0xAC	; 172
     1d6:	90 e0       	ldi	r25, 0x00	; 0
     1d8:	0e 94 3c 01 	call	0x278	; 0x278 <_ZN5Timer8add_taskEP4Taskj>
     1dc:	44 e1       	ldi	r20, 0x14	; 20
     1de:	50 e0       	ldi	r21, 0x00	; 0
     1e0:	be 01       	movw	r22, r28
     1e2:	6f 5f       	subi	r22, 0xFF	; 255
     1e4:	7f 4f       	sbci	r23, 0xFF	; 255
     1e6:	8c ea       	ldi	r24, 0xAC	; 172
     1e8:	90 e0       	ldi	r25, 0x00	; 0
     1ea:	0e 94 3c 01 	call	0x278	; 0x278 <_ZN5Timer8add_taskEP4Taskj>
     1ee:	8c ea       	ldi	r24, 0xAC	; 172
     1f0:	90 e0       	ldi	r25, 0x00	; 0
     1f2:	0e 94 5e 01 	call	0x2bc	; 0x2bc <_ZN5Timer4mainEv>
     1f6:	fb cf       	rjmp	.-10     	; 0x1ee <main+0x84>

000001f8 <_ZN9LaserTaskD1Ev>:
     1f8:	cf 93       	push	r28
     1fa:	df 93       	push	r29
     1fc:	ec 01       	movw	r28, r24
     1fe:	84 e7       	ldi	r24, 0x74	; 116
     200:	90 e0       	ldi	r25, 0x00	; 0
     202:	99 83       	std	Y+1, r25	; 0x01
     204:	88 83       	st	Y, r24
     206:	ce 01       	movw	r24, r28
     208:	44 96       	adiw	r24, 0x14	; 20
     20a:	0e 94 51 04 	call	0x8a2	; 0x8a2 <_ZN10LEDDisplayD1Ev>
     20e:	ce 01       	movw	r24, r28
     210:	02 96       	adiw	r24, 0x02	; 2
     212:	df 91       	pop	r29
     214:	cf 91       	pop	r28
     216:	0c 94 9f 04 	jmp	0x93e	; 0x93e <_ZN7VL53L0XD1Ev>

0000021a <_ZN9LaserTaskD0Ev>:
     21a:	cf 93       	push	r28
     21c:	df 93       	push	r29
     21e:	ec 01       	movw	r28, r24
     220:	0e 94 fc 00 	call	0x1f8	; 0x1f8 <_ZN9LaserTaskD1Ev>
     224:	ce 01       	movw	r24, r28
     226:	df 91       	pop	r29
     228:	cf 91       	pop	r28
     22a:	0c 94 4f 04 	jmp	0x89e	; 0x89e <_ZdlPv>

0000022e <_ZN5USARTC1Ev>:
     22e:	10 bc       	out	0x20, r1	; 32
     230:	80 e4       	ldi	r24, 0x40	; 64
     232:	89 b9       	out	0x09, r24	; 9
     234:	80 b5       	in	r24, 0x20	; 32
     236:	86 68       	ori	r24, 0x86	; 134
     238:	80 bd       	out	0x20, r24	; 32
     23a:	8a b1       	in	r24, 0x0a	; 10
     23c:	88 61       	ori	r24, 0x18	; 24
     23e:	8a b9       	out	0x0a, r24	; 10
     240:	08 95       	ret

00000242 <_ZN5USARTD1Ev>:
     242:	08 95       	ret

00000244 <_ZN5TimerC1Ev>:
     244:	ed ea       	ldi	r30, 0xAD	; 173
     246:	f0 e0       	ldi	r31, 0x00	; 0
     248:	11 82       	std	Z+1, r1	; 0x01
     24a:	10 82       	st	Z, r1
     24c:	13 82       	std	Z+3, r1	; 0x03
     24e:	12 82       	std	Z+2, r1	; 0x02
     250:	15 82       	std	Z+5, r1	; 0x05
     252:	14 82       	std	Z+4, r1	; 0x04
     254:	16 82       	std	Z+6, r1	; 0x06
     256:	37 96       	adiw	r30, 0x07	; 7
     258:	80 e0       	ldi	r24, 0x00	; 0
     25a:	e5 3e       	cpi	r30, 0xE5	; 229
     25c:	f8 07       	cpc	r31, r24
     25e:	a1 f7       	brne	.-24     	; 0x248 <_ZN5TimerC1Ev+0x4>
     260:	83 b7       	in	r24, 0x33	; 51
     262:	88 60       	ori	r24, 0x08	; 8
     264:	83 bf       	out	0x33, r24	; 51
     266:	8b e9       	ldi	r24, 0x9B	; 155
     268:	8c bf       	out	0x3c, r24	; 60
     26a:	83 e0       	ldi	r24, 0x03	; 3
     26c:	83 bf       	out	0x33, r24	; 51
     26e:	89 b7       	in	r24, 0x39	; 57
     270:	82 60       	ori	r24, 0x02	; 2
     272:	89 bf       	out	0x39, r24	; 57
     274:	78 94       	sei
     276:	08 95       	ret

00000278 <_ZN5Timer8add_taskEP4Taskj>:
     278:	f8 94       	cli
     27a:	ed ea       	ldi	r30, 0xAD	; 173
     27c:	f0 e0       	ldi	r31, 0x00	; 0
     27e:	80 e0       	ldi	r24, 0x00	; 0
     280:	90 e0       	ldi	r25, 0x00	; 0
     282:	20 81       	ld	r18, Z
     284:	31 81       	ldd	r19, Z+1	; 0x01
     286:	23 2b       	or	r18, r19
     288:	81 f4       	brne	.+32     	; 0x2aa <_ZN5Timer8add_taskEP4Taskj+0x32>
     28a:	27 e0       	ldi	r18, 0x07	; 7
     28c:	28 9f       	mul	r18, r24
     28e:	f0 01       	movw	r30, r0
     290:	29 9f       	mul	r18, r25
     292:	f0 0d       	add	r31, r0
     294:	11 24       	eor	r1, r1
     296:	e3 55       	subi	r30, 0x53	; 83
     298:	ff 4f       	sbci	r31, 0xFF	; 255
     29a:	71 83       	std	Z+1, r23	; 0x01
     29c:	60 83       	st	Z, r22
     29e:	53 83       	std	Z+3, r21	; 0x03
     2a0:	42 83       	std	Z+2, r20	; 0x02
     2a2:	55 83       	std	Z+5, r21	; 0x05
     2a4:	44 83       	std	Z+4, r20	; 0x04
     2a6:	16 82       	std	Z+6, r1	; 0x06
     2a8:	07 c0       	rjmp	.+14     	; 0x2b8 <_ZN5Timer8add_taskEP4Taskj+0x40>
     2aa:	01 96       	adiw	r24, 0x01	; 1
     2ac:	37 96       	adiw	r30, 0x07	; 7
     2ae:	88 30       	cpi	r24, 0x08	; 8
     2b0:	91 05       	cpc	r25, r1
     2b2:	39 f7       	brne	.-50     	; 0x282 <_ZN5Timer8add_taskEP4Taskj+0xa>
     2b4:	8f ef       	ldi	r24, 0xFF	; 255
     2b6:	9f ef       	ldi	r25, 0xFF	; 255
     2b8:	78 94       	sei
     2ba:	08 95       	ret

000002bc <_ZN5Timer4mainEv>:
     2bc:	cf 93       	push	r28
     2be:	df 93       	push	r29
     2c0:	c3 eb       	ldi	r28, 0xB3	; 179
     2c2:	d0 e0       	ldi	r29, 0x00	; 0
     2c4:	fe 01       	movw	r30, r28
     2c6:	36 97       	sbiw	r30, 0x06	; 6
     2c8:	80 81       	ld	r24, Z
     2ca:	91 81       	ldd	r25, Z+1	; 0x01
     2cc:	00 97       	sbiw	r24, 0x00	; 0
     2ce:	59 f0       	breq	.+22     	; 0x2e6 <_ZN5Timer4mainEv+0x2a>
     2d0:	28 81       	ld	r18, Y
     2d2:	22 23       	and	r18, r18
     2d4:	41 f0       	breq	.+16     	; 0x2e6 <_ZN5Timer4mainEv+0x2a>
     2d6:	18 82       	st	Y, r1
     2d8:	dc 01       	movw	r26, r24
     2da:	ed 91       	ld	r30, X+
     2dc:	fc 91       	ld	r31, X
     2de:	04 80       	ldd	r0, Z+4	; 0x04
     2e0:	f5 81       	ldd	r31, Z+5	; 0x05
     2e2:	e0 2d       	mov	r30, r0
     2e4:	09 95       	icall
     2e6:	27 96       	adiw	r28, 0x07	; 7
     2e8:	b0 e0       	ldi	r27, 0x00	; 0
     2ea:	cb 3e       	cpi	r28, 0xEB	; 235
     2ec:	db 07       	cpc	r29, r27
     2ee:	51 f7       	brne	.-44     	; 0x2c4 <_ZN5Timer4mainEv+0x8>
     2f0:	df 91       	pop	r29
     2f2:	cf 91       	pop	r28
     2f4:	08 95       	ret

000002f6 <__vector_19>:
     2f6:	1f 92       	push	r1
     2f8:	0f 92       	push	r0
     2fa:	0f b6       	in	r0, 0x3f	; 63
     2fc:	0f 92       	push	r0
     2fe:	11 24       	eor	r1, r1
     300:	8f 93       	push	r24
     302:	9f 93       	push	r25
     304:	af 93       	push	r26
     306:	bf 93       	push	r27
     308:	ef 93       	push	r30
     30a:	ff 93       	push	r31
     30c:	ed ea       	ldi	r30, 0xAD	; 173
     30e:	f0 e0       	ldi	r31, 0x00	; 0
     310:	a3 eb       	ldi	r26, 0xB3	; 179
     312:	b0 e0       	ldi	r27, 0x00	; 0
     314:	84 81       	ldd	r24, Z+4	; 0x04
     316:	95 81       	ldd	r25, Z+5	; 0x05
     318:	00 97       	sbiw	r24, 0x00	; 0
     31a:	21 f0       	breq	.+8      	; 0x324 <__vector_19+0x2e>
     31c:	01 97       	sbiw	r24, 0x01	; 1
     31e:	95 83       	std	Z+5, r25	; 0x05
     320:	84 83       	std	Z+4, r24	; 0x04
     322:	09 c0       	rjmp	.+18     	; 0x336 <__vector_19+0x40>
     324:	82 81       	ldd	r24, Z+2	; 0x02
     326:	93 81       	ldd	r25, Z+3	; 0x03
     328:	95 83       	std	Z+5, r25	; 0x05
     32a:	84 83       	std	Z+4, r24	; 0x04
     32c:	8c 91       	ld	r24, X
     32e:	8f 3f       	cpi	r24, 0xFF	; 255
     330:	11 f0       	breq	.+4      	; 0x336 <__vector_19+0x40>
     332:	8f 5f       	subi	r24, 0xFF	; 255
     334:	8c 93       	st	X, r24
     336:	37 96       	adiw	r30, 0x07	; 7
     338:	17 96       	adiw	r26, 0x07	; 7
     33a:	80 e0       	ldi	r24, 0x00	; 0
     33c:	e5 3e       	cpi	r30, 0xE5	; 229
     33e:	f8 07       	cpc	r31, r24
     340:	49 f7       	brne	.-46     	; 0x314 <__vector_19+0x1e>
     342:	80 91 e5 00 	lds	r24, 0x00E5
     346:	90 91 e6 00 	lds	r25, 0x00E6
     34a:	a0 91 e7 00 	lds	r26, 0x00E7
     34e:	b0 91 e8 00 	lds	r27, 0x00E8
     352:	01 96       	adiw	r24, 0x01	; 1
     354:	a1 1d       	adc	r26, r1
     356:	b1 1d       	adc	r27, r1
     358:	80 93 e5 00 	sts	0x00E5, r24
     35c:	90 93 e6 00 	sts	0x00E6, r25
     360:	a0 93 e7 00 	sts	0x00E7, r26
     364:	b0 93 e8 00 	sts	0x00E8, r27
     368:	ff 91       	pop	r31
     36a:	ef 91       	pop	r30
     36c:	bf 91       	pop	r27
     36e:	af 91       	pop	r26
     370:	9f 91       	pop	r25
     372:	8f 91       	pop	r24
     374:	0f 90       	pop	r0
     376:	0f be       	out	0x3f, r0	; 63
     378:	0f 90       	pop	r0
     37a:	1f 90       	pop	r1
     37c:	18 95       	reti

0000037e <_GLOBAL__sub_I_g_rt_time>:
     37e:	8c ea       	ldi	r24, 0xAC	; 172
     380:	90 e0       	ldi	r25, 0x00	; 0
     382:	0c 94 22 01 	jmp	0x244	; 0x244 <_ZN5TimerC1Ev>

00000386 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     386:	0f 93       	push	r16
     388:	1f 93       	push	r17
     38a:	cf 93       	push	r28
     38c:	df 93       	push	r29
     38e:	00 d0       	rcall	.+0      	; 0x390 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     390:	1f 92       	push	r1
     392:	cd b7       	in	r28, 0x3d	; 61
     394:	de b7       	in	r29, 0x3e	; 62
     396:	8c 01       	movw	r16, r24
     398:	dc 01       	movw	r26, r24
     39a:	ed 91       	ld	r30, X+
     39c:	fc 91       	ld	r31, X
     39e:	01 90       	ld	r0, Z+
     3a0:	f0 81       	ld	r31, Z
     3a2:	e0 2d       	mov	r30, r0
     3a4:	2b 83       	std	Y+3, r18	; 0x03
     3a6:	4a 83       	std	Y+2, r20	; 0x02
     3a8:	69 83       	std	Y+1, r22	; 0x01
     3aa:	09 95       	icall
     3ac:	d8 01       	movw	r26, r16
     3ae:	ed 91       	ld	r30, X+
     3b0:	fc 91       	ld	r31, X
     3b2:	04 80       	ldd	r0, Z+4	; 0x04
     3b4:	f5 81       	ldd	r31, Z+5	; 0x05
     3b6:	e0 2d       	mov	r30, r0
     3b8:	69 81       	ldd	r22, Y+1	; 0x01
     3ba:	c8 01       	movw	r24, r16
     3bc:	09 95       	icall
     3be:	d8 01       	movw	r26, r16
     3c0:	ed 91       	ld	r30, X+
     3c2:	fc 91       	ld	r31, X
     3c4:	04 80       	ldd	r0, Z+4	; 0x04
     3c6:	f5 81       	ldd	r31, Z+5	; 0x05
     3c8:	e0 2d       	mov	r30, r0
     3ca:	4a 81       	ldd	r20, Y+2	; 0x02
     3cc:	64 2f       	mov	r22, r20
     3ce:	c8 01       	movw	r24, r16
     3d0:	09 95       	icall
     3d2:	d8 01       	movw	r26, r16
     3d4:	ed 91       	ld	r30, X+
     3d6:	fc 91       	ld	r31, X
     3d8:	04 80       	ldd	r0, Z+4	; 0x04
     3da:	f5 81       	ldd	r31, Z+5	; 0x05
     3dc:	e0 2d       	mov	r30, r0
     3de:	2b 81       	ldd	r18, Y+3	; 0x03
     3e0:	62 2f       	mov	r22, r18
     3e2:	c8 01       	movw	r24, r16
     3e4:	09 95       	icall
     3e6:	d8 01       	movw	r26, r16
     3e8:	ed 91       	ld	r30, X+
     3ea:	fc 91       	ld	r31, X
     3ec:	02 80       	ldd	r0, Z+2	; 0x02
     3ee:	f3 81       	ldd	r31, Z+3	; 0x03
     3f0:	e0 2d       	mov	r30, r0
     3f2:	c8 01       	movw	r24, r16
     3f4:	0f 90       	pop	r0
     3f6:	0f 90       	pop	r0
     3f8:	0f 90       	pop	r0
     3fa:	df 91       	pop	r29
     3fc:	cf 91       	pop	r28
     3fe:	1f 91       	pop	r17
     400:	0f 91       	pop	r16
     402:	09 94       	ijmp

00000404 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     404:	0f 93       	push	r16
     406:	1f 93       	push	r17
     408:	cf 93       	push	r28
     40a:	df 93       	push	r29
     40c:	00 d0       	rcall	.+0      	; 0x40e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     40e:	00 d0       	rcall	.+0      	; 0x410 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     410:	cd b7       	in	r28, 0x3d	; 61
     412:	de b7       	in	r29, 0x3e	; 62
     414:	8c 01       	movw	r16, r24
     416:	dc 01       	movw	r26, r24
     418:	ed 91       	ld	r30, X+
     41a:	fc 91       	ld	r31, X
     41c:	01 90       	ld	r0, Z+
     41e:	f0 81       	ld	r31, Z
     420:	e0 2d       	mov	r30, r0
     422:	2c 83       	std	Y+4, r18	; 0x04
     424:	3b 83       	std	Y+3, r19	; 0x03
     426:	4a 83       	std	Y+2, r20	; 0x02
     428:	69 83       	std	Y+1, r22	; 0x01
     42a:	09 95       	icall
     42c:	d8 01       	movw	r26, r16
     42e:	ed 91       	ld	r30, X+
     430:	fc 91       	ld	r31, X
     432:	04 80       	ldd	r0, Z+4	; 0x04
     434:	f5 81       	ldd	r31, Z+5	; 0x05
     436:	e0 2d       	mov	r30, r0
     438:	69 81       	ldd	r22, Y+1	; 0x01
     43a:	c8 01       	movw	r24, r16
     43c:	09 95       	icall
     43e:	d8 01       	movw	r26, r16
     440:	ed 91       	ld	r30, X+
     442:	fc 91       	ld	r31, X
     444:	04 80       	ldd	r0, Z+4	; 0x04
     446:	f5 81       	ldd	r31, Z+5	; 0x05
     448:	e0 2d       	mov	r30, r0
     44a:	4a 81       	ldd	r20, Y+2	; 0x02
     44c:	64 2f       	mov	r22, r20
     44e:	c8 01       	movw	r24, r16
     450:	09 95       	icall
     452:	d8 01       	movw	r26, r16
     454:	ed 91       	ld	r30, X+
     456:	fc 91       	ld	r31, X
     458:	04 80       	ldd	r0, Z+4	; 0x04
     45a:	f5 81       	ldd	r31, Z+5	; 0x05
     45c:	e0 2d       	mov	r30, r0
     45e:	3b 81       	ldd	r19, Y+3	; 0x03
     460:	63 2f       	mov	r22, r19
     462:	c8 01       	movw	r24, r16
     464:	09 95       	icall
     466:	d8 01       	movw	r26, r16
     468:	ed 91       	ld	r30, X+
     46a:	fc 91       	ld	r31, X
     46c:	04 80       	ldd	r0, Z+4	; 0x04
     46e:	f5 81       	ldd	r31, Z+5	; 0x05
     470:	e0 2d       	mov	r30, r0
     472:	2c 81       	ldd	r18, Y+4	; 0x04
     474:	62 2f       	mov	r22, r18
     476:	c8 01       	movw	r24, r16
     478:	09 95       	icall
     47a:	d8 01       	movw	r26, r16
     47c:	ed 91       	ld	r30, X+
     47e:	fc 91       	ld	r31, X
     480:	02 80       	ldd	r0, Z+2	; 0x02
     482:	f3 81       	ldd	r31, Z+3	; 0x03
     484:	e0 2d       	mov	r30, r0
     486:	c8 01       	movw	r24, r16
     488:	0f 90       	pop	r0
     48a:	0f 90       	pop	r0
     48c:	0f 90       	pop	r0
     48e:	0f 90       	pop	r0
     490:	df 91       	pop	r29
     492:	cf 91       	pop	r28
     494:	1f 91       	pop	r17
     496:	0f 91       	pop	r16
     498:	09 94       	ijmp

0000049a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     49a:	cf 92       	push	r12
     49c:	df 92       	push	r13
     49e:	ef 92       	push	r14
     4a0:	ff 92       	push	r15
     4a2:	0f 93       	push	r16
     4a4:	1f 93       	push	r17
     4a6:	cf 93       	push	r28
     4a8:	df 93       	push	r29
     4aa:	00 d0       	rcall	.+0      	; 0x4ac <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     4ac:	00 d0       	rcall	.+0      	; 0x4ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     4ae:	cd b7       	in	r28, 0x3d	; 61
     4b0:	de b7       	in	r29, 0x3e	; 62
     4b2:	6c 01       	movw	r12, r24
     4b4:	dc 01       	movw	r26, r24
     4b6:	ed 91       	ld	r30, X+
     4b8:	fc 91       	ld	r31, X
     4ba:	01 90       	ld	r0, Z+
     4bc:	f0 81       	ld	r31, Z
     4be:	e0 2d       	mov	r30, r0
     4c0:	2b 83       	std	Y+3, r18	; 0x03
     4c2:	3c 83       	std	Y+4, r19	; 0x04
     4c4:	4a 83       	std	Y+2, r20	; 0x02
     4c6:	69 83       	std	Y+1, r22	; 0x01
     4c8:	09 95       	icall
     4ca:	d6 01       	movw	r26, r12
     4cc:	ed 91       	ld	r30, X+
     4ce:	fc 91       	ld	r31, X
     4d0:	04 80       	ldd	r0, Z+4	; 0x04
     4d2:	f5 81       	ldd	r31, Z+5	; 0x05
     4d4:	e0 2d       	mov	r30, r0
     4d6:	69 81       	ldd	r22, Y+1	; 0x01
     4d8:	c6 01       	movw	r24, r12
     4da:	09 95       	icall
     4dc:	d6 01       	movw	r26, r12
     4de:	ed 91       	ld	r30, X+
     4e0:	fc 91       	ld	r31, X
     4e2:	04 80       	ldd	r0, Z+4	; 0x04
     4e4:	f5 81       	ldd	r31, Z+5	; 0x05
     4e6:	e0 2d       	mov	r30, r0
     4e8:	4a 81       	ldd	r20, Y+2	; 0x02
     4ea:	64 2f       	mov	r22, r20
     4ec:	c6 01       	movw	r24, r12
     4ee:	09 95       	icall
     4f0:	2b 81       	ldd	r18, Y+3	; 0x03
     4f2:	e2 2e       	mov	r14, r18
     4f4:	3c 81       	ldd	r19, Y+4	; 0x04
     4f6:	f3 2e       	mov	r15, r19
     4f8:	0e 0d       	add	r16, r14
     4fa:	1f 1d       	adc	r17, r15
     4fc:	d6 01       	movw	r26, r12
     4fe:	ed 91       	ld	r30, X+
     500:	fc 91       	ld	r31, X
     502:	e0 16       	cp	r14, r16
     504:	f1 06       	cpc	r15, r17
     506:	49 f0       	breq	.+18     	; 0x51a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
     508:	d7 01       	movw	r26, r14
     50a:	6d 91       	ld	r22, X+
     50c:	7d 01       	movw	r14, r26
     50e:	04 80       	ldd	r0, Z+4	; 0x04
     510:	f5 81       	ldd	r31, Z+5	; 0x05
     512:	e0 2d       	mov	r30, r0
     514:	c6 01       	movw	r24, r12
     516:	09 95       	icall
     518:	f1 cf       	rjmp	.-30     	; 0x4fc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
     51a:	02 80       	ldd	r0, Z+2	; 0x02
     51c:	f3 81       	ldd	r31, Z+3	; 0x03
     51e:	e0 2d       	mov	r30, r0
     520:	c6 01       	movw	r24, r12
     522:	0f 90       	pop	r0
     524:	0f 90       	pop	r0
     526:	0f 90       	pop	r0
     528:	0f 90       	pop	r0
     52a:	df 91       	pop	r29
     52c:	cf 91       	pop	r28
     52e:	1f 91       	pop	r17
     530:	0f 91       	pop	r16
     532:	ff 90       	pop	r15
     534:	ef 90       	pop	r14
     536:	df 90       	pop	r13
     538:	cf 90       	pop	r12
     53a:	09 94       	ijmp

0000053c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     53c:	ef 92       	push	r14
     53e:	ff 92       	push	r15
     540:	1f 93       	push	r17
     542:	cf 93       	push	r28
     544:	df 93       	push	r29
     546:	1f 92       	push	r1
     548:	cd b7       	in	r28, 0x3d	; 61
     54a:	de b7       	in	r29, 0x3e	; 62
     54c:	7c 01       	movw	r14, r24
     54e:	16 2f       	mov	r17, r22
     550:	dc 01       	movw	r26, r24
     552:	ed 91       	ld	r30, X+
     554:	fc 91       	ld	r31, X
     556:	01 90       	ld	r0, Z+
     558:	f0 81       	ld	r31, Z
     55a:	e0 2d       	mov	r30, r0
     55c:	49 83       	std	Y+1, r20	; 0x01
     55e:	09 95       	icall
     560:	d7 01       	movw	r26, r14
     562:	ed 91       	ld	r30, X+
     564:	fc 91       	ld	r31, X
     566:	04 80       	ldd	r0, Z+4	; 0x04
     568:	f5 81       	ldd	r31, Z+5	; 0x05
     56a:	e0 2d       	mov	r30, r0
     56c:	61 2f       	mov	r22, r17
     56e:	c7 01       	movw	r24, r14
     570:	09 95       	icall
     572:	d7 01       	movw	r26, r14
     574:	ed 91       	ld	r30, X+
     576:	fc 91       	ld	r31, X
     578:	04 80       	ldd	r0, Z+4	; 0x04
     57a:	f5 81       	ldd	r31, Z+5	; 0x05
     57c:	e0 2d       	mov	r30, r0
     57e:	49 81       	ldd	r20, Y+1	; 0x01
     580:	64 2f       	mov	r22, r20
     582:	c7 01       	movw	r24, r14
     584:	09 95       	icall
     586:	d7 01       	movw	r26, r14
     588:	ed 91       	ld	r30, X+
     58a:	fc 91       	ld	r31, X
     58c:	01 90       	ld	r0, Z+
     58e:	f0 81       	ld	r31, Z
     590:	e0 2d       	mov	r30, r0
     592:	c7 01       	movw	r24, r14
     594:	09 95       	icall
     596:	d7 01       	movw	r26, r14
     598:	ed 91       	ld	r30, X+
     59a:	fc 91       	ld	r31, X
     59c:	61 2f       	mov	r22, r17
     59e:	61 60       	ori	r22, 0x01	; 1
     5a0:	04 80       	ldd	r0, Z+4	; 0x04
     5a2:	f5 81       	ldd	r31, Z+5	; 0x05
     5a4:	e0 2d       	mov	r30, r0
     5a6:	c7 01       	movw	r24, r14
     5a8:	09 95       	icall
     5aa:	d7 01       	movw	r26, r14
     5ac:	ed 91       	ld	r30, X+
     5ae:	fc 91       	ld	r31, X
     5b0:	06 80       	ldd	r0, Z+6	; 0x06
     5b2:	f7 81       	ldd	r31, Z+7	; 0x07
     5b4:	e0 2d       	mov	r30, r0
     5b6:	60 e0       	ldi	r22, 0x00	; 0
     5b8:	c7 01       	movw	r24, r14
     5ba:	09 95       	icall
     5bc:	18 2f       	mov	r17, r24
     5be:	d7 01       	movw	r26, r14
     5c0:	ed 91       	ld	r30, X+
     5c2:	fc 91       	ld	r31, X
     5c4:	02 80       	ldd	r0, Z+2	; 0x02
     5c6:	f3 81       	ldd	r31, Z+3	; 0x03
     5c8:	e0 2d       	mov	r30, r0
     5ca:	c7 01       	movw	r24, r14
     5cc:	09 95       	icall
     5ce:	81 2f       	mov	r24, r17
     5d0:	0f 90       	pop	r0
     5d2:	df 91       	pop	r29
     5d4:	cf 91       	pop	r28
     5d6:	1f 91       	pop	r17
     5d8:	ff 90       	pop	r15
     5da:	ef 90       	pop	r14
     5dc:	08 95       	ret

000005de <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     5de:	ef 92       	push	r14
     5e0:	ff 92       	push	r15
     5e2:	0f 93       	push	r16
     5e4:	1f 93       	push	r17
     5e6:	cf 93       	push	r28
     5e8:	df 93       	push	r29
     5ea:	1f 92       	push	r1
     5ec:	cd b7       	in	r28, 0x3d	; 61
     5ee:	de b7       	in	r29, 0x3e	; 62
     5f0:	7c 01       	movw	r14, r24
     5f2:	16 2f       	mov	r17, r22
     5f4:	dc 01       	movw	r26, r24
     5f6:	ed 91       	ld	r30, X+
     5f8:	fc 91       	ld	r31, X
     5fa:	01 90       	ld	r0, Z+
     5fc:	f0 81       	ld	r31, Z
     5fe:	e0 2d       	mov	r30, r0
     600:	49 83       	std	Y+1, r20	; 0x01
     602:	09 95       	icall
     604:	d7 01       	movw	r26, r14
     606:	ed 91       	ld	r30, X+
     608:	fc 91       	ld	r31, X
     60a:	04 80       	ldd	r0, Z+4	; 0x04
     60c:	f5 81       	ldd	r31, Z+5	; 0x05
     60e:	e0 2d       	mov	r30, r0
     610:	61 2f       	mov	r22, r17
     612:	c7 01       	movw	r24, r14
     614:	09 95       	icall
     616:	d7 01       	movw	r26, r14
     618:	ed 91       	ld	r30, X+
     61a:	fc 91       	ld	r31, X
     61c:	04 80       	ldd	r0, Z+4	; 0x04
     61e:	f5 81       	ldd	r31, Z+5	; 0x05
     620:	e0 2d       	mov	r30, r0
     622:	49 81       	ldd	r20, Y+1	; 0x01
     624:	64 2f       	mov	r22, r20
     626:	c7 01       	movw	r24, r14
     628:	09 95       	icall
     62a:	d7 01       	movw	r26, r14
     62c:	ed 91       	ld	r30, X+
     62e:	fc 91       	ld	r31, X
     630:	01 90       	ld	r0, Z+
     632:	f0 81       	ld	r31, Z
     634:	e0 2d       	mov	r30, r0
     636:	c7 01       	movw	r24, r14
     638:	09 95       	icall
     63a:	d7 01       	movw	r26, r14
     63c:	ed 91       	ld	r30, X+
     63e:	fc 91       	ld	r31, X
     640:	61 2f       	mov	r22, r17
     642:	61 60       	ori	r22, 0x01	; 1
     644:	04 80       	ldd	r0, Z+4	; 0x04
     646:	f5 81       	ldd	r31, Z+5	; 0x05
     648:	e0 2d       	mov	r30, r0
     64a:	c7 01       	movw	r24, r14
     64c:	09 95       	icall
     64e:	d7 01       	movw	r26, r14
     650:	ed 91       	ld	r30, X+
     652:	fc 91       	ld	r31, X
     654:	06 80       	ldd	r0, Z+6	; 0x06
     656:	f7 81       	ldd	r31, Z+7	; 0x07
     658:	e0 2d       	mov	r30, r0
     65a:	61 e0       	ldi	r22, 0x01	; 1
     65c:	c7 01       	movw	r24, r14
     65e:	09 95       	icall
     660:	08 2f       	mov	r16, r24
     662:	10 e0       	ldi	r17, 0x00	; 0
     664:	10 2f       	mov	r17, r16
     666:	00 27       	eor	r16, r16
     668:	d7 01       	movw	r26, r14
     66a:	ed 91       	ld	r30, X+
     66c:	fc 91       	ld	r31, X
     66e:	06 80       	ldd	r0, Z+6	; 0x06
     670:	f7 81       	ldd	r31, Z+7	; 0x07
     672:	e0 2d       	mov	r30, r0
     674:	60 e0       	ldi	r22, 0x00	; 0
     676:	c7 01       	movw	r24, r14
     678:	09 95       	icall
     67a:	08 2b       	or	r16, r24
     67c:	d7 01       	movw	r26, r14
     67e:	ed 91       	ld	r30, X+
     680:	fc 91       	ld	r31, X
     682:	02 80       	ldd	r0, Z+2	; 0x02
     684:	f3 81       	ldd	r31, Z+3	; 0x03
     686:	e0 2d       	mov	r30, r0
     688:	c7 01       	movw	r24, r14
     68a:	09 95       	icall
     68c:	c8 01       	movw	r24, r16
     68e:	0f 90       	pop	r0
     690:	df 91       	pop	r29
     692:	cf 91       	pop	r28
     694:	1f 91       	pop	r17
     696:	0f 91       	pop	r16
     698:	ff 90       	pop	r15
     69a:	ef 90       	pop	r14
     69c:	08 95       	ret

0000069e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     69e:	cf 92       	push	r12
     6a0:	df 92       	push	r13
     6a2:	ef 92       	push	r14
     6a4:	ff 92       	push	r15
     6a6:	0f 93       	push	r16
     6a8:	1f 93       	push	r17
     6aa:	cf 93       	push	r28
     6ac:	df 93       	push	r29
     6ae:	00 d0       	rcall	.+0      	; 0x6b0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     6b0:	1f 92       	push	r1
     6b2:	cd b7       	in	r28, 0x3d	; 61
     6b4:	de b7       	in	r29, 0x3e	; 62
     6b6:	6c 01       	movw	r12, r24
     6b8:	f6 2e       	mov	r15, r22
     6ba:	dc 01       	movw	r26, r24
     6bc:	ed 91       	ld	r30, X+
     6be:	fc 91       	ld	r31, X
     6c0:	01 90       	ld	r0, Z+
     6c2:	f0 81       	ld	r31, Z
     6c4:	e0 2d       	mov	r30, r0
     6c6:	2a 83       	std	Y+2, r18	; 0x02
     6c8:	3b 83       	std	Y+3, r19	; 0x03
     6ca:	49 83       	std	Y+1, r20	; 0x01
     6cc:	09 95       	icall
     6ce:	d6 01       	movw	r26, r12
     6d0:	ed 91       	ld	r30, X+
     6d2:	fc 91       	ld	r31, X
     6d4:	04 80       	ldd	r0, Z+4	; 0x04
     6d6:	f5 81       	ldd	r31, Z+5	; 0x05
     6d8:	e0 2d       	mov	r30, r0
     6da:	6f 2d       	mov	r22, r15
     6dc:	c6 01       	movw	r24, r12
     6de:	09 95       	icall
     6e0:	d6 01       	movw	r26, r12
     6e2:	ed 91       	ld	r30, X+
     6e4:	fc 91       	ld	r31, X
     6e6:	04 80       	ldd	r0, Z+4	; 0x04
     6e8:	f5 81       	ldd	r31, Z+5	; 0x05
     6ea:	e0 2d       	mov	r30, r0
     6ec:	49 81       	ldd	r20, Y+1	; 0x01
     6ee:	64 2f       	mov	r22, r20
     6f0:	c6 01       	movw	r24, r12
     6f2:	09 95       	icall
     6f4:	d6 01       	movw	r26, r12
     6f6:	ed 91       	ld	r30, X+
     6f8:	fc 91       	ld	r31, X
     6fa:	01 90       	ld	r0, Z+
     6fc:	f0 81       	ld	r31, Z
     6fe:	e0 2d       	mov	r30, r0
     700:	c6 01       	movw	r24, r12
     702:	09 95       	icall
     704:	d6 01       	movw	r26, r12
     706:	ed 91       	ld	r30, X+
     708:	fc 91       	ld	r31, X
     70a:	6f 2d       	mov	r22, r15
     70c:	61 60       	ori	r22, 0x01	; 1
     70e:	04 80       	ldd	r0, Z+4	; 0x04
     710:	f5 81       	ldd	r31, Z+5	; 0x05
     712:	e0 2d       	mov	r30, r0
     714:	c6 01       	movw	r24, r12
     716:	09 95       	icall
     718:	2a 81       	ldd	r18, Y+2	; 0x02
     71a:	e2 2e       	mov	r14, r18
     71c:	3b 81       	ldd	r19, Y+3	; 0x03
     71e:	f3 2e       	mov	r15, r19
     720:	0e 0d       	add	r16, r14
     722:	1f 1d       	adc	r17, r15
     724:	d6 01       	movw	r26, r12
     726:	ed 91       	ld	r30, X+
     728:	fc 91       	ld	r31, X
     72a:	e0 16       	cp	r14, r16
     72c:	f1 06       	cpc	r15, r17
     72e:	51 f0       	breq	.+20     	; 0x744 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     730:	06 80       	ldd	r0, Z+6	; 0x06
     732:	f7 81       	ldd	r31, Z+7	; 0x07
     734:	e0 2d       	mov	r30, r0
     736:	61 e0       	ldi	r22, 0x01	; 1
     738:	c6 01       	movw	r24, r12
     73a:	09 95       	icall
     73c:	f7 01       	movw	r30, r14
     73e:	81 93       	st	Z+, r24
     740:	7f 01       	movw	r14, r30
     742:	f0 cf       	rjmp	.-32     	; 0x724 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     744:	02 80       	ldd	r0, Z+2	; 0x02
     746:	f3 81       	ldd	r31, Z+3	; 0x03
     748:	e0 2d       	mov	r30, r0
     74a:	c6 01       	movw	r24, r12
     74c:	0f 90       	pop	r0
     74e:	0f 90       	pop	r0
     750:	0f 90       	pop	r0
     752:	df 91       	pop	r29
     754:	cf 91       	pop	r28
     756:	1f 91       	pop	r17
     758:	0f 91       	pop	r16
     75a:	ff 90       	pop	r15
     75c:	ef 90       	pop	r14
     75e:	df 90       	pop	r13
     760:	cf 90       	pop	r12
     762:	09 94       	ijmp

00000764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     764:	88 23       	and	r24, r24
     766:	21 f0       	breq	.+8      	; 0x770 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     768:	bf 98       	cbi	0x17, 7	; 23
     76a:	82 30       	cpi	r24, 0x02	; 2
     76c:	19 f0       	breq	.+6      	; 0x774 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     76e:	08 95       	ret
     770:	bf 9a       	sbi	0x17, 7	; 23
     772:	08 95       	ret
     774:	c7 9a       	sbi	0x18, 7	; 24
     776:	08 95       	ret

00000778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     778:	00 00       	nop
     77a:	00 00       	nop
     77c:	08 95       	ret

0000077e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     77e:	1f 93       	push	r17
     780:	cf 93       	push	r28
     782:	df 93       	push	r29
     784:	16 2f       	mov	r17, r22
     786:	bd 98       	cbi	0x17, 5	; 23
     788:	80 e0       	ldi	r24, 0x00	; 0
     78a:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     78e:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     792:	d8 e0       	ldi	r29, 0x08	; 8
     794:	c0 e0       	ldi	r28, 0x00	; 0
     796:	cc 0f       	add	r28, r28
     798:	81 e0       	ldi	r24, 0x01	; 1
     79a:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     79e:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7a2:	b5 99       	sbic	0x16, 5	; 22
     7a4:	c1 60       	ori	r28, 0x01	; 1
     7a6:	80 e0       	ldi	r24, 0x00	; 0
     7a8:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7ac:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7b0:	d1 50       	subi	r29, 0x01	; 1
     7b2:	89 f7       	brne	.-30     	; 0x796 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
     7b4:	11 23       	and	r17, r17
     7b6:	11 f0       	breq	.+4      	; 0x7bc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
     7b8:	bd 9a       	sbi	0x17, 5	; 23
     7ba:	01 c0       	rjmp	.+2      	; 0x7be <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
     7bc:	bd 98       	cbi	0x17, 5	; 23
     7be:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7c2:	81 e0       	ldi	r24, 0x01	; 1
     7c4:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7c8:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7cc:	80 e0       	ldi	r24, 0x00	; 0
     7ce:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7d2:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7d6:	bd 98       	cbi	0x17, 5	; 23
     7d8:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7dc:	8c 2f       	mov	r24, r28
     7de:	df 91       	pop	r29
     7e0:	cf 91       	pop	r28
     7e2:	1f 91       	pop	r17
     7e4:	08 95       	ret

000007e6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
     7e6:	cf 93       	push	r28
     7e8:	df 93       	push	r29
     7ea:	d6 2f       	mov	r29, r22
     7ec:	c8 e0       	ldi	r28, 0x08	; 8
     7ee:	80 e0       	ldi	r24, 0x00	; 0
     7f0:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7f4:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7f8:	d7 ff       	sbrs	r29, 7
     7fa:	02 c0       	rjmp	.+4      	; 0x800 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
     7fc:	bd 98       	cbi	0x17, 5	; 23
     7fe:	01 c0       	rjmp	.+2      	; 0x802 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
     800:	bd 9a       	sbi	0x17, 5	; 23
     802:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     806:	81 e0       	ldi	r24, 0x01	; 1
     808:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     80c:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     810:	dd 0f       	add	r29, r29
     812:	c1 50       	subi	r28, 0x01	; 1
     814:	61 f7       	brne	.-40     	; 0x7ee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
     816:	80 e0       	ldi	r24, 0x00	; 0
     818:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     81c:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     820:	bd 98       	cbi	0x17, 5	; 23
     822:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     826:	81 e0       	ldi	r24, 0x01	; 1
     828:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     82c:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     830:	c6 b3       	in	r28, 0x16	; 22
     832:	80 e0       	ldi	r24, 0x00	; 0
     834:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     838:	0e 94 bc 03 	call	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     83c:	c5 fb       	bst	r28, 5
     83e:	cc 27       	eor	r28, r28
     840:	c0 f9       	bld	r28, 0
     842:	81 e0       	ldi	r24, 0x01	; 1
     844:	8c 27       	eor	r24, r28
     846:	df 91       	pop	r29
     848:	cf 91       	pop	r28
     84a:	08 95       	ret

0000084c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
     84c:	81 e0       	ldi	r24, 0x01	; 1
     84e:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     852:	bd 98       	cbi	0x17, 5	; 23
     854:	81 e0       	ldi	r24, 0x01	; 1
     856:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     85a:	bd 9a       	sbi	0x17, 5	; 23
     85c:	80 e0       	ldi	r24, 0x00	; 0
     85e:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     862:	bd 98       	cbi	0x17, 5	; 23
     864:	0c 94 bc 03 	jmp	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000868 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
     868:	80 e0       	ldi	r24, 0x00	; 0
     86a:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     86e:	bd 9a       	sbi	0x17, 5	; 23
     870:	81 e0       	ldi	r24, 0x01	; 1
     872:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     876:	bd 9a       	sbi	0x17, 5	; 23
     878:	81 e0       	ldi	r24, 0x01	; 1
     87a:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     87e:	bd 98       	cbi	0x17, 5	; 23
     880:	0c 94 bc 03 	jmp	0x778	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000884 <_GLOBAL__sub_I_i2c>:
     884:	8e e7       	ldi	r24, 0x7E	; 126
     886:	90 e0       	ldi	r25, 0x00	; 0
     888:	90 93 ea 00 	sts	0x00EA, r25
     88c:	80 93 e9 00 	sts	0x00E9, r24
     890:	bd 98       	cbi	0x17, 5	; 23
     892:	81 e0       	ldi	r24, 0x01	; 1
     894:	0e 94 b2 03 	call	0x764	; 0x764 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     898:	c5 98       	cbi	0x18, 5	; 24
     89a:	c7 98       	cbi	0x18, 7	; 24
     89c:	08 95       	ret

0000089e <_ZdlPv>:
     89e:	0c 94 e8 08 	jmp	0x11d0	; 0x11d0 <free>

000008a2 <_ZN10LEDDisplayD1Ev>:
     8a2:	08 95       	ret

000008a4 <_ZN10LEDDisplay4mainEv>:
     8a4:	fc 01       	movw	r30, r24
     8a6:	82 81       	ldd	r24, Z+2	; 0x02
     8a8:	88 23       	and	r24, r24
     8aa:	19 f0       	breq	.+6      	; 0x8b2 <_ZN10LEDDisplay4mainEv+0xe>
     8ac:	81 30       	cpi	r24, 0x01	; 1
     8ae:	51 f0       	breq	.+20     	; 0x8c4 <_ZN10LEDDisplay4mainEv+0x20>
     8b0:	08 95       	ret
     8b2:	88 b3       	in	r24, 0x18	; 24
     8b4:	83 60       	ori	r24, 0x03	; 3
     8b6:	88 bb       	out	0x18, r24	; 24
     8b8:	83 81       	ldd	r24, Z+3	; 0x03
     8ba:	85 bb       	out	0x15, r24	; 21
     8bc:	c0 98       	cbi	0x18, 0	; 24
     8be:	81 e0       	ldi	r24, 0x01	; 1
     8c0:	82 83       	std	Z+2, r24	; 0x02
     8c2:	08 95       	ret
     8c4:	88 b3       	in	r24, 0x18	; 24
     8c6:	83 60       	ori	r24, 0x03	; 3
     8c8:	88 bb       	out	0x18, r24	; 24
     8ca:	84 81       	ldd	r24, Z+4	; 0x04
     8cc:	85 bb       	out	0x15, r24	; 21
     8ce:	c1 98       	cbi	0x18, 1	; 24
     8d0:	12 82       	std	Z+2, r1	; 0x02
     8d2:	08 95       	ret

000008d4 <_ZN10LEDDisplayD0Ev>:
     8d4:	0c 94 4f 04 	jmp	0x89e	; 0x89e <_ZdlPv>

000008d8 <_ZN10LEDDisplayC1Ev>:
     8d8:	fc 01       	movw	r30, r24
     8da:	86 ea       	ldi	r24, 0xA6	; 166
     8dc:	90 e0       	ldi	r25, 0x00	; 0
     8de:	91 83       	std	Z+1, r25	; 0x01
     8e0:	80 83       	st	Z, r24
     8e2:	12 82       	std	Z+2, r1	; 0x02
     8e4:	8f ef       	ldi	r24, 0xFF	; 255
     8e6:	83 83       	std	Z+3, r24	; 0x03
     8e8:	84 83       	std	Z+4, r24	; 0x04
     8ea:	97 b3       	in	r25, 0x17	; 23
     8ec:	93 60       	ori	r25, 0x03	; 3
     8ee:	97 bb       	out	0x17, r25	; 23
     8f0:	98 b3       	in	r25, 0x18	; 24
     8f2:	93 60       	ori	r25, 0x03	; 3
     8f4:	98 bb       	out	0x18, r25	; 24
     8f6:	85 bb       	out	0x15, r24	; 21
     8f8:	84 bb       	out	0x14, r24	; 20
     8fa:	45 e0       	ldi	r20, 0x05	; 5
     8fc:	50 e0       	ldi	r21, 0x00	; 0
     8fe:	bf 01       	movw	r22, r30
     900:	8c ea       	ldi	r24, 0xAC	; 172
     902:	90 e0       	ldi	r25, 0x00	; 0
     904:	0c 94 3c 01 	jmp	0x278	; 0x278 <_ZN5Timer8add_taskEP4Taskj>

00000908 <_ZN10LEDDisplay11display_decEh>:
     908:	dc 01       	movw	r26, r24
     90a:	86 2f       	mov	r24, r22
     90c:	64 36       	cpi	r22, 0x64	; 100
     90e:	08 f0       	brcs	.+2      	; 0x912 <_ZN10LEDDisplay11display_decEh+0xa>
     910:	83 e6       	ldi	r24, 0x63	; 99
     912:	6a e0       	ldi	r22, 0x0A	; 10
     914:	0e 94 dd 07 	call	0xfba	; 0xfba <__udivmodqi4>
     918:	e8 2f       	mov	r30, r24
     91a:	f0 e0       	ldi	r31, 0x00	; 0
     91c:	ee 56       	subi	r30, 0x6E	; 110
     91e:	ff 4f       	sbci	r31, 0xFF	; 255
     920:	20 81       	ld	r18, Z
     922:	20 95       	com	r18
     924:	13 96       	adiw	r26, 0x03	; 3
     926:	2c 93       	st	X, r18
     928:	13 97       	sbiw	r26, 0x03	; 3
     92a:	e9 2f       	mov	r30, r25
     92c:	f0 e0       	ldi	r31, 0x00	; 0
     92e:	ee 56       	subi	r30, 0x6E	; 110
     930:	ff 4f       	sbci	r31, 0xFF	; 255
     932:	90 81       	ld	r25, Z
     934:	90 95       	com	r25
     936:	14 96       	adiw	r26, 0x04	; 4
     938:	9c 93       	st	X, r25
     93a:	08 95       	ret

0000093c <_ZN7VL53L0XC1Ev>:
     93c:	08 95       	ret

0000093e <_ZN7VL53L0XD1Ev>:
     93e:	08 95       	ret

00000940 <_ZN7VL53L0X4readEv>:
     940:	0f 93       	push	r16
     942:	1f 93       	push	r17
     944:	cf 93       	push	r28
     946:	df 93       	push	r29
     948:	ec 01       	movw	r28, r24
     94a:	88 89       	ldd	r24, Y+16	; 0x10
     94c:	99 89       	ldd	r25, Y+17	; 0x11
     94e:	dc 01       	movw	r26, r24
     950:	ed 91       	ld	r30, X+
     952:	fc 91       	ld	r31, X
     954:	00 84       	ldd	r0, Z+8	; 0x08
     956:	f1 85       	ldd	r31, Z+9	; 0x09
     958:	e0 2d       	mov	r30, r0
     95a:	21 e0       	ldi	r18, 0x01	; 1
     95c:	4b e0       	ldi	r20, 0x0B	; 11
     95e:	62 e5       	ldi	r22, 0x52	; 82
     960:	09 95       	icall
     962:	88 89       	ldd	r24, Y+16	; 0x10
     964:	99 89       	ldd	r25, Y+17	; 0x11
     966:	dc 01       	movw	r26, r24
     968:	ed 91       	ld	r30, X+
     96a:	fc 91       	ld	r31, X
     96c:	9e 01       	movw	r18, r28
     96e:	2e 5f       	subi	r18, 0xFE	; 254
     970:	3f 4f       	sbci	r19, 0xFF	; 255
     972:	02 88       	ldd	r0, Z+18	; 0x12
     974:	f3 89       	ldd	r31, Z+19	; 0x13
     976:	e0 2d       	mov	r30, r0
     978:	0e e0       	ldi	r16, 0x0E	; 14
     97a:	10 e0       	ldi	r17, 0x00	; 0
     97c:	44 e1       	ldi	r20, 0x14	; 20
     97e:	62 e5       	ldi	r22, 0x52	; 82
     980:	09 95       	icall
     982:	2c 85       	ldd	r18, Y+12	; 0x0c
     984:	30 e0       	ldi	r19, 0x00	; 0
     986:	32 2f       	mov	r19, r18
     988:	22 27       	eor	r18, r18
     98a:	8d 85       	ldd	r24, Y+13	; 0x0d
     98c:	28 2b       	or	r18, r24
     98e:	c9 01       	movw	r24, r18
     990:	06 97       	sbiw	r24, 0x06	; 6
     992:	8a 3f       	cpi	r24, 0xFA	; 250
     994:	93 40       	sbci	r25, 0x03	; 3
     996:	80 f4       	brcc	.+32     	; 0x9b8 <_ZN7VL53L0X4readEv+0x78>
     998:	88 81       	ld	r24, Y
     99a:	99 81       	ldd	r25, Y+1	; 0x01
     99c:	43 e0       	ldi	r20, 0x03	; 3
     99e:	88 0f       	add	r24, r24
     9a0:	99 1f       	adc	r25, r25
     9a2:	4a 95       	dec	r20
     9a4:	e1 f7       	brne	.-8      	; 0x99e <_ZN7VL53L0X4readEv+0x5e>
     9a6:	82 0f       	add	r24, r18
     9a8:	93 1f       	adc	r25, r19
     9aa:	69 e0       	ldi	r22, 0x09	; 9
     9ac:	70 e0       	ldi	r23, 0x00	; 0
     9ae:	0e 94 e9 07 	call	0xfd2	; 0xfd2 <__divmodhi4>
     9b2:	79 83       	std	Y+1, r23	; 0x01
     9b4:	68 83       	st	Y, r22
     9b6:	04 c0       	rjmp	.+8      	; 0x9c0 <_ZN7VL53L0X4readEv+0x80>
     9b8:	80 e0       	ldi	r24, 0x00	; 0
     9ba:	94 e0       	ldi	r25, 0x04	; 4
     9bc:	99 83       	std	Y+1, r25	; 0x01
     9be:	88 83       	st	Y, r24
     9c0:	88 81       	ld	r24, Y
     9c2:	99 81       	ldd	r25, Y+1	; 0x01
     9c4:	df 91       	pop	r29
     9c6:	cf 91       	pop	r28
     9c8:	1f 91       	pop	r17
     9ca:	0f 91       	pop	r16
     9cc:	08 95       	ret

000009ce <_ZN7VL53L0X11getSPADinfoEPhPb>:
     9ce:	af 92       	push	r10
     9d0:	bf 92       	push	r11
     9d2:	cf 92       	push	r12
     9d4:	df 92       	push	r13
     9d6:	ef 92       	push	r14
     9d8:	ff 92       	push	r15
     9da:	0f 93       	push	r16
     9dc:	1f 93       	push	r17
     9de:	cf 93       	push	r28
     9e0:	df 93       	push	r29
     9e2:	ec 01       	movw	r28, r24
     9e4:	8b 01       	movw	r16, r22
     9e6:	5a 01       	movw	r10, r20
     9e8:	db 01       	movw	r26, r22
     9ea:	1c 92       	st	X, r1
     9ec:	88 89       	ldd	r24, Y+16	; 0x10
     9ee:	99 89       	ldd	r25, Y+17	; 0x11
     9f0:	dc 01       	movw	r26, r24
     9f2:	ed 91       	ld	r30, X+
     9f4:	fc 91       	ld	r31, X
     9f6:	00 84       	ldd	r0, Z+8	; 0x08
     9f8:	f1 85       	ldd	r31, Z+9	; 0x09
     9fa:	e0 2d       	mov	r30, r0
     9fc:	21 e0       	ldi	r18, 0x01	; 1
     9fe:	40 e8       	ldi	r20, 0x80	; 128
     a00:	62 e5       	ldi	r22, 0x52	; 82
     a02:	09 95       	icall
     a04:	88 89       	ldd	r24, Y+16	; 0x10
     a06:	99 89       	ldd	r25, Y+17	; 0x11
     a08:	dc 01       	movw	r26, r24
     a0a:	ed 91       	ld	r30, X+
     a0c:	fc 91       	ld	r31, X
     a0e:	00 84       	ldd	r0, Z+8	; 0x08
     a10:	f1 85       	ldd	r31, Z+9	; 0x09
     a12:	e0 2d       	mov	r30, r0
     a14:	21 e0       	ldi	r18, 0x01	; 1
     a16:	4f ef       	ldi	r20, 0xFF	; 255
     a18:	62 e5       	ldi	r22, 0x52	; 82
     a1a:	09 95       	icall
     a1c:	88 89       	ldd	r24, Y+16	; 0x10
     a1e:	99 89       	ldd	r25, Y+17	; 0x11
     a20:	dc 01       	movw	r26, r24
     a22:	ed 91       	ld	r30, X+
     a24:	fc 91       	ld	r31, X
     a26:	00 84       	ldd	r0, Z+8	; 0x08
     a28:	f1 85       	ldd	r31, Z+9	; 0x09
     a2a:	e0 2d       	mov	r30, r0
     a2c:	20 e0       	ldi	r18, 0x00	; 0
     a2e:	40 e0       	ldi	r20, 0x00	; 0
     a30:	62 e5       	ldi	r22, 0x52	; 82
     a32:	09 95       	icall
     a34:	88 89       	ldd	r24, Y+16	; 0x10
     a36:	99 89       	ldd	r25, Y+17	; 0x11
     a38:	dc 01       	movw	r26, r24
     a3a:	ed 91       	ld	r30, X+
     a3c:	fc 91       	ld	r31, X
     a3e:	00 84       	ldd	r0, Z+8	; 0x08
     a40:	f1 85       	ldd	r31, Z+9	; 0x09
     a42:	e0 2d       	mov	r30, r0
     a44:	26 e0       	ldi	r18, 0x06	; 6
     a46:	4f ef       	ldi	r20, 0xFF	; 255
     a48:	62 e5       	ldi	r22, 0x52	; 82
     a4a:	09 95       	icall
     a4c:	88 89       	ldd	r24, Y+16	; 0x10
     a4e:	99 89       	ldd	r25, Y+17	; 0x11
     a50:	fc 01       	movw	r30, r24
     a52:	a0 81       	ld	r26, Z
     a54:	b1 81       	ldd	r27, Z+1	; 0x01
     a56:	18 96       	adiw	r26, 0x08	; 8
     a58:	ed 90       	ld	r14, X+
     a5a:	fc 90       	ld	r15, X
     a5c:	19 97       	sbiw	r26, 0x09	; 9
     a5e:	1e 96       	adiw	r26, 0x0e	; 14
     a60:	ed 91       	ld	r30, X+
     a62:	fc 91       	ld	r31, X
     a64:	1f 97       	sbiw	r26, 0x0f	; 15
     a66:	43 e8       	ldi	r20, 0x83	; 131
     a68:	62 e5       	ldi	r22, 0x52	; 82
     a6a:	09 95       	icall
     a6c:	28 2f       	mov	r18, r24
     a6e:	24 60       	ori	r18, 0x04	; 4
     a70:	43 e8       	ldi	r20, 0x83	; 131
     a72:	62 e5       	ldi	r22, 0x52	; 82
     a74:	88 89       	ldd	r24, Y+16	; 0x10
     a76:	99 89       	ldd	r25, Y+17	; 0x11
     a78:	f7 01       	movw	r30, r14
     a7a:	09 95       	icall
     a7c:	88 89       	ldd	r24, Y+16	; 0x10
     a7e:	99 89       	ldd	r25, Y+17	; 0x11
     a80:	dc 01       	movw	r26, r24
     a82:	ed 91       	ld	r30, X+
     a84:	fc 91       	ld	r31, X
     a86:	00 84       	ldd	r0, Z+8	; 0x08
     a88:	f1 85       	ldd	r31, Z+9	; 0x09
     a8a:	e0 2d       	mov	r30, r0
     a8c:	27 e0       	ldi	r18, 0x07	; 7
     a8e:	4f ef       	ldi	r20, 0xFF	; 255
     a90:	62 e5       	ldi	r22, 0x52	; 82
     a92:	09 95       	icall
     a94:	88 89       	ldd	r24, Y+16	; 0x10
     a96:	99 89       	ldd	r25, Y+17	; 0x11
     a98:	dc 01       	movw	r26, r24
     a9a:	ed 91       	ld	r30, X+
     a9c:	fc 91       	ld	r31, X
     a9e:	00 84       	ldd	r0, Z+8	; 0x08
     aa0:	f1 85       	ldd	r31, Z+9	; 0x09
     aa2:	e0 2d       	mov	r30, r0
     aa4:	21 e0       	ldi	r18, 0x01	; 1
     aa6:	41 e8       	ldi	r20, 0x81	; 129
     aa8:	62 e5       	ldi	r22, 0x52	; 82
     aaa:	09 95       	icall
     aac:	88 89       	ldd	r24, Y+16	; 0x10
     aae:	99 89       	ldd	r25, Y+17	; 0x11
     ab0:	dc 01       	movw	r26, r24
     ab2:	ed 91       	ld	r30, X+
     ab4:	fc 91       	ld	r31, X
     ab6:	00 84       	ldd	r0, Z+8	; 0x08
     ab8:	f1 85       	ldd	r31, Z+9	; 0x09
     aba:	e0 2d       	mov	r30, r0
     abc:	21 e0       	ldi	r18, 0x01	; 1
     abe:	40 e8       	ldi	r20, 0x80	; 128
     ac0:	62 e5       	ldi	r22, 0x52	; 82
     ac2:	09 95       	icall
     ac4:	88 89       	ldd	r24, Y+16	; 0x10
     ac6:	99 89       	ldd	r25, Y+17	; 0x11
     ac8:	dc 01       	movw	r26, r24
     aca:	ed 91       	ld	r30, X+
     acc:	fc 91       	ld	r31, X
     ace:	00 84       	ldd	r0, Z+8	; 0x08
     ad0:	f1 85       	ldd	r31, Z+9	; 0x09
     ad2:	e0 2d       	mov	r30, r0
     ad4:	2b e6       	ldi	r18, 0x6B	; 107
     ad6:	44 e9       	ldi	r20, 0x94	; 148
     ad8:	62 e5       	ldi	r22, 0x52	; 82
     ada:	09 95       	icall
     adc:	88 89       	ldd	r24, Y+16	; 0x10
     ade:	99 89       	ldd	r25, Y+17	; 0x11
     ae0:	dc 01       	movw	r26, r24
     ae2:	ed 91       	ld	r30, X+
     ae4:	fc 91       	ld	r31, X
     ae6:	00 84       	ldd	r0, Z+8	; 0x08
     ae8:	f1 85       	ldd	r31, Z+9	; 0x09
     aea:	e0 2d       	mov	r30, r0
     aec:	20 e0       	ldi	r18, 0x00	; 0
     aee:	43 e8       	ldi	r20, 0x83	; 131
     af0:	62 e5       	ldi	r22, 0x52	; 82
     af2:	09 95       	icall
     af4:	81 e4       	ldi	r24, 0x41	; 65
     af6:	c8 2e       	mov	r12, r24
     af8:	82 e4       	ldi	r24, 0x42	; 66
     afa:	d8 2e       	mov	r13, r24
     afc:	8f e0       	ldi	r24, 0x0F	; 15
     afe:	e8 2e       	mov	r14, r24
     b00:	f1 2c       	mov	r15, r1
     b02:	88 89       	ldd	r24, Y+16	; 0x10
     b04:	99 89       	ldd	r25, Y+17	; 0x11
     b06:	dc 01       	movw	r26, r24
     b08:	ed 91       	ld	r30, X+
     b0a:	fc 91       	ld	r31, X
     b0c:	06 84       	ldd	r0, Z+14	; 0x0e
     b0e:	f7 85       	ldd	r31, Z+15	; 0x0f
     b10:	e0 2d       	mov	r30, r0
     b12:	43 e8       	ldi	r20, 0x83	; 131
     b14:	62 e5       	ldi	r22, 0x52	; 82
     b16:	09 95       	icall
     b18:	81 11       	cpse	r24, r1
     b1a:	08 c0       	rjmp	.+16     	; 0xb2c <_ZN7VL53L0X11getSPADinfoEPhPb+0x15e>
     b1c:	b1 e0       	ldi	r27, 0x01	; 1
     b1e:	cb 1a       	sub	r12, r27
     b20:	d1 08       	sbc	r13, r1
     b22:	e1 08       	sbc	r14, r1
     b24:	f1 08       	sbc	r15, r1
     b26:	69 f7       	brne	.-38     	; 0xb02 <_ZN7VL53L0X11getSPADinfoEPhPb+0x134>
     b28:	80 e0       	ldi	r24, 0x00	; 0
     b2a:	81 c0       	rjmp	.+258    	; 0xc2e <_ZN7VL53L0X11getSPADinfoEPhPb+0x260>
     b2c:	88 89       	ldd	r24, Y+16	; 0x10
     b2e:	99 89       	ldd	r25, Y+17	; 0x11
     b30:	dc 01       	movw	r26, r24
     b32:	ed 91       	ld	r30, X+
     b34:	fc 91       	ld	r31, X
     b36:	00 84       	ldd	r0, Z+8	; 0x08
     b38:	f1 85       	ldd	r31, Z+9	; 0x09
     b3a:	e0 2d       	mov	r30, r0
     b3c:	21 e0       	ldi	r18, 0x01	; 1
     b3e:	43 e8       	ldi	r20, 0x83	; 131
     b40:	62 e5       	ldi	r22, 0x52	; 82
     b42:	09 95       	icall
     b44:	88 89       	ldd	r24, Y+16	; 0x10
     b46:	99 89       	ldd	r25, Y+17	; 0x11
     b48:	dc 01       	movw	r26, r24
     b4a:	ed 91       	ld	r30, X+
     b4c:	fc 91       	ld	r31, X
     b4e:	06 84       	ldd	r0, Z+14	; 0x0e
     b50:	f7 85       	ldd	r31, Z+15	; 0x0f
     b52:	e0 2d       	mov	r30, r0
     b54:	42 e9       	ldi	r20, 0x92	; 146
     b56:	62 e5       	ldi	r22, 0x52	; 82
     b58:	09 95       	icall
     b5a:	98 2f       	mov	r25, r24
     b5c:	9f 77       	andi	r25, 0x7F	; 127
     b5e:	f8 01       	movw	r30, r16
     b60:	90 83       	st	Z, r25
     b62:	98 2f       	mov	r25, r24
     b64:	99 1f       	adc	r25, r25
     b66:	99 27       	eor	r25, r25
     b68:	99 1f       	adc	r25, r25
     b6a:	d5 01       	movw	r26, r10
     b6c:	9c 93       	st	X, r25
     b6e:	88 89       	ldd	r24, Y+16	; 0x10
     b70:	99 89       	ldd	r25, Y+17	; 0x11
     b72:	dc 01       	movw	r26, r24
     b74:	ed 91       	ld	r30, X+
     b76:	fc 91       	ld	r31, X
     b78:	00 84       	ldd	r0, Z+8	; 0x08
     b7a:	f1 85       	ldd	r31, Z+9	; 0x09
     b7c:	e0 2d       	mov	r30, r0
     b7e:	20 e0       	ldi	r18, 0x00	; 0
     b80:	41 e8       	ldi	r20, 0x81	; 129
     b82:	62 e5       	ldi	r22, 0x52	; 82
     b84:	09 95       	icall
     b86:	88 89       	ldd	r24, Y+16	; 0x10
     b88:	99 89       	ldd	r25, Y+17	; 0x11
     b8a:	dc 01       	movw	r26, r24
     b8c:	ed 91       	ld	r30, X+
     b8e:	fc 91       	ld	r31, X
     b90:	00 84       	ldd	r0, Z+8	; 0x08
     b92:	f1 85       	ldd	r31, Z+9	; 0x09
     b94:	e0 2d       	mov	r30, r0
     b96:	26 e0       	ldi	r18, 0x06	; 6
     b98:	4f ef       	ldi	r20, 0xFF	; 255
     b9a:	62 e5       	ldi	r22, 0x52	; 82
     b9c:	09 95       	icall
     b9e:	88 89       	ldd	r24, Y+16	; 0x10
     ba0:	99 89       	ldd	r25, Y+17	; 0x11
     ba2:	fc 01       	movw	r30, r24
     ba4:	a0 81       	ld	r26, Z
     ba6:	b1 81       	ldd	r27, Z+1	; 0x01
     ba8:	18 96       	adiw	r26, 0x08	; 8
     baa:	0d 91       	ld	r16, X+
     bac:	1c 91       	ld	r17, X
     bae:	19 97       	sbiw	r26, 0x09	; 9
     bb0:	1e 96       	adiw	r26, 0x0e	; 14
     bb2:	ed 91       	ld	r30, X+
     bb4:	fc 91       	ld	r31, X
     bb6:	1f 97       	sbiw	r26, 0x0f	; 15
     bb8:	43 e8       	ldi	r20, 0x83	; 131
     bba:	62 e5       	ldi	r22, 0x52	; 82
     bbc:	09 95       	icall
     bbe:	28 2f       	mov	r18, r24
     bc0:	43 e8       	ldi	r20, 0x83	; 131
     bc2:	62 e5       	ldi	r22, 0x52	; 82
     bc4:	88 89       	ldd	r24, Y+16	; 0x10
     bc6:	99 89       	ldd	r25, Y+17	; 0x11
     bc8:	f8 01       	movw	r30, r16
     bca:	09 95       	icall
     bcc:	88 89       	ldd	r24, Y+16	; 0x10
     bce:	99 89       	ldd	r25, Y+17	; 0x11
     bd0:	dc 01       	movw	r26, r24
     bd2:	ed 91       	ld	r30, X+
     bd4:	fc 91       	ld	r31, X
     bd6:	00 84       	ldd	r0, Z+8	; 0x08
     bd8:	f1 85       	ldd	r31, Z+9	; 0x09
     bda:	e0 2d       	mov	r30, r0
     bdc:	21 e0       	ldi	r18, 0x01	; 1
     bde:	4f ef       	ldi	r20, 0xFF	; 255
     be0:	62 e5       	ldi	r22, 0x52	; 82
     be2:	09 95       	icall
     be4:	88 89       	ldd	r24, Y+16	; 0x10
     be6:	99 89       	ldd	r25, Y+17	; 0x11
     be8:	dc 01       	movw	r26, r24
     bea:	ed 91       	ld	r30, X+
     bec:	fc 91       	ld	r31, X
     bee:	00 84       	ldd	r0, Z+8	; 0x08
     bf0:	f1 85       	ldd	r31, Z+9	; 0x09
     bf2:	e0 2d       	mov	r30, r0
     bf4:	21 e0       	ldi	r18, 0x01	; 1
     bf6:	40 e0       	ldi	r20, 0x00	; 0
     bf8:	62 e5       	ldi	r22, 0x52	; 82
     bfa:	09 95       	icall
     bfc:	88 89       	ldd	r24, Y+16	; 0x10
     bfe:	99 89       	ldd	r25, Y+17	; 0x11
     c00:	dc 01       	movw	r26, r24
     c02:	ed 91       	ld	r30, X+
     c04:	fc 91       	ld	r31, X
     c06:	00 84       	ldd	r0, Z+8	; 0x08
     c08:	f1 85       	ldd	r31, Z+9	; 0x09
     c0a:	e0 2d       	mov	r30, r0
     c0c:	20 e0       	ldi	r18, 0x00	; 0
     c0e:	4f ef       	ldi	r20, 0xFF	; 255
     c10:	62 e5       	ldi	r22, 0x52	; 82
     c12:	09 95       	icall
     c14:	88 89       	ldd	r24, Y+16	; 0x10
     c16:	99 89       	ldd	r25, Y+17	; 0x11
     c18:	dc 01       	movw	r26, r24
     c1a:	ed 91       	ld	r30, X+
     c1c:	fc 91       	ld	r31, X
     c1e:	00 84       	ldd	r0, Z+8	; 0x08
     c20:	f1 85       	ldd	r31, Z+9	; 0x09
     c22:	e0 2d       	mov	r30, r0
     c24:	20 e0       	ldi	r18, 0x00	; 0
     c26:	40 e8       	ldi	r20, 0x80	; 128
     c28:	62 e5       	ldi	r22, 0x52	; 82
     c2a:	09 95       	icall
     c2c:	81 e0       	ldi	r24, 0x01	; 1
     c2e:	df 91       	pop	r29
     c30:	cf 91       	pop	r28
     c32:	1f 91       	pop	r17
     c34:	0f 91       	pop	r16
     c36:	ff 90       	pop	r15
     c38:	ef 90       	pop	r14
     c3a:	df 90       	pop	r13
     c3c:	cf 90       	pop	r12
     c3e:	bf 90       	pop	r11
     c40:	af 90       	pop	r10
     c42:	08 95       	ret

00000c44 <_ZN7VL53L0X4initEP13I2C_Interface>:
     c44:	ef 92       	push	r14
     c46:	ff 92       	push	r15
     c48:	0f 93       	push	r16
     c4a:	1f 93       	push	r17
     c4c:	cf 93       	push	r28
     c4e:	df 93       	push	r29
     c50:	cd b7       	in	r28, 0x3d	; 61
     c52:	de b7       	in	r29, 0x3e	; 62
     c54:	28 97       	sbiw	r28, 0x08	; 8
     c56:	0f b6       	in	r0, 0x3f	; 63
     c58:	f8 94       	cli
     c5a:	de bf       	out	0x3e, r29	; 62
     c5c:	0f be       	out	0x3f, r0	; 63
     c5e:	cd bf       	out	0x3d, r28	; 61
     c60:	7c 01       	movw	r14, r24
     c62:	cb 01       	movw	r24, r22
     c64:	d7 01       	movw	r26, r14
     c66:	51 96       	adiw	r26, 0x11	; 17
     c68:	7c 93       	st	X, r23
     c6a:	6e 93       	st	-X, r22
     c6c:	50 97       	sbiw	r26, 0x10	; 16
     c6e:	20 e0       	ldi	r18, 0x00	; 0
     c70:	30 e2       	ldi	r19, 0x20	; 32
     c72:	2d 93       	st	X+, r18
     c74:	3c 93       	st	X, r19
     c76:	fb 01       	movw	r30, r22
     c78:	a0 81       	ld	r26, Z
     c7a:	b1 81       	ldd	r27, Z+1	; 0x01
     c7c:	18 96       	adiw	r26, 0x08	; 8
     c7e:	0d 91       	ld	r16, X+
     c80:	1c 91       	ld	r17, X
     c82:	19 97       	sbiw	r26, 0x09	; 9
     c84:	1e 96       	adiw	r26, 0x0e	; 14
     c86:	ed 91       	ld	r30, X+
     c88:	fc 91       	ld	r31, X
     c8a:	1f 97       	sbiw	r26, 0x0f	; 15
     c8c:	49 e8       	ldi	r20, 0x89	; 137
     c8e:	62 e5       	ldi	r22, 0x52	; 82
     c90:	09 95       	icall
     c92:	28 2f       	mov	r18, r24
     c94:	21 60       	ori	r18, 0x01	; 1
     c96:	49 e8       	ldi	r20, 0x89	; 137
     c98:	62 e5       	ldi	r22, 0x52	; 82
     c9a:	d7 01       	movw	r26, r14
     c9c:	50 96       	adiw	r26, 0x10	; 16
     c9e:	8d 91       	ld	r24, X+
     ca0:	9c 91       	ld	r25, X
     ca2:	51 97       	sbiw	r26, 0x11	; 17
     ca4:	f8 01       	movw	r30, r16
     ca6:	09 95       	icall
     ca8:	d7 01       	movw	r26, r14
     caa:	50 96       	adiw	r26, 0x10	; 16
     cac:	8d 91       	ld	r24, X+
     cae:	9c 91       	ld	r25, X
     cb0:	51 97       	sbiw	r26, 0x11	; 17
     cb2:	dc 01       	movw	r26, r24
     cb4:	ed 91       	ld	r30, X+
     cb6:	fc 91       	ld	r31, X
     cb8:	06 84       	ldd	r0, Z+14	; 0x0e
     cba:	f7 85       	ldd	r31, Z+15	; 0x0f
     cbc:	e0 2d       	mov	r30, r0
     cbe:	40 ec       	ldi	r20, 0xC0	; 192
     cc0:	62 e5       	ldi	r22, 0x52	; 82
     cc2:	09 95       	icall
     cc4:	8e 3e       	cpi	r24, 0xEE	; 238
     cc6:	09 f0       	breq	.+2      	; 0xcca <_ZN7VL53L0X4initEP13I2C_Interface+0x86>
     cc8:	61 c1       	rjmp	.+706    	; 0xf8c <_ZN7VL53L0X4initEP13I2C_Interface+0x348>
     cca:	f7 01       	movw	r30, r14
     ccc:	80 89       	ldd	r24, Z+16	; 0x10
     cce:	91 89       	ldd	r25, Z+17	; 0x11
     cd0:	dc 01       	movw	r26, r24
     cd2:	ed 91       	ld	r30, X+
     cd4:	fc 91       	ld	r31, X
     cd6:	00 84       	ldd	r0, Z+8	; 0x08
     cd8:	f1 85       	ldd	r31, Z+9	; 0x09
     cda:	e0 2d       	mov	r30, r0
     cdc:	21 e0       	ldi	r18, 0x01	; 1
     cde:	4f eb       	ldi	r20, 0xBF	; 191
     ce0:	62 e5       	ldi	r22, 0x52	; 82
     ce2:	09 95       	icall
     ce4:	81 ea       	ldi	r24, 0xA1	; 161
     ce6:	96 e8       	ldi	r25, 0x86	; 134
     ce8:	a1 e0       	ldi	r26, 0x01	; 1
     cea:	b0 e0       	ldi	r27, 0x00	; 0
     cec:	01 97       	sbiw	r24, 0x01	; 1
     cee:	a1 09       	sbc	r26, r1
     cf0:	b1 09       	sbc	r27, r1
     cf2:	11 f0       	breq	.+4      	; 0xcf8 <_ZN7VL53L0X4initEP13I2C_Interface+0xb4>
     cf4:	00 00       	nop
     cf6:	fa cf       	rjmp	.-12     	; 0xcec <_ZN7VL53L0X4initEP13I2C_Interface+0xa8>
     cf8:	f7 01       	movw	r30, r14
     cfa:	80 89       	ldd	r24, Z+16	; 0x10
     cfc:	91 89       	ldd	r25, Z+17	; 0x11
     cfe:	dc 01       	movw	r26, r24
     d00:	ed 91       	ld	r30, X+
     d02:	fc 91       	ld	r31, X
     d04:	00 84       	ldd	r0, Z+8	; 0x08
     d06:	f1 85       	ldd	r31, Z+9	; 0x09
     d08:	e0 2d       	mov	r30, r0
     d0a:	20 e0       	ldi	r18, 0x00	; 0
     d0c:	48 e8       	ldi	r20, 0x88	; 136
     d0e:	62 e5       	ldi	r22, 0x52	; 82
     d10:	09 95       	icall
     d12:	f7 01       	movw	r30, r14
     d14:	80 89       	ldd	r24, Z+16	; 0x10
     d16:	91 89       	ldd	r25, Z+17	; 0x11
     d18:	dc 01       	movw	r26, r24
     d1a:	ed 91       	ld	r30, X+
     d1c:	fc 91       	ld	r31, X
     d1e:	00 84       	ldd	r0, Z+8	; 0x08
     d20:	f1 85       	ldd	r31, Z+9	; 0x09
     d22:	e0 2d       	mov	r30, r0
     d24:	21 e0       	ldi	r18, 0x01	; 1
     d26:	40 e8       	ldi	r20, 0x80	; 128
     d28:	62 e5       	ldi	r22, 0x52	; 82
     d2a:	09 95       	icall
     d2c:	f7 01       	movw	r30, r14
     d2e:	80 89       	ldd	r24, Z+16	; 0x10
     d30:	91 89       	ldd	r25, Z+17	; 0x11
     d32:	dc 01       	movw	r26, r24
     d34:	ed 91       	ld	r30, X+
     d36:	fc 91       	ld	r31, X
     d38:	00 84       	ldd	r0, Z+8	; 0x08
     d3a:	f1 85       	ldd	r31, Z+9	; 0x09
     d3c:	e0 2d       	mov	r30, r0
     d3e:	21 e0       	ldi	r18, 0x01	; 1
     d40:	4f ef       	ldi	r20, 0xFF	; 255
     d42:	62 e5       	ldi	r22, 0x52	; 82
     d44:	09 95       	icall
     d46:	f7 01       	movw	r30, r14
     d48:	80 89       	ldd	r24, Z+16	; 0x10
     d4a:	91 89       	ldd	r25, Z+17	; 0x11
     d4c:	dc 01       	movw	r26, r24
     d4e:	ed 91       	ld	r30, X+
     d50:	fc 91       	ld	r31, X
     d52:	00 84       	ldd	r0, Z+8	; 0x08
     d54:	f1 85       	ldd	r31, Z+9	; 0x09
     d56:	e0 2d       	mov	r30, r0
     d58:	20 e0       	ldi	r18, 0x00	; 0
     d5a:	40 e0       	ldi	r20, 0x00	; 0
     d5c:	62 e5       	ldi	r22, 0x52	; 82
     d5e:	09 95       	icall
     d60:	f7 01       	movw	r30, r14
     d62:	80 89       	ldd	r24, Z+16	; 0x10
     d64:	91 89       	ldd	r25, Z+17	; 0x11
     d66:	dc 01       	movw	r26, r24
     d68:	ed 91       	ld	r30, X+
     d6a:	fc 91       	ld	r31, X
     d6c:	06 84       	ldd	r0, Z+14	; 0x0e
     d6e:	f7 85       	ldd	r31, Z+15	; 0x0f
     d70:	e0 2d       	mov	r30, r0
     d72:	41 e9       	ldi	r20, 0x91	; 145
     d74:	62 e5       	ldi	r22, 0x52	; 82
     d76:	09 95       	icall
     d78:	f7 01       	movw	r30, r14
     d7a:	80 89       	ldd	r24, Z+16	; 0x10
     d7c:	91 89       	ldd	r25, Z+17	; 0x11
     d7e:	dc 01       	movw	r26, r24
     d80:	ed 91       	ld	r30, X+
     d82:	fc 91       	ld	r31, X
     d84:	00 84       	ldd	r0, Z+8	; 0x08
     d86:	f1 85       	ldd	r31, Z+9	; 0x09
     d88:	e0 2d       	mov	r30, r0
     d8a:	21 e0       	ldi	r18, 0x01	; 1
     d8c:	40 e0       	ldi	r20, 0x00	; 0
     d8e:	62 e5       	ldi	r22, 0x52	; 82
     d90:	09 95       	icall
     d92:	f7 01       	movw	r30, r14
     d94:	80 89       	ldd	r24, Z+16	; 0x10
     d96:	91 89       	ldd	r25, Z+17	; 0x11
     d98:	dc 01       	movw	r26, r24
     d9a:	ed 91       	ld	r30, X+
     d9c:	fc 91       	ld	r31, X
     d9e:	00 84       	ldd	r0, Z+8	; 0x08
     da0:	f1 85       	ldd	r31, Z+9	; 0x09
     da2:	e0 2d       	mov	r30, r0
     da4:	20 e0       	ldi	r18, 0x00	; 0
     da6:	4f ef       	ldi	r20, 0xFF	; 255
     da8:	62 e5       	ldi	r22, 0x52	; 82
     daa:	09 95       	icall
     dac:	f7 01       	movw	r30, r14
     dae:	80 89       	ldd	r24, Z+16	; 0x10
     db0:	91 89       	ldd	r25, Z+17	; 0x11
     db2:	dc 01       	movw	r26, r24
     db4:	ed 91       	ld	r30, X+
     db6:	fc 91       	ld	r31, X
     db8:	00 84       	ldd	r0, Z+8	; 0x08
     dba:	f1 85       	ldd	r31, Z+9	; 0x09
     dbc:	e0 2d       	mov	r30, r0
     dbe:	20 e0       	ldi	r18, 0x00	; 0
     dc0:	40 e8       	ldi	r20, 0x80	; 128
     dc2:	62 e5       	ldi	r22, 0x52	; 82
     dc4:	09 95       	icall
     dc6:	18 86       	std	Y+8, r1	; 0x08
     dc8:	ae 01       	movw	r20, r28
     dca:	49 5f       	subi	r20, 0xF9	; 249
     dcc:	5f 4f       	sbci	r21, 0xFF	; 255
     dce:	be 01       	movw	r22, r28
     dd0:	68 5f       	subi	r22, 0xF8	; 248
     dd2:	7f 4f       	sbci	r23, 0xFF	; 255
     dd4:	c7 01       	movw	r24, r14
     dd6:	0e 94 e7 04 	call	0x9ce	; 0x9ce <_ZN7VL53L0X11getSPADinfoEPhPb>
     dda:	f7 01       	movw	r30, r14
     ddc:	80 89       	ldd	r24, Z+16	; 0x10
     dde:	91 89       	ldd	r25, Z+17	; 0x11
     de0:	dc 01       	movw	r26, r24
     de2:	ed 91       	ld	r30, X+
     de4:	fc 91       	ld	r31, X
     de6:	02 88       	ldd	r0, Z+18	; 0x12
     de8:	f3 89       	ldd	r31, Z+19	; 0x13
     dea:	e0 2d       	mov	r30, r0
     dec:	06 e0       	ldi	r16, 0x06	; 6
     dee:	10 e0       	ldi	r17, 0x00	; 0
     df0:	9e 01       	movw	r18, r28
     df2:	2f 5f       	subi	r18, 0xFF	; 255
     df4:	3f 4f       	sbci	r19, 0xFF	; 255
     df6:	40 eb       	ldi	r20, 0xB0	; 176
     df8:	62 e5       	ldi	r22, 0x52	; 82
     dfa:	09 95       	icall
     dfc:	f7 01       	movw	r30, r14
     dfe:	80 89       	ldd	r24, Z+16	; 0x10
     e00:	91 89       	ldd	r25, Z+17	; 0x11
     e02:	dc 01       	movw	r26, r24
     e04:	ed 91       	ld	r30, X+
     e06:	fc 91       	ld	r31, X
     e08:	00 84       	ldd	r0, Z+8	; 0x08
     e0a:	f1 85       	ldd	r31, Z+9	; 0x09
     e0c:	e0 2d       	mov	r30, r0
     e0e:	21 e0       	ldi	r18, 0x01	; 1
     e10:	4f ef       	ldi	r20, 0xFF	; 255
     e12:	62 e5       	ldi	r22, 0x52	; 82
     e14:	09 95       	icall
     e16:	f7 01       	movw	r30, r14
     e18:	80 89       	ldd	r24, Z+16	; 0x10
     e1a:	91 89       	ldd	r25, Z+17	; 0x11
     e1c:	dc 01       	movw	r26, r24
     e1e:	ed 91       	ld	r30, X+
     e20:	fc 91       	ld	r31, X
     e22:	00 84       	ldd	r0, Z+8	; 0x08
     e24:	f1 85       	ldd	r31, Z+9	; 0x09
     e26:	e0 2d       	mov	r30, r0
     e28:	20 e0       	ldi	r18, 0x00	; 0
     e2a:	4f e4       	ldi	r20, 0x4F	; 79
     e2c:	62 e5       	ldi	r22, 0x52	; 82
     e2e:	09 95       	icall
     e30:	f7 01       	movw	r30, r14
     e32:	80 89       	ldd	r24, Z+16	; 0x10
     e34:	91 89       	ldd	r25, Z+17	; 0x11
     e36:	dc 01       	movw	r26, r24
     e38:	ed 91       	ld	r30, X+
     e3a:	fc 91       	ld	r31, X
     e3c:	00 84       	ldd	r0, Z+8	; 0x08
     e3e:	f1 85       	ldd	r31, Z+9	; 0x09
     e40:	e0 2d       	mov	r30, r0
     e42:	2c e2       	ldi	r18, 0x2C	; 44
     e44:	4e e4       	ldi	r20, 0x4E	; 78
     e46:	62 e5       	ldi	r22, 0x52	; 82
     e48:	09 95       	icall
     e4a:	f7 01       	movw	r30, r14
     e4c:	80 89       	ldd	r24, Z+16	; 0x10
     e4e:	91 89       	ldd	r25, Z+17	; 0x11
     e50:	dc 01       	movw	r26, r24
     e52:	ed 91       	ld	r30, X+
     e54:	fc 91       	ld	r31, X
     e56:	00 84       	ldd	r0, Z+8	; 0x08
     e58:	f1 85       	ldd	r31, Z+9	; 0x09
     e5a:	e0 2d       	mov	r30, r0
     e5c:	20 e0       	ldi	r18, 0x00	; 0
     e5e:	4f ef       	ldi	r20, 0xFF	; 255
     e60:	62 e5       	ldi	r22, 0x52	; 82
     e62:	09 95       	icall
     e64:	f7 01       	movw	r30, r14
     e66:	80 89       	ldd	r24, Z+16	; 0x10
     e68:	91 89       	ldd	r25, Z+17	; 0x11
     e6a:	dc 01       	movw	r26, r24
     e6c:	ed 91       	ld	r30, X+
     e6e:	fc 91       	ld	r31, X
     e70:	00 84       	ldd	r0, Z+8	; 0x08
     e72:	f1 85       	ldd	r31, Z+9	; 0x09
     e74:	e0 2d       	mov	r30, r0
     e76:	24 eb       	ldi	r18, 0xB4	; 180
     e78:	46 eb       	ldi	r20, 0xB6	; 182
     e7a:	62 e5       	ldi	r22, 0x52	; 82
     e7c:	09 95       	icall
     e7e:	8f 81       	ldd	r24, Y+7	; 0x07
     e80:	81 11       	cpse	r24, r1
     e82:	02 c0       	rjmp	.+4      	; 0xe88 <_ZN7VL53L0X4initEP13I2C_Interface+0x244>
     e84:	40 e0       	ldi	r20, 0x00	; 0
     e86:	01 c0       	rjmp	.+2      	; 0xe8a <_ZN7VL53L0X4initEP13I2C_Interface+0x246>
     e88:	4c e0       	ldi	r20, 0x0C	; 12
     e8a:	a8 85       	ldd	r26, Y+8	; 0x08
     e8c:	80 e0       	ldi	r24, 0x00	; 0
     e8e:	90 e0       	ldi	r25, 0x00	; 0
     e90:	61 e0       	ldi	r22, 0x01	; 1
     e92:	70 e0       	ldi	r23, 0x00	; 0
     e94:	28 2f       	mov	r18, r24
     e96:	26 95       	lsr	r18
     e98:	26 95       	lsr	r18
     e9a:	26 95       	lsr	r18
     e9c:	58 2f       	mov	r21, r24
     e9e:	57 70       	andi	r21, 0x07	; 7
     ea0:	e1 e0       	ldi	r30, 0x01	; 1
     ea2:	f0 e0       	ldi	r31, 0x00	; 0
     ea4:	ec 0f       	add	r30, r28
     ea6:	fd 1f       	adc	r31, r29
     ea8:	e2 0f       	add	r30, r18
     eaa:	f1 1d       	adc	r31, r1
     eac:	84 17       	cp	r24, r20
     eae:	10 f0       	brcs	.+4      	; 0xeb4 <_ZN7VL53L0X4initEP13I2C_Interface+0x270>
     eb0:	9a 13       	cpse	r25, r26
     eb2:	0a c0       	rjmp	.+20     	; 0xec8 <_ZN7VL53L0X4initEP13I2C_Interface+0x284>
     eb4:	9b 01       	movw	r18, r22
     eb6:	01 c0       	rjmp	.+2      	; 0xeba <_ZN7VL53L0X4initEP13I2C_Interface+0x276>
     eb8:	22 0f       	add	r18, r18
     eba:	5a 95       	dec	r21
     ebc:	ea f7       	brpl	.-6      	; 0xeb8 <_ZN7VL53L0X4initEP13I2C_Interface+0x274>
     ebe:	20 95       	com	r18
     ec0:	30 81       	ld	r19, Z
     ec2:	23 23       	and	r18, r19
     ec4:	20 83       	st	Z, r18
     ec6:	09 c0       	rjmp	.+18     	; 0xeda <_ZN7VL53L0X4initEP13I2C_Interface+0x296>
     ec8:	20 81       	ld	r18, Z
     eca:	30 e0       	ldi	r19, 0x00	; 0
     ecc:	02 c0       	rjmp	.+4      	; 0xed2 <_ZN7VL53L0X4initEP13I2C_Interface+0x28e>
     ece:	35 95       	asr	r19
     ed0:	27 95       	ror	r18
     ed2:	5a 95       	dec	r21
     ed4:	e2 f7       	brpl	.-8      	; 0xece <_ZN7VL53L0X4initEP13I2C_Interface+0x28a>
     ed6:	20 fd       	sbrc	r18, 0
     ed8:	9f 5f       	subi	r25, 0xFF	; 255
     eda:	8f 5f       	subi	r24, 0xFF	; 255
     edc:	80 33       	cpi	r24, 0x30	; 48
     ede:	d1 f6       	brne	.-76     	; 0xe94 <_ZN7VL53L0X4initEP13I2C_Interface+0x250>
     ee0:	f7 01       	movw	r30, r14
     ee2:	80 89       	ldd	r24, Z+16	; 0x10
     ee4:	91 89       	ldd	r25, Z+17	; 0x11
     ee6:	dc 01       	movw	r26, r24
     ee8:	ed 91       	ld	r30, X+
     eea:	fc 91       	ld	r31, X
     eec:	04 84       	ldd	r0, Z+12	; 0x0c
     eee:	f5 85       	ldd	r31, Z+13	; 0x0d
     ef0:	e0 2d       	mov	r30, r0
     ef2:	06 e0       	ldi	r16, 0x06	; 6
     ef4:	10 e0       	ldi	r17, 0x00	; 0
     ef6:	9e 01       	movw	r18, r28
     ef8:	2f 5f       	subi	r18, 0xFF	; 255
     efa:	3f 4f       	sbci	r19, 0xFF	; 255
     efc:	40 eb       	ldi	r20, 0xB0	; 176
     efe:	62 e5       	ldi	r22, 0x52	; 82
     f00:	09 95       	icall
     f02:	f7 01       	movw	r30, r14
     f04:	80 89       	ldd	r24, Z+16	; 0x10
     f06:	91 89       	ldd	r25, Z+17	; 0x11
     f08:	dc 01       	movw	r26, r24
     f0a:	ed 91       	ld	r30, X+
     f0c:	fc 91       	ld	r31, X
     f0e:	06 84       	ldd	r0, Z+14	; 0x0e
     f10:	f7 85       	ldd	r31, Z+15	; 0x0f
     f12:	e0 2d       	mov	r30, r0
     f14:	44 e8       	ldi	r20, 0x84	; 132
     f16:	62 e5       	ldi	r22, 0x52	; 82
     f18:	09 95       	icall
     f1a:	18 2f       	mov	r17, r24
     f1c:	f7 01       	movw	r30, r14
     f1e:	80 89       	ldd	r24, Z+16	; 0x10
     f20:	91 89       	ldd	r25, Z+17	; 0x11
     f22:	dc 01       	movw	r26, r24
     f24:	ed 91       	ld	r30, X+
     f26:	fc 91       	ld	r31, X
     f28:	00 84       	ldd	r0, Z+8	; 0x08
     f2a:	f1 85       	ldd	r31, Z+9	; 0x09
     f2c:	e0 2d       	mov	r30, r0
     f2e:	24 e0       	ldi	r18, 0x04	; 4
     f30:	4a e0       	ldi	r20, 0x0A	; 10
     f32:	62 e5       	ldi	r22, 0x52	; 82
     f34:	09 95       	icall
     f36:	f7 01       	movw	r30, r14
     f38:	80 89       	ldd	r24, Z+16	; 0x10
     f3a:	91 89       	ldd	r25, Z+17	; 0x11
     f3c:	dc 01       	movw	r26, r24
     f3e:	ed 91       	ld	r30, X+
     f40:	fc 91       	ld	r31, X
     f42:	21 2f       	mov	r18, r17
     f44:	2f 7e       	andi	r18, 0xEF	; 239
     f46:	00 84       	ldd	r0, Z+8	; 0x08
     f48:	f1 85       	ldd	r31, Z+9	; 0x09
     f4a:	e0 2d       	mov	r30, r0
     f4c:	44 e8       	ldi	r20, 0x84	; 132
     f4e:	62 e5       	ldi	r22, 0x52	; 82
     f50:	09 95       	icall
     f52:	f7 01       	movw	r30, r14
     f54:	80 89       	ldd	r24, Z+16	; 0x10
     f56:	91 89       	ldd	r25, Z+17	; 0x11
     f58:	dc 01       	movw	r26, r24
     f5a:	ed 91       	ld	r30, X+
     f5c:	fc 91       	ld	r31, X
     f5e:	00 84       	ldd	r0, Z+8	; 0x08
     f60:	f1 85       	ldd	r31, Z+9	; 0x09
     f62:	e0 2d       	mov	r30, r0
     f64:	21 e0       	ldi	r18, 0x01	; 1
     f66:	4b e0       	ldi	r20, 0x0B	; 11
     f68:	62 e5       	ldi	r22, 0x52	; 82
     f6a:	09 95       	icall
     f6c:	f7 01       	movw	r30, r14
     f6e:	80 89       	ldd	r24, Z+16	; 0x10
     f70:	91 89       	ldd	r25, Z+17	; 0x11
     f72:	dc 01       	movw	r26, r24
     f74:	ed 91       	ld	r30, X+
     f76:	fc 91       	ld	r31, X
     f78:	00 84       	ldd	r0, Z+8	; 0x08
     f7a:	f1 85       	ldd	r31, Z+9	; 0x09
     f7c:	e0 2d       	mov	r30, r0
     f7e:	22 e0       	ldi	r18, 0x02	; 2
     f80:	40 e0       	ldi	r20, 0x00	; 0
     f82:	62 e5       	ldi	r22, 0x52	; 82
     f84:	09 95       	icall
     f86:	80 e0       	ldi	r24, 0x00	; 0
     f88:	90 e0       	ldi	r25, 0x00	; 0
     f8a:	02 c0       	rjmp	.+4      	; 0xf90 <_ZN7VL53L0X4initEP13I2C_Interface+0x34c>
     f8c:	8e ef       	ldi	r24, 0xFE	; 254
     f8e:	9f ef       	ldi	r25, 0xFF	; 255
     f90:	28 96       	adiw	r28, 0x08	; 8
     f92:	0f b6       	in	r0, 0x3f	; 63
     f94:	f8 94       	cli
     f96:	de bf       	out	0x3e, r29	; 62
     f98:	0f be       	out	0x3f, r0	; 63
     f9a:	cd bf       	out	0x3d, r28	; 61
     f9c:	df 91       	pop	r29
     f9e:	cf 91       	pop	r28
     fa0:	1f 91       	pop	r17
     fa2:	0f 91       	pop	r16
     fa4:	ff 90       	pop	r15
     fa6:	ef 90       	pop	r14
     fa8:	08 95       	ret

00000faa <_GLOBAL__sub_I_terminal>:
     faa:	8d ee       	ldi	r24, 0xED	; 237
     fac:	90 e0       	ldi	r25, 0x00	; 0
     fae:	0c 94 17 01 	jmp	0x22e	; 0x22e <_ZN5USARTC1Ev>

00000fb2 <_GLOBAL__sub_D_terminal>:
     fb2:	8d ee       	ldi	r24, 0xED	; 237
     fb4:	90 e0       	ldi	r25, 0x00	; 0
     fb6:	0c 94 21 01 	jmp	0x242	; 0x242 <_ZN5USARTD1Ev>

00000fba <__udivmodqi4>:
     fba:	99 1b       	sub	r25, r25
     fbc:	79 e0       	ldi	r23, 0x09	; 9
     fbe:	04 c0       	rjmp	.+8      	; 0xfc8 <__udivmodqi4_ep>

00000fc0 <__udivmodqi4_loop>:
     fc0:	99 1f       	adc	r25, r25
     fc2:	96 17       	cp	r25, r22
     fc4:	08 f0       	brcs	.+2      	; 0xfc8 <__udivmodqi4_ep>
     fc6:	96 1b       	sub	r25, r22

00000fc8 <__udivmodqi4_ep>:
     fc8:	88 1f       	adc	r24, r24
     fca:	7a 95       	dec	r23
     fcc:	c9 f7       	brne	.-14     	; 0xfc0 <__udivmodqi4_loop>
     fce:	80 95       	com	r24
     fd0:	08 95       	ret

00000fd2 <__divmodhi4>:
     fd2:	97 fb       	bst	r25, 7
     fd4:	07 2e       	mov	r0, r23
     fd6:	16 f4       	brtc	.+4      	; 0xfdc <__divmodhi4+0xa>
     fd8:	00 94       	com	r0
     fda:	07 d0       	rcall	.+14     	; 0xfea <__divmodhi4_neg1>
     fdc:	77 fd       	sbrc	r23, 7
     fde:	09 d0       	rcall	.+18     	; 0xff2 <__divmodhi4_neg2>
     fe0:	0e 94 2a 08 	call	0x1054	; 0x1054 <__udivmodhi4>
     fe4:	07 fc       	sbrc	r0, 7
     fe6:	05 d0       	rcall	.+10     	; 0xff2 <__divmodhi4_neg2>
     fe8:	3e f4       	brtc	.+14     	; 0xff8 <__divmodhi4_exit>

00000fea <__divmodhi4_neg1>:
     fea:	90 95       	com	r25
     fec:	81 95       	neg	r24
     fee:	9f 4f       	sbci	r25, 0xFF	; 255
     ff0:	08 95       	ret

00000ff2 <__divmodhi4_neg2>:
     ff2:	70 95       	com	r23
     ff4:	61 95       	neg	r22
     ff6:	7f 4f       	sbci	r23, 0xFF	; 255

00000ff8 <__divmodhi4_exit>:
     ff8:	08 95       	ret

00000ffa <__udivmodsi4>:
     ffa:	a1 e2       	ldi	r26, 0x21	; 33
     ffc:	1a 2e       	mov	r1, r26
     ffe:	aa 1b       	sub	r26, r26
    1000:	bb 1b       	sub	r27, r27
    1002:	fd 01       	movw	r30, r26
    1004:	0d c0       	rjmp	.+26     	; 0x1020 <__udivmodsi4_ep>

00001006 <__udivmodsi4_loop>:
    1006:	aa 1f       	adc	r26, r26
    1008:	bb 1f       	adc	r27, r27
    100a:	ee 1f       	adc	r30, r30
    100c:	ff 1f       	adc	r31, r31
    100e:	a2 17       	cp	r26, r18
    1010:	b3 07       	cpc	r27, r19
    1012:	e4 07       	cpc	r30, r20
    1014:	f5 07       	cpc	r31, r21
    1016:	20 f0       	brcs	.+8      	; 0x1020 <__udivmodsi4_ep>
    1018:	a2 1b       	sub	r26, r18
    101a:	b3 0b       	sbc	r27, r19
    101c:	e4 0b       	sbc	r30, r20
    101e:	f5 0b       	sbc	r31, r21

00001020 <__udivmodsi4_ep>:
    1020:	66 1f       	adc	r22, r22
    1022:	77 1f       	adc	r23, r23
    1024:	88 1f       	adc	r24, r24
    1026:	99 1f       	adc	r25, r25
    1028:	1a 94       	dec	r1
    102a:	69 f7       	brne	.-38     	; 0x1006 <__udivmodsi4_loop>
    102c:	60 95       	com	r22
    102e:	70 95       	com	r23
    1030:	80 95       	com	r24
    1032:	90 95       	com	r25
    1034:	9b 01       	movw	r18, r22
    1036:	ac 01       	movw	r20, r24
    1038:	bd 01       	movw	r22, r26
    103a:	cf 01       	movw	r24, r30
    103c:	08 95       	ret

0000103e <__muluhisi3>:
    103e:	0e 94 44 08 	call	0x1088	; 0x1088 <__umulhisi3>
    1042:	a5 9f       	mul	r26, r21
    1044:	90 0d       	add	r25, r0
    1046:	b4 9f       	mul	r27, r20
    1048:	90 0d       	add	r25, r0
    104a:	a4 9f       	mul	r26, r20
    104c:	80 0d       	add	r24, r0
    104e:	91 1d       	adc	r25, r1
    1050:	11 24       	eor	r1, r1
    1052:	08 95       	ret

00001054 <__udivmodhi4>:
    1054:	aa 1b       	sub	r26, r26
    1056:	bb 1b       	sub	r27, r27
    1058:	51 e1       	ldi	r21, 0x11	; 17
    105a:	07 c0       	rjmp	.+14     	; 0x106a <__udivmodhi4_ep>

0000105c <__udivmodhi4_loop>:
    105c:	aa 1f       	adc	r26, r26
    105e:	bb 1f       	adc	r27, r27
    1060:	a6 17       	cp	r26, r22
    1062:	b7 07       	cpc	r27, r23
    1064:	10 f0       	brcs	.+4      	; 0x106a <__udivmodhi4_ep>
    1066:	a6 1b       	sub	r26, r22
    1068:	b7 0b       	sbc	r27, r23

0000106a <__udivmodhi4_ep>:
    106a:	88 1f       	adc	r24, r24
    106c:	99 1f       	adc	r25, r25
    106e:	5a 95       	dec	r21
    1070:	a9 f7       	brne	.-22     	; 0x105c <__udivmodhi4_loop>
    1072:	80 95       	com	r24
    1074:	90 95       	com	r25
    1076:	bc 01       	movw	r22, r24
    1078:	cd 01       	movw	r24, r26
    107a:	08 95       	ret

0000107c <__tablejump2__>:
    107c:	ee 0f       	add	r30, r30
    107e:	ff 1f       	adc	r31, r31
    1080:	05 90       	lpm	r0, Z+
    1082:	f4 91       	lpm	r31, Z
    1084:	e0 2d       	mov	r30, r0
    1086:	09 94       	ijmp

00001088 <__umulhisi3>:
    1088:	a2 9f       	mul	r26, r18
    108a:	b0 01       	movw	r22, r0
    108c:	b3 9f       	mul	r27, r19
    108e:	c0 01       	movw	r24, r0
    1090:	a3 9f       	mul	r26, r19
    1092:	70 0d       	add	r23, r0
    1094:	81 1d       	adc	r24, r1
    1096:	11 24       	eor	r1, r1
    1098:	91 1d       	adc	r25, r1
    109a:	b2 9f       	mul	r27, r18
    109c:	70 0d       	add	r23, r0
    109e:	81 1d       	adc	r24, r1
    10a0:	11 24       	eor	r1, r1
    10a2:	91 1d       	adc	r25, r1
    10a4:	08 95       	ret

000010a6 <malloc>:
    10a6:	cf 93       	push	r28
    10a8:	df 93       	push	r29
    10aa:	82 30       	cpi	r24, 0x02	; 2
    10ac:	91 05       	cpc	r25, r1
    10ae:	10 f4       	brcc	.+4      	; 0x10b4 <malloc+0xe>
    10b0:	82 e0       	ldi	r24, 0x02	; 2
    10b2:	90 e0       	ldi	r25, 0x00	; 0
    10b4:	e0 91 f0 00 	lds	r30, 0x00F0
    10b8:	f0 91 f1 00 	lds	r31, 0x00F1
    10bc:	20 e0       	ldi	r18, 0x00	; 0
    10be:	30 e0       	ldi	r19, 0x00	; 0
    10c0:	c0 e0       	ldi	r28, 0x00	; 0
    10c2:	d0 e0       	ldi	r29, 0x00	; 0
    10c4:	30 97       	sbiw	r30, 0x00	; 0
    10c6:	11 f1       	breq	.+68     	; 0x110c <malloc+0x66>
    10c8:	40 81       	ld	r20, Z
    10ca:	51 81       	ldd	r21, Z+1	; 0x01
    10cc:	48 17       	cp	r20, r24
    10ce:	59 07       	cpc	r21, r25
    10d0:	c0 f0       	brcs	.+48     	; 0x1102 <malloc+0x5c>
    10d2:	48 17       	cp	r20, r24
    10d4:	59 07       	cpc	r21, r25
    10d6:	61 f4       	brne	.+24     	; 0x10f0 <malloc+0x4a>
    10d8:	82 81       	ldd	r24, Z+2	; 0x02
    10da:	93 81       	ldd	r25, Z+3	; 0x03
    10dc:	20 97       	sbiw	r28, 0x00	; 0
    10de:	19 f0       	breq	.+6      	; 0x10e6 <malloc+0x40>
    10e0:	9b 83       	std	Y+3, r25	; 0x03
    10e2:	8a 83       	std	Y+2, r24	; 0x02
    10e4:	2b c0       	rjmp	.+86     	; 0x113c <malloc+0x96>
    10e6:	90 93 f1 00 	sts	0x00F1, r25
    10ea:	80 93 f0 00 	sts	0x00F0, r24
    10ee:	26 c0       	rjmp	.+76     	; 0x113c <malloc+0x96>
    10f0:	21 15       	cp	r18, r1
    10f2:	31 05       	cpc	r19, r1
    10f4:	19 f0       	breq	.+6      	; 0x10fc <malloc+0x56>
    10f6:	42 17       	cp	r20, r18
    10f8:	53 07       	cpc	r21, r19
    10fa:	18 f4       	brcc	.+6      	; 0x1102 <malloc+0x5c>
    10fc:	9a 01       	movw	r18, r20
    10fe:	be 01       	movw	r22, r28
    1100:	df 01       	movw	r26, r30
    1102:	ef 01       	movw	r28, r30
    1104:	02 80       	ldd	r0, Z+2	; 0x02
    1106:	f3 81       	ldd	r31, Z+3	; 0x03
    1108:	e0 2d       	mov	r30, r0
    110a:	dc cf       	rjmp	.-72     	; 0x10c4 <malloc+0x1e>
    110c:	21 15       	cp	r18, r1
    110e:	31 05       	cpc	r19, r1
    1110:	09 f1       	breq	.+66     	; 0x1154 <malloc+0xae>
    1112:	28 1b       	sub	r18, r24
    1114:	39 0b       	sbc	r19, r25
    1116:	24 30       	cpi	r18, 0x04	; 4
    1118:	31 05       	cpc	r19, r1
    111a:	90 f4       	brcc	.+36     	; 0x1140 <malloc+0x9a>
    111c:	12 96       	adiw	r26, 0x02	; 2
    111e:	8d 91       	ld	r24, X+
    1120:	9c 91       	ld	r25, X
    1122:	13 97       	sbiw	r26, 0x03	; 3
    1124:	61 15       	cp	r22, r1
    1126:	71 05       	cpc	r23, r1
    1128:	21 f0       	breq	.+8      	; 0x1132 <malloc+0x8c>
    112a:	fb 01       	movw	r30, r22
    112c:	93 83       	std	Z+3, r25	; 0x03
    112e:	82 83       	std	Z+2, r24	; 0x02
    1130:	04 c0       	rjmp	.+8      	; 0x113a <malloc+0x94>
    1132:	90 93 f1 00 	sts	0x00F1, r25
    1136:	80 93 f0 00 	sts	0x00F0, r24
    113a:	fd 01       	movw	r30, r26
    113c:	32 96       	adiw	r30, 0x02	; 2
    113e:	44 c0       	rjmp	.+136    	; 0x11c8 <malloc+0x122>
    1140:	fd 01       	movw	r30, r26
    1142:	e2 0f       	add	r30, r18
    1144:	f3 1f       	adc	r31, r19
    1146:	81 93       	st	Z+, r24
    1148:	91 93       	st	Z+, r25
    114a:	22 50       	subi	r18, 0x02	; 2
    114c:	31 09       	sbc	r19, r1
    114e:	2d 93       	st	X+, r18
    1150:	3c 93       	st	X, r19
    1152:	3a c0       	rjmp	.+116    	; 0x11c8 <malloc+0x122>
    1154:	20 91 ee 00 	lds	r18, 0x00EE
    1158:	30 91 ef 00 	lds	r19, 0x00EF
    115c:	23 2b       	or	r18, r19
    115e:	41 f4       	brne	.+16     	; 0x1170 <malloc+0xca>
    1160:	20 91 62 00 	lds	r18, 0x0062
    1164:	30 91 63 00 	lds	r19, 0x0063
    1168:	30 93 ef 00 	sts	0x00EF, r19
    116c:	20 93 ee 00 	sts	0x00EE, r18
    1170:	20 91 60 00 	lds	r18, 0x0060
    1174:	30 91 61 00 	lds	r19, 0x0061
    1178:	21 15       	cp	r18, r1
    117a:	31 05       	cpc	r19, r1
    117c:	41 f4       	brne	.+16     	; 0x118e <malloc+0xe8>
    117e:	2d b7       	in	r18, 0x3d	; 61
    1180:	3e b7       	in	r19, 0x3e	; 62
    1182:	40 91 64 00 	lds	r20, 0x0064
    1186:	50 91 65 00 	lds	r21, 0x0065
    118a:	24 1b       	sub	r18, r20
    118c:	35 0b       	sbc	r19, r21
    118e:	e0 91 ee 00 	lds	r30, 0x00EE
    1192:	f0 91 ef 00 	lds	r31, 0x00EF
    1196:	e2 17       	cp	r30, r18
    1198:	f3 07       	cpc	r31, r19
    119a:	a0 f4       	brcc	.+40     	; 0x11c4 <malloc+0x11e>
    119c:	2e 1b       	sub	r18, r30
    119e:	3f 0b       	sbc	r19, r31
    11a0:	28 17       	cp	r18, r24
    11a2:	39 07       	cpc	r19, r25
    11a4:	78 f0       	brcs	.+30     	; 0x11c4 <malloc+0x11e>
    11a6:	ac 01       	movw	r20, r24
    11a8:	4e 5f       	subi	r20, 0xFE	; 254
    11aa:	5f 4f       	sbci	r21, 0xFF	; 255
    11ac:	24 17       	cp	r18, r20
    11ae:	35 07       	cpc	r19, r21
    11b0:	48 f0       	brcs	.+18     	; 0x11c4 <malloc+0x11e>
    11b2:	4e 0f       	add	r20, r30
    11b4:	5f 1f       	adc	r21, r31
    11b6:	50 93 ef 00 	sts	0x00EF, r21
    11ba:	40 93 ee 00 	sts	0x00EE, r20
    11be:	81 93       	st	Z+, r24
    11c0:	91 93       	st	Z+, r25
    11c2:	02 c0       	rjmp	.+4      	; 0x11c8 <malloc+0x122>
    11c4:	e0 e0       	ldi	r30, 0x00	; 0
    11c6:	f0 e0       	ldi	r31, 0x00	; 0
    11c8:	cf 01       	movw	r24, r30
    11ca:	df 91       	pop	r29
    11cc:	cf 91       	pop	r28
    11ce:	08 95       	ret

000011d0 <free>:
    11d0:	0f 93       	push	r16
    11d2:	1f 93       	push	r17
    11d4:	cf 93       	push	r28
    11d6:	df 93       	push	r29
    11d8:	00 97       	sbiw	r24, 0x00	; 0
    11da:	09 f4       	brne	.+2      	; 0x11de <free+0xe>
    11dc:	8c c0       	rjmp	.+280    	; 0x12f6 <free+0x126>
    11de:	fc 01       	movw	r30, r24
    11e0:	32 97       	sbiw	r30, 0x02	; 2
    11e2:	13 82       	std	Z+3, r1	; 0x03
    11e4:	12 82       	std	Z+2, r1	; 0x02
    11e6:	00 91 f0 00 	lds	r16, 0x00F0
    11ea:	10 91 f1 00 	lds	r17, 0x00F1
    11ee:	01 15       	cp	r16, r1
    11f0:	11 05       	cpc	r17, r1
    11f2:	81 f4       	brne	.+32     	; 0x1214 <free+0x44>
    11f4:	20 81       	ld	r18, Z
    11f6:	31 81       	ldd	r19, Z+1	; 0x01
    11f8:	82 0f       	add	r24, r18
    11fa:	93 1f       	adc	r25, r19
    11fc:	20 91 ee 00 	lds	r18, 0x00EE
    1200:	30 91 ef 00 	lds	r19, 0x00EF
    1204:	28 17       	cp	r18, r24
    1206:	39 07       	cpc	r19, r25
    1208:	79 f5       	brne	.+94     	; 0x1268 <free+0x98>
    120a:	f0 93 ef 00 	sts	0x00EF, r31
    120e:	e0 93 ee 00 	sts	0x00EE, r30
    1212:	71 c0       	rjmp	.+226    	; 0x12f6 <free+0x126>
    1214:	d8 01       	movw	r26, r16
    1216:	40 e0       	ldi	r20, 0x00	; 0
    1218:	50 e0       	ldi	r21, 0x00	; 0
    121a:	ae 17       	cp	r26, r30
    121c:	bf 07       	cpc	r27, r31
    121e:	50 f4       	brcc	.+20     	; 0x1234 <free+0x64>
    1220:	12 96       	adiw	r26, 0x02	; 2
    1222:	2d 91       	ld	r18, X+
    1224:	3c 91       	ld	r19, X
    1226:	13 97       	sbiw	r26, 0x03	; 3
    1228:	ad 01       	movw	r20, r26
    122a:	21 15       	cp	r18, r1
    122c:	31 05       	cpc	r19, r1
    122e:	09 f1       	breq	.+66     	; 0x1272 <free+0xa2>
    1230:	d9 01       	movw	r26, r18
    1232:	f3 cf       	rjmp	.-26     	; 0x121a <free+0x4a>
    1234:	9d 01       	movw	r18, r26
    1236:	da 01       	movw	r26, r20
    1238:	33 83       	std	Z+3, r19	; 0x03
    123a:	22 83       	std	Z+2, r18	; 0x02
    123c:	60 81       	ld	r22, Z
    123e:	71 81       	ldd	r23, Z+1	; 0x01
    1240:	86 0f       	add	r24, r22
    1242:	97 1f       	adc	r25, r23
    1244:	82 17       	cp	r24, r18
    1246:	93 07       	cpc	r25, r19
    1248:	69 f4       	brne	.+26     	; 0x1264 <free+0x94>
    124a:	ec 01       	movw	r28, r24
    124c:	28 81       	ld	r18, Y
    124e:	39 81       	ldd	r19, Y+1	; 0x01
    1250:	26 0f       	add	r18, r22
    1252:	37 1f       	adc	r19, r23
    1254:	2e 5f       	subi	r18, 0xFE	; 254
    1256:	3f 4f       	sbci	r19, 0xFF	; 255
    1258:	31 83       	std	Z+1, r19	; 0x01
    125a:	20 83       	st	Z, r18
    125c:	8a 81       	ldd	r24, Y+2	; 0x02
    125e:	9b 81       	ldd	r25, Y+3	; 0x03
    1260:	93 83       	std	Z+3, r25	; 0x03
    1262:	82 83       	std	Z+2, r24	; 0x02
    1264:	45 2b       	or	r20, r21
    1266:	29 f4       	brne	.+10     	; 0x1272 <free+0xa2>
    1268:	f0 93 f1 00 	sts	0x00F1, r31
    126c:	e0 93 f0 00 	sts	0x00F0, r30
    1270:	42 c0       	rjmp	.+132    	; 0x12f6 <free+0x126>
    1272:	13 96       	adiw	r26, 0x03	; 3
    1274:	fc 93       	st	X, r31
    1276:	ee 93       	st	-X, r30
    1278:	12 97       	sbiw	r26, 0x02	; 2
    127a:	ed 01       	movw	r28, r26
    127c:	49 91       	ld	r20, Y+
    127e:	59 91       	ld	r21, Y+
    1280:	9e 01       	movw	r18, r28
    1282:	24 0f       	add	r18, r20
    1284:	35 1f       	adc	r19, r21
    1286:	e2 17       	cp	r30, r18
    1288:	f3 07       	cpc	r31, r19
    128a:	71 f4       	brne	.+28     	; 0x12a8 <free+0xd8>
    128c:	80 81       	ld	r24, Z
    128e:	91 81       	ldd	r25, Z+1	; 0x01
    1290:	84 0f       	add	r24, r20
    1292:	95 1f       	adc	r25, r21
    1294:	02 96       	adiw	r24, 0x02	; 2
    1296:	11 96       	adiw	r26, 0x01	; 1
    1298:	9c 93       	st	X, r25
    129a:	8e 93       	st	-X, r24
    129c:	82 81       	ldd	r24, Z+2	; 0x02
    129e:	93 81       	ldd	r25, Z+3	; 0x03
    12a0:	13 96       	adiw	r26, 0x03	; 3
    12a2:	9c 93       	st	X, r25
    12a4:	8e 93       	st	-X, r24
    12a6:	12 97       	sbiw	r26, 0x02	; 2
    12a8:	e0 e0       	ldi	r30, 0x00	; 0
    12aa:	f0 e0       	ldi	r31, 0x00	; 0
    12ac:	d8 01       	movw	r26, r16
    12ae:	12 96       	adiw	r26, 0x02	; 2
    12b0:	8d 91       	ld	r24, X+
    12b2:	9c 91       	ld	r25, X
    12b4:	13 97       	sbiw	r26, 0x03	; 3
    12b6:	00 97       	sbiw	r24, 0x00	; 0
    12b8:	19 f0       	breq	.+6      	; 0x12c0 <free+0xf0>
    12ba:	f8 01       	movw	r30, r16
    12bc:	8c 01       	movw	r16, r24
    12be:	f6 cf       	rjmp	.-20     	; 0x12ac <free+0xdc>
    12c0:	8d 91       	ld	r24, X+
    12c2:	9c 91       	ld	r25, X
    12c4:	98 01       	movw	r18, r16
    12c6:	2e 5f       	subi	r18, 0xFE	; 254
    12c8:	3f 4f       	sbci	r19, 0xFF	; 255
    12ca:	82 0f       	add	r24, r18
    12cc:	93 1f       	adc	r25, r19
    12ce:	20 91 ee 00 	lds	r18, 0x00EE
    12d2:	30 91 ef 00 	lds	r19, 0x00EF
    12d6:	28 17       	cp	r18, r24
    12d8:	39 07       	cpc	r19, r25
    12da:	69 f4       	brne	.+26     	; 0x12f6 <free+0x126>
    12dc:	30 97       	sbiw	r30, 0x00	; 0
    12de:	29 f4       	brne	.+10     	; 0x12ea <free+0x11a>
    12e0:	10 92 f1 00 	sts	0x00F1, r1
    12e4:	10 92 f0 00 	sts	0x00F0, r1
    12e8:	02 c0       	rjmp	.+4      	; 0x12ee <free+0x11e>
    12ea:	13 82       	std	Z+3, r1	; 0x03
    12ec:	12 82       	std	Z+2, r1	; 0x02
    12ee:	10 93 ef 00 	sts	0x00EF, r17
    12f2:	00 93 ee 00 	sts	0x00EE, r16
    12f6:	df 91       	pop	r29
    12f8:	cf 91       	pop	r28
    12fa:	1f 91       	pop	r17
    12fc:	0f 91       	pop	r16
    12fe:	08 95       	ret

00001300 <__do_global_dtors>:
    1300:	10 e0       	ldi	r17, 0x00	; 0
    1302:	cd e2       	ldi	r28, 0x2D	; 45
    1304:	d0 e0       	ldi	r29, 0x00	; 0
    1306:	04 c0       	rjmp	.+8      	; 0x1310 <__do_global_dtors+0x10>
    1308:	fe 01       	movw	r30, r28
    130a:	0e 94 3e 08 	call	0x107c	; 0x107c <__tablejump2__>
    130e:	21 96       	adiw	r28, 0x01	; 1
    1310:	ce 32       	cpi	r28, 0x2E	; 46
    1312:	d1 07       	cpc	r29, r17
    1314:	c9 f7       	brne	.-14     	; 0x1308 <__do_global_dtors+0x8>
    1316:	f8 94       	cli

00001318 <__stop_program>:
    1318:	ff cf       	rjmp	.-2      	; 0x1318 <__stop_program>
