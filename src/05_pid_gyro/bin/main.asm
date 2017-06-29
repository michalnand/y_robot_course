
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
      4c:	0c 94 fd 06 	jmp	0xdfa	; 0xdfa <__vector_19>
      50:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>

00000054 <__ctors_start>:
      54:	2f 03       	fmul	r18, r23
      56:	25 04       	cpc	r2, r5
      58:	67 07       	cpc	r22, r23
      5a:	fa 08       	sbc	r15, r10

0000005c <__ctors_end>:
      5c:	fe 08       	sbc	r15, r14

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
      70:	e8 ee       	ldi	r30, 0xE8	; 232
      72:	f5 e1       	ldi	r31, 0x15	; 21
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
      8a:	a2 3e       	cpi	r26, 0xE2	; 226
      8c:	b2 07       	cpc	r27, r18
      8e:	e1 f7       	brne	.-8      	; 0x88 <.do_clear_bss_loop>

00000090 <__do_global_ctors>:
      90:	10 e0       	ldi	r17, 0x00	; 0
      92:	ce e2       	ldi	r28, 0x2E	; 46
      94:	d0 e0       	ldi	r29, 0x00	; 0
      96:	04 c0       	rjmp	.+8      	; 0xa0 <__do_global_ctors+0x10>
      98:	21 97       	sbiw	r28, 0x01	; 1
      9a:	fe 01       	movw	r30, r28
      9c:	0e 94 43 09 	call	0x1286	; 0x1286 <__tablejump2__>
      a0:	ca 32       	cpi	r28, 0x2A	; 42
      a2:	d1 07       	cpc	r29, r17
      a4:	c9 f7       	brne	.-14     	; 0x98 <__do_global_ctors+0x8>
      a6:	0e 94 fd 03 	call	0x7fa	; 0x7fa <main>
      aa:	0c 94 e7 0a 	jmp	0x15ce	; 0x15ce <__do_global_dtors>

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

0000015c <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE9write_regEhhh>:
     15c:	0f 93       	push	r16
     15e:	1f 93       	push	r17
     160:	cf 93       	push	r28
     162:	df 93       	push	r29
     164:	00 d0       	rcall	.+0      	; 0x166 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE9write_regEhhh+0xa>
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

000001da <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE15write_reg_16bitEhhj>:
     1da:	0f 93       	push	r16
     1dc:	1f 93       	push	r17
     1de:	cf 93       	push	r28
     1e0:	df 93       	push	r29
     1e2:	00 d0       	rcall	.+0      	; 0x1e4 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE15write_reg_16bitEhhj+0xa>
     1e4:	00 d0       	rcall	.+0      	; 0x1e6 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE15write_reg_16bitEhhj+0xc>
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

00000270 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE15write_reg_multiEhhPhj>:
     270:	cf 92       	push	r12
     272:	df 92       	push	r13
     274:	ef 92       	push	r14
     276:	ff 92       	push	r15
     278:	0f 93       	push	r16
     27a:	1f 93       	push	r17
     27c:	cf 93       	push	r28
     27e:	df 93       	push	r29
     280:	00 d0       	rcall	.+0      	; 0x282 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE15write_reg_multiEhhPhj+0x12>
     282:	00 d0       	rcall	.+0      	; 0x284 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE15write_reg_multiEhhPhj+0x14>
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
     2dc:	49 f0       	breq	.+18     	; 0x2f0 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE15write_reg_multiEhhPhj+0x80>
     2de:	d7 01       	movw	r26, r14
     2e0:	6d 91       	ld	r22, X+
     2e2:	7d 01       	movw	r14, r26
     2e4:	04 80       	ldd	r0, Z+4	; 0x04
     2e6:	f5 81       	ldd	r31, Z+5	; 0x05
     2e8:	e0 2d       	mov	r30, r0
     2ea:	c6 01       	movw	r24, r12
     2ec:	09 95       	icall
     2ee:	f1 cf       	rjmp	.-30     	; 0x2d2 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE15write_reg_multiEhhPhj+0x62>
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

00000312 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE8read_regEhh>:
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

000003b4 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE14read_reg_16bitEhh>:
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

00000474 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE14read_reg_multiEhhPhj>:
     474:	cf 92       	push	r12
     476:	df 92       	push	r13
     478:	ef 92       	push	r14
     47a:	ff 92       	push	r15
     47c:	0f 93       	push	r16
     47e:	1f 93       	push	r17
     480:	cf 93       	push	r28
     482:	df 93       	push	r29
     484:	00 d0       	rcall	.+0      	; 0x486 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE14read_reg_multiEhhPhj+0x12>
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
     504:	51 f0       	breq	.+20     	; 0x51a <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE14read_reg_multiEhhPhj+0xa6>
     506:	06 80       	ldd	r0, Z+6	; 0x06
     508:	f7 81       	ldd	r31, Z+7	; 0x07
     50a:	e0 2d       	mov	r30, r0
     50c:	61 e0       	ldi	r22, 0x01	; 1
     50e:	c6 01       	movw	r24, r12
     510:	09 95       	icall
     512:	f7 01       	movw	r30, r14
     514:	81 93       	st	Z+, r24
     516:	7f 01       	movw	r14, r30
     518:	f0 cf       	rjmp	.-32     	; 0x4fa <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE14read_reg_multiEhhPhj+0x86>
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

0000054e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>:
     54e:	84 e1       	ldi	r24, 0x14	; 20
     550:	00 00       	nop
     552:	81 50       	subi	r24, 0x01	; 1
     554:	e9 f7       	brne	.-6      	; 0x550 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6+0x2>
     556:	08 95       	ret

00000558 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE4readEh>:
     558:	1f 93       	push	r17
     55a:	cf 93       	push	r28
     55c:	df 93       	push	r29
     55e:	16 2f       	mov	r17, r22
     560:	bd 98       	cbi	0x17, 5	; 23
     562:	80 e0       	ldi	r24, 0x00	; 0
     564:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     568:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     56c:	d8 e0       	ldi	r29, 0x08	; 8
     56e:	c0 e0       	ldi	r28, 0x00	; 0
     570:	cc 0f       	add	r28, r28
     572:	81 e0       	ldi	r24, 0x01	; 1
     574:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     578:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     57c:	b5 99       	sbic	0x16, 5	; 22
     57e:	c1 60       	ori	r28, 0x01	; 1
     580:	80 e0       	ldi	r24, 0x00	; 0
     582:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     586:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     58a:	d1 50       	subi	r29, 0x01	; 1
     58c:	89 f7       	brne	.-30     	; 0x570 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE4readEh+0x18>
     58e:	11 23       	and	r17, r17
     590:	11 f0       	breq	.+4      	; 0x596 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE4readEh+0x3e>
     592:	bd 9a       	sbi	0x17, 5	; 23
     594:	01 c0       	rjmp	.+2      	; 0x598 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE4readEh+0x40>
     596:	bd 98       	cbi	0x17, 5	; 23
     598:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     59c:	81 e0       	ldi	r24, 0x01	; 1
     59e:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5a2:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     5a6:	80 e0       	ldi	r24, 0x00	; 0
     5a8:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5ac:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     5b0:	bd 98       	cbi	0x17, 5	; 23
     5b2:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     5b6:	8c 2f       	mov	r24, r28
     5b8:	df 91       	pop	r29
     5ba:	cf 91       	pop	r28
     5bc:	1f 91       	pop	r17
     5be:	08 95       	ret

000005c0 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5writeEh>:
     5c0:	cf 93       	push	r28
     5c2:	df 93       	push	r29
     5c4:	d6 2f       	mov	r29, r22
     5c6:	c8 e0       	ldi	r28, 0x08	; 8
     5c8:	80 e0       	ldi	r24, 0x00	; 0
     5ca:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5ce:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     5d2:	d7 ff       	sbrs	r29, 7
     5d4:	02 c0       	rjmp	.+4      	; 0x5da <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5writeEh+0x1a>
     5d6:	bd 98       	cbi	0x17, 5	; 23
     5d8:	01 c0       	rjmp	.+2      	; 0x5dc <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5writeEh+0x1c>
     5da:	bd 9a       	sbi	0x17, 5	; 23
     5dc:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     5e0:	81 e0       	ldi	r24, 0x01	; 1
     5e2:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5e6:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     5ea:	dd 0f       	add	r29, r29
     5ec:	c1 50       	subi	r28, 0x01	; 1
     5ee:	61 f7       	brne	.-40     	; 0x5c8 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5writeEh+0x8>
     5f0:	80 e0       	ldi	r24, 0x00	; 0
     5f2:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     5f6:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     5fa:	bd 98       	cbi	0x17, 5	; 23
     5fc:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     600:	81 e0       	ldi	r24, 0x01	; 1
     602:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     606:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     60a:	c6 b3       	in	r28, 0x16	; 22
     60c:	80 e0       	ldi	r24, 0x00	; 0
     60e:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     612:	0e 94 a7 02 	call	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>
     616:	c5 fb       	bst	r28, 5
     618:	cc 27       	eor	r28, r28
     61a:	c0 f9       	bld	r28, 0
     61c:	81 e0       	ldi	r24, 0x01	; 1
     61e:	8c 27       	eor	r24, r28
     620:	df 91       	pop	r29
     622:	cf 91       	pop	r28
     624:	08 95       	ret

00000626 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5startEv>:
     626:	81 e0       	ldi	r24, 0x01	; 1
     628:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     62c:	bd 98       	cbi	0x17, 5	; 23
     62e:	81 e0       	ldi	r24, 0x01	; 1
     630:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     634:	bd 9a       	sbi	0x17, 5	; 23
     636:	80 e0       	ldi	r24, 0x00	; 0
     638:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     63c:	bd 98       	cbi	0x17, 5	; 23
     63e:	0c 94 a7 02 	jmp	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>

00000642 <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE4stopEv>:
     642:	80 e0       	ldi	r24, 0x00	; 0
     644:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     648:	bd 9a       	sbi	0x17, 5	; 23
     64a:	81 e0       	ldi	r24, 0x01	; 1
     64c:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     650:	bd 9a       	sbi	0x17, 5	; 23
     652:	81 e0       	ldi	r24, 0x01	; 1
     654:	0e 94 9d 02 	call	0x53a	; 0x53a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     658:	bd 98       	cbi	0x17, 5	; 23
     65a:	0c 94 a7 02 	jmp	0x54e	; 0x54e <_ZN4TI2CILh1ELh5ELh7ELh20ELh1EE5delayEv.isra.6>

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

00000678 <_Z5blinkv>:
     678:	80 91 9a 00 	lds	r24, 0x009A
     67c:	90 91 9b 00 	lds	r25, 0x009B
     680:	00 97       	sbiw	r24, 0x00	; 0
     682:	19 f0       	breq	.+6      	; 0x68a <_Z5blinkv+0x12>
     684:	01 97       	sbiw	r24, 0x01	; 1
     686:	49 f0       	breq	.+18     	; 0x69a <_Z5blinkv+0x22>
     688:	08 95       	ret
     68a:	dd 9a       	sbi	0x1b, 5	; 27
     68c:	81 e0       	ldi	r24, 0x01	; 1
     68e:	90 e0       	ldi	r25, 0x00	; 0
     690:	90 93 9b 00 	sts	0x009B, r25
     694:	80 93 9a 00 	sts	0x009A, r24
     698:	08 95       	ret
     69a:	dd 98       	cbi	0x1b, 5	; 27
     69c:	10 92 9b 00 	sts	0x009B, r1
     6a0:	10 92 9a 00 	sts	0x009A, r1
     6a4:	08 95       	ret

