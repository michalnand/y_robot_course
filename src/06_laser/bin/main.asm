
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
      4c:	0c 94 40 07 	jmp	0xe80	; 0xe80 <__vector_19>
      50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
      54:	a1 03       	fmuls	r18, r17
      56:	84 07       	cpc	r24, r20
      58:	88 07       	cpc	r24, r24

0000005a <__ctors_end>:
      5a:	8c 07       	cpc	r24, r28

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
      b2:	0c 94 e5 06 	jmp	0xdca	; 0xdca <_ZdlPv>

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
      dc:	0e 94 b0 03 	call	0x760	; 0x760 <_ZN7VL53L0X4readEv>
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
     142:	0c 94 c3 07 	jmp	0xf86	; 0xf86 <_ZN10LEDDisplay11display_decEh>

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
     198:	0e 94 ae 03 	call	0x75c	; 0x75c <_ZN7VL53L0XC1Ev>
     19c:	ce 01       	movw	r24, r28
     19e:	45 96       	adiw	r24, 0x15	; 21
     1a0:	0e 94 ab 07 	call	0xf56	; 0xf56 <_ZN10LEDDisplayC1Ev>
     1a4:	60 e0       	ldi	r22, 0x00	; 0
     1a6:	ce 01       	movw	r24, r28
     1a8:	45 96       	adiw	r24, 0x15	; 21
     1aa:	0e 94 c3 07 	call	0xf86	; 0xf86 <_ZN10LEDDisplay11display_decEh>
     1ae:	6c ea       	ldi	r22, 0xAC	; 172
     1b0:	70 e0       	ldi	r23, 0x00	; 0
     1b2:	ce 01       	movw	r24, r28
     1b4:	03 96       	adiw	r24, 0x03	; 3
     1b6:	0e 94 32 05 	call	0xa64	; 0xa64 <_ZN7VL53L0X4initEP13I2C_Interface>
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
     1d4:	80 eb       	ldi	r24, 0xB0	; 176
     1d6:	90 e0       	ldi	r25, 0x00	; 0
     1d8:	0e 94 01 07 	call	0xe02	; 0xe02 <_ZN5Timer8add_taskEP4Taskj>
     1dc:	44 e1       	ldi	r20, 0x14	; 20
     1de:	50 e0       	ldi	r21, 0x00	; 0
     1e0:	be 01       	movw	r22, r28
     1e2:	6f 5f       	subi	r22, 0xFF	; 255
     1e4:	7f 4f       	sbci	r23, 0xFF	; 255
     1e6:	80 eb       	ldi	r24, 0xB0	; 176
     1e8:	90 e0       	ldi	r25, 0x00	; 0
     1ea:	0e 94 01 07 	call	0xe02	; 0xe02 <_ZN5Timer8add_taskEP4Taskj>
     1ee:	80 eb       	ldi	r24, 0xB0	; 176
     1f0:	90 e0       	ldi	r25, 0x00	; 0
     1f2:	0e 94 23 07 	call	0xe46	; 0xe46 <_ZN5Timer4mainEv>
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
     20a:	0e 94 90 07 	call	0xf20	; 0xf20 <_ZN10LEDDisplayD1Ev>
     20e:	ce 01       	movw	r24, r28
     210:	02 96       	adiw	r24, 0x02	; 2
     212:	df 91       	pop	r29
     214:	cf 91       	pop	r28
     216:	0c 94 af 03 	jmp	0x75e	; 0x75e <_ZN7VL53L0XD1Ev>

0000021a <_ZN9LaserTaskD0Ev>:
     21a:	cf 93       	push	r28
     21c:	df 93       	push	r29
     21e:	ec 01       	movw	r28, r24
     220:	0e 94 fc 00 	call	0x1f8	; 0x1f8 <_ZN9LaserTaskD1Ev>
     224:	ce 01       	movw	r24, r28
     226:	df 91       	pop	r29
     228:	cf 91       	pop	r28
     22a:	0c 94 e5 06 	jmp	0xdca	; 0xdca <_ZdlPv>

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

00000244 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     244:	0f 93       	push	r16
     246:	1f 93       	push	r17
     248:	cf 93       	push	r28
     24a:	df 93       	push	r29
     24c:	00 d0       	rcall	.+0      	; 0x24e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     24e:	1f 92       	push	r1
     250:	cd b7       	in	r28, 0x3d	; 61
     252:	de b7       	in	r29, 0x3e	; 62
     254:	8c 01       	movw	r16, r24
     256:	dc 01       	movw	r26, r24
     258:	ed 91       	ld	r30, X+
     25a:	fc 91       	ld	r31, X
     25c:	01 90       	ld	r0, Z+
     25e:	f0 81       	ld	r31, Z
     260:	e0 2d       	mov	r30, r0
     262:	2b 83       	std	Y+3, r18	; 0x03
     264:	4a 83       	std	Y+2, r20	; 0x02
     266:	69 83       	std	Y+1, r22	; 0x01
     268:	09 95       	icall
     26a:	d8 01       	movw	r26, r16
     26c:	ed 91       	ld	r30, X+
     26e:	fc 91       	ld	r31, X
     270:	04 80       	ldd	r0, Z+4	; 0x04
     272:	f5 81       	ldd	r31, Z+5	; 0x05
     274:	e0 2d       	mov	r30, r0
     276:	69 81       	ldd	r22, Y+1	; 0x01
     278:	c8 01       	movw	r24, r16
     27a:	09 95       	icall
     27c:	d8 01       	movw	r26, r16
     27e:	ed 91       	ld	r30, X+
     280:	fc 91       	ld	r31, X
     282:	04 80       	ldd	r0, Z+4	; 0x04
     284:	f5 81       	ldd	r31, Z+5	; 0x05
     286:	e0 2d       	mov	r30, r0
     288:	4a 81       	ldd	r20, Y+2	; 0x02
     28a:	64 2f       	mov	r22, r20
     28c:	c8 01       	movw	r24, r16
     28e:	09 95       	icall
     290:	d8 01       	movw	r26, r16
     292:	ed 91       	ld	r30, X+
     294:	fc 91       	ld	r31, X
     296:	04 80       	ldd	r0, Z+4	; 0x04
     298:	f5 81       	ldd	r31, Z+5	; 0x05
     29a:	e0 2d       	mov	r30, r0
     29c:	2b 81       	ldd	r18, Y+3	; 0x03
     29e:	62 2f       	mov	r22, r18
     2a0:	c8 01       	movw	r24, r16
     2a2:	09 95       	icall
     2a4:	d8 01       	movw	r26, r16
     2a6:	ed 91       	ld	r30, X+
     2a8:	fc 91       	ld	r31, X
     2aa:	02 80       	ldd	r0, Z+2	; 0x02
     2ac:	f3 81       	ldd	r31, Z+3	; 0x03
     2ae:	e0 2d       	mov	r30, r0
     2b0:	c8 01       	movw	r24, r16
     2b2:	0f 90       	pop	r0
     2b4:	0f 90       	pop	r0
     2b6:	0f 90       	pop	r0
     2b8:	df 91       	pop	r29
     2ba:	cf 91       	pop	r28
     2bc:	1f 91       	pop	r17
     2be:	0f 91       	pop	r16
     2c0:	09 94       	ijmp

000002c2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     2c2:	0f 93       	push	r16
     2c4:	1f 93       	push	r17
     2c6:	cf 93       	push	r28
     2c8:	df 93       	push	r29
     2ca:	00 d0       	rcall	.+0      	; 0x2cc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     2cc:	00 d0       	rcall	.+0      	; 0x2ce <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     2ce:	cd b7       	in	r28, 0x3d	; 61
     2d0:	de b7       	in	r29, 0x3e	; 62
     2d2:	8c 01       	movw	r16, r24
     2d4:	dc 01       	movw	r26, r24
     2d6:	ed 91       	ld	r30, X+
     2d8:	fc 91       	ld	r31, X
     2da:	01 90       	ld	r0, Z+
     2dc:	f0 81       	ld	r31, Z
     2de:	e0 2d       	mov	r30, r0
     2e0:	2c 83       	std	Y+4, r18	; 0x04
     2e2:	3b 83       	std	Y+3, r19	; 0x03
     2e4:	4a 83       	std	Y+2, r20	; 0x02
     2e6:	69 83       	std	Y+1, r22	; 0x01
     2e8:	09 95       	icall
     2ea:	d8 01       	movw	r26, r16
     2ec:	ed 91       	ld	r30, X+
     2ee:	fc 91       	ld	r31, X
     2f0:	04 80       	ldd	r0, Z+4	; 0x04
     2f2:	f5 81       	ldd	r31, Z+5	; 0x05
     2f4:	e0 2d       	mov	r30, r0
     2f6:	69 81       	ldd	r22, Y+1	; 0x01
     2f8:	c8 01       	movw	r24, r16
     2fa:	09 95       	icall
     2fc:	d8 01       	movw	r26, r16
     2fe:	ed 91       	ld	r30, X+
     300:	fc 91       	ld	r31, X
     302:	04 80       	ldd	r0, Z+4	; 0x04
     304:	f5 81       	ldd	r31, Z+5	; 0x05
     306:	e0 2d       	mov	r30, r0
     308:	4a 81       	ldd	r20, Y+2	; 0x02
     30a:	64 2f       	mov	r22, r20
     30c:	c8 01       	movw	r24, r16
     30e:	09 95       	icall
     310:	d8 01       	movw	r26, r16
     312:	ed 91       	ld	r30, X+
     314:	fc 91       	ld	r31, X
     316:	04 80       	ldd	r0, Z+4	; 0x04
     318:	f5 81       	ldd	r31, Z+5	; 0x05
     31a:	e0 2d       	mov	r30, r0
     31c:	3b 81       	ldd	r19, Y+3	; 0x03
     31e:	63 2f       	mov	r22, r19
     320:	c8 01       	movw	r24, r16
     322:	09 95       	icall
     324:	d8 01       	movw	r26, r16
     326:	ed 91       	ld	r30, X+
     328:	fc 91       	ld	r31, X
     32a:	04 80       	ldd	r0, Z+4	; 0x04
     32c:	f5 81       	ldd	r31, Z+5	; 0x05
     32e:	e0 2d       	mov	r30, r0
     330:	2c 81       	ldd	r18, Y+4	; 0x04
     332:	62 2f       	mov	r22, r18
     334:	c8 01       	movw	r24, r16
     336:	09 95       	icall
     338:	d8 01       	movw	r26, r16
     33a:	ed 91       	ld	r30, X+
     33c:	fc 91       	ld	r31, X
     33e:	02 80       	ldd	r0, Z+2	; 0x02
     340:	f3 81       	ldd	r31, Z+3	; 0x03
     342:	e0 2d       	mov	r30, r0
     344:	c8 01       	movw	r24, r16
     346:	0f 90       	pop	r0
     348:	0f 90       	pop	r0
     34a:	0f 90       	pop	r0
     34c:	0f 90       	pop	r0
     34e:	df 91       	pop	r29
     350:	cf 91       	pop	r28
     352:	1f 91       	pop	r17
     354:	0f 91       	pop	r16
     356:	09 94       	ijmp

