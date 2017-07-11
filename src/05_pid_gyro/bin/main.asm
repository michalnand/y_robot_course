
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
      4c:	0c 94 d3 07 	jmp	0xfa6	; 0xfa6 <__vector_19>
      50:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>

00000054 <__ctors_start>:
      54:	2f 03       	fmul	r18, r23
      56:	97 04       	cpc	r9, r7
      58:	3d 08       	sbc	r3, r13
      5a:	d0 09       	sbc	r29, r0

0000005c <__ctors_end>:
      5c:	d4 09       	sbc	r29, r4

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
      70:	e0 ef       	ldi	r30, 0xF0	; 240
      72:	f7 e1       	ldi	r31, 0x17	; 23
      74:	02 c0       	rjmp	.+4      	; 0x7a <__do_copy_data+0x10>
      76:	05 90       	lpm	r0, Z+
      78:	0d 92       	st	X+, r0
      7a:	a6 39       	cpi	r26, 0x96	; 150
      7c:	b1 07       	cpc	r27, r17
      7e:	d9 f7       	brne	.-10     	; 0x76 <__do_copy_data+0xc>

00000080 <__do_clear_bss>:
      80:	20 e0       	ldi	r18, 0x00	; 0
      82:	a6 e9       	ldi	r26, 0x96	; 150
      84:	b0 e0       	ldi	r27, 0x00	; 0
      86:	01 c0       	rjmp	.+2      	; 0x8a <.do_clear_bss_start>

00000088 <.do_clear_bss_loop>:
      88:	1d 92       	st	X+, r1

0000008a <.do_clear_bss_start>:
      8a:	a4 3e       	cpi	r26, 0xE4	; 228
      8c:	b2 07       	cpc	r27, r18
      8e:	e1 f7       	brne	.-8      	; 0x88 <.do_clear_bss_loop>

00000090 <__do_global_ctors>:
      90:	10 e0       	ldi	r17, 0x00	; 0
      92:	ce e2       	ldi	r28, 0x2E	; 46
      94:	d0 e0       	ldi	r29, 0x00	; 0
      96:	04 c0       	rjmp	.+8      	; 0xa0 <__do_global_ctors+0x10>
      98:	21 97       	sbiw	r28, 0x01	; 1
      9a:	fe 01       	movw	r30, r28
      9c:	0e 94 19 0a 	call	0x1432	; 0x1432 <__tablejump2__>
      a0:	ca 32       	cpi	r28, 0x2A	; 42
      a2:	d1 07       	cpc	r29, r17
      a4:	c9 f7       	brne	.-14     	; 0x98 <__do_global_ctors+0x8>
      a6:	0e 94 6f 04 	call	0x8de	; 0x8de <main>
      aa:	0c 94 eb 0b 	jmp	0x17d6	; 0x17d6 <__do_global_dtors>

000000ae <__bad_interrupt>:
      ae:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b2 <_ZN6CUSARTC1Ev>:
      b2:	10 bc       	out	0x20, r1	; 32
      b4:	80 e4       	ldi	r24, 0x40	; 64
      b6:	89 b9       	out	0x09, r24	; 9
      b8:	80 b5       	in	r24, 0x20	; 32
      ba:	86 68       	ori	r24, 0x86	; 134
      bc:	80 bd       	out	0x20, r24	; 32
      be:	8a b1       	in	r24, 0x0a	; 10
      c0:	88 61       	ori	r24, 0x18	; 24
      c2:	8a b9       	out	0x0a, r24	; 10
      c4:	08 95       	ret

000000c6 <_ZN6CUSARTD1Ev>:
      c6:	08 95       	ret

000000c8 <_ZN6CUSART7putcharEc>:
      c8:	6c b9       	out	0x0c, r22	; 12
      ca:	5d 99       	sbic	0x0b, 5	; 11
      cc:	02 c0       	rjmp	.+4      	; 0xd2 <_ZN6CUSART7putcharEc+0xa>
      ce:	00 00       	nop
      d0:	fc cf       	rjmp	.-8      	; 0xca <_ZN6CUSART7putcharEc+0x2>
      d2:	08 95       	ret

000000d4 <_ZN6CMotorC1Ev>:
      d4:	80 ef       	ldi	r24, 0xF0	; 240
      d6:	81 bb       	out	0x11, r24	; 17
      d8:	95 98       	cbi	0x12, 5	; 18
      da:	81 ea       	ldi	r24, 0xA1	; 161
      dc:	8f bd       	out	0x2f, r24	; 47
      de:	82 e0       	ldi	r24, 0x02	; 2
      e0:	8e bd       	out	0x2e, r24	; 46
      e2:	1b bc       	out	0x2b, r1	; 43
      e4:	1a bc       	out	0x2a, r1	; 42
      e6:	19 bc       	out	0x29, r1	; 41
      e8:	18 bc       	out	0x28, r1	; 40
      ea:	08 95       	ret

000000ec <_ZN6CMotor3runEii>:
      ec:	6f 3f       	cpi	r22, 0xFF	; 255
      ee:	71 05       	cpc	r23, r1
      f0:	09 f0       	breq	.+2      	; 0xf4 <_ZN6CMotor3runEii+0x8>
      f2:	3c f4       	brge	.+14     	; 0x102 <_ZN6CMotor3runEii+0x16>
      f4:	61 30       	cpi	r22, 0x01	; 1
      f6:	8f ef       	ldi	r24, 0xFF	; 255
      f8:	78 07       	cpc	r23, r24
      fa:	2c f4       	brge	.+10     	; 0x106 <_ZN6CMotor3runEii+0x1a>
      fc:	61 e0       	ldi	r22, 0x01	; 1
      fe:	7f ef       	ldi	r23, 0xFF	; 255
     100:	02 c0       	rjmp	.+4      	; 0x106 <_ZN6CMotor3runEii+0x1a>
     102:	6f ef       	ldi	r22, 0xFF	; 255
     104:	70 e0       	ldi	r23, 0x00	; 0
     106:	4f 3f       	cpi	r20, 0xFF	; 255
     108:	51 05       	cpc	r21, r1
     10a:	09 f0       	breq	.+2      	; 0x10e <_ZN6CMotor3runEii+0x22>
     10c:	44 f4       	brge	.+16     	; 0x11e <_ZN6CMotor3runEii+0x32>
     10e:	41 30       	cpi	r20, 0x01	; 1
     110:	8f ef       	ldi	r24, 0xFF	; 255
     112:	58 07       	cpc	r21, r24
     114:	6c f0       	brlt	.+26     	; 0x130 <_ZN6CMotor3runEii+0x44>
     116:	14 16       	cp	r1, r20
     118:	15 06       	cpc	r1, r21
     11a:	1c f0       	brlt	.+6      	; 0x122 <_ZN6CMotor3runEii+0x36>
     11c:	05 c0       	rjmp	.+10     	; 0x128 <_ZN6CMotor3runEii+0x3c>
     11e:	4f ef       	ldi	r20, 0xFF	; 255
     120:	50 e0       	ldi	r21, 0x00	; 0
     122:	4a bd       	out	0x2a, r20	; 42
     124:	96 9a       	sbi	0x12, 6	; 18
     126:	0b c0       	rjmp	.+22     	; 0x13e <_ZN6CMotor3runEii+0x52>
     128:	41 15       	cp	r20, r1
     12a:	51 05       	cpc	r21, r1
     12c:	39 f0       	breq	.+14     	; 0x13c <_ZN6CMotor3runEii+0x50>
     12e:	02 c0       	rjmp	.+4      	; 0x134 <_ZN6CMotor3runEii+0x48>
     130:	41 e0       	ldi	r20, 0x01	; 1
     132:	5f ef       	ldi	r21, 0xFF	; 255
     134:	41 95       	neg	r20
     136:	4a bd       	out	0x2a, r20	; 42
     138:	96 98       	cbi	0x12, 6	; 18
     13a:	01 c0       	rjmp	.+2      	; 0x13e <_ZN6CMotor3runEii+0x52>
     13c:	1a bc       	out	0x2a, r1	; 42
     13e:	16 16       	cp	r1, r22
     140:	17 06       	cpc	r1, r23
     142:	1c f4       	brge	.+6      	; 0x14a <_ZN6CMotor3runEii+0x5e>
     144:	68 bd       	out	0x28, r22	; 40
     146:	97 98       	cbi	0x12, 7	; 18
     148:	08 95       	ret
     14a:	61 15       	cp	r22, r1
     14c:	71 05       	cpc	r23, r1
     14e:	21 f0       	breq	.+8      	; 0x158 <_ZN6CMotor3runEii+0x6c>
     150:	61 95       	neg	r22
     152:	68 bd       	out	0x28, r22	; 40
     154:	97 9a       	sbi	0x12, 7	; 18
     156:	08 95       	ret
     158:	18 bc       	out	0x28, r1	; 40
     15a:	08 95       	ret

0000015c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
     15c:	0f 93       	push	r16
     15e:	1f 93       	push	r17
     160:	cf 93       	push	r28
     162:	df 93       	push	r29
     164:	00 d0       	rcall	.+0      	; 0x166 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
     166:	1f 92       	push	r1
     168:	cd b7       	in	r28, 0x3d	; 61
     16a:	de b7       	in	r29, 0x3e	; 62
     16c:	8c 01       	movw	r16, r24
     16e:	dc 01       	movw	r26, r24
     170:	ed 91       	ld	r30, X+
     172:	fc 91       	ld	r31, X
     174:	01 90       	ld	r0, Z+
     176:	f0 81       	ld	r31, Z
     178:	e0 2d       	mov	r30, r0
     17a:	2b 83       	std	Y+3, r18	; 0x03
     17c:	4a 83       	std	Y+2, r20	; 0x02
     17e:	69 83       	std	Y+1, r22	; 0x01
     180:	09 95       	icall
     182:	d8 01       	movw	r26, r16
     184:	ed 91       	ld	r30, X+
     186:	fc 91       	ld	r31, X
     188:	04 80       	ldd	r0, Z+4	; 0x04
     18a:	f5 81       	ldd	r31, Z+5	; 0x05
     18c:	e0 2d       	mov	r30, r0
     18e:	69 81       	ldd	r22, Y+1	; 0x01
     190:	c8 01       	movw	r24, r16
     192:	09 95       	icall
     194:	d8 01       	movw	r26, r16
     196:	ed 91       	ld	r30, X+
     198:	fc 91       	ld	r31, X
     19a:	04 80       	ldd	r0, Z+4	; 0x04
     19c:	f5 81       	ldd	r31, Z+5	; 0x05
     19e:	e0 2d       	mov	r30, r0
     1a0:	4a 81       	ldd	r20, Y+2	; 0x02
     1a2:	64 2f       	mov	r22, r20
     1a4:	c8 01       	movw	r24, r16
     1a6:	09 95       	icall
     1a8:	d8 01       	movw	r26, r16
     1aa:	ed 91       	ld	r30, X+
     1ac:	fc 91       	ld	r31, X
     1ae:	04 80       	ldd	r0, Z+4	; 0x04
     1b0:	f5 81       	ldd	r31, Z+5	; 0x05
     1b2:	e0 2d       	mov	r30, r0
     1b4:	2b 81       	ldd	r18, Y+3	; 0x03
     1b6:	62 2f       	mov	r22, r18
     1b8:	c8 01       	movw	r24, r16
     1ba:	09 95       	icall
     1bc:	d8 01       	movw	r26, r16
     1be:	ed 91       	ld	r30, X+
     1c0:	fc 91       	ld	r31, X
     1c2:	02 80       	ldd	r0, Z+2	; 0x02
     1c4:	f3 81       	ldd	r31, Z+3	; 0x03
     1c6:	e0 2d       	mov	r30, r0
     1c8:	c8 01       	movw	r24, r16
     1ca:	0f 90       	pop	r0
     1cc:	0f 90       	pop	r0
     1ce:	0f 90       	pop	r0
     1d0:	df 91       	pop	r29
     1d2:	cf 91       	pop	r28
     1d4:	1f 91       	pop	r17
     1d6:	0f 91       	pop	r16
     1d8:	09 94       	ijmp

000001da <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
     1da:	0f 93       	push	r16
     1dc:	1f 93       	push	r17
     1de:	cf 93       	push	r28
     1e0:	df 93       	push	r29
     1e2:	00 d0       	rcall	.+0      	; 0x1e4 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
     1e4:	00 d0       	rcall	.+0      	; 0x1e6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
     1e6:	cd b7       	in	r28, 0x3d	; 61
     1e8:	de b7       	in	r29, 0x3e	; 62
     1ea:	8c 01       	movw	r16, r24
     1ec:	dc 01       	movw	r26, r24
     1ee:	ed 91       	ld	r30, X+
     1f0:	fc 91       	ld	r31, X
     1f2:	01 90       	ld	r0, Z+
     1f4:	f0 81       	ld	r31, Z
     1f6:	e0 2d       	mov	r30, r0
     1f8:	2c 83       	std	Y+4, r18	; 0x04
     1fa:	3b 83       	std	Y+3, r19	; 0x03
     1fc:	4a 83       	std	Y+2, r20	; 0x02
     1fe:	69 83       	std	Y+1, r22	; 0x01
     200:	09 95       	icall
     202:	d8 01       	movw	r26, r16
     204:	ed 91       	ld	r30, X+
     206:	fc 91       	ld	r31, X
     208:	04 80       	ldd	r0, Z+4	; 0x04
     20a:	f5 81       	ldd	r31, Z+5	; 0x05
     20c:	e0 2d       	mov	r30, r0
     20e:	69 81       	ldd	r22, Y+1	; 0x01
     210:	c8 01       	movw	r24, r16
     212:	09 95       	icall
     214:	d8 01       	movw	r26, r16
     216:	ed 91       	ld	r30, X+
     218:	fc 91       	ld	r31, X
     21a:	04 80       	ldd	r0, Z+4	; 0x04
     21c:	f5 81       	ldd	r31, Z+5	; 0x05
     21e:	e0 2d       	mov	r30, r0
     220:	4a 81       	ldd	r20, Y+2	; 0x02
     222:	64 2f       	mov	r22, r20
     224:	c8 01       	movw	r24, r16
     226:	09 95       	icall
     228:	d8 01       	movw	r26, r16
     22a:	ed 91       	ld	r30, X+
     22c:	fc 91       	ld	r31, X
     22e:	04 80       	ldd	r0, Z+4	; 0x04
     230:	f5 81       	ldd	r31, Z+5	; 0x05
     232:	e0 2d       	mov	r30, r0
     234:	3b 81       	ldd	r19, Y+3	; 0x03
     236:	63 2f       	mov	r22, r19
     238:	c8 01       	movw	r24, r16
     23a:	09 95       	icall
     23c:	d8 01       	movw	r26, r16
     23e:	ed 91       	ld	r30, X+
     240:	fc 91       	ld	r31, X
     242:	04 80       	ldd	r0, Z+4	; 0x04
     244:	f5 81       	ldd	r31, Z+5	; 0x05
     246:	e0 2d       	mov	r30, r0
     248:	2c 81       	ldd	r18, Y+4	; 0x04
     24a:	62 2f       	mov	r22, r18
     24c:	c8 01       	movw	r24, r16
     24e:	09 95       	icall
     250:	d8 01       	movw	r26, r16
     252:	ed 91       	ld	r30, X+
     254:	fc 91       	ld	r31, X
     256:	02 80       	ldd	r0, Z+2	; 0x02
     258:	f3 81       	ldd	r31, Z+3	; 0x03
     25a:	e0 2d       	mov	r30, r0
     25c:	c8 01       	movw	r24, r16
     25e:	0f 90       	pop	r0
     260:	0f 90       	pop	r0
     262:	0f 90       	pop	r0
     264:	0f 90       	pop	r0
     266:	df 91       	pop	r29
     268:	cf 91       	pop	r28
     26a:	1f 91       	pop	r17
     26c:	0f 91       	pop	r16
     26e:	09 94       	ijmp

00000270 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
     270:	cf 92       	push	r12
     272:	df 92       	push	r13
     274:	ef 92       	push	r14
     276:	ff 92       	push	r15
     278:	0f 93       	push	r16
     27a:	1f 93       	push	r17
     27c:	cf 93       	push	r28
     27e:	df 93       	push	r29
     280:	00 d0       	rcall	.+0      	; 0x282 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
     282:	00 d0       	rcall	.+0      	; 0x284 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
     284:	cd b7       	in	r28, 0x3d	; 61
     286:	de b7       	in	r29, 0x3e	; 62
     288:	6c 01       	movw	r12, r24
     28a:	dc 01       	movw	r26, r24
     28c:	ed 91       	ld	r30, X+
     28e:	fc 91       	ld	r31, X
     290:	01 90       	ld	r0, Z+
     292:	f0 81       	ld	r31, Z
     294:	e0 2d       	mov	r30, r0
     296:	2b 83       	std	Y+3, r18	; 0x03
     298:	3c 83       	std	Y+4, r19	; 0x04
     29a:	4a 83       	std	Y+2, r20	; 0x02
     29c:	69 83       	std	Y+1, r22	; 0x01
     29e:	09 95       	icall
     2a0:	d6 01       	movw	r26, r12
     2a2:	ed 91       	ld	r30, X+
     2a4:	fc 91       	ld	r31, X
     2a6:	04 80       	ldd	r0, Z+4	; 0x04
     2a8:	f5 81       	ldd	r31, Z+5	; 0x05
     2aa:	e0 2d       	mov	r30, r0
     2ac:	69 81       	ldd	r22, Y+1	; 0x01
     2ae:	c6 01       	movw	r24, r12
     2b0:	09 95       	icall
     2b2:	d6 01       	movw	r26, r12
     2b4:	ed 91       	ld	r30, X+
     2b6:	fc 91       	ld	r31, X
     2b8:	04 80       	ldd	r0, Z+4	; 0x04
     2ba:	f5 81       	ldd	r31, Z+5	; 0x05
     2bc:	e0 2d       	mov	r30, r0
     2be:	4a 81       	ldd	r20, Y+2	; 0x02
     2c0:	64 2f       	mov	r22, r20
     2c2:	c6 01       	movw	r24, r12
     2c4:	09 95       	icall
     2c6:	2b 81       	ldd	r18, Y+3	; 0x03
     2c8:	e2 2e       	mov	r14, r18
     2ca:	3c 81       	ldd	r19, Y+4	; 0x04
     2cc:	f3 2e       	mov	r15, r19
     2ce:	0e 0d       	add	r16, r14
     2d0:	1f 1d       	adc	r17, r15
     2d2:	d6 01       	movw	r26, r12
     2d4:	ed 91       	ld	r30, X+
     2d6:	fc 91       	ld	r31, X
     2d8:	e0 16       	cp	r14, r16
     2da:	f1 06       	cpc	r15, r17
     2dc:	49 f0       	breq	.+18     	; 0x2f0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
     2de:	d7 01       	movw	r26, r14
     2e0:	6d 91       	ld	r22, X+
     2e2:	7d 01       	movw	r14, r26
     2e4:	04 80       	ldd	r0, Z+4	; 0x04
     2e6:	f5 81       	ldd	r31, Z+5	; 0x05
     2e8:	e0 2d       	mov	r30, r0
     2ea:	c6 01       	movw	r24, r12
     2ec:	09 95       	icall
     2ee:	f1 cf       	rjmp	.-30     	; 0x2d2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
     2f0:	02 80       	ldd	r0, Z+2	; 0x02
     2f2:	f3 81       	ldd	r31, Z+3	; 0x03
     2f4:	e0 2d       	mov	r30, r0
     2f6:	c6 01       	movw	r24, r12
     2f8:	0f 90       	pop	r0
     2fa:	0f 90       	pop	r0
     2fc:	0f 90       	pop	r0
     2fe:	0f 90       	pop	r0
     300:	df 91       	pop	r29
     302:	cf 91       	pop	r28
     304:	1f 91       	pop	r17
     306:	0f 91       	pop	r16
     308:	ff 90       	pop	r15
     30a:	ef 90       	pop	r14
     30c:	df 90       	pop	r13
     30e:	cf 90       	pop	r12
     310:	09 94       	ijmp