000006a6 <_Z12gyro_exampleb>:
     6a6:	cf 93       	push	r28
     6a8:	df 93       	push	r29
     6aa:	cd b7       	in	r28, 0x3d	; 61
     6ac:	de b7       	in	r29, 0x3e	; 62
     6ae:	ae 97       	sbiw	r28, 0x2e	; 46
     6b0:	0f b6       	in	r0, 0x3f	; 63
     6b2:	f8 94       	cli
     6b4:	de bf       	out	0x3e, r29	; 62
     6b6:	0f be       	out	0x3f, r0	; 63
     6b8:	cd bf       	out	0x3d, r28	; 61
     6ba:	8c a7       	std	Y+44, r24	; 0x2c
     6bc:	ce 01       	movw	r24, r28
     6be:	87 96       	adiw	r24, 0x27	; 39
     6c0:	0e 94 6a 00 	call	0xd4	; 0xd4 <_ZN6CMotorC1Ev>
     6c4:	9e 01       	movw	r18, r28
     6c6:	2f 5f       	subi	r18, 0xFF	; 255
     6c8:	3f 4f       	sbci	r19, 0xFF	; 255
     6ca:	59 01       	movw	r10, r18
     6cc:	c9 01       	movw	r24, r18
     6ce:	0e 94 27 04 	call	0x84e	; 0x84e <_ZN5CGyroC1Ev>
     6d2:	66 e9       	ldi	r22, 0x96	; 150
     6d4:	70 e0       	ldi	r23, 0x00	; 0
     6d6:	c5 01       	movw	r24, r10
     6d8:	0e 94 73 05 	call	0xae6	; 0xae6 <_ZN5CGyro4initEP14CI2C_Interface>
     6dc:	c1 2c       	mov	r12, r1
     6de:	d1 2c       	mov	r13, r1
     6e0:	76 01       	movw	r14, r12
     6e2:	18 a6       	std	Y+40, r1	; 0x28
     6e4:	19 a6       	std	Y+41, r1	; 0x29
     6e6:	1a a6       	std	Y+42, r1	; 0x2a
     6e8:	1b a6       	std	Y+43, r1	; 0x2b
     6ea:	00 e0       	ldi	r16, 0x00	; 0
     6ec:	10 e0       	ldi	r17, 0x00	; 0
     6ee:	21 2c       	mov	r2, r1
     6f0:	31 2c       	mov	r3, r1
     6f2:	ad a6       	std	Y+45, r10	; 0x2d
     6f4:	be a6       	std	Y+46, r11	; 0x2e
     6f6:	60 e0       	ldi	r22, 0x00	; 0
     6f8:	8d a5       	ldd	r24, Y+45	; 0x2d
     6fa:	9e a5       	ldd	r25, Y+46	; 0x2e
     6fc:	0e 94 28 04 	call	0x850	; 0x850 <_ZN5CGyro4readEb>
     700:	3c a5       	ldd	r19, Y+44	; 0x2c
     702:	33 23       	and	r19, r19
     704:	c1 f0       	breq	.+48     	; 0x736 <_Z12gyro_exampleb+0x90>
     706:	8d 89       	ldd	r24, Y+21	; 0x15
     708:	9e 89       	ldd	r25, Y+22	; 0x16
     70a:	af 89       	ldd	r26, Y+23	; 0x17
     70c:	b8 8d       	ldd	r27, Y+24	; 0x18
     70e:	9c 01       	movw	r18, r24
     710:	ad 01       	movw	r20, r26
     712:	66 27       	eor	r22, r22
     714:	77 27       	eor	r23, r23
     716:	cb 01       	movw	r24, r22
     718:	62 1b       	sub	r22, r18
     71a:	73 0b       	sbc	r23, r19
     71c:	84 0b       	sbc	r24, r20
     71e:	95 0b       	sbc	r25, r21
     720:	0e 94 ee 09 	call	0x13dc	; 0x13dc <__floatsisf>
     724:	2d ec       	ldi	r18, 0xCD	; 205
     726:	3c ec       	ldi	r19, 0xCC	; 204
     728:	4c ec       	ldi	r20, 0xCC	; 204
     72a:	5d e3       	ldi	r21, 0x3D	; 61
     72c:	0e 94 7a 0a 	call	0x14f4	; 0x14f4 <__mulsf3>
     730:	9b 01       	movw	r18, r22
     732:	ac 01       	movw	r20, r24
     734:	03 c0       	rjmp	.+6      	; 0x73c <_Z12gyro_exampleb+0x96>
     736:	20 e0       	ldi	r18, 0x00	; 0
     738:	30 e0       	ldi	r19, 0x00	; 0
     73a:	a9 01       	movw	r20, r18
     73c:	60 e0       	ldi	r22, 0x00	; 0
     73e:	70 e0       	ldi	r23, 0x00	; 0
     740:	cb 01       	movw	r24, r22
     742:	0e 94 49 09 	call	0x1292	; 0x1292 <__subsf3>
     746:	4b 01       	movw	r8, r22
     748:	5c 01       	movw	r10, r24
     74a:	20 e0       	ldi	r18, 0x00	; 0
     74c:	30 e0       	ldi	r19, 0x00	; 0
     74e:	44 e0       	ldi	r20, 0x04	; 4
     750:	52 e4       	ldi	r21, 0x42	; 66
     752:	0e 94 7a 0a 	call	0x14f4	; 0x14f4 <__mulsf3>
     756:	2b 01       	movw	r4, r22
     758:	3c 01       	movw	r6, r24
     75a:	20 e0       	ldi	r18, 0x00	; 0
     75c:	30 e0       	ldi	r19, 0x00	; 0
     75e:	4c e7       	ldi	r20, 0x7C	; 124
     760:	52 ec       	ldi	r21, 0xC2	; 194
     762:	b8 01       	movw	r22, r16
     764:	c1 01       	movw	r24, r2
     766:	0e 94 7a 0a 	call	0x14f4	; 0x14f4 <__mulsf3>
     76a:	9b 01       	movw	r18, r22
     76c:	ac 01       	movw	r20, r24
     76e:	c3 01       	movw	r24, r6
     770:	b2 01       	movw	r22, r4
     772:	0e 94 4a 09 	call	0x1294	; 0x1294 <__addsf3>
     776:	2b 01       	movw	r4, r22
     778:	3c 01       	movw	r6, r24
     77a:	20 e0       	ldi	r18, 0x00	; 0
     77c:	30 e0       	ldi	r19, 0x00	; 0
     77e:	40 ef       	ldi	r20, 0xF0	; 240
     780:	51 e4       	ldi	r21, 0x41	; 65
     782:	68 a5       	ldd	r22, Y+40	; 0x28
     784:	79 a5       	ldd	r23, Y+41	; 0x29
     786:	8a a5       	ldd	r24, Y+42	; 0x2a
     788:	9b a5       	ldd	r25, Y+43	; 0x2b
     78a:	0e 94 7a 0a 	call	0x14f4	; 0x14f4 <__mulsf3>
     78e:	9b 01       	movw	r18, r22
     790:	ac 01       	movw	r20, r24
     792:	c3 01       	movw	r24, r6
     794:	b2 01       	movw	r22, r4
     796:	0e 94 4a 09 	call	0x1294	; 0x1294 <__addsf3>
     79a:	9b 01       	movw	r18, r22
     79c:	ac 01       	movw	r20, r24
     79e:	c7 01       	movw	r24, r14
     7a0:	b6 01       	movw	r22, r12
     7a2:	0e 94 4a 09 	call	0x1294	; 0x1294 <__addsf3>
     7a6:	6b 01       	movw	r12, r22
     7a8:	7c 01       	movw	r14, r24
     7aa:	9b 01       	movw	r18, r22
     7ac:	ac 01       	movw	r20, r24
     7ae:	60 e0       	ldi	r22, 0x00	; 0
     7b0:	70 e0       	ldi	r23, 0x00	; 0
     7b2:	cb 01       	movw	r24, r22
     7b4:	0e 94 49 09 	call	0x1292	; 0x1292 <__subsf3>
     7b8:	0e 94 b6 09 	call	0x136c	; 0x136c <__fixsfsi>
     7bc:	2b 01       	movw	r4, r22
     7be:	3c 01       	movw	r6, r24
     7c0:	20 e0       	ldi	r18, 0x00	; 0
     7c2:	30 e0       	ldi	r19, 0x00	; 0
     7c4:	a9 01       	movw	r20, r18
     7c6:	c7 01       	movw	r24, r14
     7c8:	b6 01       	movw	r22, r12
     7ca:	0e 94 4a 09 	call	0x1294	; 0x1294 <__addsf3>
     7ce:	0e 94 b6 09 	call	0x136c	; 0x136c <__fixsfsi>
     7d2:	a2 01       	movw	r20, r4
     7d4:	ce 01       	movw	r24, r28
     7d6:	87 96       	adiw	r24, 0x27	; 39
     7d8:	0e 94 76 00 	call	0xec	; 0xec <_ZN6CMotor3runEii>
     7dc:	42 e0       	ldi	r20, 0x02	; 2
     7de:	50 e0       	ldi	r21, 0x00	; 0
     7e0:	60 e0       	ldi	r22, 0x00	; 0
     7e2:	70 e0       	ldi	r23, 0x00	; 0
     7e4:	80 ee       	ldi	r24, 0xE0	; 224
     7e6:	90 e0       	ldi	r25, 0x00	; 0
     7e8:	0e 94 c9 06 	call	0xd92	; 0xd92 <_ZN6CTimer8delay_msEm>
     7ec:	08 a7       	std	Y+40, r16	; 0x28
     7ee:	19 a7       	std	Y+41, r17	; 0x29
     7f0:	2a a6       	std	Y+42, r2	; 0x2a
     7f2:	3b a6       	std	Y+43, r3	; 0x2b
     7f4:	84 01       	movw	r16, r8
     7f6:	15 01       	movw	r2, r10
     7f8:	7e cf       	rjmp	.-260    	; 0x6f6 <_Z12gyro_exampleb+0x50>

000007fa <main>:
     7fa:	bb 98       	cbi	0x17, 3	; 23
     7fc:	c3 9a       	sbi	0x18, 3	; 24
     7fe:	ba 98       	cbi	0x17, 2	; 23
     800:	c2 9a       	sbi	0x18, 2	; 24
     802:	20 e0       	ldi	r18, 0x00	; 0
     804:	48 ec       	ldi	r20, 0xC8	; 200
     806:	50 e0       	ldi	r21, 0x00	; 0
     808:	6c e3       	ldi	r22, 0x3C	; 60
     80a:	73 e0       	ldi	r23, 0x03	; 3
     80c:	80 ee       	ldi	r24, 0xE0	; 224
     80e:	90 e0       	ldi	r25, 0x00	; 0
     810:	0e 94 84 06 	call	0xd08	; 0xd08 <_ZN6CTimer8add_taskEPFvvEjb>
     814:	83 e8       	ldi	r24, 0x83	; 131
     816:	90 e0       	ldi	r25, 0x00	; 0
     818:	9f 93       	push	r25
     81a:	8f 93       	push	r24
     81c:	81 ee       	ldi	r24, 0xE1	; 225
     81e:	90 e0       	ldi	r25, 0x00	; 0
     820:	9f 93       	push	r25
     822:	8f 93       	push	r24
     824:	0e 94 76 08 	call	0x10ec	; 0x10ec <_ZN9CTerminal6printfEPKcz>
     828:	0f 90       	pop	r0
     82a:	0f 90       	pop	r0
     82c:	0f 90       	pop	r0
     82e:	0f 90       	pop	r0
     830:	b3 9b       	sbis	0x16, 3	; 22
     832:	04 c0       	rjmp	.+8      	; 0x83c <main+0x42>
     834:	b2 9b       	sbis	0x16, 2	; 22
     836:	02 c0       	rjmp	.+4      	; 0x83c <main+0x42>
     838:	00 00       	nop
     83a:	fa cf       	rjmp	.-12     	; 0x830 <main+0x36>
     83c:	b3 99       	sbic	0x16, 3	; 22
     83e:	03 c0       	rjmp	.+6      	; 0x846 <main+0x4c>
     840:	81 e0       	ldi	r24, 0x01	; 1
     842:	0e 94 53 03 	call	0x6a6	; 0x6a6 <_Z12gyro_exampleb>
     846:	80 e0       	ldi	r24, 0x00	; 0
     848:	fc cf       	rjmp	.-8      	; 0x842 <main+0x48>

0000084a <_GLOBAL__sub_I_led1>:
     84a:	d5 9a       	sbi	0x1a, 5	; 26
     84c:	08 95       	ret

0000084e <_ZN5CGyroC1Ev>:
     84e:	08 95       	ret