00000358 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     358:	cf 92       	push	r12
     35a:	df 92       	push	r13
     35c:	ef 92       	push	r14
     35e:	ff 92       	push	r15
     360:	0f 93       	push	r16
     362:	1f 93       	push	r17
     364:	cf 93       	push	r28
     366:	df 93       	push	r29
     368:	00 d0       	rcall	.+0      	; 0x36a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     36a:	00 d0       	rcall	.+0      	; 0x36c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     36c:	cd b7       	in	r28, 0x3d	; 61
     36e:	de b7       	in	r29, 0x3e	; 62
     370:	6c 01       	movw	r12, r24
     372:	dc 01       	movw	r26, r24
     374:	ed 91       	ld	r30, X+
     376:	fc 91       	ld	r31, X
     378:	01 90       	ld	r0, Z+
     37a:	f0 81       	ld	r31, Z
     37c:	e0 2d       	mov	r30, r0
     37e:	2b 83       	std	Y+3, r18	; 0x03
     380:	3c 83       	std	Y+4, r19	; 0x04
     382:	4a 83       	std	Y+2, r20	; 0x02
     384:	69 83       	std	Y+1, r22	; 0x01
     386:	09 95       	icall
     388:	d6 01       	movw	r26, r12
     38a:	ed 91       	ld	r30, X+
     38c:	fc 91       	ld	r31, X
     38e:	04 80       	ldd	r0, Z+4	; 0x04
     390:	f5 81       	ldd	r31, Z+5	; 0x05
     392:	e0 2d       	mov	r30, r0
     394:	69 81       	ldd	r22, Y+1	; 0x01
     396:	c6 01       	movw	r24, r12
     398:	09 95       	icall
     39a:	d6 01       	movw	r26, r12
     39c:	ed 91       	ld	r30, X+
     39e:	fc 91       	ld	r31, X
     3a0:	04 80       	ldd	r0, Z+4	; 0x04
     3a2:	f5 81       	ldd	r31, Z+5	; 0x05
     3a4:	e0 2d       	mov	r30, r0
     3a6:	4a 81       	ldd	r20, Y+2	; 0x02
     3a8:	64 2f       	mov	r22, r20
     3aa:	c6 01       	movw	r24, r12
     3ac:	09 95       	icall
     3ae:	2b 81       	ldd	r18, Y+3	; 0x03
     3b0:	e2 2e       	mov	r14, r18
     3b2:	3c 81       	ldd	r19, Y+4	; 0x04
     3b4:	f3 2e       	mov	r15, r19
     3b6:	0e 0d       	add	r16, r14
     3b8:	1f 1d       	adc	r17, r15
     3ba:	d6 01       	movw	r26, r12
     3bc:	ed 91       	ld	r30, X+
     3be:	fc 91       	ld	r31, X
     3c0:	e0 16       	cp	r14, r16
     3c2:	f1 06       	cpc	r15, r17
     3c4:	49 f0       	breq	.+18     	; 0x3d8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
     3c6:	d7 01       	movw	r26, r14
     3c8:	6d 91       	ld	r22, X+
     3ca:	7d 01       	movw	r14, r26
     3cc:	04 80       	ldd	r0, Z+4	; 0x04
     3ce:	f5 81       	ldd	r31, Z+5	; 0x05
     3d0:	e0 2d       	mov	r30, r0
     3d2:	c6 01       	movw	r24, r12
     3d4:	09 95       	icall
     3d6:	f1 cf       	rjmp	.-30     	; 0x3ba <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
     3d8:	02 80       	ldd	r0, Z+2	; 0x02
     3da:	f3 81       	ldd	r31, Z+3	; 0x03
     3dc:	e0 2d       	mov	r30, r0
     3de:	c6 01       	movw	r24, r12
     3e0:	0f 90       	pop	r0
     3e2:	0f 90       	pop	r0
     3e4:	0f 90       	pop	r0
     3e6:	0f 90       	pop	r0
     3e8:	df 91       	pop	r29
     3ea:	cf 91       	pop	r28
     3ec:	1f 91       	pop	r17
     3ee:	0f 91       	pop	r16
     3f0:	ff 90       	pop	r15
     3f2:	ef 90       	pop	r14
     3f4:	df 90       	pop	r13
     3f6:	cf 90       	pop	r12
     3f8:	09 94       	ijmp

000003fa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     3fa:	ef 92       	push	r14
     3fc:	ff 92       	push	r15
     3fe:	1f 93       	push	r17
     400:	cf 93       	push	r28
     402:	df 93       	push	r29
     404:	1f 92       	push	r1
     406:	cd b7       	in	r28, 0x3d	; 61
     408:	de b7       	in	r29, 0x3e	; 62
     40a:	7c 01       	movw	r14, r24
     40c:	16 2f       	mov	r17, r22
     40e:	dc 01       	movw	r26, r24
     410:	ed 91       	ld	r30, X+
     412:	fc 91       	ld	r31, X
     414:	01 90       	ld	r0, Z+
     416:	f0 81       	ld	r31, Z
     418:	e0 2d       	mov	r30, r0
     41a:	49 83       	std	Y+1, r20	; 0x01
     41c:	09 95       	icall
     41e:	d7 01       	movw	r26, r14
     420:	ed 91       	ld	r30, X+
     422:	fc 91       	ld	r31, X
     424:	04 80       	ldd	r0, Z+4	; 0x04
     426:	f5 81       	ldd	r31, Z+5	; 0x05
     428:	e0 2d       	mov	r30, r0
     42a:	61 2f       	mov	r22, r17
     42c:	c7 01       	movw	r24, r14
     42e:	09 95       	icall
     430:	d7 01       	movw	r26, r14
     432:	ed 91       	ld	r30, X+
     434:	fc 91       	ld	r31, X
     436:	04 80       	ldd	r0, Z+4	; 0x04
     438:	f5 81       	ldd	r31, Z+5	; 0x05
     43a:	e0 2d       	mov	r30, r0
     43c:	49 81       	ldd	r20, Y+1	; 0x01
     43e:	64 2f       	mov	r22, r20
     440:	c7 01       	movw	r24, r14
     442:	09 95       	icall
     444:	d7 01       	movw	r26, r14
     446:	ed 91       	ld	r30, X+
     448:	fc 91       	ld	r31, X
     44a:	01 90       	ld	r0, Z+
     44c:	f0 81       	ld	r31, Z
     44e:	e0 2d       	mov	r30, r0
     450:	c7 01       	movw	r24, r14
     452:	09 95       	icall
     454:	d7 01       	movw	r26, r14
     456:	ed 91       	ld	r30, X+
     458:	fc 91       	ld	r31, X
     45a:	61 2f       	mov	r22, r17
     45c:	61 60       	ori	r22, 0x01	; 1
     45e:	04 80       	ldd	r0, Z+4	; 0x04
     460:	f5 81       	ldd	r31, Z+5	; 0x05
     462:	e0 2d       	mov	r30, r0
     464:	c7 01       	movw	r24, r14
     466:	09 95       	icall
     468:	d7 01       	movw	r26, r14
     46a:	ed 91       	ld	r30, X+
     46c:	fc 91       	ld	r31, X
     46e:	06 80       	ldd	r0, Z+6	; 0x06
     470:	f7 81       	ldd	r31, Z+7	; 0x07
     472:	e0 2d       	mov	r30, r0
     474:	60 e0       	ldi	r22, 0x00	; 0
     476:	c7 01       	movw	r24, r14
     478:	09 95       	icall
     47a:	18 2f       	mov	r17, r24
     47c:	d7 01       	movw	r26, r14
     47e:	ed 91       	ld	r30, X+
     480:	fc 91       	ld	r31, X
     482:	02 80       	ldd	r0, Z+2	; 0x02
     484:	f3 81       	ldd	r31, Z+3	; 0x03
     486:	e0 2d       	mov	r30, r0
     488:	c7 01       	movw	r24, r14
     48a:	09 95       	icall
     48c:	81 2f       	mov	r24, r17
     48e:	0f 90       	pop	r0
     490:	df 91       	pop	r29
     492:	cf 91       	pop	r28
     494:	1f 91       	pop	r17
     496:	ff 90       	pop	r15
     498:	ef 90       	pop	r14
     49a:	08 95       	ret

0000049c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     49c:	ef 92       	push	r14
     49e:	ff 92       	push	r15
     4a0:	0f 93       	push	r16
     4a2:	1f 93       	push	r17
     4a4:	cf 93       	push	r28
     4a6:	df 93       	push	r29
     4a8:	1f 92       	push	r1
     4aa:	cd b7       	in	r28, 0x3d	; 61
     4ac:	de b7       	in	r29, 0x3e	; 62
     4ae:	7c 01       	movw	r14, r24
     4b0:	16 2f       	mov	r17, r22
     4b2:	dc 01       	movw	r26, r24
     4b4:	ed 91       	ld	r30, X+
     4b6:	fc 91       	ld	r31, X
     4b8:	01 90       	ld	r0, Z+
     4ba:	f0 81       	ld	r31, Z
     4bc:	e0 2d       	mov	r30, r0
     4be:	49 83       	std	Y+1, r20	; 0x01
     4c0:	09 95       	icall
     4c2:	d7 01       	movw	r26, r14
     4c4:	ed 91       	ld	r30, X+
     4c6:	fc 91       	ld	r31, X
     4c8:	04 80       	ldd	r0, Z+4	; 0x04
     4ca:	f5 81       	ldd	r31, Z+5	; 0x05
     4cc:	e0 2d       	mov	r30, r0
     4ce:	61 2f       	mov	r22, r17
     4d0:	c7 01       	movw	r24, r14
     4d2:	09 95       	icall
     4d4:	d7 01       	movw	r26, r14
     4d6:	ed 91       	ld	r30, X+
     4d8:	fc 91       	ld	r31, X
     4da:	04 80       	ldd	r0, Z+4	; 0x04
     4dc:	f5 81       	ldd	r31, Z+5	; 0x05
     4de:	e0 2d       	mov	r30, r0
     4e0:	49 81       	ldd	r20, Y+1	; 0x01
     4e2:	64 2f       	mov	r22, r20
     4e4:	c7 01       	movw	r24, r14
     4e6:	09 95       	icall
     4e8:	d7 01       	movw	r26, r14
     4ea:	ed 91       	ld	r30, X+
     4ec:	fc 91       	ld	r31, X
     4ee:	01 90       	ld	r0, Z+
     4f0:	f0 81       	ld	r31, Z
     4f2:	e0 2d       	mov	r30, r0
     4f4:	c7 01       	movw	r24, r14
     4f6:	09 95       	icall
     4f8:	d7 01       	movw	r26, r14
     4fa:	ed 91       	ld	r30, X+
     4fc:	fc 91       	ld	r31, X
     4fe:	61 2f       	mov	r22, r17
     500:	61 60       	ori	r22, 0x01	; 1
     502:	04 80       	ldd	r0, Z+4	; 0x04
     504:	f5 81       	ldd	r31, Z+5	; 0x05
     506:	e0 2d       	mov	r30, r0
     508:	c7 01       	movw	r24, r14
     50a:	09 95       	icall
     50c:	d7 01       	movw	r26, r14
     50e:	ed 91       	ld	r30, X+
     510:	fc 91       	ld	r31, X
     512:	06 80       	ldd	r0, Z+6	; 0x06
     514:	f7 81       	ldd	r31, Z+7	; 0x07
     516:	e0 2d       	mov	r30, r0
     518:	61 e0       	ldi	r22, 0x01	; 1
     51a:	c7 01       	movw	r24, r14
     51c:	09 95       	icall
     51e:	08 2f       	mov	r16, r24
     520:	10 e0       	ldi	r17, 0x00	; 0
     522:	10 2f       	mov	r17, r16
     524:	00 27       	eor	r16, r16
     526:	d7 01       	movw	r26, r14
     528:	ed 91       	ld	r30, X+
     52a:	fc 91       	ld	r31, X
     52c:	06 80       	ldd	r0, Z+6	; 0x06
     52e:	f7 81       	ldd	r31, Z+7	; 0x07
     530:	e0 2d       	mov	r30, r0
     532:	60 e0       	ldi	r22, 0x00	; 0
     534:	c7 01       	movw	r24, r14
     536:	09 95       	icall
     538:	08 2b       	or	r16, r24
     53a:	d7 01       	movw	r26, r14
     53c:	ed 91       	ld	r30, X+
     53e:	fc 91       	ld	r31, X
     540:	02 80       	ldd	r0, Z+2	; 0x02
     542:	f3 81       	ldd	r31, Z+3	; 0x03
     544:	e0 2d       	mov	r30, r0
     546:	c7 01       	movw	r24, r14
     548:	09 95       	icall
     54a:	c8 01       	movw	r24, r16
     54c:	0f 90       	pop	r0
     54e:	df 91       	pop	r29
     550:	cf 91       	pop	r28
     552:	1f 91       	pop	r17
     554:	0f 91       	pop	r16
     556:	ff 90       	pop	r15
     558:	ef 90       	pop	r14
     55a:	08 95       	ret