00000312 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
     312:	ef 92       	push	r14
     314:	ff 92       	push	r15
     316:	1f 93       	push	r17
     318:	cf 93       	push	r28
     31a:	df 93       	push	r29
     31c:	1f 92       	push	r1
     31e:	cd b7       	in	r28, 0x3d	; 61
     320:	de b7       	in	r29, 0x3e	; 62
     322:	7c 01       	movw	r14, r24
     324:	16 2f       	mov	r17, r22
     326:	dc 01       	movw	r26, r24
     328:	ed 91       	ld	r30, X+
     32a:	fc 91       	ld	r31, X
     32c:	01 90       	ld	r0, Z+
     32e:	f0 81       	ld	r31, Z
     330:	e0 2d       	mov	r30, r0
     332:	49 83       	std	Y+1, r20	; 0x01
     334:	09 95       	icall
     336:	d7 01       	movw	r26, r14
     338:	ed 91       	ld	r30, X+
     33a:	fc 91       	ld	r31, X
     33c:	04 80       	ldd	r0, Z+4	; 0x04
     33e:	f5 81       	ldd	r31, Z+5	; 0x05
     340:	e0 2d       	mov	r30, r0
     342:	61 2f       	mov	r22, r17
     344:	c7 01       	movw	r24, r14
     346:	09 95       	icall
     348:	d7 01       	movw	r26, r14
     34a:	ed 91       	ld	r30, X+
     34c:	fc 91       	ld	r31, X
     34e:	04 80       	ldd	r0, Z+4	; 0x04
     350:	f5 81       	ldd	r31, Z+5	; 0x05
     352:	e0 2d       	mov	r30, r0
     354:	49 81       	ldd	r20, Y+1	; 0x01
     356:	64 2f       	mov	r22, r20
     358:	c7 01       	movw	r24, r14
     35a:	09 95       	icall
     35c:	d7 01       	movw	r26, r14
     35e:	ed 91       	ld	r30, X+
     360:	fc 91       	ld	r31, X
     362:	01 90       	ld	r0, Z+
     364:	f0 81       	ld	r31, Z
     366:	e0 2d       	mov	r30, r0
     368:	c7 01       	movw	r24, r14
     36a:	09 95       	icall
     36c:	d7 01       	movw	r26, r14
     36e:	ed 91       	ld	r30, X+
     370:	fc 91       	ld	r31, X
     372:	61 2f       	mov	r22, r17
     374:	61 60       	ori	r22, 0x01	; 1
     376:	04 80       	ldd	r0, Z+4	; 0x04
     378:	f5 81       	ldd	r31, Z+5	; 0x05
     37a:	e0 2d       	mov	r30, r0
     37c:	c7 01       	movw	r24, r14
     37e:	09 95       	icall
     380:	d7 01       	movw	r26, r14
     382:	ed 91       	ld	r30, X+
     384:	fc 91       	ld	r31, X
     386:	06 80       	ldd	r0, Z+6	; 0x06
     388:	f7 81       	ldd	r31, Z+7	; 0x07
     38a:	e0 2d       	mov	r30, r0
     38c:	60 e0       	ldi	r22, 0x00	; 0
     38e:	c7 01       	movw	r24, r14
     390:	09 95       	icall
     392:	18 2f       	mov	r17, r24
     394:	d7 01       	movw	r26, r14
     396:	ed 91       	ld	r30, X+
     398:	fc 91       	ld	r31, X
     39a:	02 80       	ldd	r0, Z+2	; 0x02
     39c:	f3 81       	ldd	r31, Z+3	; 0x03
     39e:	e0 2d       	mov	r30, r0
     3a0:	c7 01       	movw	r24, r14
     3a2:	09 95       	icall
     3a4:	81 2f       	mov	r24, r17
     3a6:	0f 90       	pop	r0
     3a8:	df 91       	pop	r29
     3aa:	cf 91       	pop	r28
     3ac:	1f 91       	pop	r17
     3ae:	ff 90       	pop	r15
     3b0:	ef 90       	pop	r14
     3b2:	08 95       	ret

000003b4 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
     3b4:	ef 92       	push	r14
     3b6:	ff 92       	push	r15
     3b8:	0f 93       	push	r16
     3ba:	1f 93       	push	r17
     3bc:	cf 93       	push	r28
     3be:	df 93       	push	r29
     3c0:	1f 92       	push	r1
     3c2:	cd b7       	in	r28, 0x3d	; 61
     3c4:	de b7       	in	r29, 0x3e	; 62
     3c6:	7c 01       	movw	r14, r24
     3c8:	16 2f       	mov	r17, r22
     3ca:	dc 01       	movw	r26, r24
     3cc:	ed 91       	ld	r30, X+
     3ce:	fc 91       	ld	r31, X
     3d0:	01 90       	ld	r0, Z+
     3d2:	f0 81       	ld	r31, Z
     3d4:	e0 2d       	mov	r30, r0
     3d6:	49 83       	std	Y+1, r20	; 0x01
     3d8:	09 95       	icall
     3da:	d7 01       	movw	r26, r14
     3dc:	ed 91       	ld	r30, X+
     3de:	fc 91       	ld	r31, X
     3e0:	04 80       	ldd	r0, Z+4	; 0x04
     3e2:	f5 81       	ldd	r31, Z+5	; 0x05
     3e4:	e0 2d       	mov	r30, r0
     3e6:	61 2f       	mov	r22, r17
     3e8:	c7 01       	movw	r24, r14
     3ea:	09 95       	icall
     3ec:	d7 01       	movw	r26, r14
     3ee:	ed 91       	ld	r30, X+
     3f0:	fc 91       	ld	r31, X
     3f2:	04 80       	ldd	r0, Z+4	; 0x04
     3f4:	f5 81       	ldd	r31, Z+5	; 0x05
     3f6:	e0 2d       	mov	r30, r0
     3f8:	49 81       	ldd	r20, Y+1	; 0x01
     3fa:	64 2f       	mov	r22, r20
     3fc:	c7 01       	movw	r24, r14
     3fe:	09 95       	icall
     400:	d7 01       	movw	r26, r14
     402:	ed 91       	ld	r30, X+
     404:	fc 91       	ld	r31, X
     406:	01 90       	ld	r0, Z+
     408:	f0 81       	ld	r31, Z
     40a:	e0 2d       	mov	r30, r0
     40c:	c7 01       	movw	r24, r14
     40e:	09 95       	icall
     410:	d7 01       	movw	r26, r14
     412:	ed 91       	ld	r30, X+
     414:	fc 91       	ld	r31, X
     416:	61 2f       	mov	r22, r17
     418:	61 60       	ori	r22, 0x01	; 1
     41a:	04 80       	ldd	r0, Z+4	; 0x04
     41c:	f5 81       	ldd	r31, Z+5	; 0x05
     41e:	e0 2d       	mov	r30, r0
     420:	c7 01       	movw	r24, r14
     422:	09 95       	icall
     424:	d7 01       	movw	r26, r14
     426:	ed 91       	ld	r30, X+
     428:	fc 91       	ld	r31, X
     42a:	06 80       	ldd	r0, Z+6	; 0x06
     42c:	f7 81       	ldd	r31, Z+7	; 0x07
     42e:	e0 2d       	mov	r30, r0
     430:	61 e0       	ldi	r22, 0x01	; 1
     432:	c7 01       	movw	r24, r14
     434:	09 95       	icall
     436:	08 2f       	mov	r16, r24
     438:	10 e0       	ldi	r17, 0x00	; 0
     43a:	10 2f       	mov	r17, r16
     43c:	00 27       	eor	r16, r16
     43e:	d7 01       	movw	r26, r14
     440:	ed 91       	ld	r30, X+
     442:	fc 91       	ld	r31, X
     444:	06 80       	ldd	r0, Z+6	; 0x06
     446:	f7 81       	ldd	r31, Z+7	; 0x07
     448:	e0 2d       	mov	r30, r0
     44a:	60 e0       	ldi	r22, 0x00	; 0
     44c:	c7 01       	movw	r24, r14
     44e:	09 95       	icall
     450:	08 2b       	or	r16, r24
     452:	d7 01       	movw	r26, r14
     454:	ed 91       	ld	r30, X+
     456:	fc 91       	ld	r31, X
     458:	02 80       	ldd	r0, Z+2	; 0x02
     45a:	f3 81       	ldd	r31, Z+3	; 0x03
     45c:	e0 2d       	mov	r30, r0
     45e:	c7 01       	movw	r24, r14
     460:	09 95       	icall
     462:	c8 01       	movw	r24, r16
     464:	0f 90       	pop	r0
     466:	df 91       	pop	r29
     468:	cf 91       	pop	r28
     46a:	1f 91       	pop	r17
     46c:	0f 91       	pop	r16
     46e:	ff 90       	pop	r15
     470:	ef 90       	pop	r14
     472:	08 95       	ret

00000474 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
     474:	cf 92       	push	r12
     476:	df 92       	push	r13
     478:	ef 92       	push	r14
     47a:	ff 92       	push	r15
     47c:	0f 93       	push	r16
     47e:	1f 93       	push	r17
     480:	cf 93       	push	r28
     482:	df 93       	push	r29
     484:	00 d0       	rcall	.+0      	; 0x486 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
     486:	1f 92       	push	r1
     488:	cd b7       	in	r28, 0x3d	; 61
     48a:	de b7       	in	r29, 0x3e	; 62
     48c:	6c 01       	movw	r12, r24
     48e:	f6 2e       	mov	r15, r22
     490:	dc 01       	movw	r26, r24
     492:	ed 91       	ld	r30, X+
     494:	fc 91       	ld	r31, X
     496:	01 90       	ld	r0, Z+
     498:	f0 81       	ld	r31, Z
     49a:	e0 2d       	mov	r30, r0
     49c:	2a 83       	std	Y+2, r18	; 0x02
     49e:	3b 83       	std	Y+3, r19	; 0x03
     4a0:	49 83       	std	Y+1, r20	; 0x01
     4a2:	09 95       	icall
     4a4:	d6 01       	movw	r26, r12
     4a6:	ed 91       	ld	r30, X+
     4a8:	fc 91       	ld	r31, X
     4aa:	04 80       	ldd	r0, Z+4	; 0x04
     4ac:	f5 81       	ldd	r31, Z+5	; 0x05
     4ae:	e0 2d       	mov	r30, r0
     4b0:	6f 2d       	mov	r22, r15
     4b2:	c6 01       	movw	r24, r12
     4b4:	09 95       	icall
     4b6:	d6 01       	movw	r26, r12
     4b8:	ed 91       	ld	r30, X+
     4ba:	fc 91       	ld	r31, X
     4bc:	04 80       	ldd	r0, Z+4	; 0x04
     4be:	f5 81       	ldd	r31, Z+5	; 0x05
     4c0:	e0 2d       	mov	r30, r0
     4c2:	49 81       	ldd	r20, Y+1	; 0x01
     4c4:	64 2f       	mov	r22, r20
     4c6:	c6 01       	movw	r24, r12
     4c8:	09 95       	icall
     4ca:	d6 01       	movw	r26, r12
     4cc:	ed 91       	ld	r30, X+
     4ce:	fc 91       	ld	r31, X
     4d0:	01 90       	ld	r0, Z+
     4d2:	f0 81       	ld	r31, Z
     4d4:	e0 2d       	mov	r30, r0
     4d6:	c6 01       	movw	r24, r12
     4d8:	09 95       	icall
     4da:	d6 01       	movw	r26, r12
     4dc:	ed 91       	ld	r30, X+
     4de:	fc 91       	ld	r31, X
     4e0:	6f 2d       	mov	r22, r15
     4e2:	61 60       	ori	r22, 0x01	; 1
     4e4:	04 80       	ldd	r0, Z+4	; 0x04
     4e6:	f5 81       	ldd	r31, Z+5	; 0x05
     4e8:	e0 2d       	mov	r30, r0
     4ea:	c6 01       	movw	r24, r12
     4ec:	09 95       	icall
     4ee:	2a 81       	ldd	r18, Y+2	; 0x02
     4f0:	e2 2e       	mov	r14, r18
     4f2:	3b 81       	ldd	r19, Y+3	; 0x03
     4f4:	f3 2e       	mov	r15, r19
     4f6:	0e 0d       	add	r16, r14
     4f8:	1f 1d       	adc	r17, r15
     4fa:	d6 01       	movw	r26, r12
     4fc:	ed 91       	ld	r30, X+
     4fe:	fc 91       	ld	r31, X
     500:	e0 16       	cp	r14, r16
     502:	f1 06       	cpc	r15, r17
     504:	51 f0       	breq	.+20     	; 0x51a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0xa6>
     506:	06 80       	ldd	r0, Z+6	; 0x06
     508:	f7 81       	ldd	r31, Z+7	; 0x07
     50a:	e0 2d       	mov	r30, r0
     50c:	61 e0       	ldi	r22, 0x01	; 1
     50e:	c6 01       	movw	r24, r12
     510:	09 95       	icall
     512:	f7 01       	movw	r30, r14
     514:	81 93       	st	Z+, r24
     516:	7f 01       	movw	r14, r30
     518:	f0 cf       	rjmp	.-32     	; 0x4fa <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x86>
     51a:	02 80       	ldd	r0, Z+2	; 0x02
     51c:	f3 81       	ldd	r31, Z+3	; 0x03
     51e:	e0 2d       	mov	r30, r0
     520:	c6 01       	movw	r24, r12
     522:	0f 90       	pop	r0
     524:	0f 90       	pop	r0
     526:	0f 90       	pop	r0
     528:	df 91       	pop	r29
     52a:	cf 91       	pop	r28
     52c:	1f 91       	pop	r17
     52e:	0f 91       	pop	r16
     530:	ff 90       	pop	r15
     532:	ef 90       	pop	r14
     534:	df 90       	pop	r13
     536:	cf 90       	pop	r12
     538:	09 94       	ijmp

0000053a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     53a:	88 23       	and	r24, r24
     53c:	21 f0       	breq	.+8      	; 0x546 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     53e:	bf 98       	cbi	0x17, 7	; 23
     540:	82 30       	cpi	r24, 0x02	; 2
     542:	19 f0       	breq	.+6      	; 0x54a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     544:	08 95       	ret
     546:	bf 9a       	sbi	0x17, 7	; 23
     548:	08 95       	ret
     54a:	c7 9a       	sbi	0x18, 7	; 24
     54c:	08 95       	ret

0000054e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
     54e:	8a e0       	ldi	r24, 0x0A	; 10
     550:	00 00       	nop
     552:	81 50       	subi	r24, 0x01	; 1
     554:	e9 f7       	brne	.-6      	; 0x550 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
     556:	08 95       	ret

00000558 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
     558:	1f 93       	push	r17
     55a:	cf 93       	push	r28
     55c:	df 93       	push	r29
     55e:	16 2f       	mov	r17, r22
     560:	bd 98       	cbi	0x17, 5	; 23
     562:	80 e0       	ldi	r24, 0x00	; 0
     564:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     568:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     56c:	d8 e0       	ldi	r29, 0x08	; 8
     56e:	c0 e0       	ldi	r28, 0x00	; 0
     570:	cc 0f       	add	r28, r28
     572:	81 e0       	ldi	r24, 0x01	; 1
     574:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     578:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     57c:	b5 99       	sbic	0x16, 5	; 22
     57e:	c1 60       	ori	r28, 0x01	; 1
     580:	80 e0       	ldi	r24, 0x00	; 0
     582:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     586:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     58a:	d1 50       	subi	r29, 0x01	; 1
     58c:	89 f7       	brne	.-30     	; 0x570 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
     58e:	11 23       	and	r17, r17
     590:	11 f0       	breq	.+4      	; 0x596 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
     592:	bd 9a       	sbi	0x17, 5	; 23
     594:	01 c0       	rjmp	.+2      	; 0x598 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
     596:	bd 98       	cbi	0x17, 5	; 23
     598:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     59c:	81 e0       	ldi	r24, 0x01	; 1
     59e:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5a2:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     5a6:	80 e0       	ldi	r24, 0x00	; 0
     5a8:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5ac:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     5b0:	bd 98       	cbi	0x17, 5	; 23
     5b2:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     5b6:	8c 2f       	mov	r24, r28
     5b8:	df 91       	pop	r29
     5ba:	cf 91       	pop	r28
     5bc:	1f 91       	pop	r17
     5be:	08 95       	ret

000005c0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
     5c0:	cf 93       	push	r28
     5c2:	df 93       	push	r29
     5c4:	d6 2f       	mov	r29, r22
     5c6:	c8 e0       	ldi	r28, 0x08	; 8
     5c8:	80 e0       	ldi	r24, 0x00	; 0
     5ca:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5ce:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     5d2:	d7 ff       	sbrs	r29, 7
     5d4:	02 c0       	rjmp	.+4      	; 0x5da <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
     5d6:	bd 98       	cbi	0x17, 5	; 23
     5d8:	01 c0       	rjmp	.+2      	; 0x5dc <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
     5da:	bd 9a       	sbi	0x17, 5	; 23
     5dc:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     5e0:	81 e0       	ldi	r24, 0x01	; 1
     5e2:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5e6:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     5ea:	dd 0f       	add	r29, r29
     5ec:	c1 50       	subi	r28, 0x01	; 1
     5ee:	61 f7       	brne	.-40     	; 0x5c8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
     5f0:	80 e0       	ldi	r24, 0x00	; 0
     5f2:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5f6:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     5fa:	bd 98       	cbi	0x17, 5	; 23
     5fc:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     600:	81 e0       	ldi	r24, 0x01	; 1
     602:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     606:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     60a:	c6 b3       	in	r28, 0x16	; 22
     60c:	80 e0       	ldi	r24, 0x00	; 0
     60e:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     612:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     616:	c5 fb       	bst	r28, 5
     618:	cc 27       	eor	r28, r28
     61a:	c0 f9       	bld	r28, 0
     61c:	81 e0       	ldi	r24, 0x01	; 1
     61e:	8c 27       	eor	r24, r28
     620:	df 91       	pop	r29
     622:	cf 91       	pop	r28
     624:	08 95       	ret

00000626 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
     626:	81 e0       	ldi	r24, 0x01	; 1
     628:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     62c:	bd 98       	cbi	0x17, 5	; 23
     62e:	81 e0       	ldi	r24, 0x01	; 1
     630:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     634:	bd 9a       	sbi	0x17, 5	; 23
     636:	80 e0       	ldi	r24, 0x00	; 0
     638:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     63c:	bd 98       	cbi	0x17, 5	; 23
     63e:	0c 94 a7 02 	jmp	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

00000642 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
     642:	80 e0       	ldi	r24, 0x00	; 0
     644:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     648:	bd 9a       	sbi	0x17, 5	; 23
     64a:	81 e0       	ldi	r24, 0x01	; 1
     64c:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     650:	bd 9a       	sbi	0x17, 5	; 23
     652:	81 e0       	ldi	r24, 0x01	; 1
     654:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     658:	bd 98       	cbi	0x17, 5	; 23
     65a:	0c 94 a7 02 	jmp	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

0000065e <_GLOBAL__sub_I_i2c>:
     65e:	84 e6       	ldi	r24, 0x64	; 100
     660:	90 e0       	ldi	r25, 0x00	; 0
     662:	90 93 97 00 	sts	0x0097, r25
     666:	80 93 96 00 	sts	0x0096, r24
     66a:	bd 98       	cbi	0x17, 5	; 23
     66c:	81 e0       	ldi	r24, 0x01	; 1
     66e:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     672:	c5 98       	cbi	0x18, 5	; 24
     674:	c7 98       	cbi	0x18, 7	; 24
     676:	08 95       	ret

00000678 <_Z6blink2v>:
     678:	80 91 9a 00 	lds	r24, 0x009A
     67c:	90 91 9b 00 	lds	r25, 0x009B
     680:	00 97       	sbiw	r24, 0x00	; 0
     682:	19 f0       	breq	.+6      	; 0x68a <_Z6blink2v+0x12>
     684:	01 97       	sbiw	r24, 0x01	; 1
     686:	49 f0       	breq	.+18     	; 0x69a <_Z6blink2v+0x22>
     688:	08 95       	ret
     68a:	de 9a       	sbi	0x1b, 6	; 27
     68c:	81 e0       	ldi	r24, 0x01	; 1
     68e:	90 e0       	ldi	r25, 0x00	; 0
     690:	90 93 9b 00 	sts	0x009B, r25
     694:	80 93 9a 00 	sts	0x009A, r24
     698:	08 95       	ret
     69a:	de 98       	cbi	0x1b, 6	; 27
     69c:	10 92 9b 00 	sts	0x009B, r1
     6a0:	10 92 9a 00 	sts	0x009A, r1
     6a4:	08 95       	ret

000006a6 <_Z5blinkv>:
     6a6:	80 91 9c 00 	lds	r24, 0x009C
     6aa:	90 91 9d 00 	lds	r25, 0x009D
     6ae:	00 97       	sbiw	r24, 0x00	; 0
     6b0:	19 f0       	breq	.+6      	; 0x6b8 <_Z5blinkv+0x12>
     6b2:	01 97       	sbiw	r24, 0x01	; 1
     6b4:	49 f0       	breq	.+18     	; 0x6c8 <_Z5blinkv+0x22>
     6b6:	08 95       	ret
     6b8:	dd 9a       	sbi	0x1b, 5	; 27
     6ba:	81 e0       	ldi	r24, 0x01	; 1
     6bc:	90 e0       	ldi	r25, 0x00	; 0
     6be:	90 93 9d 00 	sts	0x009D, r25
     6c2:	80 93 9c 00 	sts	0x009C, r24
     6c6:	08 95       	ret
     6c8:	dd 98       	cbi	0x1b, 5	; 27
     6ca:	10 92 9d 00 	sts	0x009D, r1
     6ce:	10 92 9c 00 	sts	0x009C, r1
     6d2:	08 95       	ret