00000850 <_ZN5CGyro4readEb>:
     850:	4f 92       	push	r4
     852:	5f 92       	push	r5
     854:	6f 92       	push	r6
     856:	7f 92       	push	r7
     858:	8f 92       	push	r8
     85a:	9f 92       	push	r9
     85c:	af 92       	push	r10
     85e:	bf 92       	push	r11
     860:	cf 92       	push	r12
     862:	df 92       	push	r13
     864:	ef 92       	push	r14
     866:	ff 92       	push	r15
     868:	0f 93       	push	r16
     86a:	1f 93       	push	r17
     86c:	cf 93       	push	r28
     86e:	df 93       	push	r29
     870:	ec 01       	movw	r28, r24
     872:	b6 2e       	mov	r11, r22
     874:	8c a1       	ldd	r24, Y+36	; 0x24
     876:	9d a1       	ldd	r25, Y+37	; 0x25
     878:	dc 01       	movw	r26, r24
     87a:	ed 91       	ld	r30, X+
     87c:	fc 91       	ld	r31, X
     87e:	01 90       	ld	r0, Z+
     880:	f0 81       	ld	r31, Z
     882:	e0 2d       	mov	r30, r0
     884:	09 95       	icall
     886:	8c a1       	ldd	r24, Y+36	; 0x24
     888:	9d a1       	ldd	r25, Y+37	; 0x25
     88a:	dc 01       	movw	r26, r24
     88c:	ed 91       	ld	r30, X+
     88e:	fc 91       	ld	r31, X
     890:	04 80       	ldd	r0, Z+4	; 0x04
     892:	f5 81       	ldd	r31, Z+5	; 0x05
     894:	e0 2d       	mov	r30, r0
     896:	60 ed       	ldi	r22, 0xD0	; 208
     898:	09 95       	icall
     89a:	8c a1       	ldd	r24, Y+36	; 0x24
     89c:	9d a1       	ldd	r25, Y+37	; 0x25
     89e:	dc 01       	movw	r26, r24
     8a0:	ed 91       	ld	r30, X+
     8a2:	fc 91       	ld	r31, X
     8a4:	04 80       	ldd	r0, Z+4	; 0x04
     8a6:	f5 81       	ldd	r31, Z+5	; 0x05
     8a8:	e0 2d       	mov	r30, r0
     8aa:	63 e4       	ldi	r22, 0x43	; 67
     8ac:	09 95       	icall
     8ae:	8c a1       	ldd	r24, Y+36	; 0x24
     8b0:	9d a1       	ldd	r25, Y+37	; 0x25
     8b2:	dc 01       	movw	r26, r24
     8b4:	ed 91       	ld	r30, X+
     8b6:	fc 91       	ld	r31, X
     8b8:	02 80       	ldd	r0, Z+2	; 0x02
     8ba:	f3 81       	ldd	r31, Z+3	; 0x03
     8bc:	e0 2d       	mov	r30, r0
     8be:	09 95       	icall
     8c0:	8c a1       	ldd	r24, Y+36	; 0x24
     8c2:	9d a1       	ldd	r25, Y+37	; 0x25
     8c4:	dc 01       	movw	r26, r24
     8c6:	ed 91       	ld	r30, X+
     8c8:	fc 91       	ld	r31, X
     8ca:	01 90       	ld	r0, Z+
     8cc:	f0 81       	ld	r31, Z
     8ce:	e0 2d       	mov	r30, r0
     8d0:	09 95       	icall
     8d2:	8c a1       	ldd	r24, Y+36	; 0x24
     8d4:	9d a1       	ldd	r25, Y+37	; 0x25
     8d6:	dc 01       	movw	r26, r24
     8d8:	ed 91       	ld	r30, X+
     8da:	fc 91       	ld	r31, X
     8dc:	04 80       	ldd	r0, Z+4	; 0x04
     8de:	f5 81       	ldd	r31, Z+5	; 0x05
     8e0:	e0 2d       	mov	r30, r0
     8e2:	61 ed       	ldi	r22, 0xD1	; 209
     8e4:	09 95       	icall
     8e6:	8c a1       	ldd	r24, Y+36	; 0x24
     8e8:	9d a1       	ldd	r25, Y+37	; 0x25
     8ea:	dc 01       	movw	r26, r24
     8ec:	ed 91       	ld	r30, X+
     8ee:	fc 91       	ld	r31, X
     8f0:	06 80       	ldd	r0, Z+6	; 0x06
     8f2:	f7 81       	ldd	r31, Z+7	; 0x07
     8f4:	e0 2d       	mov	r30, r0
     8f6:	61 e0       	ldi	r22, 0x01	; 1
     8f8:	09 95       	icall
     8fa:	08 2f       	mov	r16, r24
     8fc:	8c a1       	ldd	r24, Y+36	; 0x24
     8fe:	9d a1       	ldd	r25, Y+37	; 0x25
     900:	dc 01       	movw	r26, r24
     902:	ed 91       	ld	r30, X+
     904:	fc 91       	ld	r31, X
     906:	06 80       	ldd	r0, Z+6	; 0x06
     908:	f7 81       	ldd	r31, Z+7	; 0x07
     90a:	e0 2d       	mov	r30, r0
     90c:	61 e0       	ldi	r22, 0x01	; 1
     90e:	09 95       	icall
     910:	10 e0       	ldi	r17, 0x00	; 0
     912:	10 2f       	mov	r17, r16
     914:	00 27       	eor	r16, r16
     916:	08 2b       	or	r16, r24
     918:	8c a1       	ldd	r24, Y+36	; 0x24
     91a:	9d a1       	ldd	r25, Y+37	; 0x25
     91c:	dc 01       	movw	r26, r24
     91e:	ed 91       	ld	r30, X+
     920:	fc 91       	ld	r31, X
     922:	06 80       	ldd	r0, Z+6	; 0x06
     924:	f7 81       	ldd	r31, Z+7	; 0x07
     926:	e0 2d       	mov	r30, r0
     928:	61 e0       	ldi	r22, 0x01	; 1
     92a:	09 95       	icall
     92c:	e8 2e       	mov	r14, r24
     92e:	8c a1       	ldd	r24, Y+36	; 0x24
     930:	9d a1       	ldd	r25, Y+37	; 0x25
     932:	dc 01       	movw	r26, r24
     934:	ed 91       	ld	r30, X+
     936:	fc 91       	ld	r31, X
     938:	06 80       	ldd	r0, Z+6	; 0x06
     93a:	f7 81       	ldd	r31, Z+7	; 0x07
     93c:	e0 2d       	mov	r30, r0
     93e:	61 e0       	ldi	r22, 0x01	; 1
     940:	09 95       	icall
     942:	f1 2c       	mov	r15, r1
     944:	fe 2c       	mov	r15, r14
     946:	ee 24       	eor	r14, r14
     948:	e8 2a       	or	r14, r24
     94a:	8c a1       	ldd	r24, Y+36	; 0x24
     94c:	9d a1       	ldd	r25, Y+37	; 0x25
     94e:	dc 01       	movw	r26, r24
     950:	ed 91       	ld	r30, X+
     952:	fc 91       	ld	r31, X
     954:	06 80       	ldd	r0, Z+6	; 0x06
     956:	f7 81       	ldd	r31, Z+7	; 0x07
     958:	e0 2d       	mov	r30, r0
     95a:	61 e0       	ldi	r22, 0x01	; 1
     95c:	09 95       	icall
     95e:	c8 2e       	mov	r12, r24
     960:	8c a1       	ldd	r24, Y+36	; 0x24
     962:	9d a1       	ldd	r25, Y+37	; 0x25
     964:	dc 01       	movw	r26, r24
     966:	ed 91       	ld	r30, X+
     968:	fc 91       	ld	r31, X
     96a:	06 80       	ldd	r0, Z+6	; 0x06
     96c:	f7 81       	ldd	r31, Z+7	; 0x07
     96e:	e0 2d       	mov	r30, r0
     970:	60 e0       	ldi	r22, 0x00	; 0
     972:	09 95       	icall
     974:	d1 2c       	mov	r13, r1
     976:	dc 2c       	mov	r13, r12
     978:	cc 24       	eor	r12, r12
     97a:	c8 2a       	or	r12, r24
     97c:	8c a1       	ldd	r24, Y+36	; 0x24
     97e:	9d a1       	ldd	r25, Y+37	; 0x25
     980:	dc 01       	movw	r26, r24
     982:	ed 91       	ld	r30, X+
     984:	fc 91       	ld	r31, X
     986:	02 80       	ldd	r0, Z+2	; 0x02
     988:	f3 81       	ldd	r31, Z+3	; 0x03
     98a:	e0 2d       	mov	r30, r0
     98c:	09 95       	icall
     98e:	c8 01       	movw	r24, r16
     990:	11 0f       	add	r17, r17
     992:	aa 0b       	sbc	r26, r26
     994:	bb 0b       	sbc	r27, r27
     996:	27 01       	movw	r4, r14
     998:	ff 0c       	add	r15, r15
     99a:	66 08       	sbc	r6, r6
     99c:	77 08       	sbc	r7, r7
     99e:	0d 2c       	mov	r0, r13
     9a0:	00 0c       	add	r0, r0
     9a2:	ee 08       	sbc	r14, r14
     9a4:	ff 08       	sbc	r15, r15
     9a6:	bb 20       	and	r11, r11
     9a8:	21 f1       	breq	.+72     	; 0x9f2 <_ZN5CGyro4readEb+0x1a2>
     9aa:	08 8d       	ldd	r16, Y+24	; 0x18
     9ac:	19 8d       	ldd	r17, Y+25	; 0x19
     9ae:	2a 8d       	ldd	r18, Y+26	; 0x1a
     9b0:	3b 8d       	ldd	r19, Y+27	; 0x1b
     9b2:	08 0f       	add	r16, r24
     9b4:	19 1f       	adc	r17, r25
     9b6:	2a 1f       	adc	r18, r26
     9b8:	3b 1f       	adc	r19, r27
     9ba:	08 8f       	std	Y+24, r16	; 0x18
     9bc:	19 8f       	std	Y+25, r17	; 0x19
     9be:	2a 8f       	std	Y+26, r18	; 0x1a
     9c0:	3b 8f       	std	Y+27, r19	; 0x1b
     9c2:	0c 8d       	ldd	r16, Y+28	; 0x1c
     9c4:	1d 8d       	ldd	r17, Y+29	; 0x1d
     9c6:	2e 8d       	ldd	r18, Y+30	; 0x1e
     9c8:	3f 8d       	ldd	r19, Y+31	; 0x1f
     9ca:	04 0d       	add	r16, r4
     9cc:	15 1d       	adc	r17, r5
     9ce:	26 1d       	adc	r18, r6
     9d0:	37 1d       	adc	r19, r7
     9d2:	0c 8f       	std	Y+28, r16	; 0x1c
     9d4:	1d 8f       	std	Y+29, r17	; 0x1d
     9d6:	2e 8f       	std	Y+30, r18	; 0x1e
     9d8:	3f 8f       	std	Y+31, r19	; 0x1f
     9da:	08 a1       	ldd	r16, Y+32	; 0x20
     9dc:	19 a1       	ldd	r17, Y+33	; 0x21
     9de:	2a a1       	ldd	r18, Y+34	; 0x22
     9e0:	3b a1       	ldd	r19, Y+35	; 0x23
     9e2:	0c 0d       	add	r16, r12
     9e4:	1d 1d       	adc	r17, r13
     9e6:	2e 1d       	adc	r18, r14
     9e8:	3f 1d       	adc	r19, r15
     9ea:	08 a3       	std	Y+32, r16	; 0x20
     9ec:	19 a3       	std	Y+33, r17	; 0x21
     9ee:	2a a3       	std	Y+34, r18	; 0x22
     9f0:	3b a3       	std	Y+35, r19	; 0x23
     9f2:	08 8d       	ldd	r16, Y+24	; 0x18
     9f4:	19 8d       	ldd	r17, Y+25	; 0x19
     9f6:	2a 8d       	ldd	r18, Y+26	; 0x1a
     9f8:	3b 8d       	ldd	r19, Y+27	; 0x1b
     9fa:	bc 01       	movw	r22, r24
     9fc:	cd 01       	movw	r24, r26
     9fe:	60 1b       	sub	r22, r16
     a00:	71 0b       	sbc	r23, r17
     a02:	82 0b       	sbc	r24, r18
     a04:	93 0b       	sbc	r25, r19
     a06:	68 83       	st	Y, r22
     a08:	79 83       	std	Y+1, r23	; 0x01
     a0a:	8a 83       	std	Y+2, r24	; 0x02
     a0c:	9b 83       	std	Y+3, r25	; 0x03
     a0e:	0c 8d       	ldd	r16, Y+28	; 0x1c
     a10:	1d 8d       	ldd	r17, Y+29	; 0x1d
     a12:	2e 8d       	ldd	r18, Y+30	; 0x1e
     a14:	3f 8d       	ldd	r19, Y+31	; 0x1f
     a16:	53 01       	movw	r10, r6
     a18:	42 01       	movw	r8, r4
     a1a:	80 1a       	sub	r8, r16
     a1c:	91 0a       	sbc	r9, r17
     a1e:	a2 0a       	sbc	r10, r18
     a20:	b3 0a       	sbc	r11, r19
     a22:	8c 82       	std	Y+4, r8	; 0x04
     a24:	9d 82       	std	Y+5, r9	; 0x05
     a26:	ae 82       	std	Y+6, r10	; 0x06
     a28:	bf 82       	std	Y+7, r11	; 0x07
     a2a:	08 a1       	ldd	r16, Y+32	; 0x20
     a2c:	19 a1       	ldd	r17, Y+33	; 0x21
     a2e:	2a a1       	ldd	r18, Y+34	; 0x22
     a30:	3b a1       	ldd	r19, Y+35	; 0x23
     a32:	c0 1a       	sub	r12, r16
     a34:	d1 0a       	sbc	r13, r17
     a36:	e2 0a       	sbc	r14, r18
     a38:	f3 0a       	sbc	r15, r19
     a3a:	c8 86       	std	Y+8, r12	; 0x08
     a3c:	d9 86       	std	Y+9, r13	; 0x09
     a3e:	ea 86       	std	Y+10, r14	; 0x0a
     a40:	fb 86       	std	Y+11, r15	; 0x0b
     a42:	24 e6       	ldi	r18, 0x64	; 100
     a44:	42 2e       	mov	r4, r18
     a46:	51 2c       	mov	r5, r1
     a48:	61 2c       	mov	r6, r1
     a4a:	71 2c       	mov	r7, r1
     a4c:	a3 01       	movw	r20, r6
     a4e:	92 01       	movw	r18, r4
     a50:	0e 94 24 09 	call	0x1248	; 0x1248 <__divmodsi4>
     a54:	8c 85       	ldd	r24, Y+12	; 0x0c
     a56:	9d 85       	ldd	r25, Y+13	; 0x0d
     a58:	ae 85       	ldd	r26, Y+14	; 0x0e
     a5a:	bf 85       	ldd	r27, Y+15	; 0x0f
     a5c:	82 0f       	add	r24, r18
     a5e:	93 1f       	adc	r25, r19
     a60:	a4 1f       	adc	r26, r20
     a62:	b5 1f       	adc	r27, r21
     a64:	8c 87       	std	Y+12, r24	; 0x0c
     a66:	9d 87       	std	Y+13, r25	; 0x0d
     a68:	ae 87       	std	Y+14, r26	; 0x0e
     a6a:	bf 87       	std	Y+15, r27	; 0x0f
     a6c:	c5 01       	movw	r24, r10
     a6e:	b4 01       	movw	r22, r8
     a70:	a3 01       	movw	r20, r6
     a72:	92 01       	movw	r18, r4
     a74:	0e 94 24 09 	call	0x1248	; 0x1248 <__divmodsi4>
     a78:	88 89       	ldd	r24, Y+16	; 0x10
     a7a:	99 89       	ldd	r25, Y+17	; 0x11
     a7c:	aa 89       	ldd	r26, Y+18	; 0x12
     a7e:	bb 89       	ldd	r27, Y+19	; 0x13
     a80:	82 0f       	add	r24, r18
     a82:	93 1f       	adc	r25, r19
     a84:	a4 1f       	adc	r26, r20
     a86:	b5 1f       	adc	r27, r21
     a88:	88 8b       	std	Y+16, r24	; 0x10
     a8a:	99 8b       	std	Y+17, r25	; 0x11
     a8c:	aa 8b       	std	Y+18, r26	; 0x12
     a8e:	bb 8b       	std	Y+19, r27	; 0x13
     a90:	c7 01       	movw	r24, r14
     a92:	b6 01       	movw	r22, r12
     a94:	a3 01       	movw	r20, r6
     a96:	92 01       	movw	r18, r4
     a98:	0e 94 24 09 	call	0x1248	; 0x1248 <__divmodsi4>
     a9c:	8c 89       	ldd	r24, Y+20	; 0x14
     a9e:	9d 89       	ldd	r25, Y+21	; 0x15
     aa0:	ae 89       	ldd	r26, Y+22	; 0x16
     aa2:	bf 89       	ldd	r27, Y+23	; 0x17
     aa4:	82 0f       	add	r24, r18
     aa6:	93 1f       	adc	r25, r19
     aa8:	a4 1f       	adc	r26, r20
     aaa:	b5 1f       	adc	r27, r21
     aac:	8c 8b       	std	Y+20, r24	; 0x14
     aae:	9d 8b       	std	Y+21, r25	; 0x15
     ab0:	ae 8b       	std	Y+22, r26	; 0x16
     ab2:	bf 8b       	std	Y+23, r27	; 0x17
     ab4:	df 91       	pop	r29
     ab6:	cf 91       	pop	r28
     ab8:	1f 91       	pop	r17
     aba:	0f 91       	pop	r16
     abc:	ff 90       	pop	r15
     abe:	ef 90       	pop	r14
     ac0:	df 90       	pop	r13
     ac2:	cf 90       	pop	r12
     ac4:	bf 90       	pop	r11
     ac6:	af 90       	pop	r10
     ac8:	9f 90       	pop	r9
     aca:	8f 90       	pop	r8
     acc:	7f 90       	pop	r7
     ace:	6f 90       	pop	r6
     ad0:	5f 90       	pop	r5
     ad2:	4f 90       	pop	r4
     ad4:	08 95       	ret

00000ad6 <_ZN5CGyro11delay_loopsEm>:
     ad6:	41 50       	subi	r20, 0x01	; 1
     ad8:	51 09       	sbc	r21, r1
     ada:	61 09       	sbc	r22, r1
     adc:	71 09       	sbc	r23, r1
     ade:	10 f0       	brcs	.+4      	; 0xae4 <_ZN5CGyro11delay_loopsEm+0xe>
     ae0:	00 00       	nop
     ae2:	f9 cf       	rjmp	.-14     	; 0xad6 <_ZN5CGyro11delay_loopsEm>
     ae4:	08 95       	ret