0000055c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     55c:	cf 92       	push	r12
     55e:	df 92       	push	r13
     560:	ef 92       	push	r14
     562:	ff 92       	push	r15
     564:	0f 93       	push	r16
     566:	1f 93       	push	r17
     568:	cf 93       	push	r28
     56a:	df 93       	push	r29
     56c:	00 d0       	rcall	.+0      	; 0x56e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     56e:	1f 92       	push	r1
     570:	cd b7       	in	r28, 0x3d	; 61
     572:	de b7       	in	r29, 0x3e	; 62
     574:	6c 01       	movw	r12, r24
     576:	f6 2e       	mov	r15, r22
     578:	dc 01       	movw	r26, r24
     57a:	ed 91       	ld	r30, X+
     57c:	fc 91       	ld	r31, X
     57e:	01 90       	ld	r0, Z+
     580:	f0 81       	ld	r31, Z
     582:	e0 2d       	mov	r30, r0
     584:	2a 83       	std	Y+2, r18	; 0x02
     586:	3b 83       	std	Y+3, r19	; 0x03
     588:	49 83       	std	Y+1, r20	; 0x01
     58a:	09 95       	icall
     58c:	d6 01       	movw	r26, r12
     58e:	ed 91       	ld	r30, X+
     590:	fc 91       	ld	r31, X
     592:	04 80       	ldd	r0, Z+4	; 0x04
     594:	f5 81       	ldd	r31, Z+5	; 0x05
     596:	e0 2d       	mov	r30, r0
     598:	6f 2d       	mov	r22, r15
     59a:	c6 01       	movw	r24, r12
     59c:	09 95       	icall
     59e:	d6 01       	movw	r26, r12
     5a0:	ed 91       	ld	r30, X+
     5a2:	fc 91       	ld	r31, X
     5a4:	04 80       	ldd	r0, Z+4	; 0x04
     5a6:	f5 81       	ldd	r31, Z+5	; 0x05
     5a8:	e0 2d       	mov	r30, r0
     5aa:	49 81       	ldd	r20, Y+1	; 0x01
     5ac:	64 2f       	mov	r22, r20
     5ae:	c6 01       	movw	r24, r12
     5b0:	09 95       	icall
     5b2:	d6 01       	movw	r26, r12
     5b4:	ed 91       	ld	r30, X+
     5b6:	fc 91       	ld	r31, X
     5b8:	01 90       	ld	r0, Z+
     5ba:	f0 81       	ld	r31, Z
     5bc:	e0 2d       	mov	r30, r0
     5be:	c6 01       	movw	r24, r12
     5c0:	09 95       	icall
     5c2:	d6 01       	movw	r26, r12
     5c4:	ed 91       	ld	r30, X+
     5c6:	fc 91       	ld	r31, X
     5c8:	6f 2d       	mov	r22, r15
     5ca:	61 60       	ori	r22, 0x01	; 1
     5cc:	04 80       	ldd	r0, Z+4	; 0x04
     5ce:	f5 81       	ldd	r31, Z+5	; 0x05
     5d0:	e0 2d       	mov	r30, r0
     5d2:	c6 01       	movw	r24, r12
     5d4:	09 95       	icall
     5d6:	2a 81       	ldd	r18, Y+2	; 0x02
     5d8:	e2 2e       	mov	r14, r18
     5da:	3b 81       	ldd	r19, Y+3	; 0x03
     5dc:	f3 2e       	mov	r15, r19
     5de:	0e 0d       	add	r16, r14
     5e0:	1f 1d       	adc	r17, r15
     5e2:	d6 01       	movw	r26, r12
     5e4:	ed 91       	ld	r30, X+
     5e6:	fc 91       	ld	r31, X
     5e8:	e0 16       	cp	r14, r16
     5ea:	f1 06       	cpc	r15, r17
     5ec:	51 f0       	breq	.+20     	; 0x602 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     5ee:	06 80       	ldd	r0, Z+6	; 0x06
     5f0:	f7 81       	ldd	r31, Z+7	; 0x07
     5f2:	e0 2d       	mov	r30, r0
     5f4:	61 e0       	ldi	r22, 0x01	; 1
     5f6:	c6 01       	movw	r24, r12
     5f8:	09 95       	icall
     5fa:	f7 01       	movw	r30, r14
     5fc:	81 93       	st	Z+, r24
     5fe:	7f 01       	movw	r14, r30
     600:	f0 cf       	rjmp	.-32     	; 0x5e2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     602:	02 80       	ldd	r0, Z+2	; 0x02
     604:	f3 81       	ldd	r31, Z+3	; 0x03
     606:	e0 2d       	mov	r30, r0
     608:	c6 01       	movw	r24, r12
     60a:	0f 90       	pop	r0
     60c:	0f 90       	pop	r0
     60e:	0f 90       	pop	r0
     610:	df 91       	pop	r29
     612:	cf 91       	pop	r28
     614:	1f 91       	pop	r17
     616:	0f 91       	pop	r16
     618:	ff 90       	pop	r15
     61a:	ef 90       	pop	r14
     61c:	df 90       	pop	r13
     61e:	cf 90       	pop	r12
     620:	09 94       	ijmp

00000622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     622:	88 23       	and	r24, r24
     624:	21 f0       	breq	.+8      	; 0x62e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     626:	bf 98       	cbi	0x17, 7	; 23
     628:	82 30       	cpi	r24, 0x02	; 2
     62a:	19 f0       	breq	.+6      	; 0x632 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     62c:	08 95       	ret
     62e:	bf 9a       	sbi	0x17, 7	; 23
     630:	08 95       	ret
     632:	c7 9a       	sbi	0x18, 7	; 24
     634:	08 95       	ret

00000636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     636:	00 00       	nop
     638:	00 00       	nop
     63a:	08 95       	ret

0000063c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     63c:	1f 93       	push	r17
     63e:	cf 93       	push	r28
     640:	df 93       	push	r29
     642:	16 2f       	mov	r17, r22
     644:	bd 98       	cbi	0x17, 5	; 23
     646:	80 e0       	ldi	r24, 0x00	; 0
     648:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     64c:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     650:	d8 e0       	ldi	r29, 0x08	; 8
     652:	c0 e0       	ldi	r28, 0x00	; 0
     654:	cc 0f       	add	r28, r28
     656:	81 e0       	ldi	r24, 0x01	; 1
     658:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     65c:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     660:	b5 99       	sbic	0x16, 5	; 22
     662:	c1 60       	ori	r28, 0x01	; 1
     664:	80 e0       	ldi	r24, 0x00	; 0
     666:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     66a:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     66e:	d1 50       	subi	r29, 0x01	; 1
     670:	89 f7       	brne	.-30     	; 0x654 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
     672:	11 23       	and	r17, r17
     674:	11 f0       	breq	.+4      	; 0x67a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
     676:	bd 9a       	sbi	0x17, 5	; 23
     678:	01 c0       	rjmp	.+2      	; 0x67c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
     67a:	bd 98       	cbi	0x17, 5	; 23
     67c:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     680:	81 e0       	ldi	r24, 0x01	; 1
     682:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     686:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     68a:	80 e0       	ldi	r24, 0x00	; 0
     68c:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     690:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     694:	bd 98       	cbi	0x17, 5	; 23
     696:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     69a:	8c 2f       	mov	r24, r28
     69c:	df 91       	pop	r29
     69e:	cf 91       	pop	r28
     6a0:	1f 91       	pop	r17
     6a2:	08 95       	ret

000006a4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
     6a4:	cf 93       	push	r28
     6a6:	df 93       	push	r29
     6a8:	d6 2f       	mov	r29, r22
     6aa:	c8 e0       	ldi	r28, 0x08	; 8
     6ac:	80 e0       	ldi	r24, 0x00	; 0
     6ae:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6b2:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     6b6:	d7 ff       	sbrs	r29, 7
     6b8:	02 c0       	rjmp	.+4      	; 0x6be <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
     6ba:	bd 98       	cbi	0x17, 5	; 23
     6bc:	01 c0       	rjmp	.+2      	; 0x6c0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
     6be:	bd 9a       	sbi	0x17, 5	; 23
     6c0:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     6c4:	81 e0       	ldi	r24, 0x01	; 1
     6c6:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6ca:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     6ce:	dd 0f       	add	r29, r29
     6d0:	c1 50       	subi	r28, 0x01	; 1
     6d2:	61 f7       	brne	.-40     	; 0x6ac <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
     6d4:	80 e0       	ldi	r24, 0x00	; 0
     6d6:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6da:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     6de:	bd 98       	cbi	0x17, 5	; 23
     6e0:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     6e4:	81 e0       	ldi	r24, 0x01	; 1
     6e6:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6ea:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     6ee:	c6 b3       	in	r28, 0x16	; 22
     6f0:	80 e0       	ldi	r24, 0x00	; 0
     6f2:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6f6:	0e 94 1b 03 	call	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     6fa:	c5 fb       	bst	r28, 5
     6fc:	cc 27       	eor	r28, r28
     6fe:	c0 f9       	bld	r28, 0
     700:	81 e0       	ldi	r24, 0x01	; 1
     702:	8c 27       	eor	r24, r28
     704:	df 91       	pop	r29
     706:	cf 91       	pop	r28
     708:	08 95       	ret

0000070a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
     70a:	81 e0       	ldi	r24, 0x01	; 1
     70c:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     710:	bd 98       	cbi	0x17, 5	; 23
     712:	81 e0       	ldi	r24, 0x01	; 1
     714:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     718:	bd 9a       	sbi	0x17, 5	; 23
     71a:	80 e0       	ldi	r24, 0x00	; 0
     71c:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     720:	bd 98       	cbi	0x17, 5	; 23
     722:	0c 94 1b 03 	jmp	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000726 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
     726:	80 e0       	ldi	r24, 0x00	; 0
     728:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     72c:	bd 9a       	sbi	0x17, 5	; 23
     72e:	81 e0       	ldi	r24, 0x01	; 1
     730:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     734:	bd 9a       	sbi	0x17, 5	; 23
     736:	81 e0       	ldi	r24, 0x01	; 1
     738:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     73c:	bd 98       	cbi	0x17, 5	; 23
     73e:	0c 94 1b 03 	jmp	0x636	; 0x636 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000742 <_GLOBAL__sub_I_i2c>:
     742:	8e e7       	ldi	r24, 0x7E	; 126
     744:	90 e0       	ldi	r25, 0x00	; 0
     746:	90 93 ad 00 	sts	0x00AD, r25
     74a:	80 93 ac 00 	sts	0x00AC, r24
     74e:	bd 98       	cbi	0x17, 5	; 23
     750:	81 e0       	ldi	r24, 0x01	; 1
     752:	0e 94 11 03 	call	0x622	; 0x622 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     756:	c5 98       	cbi	0x18, 5	; 24
     758:	c7 98       	cbi	0x18, 7	; 24
     75a:	08 95       	ret

0000075c <_ZN7VL53L0XC1Ev>:
     75c:	08 95       	ret

0000075e <_ZN7VL53L0XD1Ev>:
     75e:	08 95       	ret