000006d4 <_Z12gyro_exampleb>:
     6d4:	cf 93       	push	r28
     6d6:	df 93       	push	r29
     6d8:	cd b7       	in	r28, 0x3d	; 61
     6da:	de b7       	in	r29, 0x3e	; 62
     6dc:	c0 54       	subi	r28, 0x40	; 64
     6de:	d1 09       	sbc	r29, r1
     6e0:	0f b6       	in	r0, 0x3f	; 63
     6e2:	f8 94       	cli
     6e4:	de bf       	out	0x3e, r29	; 62
     6e6:	0f be       	out	0x3f, r0	; 63
     6e8:	cd bf       	out	0x3d, r28	; 61
     6ea:	21 96       	adiw	r28, 0x01	; 1
     6ec:	8f af       	std	Y+63, r24	; 0x3f
     6ee:	21 97       	sbiw	r28, 0x01	; 1
     6f0:	ce 01       	movw	r24, r28
     6f2:	cb 96       	adiw	r24, 0x3b	; 59
     6f4:	0e 94 6a 00 	call	0xd4	; 0xd4 <_ZN6CMotorC1Ev>
     6f8:	ce 01       	movw	r24, r28
     6fa:	01 96       	adiw	r24, 0x01	; 1
     6fc:	0e 94 9a 04 	call	0x934	; 0x934 <_ZN5CGyroC1Ev>
     700:	66 e9       	ldi	r22, 0x96	; 150
     702:	70 e0       	ldi	r23, 0x00	; 0
     704:	ce 01       	movw	r24, r28
     706:	01 96       	adiw	r24, 0x01	; 1
     708:	0e 94 31 06 	call	0xc62	; 0xc62 <_ZN5CGyro4initEP14CI2C_Interface>
     70c:	89 a9       	ldd	r24, Y+49	; 0x31
     70e:	9a a9       	ldd	r25, Y+50	; 0x32
     710:	ab a9       	ldd	r26, Y+51	; 0x33
     712:	bc a9       	ldd	r27, Y+52	; 0x34
     714:	89 2b       	or	r24, r25
     716:	8a 2b       	or	r24, r26
     718:	8b 2b       	or	r24, r27
     71a:	49 f0       	breq	.+18     	; 0x72e <_Z12gyro_exampleb+0x5a>
     71c:	20 e0       	ldi	r18, 0x00	; 0
     71e:	42 e3       	ldi	r20, 0x32	; 50
     720:	50 e0       	ldi	r21, 0x00	; 0
     722:	6c e3       	ldi	r22, 0x3C	; 60
     724:	73 e0       	ldi	r23, 0x03	; 3
     726:	82 ee       	ldi	r24, 0xE2	; 226
     728:	90 e0       	ldi	r25, 0x00	; 0
     72a:	0e 94 5a 07 	call	0xeb4	; 0xeb4 <_ZN6CTimer8add_taskEPFvvEjb>
     72e:	81 2c       	mov	r8, r1
     730:	91 2c       	mov	r9, r1
     732:	54 01       	movw	r10, r8
     734:	51 2c       	mov	r5, r1
     736:	41 2c       	mov	r4, r1
     738:	31 2c       	mov	r3, r1
     73a:	21 2c       	mov	r2, r1
     73c:	61 2c       	mov	r6, r1
     73e:	71 2c       	mov	r7, r1
     740:	00 e0       	ldi	r16, 0x00	; 0
     742:	10 e0       	ldi	r17, 0x00	; 0
     744:	60 e0       	ldi	r22, 0x00	; 0
     746:	ce 01       	movw	r24, r28
     748:	01 96       	adiw	r24, 0x01	; 1
     74a:	0e 94 9b 04 	call	0x936	; 0x936 <_ZN5CGyro4readEb>
     74e:	21 96       	adiw	r28, 0x01	; 1
     750:	2f ad       	ldd	r18, Y+63	; 0x3f
     752:	21 97       	sbiw	r28, 0x01	; 1
     754:	22 23       	and	r18, r18
     756:	c1 f0       	breq	.+48     	; 0x788 <_Z12gyro_exampleb+0xb4>
     758:	8d 8d       	ldd	r24, Y+29	; 0x1d
     75a:	9e 8d       	ldd	r25, Y+30	; 0x1e
     75c:	af 8d       	ldd	r26, Y+31	; 0x1f
     75e:	b8 a1       	ldd	r27, Y+32	; 0x20
     760:	9c 01       	movw	r18, r24
     762:	ad 01       	movw	r20, r26
     764:	66 27       	eor	r22, r22
     766:	77 27       	eor	r23, r23
     768:	cb 01       	movw	r24, r22
     76a:	62 1b       	sub	r22, r18
     76c:	73 0b       	sbc	r23, r19
     76e:	84 0b       	sbc	r24, r20
     770:	95 0b       	sbc	r25, r21
     772:	0e 94 c9 0a 	call	0x1592	; 0x1592 <__floatsisf>
     776:	2d ec       	ldi	r18, 0xCD	; 205
     778:	3c ec       	ldi	r19, 0xCC	; 204
     77a:	4c ec       	ldi	r20, 0xCC	; 204
     77c:	5d e3       	ldi	r21, 0x3D	; 61
     77e:	0e 94 7e 0b 	call	0x16fc	; 0x16fc <__mulsf3>
     782:	9b 01       	movw	r18, r22
     784:	ac 01       	movw	r20, r24
     786:	03 c0       	rjmp	.+6      	; 0x78e <_Z12gyro_exampleb+0xba>
     788:	20 e0       	ldi	r18, 0x00	; 0
     78a:	30 e0       	ldi	r19, 0x00	; 0
     78c:	a9 01       	movw	r20, r18
     78e:	60 e0       	ldi	r22, 0x00	; 0
     790:	70 e0       	ldi	r23, 0x00	; 0
     792:	cb 01       	movw	r24, r22
     794:	0e 94 1f 0a 	call	0x143e	; 0x143e <__subsf3>
     798:	6c af       	std	Y+60, r22	; 0x3c
     79a:	7d af       	std	Y+61, r23	; 0x3d
     79c:	8e af       	std	Y+62, r24	; 0x3e
     79e:	9f af       	std	Y+63, r25	; 0x3f
     7a0:	20 e0       	ldi	r18, 0x00	; 0
     7a2:	30 e0       	ldi	r19, 0x00	; 0
     7a4:	40 e4       	ldi	r20, 0x40	; 64
     7a6:	51 e4       	ldi	r21, 0x41	; 65
     7a8:	0e 94 7e 0b 	call	0x16fc	; 0x16fc <__mulsf3>
     7ac:	6b 01       	movw	r12, r22
     7ae:	7c 01       	movw	r14, r24
     7b0:	20 e0       	ldi	r18, 0x00	; 0
     7b2:	30 e0       	ldi	r19, 0x00	; 0
     7b4:	40 eb       	ldi	r20, 0xB0	; 176
     7b6:	51 ec       	ldi	r21, 0xC1	; 193
     7b8:	b3 01       	movw	r22, r6
     7ba:	c8 01       	movw	r24, r16
     7bc:	0e 94 7e 0b 	call	0x16fc	; 0x16fc <__mulsf3>
     7c0:	9b 01       	movw	r18, r22
     7c2:	ac 01       	movw	r20, r24
     7c4:	c7 01       	movw	r24, r14
     7c6:	b6 01       	movw	r22, r12
     7c8:	0e 94 20 0a 	call	0x1440	; 0x1440 <__addsf3>
     7cc:	6b 01       	movw	r12, r22
     7ce:	7c 01       	movw	r14, r24
     7d0:	20 e0       	ldi	r18, 0x00	; 0
     7d2:	30 e0       	ldi	r19, 0x00	; 0
     7d4:	40 e2       	ldi	r20, 0x20	; 32
     7d6:	51 e4       	ldi	r21, 0x41	; 65
     7d8:	65 2d       	mov	r22, r5
     7da:	74 2d       	mov	r23, r4
     7dc:	83 2d       	mov	r24, r3
     7de:	92 2d       	mov	r25, r2
     7e0:	0e 94 7e 0b 	call	0x16fc	; 0x16fc <__mulsf3>
     7e4:	9b 01       	movw	r18, r22
     7e6:	ac 01       	movw	r20, r24
     7e8:	c7 01       	movw	r24, r14
     7ea:	b6 01       	movw	r22, r12
     7ec:	0e 94 20 0a 	call	0x1440	; 0x1440 <__addsf3>
     7f0:	9b 01       	movw	r18, r22
     7f2:	ac 01       	movw	r20, r24
     7f4:	c5 01       	movw	r24, r10
     7f6:	b4 01       	movw	r22, r8
     7f8:	0e 94 20 0a 	call	0x1440	; 0x1440 <__addsf3>
     7fc:	4b 01       	movw	r8, r22
     7fe:	5c 01       	movw	r10, r24
     800:	20 e0       	ldi	r18, 0x00	; 0
     802:	30 e0       	ldi	r19, 0x00	; 0
     804:	a9 01       	movw	r20, r18
     806:	0e 94 20 0a 	call	0x1440	; 0x1440 <__addsf3>
     80a:	6b 01       	movw	r12, r22
     80c:	7c 01       	movw	r14, r24
     80e:	20 e0       	ldi	r18, 0x00	; 0
     810:	30 e0       	ldi	r19, 0x00	; 0
     812:	40 e8       	ldi	r20, 0x80	; 128
     814:	53 ec       	ldi	r21, 0xC3	; 195
     816:	0e 94 8c 0a 	call	0x1518	; 0x1518 <__cmpsf2>
     81a:	87 fd       	sbrc	r24, 7
     81c:	11 c0       	rjmp	.+34     	; 0x840 <_Z12gyro_exampleb+0x16c>
     81e:	20 e0       	ldi	r18, 0x00	; 0
     820:	30 e0       	ldi	r19, 0x00	; 0
     822:	40 e8       	ldi	r20, 0x80	; 128
     824:	53 e4       	ldi	r21, 0x43	; 67
     826:	c7 01       	movw	r24, r14
     828:	b6 01       	movw	r22, r12
     82a:	0e 94 79 0b 	call	0x16f2	; 0x16f2 <__gesf2>
     82e:	18 16       	cp	r1, r24
     830:	6c f4       	brge	.+26     	; 0x84c <_Z12gyro_exampleb+0x178>
     832:	c1 2c       	mov	r12, r1
     834:	d1 2c       	mov	r13, r1
     836:	30 e8       	ldi	r19, 0x80	; 128
     838:	e3 2e       	mov	r14, r19
     83a:	33 e4       	ldi	r19, 0x43	; 67
     83c:	f3 2e       	mov	r15, r19
     83e:	06 c0       	rjmp	.+12     	; 0x84c <_Z12gyro_exampleb+0x178>
     840:	c1 2c       	mov	r12, r1
     842:	d1 2c       	mov	r13, r1
     844:	20 e8       	ldi	r18, 0x80	; 128
     846:	e2 2e       	mov	r14, r18
     848:	23 ec       	ldi	r18, 0xC3	; 195
     84a:	f2 2e       	mov	r15, r18
     84c:	c7 01       	movw	r24, r14
     84e:	b6 01       	movw	r22, r12
     850:	0e 94 91 0a 	call	0x1522	; 0x1522 <__fixsfsi>
     854:	1b 01       	movw	r2, r22
     856:	2c 01       	movw	r4, r24
     858:	a5 01       	movw	r20, r10
     85a:	94 01       	movw	r18, r8
     85c:	60 e0       	ldi	r22, 0x00	; 0
     85e:	70 e0       	ldi	r23, 0x00	; 0
     860:	cb 01       	movw	r24, r22
     862:	0e 94 1f 0a 	call	0x143e	; 0x143e <__subsf3>
     866:	6b 01       	movw	r12, r22
     868:	7c 01       	movw	r14, r24
     86a:	20 e0       	ldi	r18, 0x00	; 0
     86c:	30 e0       	ldi	r19, 0x00	; 0
     86e:	40 e8       	ldi	r20, 0x80	; 128
     870:	53 ec       	ldi	r21, 0xC3	; 195
     872:	0e 94 8c 0a 	call	0x1518	; 0x1518 <__cmpsf2>
     876:	87 fd       	sbrc	r24, 7
     878:	11 c0       	rjmp	.+34     	; 0x89c <_Z12gyro_exampleb+0x1c8>
     87a:	20 e0       	ldi	r18, 0x00	; 0
     87c:	30 e0       	ldi	r19, 0x00	; 0
     87e:	40 e8       	ldi	r20, 0x80	; 128
     880:	53 e4       	ldi	r21, 0x43	; 67
     882:	c7 01       	movw	r24, r14
     884:	b6 01       	movw	r22, r12
     886:	0e 94 79 0b 	call	0x16f2	; 0x16f2 <__gesf2>
     88a:	18 16       	cp	r1, r24
     88c:	6c f4       	brge	.+26     	; 0x8a8 <_Z12gyro_exampleb+0x1d4>
     88e:	c1 2c       	mov	r12, r1
     890:	d1 2c       	mov	r13, r1
     892:	90 e8       	ldi	r25, 0x80	; 128
     894:	e9 2e       	mov	r14, r25
     896:	93 e4       	ldi	r25, 0x43	; 67
     898:	f9 2e       	mov	r15, r25
     89a:	06 c0       	rjmp	.+12     	; 0x8a8 <_Z12gyro_exampleb+0x1d4>
     89c:	c1 2c       	mov	r12, r1
     89e:	d1 2c       	mov	r13, r1
     8a0:	80 e8       	ldi	r24, 0x80	; 128
     8a2:	e8 2e       	mov	r14, r24
     8a4:	83 ec       	ldi	r24, 0xC3	; 195
     8a6:	f8 2e       	mov	r15, r24
     8a8:	c7 01       	movw	r24, r14
     8aa:	b6 01       	movw	r22, r12
     8ac:	0e 94 91 0a 	call	0x1522	; 0x1522 <__fixsfsi>
     8b0:	ab 01       	movw	r20, r22
     8b2:	b1 01       	movw	r22, r2
     8b4:	ce 01       	movw	r24, r28
     8b6:	cb 96       	adiw	r24, 0x3b	; 59
     8b8:	0e 94 76 00 	call	0xec	; 0xec <_ZN6CMotor3runEii>
     8bc:	42 e0       	ldi	r20, 0x02	; 2
     8be:	50 e0       	ldi	r21, 0x00	; 0
     8c0:	60 e0       	ldi	r22, 0x00	; 0
     8c2:	70 e0       	ldi	r23, 0x00	; 0
     8c4:	82 ee       	ldi	r24, 0xE2	; 226
     8c6:	90 e0       	ldi	r25, 0x00	; 0
     8c8:	0e 94 9f 07 	call	0xf3e	; 0xf3e <_ZN6CTimer8delay_msEm>
     8cc:	56 2c       	mov	r5, r6
     8ce:	47 2c       	mov	r4, r7
     8d0:	30 2e       	mov	r3, r16
     8d2:	21 2e       	mov	r2, r17
     8d4:	6c ac       	ldd	r6, Y+60	; 0x3c
     8d6:	7d ac       	ldd	r7, Y+61	; 0x3d
     8d8:	0e ad       	ldd	r16, Y+62	; 0x3e
     8da:	1f ad       	ldd	r17, Y+63	; 0x3f
     8dc:	33 cf       	rjmp	.-410    	; 0x744 <_Z12gyro_exampleb+0x70>

000008de <main>:
     8de:	bb 98       	cbi	0x17, 3	; 23
     8e0:	c3 9a       	sbi	0x18, 3	; 24
     8e2:	ba 98       	cbi	0x17, 2	; 23
     8e4:	c2 9a       	sbi	0x18, 2	; 24
     8e6:	20 e0       	ldi	r18, 0x00	; 0
     8e8:	48 ec       	ldi	r20, 0xC8	; 200
     8ea:	50 e0       	ldi	r21, 0x00	; 0
     8ec:	63 e5       	ldi	r22, 0x53	; 83
     8ee:	73 e0       	ldi	r23, 0x03	; 3
     8f0:	82 ee       	ldi	r24, 0xE2	; 226
     8f2:	90 e0       	ldi	r25, 0x00	; 0
     8f4:	0e 94 5a 07 	call	0xeb4	; 0xeb4 <_ZN6CTimer8add_taskEPFvvEjb>
     8f8:	83 e8       	ldi	r24, 0x83	; 131
     8fa:	90 e0       	ldi	r25, 0x00	; 0
     8fc:	9f 93       	push	r25
     8fe:	8f 93       	push	r24
     900:	83 ee       	ldi	r24, 0xE3	; 227
     902:	90 e0       	ldi	r25, 0x00	; 0
     904:	9f 93       	push	r25
     906:	8f 93       	push	r24
     908:	0e 94 4c 09 	call	0x1298	; 0x1298 <_ZN9CTerminal6printfEPKcz>
     90c:	0f 90       	pop	r0
     90e:	0f 90       	pop	r0
     910:	0f 90       	pop	r0
     912:	0f 90       	pop	r0
     914:	b3 9b       	sbis	0x16, 3	; 22
     916:	04 c0       	rjmp	.+8      	; 0x920 <main+0x42>
     918:	b2 9b       	sbis	0x16, 2	; 22
     91a:	02 c0       	rjmp	.+4      	; 0x920 <main+0x42>
     91c:	00 00       	nop
     91e:	fa cf       	rjmp	.-12     	; 0x914 <main+0x36>
     920:	b3 99       	sbic	0x16, 3	; 22
     922:	03 c0       	rjmp	.+6      	; 0x92a <main+0x4c>
     924:	81 e0       	ldi	r24, 0x01	; 1
     926:	0e 94 6a 03 	call	0x6d4	; 0x6d4 <_Z12gyro_exampleb>
     92a:	80 e0       	ldi	r24, 0x00	; 0
     92c:	fc cf       	rjmp	.-8      	; 0x926 <main+0x48>

0000092e <_GLOBAL__sub_I_led1>:
     92e:	d5 9a       	sbi	0x1a, 5	; 26
     930:	d6 9a       	sbi	0x1a, 6	; 26
     932:	08 95       	ret

00000934 <_ZN5CGyroC1Ev>:
     934:	08 95       	ret