00000ae6 <_ZN5CGyro4initEP14CI2C_Interface>:
     ae6:	cf 92       	push	r12
     ae8:	df 92       	push	r13
     aea:	ef 92       	push	r14
     aec:	ff 92       	push	r15
     aee:	1f 93       	push	r17
     af0:	cf 93       	push	r28
     af2:	df 93       	push	r29
     af4:	ec 01       	movw	r28, r24
     af6:	7d a3       	std	Y+37, r23	; 0x25
     af8:	6c a3       	std	Y+36, r22	; 0x24
     afa:	18 82       	st	Y, r1
     afc:	19 82       	std	Y+1, r1	; 0x01
     afe:	1a 82       	std	Y+2, r1	; 0x02
     b00:	1b 82       	std	Y+3, r1	; 0x03
     b02:	1c 82       	std	Y+4, r1	; 0x04
     b04:	1d 82       	std	Y+5, r1	; 0x05
     b06:	1e 82       	std	Y+6, r1	; 0x06
     b08:	1f 82       	std	Y+7, r1	; 0x07
     b0a:	18 86       	std	Y+8, r1	; 0x08
     b0c:	19 86       	std	Y+9, r1	; 0x09
     b0e:	1a 86       	std	Y+10, r1	; 0x0a
     b10:	1b 86       	std	Y+11, r1	; 0x0b
     b12:	18 8e       	std	Y+24, r1	; 0x18
     b14:	19 8e       	std	Y+25, r1	; 0x19
     b16:	1a 8e       	std	Y+26, r1	; 0x1a
     b18:	1b 8e       	std	Y+27, r1	; 0x1b
     b1a:	1c 8e       	std	Y+28, r1	; 0x1c
     b1c:	1d 8e       	std	Y+29, r1	; 0x1d
     b1e:	1e 8e       	std	Y+30, r1	; 0x1e
     b20:	1f 8e       	std	Y+31, r1	; 0x1f
     b22:	18 a2       	std	Y+32, r1	; 0x20
     b24:	19 a2       	std	Y+33, r1	; 0x21
     b26:	1a a2       	std	Y+34, r1	; 0x22
     b28:	1b a2       	std	Y+35, r1	; 0x23
     b2a:	1c 86       	std	Y+12, r1	; 0x0c
     b2c:	1d 86       	std	Y+13, r1	; 0x0d
     b2e:	1e 86       	std	Y+14, r1	; 0x0e
     b30:	1f 86       	std	Y+15, r1	; 0x0f
     b32:	18 8a       	std	Y+16, r1	; 0x10
     b34:	19 8a       	std	Y+17, r1	; 0x11
     b36:	1a 8a       	std	Y+18, r1	; 0x12
     b38:	1b 8a       	std	Y+19, r1	; 0x13
     b3a:	1c 8a       	std	Y+20, r1	; 0x14
     b3c:	1d 8a       	std	Y+21, r1	; 0x15
     b3e:	1e 8a       	std	Y+22, r1	; 0x16
     b40:	1f 8a       	std	Y+23, r1	; 0x17
     b42:	40 e1       	ldi	r20, 0x10	; 16
     b44:	57 e2       	ldi	r21, 0x27	; 39
     b46:	60 e0       	ldi	r22, 0x00	; 0
     b48:	70 e0       	ldi	r23, 0x00	; 0
     b4a:	0e 94 6b 05 	call	0xad6	; 0xad6 <_ZN5CGyro11delay_loopsEm>
     b4e:	8c a1       	ldd	r24, Y+36	; 0x24
     b50:	9d a1       	ldd	r25, Y+37	; 0x25
     b52:	dc 01       	movw	r26, r24
     b54:	ed 91       	ld	r30, X+
     b56:	fc 91       	ld	r31, X
     b58:	00 84       	ldd	r0, Z+8	; 0x08
     b5a:	f1 85       	ldd	r31, Z+9	; 0x09
     b5c:	e0 2d       	mov	r30, r0
     b5e:	21 e0       	ldi	r18, 0x01	; 1
     b60:	4b e6       	ldi	r20, 0x6B	; 107
     b62:	60 ed       	ldi	r22, 0xD0	; 208
     b64:	09 95       	icall
     b66:	8c a1       	ldd	r24, Y+36	; 0x24
     b68:	9d a1       	ldd	r25, Y+37	; 0x25
     b6a:	dc 01       	movw	r26, r24
     b6c:	ed 91       	ld	r30, X+
     b6e:	fc 91       	ld	r31, X
     b70:	00 84       	ldd	r0, Z+8	; 0x08
     b72:	f1 85       	ldd	r31, Z+9	; 0x09
     b74:	e0 2d       	mov	r30, r0
     b76:	23 e0       	ldi	r18, 0x03	; 3
     b78:	4a e1       	ldi	r20, 0x1A	; 26
     b7a:	60 ed       	ldi	r22, 0xD0	; 208
     b7c:	09 95       	icall
     b7e:	8c a1       	ldd	r24, Y+36	; 0x24
     b80:	9d a1       	ldd	r25, Y+37	; 0x25
     b82:	dc 01       	movw	r26, r24
     b84:	ed 91       	ld	r30, X+
     b86:	fc 91       	ld	r31, X
     b88:	00 84       	ldd	r0, Z+8	; 0x08
     b8a:	f1 85       	ldd	r31, Z+9	; 0x09
     b8c:	e0 2d       	mov	r30, r0
     b8e:	24 e0       	ldi	r18, 0x04	; 4
     b90:	49 e1       	ldi	r20, 0x19	; 25
     b92:	60 ed       	ldi	r22, 0xD0	; 208
     b94:	09 95       	icall
     b96:	8c a1       	ldd	r24, Y+36	; 0x24
     b98:	9d a1       	ldd	r25, Y+37	; 0x25
     b9a:	dc 01       	movw	r26, r24
     b9c:	ed 91       	ld	r30, X+
     b9e:	fc 91       	ld	r31, X
     ba0:	06 84       	ldd	r0, Z+14	; 0x0e
     ba2:	f7 85       	ldd	r31, Z+15	; 0x0f
     ba4:	e0 2d       	mov	r30, r0
     ba6:	4b e1       	ldi	r20, 0x1B	; 27
     ba8:	60 ed       	ldi	r22, 0xD0	; 208
     baa:	09 95       	icall
     bac:	18 2f       	mov	r17, r24
     bae:	8c a1       	ldd	r24, Y+36	; 0x24
     bb0:	9d a1       	ldd	r25, Y+37	; 0x25
     bb2:	dc 01       	movw	r26, r24
     bb4:	ed 91       	ld	r30, X+
     bb6:	fc 91       	ld	r31, X
     bb8:	21 2f       	mov	r18, r17
     bba:	2f 71       	andi	r18, 0x1F	; 31
     bbc:	00 84       	ldd	r0, Z+8	; 0x08
     bbe:	f1 85       	ldd	r31, Z+9	; 0x09
     bc0:	e0 2d       	mov	r30, r0
     bc2:	4b e1       	ldi	r20, 0x1B	; 27
     bc4:	60 ed       	ldi	r22, 0xD0	; 208
     bc6:	09 95       	icall
     bc8:	8c a1       	ldd	r24, Y+36	; 0x24
     bca:	9d a1       	ldd	r25, Y+37	; 0x25
     bcc:	dc 01       	movw	r26, r24
     bce:	ed 91       	ld	r30, X+
     bd0:	fc 91       	ld	r31, X
     bd2:	21 2f       	mov	r18, r17
     bd4:	27 7e       	andi	r18, 0xE7	; 231
     bd6:	00 84       	ldd	r0, Z+8	; 0x08
     bd8:	f1 85       	ldd	r31, Z+9	; 0x09
     bda:	e0 2d       	mov	r30, r0
     bdc:	4b e1       	ldi	r20, 0x1B	; 27
     bde:	60 ed       	ldi	r22, 0xD0	; 208
     be0:	09 95       	icall
     be2:	8c a1       	ldd	r24, Y+36	; 0x24
     be4:	9d a1       	ldd	r25, Y+37	; 0x25
     be6:	dc 01       	movw	r26, r24
     be8:	ed 91       	ld	r30, X+
     bea:	fc 91       	ld	r31, X
     bec:	21 2f       	mov	r18, r17
     bee:	20 61       	ori	r18, 0x10	; 16
     bf0:	00 84       	ldd	r0, Z+8	; 0x08
     bf2:	f1 85       	ldd	r31, Z+9	; 0x09
     bf4:	e0 2d       	mov	r30, r0
     bf6:	4b e1       	ldi	r20, 0x1B	; 27
     bf8:	60 ed       	ldi	r22, 0xD0	; 208
     bfa:	09 95       	icall
     bfc:	40 e1       	ldi	r20, 0x10	; 16
     bfe:	57 e2       	ldi	r21, 0x27	; 39
     c00:	60 e0       	ldi	r22, 0x00	; 0
     c02:	70 e0       	ldi	r23, 0x00	; 0
     c04:	ce 01       	movw	r24, r28
     c06:	0e 94 6b 05 	call	0xad6	; 0xad6 <_ZN5CGyro11delay_loopsEm>
     c0a:	60 e0       	ldi	r22, 0x00	; 0
     c0c:	ce 01       	movw	r24, r28
     c0e:	0e 94 28 04 	call	0x850	; 0x850 <_ZN5CGyro4readEb>
     c12:	e1 2c       	mov	r14, r1
     c14:	f1 2c       	mov	r15, r1
     c16:	61 e0       	ldi	r22, 0x01	; 1
     c18:	ce 01       	movw	r24, r28
     c1a:	0e 94 28 04 	call	0x850	; 0x850 <_ZN5CGyro4readEb>
     c1e:	48 ee       	ldi	r20, 0xE8	; 232
     c20:	53 e0       	ldi	r21, 0x03	; 3
     c22:	60 e0       	ldi	r22, 0x00	; 0
     c24:	70 e0       	ldi	r23, 0x00	; 0
     c26:	ce 01       	movw	r24, r28
     c28:	0e 94 6b 05 	call	0xad6	; 0xad6 <_ZN5CGyro11delay_loopsEm>
     c2c:	bf ef       	ldi	r27, 0xFF	; 255
     c2e:	eb 1a       	sub	r14, r27
     c30:	fb 0a       	sbc	r15, r27
     c32:	88 ec       	ldi	r24, 0xC8	; 200
     c34:	e8 16       	cp	r14, r24
     c36:	f1 04       	cpc	r15, r1
     c38:	71 f7       	brne	.-36     	; 0xc16 <_ZN5CGyro4initEP14CI2C_Interface+0x130>
     c3a:	68 8d       	ldd	r22, Y+24	; 0x18
     c3c:	79 8d       	ldd	r23, Y+25	; 0x19
     c3e:	8a 8d       	ldd	r24, Y+26	; 0x1a
     c40:	9b 8d       	ldd	r25, Y+27	; 0x1b
     c42:	28 ec       	ldi	r18, 0xC8	; 200
     c44:	c2 2e       	mov	r12, r18
     c46:	d1 2c       	mov	r13, r1
     c48:	e1 2c       	mov	r14, r1
     c4a:	f1 2c       	mov	r15, r1
     c4c:	a7 01       	movw	r20, r14
     c4e:	96 01       	movw	r18, r12
     c50:	0e 94 24 09 	call	0x1248	; 0x1248 <__divmodsi4>
     c54:	28 8f       	std	Y+24, r18	; 0x18
     c56:	39 8f       	std	Y+25, r19	; 0x19
     c58:	4a 8f       	std	Y+26, r20	; 0x1a
     c5a:	5b 8f       	std	Y+27, r21	; 0x1b
     c5c:	6c 8d       	ldd	r22, Y+28	; 0x1c
     c5e:	7d 8d       	ldd	r23, Y+29	; 0x1d
     c60:	8e 8d       	ldd	r24, Y+30	; 0x1e
     c62:	9f 8d       	ldd	r25, Y+31	; 0x1f
     c64:	a7 01       	movw	r20, r14
     c66:	96 01       	movw	r18, r12
     c68:	0e 94 24 09 	call	0x1248	; 0x1248 <__divmodsi4>
     c6c:	2c 8f       	std	Y+28, r18	; 0x1c
     c6e:	3d 8f       	std	Y+29, r19	; 0x1d
     c70:	4e 8f       	std	Y+30, r20	; 0x1e
     c72:	5f 8f       	std	Y+31, r21	; 0x1f
     c74:	68 a1       	ldd	r22, Y+32	; 0x20
     c76:	79 a1       	ldd	r23, Y+33	; 0x21
     c78:	8a a1       	ldd	r24, Y+34	; 0x22
     c7a:	9b a1       	ldd	r25, Y+35	; 0x23
     c7c:	a7 01       	movw	r20, r14
     c7e:	96 01       	movw	r18, r12
     c80:	0e 94 24 09 	call	0x1248	; 0x1248 <__divmodsi4>
     c84:	28 a3       	std	Y+32, r18	; 0x20
     c86:	39 a3       	std	Y+33, r19	; 0x21
     c88:	4a a3       	std	Y+34, r20	; 0x22
     c8a:	5b a3       	std	Y+35, r21	; 0x23
     c8c:	1c 86       	std	Y+12, r1	; 0x0c
     c8e:	1d 86       	std	Y+13, r1	; 0x0d
     c90:	1e 86       	std	Y+14, r1	; 0x0e
     c92:	1f 86       	std	Y+15, r1	; 0x0f
     c94:	18 8a       	std	Y+16, r1	; 0x10
     c96:	19 8a       	std	Y+17, r1	; 0x11
     c98:	1a 8a       	std	Y+18, r1	; 0x12
     c9a:	1b 8a       	std	Y+19, r1	; 0x13
     c9c:	1c 8a       	std	Y+20, r1	; 0x14
     c9e:	1d 8a       	std	Y+21, r1	; 0x15
     ca0:	1e 8a       	std	Y+22, r1	; 0x16
     ca2:	1f 8a       	std	Y+23, r1	; 0x17
     ca4:	df 91       	pop	r29
     ca6:	cf 91       	pop	r28
     ca8:	1f 91       	pop	r17
     caa:	ff 90       	pop	r15
     cac:	ef 90       	pop	r14
     cae:	df 90       	pop	r13
     cb0:	cf 90       	pop	r12
     cb2:	08 95       	ret

00000cb4 <_ZN6CTimerC1Ev>:
     cb4:	80 e0       	ldi	r24, 0x00	; 0
     cb6:	90 e0       	ldi	r25, 0x00	; 0
     cb8:	fc 01       	movw	r30, r24
     cba:	23 e0       	ldi	r18, 0x03	; 3
     cbc:	ee 0f       	add	r30, r30
     cbe:	ff 1f       	adc	r31, r31
     cc0:	2a 95       	dec	r18
     cc2:	e1 f7       	brne	.-8      	; 0xcbc <_ZN6CTimerC1Ev+0x8>
     cc4:	e4 56       	subi	r30, 0x64	; 100
     cc6:	ff 4f       	sbci	r31, 0xFF	; 255
     cc8:	11 82       	std	Z+1, r1	; 0x01
     cca:	10 82       	st	Z, r1
     ccc:	13 82       	std	Z+3, r1	; 0x03
     cce:	12 82       	std	Z+2, r1	; 0x02
     cd0:	15 82       	std	Z+5, r1	; 0x05
     cd2:	14 82       	std	Z+4, r1	; 0x04
     cd4:	16 82       	std	Z+6, r1	; 0x06
     cd6:	17 82       	std	Z+7, r1	; 0x07
     cd8:	01 96       	adiw	r24, 0x01	; 1
     cda:	88 30       	cpi	r24, 0x08	; 8
     cdc:	91 05       	cpc	r25, r1
     cde:	61 f7       	brne	.-40     	; 0xcb8 <_ZN6CTimerC1Ev+0x4>
     ce0:	10 92 dc 00 	sts	0x00DC, r1
     ce4:	10 92 dd 00 	sts	0x00DD, r1
     ce8:	10 92 de 00 	sts	0x00DE, r1
     cec:	10 92 df 00 	sts	0x00DF, r1
     cf0:	83 b7       	in	r24, 0x33	; 51
     cf2:	88 60       	ori	r24, 0x08	; 8
     cf4:	83 bf       	out	0x33, r24	; 51
     cf6:	8b e9       	ldi	r24, 0x9B	; 155
     cf8:	8c bf       	out	0x3c, r24	; 60
     cfa:	83 e0       	ldi	r24, 0x03	; 3
     cfc:	83 bf       	out	0x33, r24	; 51
     cfe:	89 b7       	in	r24, 0x39	; 57
     d00:	82 60       	ori	r24, 0x02	; 2
     d02:	89 bf       	out	0x39, r24	; 57
     d04:	78 94       	sei
     d06:	08 95       	ret

00000d08 <_ZN6CTimer8add_taskEPFvvEjb>:
     d08:	80 e0       	ldi	r24, 0x00	; 0
     d0a:	90 e0       	ldi	r25, 0x00	; 0
     d0c:	ef ef       	ldi	r30, 0xFF	; 255
     d0e:	dc 01       	movw	r26, r24
     d10:	33 e0       	ldi	r19, 0x03	; 3
     d12:	aa 0f       	add	r26, r26
     d14:	bb 1f       	adc	r27, r27
     d16:	3a 95       	dec	r19
     d18:	e1 f7       	brne	.-8      	; 0xd12 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
     d1a:	a4 56       	subi	r26, 0x64	; 100
     d1c:	bf 4f       	sbci	r27, 0xFF	; 255
     d1e:	0d 90       	ld	r0, X+
     d20:	bc 91       	ld	r27, X
     d22:	a0 2d       	mov	r26, r0
     d24:	ab 2b       	or	r26, r27
     d26:	09 f4       	brne	.+2      	; 0xd2a <_ZN6CTimer8add_taskEPFvvEjb+0x22>
     d28:	e8 2f       	mov	r30, r24
     d2a:	01 96       	adiw	r24, 0x01	; 1
     d2c:	88 30       	cpi	r24, 0x08	; 8
     d2e:	91 05       	cpc	r25, r1
     d30:	71 f7       	brne	.-36     	; 0xd0e <_ZN6CTimer8add_taskEPFvvEjb+0x6>
     d32:	ef 3f       	cpi	r30, 0xFF	; 255
     d34:	71 f0       	breq	.+28     	; 0xd52 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
     d36:	88 e0       	ldi	r24, 0x08	; 8
     d38:	e8 02       	muls	r30, r24
     d3a:	f0 01       	movw	r30, r0
     d3c:	11 24       	eor	r1, r1
     d3e:	e4 56       	subi	r30, 0x64	; 100
     d40:	ff 4f       	sbci	r31, 0xFF	; 255
     d42:	71 83       	std	Z+1, r23	; 0x01
     d44:	60 83       	st	Z, r22
     d46:	53 83       	std	Z+3, r21	; 0x03
     d48:	42 83       	std	Z+2, r20	; 0x02
     d4a:	55 83       	std	Z+5, r21	; 0x05
     d4c:	44 83       	std	Z+4, r20	; 0x04
     d4e:	16 82       	std	Z+6, r1	; 0x06
     d50:	27 83       	std	Z+7, r18	; 0x07
     d52:	08 95       	ret

00000d54 <_ZN6CTimer8get_timeEv>:
     d54:	cf 93       	push	r28
     d56:	df 93       	push	r29
     d58:	00 d0       	rcall	.+0      	; 0xd5a <_ZN6CTimer8get_timeEv+0x6>
     d5a:	00 d0       	rcall	.+0      	; 0xd5c <_ZN6CTimer8get_timeEv+0x8>
     d5c:	cd b7       	in	r28, 0x3d	; 61
     d5e:	de b7       	in	r29, 0x3e	; 62
     d60:	f8 94       	cli
     d62:	80 91 dc 00 	lds	r24, 0x00DC
     d66:	90 91 dd 00 	lds	r25, 0x00DD
     d6a:	a0 91 de 00 	lds	r26, 0x00DE
     d6e:	b0 91 df 00 	lds	r27, 0x00DF
     d72:	89 83       	std	Y+1, r24	; 0x01
     d74:	9a 83       	std	Y+2, r25	; 0x02
     d76:	ab 83       	std	Y+3, r26	; 0x03
     d78:	bc 83       	std	Y+4, r27	; 0x04
     d7a:	78 94       	sei
     d7c:	69 81       	ldd	r22, Y+1	; 0x01
     d7e:	7a 81       	ldd	r23, Y+2	; 0x02
     d80:	8b 81       	ldd	r24, Y+3	; 0x03
     d82:	9c 81       	ldd	r25, Y+4	; 0x04
     d84:	0f 90       	pop	r0
     d86:	0f 90       	pop	r0
     d88:	0f 90       	pop	r0
     d8a:	0f 90       	pop	r0
     d8c:	df 91       	pop	r29
     d8e:	cf 91       	pop	r28
     d90:	08 95       	ret