00000760 <_ZN7VL53L0X4readEv>:
     760:	0f 93       	push	r16
     762:	1f 93       	push	r17
     764:	cf 93       	push	r28
     766:	df 93       	push	r29
     768:	ec 01       	movw	r28, r24
     76a:	88 89       	ldd	r24, Y+16	; 0x10
     76c:	99 89       	ldd	r25, Y+17	; 0x11
     76e:	dc 01       	movw	r26, r24
     770:	ed 91       	ld	r30, X+
     772:	fc 91       	ld	r31, X
     774:	00 84       	ldd	r0, Z+8	; 0x08
     776:	f1 85       	ldd	r31, Z+9	; 0x09
     778:	e0 2d       	mov	r30, r0
     77a:	21 e0       	ldi	r18, 0x01	; 1
     77c:	4b e0       	ldi	r20, 0x0B	; 11
     77e:	62 e5       	ldi	r22, 0x52	; 82
     780:	09 95       	icall
     782:	88 89       	ldd	r24, Y+16	; 0x10
     784:	99 89       	ldd	r25, Y+17	; 0x11
     786:	dc 01       	movw	r26, r24
     788:	ed 91       	ld	r30, X+
     78a:	fc 91       	ld	r31, X
     78c:	9e 01       	movw	r18, r28
     78e:	2e 5f       	subi	r18, 0xFE	; 254
     790:	3f 4f       	sbci	r19, 0xFF	; 255
     792:	02 88       	ldd	r0, Z+18	; 0x12
     794:	f3 89       	ldd	r31, Z+19	; 0x13
     796:	e0 2d       	mov	r30, r0
     798:	0e e0       	ldi	r16, 0x0E	; 14
     79a:	10 e0       	ldi	r17, 0x00	; 0
     79c:	44 e1       	ldi	r20, 0x14	; 20
     79e:	62 e5       	ldi	r22, 0x52	; 82
     7a0:	09 95       	icall
     7a2:	2c 85       	ldd	r18, Y+12	; 0x0c
     7a4:	30 e0       	ldi	r19, 0x00	; 0
     7a6:	32 2f       	mov	r19, r18
     7a8:	22 27       	eor	r18, r18
     7aa:	8d 85       	ldd	r24, Y+13	; 0x0d
     7ac:	28 2b       	or	r18, r24
     7ae:	c9 01       	movw	r24, r18
     7b0:	06 97       	sbiw	r24, 0x06	; 6
     7b2:	8a 3f       	cpi	r24, 0xFA	; 250
     7b4:	93 40       	sbci	r25, 0x03	; 3
     7b6:	80 f4       	brcc	.+32     	; 0x7d8 <_ZN7VL53L0X4readEv+0x78>
     7b8:	88 81       	ld	r24, Y
     7ba:	99 81       	ldd	r25, Y+1	; 0x01
     7bc:	43 e0       	ldi	r20, 0x03	; 3
     7be:	88 0f       	add	r24, r24
     7c0:	99 1f       	adc	r25, r25
     7c2:	4a 95       	dec	r20
     7c4:	e1 f7       	brne	.-8      	; 0x7be <_ZN7VL53L0X4readEv+0x5e>
     7c6:	82 0f       	add	r24, r18
     7c8:	93 1f       	adc	r25, r19
     7ca:	69 e0       	ldi	r22, 0x09	; 9
     7cc:	70 e0       	ldi	r23, 0x00	; 0
     7ce:	0e 94 e9 07 	call	0xfd2	; 0xfd2 <__divmodhi4>
     7d2:	79 83       	std	Y+1, r23	; 0x01
     7d4:	68 83       	st	Y, r22
     7d6:	04 c0       	rjmp	.+8      	; 0x7e0 <_ZN7VL53L0X4readEv+0x80>
     7d8:	80 e0       	ldi	r24, 0x00	; 0
     7da:	94 e0       	ldi	r25, 0x04	; 4
     7dc:	99 83       	std	Y+1, r25	; 0x01
     7de:	88 83       	st	Y, r24
     7e0:	88 81       	ld	r24, Y
     7e2:	99 81       	ldd	r25, Y+1	; 0x01
     7e4:	df 91       	pop	r29
     7e6:	cf 91       	pop	r28
     7e8:	1f 91       	pop	r17
     7ea:	0f 91       	pop	r16
     7ec:	08 95       	ret

000007ee <_ZN7VL53L0X11getSPADinfoEPhPb>:
     7ee:	af 92       	push	r10
     7f0:	bf 92       	push	r11
     7f2:	cf 92       	push	r12
     7f4:	df 92       	push	r13
     7f6:	ef 92       	push	r14
     7f8:	ff 92       	push	r15
     7fa:	0f 93       	push	r16
     7fc:	1f 93       	push	r17
     7fe:	cf 93       	push	r28
     800:	df 93       	push	r29
     802:	ec 01       	movw	r28, r24
     804:	8b 01       	movw	r16, r22
     806:	5a 01       	movw	r10, r20
     808:	db 01       	movw	r26, r22
     80a:	1c 92       	st	X, r1
     80c:	88 89       	ldd	r24, Y+16	; 0x10
     80e:	99 89       	ldd	r25, Y+17	; 0x11
     810:	dc 01       	movw	r26, r24
     812:	ed 91       	ld	r30, X+
     814:	fc 91       	ld	r31, X
     816:	00 84       	ldd	r0, Z+8	; 0x08
     818:	f1 85       	ldd	r31, Z+9	; 0x09
     81a:	e0 2d       	mov	r30, r0
     81c:	21 e0       	ldi	r18, 0x01	; 1
     81e:	40 e8       	ldi	r20, 0x80	; 128
     820:	62 e5       	ldi	r22, 0x52	; 82
     822:	09 95       	icall
     824:	88 89       	ldd	r24, Y+16	; 0x10
     826:	99 89       	ldd	r25, Y+17	; 0x11
     828:	dc 01       	movw	r26, r24
     82a:	ed 91       	ld	r30, X+
     82c:	fc 91       	ld	r31, X
     82e:	00 84       	ldd	r0, Z+8	; 0x08
     830:	f1 85       	ldd	r31, Z+9	; 0x09
     832:	e0 2d       	mov	r30, r0
     834:	21 e0       	ldi	r18, 0x01	; 1
     836:	4f ef       	ldi	r20, 0xFF	; 255
     838:	62 e5       	ldi	r22, 0x52	; 82
     83a:	09 95       	icall
     83c:	88 89       	ldd	r24, Y+16	; 0x10
     83e:	99 89       	ldd	r25, Y+17	; 0x11
     840:	dc 01       	movw	r26, r24
     842:	ed 91       	ld	r30, X+
     844:	fc 91       	ld	r31, X
     846:	00 84       	ldd	r0, Z+8	; 0x08
     848:	f1 85       	ldd	r31, Z+9	; 0x09
     84a:	e0 2d       	mov	r30, r0
     84c:	20 e0       	ldi	r18, 0x00	; 0
     84e:	40 e0       	ldi	r20, 0x00	; 0
     850:	62 e5       	ldi	r22, 0x52	; 82
     852:	09 95       	icall
     854:	88 89       	ldd	r24, Y+16	; 0x10
     856:	99 89       	ldd	r25, Y+17	; 0x11
     858:	dc 01       	movw	r26, r24
     85a:	ed 91       	ld	r30, X+
     85c:	fc 91       	ld	r31, X
     85e:	00 84       	ldd	r0, Z+8	; 0x08
     860:	f1 85       	ldd	r31, Z+9	; 0x09
     862:	e0 2d       	mov	r30, r0
     864:	26 e0       	ldi	r18, 0x06	; 6
     866:	4f ef       	ldi	r20, 0xFF	; 255
     868:	62 e5       	ldi	r22, 0x52	; 82
     86a:	09 95       	icall
     86c:	88 89       	ldd	r24, Y+16	; 0x10
     86e:	99 89       	ldd	r25, Y+17	; 0x11
     870:	fc 01       	movw	r30, r24
     872:	a0 81       	ld	r26, Z
     874:	b1 81       	ldd	r27, Z+1	; 0x01
     876:	18 96       	adiw	r26, 0x08	; 8
     878:	ed 90       	ld	r14, X+
     87a:	fc 90       	ld	r15, X
     87c:	19 97       	sbiw	r26, 0x09	; 9
     87e:	1e 96       	adiw	r26, 0x0e	; 14
     880:	ed 91       	ld	r30, X+
     882:	fc 91       	ld	r31, X
     884:	1f 97       	sbiw	r26, 0x0f	; 15
     886:	43 e8       	ldi	r20, 0x83	; 131
     888:	62 e5       	ldi	r22, 0x52	; 82
     88a:	09 95       	icall
     88c:	28 2f       	mov	r18, r24
     88e:	24 60       	ori	r18, 0x04	; 4
     890:	43 e8       	ldi	r20, 0x83	; 131
     892:	62 e5       	ldi	r22, 0x52	; 82
     894:	88 89       	ldd	r24, Y+16	; 0x10
     896:	99 89       	ldd	r25, Y+17	; 0x11
     898:	f7 01       	movw	r30, r14
     89a:	09 95       	icall
     89c:	88 89       	ldd	r24, Y+16	; 0x10
     89e:	99 89       	ldd	r25, Y+17	; 0x11
     8a0:	dc 01       	movw	r26, r24
     8a2:	ed 91       	ld	r30, X+
     8a4:	fc 91       	ld	r31, X
     8a6:	00 84       	ldd	r0, Z+8	; 0x08
     8a8:	f1 85       	ldd	r31, Z+9	; 0x09
     8aa:	e0 2d       	mov	r30, r0
     8ac:	27 e0       	ldi	r18, 0x07	; 7
     8ae:	4f ef       	ldi	r20, 0xFF	; 255
     8b0:	62 e5       	ldi	r22, 0x52	; 82
     8b2:	09 95       	icall
     8b4:	88 89       	ldd	r24, Y+16	; 0x10
     8b6:	99 89       	ldd	r25, Y+17	; 0x11
     8b8:	dc 01       	movw	r26, r24
     8ba:	ed 91       	ld	r30, X+
     8bc:	fc 91       	ld	r31, X
     8be:	00 84       	ldd	r0, Z+8	; 0x08
     8c0:	f1 85       	ldd	r31, Z+9	; 0x09
     8c2:	e0 2d       	mov	r30, r0
     8c4:	21 e0       	ldi	r18, 0x01	; 1
     8c6:	41 e8       	ldi	r20, 0x81	; 129
     8c8:	62 e5       	ldi	r22, 0x52	; 82
     8ca:	09 95       	icall
     8cc:	88 89       	ldd	r24, Y+16	; 0x10
     8ce:	99 89       	ldd	r25, Y+17	; 0x11
     8d0:	dc 01       	movw	r26, r24
     8d2:	ed 91       	ld	r30, X+
     8d4:	fc 91       	ld	r31, X
     8d6:	00 84       	ldd	r0, Z+8	; 0x08
     8d8:	f1 85       	ldd	r31, Z+9	; 0x09
     8da:	e0 2d       	mov	r30, r0
     8dc:	21 e0       	ldi	r18, 0x01	; 1
     8de:	40 e8       	ldi	r20, 0x80	; 128
     8e0:	62 e5       	ldi	r22, 0x52	; 82
     8e2:	09 95       	icall
     8e4:	88 89       	ldd	r24, Y+16	; 0x10
     8e6:	99 89       	ldd	r25, Y+17	; 0x11
     8e8:	dc 01       	movw	r26, r24
     8ea:	ed 91       	ld	r30, X+
     8ec:	fc 91       	ld	r31, X
     8ee:	00 84       	ldd	r0, Z+8	; 0x08
     8f0:	f1 85       	ldd	r31, Z+9	; 0x09
     8f2:	e0 2d       	mov	r30, r0
     8f4:	2b e6       	ldi	r18, 0x6B	; 107
     8f6:	44 e9       	ldi	r20, 0x94	; 148
     8f8:	62 e5       	ldi	r22, 0x52	; 82
     8fa:	09 95       	icall
     8fc:	88 89       	ldd	r24, Y+16	; 0x10
     8fe:	99 89       	ldd	r25, Y+17	; 0x11
     900:	dc 01       	movw	r26, r24
     902:	ed 91       	ld	r30, X+
     904:	fc 91       	ld	r31, X
     906:	00 84       	ldd	r0, Z+8	; 0x08
     908:	f1 85       	ldd	r31, Z+9	; 0x09
     90a:	e0 2d       	mov	r30, r0
     90c:	20 e0       	ldi	r18, 0x00	; 0
     90e:	43 e8       	ldi	r20, 0x83	; 131
     910:	62 e5       	ldi	r22, 0x52	; 82
     912:	09 95       	icall
     914:	81 e4       	ldi	r24, 0x41	; 65
     916:	c8 2e       	mov	r12, r24
     918:	82 e4       	ldi	r24, 0x42	; 66
     91a:	d8 2e       	mov	r13, r24
     91c:	8f e0       	ldi	r24, 0x0F	; 15
     91e:	e8 2e       	mov	r14, r24
     920:	f1 2c       	mov	r15, r1
     922:	88 89       	ldd	r24, Y+16	; 0x10
     924:	99 89       	ldd	r25, Y+17	; 0x11
     926:	dc 01       	movw	r26, r24
     928:	ed 91       	ld	r30, X+
     92a:	fc 91       	ld	r31, X
     92c:	06 84       	ldd	r0, Z+14	; 0x0e
     92e:	f7 85       	ldd	r31, Z+15	; 0x0f
     930:	e0 2d       	mov	r30, r0
     932:	43 e8       	ldi	r20, 0x83	; 131
     934:	62 e5       	ldi	r22, 0x52	; 82
     936:	09 95       	icall
     938:	81 11       	cpse	r24, r1
     93a:	08 c0       	rjmp	.+16     	; 0x94c <_ZN7VL53L0X11getSPADinfoEPhPb+0x15e>
     93c:	b1 e0       	ldi	r27, 0x01	; 1
     93e:	cb 1a       	sub	r12, r27
     940:	d1 08       	sbc	r13, r1
     942:	e1 08       	sbc	r14, r1
     944:	f1 08       	sbc	r15, r1
     946:	69 f7       	brne	.-38     	; 0x922 <_ZN7VL53L0X11getSPADinfoEPhPb+0x134>
     948:	80 e0       	ldi	r24, 0x00	; 0
     94a:	81 c0       	rjmp	.+258    	; 0xa4e <_ZN7VL53L0X11getSPADinfoEPhPb+0x260>
     94c:	88 89       	ldd	r24, Y+16	; 0x10
     94e:	99 89       	ldd	r25, Y+17	; 0x11
     950:	dc 01       	movw	r26, r24
     952:	ed 91       	ld	r30, X+
     954:	fc 91       	ld	r31, X
     956:	00 84       	ldd	r0, Z+8	; 0x08
     958:	f1 85       	ldd	r31, Z+9	; 0x09
     95a:	e0 2d       	mov	r30, r0
     95c:	21 e0       	ldi	r18, 0x01	; 1
     95e:	43 e8       	ldi	r20, 0x83	; 131
     960:	62 e5       	ldi	r22, 0x52	; 82
     962:	09 95       	icall
     964:	88 89       	ldd	r24, Y+16	; 0x10
     966:	99 89       	ldd	r25, Y+17	; 0x11
     968:	dc 01       	movw	r26, r24
     96a:	ed 91       	ld	r30, X+
     96c:	fc 91       	ld	r31, X
     96e:	06 84       	ldd	r0, Z+14	; 0x0e
     970:	f7 85       	ldd	r31, Z+15	; 0x0f
     972:	e0 2d       	mov	r30, r0
     974:	42 e9       	ldi	r20, 0x92	; 146
     976:	62 e5       	ldi	r22, 0x52	; 82
     978:	09 95       	icall
     97a:	98 2f       	mov	r25, r24
     97c:	9f 77       	andi	r25, 0x7F	; 127
     97e:	f8 01       	movw	r30, r16
     980:	90 83       	st	Z, r25
     982:	98 2f       	mov	r25, r24
     984:	99 1f       	adc	r25, r25
     986:	99 27       	eor	r25, r25
     988:	99 1f       	adc	r25, r25
     98a:	d5 01       	movw	r26, r10
     98c:	9c 93       	st	X, r25
     98e:	88 89       	ldd	r24, Y+16	; 0x10
     990:	99 89       	ldd	r25, Y+17	; 0x11
     992:	dc 01       	movw	r26, r24
     994:	ed 91       	ld	r30, X+
     996:	fc 91       	ld	r31, X
     998:	00 84       	ldd	r0, Z+8	; 0x08
     99a:	f1 85       	ldd	r31, Z+9	; 0x09
     99c:	e0 2d       	mov	r30, r0
     99e:	20 e0       	ldi	r18, 0x00	; 0
     9a0:	41 e8       	ldi	r20, 0x81	; 129
     9a2:	62 e5       	ldi	r22, 0x52	; 82
     9a4:	09 95       	icall
     9a6:	88 89       	ldd	r24, Y+16	; 0x10
     9a8:	99 89       	ldd	r25, Y+17	; 0x11
     9aa:	dc 01       	movw	r26, r24
     9ac:	ed 91       	ld	r30, X+
     9ae:	fc 91       	ld	r31, X
     9b0:	00 84       	ldd	r0, Z+8	; 0x08
     9b2:	f1 85       	ldd	r31, Z+9	; 0x09
     9b4:	e0 2d       	mov	r30, r0
     9b6:	26 e0       	ldi	r18, 0x06	; 6
     9b8:	4f ef       	ldi	r20, 0xFF	; 255
     9ba:	62 e5       	ldi	r22, 0x52	; 82
     9bc:	09 95       	icall
     9be:	88 89       	ldd	r24, Y+16	; 0x10
     9c0:	99 89       	ldd	r25, Y+17	; 0x11
     9c2:	fc 01       	movw	r30, r24
     9c4:	a0 81       	ld	r26, Z
     9c6:	b1 81       	ldd	r27, Z+1	; 0x01
     9c8:	18 96       	adiw	r26, 0x08	; 8
     9ca:	0d 91       	ld	r16, X+
     9cc:	1c 91       	ld	r17, X
     9ce:	19 97       	sbiw	r26, 0x09	; 9
     9d0:	1e 96       	adiw	r26, 0x0e	; 14
     9d2:	ed 91       	ld	r30, X+
     9d4:	fc 91       	ld	r31, X
     9d6:	1f 97       	sbiw	r26, 0x0f	; 15
     9d8:	43 e8       	ldi	r20, 0x83	; 131
     9da:	62 e5       	ldi	r22, 0x52	; 82
     9dc:	09 95       	icall
     9de:	28 2f       	mov	r18, r24
     9e0:	43 e8       	ldi	r20, 0x83	; 131
     9e2:	62 e5       	ldi	r22, 0x52	; 82
     9e4:	88 89       	ldd	r24, Y+16	; 0x10
     9e6:	99 89       	ldd	r25, Y+17	; 0x11
     9e8:	f8 01       	movw	r30, r16
     9ea:	09 95       	icall
     9ec:	88 89       	ldd	r24, Y+16	; 0x10
     9ee:	99 89       	ldd	r25, Y+17	; 0x11
     9f0:	dc 01       	movw	r26, r24
     9f2:	ed 91       	ld	r30, X+
     9f4:	fc 91       	ld	r31, X
     9f6:	00 84       	ldd	r0, Z+8	; 0x08
     9f8:	f1 85       	ldd	r31, Z+9	; 0x09
     9fa:	e0 2d       	mov	r30, r0
     9fc:	21 e0       	ldi	r18, 0x01	; 1
     9fe:	4f ef       	ldi	r20, 0xFF	; 255
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
     a16:	40 e0       	ldi	r20, 0x00	; 0
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
     a2e:	4f ef       	ldi	r20, 0xFF	; 255
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
     a44:	20 e0       	ldi	r18, 0x00	; 0
     a46:	40 e8       	ldi	r20, 0x80	; 128
     a48:	62 e5       	ldi	r22, 0x52	; 82
     a4a:	09 95       	icall
     a4c:	81 e0       	ldi	r24, 0x01	; 1
     a4e:	df 91       	pop	r29
     a50:	cf 91       	pop	r28
     a52:	1f 91       	pop	r17
     a54:	0f 91       	pop	r16
     a56:	ff 90       	pop	r15
     a58:	ef 90       	pop	r14
     a5a:	df 90       	pop	r13
     a5c:	cf 90       	pop	r12
     a5e:	bf 90       	pop	r11
     a60:	af 90       	pop	r10
     a62:	08 95       	ret