00000936 <_ZN5CGyro4readEb>:
     936:	4f 92       	push	r4
     938:	5f 92       	push	r5
     93a:	6f 92       	push	r6
     93c:	7f 92       	push	r7
     93e:	8f 92       	push	r8
     940:	9f 92       	push	r9
     942:	af 92       	push	r10
     944:	bf 92       	push	r11
     946:	cf 92       	push	r12
     948:	df 92       	push	r13
     94a:	ef 92       	push	r14
     94c:	ff 92       	push	r15
     94e:	0f 93       	push	r16
     950:	1f 93       	push	r17
     952:	cf 93       	push	r28
     954:	df 93       	push	r29
     956:	ec 01       	movw	r28, r24
     958:	f6 2e       	mov	r15, r22
     95a:	88 ad       	ldd	r24, Y+56	; 0x38
     95c:	99 ad       	ldd	r25, Y+57	; 0x39
     95e:	dc 01       	movw	r26, r24
     960:	ed 91       	ld	r30, X+
     962:	fc 91       	ld	r31, X
     964:	06 84       	ldd	r0, Z+14	; 0x0e
     966:	f7 85       	ldd	r31, Z+15	; 0x0f
     968:	e0 2d       	mov	r30, r0
     96a:	4f e0       	ldi	r20, 0x0F	; 15
     96c:	66 ed       	ldi	r22, 0xD6	; 214
     96e:	09 95       	icall
     970:	88 36       	cpi	r24, 0x68	; 104
     972:	49 f4       	brne	.+18     	; 0x986 <_ZN5CGyro4readEb+0x50>
     974:	81 e0       	ldi	r24, 0x01	; 1
     976:	90 e0       	ldi	r25, 0x00	; 0
     978:	a0 e0       	ldi	r26, 0x00	; 0
     97a:	b0 e0       	ldi	r27, 0x00	; 0
     97c:	88 ab       	std	Y+48, r24	; 0x30
     97e:	99 ab       	std	Y+49, r25	; 0x31
     980:	aa ab       	std	Y+50, r26	; 0x32
     982:	bb ab       	std	Y+51, r27	; 0x33
     984:	04 c0       	rjmp	.+8      	; 0x98e <_ZN5CGyro4readEb+0x58>
     986:	18 aa       	std	Y+48, r1	; 0x30
     988:	19 aa       	std	Y+49, r1	; 0x31
     98a:	1a aa       	std	Y+50, r1	; 0x32
     98c:	1b aa       	std	Y+51, r1	; 0x33
     98e:	88 ad       	ldd	r24, Y+56	; 0x38
     990:	99 ad       	ldd	r25, Y+57	; 0x39
     992:	dc 01       	movw	r26, r24
     994:	ed 91       	ld	r30, X+
     996:	fc 91       	ld	r31, X
     998:	06 84       	ldd	r0, Z+14	; 0x0e
     99a:	f7 85       	ldd	r31, Z+15	; 0x0f
     99c:	e0 2d       	mov	r30, r0
     99e:	49 e1       	ldi	r20, 0x19	; 25
     9a0:	66 ed       	ldi	r22, 0xD6	; 214
     9a2:	09 95       	icall
     9a4:	a8 2e       	mov	r10, r24
     9a6:	b1 2c       	mov	r11, r1
     9a8:	ba 2c       	mov	r11, r10
     9aa:	aa 24       	eor	r10, r10
     9ac:	88 ad       	ldd	r24, Y+56	; 0x38
     9ae:	99 ad       	ldd	r25, Y+57	; 0x39
     9b0:	dc 01       	movw	r26, r24
     9b2:	ed 91       	ld	r30, X+
     9b4:	fc 91       	ld	r31, X
     9b6:	06 84       	ldd	r0, Z+14	; 0x0e
     9b8:	f7 85       	ldd	r31, Z+15	; 0x0f
     9ba:	e0 2d       	mov	r30, r0
     9bc:	48 e1       	ldi	r20, 0x18	; 24
     9be:	66 ed       	ldi	r22, 0xD6	; 214
     9c0:	09 95       	icall
     9c2:	a8 2a       	or	r10, r24
     9c4:	88 ad       	ldd	r24, Y+56	; 0x38
     9c6:	99 ad       	ldd	r25, Y+57	; 0x39
     9c8:	dc 01       	movw	r26, r24
     9ca:	ed 91       	ld	r30, X+
     9cc:	fc 91       	ld	r31, X
     9ce:	06 84       	ldd	r0, Z+14	; 0x0e
     9d0:	f7 85       	ldd	r31, Z+15	; 0x0f
     9d2:	e0 2d       	mov	r30, r0
     9d4:	4b e1       	ldi	r20, 0x1B	; 27
     9d6:	66 ed       	ldi	r22, 0xD6	; 214
     9d8:	09 95       	icall
     9da:	08 2f       	mov	r16, r24
     9dc:	10 e0       	ldi	r17, 0x00	; 0
     9de:	10 2f       	mov	r17, r16
     9e0:	00 27       	eor	r16, r16
     9e2:	88 ad       	ldd	r24, Y+56	; 0x38
     9e4:	99 ad       	ldd	r25, Y+57	; 0x39
     9e6:	dc 01       	movw	r26, r24
     9e8:	ed 91       	ld	r30, X+
     9ea:	fc 91       	ld	r31, X
     9ec:	06 84       	ldd	r0, Z+14	; 0x0e
     9ee:	f7 85       	ldd	r31, Z+15	; 0x0f
     9f0:	e0 2d       	mov	r30, r0
     9f2:	4a e1       	ldi	r20, 0x1A	; 26
     9f4:	66 ed       	ldi	r22, 0xD6	; 214
     9f6:	09 95       	icall
     9f8:	08 2b       	or	r16, r24
     9fa:	88 ad       	ldd	r24, Y+56	; 0x38
     9fc:	99 ad       	ldd	r25, Y+57	; 0x39
     9fe:	dc 01       	movw	r26, r24
     a00:	ed 91       	ld	r30, X+
     a02:	fc 91       	ld	r31, X
     a04:	06 84       	ldd	r0, Z+14	; 0x0e
     a06:	f7 85       	ldd	r31, Z+15	; 0x0f
     a08:	e0 2d       	mov	r30, r0
     a0a:	4d e1       	ldi	r20, 0x1D	; 29
     a0c:	66 ed       	ldi	r22, 0xD6	; 214
     a0e:	09 95       	icall
     a10:	c8 2e       	mov	r12, r24
     a12:	d1 2c       	mov	r13, r1
     a14:	dc 2c       	mov	r13, r12
     a16:	cc 24       	eor	r12, r12
     a18:	88 ad       	ldd	r24, Y+56	; 0x38
     a1a:	99 ad       	ldd	r25, Y+57	; 0x39
     a1c:	dc 01       	movw	r26, r24
     a1e:	ed 91       	ld	r30, X+
     a20:	fc 91       	ld	r31, X
     a22:	06 84       	ldd	r0, Z+14	; 0x0e
     a24:	f7 85       	ldd	r31, Z+15	; 0x0f
     a26:	e0 2d       	mov	r30, r0
     a28:	4c e1       	ldi	r20, 0x1C	; 28
     a2a:	66 ed       	ldi	r22, 0xD6	; 214
     a2c:	09 95       	icall
     a2e:	c8 2a       	or	r12, r24
     a30:	c5 01       	movw	r24, r10
     a32:	bb 0c       	add	r11, r11
     a34:	aa 0b       	sbc	r26, r26
     a36:	bb 0b       	sbc	r27, r27
     a38:	01 2e       	mov	r0, r17
     a3a:	00 0c       	add	r0, r0
     a3c:	22 0b       	sbc	r18, r18
     a3e:	33 0b       	sbc	r19, r19
     a40:	46 01       	movw	r8, r12
     a42:	dd 0c       	add	r13, r13
     a44:	aa 08       	sbc	r10, r10
     a46:	bb 08       	sbc	r11, r11
     a48:	ff 20       	and	r15, r15
     a4a:	21 f1       	breq	.+72     	; 0xa94 <_ZN5CGyro4readEb+0x15e>
     a4c:	cc a0       	ldd	r12, Y+36	; 0x24
     a4e:	dd a0       	ldd	r13, Y+37	; 0x25
     a50:	ee a0       	ldd	r14, Y+38	; 0x26
     a52:	ff a0       	ldd	r15, Y+39	; 0x27
     a54:	c8 0e       	add	r12, r24
     a56:	d9 1e       	adc	r13, r25
     a58:	ea 1e       	adc	r14, r26
     a5a:	fb 1e       	adc	r15, r27
     a5c:	cc a2       	std	Y+36, r12	; 0x24
     a5e:	dd a2       	std	Y+37, r13	; 0x25
     a60:	ee a2       	std	Y+38, r14	; 0x26
     a62:	ff a2       	std	Y+39, r15	; 0x27
     a64:	c8 a4       	ldd	r12, Y+40	; 0x28
     a66:	d9 a4       	ldd	r13, Y+41	; 0x29
     a68:	ea a4       	ldd	r14, Y+42	; 0x2a
     a6a:	fb a4       	ldd	r15, Y+43	; 0x2b
     a6c:	c0 0e       	add	r12, r16
     a6e:	d1 1e       	adc	r13, r17
     a70:	e2 1e       	adc	r14, r18
     a72:	f3 1e       	adc	r15, r19
     a74:	c8 a6       	std	Y+40, r12	; 0x28
     a76:	d9 a6       	std	Y+41, r13	; 0x29
     a78:	ea a6       	std	Y+42, r14	; 0x2a
     a7a:	fb a6       	std	Y+43, r15	; 0x2b
     a7c:	cc a4       	ldd	r12, Y+44	; 0x2c
     a7e:	dd a4       	ldd	r13, Y+45	; 0x2d
     a80:	ee a4       	ldd	r14, Y+46	; 0x2e
     a82:	ff a4       	ldd	r15, Y+47	; 0x2f
     a84:	c8 0c       	add	r12, r8
     a86:	d9 1c       	adc	r13, r9
     a88:	ea 1c       	adc	r14, r10
     a8a:	fb 1c       	adc	r15, r11
     a8c:	cc a6       	std	Y+44, r12	; 0x2c
     a8e:	dd a6       	std	Y+45, r13	; 0x2d
     a90:	ee a6       	std	Y+46, r14	; 0x2e
     a92:	ff a6       	std	Y+47, r15	; 0x2f
     a94:	cc a0       	ldd	r12, Y+36	; 0x24
     a96:	dd a0       	ldd	r13, Y+37	; 0x25
     a98:	ee a0       	ldd	r14, Y+38	; 0x26
     a9a:	ff a0       	ldd	r15, Y+39	; 0x27
     a9c:	bc 01       	movw	r22, r24
     a9e:	cd 01       	movw	r24, r26
     aa0:	6c 19       	sub	r22, r12
     aa2:	7d 09       	sbc	r23, r13
     aa4:	8e 09       	sbc	r24, r14
     aa6:	9f 09       	sbc	r25, r15
     aa8:	6c 87       	std	Y+12, r22	; 0x0c
     aaa:	7d 87       	std	Y+13, r23	; 0x0d
     aac:	8e 87       	std	Y+14, r24	; 0x0e
     aae:	9f 87       	std	Y+15, r25	; 0x0f
     ab0:	c8 a4       	ldd	r12, Y+40	; 0x28
     ab2:	d9 a4       	ldd	r13, Y+41	; 0x29
     ab4:	ea a4       	ldd	r14, Y+42	; 0x2a
     ab6:	fb a4       	ldd	r15, Y+43	; 0x2b
     ab8:	28 01       	movw	r4, r16
     aba:	39 01       	movw	r6, r18
     abc:	4c 18       	sub	r4, r12
     abe:	5d 08       	sbc	r5, r13
     ac0:	6e 08       	sbc	r6, r14
     ac2:	7f 08       	sbc	r7, r15
     ac4:	48 8a       	std	Y+16, r4	; 0x10
     ac6:	59 8a       	std	Y+17, r5	; 0x11
     ac8:	6a 8a       	std	Y+18, r6	; 0x12
     aca:	7b 8a       	std	Y+19, r7	; 0x13
     acc:	0c a5       	ldd	r16, Y+44	; 0x2c
     ace:	1d a5       	ldd	r17, Y+45	; 0x2d
     ad0:	2e a5       	ldd	r18, Y+46	; 0x2e
     ad2:	3f a5       	ldd	r19, Y+47	; 0x2f
     ad4:	75 01       	movw	r14, r10
     ad6:	64 01       	movw	r12, r8
     ad8:	c0 1a       	sub	r12, r16
     ada:	d1 0a       	sbc	r13, r17
     adc:	e2 0a       	sbc	r14, r18
     ade:	f3 0a       	sbc	r15, r19
     ae0:	cc 8a       	std	Y+20, r12	; 0x14
     ae2:	dd 8a       	std	Y+21, r13	; 0x15
     ae4:	ee 8a       	std	Y+22, r14	; 0x16
     ae6:	ff 8a       	std	Y+23, r15	; 0x17
     ae8:	22 e3       	ldi	r18, 0x32	; 50
     aea:	82 2e       	mov	r8, r18
     aec:	91 2c       	mov	r9, r1
     aee:	a1 2c       	mov	r10, r1
     af0:	b1 2c       	mov	r11, r1
     af2:	a5 01       	movw	r20, r10
     af4:	94 01       	movw	r18, r8
     af6:	0e 94 fa 09 	call	0x13f4	; 0x13f4 <__divmodsi4>
     afa:	88 8d       	ldd	r24, Y+24	; 0x18
     afc:	99 8d       	ldd	r25, Y+25	; 0x19
     afe:	aa 8d       	ldd	r26, Y+26	; 0x1a
     b00:	bb 8d       	ldd	r27, Y+27	; 0x1b
     b02:	82 0f       	add	r24, r18
     b04:	93 1f       	adc	r25, r19
     b06:	a4 1f       	adc	r26, r20
     b08:	b5 1f       	adc	r27, r21
     b0a:	88 8f       	std	Y+24, r24	; 0x18
     b0c:	99 8f       	std	Y+25, r25	; 0x19
     b0e:	aa 8f       	std	Y+26, r26	; 0x1a
     b10:	bb 8f       	std	Y+27, r27	; 0x1b
     b12:	c3 01       	movw	r24, r6
     b14:	b2 01       	movw	r22, r4
     b16:	a5 01       	movw	r20, r10
     b18:	94 01       	movw	r18, r8
     b1a:	0e 94 fa 09 	call	0x13f4	; 0x13f4 <__divmodsi4>
     b1e:	8c 8d       	ldd	r24, Y+28	; 0x1c
     b20:	9d 8d       	ldd	r25, Y+29	; 0x1d
     b22:	ae 8d       	ldd	r26, Y+30	; 0x1e
     b24:	bf 8d       	ldd	r27, Y+31	; 0x1f
     b26:	82 0f       	add	r24, r18
     b28:	93 1f       	adc	r25, r19
     b2a:	a4 1f       	adc	r26, r20
     b2c:	b5 1f       	adc	r27, r21
     b2e:	8c 8f       	std	Y+28, r24	; 0x1c
     b30:	9d 8f       	std	Y+29, r25	; 0x1d
     b32:	ae 8f       	std	Y+30, r26	; 0x1e
     b34:	bf 8f       	std	Y+31, r27	; 0x1f
     b36:	c7 01       	movw	r24, r14
     b38:	b6 01       	movw	r22, r12
     b3a:	a5 01       	movw	r20, r10
     b3c:	94 01       	movw	r18, r8
     b3e:	0e 94 fa 09 	call	0x13f4	; 0x13f4 <__divmodsi4>
     b42:	88 a1       	ldd	r24, Y+32	; 0x20
     b44:	99 a1       	ldd	r25, Y+33	; 0x21
     b46:	aa a1       	ldd	r26, Y+34	; 0x22
     b48:	bb a1       	ldd	r27, Y+35	; 0x23
     b4a:	82 0f       	add	r24, r18
     b4c:	93 1f       	adc	r25, r19
     b4e:	a4 1f       	adc	r26, r20
     b50:	b5 1f       	adc	r27, r21
     b52:	88 a3       	std	Y+32, r24	; 0x20
     b54:	99 a3       	std	Y+33, r25	; 0x21
     b56:	aa a3       	std	Y+34, r26	; 0x22
     b58:	bb a3       	std	Y+35, r27	; 0x23
     b5a:	88 ad       	ldd	r24, Y+56	; 0x38
     b5c:	99 ad       	ldd	r25, Y+57	; 0x39
     b5e:	dc 01       	movw	r26, r24
     b60:	ed 91       	ld	r30, X+
     b62:	fc 91       	ld	r31, X
     b64:	06 84       	ldd	r0, Z+14	; 0x0e
     b66:	f7 85       	ldd	r31, Z+15	; 0x0f
     b68:	e0 2d       	mov	r30, r0
     b6a:	49 e2       	ldi	r20, 0x29	; 41
     b6c:	66 ed       	ldi	r22, 0xD6	; 214
     b6e:	09 95       	icall
     b70:	08 2f       	mov	r16, r24
     b72:	10 e0       	ldi	r17, 0x00	; 0
     b74:	10 2f       	mov	r17, r16
     b76:	00 27       	eor	r16, r16
     b78:	88 ad       	ldd	r24, Y+56	; 0x38
     b7a:	99 ad       	ldd	r25, Y+57	; 0x39
     b7c:	dc 01       	movw	r26, r24
     b7e:	ed 91       	ld	r30, X+
     b80:	fc 91       	ld	r31, X
     b82:	06 84       	ldd	r0, Z+14	; 0x0e
     b84:	f7 85       	ldd	r31, Z+15	; 0x0f
     b86:	e0 2d       	mov	r30, r0
     b88:	48 e2       	ldi	r20, 0x28	; 40
     b8a:	66 ed       	ldi	r22, 0xD6	; 214
     b8c:	09 95       	icall
     b8e:	68 01       	movw	r12, r16
     b90:	c8 2a       	or	r12, r24
     b92:	88 ad       	ldd	r24, Y+56	; 0x38
     b94:	99 ad       	ldd	r25, Y+57	; 0x39
     b96:	dc 01       	movw	r26, r24
     b98:	ed 91       	ld	r30, X+
     b9a:	fc 91       	ld	r31, X
     b9c:	06 84       	ldd	r0, Z+14	; 0x0e
     b9e:	f7 85       	ldd	r31, Z+15	; 0x0f
     ba0:	e0 2d       	mov	r30, r0
     ba2:	4b e2       	ldi	r20, 0x2B	; 43
     ba4:	66 ed       	ldi	r22, 0xD6	; 214
     ba6:	09 95       	icall
     ba8:	08 2f       	mov	r16, r24
     baa:	10 e0       	ldi	r17, 0x00	; 0
     bac:	10 2f       	mov	r17, r16
     bae:	00 27       	eor	r16, r16
     bb0:	88 ad       	ldd	r24, Y+56	; 0x38
     bb2:	99 ad       	ldd	r25, Y+57	; 0x39
     bb4:	dc 01       	movw	r26, r24
     bb6:	ed 91       	ld	r30, X+
     bb8:	fc 91       	ld	r31, X
     bba:	06 84       	ldd	r0, Z+14	; 0x0e
     bbc:	f7 85       	ldd	r31, Z+15	; 0x0f
     bbe:	e0 2d       	mov	r30, r0
     bc0:	4a e2       	ldi	r20, 0x2A	; 42
     bc2:	66 ed       	ldi	r22, 0xD6	; 214
     bc4:	09 95       	icall
     bc6:	08 2b       	or	r16, r24
     bc8:	88 ad       	ldd	r24, Y+56	; 0x38
     bca:	99 ad       	ldd	r25, Y+57	; 0x39
     bcc:	dc 01       	movw	r26, r24
     bce:	ed 91       	ld	r30, X+
     bd0:	fc 91       	ld	r31, X
     bd2:	06 84       	ldd	r0, Z+14	; 0x0e
     bd4:	f7 85       	ldd	r31, Z+15	; 0x0f
     bd6:	e0 2d       	mov	r30, r0
     bd8:	4d e2       	ldi	r20, 0x2D	; 45
     bda:	66 ed       	ldi	r22, 0xD6	; 214
     bdc:	09 95       	icall
     bde:	90 e0       	ldi	r25, 0x00	; 0
     be0:	f8 2e       	mov	r15, r24
     be2:	ee 24       	eor	r14, r14
     be4:	88 ad       	ldd	r24, Y+56	; 0x38
     be6:	99 ad       	ldd	r25, Y+57	; 0x39
     be8:	dc 01       	movw	r26, r24
     bea:	ed 91       	ld	r30, X+
     bec:	fc 91       	ld	r31, X
     bee:	06 84       	ldd	r0, Z+14	; 0x0e
     bf0:	f7 85       	ldd	r31, Z+15	; 0x0f
     bf2:	e0 2d       	mov	r30, r0
     bf4:	4c e2       	ldi	r20, 0x2C	; 44
     bf6:	66 ed       	ldi	r22, 0xD6	; 214
     bf8:	09 95       	icall
     bfa:	a6 01       	movw	r20, r12
     bfc:	dd 0c       	add	r13, r13
     bfe:	66 0b       	sbc	r22, r22
     c00:	77 0b       	sbc	r23, r23
     c02:	48 83       	st	Y, r20
     c04:	59 83       	std	Y+1, r21	; 0x01
     c06:	6a 83       	std	Y+2, r22	; 0x02
     c08:	7b 83       	std	Y+3, r23	; 0x03
     c0a:	01 2e       	mov	r0, r17
     c0c:	00 0c       	add	r0, r0
     c0e:	22 0b       	sbc	r18, r18
     c10:	33 0b       	sbc	r19, r19
     c12:	0c 83       	std	Y+4, r16	; 0x04
     c14:	1d 83       	std	Y+5, r17	; 0x05
     c16:	2e 83       	std	Y+6, r18	; 0x06
     c18:	3f 83       	std	Y+7, r19	; 0x07
     c1a:	97 01       	movw	r18, r14
     c1c:	28 2b       	or	r18, r24
     c1e:	c9 01       	movw	r24, r18
     c20:	09 2e       	mov	r0, r25
     c22:	00 0c       	add	r0, r0
     c24:	aa 0b       	sbc	r26, r26
     c26:	bb 0b       	sbc	r27, r27
     c28:	88 87       	std	Y+8, r24	; 0x08
     c2a:	99 87       	std	Y+9, r25	; 0x09
     c2c:	aa 87       	std	Y+10, r26	; 0x0a
     c2e:	bb 87       	std	Y+11, r27	; 0x0b
     c30:	df 91       	pop	r29
     c32:	cf 91       	pop	r28
     c34:	1f 91       	pop	r17
     c36:	0f 91       	pop	r16
     c38:	ff 90       	pop	r15
     c3a:	ef 90       	pop	r14
     c3c:	df 90       	pop	r13
     c3e:	cf 90       	pop	r12
     c40:	bf 90       	pop	r11
     c42:	af 90       	pop	r10
     c44:	9f 90       	pop	r9
     c46:	8f 90       	pop	r8
     c48:	7f 90       	pop	r7
     c4a:	6f 90       	pop	r6
     c4c:	5f 90       	pop	r5
     c4e:	4f 90       	pop	r4
     c50:	08 95       	ret

00000c52 <_ZN5CGyro11delay_loopsEm>:
     c52:	41 50       	subi	r20, 0x01	; 1
     c54:	51 09       	sbc	r21, r1
     c56:	61 09       	sbc	r22, r1
     c58:	71 09       	sbc	r23, r1
     c5a:	10 f0       	brcs	.+4      	; 0xc60 <_ZN5CGyro11delay_loopsEm+0xe>
     c5c:	00 00       	nop
     c5e:	f9 cf       	rjmp	.-14     	; 0xc52 <_ZN5CGyro11delay_loopsEm>
     c60:	08 95       	ret