00000d92 <_ZN6CTimer8delay_msEm>:
     d92:	cf 92       	push	r12
     d94:	df 92       	push	r13
     d96:	ef 92       	push	r14
     d98:	ff 92       	push	r15
     d9a:	0f 93       	push	r16
     d9c:	1f 93       	push	r17
     d9e:	cf 93       	push	r28
     da0:	df 93       	push	r29
     da2:	00 d0       	rcall	.+0      	; 0xda4 <_ZN6CTimer8delay_msEm+0x12>
     da4:	00 d0       	rcall	.+0      	; 0xda6 <_ZN6CTimer8delay_msEm+0x14>
     da6:	cd b7       	in	r28, 0x3d	; 61
     da8:	de b7       	in	r29, 0x3e	; 62
     daa:	8c 01       	movw	r16, r24
     dac:	6a 01       	movw	r12, r20
     dae:	7b 01       	movw	r14, r22
     db0:	0e 94 aa 06 	call	0xd54	; 0xd54 <_ZN6CTimer8get_timeEv>
     db4:	c6 0e       	add	r12, r22
     db6:	d7 1e       	adc	r13, r23
     db8:	e8 1e       	adc	r14, r24
     dba:	f9 1e       	adc	r15, r25
     dbc:	c9 82       	std	Y+1, r12	; 0x01
     dbe:	da 82       	std	Y+2, r13	; 0x02
     dc0:	eb 82       	std	Y+3, r14	; 0x03
     dc2:	fc 82       	std	Y+4, r15	; 0x04
     dc4:	c8 01       	movw	r24, r16
     dc6:	0e 94 aa 06 	call	0xd54	; 0xd54 <_ZN6CTimer8get_timeEv>
     dca:	c9 80       	ldd	r12, Y+1	; 0x01
     dcc:	da 80       	ldd	r13, Y+2	; 0x02
     dce:	eb 80       	ldd	r14, Y+3	; 0x03
     dd0:	fc 80       	ldd	r15, Y+4	; 0x04
     dd2:	6c 15       	cp	r22, r12
     dd4:	7d 05       	cpc	r23, r13
     dd6:	8e 05       	cpc	r24, r14
     dd8:	9f 05       	cpc	r25, r15
     dda:	10 f4       	brcc	.+4      	; 0xde0 <_ZN6CTimer8delay_msEm+0x4e>
     ddc:	00 00       	nop
     dde:	f2 cf       	rjmp	.-28     	; 0xdc4 <_ZN6CTimer8delay_msEm+0x32>
     de0:	0f 90       	pop	r0
     de2:	0f 90       	pop	r0
     de4:	0f 90       	pop	r0
     de6:	0f 90       	pop	r0
     de8:	df 91       	pop	r29
     dea:	cf 91       	pop	r28
     dec:	1f 91       	pop	r17
     dee:	0f 91       	pop	r16
     df0:	ff 90       	pop	r15
     df2:	ef 90       	pop	r14
     df4:	df 90       	pop	r13
     df6:	cf 90       	pop	r12
     df8:	08 95       	ret

00000dfa <__vector_19>:
     dfa:	1f 92       	push	r1
     dfc:	0f 92       	push	r0
     dfe:	0f b6       	in	r0, 0x3f	; 63
     e00:	0f 92       	push	r0
     e02:	11 24       	eor	r1, r1
     e04:	2f 93       	push	r18
     e06:	3f 93       	push	r19
     e08:	4f 93       	push	r20
     e0a:	5f 93       	push	r21
     e0c:	6f 93       	push	r22
     e0e:	7f 93       	push	r23
     e10:	8f 93       	push	r24
     e12:	9f 93       	push	r25
     e14:	af 93       	push	r26
     e16:	bf 93       	push	r27
     e18:	cf 93       	push	r28
     e1a:	df 93       	push	r29
     e1c:	ef 93       	push	r30
     e1e:	ff 93       	push	r31
     e20:	c0 e0       	ldi	r28, 0x00	; 0
     e22:	d0 e0       	ldi	r29, 0x00	; 0
     e24:	ce 01       	movw	r24, r28
     e26:	23 e0       	ldi	r18, 0x03	; 3
     e28:	88 0f       	add	r24, r24
     e2a:	99 1f       	adc	r25, r25
     e2c:	2a 95       	dec	r18
     e2e:	e1 f7       	brne	.-8      	; 0xe28 <__vector_19+0x2e>
     e30:	fc 01       	movw	r30, r24
     e32:	e4 56       	subi	r30, 0x64	; 100
     e34:	ff 4f       	sbci	r31, 0xFF	; 255
     e36:	24 81       	ldd	r18, Z+4	; 0x04
     e38:	35 81       	ldd	r19, Z+5	; 0x05
     e3a:	23 2b       	or	r18, r19
     e3c:	31 f0       	breq	.+12     	; 0xe4a <__vector_19+0x50>
     e3e:	84 81       	ldd	r24, Z+4	; 0x04
     e40:	95 81       	ldd	r25, Z+5	; 0x05
     e42:	01 97       	sbiw	r24, 0x01	; 1
     e44:	95 83       	std	Z+5, r25	; 0x05
     e46:	84 83       	std	Z+4, r24	; 0x04
     e48:	18 c0       	rjmp	.+48     	; 0xe7a <__vector_19+0x80>
     e4a:	22 81       	ldd	r18, Z+2	; 0x02
     e4c:	33 81       	ldd	r19, Z+3	; 0x03
     e4e:	35 83       	std	Z+5, r19	; 0x05
     e50:	24 83       	std	Z+4, r18	; 0x04
     e52:	26 81       	ldd	r18, Z+6	; 0x06
     e54:	2f 3f       	cpi	r18, 0xFF	; 255
     e56:	19 f0       	breq	.+6      	; 0xe5e <__vector_19+0x64>
     e58:	26 81       	ldd	r18, Z+6	; 0x06
     e5a:	2f 5f       	subi	r18, 0xFF	; 255
     e5c:	26 83       	std	Z+6, r18	; 0x06
     e5e:	fc 01       	movw	r30, r24
     e60:	e4 56       	subi	r30, 0x64	; 100
     e62:	ff 4f       	sbci	r31, 0xFF	; 255
     e64:	87 81       	ldd	r24, Z+7	; 0x07
     e66:	81 11       	cpse	r24, r1
     e68:	08 c0       	rjmp	.+16     	; 0xe7a <__vector_19+0x80>
     e6a:	80 81       	ld	r24, Z
     e6c:	91 81       	ldd	r25, Z+1	; 0x01
     e6e:	89 2b       	or	r24, r25
     e70:	21 f0       	breq	.+8      	; 0xe7a <__vector_19+0x80>
     e72:	01 90       	ld	r0, Z+
     e74:	f0 81       	ld	r31, Z
     e76:	e0 2d       	mov	r30, r0
     e78:	09 95       	icall
     e7a:	21 96       	adiw	r28, 0x01	; 1
     e7c:	c8 30       	cpi	r28, 0x08	; 8
     e7e:	d1 05       	cpc	r29, r1
     e80:	89 f6       	brne	.-94     	; 0xe24 <__vector_19+0x2a>
     e82:	80 91 dc 00 	lds	r24, 0x00DC
     e86:	90 91 dd 00 	lds	r25, 0x00DD
     e8a:	a0 91 de 00 	lds	r26, 0x00DE
     e8e:	b0 91 df 00 	lds	r27, 0x00DF
     e92:	01 96       	adiw	r24, 0x01	; 1
     e94:	a1 1d       	adc	r26, r1
     e96:	b1 1d       	adc	r27, r1
     e98:	80 93 dc 00 	sts	0x00DC, r24
     e9c:	90 93 dd 00 	sts	0x00DD, r25
     ea0:	a0 93 de 00 	sts	0x00DE, r26
     ea4:	b0 93 df 00 	sts	0x00DF, r27
     ea8:	ff 91       	pop	r31
     eaa:	ef 91       	pop	r30
     eac:	df 91       	pop	r29
     eae:	cf 91       	pop	r28
     eb0:	bf 91       	pop	r27
     eb2:	af 91       	pop	r26
     eb4:	9f 91       	pop	r25
     eb6:	8f 91       	pop	r24
     eb8:	7f 91       	pop	r23
     eba:	6f 91       	pop	r22
     ebc:	5f 91       	pop	r21
     ebe:	4f 91       	pop	r20
     ec0:	3f 91       	pop	r19
     ec2:	2f 91       	pop	r18
     ec4:	0f 90       	pop	r0
     ec6:	0f be       	out	0x3f, r0	; 63
     ec8:	0f 90       	pop	r0
     eca:	1f 90       	pop	r1
     ecc:	18 95       	reti

00000ece <_GLOBAL__sub_I_timer>:
     ece:	80 ee       	ldi	r24, 0xE0	; 224
     ed0:	90 e0       	ldi	r25, 0x00	; 0
     ed2:	0c 94 5a 06 	jmp	0xcb4	; 0xcb4 <_ZN6CTimerC1Ev>

00000ed6 <_ZN9CTerminal4putsEPc>:
     ed6:	0f 93       	push	r16
     ed8:	1f 93       	push	r17
     eda:	cf 93       	push	r28
     edc:	df 93       	push	r29
     ede:	8c 01       	movw	r16, r24
     ee0:	eb 01       	movw	r28, r22
     ee2:	69 91       	ld	r22, Y+
     ee4:	66 23       	and	r22, r22
     ee6:	21 f0       	breq	.+8      	; 0xef0 <_ZN9CTerminal4putsEPc+0x1a>
     ee8:	c8 01       	movw	r24, r16
     eea:	0e 94 64 00 	call	0xc8	; 0xc8 <_ZN6CUSART7putcharEc>
     eee:	f9 cf       	rjmp	.-14     	; 0xee2 <_ZN9CTerminal4putsEPc+0xc>
     ef0:	df 91       	pop	r29
     ef2:	cf 91       	pop	r28
     ef4:	1f 91       	pop	r17
     ef6:	0f 91       	pop	r16
     ef8:	08 95       	ret

00000efa <_ZN9CTerminal4putiEl>:
     efa:	8f 92       	push	r8
     efc:	9f 92       	push	r9
     efe:	af 92       	push	r10
     f00:	bf 92       	push	r11
     f02:	cf 92       	push	r12
     f04:	df 92       	push	r13
     f06:	ef 92       	push	r14
     f08:	ff 92       	push	r15
     f0a:	0f 93       	push	r16
     f0c:	1f 93       	push	r17
     f0e:	cf 93       	push	r28
     f10:	df 93       	push	r29
     f12:	cd b7       	in	r28, 0x3d	; 61
     f14:	de b7       	in	r29, 0x3e	; 62
     f16:	2c 97       	sbiw	r28, 0x0c	; 12
     f18:	0f b6       	in	r0, 0x3f	; 63
     f1a:	f8 94       	cli
     f1c:	de bf       	out	0x3e, r29	; 62
     f1e:	0f be       	out	0x3f, r0	; 63
     f20:	cd bf       	out	0x3d, r28	; 61
     f22:	7c 01       	movw	r14, r24
     f24:	77 ff       	sbrs	r23, 7
     f26:	09 c0       	rjmp	.+18     	; 0xf3a <_ZN9CTerminal4putiEl+0x40>
     f28:	70 95       	com	r23
     f2a:	60 95       	com	r22
     f2c:	50 95       	com	r21
     f2e:	41 95       	neg	r20
     f30:	5f 4f       	sbci	r21, 0xFF	; 255
     f32:	6f 4f       	sbci	r22, 0xFF	; 255
     f34:	7f 4f       	sbci	r23, 0xFF	; 255
     f36:	01 e0       	ldi	r16, 0x01	; 1
     f38:	01 c0       	rjmp	.+2      	; 0xf3c <_ZN9CTerminal4putiEl+0x42>
     f3a:	00 e0       	ldi	r16, 0x00	; 0
     f3c:	1c 86       	std	Y+12, r1	; 0x0c
     f3e:	1a e0       	ldi	r17, 0x0A	; 10
     f40:	9a e0       	ldi	r25, 0x0A	; 10
     f42:	89 2e       	mov	r8, r25
     f44:	91 2c       	mov	r9, r1
     f46:	a1 2c       	mov	r10, r1
     f48:	b1 2c       	mov	r11, r1
     f4a:	cc 24       	eor	r12, r12
     f4c:	c3 94       	inc	r12
     f4e:	d1 2c       	mov	r13, r1
     f50:	cc 0e       	add	r12, r28
     f52:	dd 1e       	adc	r13, r29
     f54:	c1 0e       	add	r12, r17
     f56:	d1 1c       	adc	r13, r1
     f58:	cb 01       	movw	r24, r22
     f5a:	ba 01       	movw	r22, r20
     f5c:	a5 01       	movw	r20, r10
     f5e:	94 01       	movw	r18, r8
     f60:	0e 94 24 09 	call	0x1248	; 0x1248 <__divmodsi4>
     f64:	94 2f       	mov	r25, r20
     f66:	85 2f       	mov	r24, r21
     f68:	60 5d       	subi	r22, 0xD0	; 208
     f6a:	f6 01       	movw	r30, r12
     f6c:	60 83       	st	Z, r22
     f6e:	a9 01       	movw	r20, r18
     f70:	69 2f       	mov	r22, r25
     f72:	78 2f       	mov	r23, r24
     f74:	8f ef       	ldi	r24, 0xFF	; 255
     f76:	81 0f       	add	r24, r17
     f78:	41 15       	cp	r20, r1
     f7a:	51 05       	cpc	r21, r1
     f7c:	61 05       	cpc	r22, r1
     f7e:	71 05       	cpc	r23, r1
     f80:	11 f0       	breq	.+4      	; 0xf86 <_ZN9CTerminal4putiEl+0x8c>
     f82:	18 2f       	mov	r17, r24
     f84:	e2 cf       	rjmp	.-60     	; 0xf4a <_ZN9CTerminal4putiEl+0x50>
     f86:	00 23       	and	r16, r16
     f88:	49 f0       	breq	.+18     	; 0xf9c <_ZN9CTerminal4putiEl+0xa2>
     f8a:	e1 e0       	ldi	r30, 0x01	; 1
     f8c:	f0 e0       	ldi	r31, 0x00	; 0
     f8e:	ec 0f       	add	r30, r28
     f90:	fd 1f       	adc	r31, r29
     f92:	e8 0f       	add	r30, r24
     f94:	f1 1d       	adc	r31, r1
     f96:	9d e2       	ldi	r25, 0x2D	; 45
     f98:	90 83       	st	Z, r25
     f9a:	18 2f       	mov	r17, r24
     f9c:	61 e0       	ldi	r22, 0x01	; 1
     f9e:	70 e0       	ldi	r23, 0x00	; 0
     fa0:	6c 0f       	add	r22, r28
     fa2:	7d 1f       	adc	r23, r29
     fa4:	61 0f       	add	r22, r17
     fa6:	71 1d       	adc	r23, r1
     fa8:	c7 01       	movw	r24, r14
     faa:	0e 94 6b 07 	call	0xed6	; 0xed6 <_ZN9CTerminal4putsEPc>
     fae:	2c 96       	adiw	r28, 0x0c	; 12
     fb0:	0f b6       	in	r0, 0x3f	; 63
     fb2:	f8 94       	cli
     fb4:	de bf       	out	0x3e, r29	; 62
     fb6:	0f be       	out	0x3f, r0	; 63
     fb8:	cd bf       	out	0x3d, r28	; 61
     fba:	df 91       	pop	r29
     fbc:	cf 91       	pop	r28
     fbe:	1f 91       	pop	r17
     fc0:	0f 91       	pop	r16
     fc2:	ff 90       	pop	r15
     fc4:	ef 90       	pop	r14
     fc6:	df 90       	pop	r13
     fc8:	cf 90       	pop	r12
     fca:	bf 90       	pop	r11
     fcc:	af 90       	pop	r10
     fce:	9f 90       	pop	r9
     fd0:	8f 90       	pop	r8
     fd2:	08 95       	ret