00000a64 <_ZN7VL53L0X4initEP13I2C_Interface>:
     a64:	ef 92       	push	r14
     a66:	ff 92       	push	r15
     a68:	0f 93       	push	r16
     a6a:	1f 93       	push	r17
     a6c:	cf 93       	push	r28
     a6e:	df 93       	push	r29
     a70:	cd b7       	in	r28, 0x3d	; 61
     a72:	de b7       	in	r29, 0x3e	; 62
     a74:	28 97       	sbiw	r28, 0x08	; 8
     a76:	0f b6       	in	r0, 0x3f	; 63
     a78:	f8 94       	cli
     a7a:	de bf       	out	0x3e, r29	; 62
     a7c:	0f be       	out	0x3f, r0	; 63
     a7e:	cd bf       	out	0x3d, r28	; 61
     a80:	7c 01       	movw	r14, r24
     a82:	cb 01       	movw	r24, r22
     a84:	d7 01       	movw	r26, r14
     a86:	51 96       	adiw	r26, 0x11	; 17
     a88:	7c 93       	st	X, r23
     a8a:	6e 93       	st	-X, r22
     a8c:	50 97       	sbiw	r26, 0x10	; 16
     a8e:	20 e0       	ldi	r18, 0x00	; 0
     a90:	30 e2       	ldi	r19, 0x20	; 32
     a92:	2d 93       	st	X+, r18
     a94:	3c 93       	st	X, r19
     a96:	fb 01       	movw	r30, r22
     a98:	a0 81       	ld	r26, Z
     a9a:	b1 81       	ldd	r27, Z+1	; 0x01
     a9c:	18 96       	adiw	r26, 0x08	; 8
     a9e:	0d 91       	ld	r16, X+
     aa0:	1c 91       	ld	r17, X
     aa2:	19 97       	sbiw	r26, 0x09	; 9
     aa4:	1e 96       	adiw	r26, 0x0e	; 14
     aa6:	ed 91       	ld	r30, X+
     aa8:	fc 91       	ld	r31, X
     aaa:	1f 97       	sbiw	r26, 0x0f	; 15
     aac:	49 e8       	ldi	r20, 0x89	; 137
     aae:	62 e5       	ldi	r22, 0x52	; 82
     ab0:	09 95       	icall
     ab2:	28 2f       	mov	r18, r24
     ab4:	21 60       	ori	r18, 0x01	; 1
     ab6:	49 e8       	ldi	r20, 0x89	; 137
     ab8:	62 e5       	ldi	r22, 0x52	; 82
     aba:	d7 01       	movw	r26, r14
     abc:	50 96       	adiw	r26, 0x10	; 16
     abe:	8d 91       	ld	r24, X+
     ac0:	9c 91       	ld	r25, X
     ac2:	51 97       	sbiw	r26, 0x11	; 17
     ac4:	f8 01       	movw	r30, r16
     ac6:	09 95       	icall
     ac8:	d7 01       	movw	r26, r14
     aca:	50 96       	adiw	r26, 0x10	; 16
     acc:	8d 91       	ld	r24, X+
     ace:	9c 91       	ld	r25, X
     ad0:	51 97       	sbiw	r26, 0x11	; 17
     ad2:	dc 01       	movw	r26, r24
     ad4:	ed 91       	ld	r30, X+
     ad6:	fc 91       	ld	r31, X
     ad8:	06 84       	ldd	r0, Z+14	; 0x0e
     ada:	f7 85       	ldd	r31, Z+15	; 0x0f
     adc:	e0 2d       	mov	r30, r0
     ade:	40 ec       	ldi	r20, 0xC0	; 192
     ae0:	62 e5       	ldi	r22, 0x52	; 82
     ae2:	09 95       	icall
     ae4:	8e 3e       	cpi	r24, 0xEE	; 238
     ae6:	09 f0       	breq	.+2      	; 0xaea <_ZN7VL53L0X4initEP13I2C_Interface+0x86>
     ae8:	61 c1       	rjmp	.+706    	; 0xdac <_ZN7VL53L0X4initEP13I2C_Interface+0x348>
     aea:	f7 01       	movw	r30, r14
     aec:	80 89       	ldd	r24, Z+16	; 0x10
     aee:	91 89       	ldd	r25, Z+17	; 0x11
     af0:	dc 01       	movw	r26, r24
     af2:	ed 91       	ld	r30, X+
     af4:	fc 91       	ld	r31, X
     af6:	00 84       	ldd	r0, Z+8	; 0x08
     af8:	f1 85       	ldd	r31, Z+9	; 0x09
     afa:	e0 2d       	mov	r30, r0
     afc:	21 e0       	ldi	r18, 0x01	; 1
     afe:	4f eb       	ldi	r20, 0xBF	; 191
     b00:	62 e5       	ldi	r22, 0x52	; 82
     b02:	09 95       	icall
     b04:	81 ea       	ldi	r24, 0xA1	; 161
     b06:	96 e8       	ldi	r25, 0x86	; 134
     b08:	a1 e0       	ldi	r26, 0x01	; 1
     b0a:	b0 e0       	ldi	r27, 0x00	; 0
     b0c:	01 97       	sbiw	r24, 0x01	; 1
     b0e:	a1 09       	sbc	r26, r1
     b10:	b1 09       	sbc	r27, r1
     b12:	11 f0       	breq	.+4      	; 0xb18 <_ZN7VL53L0X4initEP13I2C_Interface+0xb4>
     b14:	00 00       	nop
     b16:	fa cf       	rjmp	.-12     	; 0xb0c <_ZN7VL53L0X4initEP13I2C_Interface+0xa8>
     b18:	f7 01       	movw	r30, r14
     b1a:	80 89       	ldd	r24, Z+16	; 0x10
     b1c:	91 89       	ldd	r25, Z+17	; 0x11
     b1e:	dc 01       	movw	r26, r24
     b20:	ed 91       	ld	r30, X+
     b22:	fc 91       	ld	r31, X
     b24:	00 84       	ldd	r0, Z+8	; 0x08
     b26:	f1 85       	ldd	r31, Z+9	; 0x09
     b28:	e0 2d       	mov	r30, r0
     b2a:	20 e0       	ldi	r18, 0x00	; 0
     b2c:	48 e8       	ldi	r20, 0x88	; 136
     b2e:	62 e5       	ldi	r22, 0x52	; 82
     b30:	09 95       	icall
     b32:	f7 01       	movw	r30, r14
     b34:	80 89       	ldd	r24, Z+16	; 0x10
     b36:	91 89       	ldd	r25, Z+17	; 0x11
     b38:	dc 01       	movw	r26, r24
     b3a:	ed 91       	ld	r30, X+
     b3c:	fc 91       	ld	r31, X
     b3e:	00 84       	ldd	r0, Z+8	; 0x08
     b40:	f1 85       	ldd	r31, Z+9	; 0x09
     b42:	e0 2d       	mov	r30, r0
     b44:	21 e0       	ldi	r18, 0x01	; 1
     b46:	40 e8       	ldi	r20, 0x80	; 128
     b48:	62 e5       	ldi	r22, 0x52	; 82
     b4a:	09 95       	icall
     b4c:	f7 01       	movw	r30, r14
     b4e:	80 89       	ldd	r24, Z+16	; 0x10
     b50:	91 89       	ldd	r25, Z+17	; 0x11
     b52:	dc 01       	movw	r26, r24
     b54:	ed 91       	ld	r30, X+
     b56:	fc 91       	ld	r31, X
     b58:	00 84       	ldd	r0, Z+8	; 0x08
     b5a:	f1 85       	ldd	r31, Z+9	; 0x09
     b5c:	e0 2d       	mov	r30, r0
     b5e:	21 e0       	ldi	r18, 0x01	; 1
     b60:	4f ef       	ldi	r20, 0xFF	; 255
     b62:	62 e5       	ldi	r22, 0x52	; 82
     b64:	09 95       	icall
     b66:	f7 01       	movw	r30, r14
     b68:	80 89       	ldd	r24, Z+16	; 0x10
     b6a:	91 89       	ldd	r25, Z+17	; 0x11
     b6c:	dc 01       	movw	r26, r24
     b6e:	ed 91       	ld	r30, X+
     b70:	fc 91       	ld	r31, X
     b72:	00 84       	ldd	r0, Z+8	; 0x08
     b74:	f1 85       	ldd	r31, Z+9	; 0x09
     b76:	e0 2d       	mov	r30, r0
     b78:	20 e0       	ldi	r18, 0x00	; 0
     b7a:	40 e0       	ldi	r20, 0x00	; 0
     b7c:	62 e5       	ldi	r22, 0x52	; 82
     b7e:	09 95       	icall
     b80:	f7 01       	movw	r30, r14
     b82:	80 89       	ldd	r24, Z+16	; 0x10
     b84:	91 89       	ldd	r25, Z+17	; 0x11
     b86:	dc 01       	movw	r26, r24
     b88:	ed 91       	ld	r30, X+
     b8a:	fc 91       	ld	r31, X
     b8c:	06 84       	ldd	r0, Z+14	; 0x0e
     b8e:	f7 85       	ldd	r31, Z+15	; 0x0f
     b90:	e0 2d       	mov	r30, r0
     b92:	41 e9       	ldi	r20, 0x91	; 145
     b94:	62 e5       	ldi	r22, 0x52	; 82
     b96:	09 95       	icall
     b98:	f7 01       	movw	r30, r14
     b9a:	80 89       	ldd	r24, Z+16	; 0x10
     b9c:	91 89       	ldd	r25, Z+17	; 0x11
     b9e:	dc 01       	movw	r26, r24
     ba0:	ed 91       	ld	r30, X+
     ba2:	fc 91       	ld	r31, X
     ba4:	00 84       	ldd	r0, Z+8	; 0x08
     ba6:	f1 85       	ldd	r31, Z+9	; 0x09
     ba8:	e0 2d       	mov	r30, r0
     baa:	21 e0       	ldi	r18, 0x01	; 1
     bac:	40 e0       	ldi	r20, 0x00	; 0
     bae:	62 e5       	ldi	r22, 0x52	; 82
     bb0:	09 95       	icall
     bb2:	f7 01       	movw	r30, r14
     bb4:	80 89       	ldd	r24, Z+16	; 0x10
     bb6:	91 89       	ldd	r25, Z+17	; 0x11
     bb8:	dc 01       	movw	r26, r24
     bba:	ed 91       	ld	r30, X+
     bbc:	fc 91       	ld	r31, X
     bbe:	00 84       	ldd	r0, Z+8	; 0x08
     bc0:	f1 85       	ldd	r31, Z+9	; 0x09
     bc2:	e0 2d       	mov	r30, r0
     bc4:	20 e0       	ldi	r18, 0x00	; 0
     bc6:	4f ef       	ldi	r20, 0xFF	; 255
     bc8:	62 e5       	ldi	r22, 0x52	; 82
     bca:	09 95       	icall
     bcc:	f7 01       	movw	r30, r14
     bce:	80 89       	ldd	r24, Z+16	; 0x10
     bd0:	91 89       	ldd	r25, Z+17	; 0x11
     bd2:	dc 01       	movw	r26, r24
     bd4:	ed 91       	ld	r30, X+
     bd6:	fc 91       	ld	r31, X
     bd8:	00 84       	ldd	r0, Z+8	; 0x08
     bda:	f1 85       	ldd	r31, Z+9	; 0x09
     bdc:	e0 2d       	mov	r30, r0
     bde:	20 e0       	ldi	r18, 0x00	; 0
     be0:	40 e8       	ldi	r20, 0x80	; 128
     be2:	62 e5       	ldi	r22, 0x52	; 82
     be4:	09 95       	icall
     be6:	18 86       	std	Y+8, r1	; 0x08
     be8:	ae 01       	movw	r20, r28
     bea:	49 5f       	subi	r20, 0xF9	; 249
     bec:	5f 4f       	sbci	r21, 0xFF	; 255
     bee:	be 01       	movw	r22, r28
     bf0:	68 5f       	subi	r22, 0xF8	; 248
     bf2:	7f 4f       	sbci	r23, 0xFF	; 255
     bf4:	c7 01       	movw	r24, r14
     bf6:	0e 94 f7 03 	call	0x7ee	; 0x7ee <_ZN7VL53L0X11getSPADinfoEPhPb>
     bfa:	f7 01       	movw	r30, r14
     bfc:	80 89       	ldd	r24, Z+16	; 0x10
     bfe:	91 89       	ldd	r25, Z+17	; 0x11
     c00:	dc 01       	movw	r26, r24
     c02:	ed 91       	ld	r30, X+
     c04:	fc 91       	ld	r31, X
     c06:	02 88       	ldd	r0, Z+18	; 0x12
     c08:	f3 89       	ldd	r31, Z+19	; 0x13
     c0a:	e0 2d       	mov	r30, r0
     c0c:	06 e0       	ldi	r16, 0x06	; 6
     c0e:	10 e0       	ldi	r17, 0x00	; 0
     c10:	9e 01       	movw	r18, r28
     c12:	2f 5f       	subi	r18, 0xFF	; 255
     c14:	3f 4f       	sbci	r19, 0xFF	; 255
     c16:	40 eb       	ldi	r20, 0xB0	; 176
     c18:	62 e5       	ldi	r22, 0x52	; 82
     c1a:	09 95       	icall
     c1c:	f7 01       	movw	r30, r14
     c1e:	80 89       	ldd	r24, Z+16	; 0x10
     c20:	91 89       	ldd	r25, Z+17	; 0x11
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
     c36:	f7 01       	movw	r30, r14
     c38:	80 89       	ldd	r24, Z+16	; 0x10
     c3a:	91 89       	ldd	r25, Z+17	; 0x11
     c3c:	dc 01       	movw	r26, r24
     c3e:	ed 91       	ld	r30, X+
     c40:	fc 91       	ld	r31, X
     c42:	00 84       	ldd	r0, Z+8	; 0x08
     c44:	f1 85       	ldd	r31, Z+9	; 0x09
     c46:	e0 2d       	mov	r30, r0
     c48:	20 e0       	ldi	r18, 0x00	; 0
     c4a:	4f e4       	ldi	r20, 0x4F	; 79
     c4c:	62 e5       	ldi	r22, 0x52	; 82
     c4e:	09 95       	icall
     c50:	f7 01       	movw	r30, r14
     c52:	80 89       	ldd	r24, Z+16	; 0x10
     c54:	91 89       	ldd	r25, Z+17	; 0x11
     c56:	dc 01       	movw	r26, r24
     c58:	ed 91       	ld	r30, X+
     c5a:	fc 91       	ld	r31, X
     c5c:	00 84       	ldd	r0, Z+8	; 0x08
     c5e:	f1 85       	ldd	r31, Z+9	; 0x09
     c60:	e0 2d       	mov	r30, r0
     c62:	2c e2       	ldi	r18, 0x2C	; 44
     c64:	4e e4       	ldi	r20, 0x4E	; 78
     c66:	62 e5       	ldi	r22, 0x52	; 82
     c68:	09 95       	icall
     c6a:	f7 01       	movw	r30, r14
     c6c:	80 89       	ldd	r24, Z+16	; 0x10
     c6e:	91 89       	ldd	r25, Z+17	; 0x11
     c70:	dc 01       	movw	r26, r24
     c72:	ed 91       	ld	r30, X+
     c74:	fc 91       	ld	r31, X
     c76:	00 84       	ldd	r0, Z+8	; 0x08
     c78:	f1 85       	ldd	r31, Z+9	; 0x09
     c7a:	e0 2d       	mov	r30, r0
     c7c:	20 e0       	ldi	r18, 0x00	; 0
     c7e:	4f ef       	ldi	r20, 0xFF	; 255
     c80:	62 e5       	ldi	r22, 0x52	; 82
     c82:	09 95       	icall
     c84:	f7 01       	movw	r30, r14
     c86:	80 89       	ldd	r24, Z+16	; 0x10
     c88:	91 89       	ldd	r25, Z+17	; 0x11
     c8a:	dc 01       	movw	r26, r24
     c8c:	ed 91       	ld	r30, X+
     c8e:	fc 91       	ld	r31, X
     c90:	00 84       	ldd	r0, Z+8	; 0x08
     c92:	f1 85       	ldd	r31, Z+9	; 0x09
     c94:	e0 2d       	mov	r30, r0
     c96:	24 eb       	ldi	r18, 0xB4	; 180
     c98:	46 eb       	ldi	r20, 0xB6	; 182
     c9a:	62 e5       	ldi	r22, 0x52	; 82
     c9c:	09 95       	icall
     c9e:	8f 81       	ldd	r24, Y+7	; 0x07
     ca0:	81 11       	cpse	r24, r1
     ca2:	02 c0       	rjmp	.+4      	; 0xca8 <_ZN7VL53L0X4initEP13I2C_Interface+0x244>
     ca4:	40 e0       	ldi	r20, 0x00	; 0
     ca6:	01 c0       	rjmp	.+2      	; 0xcaa <_ZN7VL53L0X4initEP13I2C_Interface+0x246>
     ca8:	4c e0       	ldi	r20, 0x0C	; 12
     caa:	a8 85       	ldd	r26, Y+8	; 0x08
     cac:	80 e0       	ldi	r24, 0x00	; 0
     cae:	90 e0       	ldi	r25, 0x00	; 0
     cb0:	61 e0       	ldi	r22, 0x01	; 1
     cb2:	70 e0       	ldi	r23, 0x00	; 0
     cb4:	28 2f       	mov	r18, r24
     cb6:	26 95       	lsr	r18
     cb8:	26 95       	lsr	r18
     cba:	26 95       	lsr	r18
     cbc:	58 2f       	mov	r21, r24
     cbe:	57 70       	andi	r21, 0x07	; 7
     cc0:	e1 e0       	ldi	r30, 0x01	; 1
     cc2:	f0 e0       	ldi	r31, 0x00	; 0
     cc4:	ec 0f       	add	r30, r28
     cc6:	fd 1f       	adc	r31, r29
     cc8:	e2 0f       	add	r30, r18
     cca:	f1 1d       	adc	r31, r1
     ccc:	84 17       	cp	r24, r20
     cce:	10 f0       	brcs	.+4      	; 0xcd4 <_ZN7VL53L0X4initEP13I2C_Interface+0x270>
     cd0:	9a 13       	cpse	r25, r26
     cd2:	0a c0       	rjmp	.+20     	; 0xce8 <_ZN7VL53L0X4initEP13I2C_Interface+0x284>
     cd4:	9b 01       	movw	r18, r22
     cd6:	01 c0       	rjmp	.+2      	; 0xcda <_ZN7VL53L0X4initEP13I2C_Interface+0x276>
     cd8:	22 0f       	add	r18, r18
     cda:	5a 95       	dec	r21
     cdc:	ea f7       	brpl	.-6      	; 0xcd8 <_ZN7VL53L0X4initEP13I2C_Interface+0x274>
     cde:	20 95       	com	r18
     ce0:	30 81       	ld	r19, Z
     ce2:	23 23       	and	r18, r19
     ce4:	20 83       	st	Z, r18
     ce6:	09 c0       	rjmp	.+18     	; 0xcfa <_ZN7VL53L0X4initEP13I2C_Interface+0x296>
     ce8:	20 81       	ld	r18, Z
     cea:	30 e0       	ldi	r19, 0x00	; 0
     cec:	02 c0       	rjmp	.+4      	; 0xcf2 <_ZN7VL53L0X4initEP13I2C_Interface+0x28e>
     cee:	35 95       	asr	r19
     cf0:	27 95       	ror	r18
     cf2:	5a 95       	dec	r21
     cf4:	e2 f7       	brpl	.-8      	; 0xcee <_ZN7VL53L0X4initEP13I2C_Interface+0x28a>
     cf6:	20 fd       	sbrc	r18, 0
     cf8:	9f 5f       	subi	r25, 0xFF	; 255
     cfa:	8f 5f       	subi	r24, 0xFF	; 255
     cfc:	80 33       	cpi	r24, 0x30	; 48
     cfe:	d1 f6       	brne	.-76     	; 0xcb4 <_ZN7VL53L0X4initEP13I2C_Interface+0x250>
     d00:	f7 01       	movw	r30, r14
     d02:	80 89       	ldd	r24, Z+16	; 0x10
     d04:	91 89       	ldd	r25, Z+17	; 0x11
     d06:	dc 01       	movw	r26, r24
     d08:	ed 91       	ld	r30, X+
     d0a:	fc 91       	ld	r31, X
     d0c:	04 84       	ldd	r0, Z+12	; 0x0c
     d0e:	f5 85       	ldd	r31, Z+13	; 0x0d
     d10:	e0 2d       	mov	r30, r0
     d12:	06 e0       	ldi	r16, 0x06	; 6
     d14:	10 e0       	ldi	r17, 0x00	; 0
     d16:	9e 01       	movw	r18, r28
     d18:	2f 5f       	subi	r18, 0xFF	; 255
     d1a:	3f 4f       	sbci	r19, 0xFF	; 255
     d1c:	40 eb       	ldi	r20, 0xB0	; 176
     d1e:	62 e5       	ldi	r22, 0x52	; 82
     d20:	09 95       	icall
     d22:	f7 01       	movw	r30, r14
     d24:	80 89       	ldd	r24, Z+16	; 0x10
     d26:	91 89       	ldd	r25, Z+17	; 0x11
     d28:	dc 01       	movw	r26, r24
     d2a:	ed 91       	ld	r30, X+
     d2c:	fc 91       	ld	r31, X
     d2e:	06 84       	ldd	r0, Z+14	; 0x0e
     d30:	f7 85       	ldd	r31, Z+15	; 0x0f
     d32:	e0 2d       	mov	r30, r0
     d34:	44 e8       	ldi	r20, 0x84	; 132
     d36:	62 e5       	ldi	r22, 0x52	; 82
     d38:	09 95       	icall
     d3a:	18 2f       	mov	r17, r24
     d3c:	f7 01       	movw	r30, r14
     d3e:	80 89       	ldd	r24, Z+16	; 0x10
     d40:	91 89       	ldd	r25, Z+17	; 0x11
     d42:	dc 01       	movw	r26, r24
     d44:	ed 91       	ld	r30, X+
     d46:	fc 91       	ld	r31, X
     d48:	00 84       	ldd	r0, Z+8	; 0x08
     d4a:	f1 85       	ldd	r31, Z+9	; 0x09
     d4c:	e0 2d       	mov	r30, r0
     d4e:	24 e0       	ldi	r18, 0x04	; 4
     d50:	4a e0       	ldi	r20, 0x0A	; 10
     d52:	62 e5       	ldi	r22, 0x52	; 82
     d54:	09 95       	icall
     d56:	f7 01       	movw	r30, r14
     d58:	80 89       	ldd	r24, Z+16	; 0x10
     d5a:	91 89       	ldd	r25, Z+17	; 0x11
     d5c:	dc 01       	movw	r26, r24
     d5e:	ed 91       	ld	r30, X+
     d60:	fc 91       	ld	r31, X
     d62:	21 2f       	mov	r18, r17
     d64:	2f 7e       	andi	r18, 0xEF	; 239
     d66:	00 84       	ldd	r0, Z+8	; 0x08
     d68:	f1 85       	ldd	r31, Z+9	; 0x09
     d6a:	e0 2d       	mov	r30, r0
     d6c:	44 e8       	ldi	r20, 0x84	; 132
     d6e:	62 e5       	ldi	r22, 0x52	; 82
     d70:	09 95       	icall
     d72:	f7 01       	movw	r30, r14
     d74:	80 89       	ldd	r24, Z+16	; 0x10
     d76:	91 89       	ldd	r25, Z+17	; 0x11
     d78:	dc 01       	movw	r26, r24
     d7a:	ed 91       	ld	r30, X+
     d7c:	fc 91       	ld	r31, X
     d7e:	00 84       	ldd	r0, Z+8	; 0x08
     d80:	f1 85       	ldd	r31, Z+9	; 0x09
     d82:	e0 2d       	mov	r30, r0
     d84:	21 e0       	ldi	r18, 0x01	; 1
     d86:	4b e0       	ldi	r20, 0x0B	; 11
     d88:	62 e5       	ldi	r22, 0x52	; 82
     d8a:	09 95       	icall
     d8c:	f7 01       	movw	r30, r14
     d8e:	80 89       	ldd	r24, Z+16	; 0x10
     d90:	91 89       	ldd	r25, Z+17	; 0x11
     d92:	dc 01       	movw	r26, r24
     d94:	ed 91       	ld	r30, X+
     d96:	fc 91       	ld	r31, X
     d98:	00 84       	ldd	r0, Z+8	; 0x08
     d9a:	f1 85       	ldd	r31, Z+9	; 0x09
     d9c:	e0 2d       	mov	r30, r0
     d9e:	22 e0       	ldi	r18, 0x02	; 2
     da0:	40 e0       	ldi	r20, 0x00	; 0
     da2:	62 e5       	ldi	r22, 0x52	; 82
     da4:	09 95       	icall
     da6:	80 e0       	ldi	r24, 0x00	; 0
     da8:	90 e0       	ldi	r25, 0x00	; 0
     daa:	02 c0       	rjmp	.+4      	; 0xdb0 <_ZN7VL53L0X4initEP13I2C_Interface+0x34c>
     dac:	8e ef       	ldi	r24, 0xFE	; 254
     dae:	9f ef       	ldi	r25, 0xFF	; 255
     db0:	28 96       	adiw	r28, 0x08	; 8
     db2:	0f b6       	in	r0, 0x3f	; 63
     db4:	f8 94       	cli
     db6:	de bf       	out	0x3e, r29	; 62
     db8:	0f be       	out	0x3f, r0	; 63
     dba:	cd bf       	out	0x3d, r28	; 61
     dbc:	df 91       	pop	r29
     dbe:	cf 91       	pop	r28
     dc0:	1f 91       	pop	r17
     dc2:	0f 91       	pop	r16
     dc4:	ff 90       	pop	r15
     dc6:	ef 90       	pop	r14
     dc8:	08 95       	ret