00000c62 <_ZN5CGyro4initEP14CI2C_Interface>:
     c62:	cf 92       	push	r12
     c64:	df 92       	push	r13
     c66:	ef 92       	push	r14
     c68:	ff 92       	push	r15
     c6a:	cf 93       	push	r28
     c6c:	df 93       	push	r29
     c6e:	ec 01       	movw	r28, r24
     c70:	79 af       	std	Y+57, r23	; 0x39
     c72:	68 af       	std	Y+56, r22	; 0x38
     c74:	1c 86       	std	Y+12, r1	; 0x0c
     c76:	1d 86       	std	Y+13, r1	; 0x0d
     c78:	1e 86       	std	Y+14, r1	; 0x0e
     c7a:	1f 86       	std	Y+15, r1	; 0x0f
     c7c:	18 8a       	std	Y+16, r1	; 0x10
     c7e:	19 8a       	std	Y+17, r1	; 0x11
     c80:	1a 8a       	std	Y+18, r1	; 0x12
     c82:	1b 8a       	std	Y+19, r1	; 0x13
     c84:	1c 8a       	std	Y+20, r1	; 0x14
     c86:	1d 8a       	std	Y+21, r1	; 0x15
     c88:	1e 8a       	std	Y+22, r1	; 0x16
     c8a:	1f 8a       	std	Y+23, r1	; 0x17
     c8c:	1c a2       	std	Y+36, r1	; 0x24
     c8e:	1d a2       	std	Y+37, r1	; 0x25
     c90:	1e a2       	std	Y+38, r1	; 0x26
     c92:	1f a2       	std	Y+39, r1	; 0x27
     c94:	18 a6       	std	Y+40, r1	; 0x28
     c96:	19 a6       	std	Y+41, r1	; 0x29
     c98:	1a a6       	std	Y+42, r1	; 0x2a
     c9a:	1b a6       	std	Y+43, r1	; 0x2b
     c9c:	1c a6       	std	Y+44, r1	; 0x2c
     c9e:	1d a6       	std	Y+45, r1	; 0x2d
     ca0:	1e a6       	std	Y+46, r1	; 0x2e
     ca2:	1f a6       	std	Y+47, r1	; 0x2f
     ca4:	18 8e       	std	Y+24, r1	; 0x18
     ca6:	19 8e       	std	Y+25, r1	; 0x19
     ca8:	1a 8e       	std	Y+26, r1	; 0x1a
     caa:	1b 8e       	std	Y+27, r1	; 0x1b
     cac:	1c 8e       	std	Y+28, r1	; 0x1c
     cae:	1d 8e       	std	Y+29, r1	; 0x1d
     cb0:	1e 8e       	std	Y+30, r1	; 0x1e
     cb2:	1f 8e       	std	Y+31, r1	; 0x1f
     cb4:	18 a2       	std	Y+32, r1	; 0x20
     cb6:	19 a2       	std	Y+33, r1	; 0x21
     cb8:	1a a2       	std	Y+34, r1	; 0x22
     cba:	1b a2       	std	Y+35, r1	; 0x23
     cbc:	40 e1       	ldi	r20, 0x10	; 16
     cbe:	57 e2       	ldi	r21, 0x27	; 39
     cc0:	60 e0       	ldi	r22, 0x00	; 0
     cc2:	70 e0       	ldi	r23, 0x00	; 0
     cc4:	0e 94 29 06 	call	0xc52	; 0xc52 <_ZN5CGyro11delay_loopsEm>
     cc8:	18 aa       	std	Y+48, r1	; 0x30
     cca:	19 aa       	std	Y+49, r1	; 0x31
     ccc:	1a aa       	std	Y+50, r1	; 0x32
     cce:	1b aa       	std	Y+51, r1	; 0x33
     cd0:	88 ad       	ldd	r24, Y+56	; 0x38
     cd2:	99 ad       	ldd	r25, Y+57	; 0x39
     cd4:	dc 01       	movw	r26, r24
     cd6:	ed 91       	ld	r30, X+
     cd8:	fc 91       	ld	r31, X
     cda:	06 84       	ldd	r0, Z+14	; 0x0e
     cdc:	f7 85       	ldd	r31, Z+15	; 0x0f
     cde:	e0 2d       	mov	r30, r0
     ce0:	4f e0       	ldi	r20, 0x0F	; 15
     ce2:	66 ed       	ldi	r22, 0xD6	; 214
     ce4:	09 95       	icall
     ce6:	88 36       	cpi	r24, 0x68	; 104
     ce8:	41 f4       	brne	.+16     	; 0xcfa <_ZN5CGyro4initEP14CI2C_Interface+0x98>
     cea:	81 e0       	ldi	r24, 0x01	; 1
     cec:	90 e0       	ldi	r25, 0x00	; 0
     cee:	a0 e0       	ldi	r26, 0x00	; 0
     cf0:	b0 e0       	ldi	r27, 0x00	; 0
     cf2:	88 ab       	std	Y+48, r24	; 0x30
     cf4:	99 ab       	std	Y+49, r25	; 0x31
     cf6:	aa ab       	std	Y+50, r26	; 0x32
     cf8:	bb ab       	std	Y+51, r27	; 0x33
     cfa:	88 ad       	ldd	r24, Y+56	; 0x38
     cfc:	99 ad       	ldd	r25, Y+57	; 0x39
     cfe:	dc 01       	movw	r26, r24
     d00:	ed 91       	ld	r30, X+
     d02:	fc 91       	ld	r31, X
     d04:	00 84       	ldd	r0, Z+8	; 0x08
     d06:	f1 85       	ldd	r31, Z+9	; 0x09
     d08:	e0 2d       	mov	r30, r0
     d0a:	28 ea       	ldi	r18, 0xA8	; 168
     d0c:	40 e1       	ldi	r20, 0x10	; 16
     d0e:	66 ed       	ldi	r22, 0xD6	; 214
     d10:	09 95       	icall
     d12:	88 ad       	ldd	r24, Y+56	; 0x38
     d14:	99 ad       	ldd	r25, Y+57	; 0x39
     d16:	dc 01       	movw	r26, r24
     d18:	ed 91       	ld	r30, X+
     d1a:	fc 91       	ld	r31, X
     d1c:	00 84       	ldd	r0, Z+8	; 0x08
     d1e:	f1 85       	ldd	r31, Z+9	; 0x09
     d20:	e0 2d       	mov	r30, r0
     d22:	28 e3       	ldi	r18, 0x38	; 56
     d24:	4e e1       	ldi	r20, 0x1E	; 30
     d26:	66 ed       	ldi	r22, 0xD6	; 214
     d28:	09 95       	icall
     d2a:	88 ad       	ldd	r24, Y+56	; 0x38
     d2c:	99 ad       	ldd	r25, Y+57	; 0x39
     d2e:	dc 01       	movw	r26, r24
     d30:	ed 91       	ld	r30, X+
     d32:	fc 91       	ld	r31, X
     d34:	00 84       	ldd	r0, Z+8	; 0x08
     d36:	f1 85       	ldd	r31, Z+9	; 0x09
     d38:	e0 2d       	mov	r30, r0
     d3a:	20 e0       	ldi	r18, 0x00	; 0
     d3c:	4e e2       	ldi	r20, 0x2E	; 46
     d3e:	66 ed       	ldi	r22, 0xD6	; 214
     d40:	09 95       	icall
     d42:	88 ad       	ldd	r24, Y+56	; 0x38
     d44:	99 ad       	ldd	r25, Y+57	; 0x39
     d46:	dc 01       	movw	r26, r24
     d48:	ed 91       	ld	r30, X+
     d4a:	fc 91       	ld	r31, X
     d4c:	00 84       	ldd	r0, Z+8	; 0x08
     d4e:	f1 85       	ldd	r31, Z+9	; 0x09
     d50:	e0 2d       	mov	r30, r0
     d52:	20 e0       	ldi	r18, 0x00	; 0
     d54:	42 e1       	ldi	r20, 0x12	; 18
     d56:	66 ed       	ldi	r22, 0xD6	; 214
     d58:	09 95       	icall
     d5a:	88 ad       	ldd	r24, Y+56	; 0x38
     d5c:	99 ad       	ldd	r25, Y+57	; 0x39
     d5e:	dc 01       	movw	r26, r24
     d60:	ed 91       	ld	r30, X+
     d62:	fc 91       	ld	r31, X
     d64:	00 84       	ldd	r0, Z+8	; 0x08
     d66:	f1 85       	ldd	r31, Z+9	; 0x09
     d68:	e0 2d       	mov	r30, r0
     d6a:	20 e6       	ldi	r18, 0x60	; 96
     d6c:	40 e2       	ldi	r20, 0x20	; 32
     d6e:	66 ed       	ldi	r22, 0xD6	; 214
     d70:	09 95       	icall
     d72:	88 ad       	ldd	r24, Y+56	; 0x38
     d74:	99 ad       	ldd	r25, Y+57	; 0x39
     d76:	dc 01       	movw	r26, r24
     d78:	ed 91       	ld	r30, X+
     d7a:	fc 91       	ld	r31, X
     d7c:	00 84       	ldd	r0, Z+8	; 0x08
     d7e:	f1 85       	ldd	r31, Z+9	; 0x09
     d80:	e0 2d       	mov	r30, r0
     d82:	28 e3       	ldi	r18, 0x38	; 56
     d84:	4f e1       	ldi	r20, 0x1F	; 31
     d86:	66 ed       	ldi	r22, 0xD6	; 214
     d88:	09 95       	icall
     d8a:	40 e1       	ldi	r20, 0x10	; 16
     d8c:	57 e2       	ldi	r21, 0x27	; 39
     d8e:	60 e0       	ldi	r22, 0x00	; 0
     d90:	70 e0       	ldi	r23, 0x00	; 0
     d92:	ce 01       	movw	r24, r28
     d94:	0e 94 29 06 	call	0xc52	; 0xc52 <_ZN5CGyro11delay_loopsEm>
     d98:	60 e0       	ldi	r22, 0x00	; 0
     d9a:	ce 01       	movw	r24, r28
     d9c:	0e 94 9b 04 	call	0x936	; 0x936 <_ZN5CGyro4readEb>
     da0:	1c aa       	std	Y+52, r1	; 0x34
     da2:	1d aa       	std	Y+53, r1	; 0x35
     da4:	1e aa       	std	Y+54, r1	; 0x36
     da6:	1f aa       	std	Y+55, r1	; 0x37
     da8:	e1 2c       	mov	r14, r1
     daa:	f1 2c       	mov	r15, r1
     dac:	61 e0       	ldi	r22, 0x01	; 1
     dae:	ce 01       	movw	r24, r28
     db0:	0e 94 9b 04 	call	0x936	; 0x936 <_ZN5CGyro4readEb>
     db4:	48 ee       	ldi	r20, 0xE8	; 232
     db6:	53 e0       	ldi	r21, 0x03	; 3
     db8:	60 e0       	ldi	r22, 0x00	; 0
     dba:	70 e0       	ldi	r23, 0x00	; 0
     dbc:	ce 01       	movw	r24, r28
     dbe:	0e 94 29 06 	call	0xc52	; 0xc52 <_ZN5CGyro11delay_loopsEm>
     dc2:	bf ef       	ldi	r27, 0xFF	; 255
     dc4:	eb 1a       	sub	r14, r27
     dc6:	fb 0a       	sbc	r15, r27
     dc8:	88 ec       	ldi	r24, 0xC8	; 200
     dca:	e8 16       	cp	r14, r24
     dcc:	f1 04       	cpc	r15, r1
     dce:	71 f7       	brne	.-36     	; 0xdac <_ZN5CGyro4initEP14CI2C_Interface+0x14a>
     dd0:	6c a1       	ldd	r22, Y+36	; 0x24
     dd2:	7d a1       	ldd	r23, Y+37	; 0x25
     dd4:	8e a1       	ldd	r24, Y+38	; 0x26
     dd6:	9f a1       	ldd	r25, Y+39	; 0x27
     dd8:	28 ec       	ldi	r18, 0xC8	; 200
     dda:	c2 2e       	mov	r12, r18
     ddc:	d1 2c       	mov	r13, r1
     dde:	e1 2c       	mov	r14, r1
     de0:	f1 2c       	mov	r15, r1
     de2:	a7 01       	movw	r20, r14
     de4:	96 01       	movw	r18, r12
     de6:	0e 94 fa 09 	call	0x13f4	; 0x13f4 <__divmodsi4>
     dea:	2c a3       	std	Y+36, r18	; 0x24
     dec:	3d a3       	std	Y+37, r19	; 0x25
     dee:	4e a3       	std	Y+38, r20	; 0x26
     df0:	5f a3       	std	Y+39, r21	; 0x27
     df2:	68 a5       	ldd	r22, Y+40	; 0x28
     df4:	79 a5       	ldd	r23, Y+41	; 0x29
     df6:	8a a5       	ldd	r24, Y+42	; 0x2a
     df8:	9b a5       	ldd	r25, Y+43	; 0x2b
     dfa:	a7 01       	movw	r20, r14
     dfc:	96 01       	movw	r18, r12
     dfe:	0e 94 fa 09 	call	0x13f4	; 0x13f4 <__divmodsi4>
     e02:	28 a7       	std	Y+40, r18	; 0x28
     e04:	39 a7       	std	Y+41, r19	; 0x29
     e06:	4a a7       	std	Y+42, r20	; 0x2a
     e08:	5b a7       	std	Y+43, r21	; 0x2b
     e0a:	6c a5       	ldd	r22, Y+44	; 0x2c
     e0c:	7d a5       	ldd	r23, Y+45	; 0x2d
     e0e:	8e a5       	ldd	r24, Y+46	; 0x2e
     e10:	9f a5       	ldd	r25, Y+47	; 0x2f
     e12:	a7 01       	movw	r20, r14
     e14:	96 01       	movw	r18, r12
     e16:	0e 94 fa 09 	call	0x13f4	; 0x13f4 <__divmodsi4>
     e1a:	2c a7       	std	Y+44, r18	; 0x2c
     e1c:	3d a7       	std	Y+45, r19	; 0x2d
     e1e:	4e a7       	std	Y+46, r20	; 0x2e
     e20:	5f a7       	std	Y+47, r21	; 0x2f
     e22:	18 8e       	std	Y+24, r1	; 0x18
     e24:	19 8e       	std	Y+25, r1	; 0x19
     e26:	1a 8e       	std	Y+26, r1	; 0x1a
     e28:	1b 8e       	std	Y+27, r1	; 0x1b
     e2a:	1c 8e       	std	Y+28, r1	; 0x1c
     e2c:	1d 8e       	std	Y+29, r1	; 0x1d
     e2e:	1e 8e       	std	Y+30, r1	; 0x1e
     e30:	1f 8e       	std	Y+31, r1	; 0x1f
     e32:	18 a2       	std	Y+32, r1	; 0x20
     e34:	19 a2       	std	Y+33, r1	; 0x21
     e36:	1a a2       	std	Y+34, r1	; 0x22
     e38:	1b a2       	std	Y+35, r1	; 0x23
     e3a:	18 82       	st	Y, r1
     e3c:	19 82       	std	Y+1, r1	; 0x01
     e3e:	1a 82       	std	Y+2, r1	; 0x02
     e40:	1b 82       	std	Y+3, r1	; 0x03
     e42:	1c 82       	std	Y+4, r1	; 0x04
     e44:	1d 82       	std	Y+5, r1	; 0x05
     e46:	1e 82       	std	Y+6, r1	; 0x06
     e48:	1f 82       	std	Y+7, r1	; 0x07
     e4a:	18 86       	std	Y+8, r1	; 0x08
     e4c:	19 86       	std	Y+9, r1	; 0x09
     e4e:	1a 86       	std	Y+10, r1	; 0x0a
     e50:	1b 86       	std	Y+11, r1	; 0x0b
     e52:	df 91       	pop	r29
     e54:	cf 91       	pop	r28
     e56:	ff 90       	pop	r15
     e58:	ef 90       	pop	r14
     e5a:	df 90       	pop	r13
     e5c:	cf 90       	pop	r12
     e5e:	08 95       	ret

00000e60 <_ZN6CTimerC1Ev>:
     e60:	80 e0       	ldi	r24, 0x00	; 0
     e62:	90 e0       	ldi	r25, 0x00	; 0
     e64:	fc 01       	movw	r30, r24
     e66:	23 e0       	ldi	r18, 0x03	; 3
     e68:	ee 0f       	add	r30, r30
     e6a:	ff 1f       	adc	r31, r31
     e6c:	2a 95       	dec	r18
     e6e:	e1 f7       	brne	.-8      	; 0xe68 <_ZN6CTimerC1Ev+0x8>
     e70:	e2 56       	subi	r30, 0x62	; 98
     e72:	ff 4f       	sbci	r31, 0xFF	; 255
     e74:	11 82       	std	Z+1, r1	; 0x01
     e76:	10 82       	st	Z, r1
     e78:	13 82       	std	Z+3, r1	; 0x03
     e7a:	12 82       	std	Z+2, r1	; 0x02
     e7c:	15 82       	std	Z+5, r1	; 0x05
     e7e:	14 82       	std	Z+4, r1	; 0x04
     e80:	16 82       	std	Z+6, r1	; 0x06
     e82:	17 82       	std	Z+7, r1	; 0x07
     e84:	01 96       	adiw	r24, 0x01	; 1
     e86:	88 30       	cpi	r24, 0x08	; 8
     e88:	91 05       	cpc	r25, r1
     e8a:	61 f7       	brne	.-40     	; 0xe64 <_ZN6CTimerC1Ev+0x4>
     e8c:	10 92 de 00 	sts	0x00DE, r1
     e90:	10 92 df 00 	sts	0x00DF, r1
     e94:	10 92 e0 00 	sts	0x00E0, r1
     e98:	10 92 e1 00 	sts	0x00E1, r1
     e9c:	83 b7       	in	r24, 0x33	; 51
     e9e:	88 60       	ori	r24, 0x08	; 8
     ea0:	83 bf       	out	0x33, r24	; 51
     ea2:	8b e9       	ldi	r24, 0x9B	; 155
     ea4:	8c bf       	out	0x3c, r24	; 60
     ea6:	83 e0       	ldi	r24, 0x03	; 3
     ea8:	83 bf       	out	0x33, r24	; 51
     eaa:	89 b7       	in	r24, 0x39	; 57
     eac:	82 60       	ori	r24, 0x02	; 2
     eae:	89 bf       	out	0x39, r24	; 57
     eb0:	78 94       	sei
     eb2:	08 95       	ret

00000eb4 <_ZN6CTimer8add_taskEPFvvEjb>:
     eb4:	80 e0       	ldi	r24, 0x00	; 0
     eb6:	90 e0       	ldi	r25, 0x00	; 0
     eb8:	ef ef       	ldi	r30, 0xFF	; 255
     eba:	dc 01       	movw	r26, r24
     ebc:	33 e0       	ldi	r19, 0x03	; 3
     ebe:	aa 0f       	add	r26, r26
     ec0:	bb 1f       	adc	r27, r27
     ec2:	3a 95       	dec	r19
     ec4:	e1 f7       	brne	.-8      	; 0xebe <_ZN6CTimer8add_taskEPFvvEjb+0xa>
     ec6:	a2 56       	subi	r26, 0x62	; 98
     ec8:	bf 4f       	sbci	r27, 0xFF	; 255
     eca:	0d 90       	ld	r0, X+
     ecc:	bc 91       	ld	r27, X
     ece:	a0 2d       	mov	r26, r0
     ed0:	ab 2b       	or	r26, r27
     ed2:	09 f4       	brne	.+2      	; 0xed6 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
     ed4:	e8 2f       	mov	r30, r24
     ed6:	01 96       	adiw	r24, 0x01	; 1
     ed8:	88 30       	cpi	r24, 0x08	; 8
     eda:	91 05       	cpc	r25, r1
     edc:	71 f7       	brne	.-36     	; 0xeba <_ZN6CTimer8add_taskEPFvvEjb+0x6>
     ede:	ef 3f       	cpi	r30, 0xFF	; 255
     ee0:	71 f0       	breq	.+28     	; 0xefe <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
     ee2:	88 e0       	ldi	r24, 0x08	; 8
     ee4:	e8 02       	muls	r30, r24
     ee6:	f0 01       	movw	r30, r0
     ee8:	11 24       	eor	r1, r1
     eea:	e2 56       	subi	r30, 0x62	; 98
     eec:	ff 4f       	sbci	r31, 0xFF	; 255
     eee:	71 83       	std	Z+1, r23	; 0x01
     ef0:	60 83       	st	Z, r22
     ef2:	53 83       	std	Z+3, r21	; 0x03
     ef4:	42 83       	std	Z+2, r20	; 0x02
     ef6:	55 83       	std	Z+5, r21	; 0x05
     ef8:	44 83       	std	Z+4, r20	; 0x04
     efa:	16 82       	std	Z+6, r1	; 0x06
     efc:	27 83       	std	Z+7, r18	; 0x07
     efe:	08 95       	ret

00000f00 <_ZN6CTimer8get_timeEv>:
     f00:	cf 93       	push	r28
     f02:	df 93       	push	r29
     f04:	00 d0       	rcall	.+0      	; 0xf06 <_ZN6CTimer8get_timeEv+0x6>
     f06:	00 d0       	rcall	.+0      	; 0xf08 <_ZN6CTimer8get_timeEv+0x8>
     f08:	cd b7       	in	r28, 0x3d	; 61
     f0a:	de b7       	in	r29, 0x3e	; 62
     f0c:	f8 94       	cli
     f0e:	80 91 de 00 	lds	r24, 0x00DE
     f12:	90 91 df 00 	lds	r25, 0x00DF
     f16:	a0 91 e0 00 	lds	r26, 0x00E0
     f1a:	b0 91 e1 00 	lds	r27, 0x00E1
     f1e:	89 83       	std	Y+1, r24	; 0x01
     f20:	9a 83       	std	Y+2, r25	; 0x02
     f22:	ab 83       	std	Y+3, r26	; 0x03
     f24:	bc 83       	std	Y+4, r27	; 0x04
     f26:	78 94       	sei
     f28:	69 81       	ldd	r22, Y+1	; 0x01
     f2a:	7a 81       	ldd	r23, Y+2	; 0x02
     f2c:	8b 81       	ldd	r24, Y+3	; 0x03
     f2e:	9c 81       	ldd	r25, Y+4	; 0x04
     f30:	0f 90       	pop	r0
     f32:	0f 90       	pop	r0
     f34:	0f 90       	pop	r0
     f36:	0f 90       	pop	r0
     f38:	df 91       	pop	r29
     f3a:	cf 91       	pop	r28
     f3c:	08 95       	ret