00000fd4 <_ZN9CTerminal5putuiEm>:
     fd4:	8f 92       	push	r8
     fd6:	9f 92       	push	r9
     fd8:	af 92       	push	r10
     fda:	bf 92       	push	r11
     fdc:	cf 92       	push	r12
     fde:	df 92       	push	r13
     fe0:	ef 92       	push	r14
     fe2:	ff 92       	push	r15
     fe4:	1f 93       	push	r17
     fe6:	cf 93       	push	r28
     fe8:	df 93       	push	r29
     fea:	cd b7       	in	r28, 0x3d	; 61
     fec:	de b7       	in	r29, 0x3e	; 62
     fee:	2c 97       	sbiw	r28, 0x0c	; 12
     ff0:	0f b6       	in	r0, 0x3f	; 63
     ff2:	f8 94       	cli
     ff4:	de bf       	out	0x3e, r29	; 62
     ff6:	0f be       	out	0x3f, r0	; 63
     ff8:	cd bf       	out	0x3d, r28	; 61
     ffa:	6c 01       	movw	r12, r24
     ffc:	1c 86       	std	Y+12, r1	; 0x0c
     ffe:	1a e0       	ldi	r17, 0x0A	; 10
    1000:	9a e0       	ldi	r25, 0x0A	; 10
    1002:	89 2e       	mov	r8, r25
    1004:	91 2c       	mov	r9, r1
    1006:	a1 2c       	mov	r10, r1
    1008:	b1 2c       	mov	r11, r1
    100a:	ee 24       	eor	r14, r14
    100c:	e3 94       	inc	r14
    100e:	f1 2c       	mov	r15, r1
    1010:	ec 0e       	add	r14, r28
    1012:	fd 1e       	adc	r15, r29
    1014:	e1 0e       	add	r14, r17
    1016:	f1 1c       	adc	r15, r1
    1018:	cb 01       	movw	r24, r22
    101a:	ba 01       	movw	r22, r20
    101c:	a5 01       	movw	r20, r10
    101e:	94 01       	movw	r18, r8
    1020:	0e 94 02 09 	call	0x1204	; 0x1204 <__udivmodsi4>
    1024:	94 2f       	mov	r25, r20
    1026:	85 2f       	mov	r24, r21
    1028:	60 5d       	subi	r22, 0xD0	; 208
    102a:	f7 01       	movw	r30, r14
    102c:	60 83       	st	Z, r22
    102e:	a9 01       	movw	r20, r18
    1030:	69 2f       	mov	r22, r25
    1032:	78 2f       	mov	r23, r24
    1034:	11 50       	subi	r17, 0x01	; 1
    1036:	41 15       	cp	r20, r1
    1038:	51 05       	cpc	r21, r1
    103a:	61 05       	cpc	r22, r1
    103c:	71 05       	cpc	r23, r1
    103e:	29 f7       	brne	.-54     	; 0x100a <_ZN9CTerminal5putuiEm+0x36>
    1040:	b7 01       	movw	r22, r14
    1042:	c6 01       	movw	r24, r12
    1044:	0e 94 6b 07 	call	0xed6	; 0xed6 <_ZN9CTerminal4putsEPc>
    1048:	2c 96       	adiw	r28, 0x0c	; 12
    104a:	0f b6       	in	r0, 0x3f	; 63
    104c:	f8 94       	cli
    104e:	de bf       	out	0x3e, r29	; 62
    1050:	0f be       	out	0x3f, r0	; 63
    1052:	cd bf       	out	0x3d, r28	; 61
    1054:	df 91       	pop	r29
    1056:	cf 91       	pop	r28
    1058:	1f 91       	pop	r17
    105a:	ff 90       	pop	r15
    105c:	ef 90       	pop	r14
    105e:	df 90       	pop	r13
    1060:	cf 90       	pop	r12
    1062:	bf 90       	pop	r11
    1064:	af 90       	pop	r10
    1066:	9f 90       	pop	r9
    1068:	8f 90       	pop	r8
    106a:	08 95       	ret

0000106c <_ZN9CTerminal4putxEm>:
    106c:	ef 92       	push	r14
    106e:	ff 92       	push	r15
    1070:	cf 93       	push	r28
    1072:	df 93       	push	r29
    1074:	cd b7       	in	r28, 0x3d	; 61
    1076:	de b7       	in	r29, 0x3e	; 62
    1078:	2c 97       	sbiw	r28, 0x0c	; 12
    107a:	0f b6       	in	r0, 0x3f	; 63
    107c:	f8 94       	cli
    107e:	de bf       	out	0x3e, r29	; 62
    1080:	0f be       	out	0x3f, r0	; 63
    1082:	cd bf       	out	0x3d, r28	; 61
    1084:	fc 01       	movw	r30, r24
    1086:	1c 86       	std	Y+12, r1	; 0x0c
    1088:	2a e0       	ldi	r18, 0x0A	; 10
    108a:	94 2f       	mov	r25, r20
    108c:	9f 70       	andi	r25, 0x0F	; 15
    108e:	e2 2e       	mov	r14, r18
    1090:	f1 2c       	mov	r15, r1
    1092:	a1 e0       	ldi	r26, 0x01	; 1
    1094:	b0 e0       	ldi	r27, 0x00	; 0
    1096:	ac 0f       	add	r26, r28
    1098:	bd 1f       	adc	r27, r29
    109a:	ae 0d       	add	r26, r14
    109c:	bf 1d       	adc	r27, r15
    109e:	9a 30       	cpi	r25, 0x0A	; 10
    10a0:	14 f4       	brge	.+4      	; 0x10a6 <_ZN9CTerminal4putxEm+0x3a>
    10a2:	90 5d       	subi	r25, 0xD0	; 208
    10a4:	01 c0       	rjmp	.+2      	; 0x10a8 <_ZN9CTerminal4putxEm+0x3c>
    10a6:	99 5a       	subi	r25, 0xA9	; 169
    10a8:	9c 93       	st	X, r25
    10aa:	84 e0       	ldi	r24, 0x04	; 4
    10ac:	76 95       	lsr	r23
    10ae:	67 95       	ror	r22
    10b0:	57 95       	ror	r21
    10b2:	47 95       	ror	r20
    10b4:	8a 95       	dec	r24
    10b6:	d1 f7       	brne	.-12     	; 0x10ac <_ZN9CTerminal4putxEm+0x40>
    10b8:	21 50       	subi	r18, 0x01	; 1
    10ba:	41 15       	cp	r20, r1
    10bc:	51 05       	cpc	r21, r1
    10be:	61 05       	cpc	r22, r1
    10c0:	71 05       	cpc	r23, r1
    10c2:	19 f7       	brne	.-58     	; 0x108a <_ZN9CTerminal4putxEm+0x1e>
    10c4:	61 e0       	ldi	r22, 0x01	; 1
    10c6:	70 e0       	ldi	r23, 0x00	; 0
    10c8:	6c 0f       	add	r22, r28
    10ca:	7d 1f       	adc	r23, r29
    10cc:	6e 0d       	add	r22, r14
    10ce:	7f 1d       	adc	r23, r15
    10d0:	cf 01       	movw	r24, r30
    10d2:	0e 94 6b 07 	call	0xed6	; 0xed6 <_ZN9CTerminal4putsEPc>
    10d6:	2c 96       	adiw	r28, 0x0c	; 12
    10d8:	0f b6       	in	r0, 0x3f	; 63
    10da:	f8 94       	cli
    10dc:	de bf       	out	0x3e, r29	; 62
    10de:	0f be       	out	0x3f, r0	; 63
    10e0:	cd bf       	out	0x3d, r28	; 61
    10e2:	df 91       	pop	r29
    10e4:	cf 91       	pop	r28
    10e6:	ff 90       	pop	r15
    10e8:	ef 90       	pop	r14
    10ea:	08 95       	ret

000010ec <_ZN9CTerminal6printfEPKcz>:
    10ec:	af 92       	push	r10
    10ee:	bf 92       	push	r11
    10f0:	cf 92       	push	r12
    10f2:	df 92       	push	r13
    10f4:	ef 92       	push	r14
    10f6:	ff 92       	push	r15
    10f8:	0f 93       	push	r16
    10fa:	1f 93       	push	r17
    10fc:	cf 93       	push	r28
    10fe:	df 93       	push	r29
    1100:	cd b7       	in	r28, 0x3d	; 61
    1102:	de b7       	in	r29, 0x3e	; 62
    1104:	ed 84       	ldd	r14, Y+13	; 0x0d
    1106:	fe 84       	ldd	r15, Y+14	; 0x0e
    1108:	8e 01       	movw	r16, r28
    110a:	0f 5e       	subi	r16, 0xEF	; 239
    110c:	1f 4f       	sbci	r17, 0xFF	; 255
    110e:	c1 2c       	mov	r12, r1
    1110:	d1 2c       	mov	r13, r1
    1112:	ef 85       	ldd	r30, Y+15	; 0x0f
    1114:	f8 89       	ldd	r31, Y+16	; 0x10
    1116:	ec 0d       	add	r30, r12
    1118:	fd 1d       	adc	r31, r13
    111a:	60 81       	ld	r22, Z
    111c:	66 23       	and	r22, r22
    111e:	09 f4       	brne	.+2      	; 0x1122 <_ZN9CTerminal6printfEPKcz+0x36>
    1120:	5e c0       	rjmp	.+188    	; 0x11de <_ZN9CTerminal6printfEPKcz+0xf2>
    1122:	65 32       	cpi	r22, 0x25	; 37
    1124:	39 f0       	breq	.+14     	; 0x1134 <_ZN9CTerminal6printfEPKcz+0x48>
    1126:	c7 01       	movw	r24, r14
    1128:	0e 94 64 00 	call	0xc8	; 0xc8 <_ZN6CUSART7putcharEc>
    112c:	8f ef       	ldi	r24, 0xFF	; 255
    112e:	c8 1a       	sub	r12, r24
    1130:	d8 0a       	sbc	r13, r24
    1132:	ef cf       	rjmp	.-34     	; 0x1112 <_ZN9CTerminal6printfEPKcz+0x26>
    1134:	81 81       	ldd	r24, Z+1	; 0x01
    1136:	89 36       	cpi	r24, 0x69	; 105
    1138:	11 f1       	breq	.+68     	; 0x117e <_ZN9CTerminal6printfEPKcz+0x92>
    113a:	84 f4       	brge	.+32     	; 0x115c <_ZN9CTerminal6printfEPKcz+0x70>
    113c:	85 32       	cpi	r24, 0x25	; 37
    113e:	09 f4       	brne	.+2      	; 0x1142 <_ZN9CTerminal6printfEPKcz+0x56>
    1140:	46 c0       	rjmp	.+140    	; 0x11ce <_ZN9CTerminal6printfEPKcz+0xe2>
    1142:	83 36       	cpi	r24, 0x63	; 99
    1144:	09 f0       	breq	.+2      	; 0x1148 <_ZN9CTerminal6printfEPKcz+0x5c>
    1146:	47 c0       	rjmp	.+142    	; 0x11d6 <_ZN9CTerminal6printfEPKcz+0xea>
    1148:	58 01       	movw	r10, r16
    114a:	f2 e0       	ldi	r31, 0x02	; 2
    114c:	af 0e       	add	r10, r31
    114e:	b1 1c       	adc	r11, r1
    1150:	f8 01       	movw	r30, r16
    1152:	60 81       	ld	r22, Z
    1154:	c7 01       	movw	r24, r14
    1156:	0e 94 64 00 	call	0xc8	; 0xc8 <_ZN6CUSART7putcharEc>
    115a:	2a c0       	rjmp	.+84     	; 0x11b0 <_ZN9CTerminal6printfEPKcz+0xc4>
    115c:	85 37       	cpi	r24, 0x75	; 117
    115e:	e1 f0       	breq	.+56     	; 0x1198 <_ZN9CTerminal6printfEPKcz+0xac>
    1160:	88 37       	cpi	r24, 0x78	; 120
    1162:	41 f1       	breq	.+80     	; 0x11b4 <_ZN9CTerminal6printfEPKcz+0xc8>
    1164:	83 37       	cpi	r24, 0x73	; 115
    1166:	b9 f5       	brne	.+110    	; 0x11d6 <_ZN9CTerminal6printfEPKcz+0xea>
    1168:	58 01       	movw	r10, r16
    116a:	f2 e0       	ldi	r31, 0x02	; 2
    116c:	af 0e       	add	r10, r31
    116e:	b1 1c       	adc	r11, r1
    1170:	f8 01       	movw	r30, r16
    1172:	60 81       	ld	r22, Z
    1174:	71 81       	ldd	r23, Z+1	; 0x01
    1176:	c7 01       	movw	r24, r14
    1178:	0e 94 6b 07 	call	0xed6	; 0xed6 <_ZN9CTerminal4putsEPc>
    117c:	19 c0       	rjmp	.+50     	; 0x11b0 <_ZN9CTerminal6printfEPKcz+0xc4>
    117e:	58 01       	movw	r10, r16
    1180:	94 e0       	ldi	r25, 0x04	; 4
    1182:	a9 0e       	add	r10, r25
    1184:	b1 1c       	adc	r11, r1
    1186:	f8 01       	movw	r30, r16
    1188:	40 81       	ld	r20, Z
    118a:	51 81       	ldd	r21, Z+1	; 0x01
    118c:	62 81       	ldd	r22, Z+2	; 0x02
    118e:	73 81       	ldd	r23, Z+3	; 0x03
    1190:	c7 01       	movw	r24, r14
    1192:	0e 94 7d 07 	call	0xefa	; 0xefa <_ZN9CTerminal4putiEl>
    1196:	0c c0       	rjmp	.+24     	; 0x11b0 <_ZN9CTerminal6printfEPKcz+0xc4>
    1198:	58 01       	movw	r10, r16
    119a:	f4 e0       	ldi	r31, 0x04	; 4
    119c:	af 0e       	add	r10, r31
    119e:	b1 1c       	adc	r11, r1
    11a0:	f8 01       	movw	r30, r16
    11a2:	40 81       	ld	r20, Z
    11a4:	51 81       	ldd	r21, Z+1	; 0x01
    11a6:	62 81       	ldd	r22, Z+2	; 0x02
    11a8:	73 81       	ldd	r23, Z+3	; 0x03
    11aa:	c7 01       	movw	r24, r14
    11ac:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN9CTerminal5putuiEm>
    11b0:	85 01       	movw	r16, r10
    11b2:	11 c0       	rjmp	.+34     	; 0x11d6 <_ZN9CTerminal6printfEPKcz+0xea>
    11b4:	58 01       	movw	r10, r16
    11b6:	f4 e0       	ldi	r31, 0x04	; 4
    11b8:	af 0e       	add	r10, r31
    11ba:	b1 1c       	adc	r11, r1
    11bc:	f8 01       	movw	r30, r16
    11be:	40 81       	ld	r20, Z
    11c0:	51 81       	ldd	r21, Z+1	; 0x01
    11c2:	62 81       	ldd	r22, Z+2	; 0x02
    11c4:	73 81       	ldd	r23, Z+3	; 0x03
    11c6:	c7 01       	movw	r24, r14
    11c8:	0e 94 36 08 	call	0x106c	; 0x106c <_ZN9CTerminal4putxEm>
    11cc:	f1 cf       	rjmp	.-30     	; 0x11b0 <_ZN9CTerminal6printfEPKcz+0xc4>
    11ce:	65 e2       	ldi	r22, 0x25	; 37
    11d0:	c7 01       	movw	r24, r14
    11d2:	0e 94 64 00 	call	0xc8	; 0xc8 <_ZN6CUSART7putcharEc>
    11d6:	f2 e0       	ldi	r31, 0x02	; 2
    11d8:	cf 0e       	add	r12, r31
    11da:	d1 1c       	adc	r13, r1
    11dc:	9a cf       	rjmp	.-204    	; 0x1112 <_ZN9CTerminal6printfEPKcz+0x26>
    11de:	df 91       	pop	r29
    11e0:	cf 91       	pop	r28
    11e2:	1f 91       	pop	r17
    11e4:	0f 91       	pop	r16
    11e6:	ff 90       	pop	r15
    11e8:	ef 90       	pop	r14
    11ea:	df 90       	pop	r13
    11ec:	cf 90       	pop	r12
    11ee:	bf 90       	pop	r11
    11f0:	af 90       	pop	r10
    11f2:	08 95       	ret