00000dca <_ZdlPv>:
     dca:	0c 94 e8 08 	jmp	0x11d0	; 0x11d0 <free>

00000dce <_ZN5TimerC1Ev>:
     dce:	e1 eb       	ldi	r30, 0xB1	; 177
     dd0:	f0 e0       	ldi	r31, 0x00	; 0
     dd2:	11 82       	std	Z+1, r1	; 0x01
     dd4:	10 82       	st	Z, r1
     dd6:	13 82       	std	Z+3, r1	; 0x03
     dd8:	12 82       	std	Z+2, r1	; 0x02
     dda:	15 82       	std	Z+5, r1	; 0x05
     ddc:	14 82       	std	Z+4, r1	; 0x04
     dde:	16 82       	std	Z+6, r1	; 0x06
     de0:	37 96       	adiw	r30, 0x07	; 7
     de2:	80 e0       	ldi	r24, 0x00	; 0
     de4:	e9 3e       	cpi	r30, 0xE9	; 233
     de6:	f8 07       	cpc	r31, r24
     de8:	a1 f7       	brne	.-24     	; 0xdd2 <_ZN5TimerC1Ev+0x4>
     dea:	83 b7       	in	r24, 0x33	; 51
     dec:	88 60       	ori	r24, 0x08	; 8
     dee:	83 bf       	out	0x33, r24	; 51
     df0:	8b e9       	ldi	r24, 0x9B	; 155
     df2:	8c bf       	out	0x3c, r24	; 60
     df4:	83 e0       	ldi	r24, 0x03	; 3
     df6:	83 bf       	out	0x33, r24	; 51
     df8:	89 b7       	in	r24, 0x39	; 57
     dfa:	82 60       	ori	r24, 0x02	; 2
     dfc:	89 bf       	out	0x39, r24	; 57
     dfe:	78 94       	sei
     e00:	08 95       	ret