00000f3e <_ZN6CTimer8delay_msEm>:
     f3e:	cf 92       	push	r12
     f40:	df 92       	push	r13
     f42:	ef 92       	push	r14
     f44:	ff 92       	push	r15
     f46:	0f 93       	push	r16
     f48:	1f 93       	push	r17
     f4a:	cf 93       	push	r28
     f4c:	df 93       	push	r29
     f4e:	00 d0       	rcall	.+0      	; 0xf50 <_ZN6CTimer8delay_msEm+0x12>
     f50:	00 d0       	rcall	.+0      	; 0xf52 <_ZN6CTimer8delay_msEm+0x14>
     f52:	cd b7       	in	r28, 0x3d	; 61
     f54:	de b7       	in	r29, 0x3e	; 62
     f56:	8c 01       	movw	r16, r24
     f58:	6a 01       	movw	r12, r20
     f5a:	7b 01       	movw	r14, r22
     f5c:	0e 94 80 07 	call	0xf00	; 0xf00 <_ZN6CTimer8get_timeEv>
     f60:	c6 0e       	add	r12, r22
     f62:	d7 1e       	adc	r13, r23
     f64:	e8 1e       	adc	r14, r24
     f66:	f9 1e       	adc	r15, r25
     f68:	c9 82       	std	Y+1, r12	; 0x01
     f6a:	da 82       	std	Y+2, r13	; 0x02
     f6c:	eb 82       	std	Y+3, r14	; 0x03
     f6e:	fc 82       	std	Y+4, r15	; 0x04
     f70:	c8 01       	movw	r24, r16
     f72:	0e 94 80 07 	call	0xf00	; 0xf00 <_ZN6CTimer8get_timeEv>
     f76:	c9 80       	ldd	r12, Y+1	; 0x01
     f78:	da 80       	ldd	r13, Y+2	; 0x02
     f7a:	eb 80       	ldd	r14, Y+3	; 0x03
     f7c:	fc 80       	ldd	r15, Y+4	; 0x04
     f7e:	6c 15       	cp	r22, r12
     f80:	7d 05       	cpc	r23, r13
     f82:	8e 05       	cpc	r24, r14
     f84:	9f 05       	cpc	r25, r15
     f86:	10 f4       	brcc	.+4      	; 0xf8c <_ZN6CTimer8delay_msEm+0x4e>
     f88:	00 00       	nop
     f8a:	f2 cf       	rjmp	.-28     	; 0xf70 <_ZN6CTimer8delay_msEm+0x32>
     f8c:	0f 90       	pop	r0
     f8e:	0f 90       	pop	r0
     f90:	0f 90       	pop	r0
     f92:	0f 90       	pop	r0
     f94:	df 91       	pop	r29
     f96:	cf 91       	pop	r28
     f98:	1f 91       	pop	r17
     f9a:	0f 91       	pop	r16
     f9c:	ff 90       	pop	r15
     f9e:	ef 90       	pop	r14
     fa0:	df 90       	pop	r13
     fa2:	cf 90       	pop	r12
     fa4:	08 95       	ret

00000fa6 <__vector_19>:
     fa6:	1f 92       	push	r1
     fa8:	0f 92       	push	r0
     faa:	0f b6       	in	r0, 0x3f	; 63
     fac:	0f 92       	push	r0
     fae:	11 24       	eor	r1, r1
     fb0:	2f 93       	push	r18
     fb2:	3f 93       	push	r19
     fb4:	4f 93       	push	r20
     fb6:	5f 93       	push	r21
     fb8:	6f 93       	push	r22
     fba:	7f 93       	push	r23
     fbc:	8f 93       	push	r24
     fbe:	9f 93       	push	r25
     fc0:	af 93       	push	r26
     fc2:	bf 93       	push	r27
     fc4:	cf 93       	push	r28
     fc6:	df 93       	push	r29
     fc8:	ef 93       	push	r30
     fca:	ff 93       	push	r31
     fcc:	c0 e0       	ldi	r28, 0x00	; 0
     fce:	d0 e0       	ldi	r29, 0x00	; 0
     fd0:	ce 01       	movw	r24, r28
     fd2:	23 e0       	ldi	r18, 0x03	; 3
     fd4:	88 0f       	add	r24, r24
     fd6:	99 1f       	adc	r25, r25
     fd8:	2a 95       	dec	r18
     fda:	e1 f7       	brne	.-8      	; 0xfd4 <__vector_19+0x2e>
     fdc:	fc 01       	movw	r30, r24
     fde:	e2 56       	subi	r30, 0x62	; 98
     fe0:	ff 4f       	sbci	r31, 0xFF	; 255
     fe2:	24 81       	ldd	r18, Z+4	; 0x04
     fe4:	35 81       	ldd	r19, Z+5	; 0x05
     fe6:	23 2b       	or	r18, r19
     fe8:	31 f0       	breq	.+12     	; 0xff6 <__vector_19+0x50>
     fea:	84 81       	ldd	r24, Z+4	; 0x04
     fec:	95 81       	ldd	r25, Z+5	; 0x05
     fee:	01 97       	sbiw	r24, 0x01	; 1
     ff0:	95 83       	std	Z+5, r25	; 0x05
     ff2:	84 83       	std	Z+4, r24	; 0x04
     ff4:	18 c0       	rjmp	.+48     	; 0x1026 <__vector_19+0x80>
     ff6:	22 81       	ldd	r18, Z+2	; 0x02
     ff8:	33 81       	ldd	r19, Z+3	; 0x03
     ffa:	35 83       	std	Z+5, r19	; 0x05
     ffc:	24 83       	std	Z+4, r18	; 0x04
     ffe:	26 81       	ldd	r18, Z+6	; 0x06
    1000:	2f 3f       	cpi	r18, 0xFF	; 255
    1002:	19 f0       	breq	.+6      	; 0x100a <__vector_19+0x64>
    1004:	26 81       	ldd	r18, Z+6	; 0x06
    1006:	2f 5f       	subi	r18, 0xFF	; 255
    1008:	26 83       	std	Z+6, r18	; 0x06
    100a:	fc 01       	movw	r30, r24
    100c:	e2 56       	subi	r30, 0x62	; 98
    100e:	ff 4f       	sbci	r31, 0xFF	; 255
    1010:	87 81       	ldd	r24, Z+7	; 0x07
    1012:	81 11       	cpse	r24, r1
    1014:	08 c0       	rjmp	.+16     	; 0x1026 <__vector_19+0x80>
    1016:	80 81       	ld	r24, Z
    1018:	91 81       	ldd	r25, Z+1	; 0x01
    101a:	89 2b       	or	r24, r25
    101c:	21 f0       	breq	.+8      	; 0x1026 <__vector_19+0x80>
    101e:	01 90       	ld	r0, Z+
    1020:	f0 81       	ld	r31, Z
    1022:	e0 2d       	mov	r30, r0
    1024:	09 95       	icall
    1026:	21 96       	adiw	r28, 0x01	; 1
    1028:	c8 30       	cpi	r28, 0x08	; 8
    102a:	d1 05       	cpc	r29, r1
    102c:	89 f6       	brne	.-94     	; 0xfd0 <__vector_19+0x2a>
    102e:	80 91 de 00 	lds	r24, 0x00DE
    1032:	90 91 df 00 	lds	r25, 0x00DF
    1036:	a0 91 e0 00 	lds	r26, 0x00E0
    103a:	b0 91 e1 00 	lds	r27, 0x00E1
    103e:	01 96       	adiw	r24, 0x01	; 1
    1040:	a1 1d       	adc	r26, r1
    1042:	b1 1d       	adc	r27, r1
    1044:	80 93 de 00 	sts	0x00DE, r24
    1048:	90 93 df 00 	sts	0x00DF, r25
    104c:	a0 93 e0 00 	sts	0x00E0, r26
    1050:	b0 93 e1 00 	sts	0x00E1, r27
    1054:	ff 91       	pop	r31
    1056:	ef 91       	pop	r30
    1058:	df 91       	pop	r29
    105a:	cf 91       	pop	r28
    105c:	bf 91       	pop	r27
    105e:	af 91       	pop	r26
    1060:	9f 91       	pop	r25
    1062:	8f 91       	pop	r24
    1064:	7f 91       	pop	r23
    1066:	6f 91       	pop	r22
    1068:	5f 91       	pop	r21
    106a:	4f 91       	pop	r20
    106c:	3f 91       	pop	r19
    106e:	2f 91       	pop	r18
    1070:	0f 90       	pop	r0
    1072:	0f be       	out	0x3f, r0	; 63
    1074:	0f 90       	pop	r0
    1076:	1f 90       	pop	r1
    1078:	18 95       	reti

0000107a <_GLOBAL__sub_I_timer>:
    107a:	82 ee       	ldi	r24, 0xE2	; 226
    107c:	90 e0       	ldi	r25, 0x00	; 0
    107e:	0c 94 30 07 	jmp	0xe60	; 0xe60 <_ZN6CTimerC1Ev>

00001082 <_ZN9CTerminal4putsEPc>:
    1082:	0f 93       	push	r16
    1084:	1f 93       	push	r17
    1086:	cf 93       	push	r28
    1088:	df 93       	push	r29
    108a:	8c 01       	movw	r16, r24
    108c:	eb 01       	movw	r28, r22
    108e:	69 91       	ld	r22, Y+
    1090:	66 23       	and	r22, r22
    1092:	21 f0       	breq	.+8      	; 0x109c <_ZN9CTerminal4putsEPc+0x1a>
    1094:	c8 01       	movw	r24, r16
    1096:	0e 94 64 00 	call	0xc8	; 0xc8 <_ZN6CUSART7putcharEc>
    109a:	f9 cf       	rjmp	.-14     	; 0x108e <_ZN9CTerminal4putsEPc+0xc>
    109c:	df 91       	pop	r29
    109e:	cf 91       	pop	r28
    10a0:	1f 91       	pop	r17
    10a2:	0f 91       	pop	r16
    10a4:	08 95       	ret

000010a6 <_ZN9CTerminal4putiEl>:
    10a6:	8f 92       	push	r8
    10a8:	9f 92       	push	r9
    10aa:	af 92       	push	r10
    10ac:	bf 92       	push	r11
    10ae:	cf 92       	push	r12
    10b0:	df 92       	push	r13
    10b2:	ef 92       	push	r14
    10b4:	ff 92       	push	r15
    10b6:	0f 93       	push	r16
    10b8:	1f 93       	push	r17
    10ba:	cf 93       	push	r28
    10bc:	df 93       	push	r29
    10be:	cd b7       	in	r28, 0x3d	; 61
    10c0:	de b7       	in	r29, 0x3e	; 62
    10c2:	2c 97       	sbiw	r28, 0x0c	; 12
    10c4:	0f b6       	in	r0, 0x3f	; 63
    10c6:	f8 94       	cli
    10c8:	de bf       	out	0x3e, r29	; 62
    10ca:	0f be       	out	0x3f, r0	; 63
    10cc:	cd bf       	out	0x3d, r28	; 61
    10ce:	7c 01       	movw	r14, r24
    10d0:	77 ff       	sbrs	r23, 7
    10d2:	09 c0       	rjmp	.+18     	; 0x10e6 <_ZN9CTerminal4putiEl+0x40>
    10d4:	70 95       	com	r23
    10d6:	60 95       	com	r22
    10d8:	50 95       	com	r21
    10da:	41 95       	neg	r20
    10dc:	5f 4f       	sbci	r21, 0xFF	; 255
    10de:	6f 4f       	sbci	r22, 0xFF	; 255
    10e0:	7f 4f       	sbci	r23, 0xFF	; 255
    10e2:	01 e0       	ldi	r16, 0x01	; 1
    10e4:	01 c0       	rjmp	.+2      	; 0x10e8 <_ZN9CTerminal4putiEl+0x42>
    10e6:	00 e0       	ldi	r16, 0x00	; 0
    10e8:	1c 86       	std	Y+12, r1	; 0x0c
    10ea:	1a e0       	ldi	r17, 0x0A	; 10
    10ec:	9a e0       	ldi	r25, 0x0A	; 10
    10ee:	89 2e       	mov	r8, r25
    10f0:	91 2c       	mov	r9, r1
    10f2:	a1 2c       	mov	r10, r1
    10f4:	b1 2c       	mov	r11, r1
    10f6:	cc 24       	eor	r12, r12
    10f8:	c3 94       	inc	r12
    10fa:	d1 2c       	mov	r13, r1
    10fc:	cc 0e       	add	r12, r28
    10fe:	dd 1e       	adc	r13, r29
    1100:	c1 0e       	add	r12, r17
    1102:	d1 1c       	adc	r13, r1
    1104:	cb 01       	movw	r24, r22
    1106:	ba 01       	movw	r22, r20
    1108:	a5 01       	movw	r20, r10
    110a:	94 01       	movw	r18, r8
    110c:	0e 94 fa 09 	call	0x13f4	; 0x13f4 <__divmodsi4>
    1110:	94 2f       	mov	r25, r20
    1112:	85 2f       	mov	r24, r21
    1114:	60 5d       	subi	r22, 0xD0	; 208
    1116:	f6 01       	movw	r30, r12
    1118:	60 83       	st	Z, r22
    111a:	a9 01       	movw	r20, r18
    111c:	69 2f       	mov	r22, r25
    111e:	78 2f       	mov	r23, r24
    1120:	8f ef       	ldi	r24, 0xFF	; 255
    1122:	81 0f       	add	r24, r17
    1124:	41 15       	cp	r20, r1
    1126:	51 05       	cpc	r21, r1
    1128:	61 05       	cpc	r22, r1
    112a:	71 05       	cpc	r23, r1
    112c:	11 f0       	breq	.+4      	; 0x1132 <_ZN9CTerminal4putiEl+0x8c>
    112e:	18 2f       	mov	r17, r24
    1130:	e2 cf       	rjmp	.-60     	; 0x10f6 <_ZN9CTerminal4putiEl+0x50>
    1132:	00 23       	and	r16, r16
    1134:	49 f0       	breq	.+18     	; 0x1148 <_ZN9CTerminal4putiEl+0xa2>
    1136:	e1 e0       	ldi	r30, 0x01	; 1
    1138:	f0 e0       	ldi	r31, 0x00	; 0
    113a:	ec 0f       	add	r30, r28
    113c:	fd 1f       	adc	r31, r29
    113e:	e8 0f       	add	r30, r24
    1140:	f1 1d       	adc	r31, r1
    1142:	9d e2       	ldi	r25, 0x2D	; 45
    1144:	90 83       	st	Z, r25
    1146:	18 2f       	mov	r17, r24
    1148:	61 e0       	ldi	r22, 0x01	; 1
    114a:	70 e0       	ldi	r23, 0x00	; 0
    114c:	6c 0f       	add	r22, r28
    114e:	7d 1f       	adc	r23, r29
    1150:	61 0f       	add	r22, r17
    1152:	71 1d       	adc	r23, r1
    1154:	c7 01       	movw	r24, r14
    1156:	0e 94 41 08 	call	0x1082	; 0x1082 <_ZN9CTerminal4putsEPc>
    115a:	2c 96       	adiw	r28, 0x0c	; 12
    115c:	0f b6       	in	r0, 0x3f	; 63
    115e:	f8 94       	cli
    1160:	de bf       	out	0x3e, r29	; 62
    1162:	0f be       	out	0x3f, r0	; 63
    1164:	cd bf       	out	0x3d, r28	; 61
    1166:	df 91       	pop	r29
    1168:	cf 91       	pop	r28
    116a:	1f 91       	pop	r17
    116c:	0f 91       	pop	r16
    116e:	ff 90       	pop	r15
    1170:	ef 90       	pop	r14
    1172:	df 90       	pop	r13
    1174:	cf 90       	pop	r12
    1176:	bf 90       	pop	r11
    1178:	af 90       	pop	r10
    117a:	9f 90       	pop	r9
    117c:	8f 90       	pop	r8
    117e:	08 95       	ret

00001180 <_ZN9CTerminal5putuiEm>:
    1180:	8f 92       	push	r8
    1182:	9f 92       	push	r9
    1184:	af 92       	push	r10
    1186:	bf 92       	push	r11
    1188:	cf 92       	push	r12
    118a:	df 92       	push	r13
    118c:	ef 92       	push	r14
    118e:	ff 92       	push	r15
    1190:	1f 93       	push	r17
    1192:	cf 93       	push	r28
    1194:	df 93       	push	r29
    1196:	cd b7       	in	r28, 0x3d	; 61
    1198:	de b7       	in	r29, 0x3e	; 62
    119a:	2c 97       	sbiw	r28, 0x0c	; 12
    119c:	0f b6       	in	r0, 0x3f	; 63
    119e:	f8 94       	cli
    11a0:	de bf       	out	0x3e, r29	; 62
    11a2:	0f be       	out	0x3f, r0	; 63
    11a4:	cd bf       	out	0x3d, r28	; 61
    11a6:	6c 01       	movw	r12, r24
    11a8:	1c 86       	std	Y+12, r1	; 0x0c
    11aa:	1a e0       	ldi	r17, 0x0A	; 10
    11ac:	9a e0       	ldi	r25, 0x0A	; 10
    11ae:	89 2e       	mov	r8, r25
    11b0:	91 2c       	mov	r9, r1
    11b2:	a1 2c       	mov	r10, r1
    11b4:	b1 2c       	mov	r11, r1
    11b6:	ee 24       	eor	r14, r14
    11b8:	e3 94       	inc	r14
    11ba:	f1 2c       	mov	r15, r1
    11bc:	ec 0e       	add	r14, r28
    11be:	fd 1e       	adc	r15, r29
    11c0:	e1 0e       	add	r14, r17
    11c2:	f1 1c       	adc	r15, r1
    11c4:	cb 01       	movw	r24, r22
    11c6:	ba 01       	movw	r22, r20
    11c8:	a5 01       	movw	r20, r10
    11ca:	94 01       	movw	r18, r8
    11cc:	0e 94 d8 09 	call	0x13b0	; 0x13b0 <__udivmodsi4>
    11d0:	94 2f       	mov	r25, r20
    11d2:	85 2f       	mov	r24, r21
    11d4:	60 5d       	subi	r22, 0xD0	; 208
    11d6:	f7 01       	movw	r30, r14
    11d8:	60 83       	st	Z, r22
    11da:	a9 01       	movw	r20, r18
    11dc:	69 2f       	mov	r22, r25
    11de:	78 2f       	mov	r23, r24
    11e0:	11 50       	subi	r17, 0x01	; 1
    11e2:	41 15       	cp	r20, r1
    11e4:	51 05       	cpc	r21, r1
    11e6:	61 05       	cpc	r22, r1
    11e8:	71 05       	cpc	r23, r1
    11ea:	29 f7       	brne	.-54     	; 0x11b6 <_ZN9CTerminal5putuiEm+0x36>
    11ec:	b7 01       	movw	r22, r14
    11ee:	c6 01       	movw	r24, r12
    11f0:	0e 94 41 08 	call	0x1082	; 0x1082 <_ZN9CTerminal4putsEPc>
    11f4:	2c 96       	adiw	r28, 0x0c	; 12
    11f6:	0f b6       	in	r0, 0x3f	; 63
    11f8:	f8 94       	cli
    11fa:	de bf       	out	0x3e, r29	; 62
    11fc:	0f be       	out	0x3f, r0	; 63
    11fe:	cd bf       	out	0x3d, r28	; 61
    1200:	df 91       	pop	r29
    1202:	cf 91       	pop	r28
    1204:	1f 91       	pop	r17
    1206:	ff 90       	pop	r15
    1208:	ef 90       	pop	r14
    120a:	df 90       	pop	r13
    120c:	cf 90       	pop	r12
    120e:	bf 90       	pop	r11
    1210:	af 90       	pop	r10
    1212:	9f 90       	pop	r9
    1214:	8f 90       	pop	r8
    1216:	08 95       	ret

00001218 <_ZN9CTerminal4putxEm>:
    1218:	ef 92       	push	r14
    121a:	ff 92       	push	r15
    121c:	cf 93       	push	r28
    121e:	df 93       	push	r29
    1220:	cd b7       	in	r28, 0x3d	; 61
    1222:	de b7       	in	r29, 0x3e	; 62
    1224:	2c 97       	sbiw	r28, 0x0c	; 12
    1226:	0f b6       	in	r0, 0x3f	; 63
    1228:	f8 94       	cli
    122a:	de bf       	out	0x3e, r29	; 62
    122c:	0f be       	out	0x3f, r0	; 63
    122e:	cd bf       	out	0x3d, r28	; 61
    1230:	fc 01       	movw	r30, r24
    1232:	1c 86       	std	Y+12, r1	; 0x0c
    1234:	2a e0       	ldi	r18, 0x0A	; 10
    1236:	94 2f       	mov	r25, r20
    1238:	9f 70       	andi	r25, 0x0F	; 15
    123a:	e2 2e       	mov	r14, r18
    123c:	f1 2c       	mov	r15, r1
    123e:	a1 e0       	ldi	r26, 0x01	; 1
    1240:	b0 e0       	ldi	r27, 0x00	; 0
    1242:	ac 0f       	add	r26, r28
    1244:	bd 1f       	adc	r27, r29
    1246:	ae 0d       	add	r26, r14
    1248:	bf 1d       	adc	r27, r15
    124a:	9a 30       	cpi	r25, 0x0A	; 10
    124c:	14 f4       	brge	.+4      	; 0x1252 <_ZN9CTerminal4putxEm+0x3a>
    124e:	90 5d       	subi	r25, 0xD0	; 208
    1250:	01 c0       	rjmp	.+2      	; 0x1254 <_ZN9CTerminal4putxEm+0x3c>
    1252:	99 5a       	subi	r25, 0xA9	; 169
    1254:	9c 93       	st	X, r25
    1256:	84 e0       	ldi	r24, 0x04	; 4
    1258:	76 95       	lsr	r23
    125a:	67 95       	ror	r22
    125c:	57 95       	ror	r21
    125e:	47 95       	ror	r20
    1260:	8a 95       	dec	r24
    1262:	d1 f7       	brne	.-12     	; 0x1258 <_ZN9CTerminal4putxEm+0x40>
    1264:	21 50       	subi	r18, 0x01	; 1
    1266:	41 15       	cp	r20, r1
    1268:	51 05       	cpc	r21, r1
    126a:	61 05       	cpc	r22, r1
    126c:	71 05       	cpc	r23, r1
    126e:	19 f7       	brne	.-58     	; 0x1236 <_ZN9CTerminal4putxEm+0x1e>
    1270:	61 e0       	ldi	r22, 0x01	; 1
    1272:	70 e0       	ldi	r23, 0x00	; 0
    1274:	6c 0f       	add	r22, r28
    1276:	7d 1f       	adc	r23, r29
    1278:	6e 0d       	add	r22, r14
    127a:	7f 1d       	adc	r23, r15
    127c:	cf 01       	movw	r24, r30
    127e:	0e 94 41 08 	call	0x1082	; 0x1082 <_ZN9CTerminal4putsEPc>
    1282:	2c 96       	adiw	r28, 0x0c	; 12
    1284:	0f b6       	in	r0, 0x3f	; 63
    1286:	f8 94       	cli
    1288:	de bf       	out	0x3e, r29	; 62
    128a:	0f be       	out	0x3f, r0	; 63
    128c:	cd bf       	out	0x3d, r28	; 61
    128e:	df 91       	pop	r29
    1290:	cf 91       	pop	r28
    1292:	ff 90       	pop	r15
    1294:	ef 90       	pop	r14
    1296:	08 95       	ret