000011f4 <_GLOBAL__sub_I_terminal>:
    11f4:	81 ee       	ldi	r24, 0xE1	; 225
    11f6:	90 e0       	ldi	r25, 0x00	; 0
    11f8:	0c 94 59 00 	jmp	0xb2	; 0xb2 <_ZN6CUSARTC1Ev>

000011fc <_GLOBAL__sub_D_terminal>:
    11fc:	81 ee       	ldi	r24, 0xE1	; 225
    11fe:	90 e0       	ldi	r25, 0x00	; 0
    1200:	0c 94 63 00 	jmp	0xc6	; 0xc6 <_ZN6CUSARTD1Ev>

00001204 <__udivmodsi4>:
    1204:	a1 e2       	ldi	r26, 0x21	; 33
    1206:	1a 2e       	mov	r1, r26
    1208:	aa 1b       	sub	r26, r26
    120a:	bb 1b       	sub	r27, r27
    120c:	fd 01       	movw	r30, r26
    120e:	0d c0       	rjmp	.+26     	; 0x122a <__udivmodsi4_ep>

00001210 <__udivmodsi4_loop>:
    1210:	aa 1f       	adc	r26, r26
    1212:	bb 1f       	adc	r27, r27
    1214:	ee 1f       	adc	r30, r30
    1216:	ff 1f       	adc	r31, r31
    1218:	a2 17       	cp	r26, r18
    121a:	b3 07       	cpc	r27, r19
    121c:	e4 07       	cpc	r30, r20
    121e:	f5 07       	cpc	r31, r21
    1220:	20 f0       	brcs	.+8      	; 0x122a <__udivmodsi4_ep>
    1222:	a2 1b       	sub	r26, r18
    1224:	b3 0b       	sbc	r27, r19
    1226:	e4 0b       	sbc	r30, r20
    1228:	f5 0b       	sbc	r31, r21

0000122a <__udivmodsi4_ep>:
    122a:	66 1f       	adc	r22, r22
    122c:	77 1f       	adc	r23, r23
    122e:	88 1f       	adc	r24, r24
    1230:	99 1f       	adc	r25, r25
    1232:	1a 94       	dec	r1
    1234:	69 f7       	brne	.-38     	; 0x1210 <__udivmodsi4_loop>
    1236:	60 95       	com	r22
    1238:	70 95       	com	r23
    123a:	80 95       	com	r24
    123c:	90 95       	com	r25
    123e:	9b 01       	movw	r18, r22
    1240:	ac 01       	movw	r20, r24
    1242:	bd 01       	movw	r22, r26
    1244:	cf 01       	movw	r24, r30
    1246:	08 95       	ret

00001248 <__divmodsi4>:
    1248:	05 2e       	mov	r0, r21
    124a:	97 fb       	bst	r25, 7
    124c:	1e f4       	brtc	.+6      	; 0x1254 <__divmodsi4+0xc>
    124e:	00 94       	com	r0
    1250:	0e 94 3b 09 	call	0x1276	; 0x1276 <__negsi2>
    1254:	57 fd       	sbrc	r21, 7
    1256:	07 d0       	rcall	.+14     	; 0x1266 <__divmodsi4_neg2>
    1258:	0e 94 02 09 	call	0x1204	; 0x1204 <__udivmodsi4>
    125c:	07 fc       	sbrc	r0, 7
    125e:	03 d0       	rcall	.+6      	; 0x1266 <__divmodsi4_neg2>
    1260:	4e f4       	brtc	.+18     	; 0x1274 <__divmodsi4_exit>
    1262:	0c 94 3b 09 	jmp	0x1276	; 0x1276 <__negsi2>

00001266 <__divmodsi4_neg2>:
    1266:	50 95       	com	r21
    1268:	40 95       	com	r20
    126a:	30 95       	com	r19
    126c:	21 95       	neg	r18
    126e:	3f 4f       	sbci	r19, 0xFF	; 255
    1270:	4f 4f       	sbci	r20, 0xFF	; 255
    1272:	5f 4f       	sbci	r21, 0xFF	; 255

00001274 <__divmodsi4_exit>:
    1274:	08 95       	ret

00001276 <__negsi2>:
    1276:	90 95       	com	r25
    1278:	80 95       	com	r24
    127a:	70 95       	com	r23
    127c:	61 95       	neg	r22
    127e:	7f 4f       	sbci	r23, 0xFF	; 255
    1280:	8f 4f       	sbci	r24, 0xFF	; 255
    1282:	9f 4f       	sbci	r25, 0xFF	; 255
    1284:	08 95       	ret

00001286 <__tablejump2__>:
    1286:	ee 0f       	add	r30, r30
    1288:	ff 1f       	adc	r31, r31
    128a:	05 90       	lpm	r0, Z+
    128c:	f4 91       	lpm	r31, Z
    128e:	e0 2d       	mov	r30, r0
    1290:	09 94       	ijmp

00001292 <__subsf3>:
    1292:	50 58       	subi	r21, 0x80	; 128

00001294 <__addsf3>:
    1294:	bb 27       	eor	r27, r27
    1296:	aa 27       	eor	r26, r26
    1298:	0e 94 61 09 	call	0x12c2	; 0x12c2 <__addsf3x>
    129c:	0c 94 40 0a 	jmp	0x1480	; 0x1480 <__fp_round>
    12a0:	0e 94 32 0a 	call	0x1464	; 0x1464 <__fp_pscA>
    12a4:	38 f0       	brcs	.+14     	; 0x12b4 <__addsf3+0x20>
    12a6:	0e 94 39 0a 	call	0x1472	; 0x1472 <__fp_pscB>
    12aa:	20 f0       	brcs	.+8      	; 0x12b4 <__addsf3+0x20>
    12ac:	39 f4       	brne	.+14     	; 0x12bc <__addsf3+0x28>
    12ae:	9f 3f       	cpi	r25, 0xFF	; 255
    12b0:	19 f4       	brne	.+6      	; 0x12b8 <__addsf3+0x24>
    12b2:	26 f4       	brtc	.+8      	; 0x12bc <__addsf3+0x28>
    12b4:	0c 94 2f 0a 	jmp	0x145e	; 0x145e <__fp_nan>
    12b8:	0e f4       	brtc	.+2      	; 0x12bc <__addsf3+0x28>
    12ba:	e0 95       	com	r30
    12bc:	e7 fb       	bst	r30, 7
    12be:	0c 94 29 0a 	jmp	0x1452	; 0x1452 <__fp_inf>

000012c2 <__addsf3x>:
    12c2:	e9 2f       	mov	r30, r25
    12c4:	0e 94 51 0a 	call	0x14a2	; 0x14a2 <__fp_split3>
    12c8:	58 f3       	brcs	.-42     	; 0x12a0 <__addsf3+0xc>
    12ca:	ba 17       	cp	r27, r26
    12cc:	62 07       	cpc	r22, r18
    12ce:	73 07       	cpc	r23, r19
    12d0:	84 07       	cpc	r24, r20
    12d2:	95 07       	cpc	r25, r21
    12d4:	20 f0       	brcs	.+8      	; 0x12de <__addsf3x+0x1c>
    12d6:	79 f4       	brne	.+30     	; 0x12f6 <__addsf3x+0x34>
    12d8:	a6 f5       	brtc	.+104    	; 0x1342 <__addsf3x+0x80>
    12da:	0c 94 73 0a 	jmp	0x14e6	; 0x14e6 <__fp_zero>
    12de:	0e f4       	brtc	.+2      	; 0x12e2 <__addsf3x+0x20>
    12e0:	e0 95       	com	r30
    12e2:	0b 2e       	mov	r0, r27
    12e4:	ba 2f       	mov	r27, r26
    12e6:	a0 2d       	mov	r26, r0
    12e8:	0b 01       	movw	r0, r22
    12ea:	b9 01       	movw	r22, r18
    12ec:	90 01       	movw	r18, r0
    12ee:	0c 01       	movw	r0, r24
    12f0:	ca 01       	movw	r24, r20
    12f2:	a0 01       	movw	r20, r0
    12f4:	11 24       	eor	r1, r1
    12f6:	ff 27       	eor	r31, r31
    12f8:	59 1b       	sub	r21, r25
    12fa:	99 f0       	breq	.+38     	; 0x1322 <__addsf3x+0x60>
    12fc:	59 3f       	cpi	r21, 0xF9	; 249
    12fe:	50 f4       	brcc	.+20     	; 0x1314 <__addsf3x+0x52>
    1300:	50 3e       	cpi	r21, 0xE0	; 224
    1302:	68 f1       	brcs	.+90     	; 0x135e <__addsf3x+0x9c>
    1304:	1a 16       	cp	r1, r26
    1306:	f0 40       	sbci	r31, 0x00	; 0
    1308:	a2 2f       	mov	r26, r18
    130a:	23 2f       	mov	r18, r19
    130c:	34 2f       	mov	r19, r20
    130e:	44 27       	eor	r20, r20
    1310:	58 5f       	subi	r21, 0xF8	; 248
    1312:	f3 cf       	rjmp	.-26     	; 0x12fa <__addsf3x+0x38>
    1314:	46 95       	lsr	r20
    1316:	37 95       	ror	r19
    1318:	27 95       	ror	r18
    131a:	a7 95       	ror	r26
    131c:	f0 40       	sbci	r31, 0x00	; 0
    131e:	53 95       	inc	r21
    1320:	c9 f7       	brne	.-14     	; 0x1314 <__addsf3x+0x52>
    1322:	7e f4       	brtc	.+30     	; 0x1342 <__addsf3x+0x80>
    1324:	1f 16       	cp	r1, r31
    1326:	ba 0b       	sbc	r27, r26
    1328:	62 0b       	sbc	r22, r18
    132a:	73 0b       	sbc	r23, r19
    132c:	84 0b       	sbc	r24, r20
    132e:	ba f0       	brmi	.+46     	; 0x135e <__addsf3x+0x9c>
    1330:	91 50       	subi	r25, 0x01	; 1
    1332:	a1 f0       	breq	.+40     	; 0x135c <__addsf3x+0x9a>
    1334:	ff 0f       	add	r31, r31
    1336:	bb 1f       	adc	r27, r27
    1338:	66 1f       	adc	r22, r22
    133a:	77 1f       	adc	r23, r23
    133c:	88 1f       	adc	r24, r24
    133e:	c2 f7       	brpl	.-16     	; 0x1330 <__addsf3x+0x6e>
    1340:	0e c0       	rjmp	.+28     	; 0x135e <__addsf3x+0x9c>
    1342:	ba 0f       	add	r27, r26
    1344:	62 1f       	adc	r22, r18
    1346:	73 1f       	adc	r23, r19
    1348:	84 1f       	adc	r24, r20
    134a:	48 f4       	brcc	.+18     	; 0x135e <__addsf3x+0x9c>
    134c:	87 95       	ror	r24
    134e:	77 95       	ror	r23
    1350:	67 95       	ror	r22
    1352:	b7 95       	ror	r27
    1354:	f7 95       	ror	r31
    1356:	9e 3f       	cpi	r25, 0xFE	; 254
    1358:	08 f0       	brcs	.+2      	; 0x135c <__addsf3x+0x9a>
    135a:	b0 cf       	rjmp	.-160    	; 0x12bc <__addsf3+0x28>
    135c:	93 95       	inc	r25
    135e:	88 0f       	add	r24, r24
    1360:	08 f0       	brcs	.+2      	; 0x1364 <__addsf3x+0xa2>
    1362:	99 27       	eor	r25, r25
    1364:	ee 0f       	add	r30, r30
    1366:	97 95       	ror	r25
    1368:	87 95       	ror	r24
    136a:	08 95       	ret

0000136c <__fixsfsi>:
    136c:	0e 94 bd 09 	call	0x137a	; 0x137a <__fixunssfsi>
    1370:	68 94       	set
    1372:	b1 11       	cpse	r27, r1
    1374:	0c 94 74 0a 	jmp	0x14e8	; 0x14e8 <__fp_szero>
    1378:	08 95       	ret

0000137a <__fixunssfsi>:
    137a:	0e 94 59 0a 	call	0x14b2	; 0x14b2 <__fp_splitA>
    137e:	88 f0       	brcs	.+34     	; 0x13a2 <__fixunssfsi+0x28>
    1380:	9f 57       	subi	r25, 0x7F	; 127
    1382:	98 f0       	brcs	.+38     	; 0x13aa <__fixunssfsi+0x30>
    1384:	b9 2f       	mov	r27, r25
    1386:	99 27       	eor	r25, r25
    1388:	b7 51       	subi	r27, 0x17	; 23
    138a:	b0 f0       	brcs	.+44     	; 0x13b8 <__fixunssfsi+0x3e>
    138c:	e1 f0       	breq	.+56     	; 0x13c6 <__fixunssfsi+0x4c>
    138e:	66 0f       	add	r22, r22
    1390:	77 1f       	adc	r23, r23
    1392:	88 1f       	adc	r24, r24
    1394:	99 1f       	adc	r25, r25
    1396:	1a f0       	brmi	.+6      	; 0x139e <__fixunssfsi+0x24>
    1398:	ba 95       	dec	r27
    139a:	c9 f7       	brne	.-14     	; 0x138e <__fixunssfsi+0x14>
    139c:	14 c0       	rjmp	.+40     	; 0x13c6 <__fixunssfsi+0x4c>
    139e:	b1 30       	cpi	r27, 0x01	; 1
    13a0:	91 f0       	breq	.+36     	; 0x13c6 <__fixunssfsi+0x4c>
    13a2:	0e 94 73 0a 	call	0x14e6	; 0x14e6 <__fp_zero>
    13a6:	b1 e0       	ldi	r27, 0x01	; 1
    13a8:	08 95       	ret
    13aa:	0c 94 73 0a 	jmp	0x14e6	; 0x14e6 <__fp_zero>
    13ae:	67 2f       	mov	r22, r23
    13b0:	78 2f       	mov	r23, r24
    13b2:	88 27       	eor	r24, r24
    13b4:	b8 5f       	subi	r27, 0xF8	; 248
    13b6:	39 f0       	breq	.+14     	; 0x13c6 <__fixunssfsi+0x4c>
    13b8:	b9 3f       	cpi	r27, 0xF9	; 249
    13ba:	cc f3       	brlt	.-14     	; 0x13ae <__fixunssfsi+0x34>
    13bc:	86 95       	lsr	r24
    13be:	77 95       	ror	r23
    13c0:	67 95       	ror	r22
    13c2:	b3 95       	inc	r27
    13c4:	d9 f7       	brne	.-10     	; 0x13bc <__fixunssfsi+0x42>
    13c6:	3e f4       	brtc	.+14     	; 0x13d6 <__fixunssfsi+0x5c>
    13c8:	90 95       	com	r25
    13ca:	80 95       	com	r24
    13cc:	70 95       	com	r23
    13ce:	61 95       	neg	r22
    13d0:	7f 4f       	sbci	r23, 0xFF	; 255
    13d2:	8f 4f       	sbci	r24, 0xFF	; 255
    13d4:	9f 4f       	sbci	r25, 0xFF	; 255
    13d6:	08 95       	ret

000013d8 <__floatunsisf>:
    13d8:	e8 94       	clt
    13da:	09 c0       	rjmp	.+18     	; 0x13ee <__floatsisf+0x12>