00000e02 <_ZN5Timer8add_taskEP4Taskj>:
     e02:	f8 94       	cli
     e04:	e1 eb       	ldi	r30, 0xB1	; 177
     e06:	f0 e0       	ldi	r31, 0x00	; 0
     e08:	80 e0       	ldi	r24, 0x00	; 0
     e0a:	90 e0       	ldi	r25, 0x00	; 0
     e0c:	20 81       	ld	r18, Z
     e0e:	31 81       	ldd	r19, Z+1	; 0x01
     e10:	23 2b       	or	r18, r19
     e12:	81 f4       	brne	.+32     	; 0xe34 <_ZN5Timer8add_taskEP4Taskj+0x32>
     e14:	27 e0       	ldi	r18, 0x07	; 7
     e16:	28 9f       	mul	r18, r24
     e18:	f0 01       	movw	r30, r0
     e1a:	29 9f       	mul	r18, r25
     e1c:	f0 0d       	add	r31, r0
     e1e:	11 24       	eor	r1, r1
     e20:	ef 54       	subi	r30, 0x4F	; 79
     e22:	ff 4f       	sbci	r31, 0xFF	; 255
     e24:	71 83       	std	Z+1, r23	; 0x01
     e26:	60 83       	st	Z, r22
     e28:	53 83       	std	Z+3, r21	; 0x03
     e2a:	42 83       	std	Z+2, r20	; 0x02
     e2c:	55 83       	std	Z+5, r21	; 0x05
     e2e:	44 83       	std	Z+4, r20	; 0x04
     e30:	16 82       	std	Z+6, r1	; 0x06
     e32:	07 c0       	rjmp	.+14     	; 0xe42 <_ZN5Timer8add_taskEP4Taskj+0x40>
     e34:	01 96       	adiw	r24, 0x01	; 1
     e36:	37 96       	adiw	r30, 0x07	; 7
     e38:	88 30       	cpi	r24, 0x08	; 8
     e3a:	91 05       	cpc	r25, r1
     e3c:	39 f7       	brne	.-50     	; 0xe0c <_ZN5Timer8add_taskEP4Taskj+0xa>
     e3e:	8f ef       	ldi	r24, 0xFF	; 255
     e40:	9f ef       	ldi	r25, 0xFF	; 255
     e42:	78 94       	sei
     e44:	08 95       	ret