00001298 <_ZN9CTerminal6printfEPKcz>:
    1298:	af 92       	push	r10
    129a:	bf 92       	push	r11
    129c:	cf 92       	push	r12
    129e:	df 92       	push	r13
    12a0:	ef 92       	push	r14
    12a2:	ff 92       	push	r15
    12a4:	0f 93       	push	r16
    12a6:	1f 93       	push	r17
    12a8:	cf 93       	push	r28
    12aa:	df 93       	push	r29
    12ac:	cd b7       	in	r28, 0x3d	; 61
    12ae:	de b7       	in	r29, 0x3e	; 62
    12b0:	ed 84       	ldd	r14, Y+13	; 0x0d
    12b2:	fe 84       	ldd	r15, Y+14	; 0x0e
    12b4:	8e 01       	movw	r16, r28
    12b6:	0f 5e       	subi	r16, 0xEF	; 239
    12b8:	1f 4f       	sbci	r17, 0xFF	; 255
    12ba:	c1 2c       	mov	r12, r1
    12bc:	d1 2c       	mov	r13, r1
    12be:	ef 85       	ldd	r30, Y+15	; 0x0f
    12c0:	f8 89       	ldd	r31, Y+16	; 0x10
    12c2:	ec 0d       	add	r30, r12
    12c4:	fd 1d       	adc	r31, r13
    12c6:	60 81       	ld	r22, Z
    12c8:	66 23       	and	r22, r22
    12ca:	09 f4       	brne	.+2      	; 0x12ce <_ZN9CTerminal6printfEPKcz+0x36>
    12cc:	5e c0       	rjmp	.+188    	; 0x138a <_ZN9CTerminal6printfEPKcz+0xf2>
    12ce:	65 32       	cpi	r22, 0x25	; 37
    12d0:	39 f0       	breq	.+14     	; 0x12e0 <_ZN9CTerminal6printfEPKcz+0x48>
    12d2:	c7 01       	movw	r24, r14
    12d4:	0e 94 64 00 	call	0xc8	; 0xc8 <_ZN6CUSART7putcharEc>
    12d8:	8f ef       	ldi	r24, 0xFF	; 255
    12da:	c8 1a       	sub	r12, r24
    12dc:	d8 0a       	sbc	r13, r24
    12de:	ef cf       	rjmp	.-34     	; 0x12be <_ZN9CTerminal6printfEPKcz+0x26>
    12e0:	81 81       	ldd	r24, Z+1	; 0x01
    12e2:	89 36       	cpi	r24, 0x69	; 105
    12e4:	11 f1       	breq	.+68     	; 0x132a <_ZN9CTerminal6printfEPKcz+0x92>
    12e6:	84 f4       	brge	.+32     	; 0x1308 <_ZN9CTerminal6printfEPKcz+0x70>
    12e8:	85 32       	cpi	r24, 0x25	; 37
    12ea:	09 f4       	brne	.+2      	; 0x12ee <_ZN9CTerminal6printfEPKcz+0x56>
    12ec:	46 c0       	rjmp	.+140    	; 0x137a <_ZN9CTerminal6printfEPKcz+0xe2>
    12ee:	83 36       	cpi	r24, 0x63	; 99
    12f0:	09 f0       	breq	.+2      	; 0x12f4 <_ZN9CTerminal6printfEPKcz+0x5c>
    12f2:	47 c0       	rjmp	.+142    	; 0x1382 <_ZN9CTerminal6printfEPKcz+0xea>
    12f4:	58 01       	movw	r10, r16
    12f6:	f2 e0       	ldi	r31, 0x02	; 2
    12f8:	af 0e       	add	r10, r31
    12fa:	b1 1c       	adc	r11, r1
    12fc:	f8 01       	movw	r30, r16
    12fe:	60 81       	ld	r22, Z
    1300:	c7 01       	movw	r24, r14
    1302:	0e 94 64 00 	call	0xc8	; 0xc8 <_ZN6CUSART7putcharEc>
    1306:	2a c0       	rjmp	.+84     	; 0x135c <_ZN9CTerminal6printfEPKcz+0xc4>
    1308:	85 37       	cpi	r24, 0x75	; 117
    130a:	e1 f0       	breq	.+56     	; 0x1344 <_ZN9CTerminal6printfEPKcz+0xac>
    130c:	88 37       	cpi	r24, 0x78	; 120
    130e:	41 f1       	breq	.+80     	; 0x1360 <_ZN9CTerminal6printfEPKcz+0xc8>
    1310:	83 37       	cpi	r24, 0x73	; 115
    1312:	b9 f5       	brne	.+110    	; 0x1382 <_ZN9CTerminal6printfEPKcz+0xea>
    1314:	58 01       	movw	r10, r16
    1316:	f2 e0       	ldi	r31, 0x02	; 2
    1318:	af 0e       	add	r10, r31
    131a:	b1 1c       	adc	r11, r1
    131c:	f8 01       	movw	r30, r16
    131e:	60 81       	ld	r22, Z
    1320:	71 81       	ldd	r23, Z+1	; 0x01
    1322:	c7 01       	movw	r24, r14
    1324:	0e 94 41 08 	call	0x1082	; 0x1082 <_ZN9CTerminal4putsEPc>
    1328:	19 c0       	rjmp	.+50     	; 0x135c <_ZN9CTerminal6printfEPKcz+0xc4>
    132a:	58 01       	movw	r10, r16
    132c:	94 e0       	ldi	r25, 0x04	; 4
    132e:	a9 0e       	add	r10, r25
    1330:	b1 1c       	adc	r11, r1
    1332:	f8 01       	movw	r30, r16
    1334:	40 81       	ld	r20, Z
    1336:	51 81       	ldd	r21, Z+1	; 0x01
    1338:	62 81       	ldd	r22, Z+2	; 0x02
    133a:	73 81       	ldd	r23, Z+3	; 0x03
    133c:	c7 01       	movw	r24, r14
    133e:	0e 94 53 08 	call	0x10a6	; 0x10a6 <_ZN9CTerminal4putiEl>
    1342:	0c c0       	rjmp	.+24     	; 0x135c <_ZN9CTerminal6printfEPKcz+0xc4>
    1344:	58 01       	movw	r10, r16
    1346:	f4 e0       	ldi	r31, 0x04	; 4
    1348:	af 0e       	add	r10, r31
    134a:	b1 1c       	adc	r11, r1
    134c:	f8 01       	movw	r30, r16
    134e:	40 81       	ld	r20, Z
    1350:	51 81       	ldd	r21, Z+1	; 0x01
    1352:	62 81       	ldd	r22, Z+2	; 0x02
    1354:	73 81       	ldd	r23, Z+3	; 0x03
    1356:	c7 01       	movw	r24, r14
    1358:	0e 94 c0 08 	call	0x1180	; 0x1180 <_ZN9CTerminal5putuiEm>
    135c:	85 01       	movw	r16, r10
    135e:	11 c0       	rjmp	.+34     	; 0x1382 <_ZN9CTerminal6printfEPKcz+0xea>
    1360:	58 01       	movw	r10, r16
    1362:	f4 e0       	ldi	r31, 0x04	; 4
    1364:	af 0e       	add	r10, r31
    1366:	b1 1c       	adc	r11, r1
    1368:	f8 01       	movw	r30, r16
    136a:	40 81       	ld	r20, Z
    136c:	51 81       	ldd	r21, Z+1	; 0x01
    136e:	62 81       	ldd	r22, Z+2	; 0x02
    1370:	73 81       	ldd	r23, Z+3	; 0x03
    1372:	c7 01       	movw	r24, r14
    1374:	0e 94 0c 09 	call	0x1218	; 0x1218 <_ZN9CTerminal4putxEm>
    1378:	f1 cf       	rjmp	.-30     	; 0x135c <_ZN9CTerminal6printfEPKcz+0xc4>
    137a:	65 e2       	ldi	r22, 0x25	; 37
    137c:	c7 01       	movw	r24, r14
    137e:	0e 94 64 00 	call	0xc8	; 0xc8 <_ZN6CUSART7putcharEc>
    1382:	f2 e0       	ldi	r31, 0x02	; 2
    1384:	cf 0e       	add	r12, r31
    1386:	d1 1c       	adc	r13, r1
    1388:	9a cf       	rjmp	.-204    	; 0x12be <_ZN9CTerminal6printfEPKcz+0x26>
    138a:	df 91       	pop	r29
    138c:	cf 91       	pop	r28
    138e:	1f 91       	pop	r17
    1390:	0f 91       	pop	r16
    1392:	ff 90       	pop	r15
    1394:	ef 90       	pop	r14
    1396:	df 90       	pop	r13
    1398:	cf 90       	pop	r12
    139a:	bf 90       	pop	r11
    139c:	af 90       	pop	r10
    139e:	08 95       	ret

000013a0 <_GLOBAL__sub_I_terminal>:
    13a0:	83 ee       	ldi	r24, 0xE3	; 227
    13a2:	90 e0       	ldi	r25, 0x00	; 0
    13a4:	0c 94 59 00 	jmp	0xb2	; 0xb2 <_ZN6CUSARTC1Ev>

000013a8 <_GLOBAL__sub_D_terminal>:
    13a8:	83 ee       	ldi	r24, 0xE3	; 227
    13aa:	90 e0       	ldi	r25, 0x00	; 0
    13ac:	0c 94 63 00 	jmp	0xc6	; 0xc6 <_ZN6CUSARTD1Ev>

000013b0 <__udivmodsi4>:
    13b0:	a1 e2       	ldi	r26, 0x21	; 33
    13b2:	1a 2e       	mov	r1, r26
    13b4:	aa 1b       	sub	r26, r26
    13b6:	bb 1b       	sub	r27, r27
    13b8:	fd 01       	movw	r30, r26
    13ba:	0d c0       	rjmp	.+26     	; 0x13d6 <__udivmodsi4_ep>

000013bc <__udivmodsi4_loop>:
    13bc:	aa 1f       	adc	r26, r26
    13be:	bb 1f       	adc	r27, r27
    13c0:	ee 1f       	adc	r30, r30
    13c2:	ff 1f       	adc	r31, r31
    13c4:	a2 17       	cp	r26, r18
    13c6:	b3 07       	cpc	r27, r19
    13c8:	e4 07       	cpc	r30, r20
    13ca:	f5 07       	cpc	r31, r21
    13cc:	20 f0       	brcs	.+8      	; 0x13d6 <__udivmodsi4_ep>
    13ce:	a2 1b       	sub	r26, r18
    13d0:	b3 0b       	sbc	r27, r19
    13d2:	e4 0b       	sbc	r30, r20
    13d4:	f5 0b       	sbc	r31, r21

000013d6 <__udivmodsi4_ep>:
    13d6:	66 1f       	adc	r22, r22
    13d8:	77 1f       	adc	r23, r23
    13da:	88 1f       	adc	r24, r24
    13dc:	99 1f       	adc	r25, r25
    13de:	1a 94       	dec	r1
    13e0:	69 f7       	brne	.-38     	; 0x13bc <__udivmodsi4_loop>
    13e2:	60 95       	com	r22
    13e4:	70 95       	com	r23
    13e6:	80 95       	com	r24
    13e8:	90 95       	com	r25
    13ea:	9b 01       	movw	r18, r22
    13ec:	ac 01       	movw	r20, r24
    13ee:	bd 01       	movw	r22, r26
    13f0:	cf 01       	movw	r24, r30
    13f2:	08 95       	ret

000013f4 <__divmodsi4>:
    13f4:	05 2e       	mov	r0, r21
    13f6:	97 fb       	bst	r25, 7
    13f8:	1e f4       	brtc	.+6      	; 0x1400 <__divmodsi4+0xc>
    13fa:	00 94       	com	r0
    13fc:	0e 94 11 0a 	call	0x1422	; 0x1422 <__negsi2>
    1400:	57 fd       	sbrc	r21, 7
    1402:	07 d0       	rcall	.+14     	; 0x1412 <__divmodsi4_neg2>
    1404:	0e 94 d8 09 	call	0x13b0	; 0x13b0 <__udivmodsi4>
    1408:	07 fc       	sbrc	r0, 7
    140a:	03 d0       	rcall	.+6      	; 0x1412 <__divmodsi4_neg2>
    140c:	4e f4       	brtc	.+18     	; 0x1420 <__divmodsi4_exit>
    140e:	0c 94 11 0a 	jmp	0x1422	; 0x1422 <__negsi2>

00001412 <__divmodsi4_neg2>:
    1412:	50 95       	com	r21
    1414:	40 95       	com	r20
    1416:	30 95       	com	r19
    1418:	21 95       	neg	r18
    141a:	3f 4f       	sbci	r19, 0xFF	; 255
    141c:	4f 4f       	sbci	r20, 0xFF	; 255
    141e:	5f 4f       	sbci	r21, 0xFF	; 255

00001420 <__divmodsi4_exit>:
    1420:	08 95       	ret

00001422 <__negsi2>:
    1422:	90 95       	com	r25
    1424:	80 95       	com	r24
    1426:	70 95       	com	r23
    1428:	61 95       	neg	r22
    142a:	7f 4f       	sbci	r23, 0xFF	; 255
    142c:	8f 4f       	sbci	r24, 0xFF	; 255
    142e:	9f 4f       	sbci	r25, 0xFF	; 255
    1430:	08 95       	ret

00001432 <__tablejump2__>:
    1432:	ee 0f       	add	r30, r30
    1434:	ff 1f       	adc	r31, r31
    1436:	05 90       	lpm	r0, Z+
    1438:	f4 91       	lpm	r31, Z
    143a:	e0 2d       	mov	r30, r0
    143c:	09 94       	ijmp

0000143e <__subsf3>:
    143e:	50 58       	subi	r21, 0x80	; 128

00001440 <__addsf3>:
    1440:	bb 27       	eor	r27, r27
    1442:	aa 27       	eor	r26, r26
    1444:	0e 94 37 0a 	call	0x146e	; 0x146e <__addsf3x>
    1448:	0c 94 3f 0b 	jmp	0x167e	; 0x167e <__fp_round>
    144c:	0e 94 31 0b 	call	0x1662	; 0x1662 <__fp_pscA>
    1450:	38 f0       	brcs	.+14     	; 0x1460 <__addsf3+0x20>
    1452:	0e 94 38 0b 	call	0x1670	; 0x1670 <__fp_pscB>
    1456:	20 f0       	brcs	.+8      	; 0x1460 <__addsf3+0x20>
    1458:	39 f4       	brne	.+14     	; 0x1468 <__addsf3+0x28>
    145a:	9f 3f       	cpi	r25, 0xFF	; 255
    145c:	19 f4       	brne	.+6      	; 0x1464 <__addsf3+0x24>
    145e:	26 f4       	brtc	.+8      	; 0x1468 <__addsf3+0x28>
    1460:	0c 94 2e 0b 	jmp	0x165c	; 0x165c <__fp_nan>
    1464:	0e f4       	brtc	.+2      	; 0x1468 <__addsf3+0x28>
    1466:	e0 95       	com	r30
    1468:	e7 fb       	bst	r30, 7
    146a:	0c 94 28 0b 	jmp	0x1650	; 0x1650 <__fp_inf>

0000146e <__addsf3x>:
    146e:	e9 2f       	mov	r30, r25
    1470:	0e 94 50 0b 	call	0x16a0	; 0x16a0 <__fp_split3>
    1474:	58 f3       	brcs	.-42     	; 0x144c <__addsf3+0xc>
    1476:	ba 17       	cp	r27, r26
    1478:	62 07       	cpc	r22, r18
    147a:	73 07       	cpc	r23, r19
    147c:	84 07       	cpc	r24, r20
    147e:	95 07       	cpc	r25, r21
    1480:	20 f0       	brcs	.+8      	; 0x148a <__addsf3x+0x1c>
    1482:	79 f4       	brne	.+30     	; 0x14a2 <__addsf3x+0x34>
    1484:	a6 f5       	brtc	.+104    	; 0x14ee <__addsf3x+0x80>
    1486:	0c 94 72 0b 	jmp	0x16e4	; 0x16e4 <__fp_zero>
    148a:	0e f4       	brtc	.+2      	; 0x148e <__addsf3x+0x20>
    148c:	e0 95       	com	r30
    148e:	0b 2e       	mov	r0, r27
    1490:	ba 2f       	mov	r27, r26
    1492:	a0 2d       	mov	r26, r0
    1494:	0b 01       	movw	r0, r22
    1496:	b9 01       	movw	r22, r18
    1498:	90 01       	movw	r18, r0
    149a:	0c 01       	movw	r0, r24
    149c:	ca 01       	movw	r24, r20
    149e:	a0 01       	movw	r20, r0
    14a0:	11 24       	eor	r1, r1
    14a2:	ff 27       	eor	r31, r31
    14a4:	59 1b       	sub	r21, r25
    14a6:	99 f0       	breq	.+38     	; 0x14ce <__addsf3x+0x60>
    14a8:	59 3f       	cpi	r21, 0xF9	; 249
    14aa:	50 f4       	brcc	.+20     	; 0x14c0 <__addsf3x+0x52>
    14ac:	50 3e       	cpi	r21, 0xE0	; 224
    14ae:	68 f1       	brcs	.+90     	; 0x150a <__addsf3x+0x9c>
    14b0:	1a 16       	cp	r1, r26
    14b2:	f0 40       	sbci	r31, 0x00	; 0
    14b4:	a2 2f       	mov	r26, r18
    14b6:	23 2f       	mov	r18, r19
    14b8:	34 2f       	mov	r19, r20
    14ba:	44 27       	eor	r20, r20
    14bc:	58 5f       	subi	r21, 0xF8	; 248
    14be:	f3 cf       	rjmp	.-26     	; 0x14a6 <__addsf3x+0x38>
    14c0:	46 95       	lsr	r20
    14c2:	37 95       	ror	r19
    14c4:	27 95       	ror	r18
    14c6:	a7 95       	ror	r26
    14c8:	f0 40       	sbci	r31, 0x00	; 0
    14ca:	53 95       	inc	r21
    14cc:	c9 f7       	brne	.-14     	; 0x14c0 <__addsf3x+0x52>
    14ce:	7e f4       	brtc	.+30     	; 0x14ee <__addsf3x+0x80>
    14d0:	1f 16       	cp	r1, r31
    14d2:	ba 0b       	sbc	r27, r26
    14d4:	62 0b       	sbc	r22, r18
    14d6:	73 0b       	sbc	r23, r19
    14d8:	84 0b       	sbc	r24, r20
    14da:	ba f0       	brmi	.+46     	; 0x150a <__addsf3x+0x9c>
    14dc:	91 50       	subi	r25, 0x01	; 1
    14de:	a1 f0       	breq	.+40     	; 0x1508 <__addsf3x+0x9a>
    14e0:	ff 0f       	add	r31, r31
    14e2:	bb 1f       	adc	r27, r27
    14e4:	66 1f       	adc	r22, r22
    14e6:	77 1f       	adc	r23, r23
    14e8:	88 1f       	adc	r24, r24
    14ea:	c2 f7       	brpl	.-16     	; 0x14dc <__addsf3x+0x6e>
    14ec:	0e c0       	rjmp	.+28     	; 0x150a <__addsf3x+0x9c>
    14ee:	ba 0f       	add	r27, r26
    14f0:	62 1f       	adc	r22, r18
    14f2:	73 1f       	adc	r23, r19
    14f4:	84 1f       	adc	r24, r20
    14f6:	48 f4       	brcc	.+18     	; 0x150a <__addsf3x+0x9c>
    14f8:	87 95       	ror	r24
    14fa:	77 95       	ror	r23
    14fc:	67 95       	ror	r22
    14fe:	b7 95       	ror	r27
    1500:	f7 95       	ror	r31
    1502:	9e 3f       	cpi	r25, 0xFE	; 254
    1504:	08 f0       	brcs	.+2      	; 0x1508 <__addsf3x+0x9a>
    1506:	b0 cf       	rjmp	.-160    	; 0x1468 <__addsf3+0x28>
    1508:	93 95       	inc	r25
    150a:	88 0f       	add	r24, r24
    150c:	08 f0       	brcs	.+2      	; 0x1510 <__addsf3x+0xa2>
    150e:	99 27       	eor	r25, r25
    1510:	ee 0f       	add	r30, r30
    1512:	97 95       	ror	r25
    1514:	87 95       	ror	r24
    1516:	08 95       	ret

00001518 <__cmpsf2>:
    1518:	0e 94 04 0b 	call	0x1608	; 0x1608 <__fp_cmp>
    151c:	08 f4       	brcc	.+2      	; 0x1520 <__cmpsf2+0x8>
    151e:	81 e0       	ldi	r24, 0x01	; 1
    1520:	08 95       	ret

00001522 <__fixsfsi>:
    1522:	0e 94 98 0a 	call	0x1530	; 0x1530 <__fixunssfsi>
    1526:	68 94       	set
    1528:	b1 11       	cpse	r27, r1
    152a:	0c 94 73 0b 	jmp	0x16e6	; 0x16e6 <__fp_szero>
    152e:	08 95       	ret