000013dc <__floatsisf>:
    13dc:	97 fb       	bst	r25, 7
    13de:	3e f4       	brtc	.+14     	; 0x13ee <__floatsisf+0x12>
    13e0:	90 95       	com	r25
    13e2:	80 95       	com	r24
    13e4:	70 95       	com	r23
    13e6:	61 95       	neg	r22
    13e8:	7f 4f       	sbci	r23, 0xFF	; 255
    13ea:	8f 4f       	sbci	r24, 0xFF	; 255
    13ec:	9f 4f       	sbci	r25, 0xFF	; 255
    13ee:	99 23       	and	r25, r25
    13f0:	a9 f0       	breq	.+42     	; 0x141c <__floatsisf+0x40>
    13f2:	f9 2f       	mov	r31, r25
    13f4:	96 e9       	ldi	r25, 0x96	; 150
    13f6:	bb 27       	eor	r27, r27
    13f8:	93 95       	inc	r25
    13fa:	f6 95       	lsr	r31
    13fc:	87 95       	ror	r24
    13fe:	77 95       	ror	r23
    1400:	67 95       	ror	r22
    1402:	b7 95       	ror	r27
    1404:	f1 11       	cpse	r31, r1
    1406:	f8 cf       	rjmp	.-16     	; 0x13f8 <__floatsisf+0x1c>
    1408:	fa f4       	brpl	.+62     	; 0x1448 <__floatsisf+0x6c>
    140a:	bb 0f       	add	r27, r27
    140c:	11 f4       	brne	.+4      	; 0x1412 <__floatsisf+0x36>
    140e:	60 ff       	sbrs	r22, 0
    1410:	1b c0       	rjmp	.+54     	; 0x1448 <__floatsisf+0x6c>
    1412:	6f 5f       	subi	r22, 0xFF	; 255
    1414:	7f 4f       	sbci	r23, 0xFF	; 255
    1416:	8f 4f       	sbci	r24, 0xFF	; 255
    1418:	9f 4f       	sbci	r25, 0xFF	; 255
    141a:	16 c0       	rjmp	.+44     	; 0x1448 <__floatsisf+0x6c>
    141c:	88 23       	and	r24, r24
    141e:	11 f0       	breq	.+4      	; 0x1424 <__floatsisf+0x48>
    1420:	96 e9       	ldi	r25, 0x96	; 150
    1422:	11 c0       	rjmp	.+34     	; 0x1446 <__floatsisf+0x6a>
    1424:	77 23       	and	r23, r23
    1426:	21 f0       	breq	.+8      	; 0x1430 <__floatsisf+0x54>
    1428:	9e e8       	ldi	r25, 0x8E	; 142
    142a:	87 2f       	mov	r24, r23
    142c:	76 2f       	mov	r23, r22
    142e:	05 c0       	rjmp	.+10     	; 0x143a <__floatsisf+0x5e>
    1430:	66 23       	and	r22, r22
    1432:	71 f0       	breq	.+28     	; 0x1450 <__floatsisf+0x74>
    1434:	96 e8       	ldi	r25, 0x86	; 134
    1436:	86 2f       	mov	r24, r22
    1438:	70 e0       	ldi	r23, 0x00	; 0
    143a:	60 e0       	ldi	r22, 0x00	; 0
    143c:	2a f0       	brmi	.+10     	; 0x1448 <__floatsisf+0x6c>
    143e:	9a 95       	dec	r25
    1440:	66 0f       	add	r22, r22
    1442:	77 1f       	adc	r23, r23
    1444:	88 1f       	adc	r24, r24
    1446:	da f7       	brpl	.-10     	; 0x143e <__floatsisf+0x62>
    1448:	88 0f       	add	r24, r24
    144a:	96 95       	lsr	r25
    144c:	87 95       	ror	r24
    144e:	97 f9       	bld	r25, 7
    1450:	08 95       	ret

00001452 <__fp_inf>:
    1452:	97 f9       	bld	r25, 7
    1454:	9f 67       	ori	r25, 0x7F	; 127
    1456:	80 e8       	ldi	r24, 0x80	; 128
    1458:	70 e0       	ldi	r23, 0x00	; 0
    145a:	60 e0       	ldi	r22, 0x00	; 0
    145c:	08 95       	ret

0000145e <__fp_nan>:
    145e:	9f ef       	ldi	r25, 0xFF	; 255
    1460:	80 ec       	ldi	r24, 0xC0	; 192
    1462:	08 95       	ret

00001464 <__fp_pscA>:
    1464:	00 24       	eor	r0, r0
    1466:	0a 94       	dec	r0
    1468:	16 16       	cp	r1, r22
    146a:	17 06       	cpc	r1, r23
    146c:	18 06       	cpc	r1, r24
    146e:	09 06       	cpc	r0, r25
    1470:	08 95       	ret

00001472 <__fp_pscB>:
    1472:	00 24       	eor	r0, r0
    1474:	0a 94       	dec	r0
    1476:	12 16       	cp	r1, r18
    1478:	13 06       	cpc	r1, r19
    147a:	14 06       	cpc	r1, r20
    147c:	05 06       	cpc	r0, r21
    147e:	08 95       	ret

00001480 <__fp_round>:
    1480:	09 2e       	mov	r0, r25
    1482:	03 94       	inc	r0
    1484:	00 0c       	add	r0, r0
    1486:	11 f4       	brne	.+4      	; 0x148c <__fp_round+0xc>
    1488:	88 23       	and	r24, r24
    148a:	52 f0       	brmi	.+20     	; 0x14a0 <__fp_round+0x20>
    148c:	bb 0f       	add	r27, r27
    148e:	40 f4       	brcc	.+16     	; 0x14a0 <__fp_round+0x20>
    1490:	bf 2b       	or	r27, r31
    1492:	11 f4       	brne	.+4      	; 0x1498 <__fp_round+0x18>
    1494:	60 ff       	sbrs	r22, 0
    1496:	04 c0       	rjmp	.+8      	; 0x14a0 <__fp_round+0x20>
    1498:	6f 5f       	subi	r22, 0xFF	; 255
    149a:	7f 4f       	sbci	r23, 0xFF	; 255
    149c:	8f 4f       	sbci	r24, 0xFF	; 255
    149e:	9f 4f       	sbci	r25, 0xFF	; 255
    14a0:	08 95       	ret

000014a2 <__fp_split3>:
    14a2:	57 fd       	sbrc	r21, 7
    14a4:	90 58       	subi	r25, 0x80	; 128
    14a6:	44 0f       	add	r20, r20
    14a8:	55 1f       	adc	r21, r21
    14aa:	59 f0       	breq	.+22     	; 0x14c2 <__fp_splitA+0x10>
    14ac:	5f 3f       	cpi	r21, 0xFF	; 255
    14ae:	71 f0       	breq	.+28     	; 0x14cc <__fp_splitA+0x1a>
    14b0:	47 95       	ror	r20

000014b2 <__fp_splitA>:
    14b2:	88 0f       	add	r24, r24
    14b4:	97 fb       	bst	r25, 7
    14b6:	99 1f       	adc	r25, r25
    14b8:	61 f0       	breq	.+24     	; 0x14d2 <__fp_splitA+0x20>
    14ba:	9f 3f       	cpi	r25, 0xFF	; 255
    14bc:	79 f0       	breq	.+30     	; 0x14dc <__fp_splitA+0x2a>
    14be:	87 95       	ror	r24
    14c0:	08 95       	ret
    14c2:	12 16       	cp	r1, r18
    14c4:	13 06       	cpc	r1, r19
    14c6:	14 06       	cpc	r1, r20
    14c8:	55 1f       	adc	r21, r21
    14ca:	f2 cf       	rjmp	.-28     	; 0x14b0 <__fp_split3+0xe>
    14cc:	46 95       	lsr	r20
    14ce:	f1 df       	rcall	.-30     	; 0x14b2 <__fp_splitA>
    14d0:	08 c0       	rjmp	.+16     	; 0x14e2 <__fp_splitA+0x30>
    14d2:	16 16       	cp	r1, r22
    14d4:	17 06       	cpc	r1, r23
    14d6:	18 06       	cpc	r1, r24
    14d8:	99 1f       	adc	r25, r25
    14da:	f1 cf       	rjmp	.-30     	; 0x14be <__fp_splitA+0xc>
    14dc:	86 95       	lsr	r24
    14de:	71 05       	cpc	r23, r1
    14e0:	61 05       	cpc	r22, r1
    14e2:	08 94       	sec
    14e4:	08 95       	ret

000014e6 <__fp_zero>:
    14e6:	e8 94       	clt

000014e8 <__fp_szero>:
    14e8:	bb 27       	eor	r27, r27
    14ea:	66 27       	eor	r22, r22
    14ec:	77 27       	eor	r23, r23
    14ee:	cb 01       	movw	r24, r22
    14f0:	97 f9       	bld	r25, 7
    14f2:	08 95       	ret

000014f4 <__mulsf3>:
    14f4:	0e 94 8d 0a 	call	0x151a	; 0x151a <__mulsf3x>
    14f8:	0c 94 40 0a 	jmp	0x1480	; 0x1480 <__fp_round>
    14fc:	0e 94 32 0a 	call	0x1464	; 0x1464 <__fp_pscA>
    1500:	38 f0       	brcs	.+14     	; 0x1510 <__mulsf3+0x1c>
    1502:	0e 94 39 0a 	call	0x1472	; 0x1472 <__fp_pscB>
    1506:	20 f0       	brcs	.+8      	; 0x1510 <__mulsf3+0x1c>
    1508:	95 23       	and	r25, r21
    150a:	11 f0       	breq	.+4      	; 0x1510 <__mulsf3+0x1c>
    150c:	0c 94 29 0a 	jmp	0x1452	; 0x1452 <__fp_inf>
    1510:	0c 94 2f 0a 	jmp	0x145e	; 0x145e <__fp_nan>
    1514:	11 24       	eor	r1, r1
    1516:	0c 94 74 0a 	jmp	0x14e8	; 0x14e8 <__fp_szero>

0000151a <__mulsf3x>:
    151a:	0e 94 51 0a 	call	0x14a2	; 0x14a2 <__fp_split3>
    151e:	70 f3       	brcs	.-36     	; 0x14fc <__mulsf3+0x8>

00001520 <__mulsf3_pse>:
    1520:	95 9f       	mul	r25, r21
    1522:	c1 f3       	breq	.-16     	; 0x1514 <__mulsf3+0x20>
    1524:	95 0f       	add	r25, r21
    1526:	50 e0       	ldi	r21, 0x00	; 0
    1528:	55 1f       	adc	r21, r21
    152a:	62 9f       	mul	r22, r18
    152c:	f0 01       	movw	r30, r0
    152e:	72 9f       	mul	r23, r18
    1530:	bb 27       	eor	r27, r27
    1532:	f0 0d       	add	r31, r0
    1534:	b1 1d       	adc	r27, r1
    1536:	63 9f       	mul	r22, r19
    1538:	aa 27       	eor	r26, r26
    153a:	f0 0d       	add	r31, r0
    153c:	b1 1d       	adc	r27, r1
    153e:	aa 1f       	adc	r26, r26
    1540:	64 9f       	mul	r22, r20
    1542:	66 27       	eor	r22, r22
    1544:	b0 0d       	add	r27, r0
    1546:	a1 1d       	adc	r26, r1
    1548:	66 1f       	adc	r22, r22
    154a:	82 9f       	mul	r24, r18
    154c:	22 27       	eor	r18, r18
    154e:	b0 0d       	add	r27, r0
    1550:	a1 1d       	adc	r26, r1
    1552:	62 1f       	adc	r22, r18
    1554:	73 9f       	mul	r23, r19
    1556:	b0 0d       	add	r27, r0
    1558:	a1 1d       	adc	r26, r1
    155a:	62 1f       	adc	r22, r18
    155c:	83 9f       	mul	r24, r19
    155e:	a0 0d       	add	r26, r0
    1560:	61 1d       	adc	r22, r1
    1562:	22 1f       	adc	r18, r18
    1564:	74 9f       	mul	r23, r20
    1566:	33 27       	eor	r19, r19
    1568:	a0 0d       	add	r26, r0
    156a:	61 1d       	adc	r22, r1
    156c:	23 1f       	adc	r18, r19
    156e:	84 9f       	mul	r24, r20
    1570:	60 0d       	add	r22, r0
    1572:	21 1d       	adc	r18, r1
    1574:	82 2f       	mov	r24, r18
    1576:	76 2f       	mov	r23, r22
    1578:	6a 2f       	mov	r22, r26
    157a:	11 24       	eor	r1, r1
    157c:	9f 57       	subi	r25, 0x7F	; 127
    157e:	50 40       	sbci	r21, 0x00	; 0
    1580:	9a f0       	brmi	.+38     	; 0x15a8 <__mulsf3_pse+0x88>
    1582:	f1 f0       	breq	.+60     	; 0x15c0 <__mulsf3_pse+0xa0>
    1584:	88 23       	and	r24, r24
    1586:	4a f0       	brmi	.+18     	; 0x159a <__mulsf3_pse+0x7a>
    1588:	ee 0f       	add	r30, r30
    158a:	ff 1f       	adc	r31, r31
    158c:	bb 1f       	adc	r27, r27
    158e:	66 1f       	adc	r22, r22
    1590:	77 1f       	adc	r23, r23
    1592:	88 1f       	adc	r24, r24
    1594:	91 50       	subi	r25, 0x01	; 1
    1596:	50 40       	sbci	r21, 0x00	; 0
    1598:	a9 f7       	brne	.-22     	; 0x1584 <__mulsf3_pse+0x64>
    159a:	9e 3f       	cpi	r25, 0xFE	; 254
    159c:	51 05       	cpc	r21, r1
    159e:	80 f0       	brcs	.+32     	; 0x15c0 <__mulsf3_pse+0xa0>
    15a0:	0c 94 29 0a 	jmp	0x1452	; 0x1452 <__fp_inf>
    15a4:	0c 94 74 0a 	jmp	0x14e8	; 0x14e8 <__fp_szero>
    15a8:	5f 3f       	cpi	r21, 0xFF	; 255
    15aa:	e4 f3       	brlt	.-8      	; 0x15a4 <__mulsf3_pse+0x84>
    15ac:	98 3e       	cpi	r25, 0xE8	; 232
    15ae:	d4 f3       	brlt	.-12     	; 0x15a4 <__mulsf3_pse+0x84>
    15b0:	86 95       	lsr	r24
    15b2:	77 95       	ror	r23
    15b4:	67 95       	ror	r22
    15b6:	b7 95       	ror	r27
    15b8:	f7 95       	ror	r31
    15ba:	e7 95       	ror	r30
    15bc:	9f 5f       	subi	r25, 0xFF	; 255
    15be:	c1 f7       	brne	.-16     	; 0x15b0 <__mulsf3_pse+0x90>
    15c0:	fe 2b       	or	r31, r30
    15c2:	88 0f       	add	r24, r24
    15c4:	91 1d       	adc	r25, r1
    15c6:	96 95       	lsr	r25
    15c8:	87 95       	ror	r24
    15ca:	97 f9       	bld	r25, 7
    15cc:	08 95       	ret

000015ce <__do_global_dtors>:
    15ce:	10 e0       	ldi	r17, 0x00	; 0
    15d0:	ce e2       	ldi	r28, 0x2E	; 46
    15d2:	d0 e0       	ldi	r29, 0x00	; 0
    15d4:	04 c0       	rjmp	.+8      	; 0x15de <__do_global_dtors+0x10>
    15d6:	fe 01       	movw	r30, r28
    15d8:	0e 94 43 09 	call	0x1286	; 0x1286 <__tablejump2__>
    15dc:	21 96       	adiw	r28, 0x01	; 1
    15de:	cf 32       	cpi	r28, 0x2F	; 47
    15e0:	d1 07       	cpc	r29, r17
    15e2:	c9 f7       	brne	.-14     	; 0x15d6 <__do_global_dtors+0x8>
    15e4:	f8 94       	cli

000015e6 <__stop_program>:
    15e6:	ff cf       	rjmp	.-2      	; 0x15e6 <__stop_program>