00000e46 <_ZN5Timer4mainEv>:
     e46:	cf 93       	push	r28
     e48:	df 93       	push	r29
     e4a:	c7 eb       	ldi	r28, 0xB7	; 183
     e4c:	d0 e0       	ldi	r29, 0x00	; 0
     e4e:	fe 01       	movw	r30, r28
     e50:	36 97       	sbiw	r30, 0x06	; 6
     e52:	80 81       	ld	r24, Z
     e54:	91 81       	ldd	r25, Z+1	; 0x01
     e56:	00 97       	sbiw	r24, 0x00	; 0
     e58:	59 f0       	breq	.+22     	; 0xe70 <_ZN5Timer4mainEv+0x2a>
     e5a:	28 81       	ld	r18, Y
     e5c:	22 23       	and	r18, r18
     e5e:	41 f0       	breq	.+16     	; 0xe70 <_ZN5Timer4mainEv+0x2a>
     e60:	18 82       	st	Y, r1
     e62:	dc 01       	movw	r26, r24
     e64:	ed 91       	ld	r30, X+
     e66:	fc 91       	ld	r31, X
     e68:	04 80       	ldd	r0, Z+4	; 0x04
     e6a:	f5 81       	ldd	r31, Z+5	; 0x05
     e6c:	e0 2d       	mov	r30, r0
     e6e:	09 95       	icall
     e70:	27 96       	adiw	r28, 0x07	; 7
     e72:	b0 e0       	ldi	r27, 0x00	; 0
     e74:	cf 3e       	cpi	r28, 0xEF	; 239
     e76:	db 07       	cpc	r29, r27
     e78:	51 f7       	brne	.-44     	; 0xe4e <_ZN5Timer4mainEv+0x8>
     e7a:	df 91       	pop	r29
     e7c:	cf 91       	pop	r28
     e7e:	08 95       	ret

00000e80 <__vector_19>:
     e80:	1f 92       	push	r1
     e82:	0f 92       	push	r0
     e84:	0f b6       	in	r0, 0x3f	; 63
     e86:	0f 92       	push	r0
     e88:	11 24       	eor	r1, r1
     e8a:	8f 93       	push	r24
     e8c:	9f 93       	push	r25
     e8e:	af 93       	push	r26
     e90:	bf 93       	push	r27
     e92:	ef 93       	push	r30
     e94:	ff 93       	push	r31
     e96:	e1 eb       	ldi	r30, 0xB1	; 177
     e98:	f0 e0       	ldi	r31, 0x00	; 0
     e9a:	a7 eb       	ldi	r26, 0xB7	; 183
     e9c:	b0 e0       	ldi	r27, 0x00	; 0
     e9e:	84 81       	ldd	r24, Z+4	; 0x04
     ea0:	95 81       	ldd	r25, Z+5	; 0x05
     ea2:	00 97       	sbiw	r24, 0x00	; 0
     ea4:	21 f0       	breq	.+8      	; 0xeae <__vector_19+0x2e>
     ea6:	01 97       	sbiw	r24, 0x01	; 1
     ea8:	95 83       	std	Z+5, r25	; 0x05
     eaa:	84 83       	std	Z+4, r24	; 0x04
     eac:	09 c0       	rjmp	.+18     	; 0xec0 <__vector_19+0x40>
     eae:	82 81       	ldd	r24, Z+2	; 0x02
     eb0:	93 81       	ldd	r25, Z+3	; 0x03
     eb2:	95 83       	std	Z+5, r25	; 0x05
     eb4:	84 83       	std	Z+4, r24	; 0x04
     eb6:	8c 91       	ld	r24, X
     eb8:	8f 3f       	cpi	r24, 0xFF	; 255
     eba:	11 f0       	breq	.+4      	; 0xec0 <__vector_19+0x40>
     ebc:	8f 5f       	subi	r24, 0xFF	; 255
     ebe:	8c 93       	st	X, r24
     ec0:	37 96       	adiw	r30, 0x07	; 7
     ec2:	17 96       	adiw	r26, 0x07	; 7
     ec4:	80 e0       	ldi	r24, 0x00	; 0
     ec6:	e9 3e       	cpi	r30, 0xE9	; 233
     ec8:	f8 07       	cpc	r31, r24
     eca:	49 f7       	brne	.-46     	; 0xe9e <__vector_19+0x1e>
     ecc:	80 91 e9 00 	lds	r24, 0x00E9
     ed0:	90 91 ea 00 	lds	r25, 0x00EA
     ed4:	a0 91 eb 00 	lds	r26, 0x00EB
     ed8:	b0 91 ec 00 	lds	r27, 0x00EC
     edc:	01 96       	adiw	r24, 0x01	; 1
     ede:	a1 1d       	adc	r26, r1
     ee0:	b1 1d       	adc	r27, r1
     ee2:	80 93 e9 00 	sts	0x00E9, r24
     ee6:	90 93 ea 00 	sts	0x00EA, r25
     eea:	a0 93 eb 00 	sts	0x00EB, r26
     eee:	b0 93 ec 00 	sts	0x00EC, r27
     ef2:	ff 91       	pop	r31
     ef4:	ef 91       	pop	r30
     ef6:	bf 91       	pop	r27
     ef8:	af 91       	pop	r26
     efa:	9f 91       	pop	r25
     efc:	8f 91       	pop	r24
     efe:	0f 90       	pop	r0
     f00:	0f be       	out	0x3f, r0	; 63
     f02:	0f 90       	pop	r0
     f04:	1f 90       	pop	r1
     f06:	18 95       	reti

00000f08 <_GLOBAL__sub_I_g_rt_time>:
     f08:	80 eb       	ldi	r24, 0xB0	; 176
     f0a:	90 e0       	ldi	r25, 0x00	; 0
     f0c:	0c 94 e7 06 	jmp	0xdce	; 0xdce <_ZN5TimerC1Ev>

00000f10 <_GLOBAL__sub_I_terminal>:
     f10:	8d ee       	ldi	r24, 0xED	; 237
     f12:	90 e0       	ldi	r25, 0x00	; 0
     f14:	0c 94 17 01 	jmp	0x22e	; 0x22e <_ZN5USARTC1Ev>

00000f18 <_GLOBAL__sub_D_terminal>:
     f18:	8d ee       	ldi	r24, 0xED	; 237
     f1a:	90 e0       	ldi	r25, 0x00	; 0
     f1c:	0c 94 21 01 	jmp	0x242	; 0x242 <_ZN5USARTD1Ev>

00000f20 <_ZN10LEDDisplayD1Ev>:
     f20:	08 95       	ret

00000f22 <_ZN10LEDDisplay4mainEv>:
     f22:	fc 01       	movw	r30, r24
     f24:	82 81       	ldd	r24, Z+2	; 0x02
     f26:	88 23       	and	r24, r24
     f28:	19 f0       	breq	.+6      	; 0xf30 <_ZN10LEDDisplay4mainEv+0xe>
     f2a:	81 30       	cpi	r24, 0x01	; 1
     f2c:	51 f0       	breq	.+20     	; 0xf42 <_ZN10LEDDisplay4mainEv+0x20>
     f2e:	08 95       	ret
     f30:	88 b3       	in	r24, 0x18	; 24
     f32:	83 60       	ori	r24, 0x03	; 3
     f34:	88 bb       	out	0x18, r24	; 24
     f36:	83 81       	ldd	r24, Z+3	; 0x03
     f38:	85 bb       	out	0x15, r24	; 21
     f3a:	c0 98       	cbi	0x18, 0	; 24
     f3c:	81 e0       	ldi	r24, 0x01	; 1
     f3e:	82 83       	std	Z+2, r24	; 0x02
     f40:	08 95       	ret
     f42:	88 b3       	in	r24, 0x18	; 24
     f44:	83 60       	ori	r24, 0x03	; 3
     f46:	88 bb       	out	0x18, r24	; 24
     f48:	84 81       	ldd	r24, Z+4	; 0x04
     f4a:	85 bb       	out	0x15, r24	; 21
     f4c:	c1 98       	cbi	0x18, 1	; 24
     f4e:	12 82       	std	Z+2, r1	; 0x02
     f50:	08 95       	ret

00000f52 <_ZN10LEDDisplayD0Ev>:
     f52:	0c 94 e5 06 	jmp	0xdca	; 0xdca <_ZdlPv>

00000f56 <_ZN10LEDDisplayC1Ev>:
     f56:	fc 01       	movw	r30, r24
     f58:	86 ea       	ldi	r24, 0xA6	; 166
     f5a:	90 e0       	ldi	r25, 0x00	; 0
     f5c:	91 83       	std	Z+1, r25	; 0x01
     f5e:	80 83       	st	Z, r24
     f60:	12 82       	std	Z+2, r1	; 0x02
     f62:	8f ef       	ldi	r24, 0xFF	; 255
     f64:	83 83       	std	Z+3, r24	; 0x03
     f66:	84 83       	std	Z+4, r24	; 0x04
     f68:	97 b3       	in	r25, 0x17	; 23
     f6a:	93 60       	ori	r25, 0x03	; 3
     f6c:	97 bb       	out	0x17, r25	; 23
     f6e:	98 b3       	in	r25, 0x18	; 24
     f70:	93 60       	ori	r25, 0x03	; 3
     f72:	98 bb       	out	0x18, r25	; 24
     f74:	85 bb       	out	0x15, r24	; 21
     f76:	84 bb       	out	0x14, r24	; 20
     f78:	45 e0       	ldi	r20, 0x05	; 5
     f7a:	50 e0       	ldi	r21, 0x00	; 0
     f7c:	bf 01       	movw	r22, r30
     f7e:	80 eb       	ldi	r24, 0xB0	; 176
     f80:	90 e0       	ldi	r25, 0x00	; 0
     f82:	0c 94 01 07 	jmp	0xe02	; 0xe02 <_ZN5Timer8add_taskEP4Taskj>

00000f86 <_ZN10LEDDisplay11display_decEh>:
     f86:	dc 01       	movw	r26, r24
     f88:	86 2f       	mov	r24, r22
     f8a:	64 36       	cpi	r22, 0x64	; 100
     f8c:	08 f0       	brcs	.+2      	; 0xf90 <_ZN10LEDDisplay11display_decEh+0xa>
     f8e:	83 e6       	ldi	r24, 0x63	; 99
     f90:	6a e0       	ldi	r22, 0x0A	; 10
     f92:	0e 94 dd 07 	call	0xfba	; 0xfba <__udivmodqi4>
     f96:	e8 2f       	mov	r30, r24
     f98:	f0 e0       	ldi	r31, 0x00	; 0
     f9a:	ee 56       	subi	r30, 0x6E	; 110
     f9c:	ff 4f       	sbci	r31, 0xFF	; 255
     f9e:	20 81       	ld	r18, Z
     fa0:	20 95       	com	r18
     fa2:	13 96       	adiw	r26, 0x03	; 3
     fa4:	2c 93       	st	X, r18
     fa6:	13 97       	sbiw	r26, 0x03	; 3
     fa8:	e9 2f       	mov	r30, r25
     faa:	f0 e0       	ldi	r31, 0x00	; 0
     fac:	ee 56       	subi	r30, 0x6E	; 110
     fae:	ff 4f       	sbci	r31, 0xFF	; 255
     fb0:	90 81       	ld	r25, Z
     fb2:	90 95       	com	r25
     fb4:	14 96       	adiw	r26, 0x04	; 4
     fb6:	9c 93       	st	X, r25
     fb8:	08 95       	ret

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