00001530 <__fixunssfsi>:
    1530:	0e 94 58 0b 	call	0x16b0	; 0x16b0 <__fp_splitA>
    1534:	88 f0       	brcs	.+34     	; 0x1558 <__fixunssfsi+0x28>
    1536:	9f 57       	subi	r25, 0x7F	; 127
    1538:	98 f0       	brcs	.+38     	; 0x1560 <__fixunssfsi+0x30>
    153a:	b9 2f       	mov	r27, r25
    153c:	99 27       	eor	r25, r25
    153e:	b7 51       	subi	r27, 0x17	; 23
    1540:	b0 f0       	brcs	.+44     	; 0x156e <__fixunssfsi+0x3e>
    1542:	e1 f0       	breq	.+56     	; 0x157c <__fixunssfsi+0x4c>
    1544:	66 0f       	add	r22, r22
    1546:	77 1f       	adc	r23, r23
    1548:	88 1f       	adc	r24, r24
    154a:	99 1f       	adc	r25, r25
    154c:	1a f0       	brmi	.+6      	; 0x1554 <__fixunssfsi+0x24>
    154e:	ba 95       	dec	r27
    1550:	c9 f7       	brne	.-14     	; 0x1544 <__fixunssfsi+0x14>
    1552:	14 c0       	rjmp	.+40     	; 0x157c <__fixunssfsi+0x4c>
    1554:	b1 30       	cpi	r27, 0x01	; 1
    1556:	91 f0       	breq	.+36     	; 0x157c <__fixunssfsi+0x4c>
    1558:	0e 94 72 0b 	call	0x16e4	; 0x16e4 <__fp_zero>
    155c:	b1 e0       	ldi	r27, 0x01	; 1
    155e:	08 95       	ret
    1560:	0c 94 72 0b 	jmp	0x16e4	; 0x16e4 <__fp_zero>
    1564:	67 2f       	mov	r22, r23
    1566:	78 2f       	mov	r23, r24
    1568:	88 27       	eor	r24, r24
    156a:	b8 5f       	subi	r27, 0xF8	; 248
    156c:	39 f0       	breq	.+14     	; 0x157c <__fixunssfsi+0x4c>
    156e:	b9 3f       	cpi	r27, 0xF9	; 249
    1570:	cc f3       	brlt	.-14     	; 0x1564 <__fixunssfsi+0x34>
    1572:	86 95       	lsr	r24
    1574:	77 95       	ror	r23
    1576:	67 95       	ror	r22
    1578:	b3 95       	inc	r27
    157a:	d9 f7       	brne	.-10     	; 0x1572 <__fixunssfsi+0x42>
    157c:	3e f4       	brtc	.+14     	; 0x158c <__fixunssfsi+0x5c>
    157e:	90 95       	com	r25
    1580:	80 95       	com	r24
    1582:	70 95       	com	r23
    1584:	61 95       	neg	r22
    1586:	7f 4f       	sbci	r23, 0xFF	; 255
    1588:	8f 4f       	sbci	r24, 0xFF	; 255
    158a:	9f 4f       	sbci	r25, 0xFF	; 255
    158c:	08 95       	ret

0000158e <__floatunsisf>:
    158e:	e8 94       	clt
    1590:	09 c0       	rjmp	.+18     	; 0x15a4 <__floatsisf+0x12>

00001592 <__floatsisf>:
    1592:	97 fb       	bst	r25, 7
    1594:	3e f4       	brtc	.+14     	; 0x15a4 <__floatsisf+0x12>
    1596:	90 95       	com	r25
    1598:	80 95       	com	r24
    159a:	70 95       	com	r23
    159c:	61 95       	neg	r22
    159e:	7f 4f       	sbci	r23, 0xFF	; 255
    15a0:	8f 4f       	sbci	r24, 0xFF	; 255
    15a2:	9f 4f       	sbci	r25, 0xFF	; 255
    15a4:	99 23       	and	r25, r25
    15a6:	a9 f0       	breq	.+42     	; 0x15d2 <__floatsisf+0x40>
    15a8:	f9 2f       	mov	r31, r25
    15aa:	96 e9       	ldi	r25, 0x96	; 150
    15ac:	bb 27       	eor	r27, r27
    15ae:	93 95       	inc	r25
    15b0:	f6 95       	lsr	r31
    15b2:	87 95       	ror	r24
    15b4:	77 95       	ror	r23
    15b6:	67 95       	ror	r22
    15b8:	b7 95       	ror	r27
    15ba:	f1 11       	cpse	r31, r1
    15bc:	f8 cf       	rjmp	.-16     	; 0x15ae <__floatsisf+0x1c>
    15be:	fa f4       	brpl	.+62     	; 0x15fe <__floatsisf+0x6c>
    15c0:	bb 0f       	add	r27, r27
    15c2:	11 f4       	brne	.+4      	; 0x15c8 <__floatsisf+0x36>
    15c4:	60 ff       	sbrs	r22, 0
    15c6:	1b c0       	rjmp	.+54     	; 0x15fe <__floatsisf+0x6c>
    15c8:	6f 5f       	subi	r22, 0xFF	; 255
    15ca:	7f 4f       	sbci	r23, 0xFF	; 255
    15cc:	8f 4f       	sbci	r24, 0xFF	; 255
    15ce:	9f 4f       	sbci	r25, 0xFF	; 255
    15d0:	16 c0       	rjmp	.+44     	; 0x15fe <__floatsisf+0x6c>
    15d2:	88 23       	and	r24, r24
    15d4:	11 f0       	breq	.+4      	; 0x15da <__floatsisf+0x48>
    15d6:	96 e9       	ldi	r25, 0x96	; 150
    15d8:	11 c0       	rjmp	.+34     	; 0x15fc <__floatsisf+0x6a>
    15da:	77 23       	and	r23, r23
    15dc:	21 f0       	breq	.+8      	; 0x15e6 <__floatsisf+0x54>
    15de:	9e e8       	ldi	r25, 0x8E	; 142
    15e0:	87 2f       	mov	r24, r23
    15e2:	76 2f       	mov	r23, r22
    15e4:	05 c0       	rjmp	.+10     	; 0x15f0 <__floatsisf+0x5e>
    15e6:	66 23       	and	r22, r22
    15e8:	71 f0       	breq	.+28     	; 0x1606 <__floatsisf+0x74>
    15ea:	96 e8       	ldi	r25, 0x86	; 134
    15ec:	86 2f       	mov	r24, r22
    15ee:	70 e0       	ldi	r23, 0x00	; 0
    15f0:	60 e0       	ldi	r22, 0x00	; 0
    15f2:	2a f0       	brmi	.+10     	; 0x15fe <__floatsisf+0x6c>
    15f4:	9a 95       	dec	r25
    15f6:	66 0f       	add	r22, r22
    15f8:	77 1f       	adc	r23, r23
    15fa:	88 1f       	adc	r24, r24
    15fc:	da f7       	brpl	.-10     	; 0x15f4 <__floatsisf+0x62>
    15fe:	88 0f       	add	r24, r24
    1600:	96 95       	lsr	r25
    1602:	87 95       	ror	r24
    1604:	97 f9       	bld	r25, 7
    1606:	08 95       	ret

00001608 <__fp_cmp>:
    1608:	99 0f       	add	r25, r25
    160a:	00 08       	sbc	r0, r0
    160c:	55 0f       	add	r21, r21
    160e:	aa 0b       	sbc	r26, r26
    1610:	e0 e8       	ldi	r30, 0x80	; 128
    1612:	fe ef       	ldi	r31, 0xFE	; 254
    1614:	16 16       	cp	r1, r22
    1616:	17 06       	cpc	r1, r23
    1618:	e8 07       	cpc	r30, r24
    161a:	f9 07       	cpc	r31, r25
    161c:	c0 f0       	brcs	.+48     	; 0x164e <__fp_cmp+0x46>
    161e:	12 16       	cp	r1, r18
    1620:	13 06       	cpc	r1, r19
    1622:	e4 07       	cpc	r30, r20
    1624:	f5 07       	cpc	r31, r21
    1626:	98 f0       	brcs	.+38     	; 0x164e <__fp_cmp+0x46>
    1628:	62 1b       	sub	r22, r18
    162a:	73 0b       	sbc	r23, r19
    162c:	84 0b       	sbc	r24, r20
    162e:	95 0b       	sbc	r25, r21
    1630:	39 f4       	brne	.+14     	; 0x1640 <__fp_cmp+0x38>
    1632:	0a 26       	eor	r0, r26
    1634:	61 f0       	breq	.+24     	; 0x164e <__fp_cmp+0x46>
    1636:	23 2b       	or	r18, r19
    1638:	24 2b       	or	r18, r20
    163a:	25 2b       	or	r18, r21
    163c:	21 f4       	brne	.+8      	; 0x1646 <__fp_cmp+0x3e>
    163e:	08 95       	ret
    1640:	0a 26       	eor	r0, r26
    1642:	09 f4       	brne	.+2      	; 0x1646 <__fp_cmp+0x3e>
    1644:	a1 40       	sbci	r26, 0x01	; 1
    1646:	a6 95       	lsr	r26
    1648:	8f ef       	ldi	r24, 0xFF	; 255
    164a:	81 1d       	adc	r24, r1
    164c:	81 1d       	adc	r24, r1
    164e:	08 95       	ret

00001650 <__fp_inf>:
    1650:	97 f9       	bld	r25, 7
    1652:	9f 67       	ori	r25, 0x7F	; 127
    1654:	80 e8       	ldi	r24, 0x80	; 128
    1656:	70 e0       	ldi	r23, 0x00	; 0
    1658:	60 e0       	ldi	r22, 0x00	; 0
    165a:	08 95       	ret

0000165c <__fp_nan>:
    165c:	9f ef       	ldi	r25, 0xFF	; 255
    165e:	80 ec       	ldi	r24, 0xC0	; 192
    1660:	08 95       	ret

00001662 <__fp_pscA>:
    1662:	00 24       	eor	r0, r0
    1664:	0a 94       	dec	r0
    1666:	16 16       	cp	r1, r22
    1668:	17 06       	cpc	r1, r23
    166a:	18 06       	cpc	r1, r24
    166c:	09 06       	cpc	r0, r25
    166e:	08 95       	ret

00001670 <__fp_pscB>:
    1670:	00 24       	eor	r0, r0
    1672:	0a 94       	dec	r0
    1674:	12 16       	cp	r1, r18
    1676:	13 06       	cpc	r1, r19
    1678:	14 06       	cpc	r1, r20
    167a:	05 06       	cpc	r0, r21
    167c:	08 95       	ret

0000167e <__fp_round>:
    167e:	09 2e       	mov	r0, r25
    1680:	03 94       	inc	r0
    1682:	00 0c       	add	r0, r0
    1684:	11 f4       	brne	.+4      	; 0x168a <__fp_round+0xc>
    1686:	88 23       	and	r24, r24
    1688:	52 f0       	brmi	.+20     	; 0x169e <__fp_round+0x20>
    168a:	bb 0f       	add	r27, r27
    168c:	40 f4       	brcc	.+16     	; 0x169e <__fp_round+0x20>
    168e:	bf 2b       	or	r27, r31
    1690:	11 f4       	brne	.+4      	; 0x1696 <__fp_round+0x18>
    1692:	60 ff       	sbrs	r22, 0
    1694:	04 c0       	rjmp	.+8      	; 0x169e <__fp_round+0x20>
    1696:	6f 5f       	subi	r22, 0xFF	; 255
    1698:	7f 4f       	sbci	r23, 0xFF	; 255
    169a:	8f 4f       	sbci	r24, 0xFF	; 255
    169c:	9f 4f       	sbci	r25, 0xFF	; 255
    169e:	08 95       	ret

000016a0 <__fp_split3>:
    16a0:	57 fd       	sbrc	r21, 7
    16a2:	90 58       	subi	r25, 0x80	; 128
    16a4:	44 0f       	add	r20, r20
    16a6:	55 1f       	adc	r21, r21
    16a8:	59 f0       	breq	.+22     	; 0x16c0 <__fp_splitA+0x10>
    16aa:	5f 3f       	cpi	r21, 0xFF	; 255
    16ac:	71 f0       	breq	.+28     	; 0x16ca <__fp_splitA+0x1a>
    16ae:	47 95       	ror	r20

000016b0 <__fp_splitA>:
    16b0:	88 0f       	add	r24, r24
    16b2:	97 fb       	bst	r25, 7
    16b4:	99 1f       	adc	r25, r25
    16b6:	61 f0       	breq	.+24     	; 0x16d0 <__fp_splitA+0x20>
    16b8:	9f 3f       	cpi	r25, 0xFF	; 255
    16ba:	79 f0       	breq	.+30     	; 0x16da <__fp_splitA+0x2a>
    16bc:	87 95       	ror	r24
    16be:	08 95       	ret
    16c0:	12 16       	cp	r1, r18
    16c2:	13 06       	cpc	r1, r19
    16c4:	14 06       	cpc	r1, r20
    16c6:	55 1f       	adc	r21, r21
    16c8:	f2 cf       	rjmp	.-28     	; 0x16ae <__fp_split3+0xe>
    16ca:	46 95       	lsr	r20
    16cc:	f1 df       	rcall	.-30     	; 0x16b0 <__fp_splitA>
    16ce:	08 c0       	rjmp	.+16     	; 0x16e0 <__fp_splitA+0x30>
    16d0:	16 16       	cp	r1, r22
    16d2:	17 06       	cpc	r1, r23
    16d4:	18 06       	cpc	r1, r24
    16d6:	99 1f       	adc	r25, r25
    16d8:	f1 cf       	rjmp	.-30     	; 0x16bc <__fp_splitA+0xc>
    16da:	86 95       	lsr	r24
    16dc:	71 05       	cpc	r23, r1
    16de:	61 05       	cpc	r22, r1
    16e0:	08 94       	sec
    16e2:	08 95       	ret

000016e4 <__fp_zero>:
    16e4:	e8 94       	clt

000016e6 <__fp_szero>:
    16e6:	bb 27       	eor	r27, r27
    16e8:	66 27       	eor	r22, r22
    16ea:	77 27       	eor	r23, r23
    16ec:	cb 01       	movw	r24, r22
    16ee:	97 f9       	bld	r25, 7
    16f0:	08 95       	ret

000016f2 <__gesf2>:
    16f2:	0e 94 04 0b 	call	0x1608	; 0x1608 <__fp_cmp>
    16f6:	08 f4       	brcc	.+2      	; 0x16fa <__gesf2+0x8>
    16f8:	8f ef       	ldi	r24, 0xFF	; 255
    16fa:	08 95       	ret

000016fc <__mulsf3>:
    16fc:	0e 94 91 0b 	call	0x1722	; 0x1722 <__mulsf3x>
    1700:	0c 94 3f 0b 	jmp	0x167e	; 0x167e <__fp_round>
    1704:	0e 94 31 0b 	call	0x1662	; 0x1662 <__fp_pscA>
    1708:	38 f0       	brcs	.+14     	; 0x1718 <__mulsf3+0x1c>
    170a:	0e 94 38 0b 	call	0x1670	; 0x1670 <__fp_pscB>
    170e:	20 f0       	brcs	.+8      	; 0x1718 <__mulsf3+0x1c>
    1710:	95 23       	and	r25, r21
    1712:	11 f0       	breq	.+4      	; 0x1718 <__mulsf3+0x1c>
    1714:	0c 94 28 0b 	jmp	0x1650	; 0x1650 <__fp_inf>
    1718:	0c 94 2e 0b 	jmp	0x165c	; 0x165c <__fp_nan>
    171c:	11 24       	eor	r1, r1
    171e:	0c 94 73 0b 	jmp	0x16e6	; 0x16e6 <__fp_szero>

00001722 <__mulsf3x>:
    1722:	0e 94 50 0b 	call	0x16a0	; 0x16a0 <__fp_split3>
    1726:	70 f3       	brcs	.-36     	; 0x1704 <__mulsf3+0x8>

00001728 <__mulsf3_pse>:
    1728:	95 9f       	mul	r25, r21
    172a:	c1 f3       	breq	.-16     	; 0x171c <__mulsf3+0x20>
    172c:	95 0f       	add	r25, r21
    172e:	50 e0       	ldi	r21, 0x00	; 0
    1730:	55 1f       	adc	r21, r21
    1732:	62 9f       	mul	r22, r18
    1734:	f0 01       	movw	r30, r0
    1736:	72 9f       	mul	r23, r18
    1738:	bb 27       	eor	r27, r27
    173a:	f0 0d       	add	r31, r0
    173c:	b1 1d       	adc	r27, r1
    173e:	63 9f       	mul	r22, r19
    1740:	aa 27       	eor	r26, r26
    1742:	f0 0d       	add	r31, r0
    1744:	b1 1d       	adc	r27, r1
    1746:	aa 1f       	adc	r26, r26
    1748:	64 9f       	mul	r22, r20
    174a:	66 27       	eor	r22, r22
    174c:	b0 0d       	add	r27, r0
    174e:	a1 1d       	adc	r26, r1
    1750:	66 1f       	adc	r22, r22
    1752:	82 9f       	mul	r24, r18
    1754:	22 27       	eor	r18, r18
    1756:	b0 0d       	add	r27, r0
    1758:	a1 1d       	adc	r26, r1
    175a:	62 1f       	adc	r22, r18
    175c:	73 9f       	mul	r23, r19
    175e:	b0 0d       	add	r27, r0
    1760:	a1 1d       	adc	r26, r1
    1762:	62 1f       	adc	r22, r18
    1764:	83 9f       	mul	r24, r19
    1766:	a0 0d       	add	r26, r0
    1768:	61 1d       	adc	r22, r1
    176a:	22 1f       	adc	r18, r18
    176c:	74 9f       	mul	r23, r20
    176e:	33 27       	eor	r19, r19
    1770:	a0 0d       	add	r26, r0
    1772:	61 1d       	adc	r22, r1
    1774:	23 1f       	adc	r18, r19
    1776:	84 9f       	mul	r24, r20
    1778:	60 0d       	add	r22, r0
    177a:	21 1d       	adc	r18, r1
    177c:	82 2f       	mov	r24, r18
    177e:	76 2f       	mov	r23, r22
    1780:	6a 2f       	mov	r22, r26
    1782:	11 24       	eor	r1, r1
    1784:	9f 57       	subi	r25, 0x7F	; 127
    1786:	50 40       	sbci	r21, 0x00	; 0
    1788:	9a f0       	brmi	.+38     	; 0x17b0 <__mulsf3_pse+0x88>
    178a:	f1 f0       	breq	.+60     	; 0x17c8 <__mulsf3_pse+0xa0>
    178c:	88 23       	and	r24, r24
    178e:	4a f0       	brmi	.+18     	; 0x17a2 <__mulsf3_pse+0x7a>
    1790:	ee 0f       	add	r30, r30
    1792:	ff 1f       	adc	r31, r31
    1794:	bb 1f       	adc	r27, r27
    1796:	66 1f       	adc	r22, r22
    1798:	77 1f       	adc	r23, r23
    179a:	88 1f       	adc	r24, r24
    179c:	91 50       	subi	r25, 0x01	; 1
    179e:	50 40       	sbci	r21, 0x00	; 0
    17a0:	a9 f7       	brne	.-22     	; 0x178c <__mulsf3_pse+0x64>
    17a2:	9e 3f       	cpi	r25, 0xFE	; 254
    17a4:	51 05       	cpc	r21, r1
    17a6:	80 f0       	brcs	.+32     	; 0x17c8 <__mulsf3_pse+0xa0>
    17a8:	0c 94 28 0b 	jmp	0x1650	; 0x1650 <__fp_inf>
    17ac:	0c 94 73 0b 	jmp	0x16e6	; 0x16e6 <__fp_szero>
    17b0:	5f 3f       	cpi	r21, 0xFF	; 255
    17b2:	e4 f3       	brlt	.-8      	; 0x17ac <__mulsf3_pse+0x84>
    17b4:	98 3e       	cpi	r25, 0xE8	; 232
    17b6:	d4 f3       	brlt	.-12     	; 0x17ac <__mulsf3_pse+0x84>
    17b8:	86 95       	lsr	r24
    17ba:	77 95       	ror	r23
    17bc:	67 95       	ror	r22
    17be:	b7 95       	ror	r27
    17c0:	f7 95       	ror	r31
    17c2:	e7 95       	ror	r30
    17c4:	9f 5f       	subi	r25, 0xFF	; 255
    17c6:	c1 f7       	brne	.-16     	; 0x17b8 <__mulsf3_pse+0x90>
    17c8:	fe 2b       	or	r31, r30
    17ca:	88 0f       	add	r24, r24
    17cc:	91 1d       	adc	r25, r1
    17ce:	96 95       	lsr	r25
    17d0:	87 95       	ror	r24
    17d2:	97 f9       	bld	r25, 7
    17d4:	08 95       	ret

000017d6 <__do_global_dtors>:
    17d6:	10 e0       	ldi	r17, 0x00	; 0
    17d8:	ce e2       	ldi	r28, 0x2E	; 46
    17da:	d0 e0       	ldi	r29, 0x00	; 0
    17dc:	04 c0       	rjmp	.+8      	; 0x17e6 <__do_global_dtors+0x10>
    17de:	fe 01       	movw	r30, r28
    17e0:	0e 94 19 0a 	call	0x1432	; 0x1432 <__tablejump2__>
    17e4:	21 96       	adiw	r28, 0x01	; 1
    17e6:	cf 32       	cpi	r28, 0x2F	; 47
    17e8:	d1 07       	cpc	r29, r17
    17ea:	c9 f7       	brne	.-14     	; 0x17de <__do_global_dtors+0x8>
    17ec:	f8 94       	cli

000017ee <__stop_program>:
    17ee:	ff cf       	rjmp	.-2      	; 0x17ee <__stop_program>
