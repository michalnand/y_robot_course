
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
      4c:	0c 94 bb 07 	jmp	0xf76	; 0xf76 <__vector_19>
      50:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>

00000054 <__ctors_start>:
      54:	06 01       	movw	r0, r12
      56:	d2 03       	fmuls	r21, r18
      58:	25 08       	sbc	r2, r5
      5a:	b8 09       	sbc	r27, r8

0000005c <__ctors_end>:
      5c:	0b 01       	movw	r0, r22
      5e:	bc 09       	sbc	r27, r12

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
      72:	ec e2       	ldi	r30, 0x2C	; 44
      74:	f5 e1       	ldi	r31, 0x15	; 21
      76:	02 c0       	rjmp	.+4      	; 0x7c <__do_copy_data+0x10>
      78:	05 90       	lpm	r0, Z+
      7a:	0d 92       	st	X+, r0
      7c:	ae 39       	cpi	r26, 0x9E	; 158
      7e:	b1 07       	cpc	r27, r17
      80:	d9 f7       	brne	.-10     	; 0x78 <__do_copy_data+0xc>

00000082 <__do_clear_bss>:
      82:	22 e0       	ldi	r18, 0x02	; 2
      84:	ae e9       	ldi	r26, 0x9E	; 158
      86:	b0 e0       	ldi	r27, 0x00	; 0
      88:	01 c0       	rjmp	.+2      	; 0x8c <.do_clear_bss_start>

0000008a <.do_clear_bss_loop>:
      8a:	1d 92       	st	X+, r1

0000008c <.do_clear_bss_start>:
      8c:	ad 3a       	cpi	r26, 0xAD	; 173
      8e:	b2 07       	cpc	r27, r18
      90:	e1 f7       	brne	.-8      	; 0x8a <.do_clear_bss_loop>

00000092 <__do_global_ctors>:
      92:	10 e0       	ldi	r17, 0x00	; 0
      94:	ce e2       	ldi	r28, 0x2E	; 46
      96:	d0 e0       	ldi	r29, 0x00	; 0
      98:	04 c0       	rjmp	.+8      	; 0xa2 <__do_global_ctors+0x10>
      9a:	21 97       	sbiw	r28, 0x01	; 1
      9c:	fe 01       	movw	r30, r28
      9e:	0e 94 83 0a 	call	0x1506	; 0x1506 <__tablejump2__>
      a2:	ca 32       	cpi	r28, 0x2A	; 42
      a4:	d1 07       	cpc	r29, r17
      a6:	c9 f7       	brne	.-14     	; 0x9a <__do_global_ctors+0x8>
      a8:	0e 94 71 00 	call	0xe2	; 0xe2 <main>
      ac:	0c 94 89 0a 	jmp	0x1512	; 0x1512 <__do_global_dtors>

000000b0 <__bad_interrupt>:
      b0:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b4 <_Z5blinkv>:
      b4:	80 91 9e 00 	lds	r24, 0x009E
      b8:	90 91 9f 00 	lds	r25, 0x009F
      bc:	00 97       	sbiw	r24, 0x00	; 0
      be:	19 f0       	breq	.+6      	; 0xc6 <_Z5blinkv+0x12>
      c0:	01 97       	sbiw	r24, 0x01	; 1
      c2:	49 f0       	breq	.+18     	; 0xd6 <_Z5blinkv+0x22>
      c4:	08 95       	ret
      c6:	dd 9a       	sbi	0x1b, 5	; 27
      c8:	81 e0       	ldi	r24, 0x01	; 1
      ca:	90 e0       	ldi	r25, 0x00	; 0
      cc:	90 93 9f 00 	sts	0x009F, r25
      d0:	80 93 9e 00 	sts	0x009E, r24
      d4:	08 95       	ret
      d6:	dd 98       	cbi	0x1b, 5	; 27
      d8:	10 92 9f 00 	sts	0x009F, r1
      dc:	10 92 9e 00 	sts	0x009E, r1
      e0:	08 95       	ret

000000e2 <main>:
      e2:	cf 93       	push	r28
      e4:	df 93       	push	r29
      e6:	cd b7       	in	r28, 0x3d	; 61
      e8:	de b7       	in	r29, 0x3e	; 62
      ea:	67 97       	sbiw	r28, 0x17	; 23
      ec:	0f b6       	in	r0, 0x3f	; 63
      ee:	f8 94       	cli
      f0:	de bf       	out	0x3e, r29	; 62
      f2:	0f be       	out	0x3f, r0	; 63
      f4:	cd bf       	out	0x3d, r28	; 61
      f6:	bb 98       	cbi	0x17, 3	; 23
      f8:	c3 9a       	sbi	0x18, 3	; 24
      fa:	ba 98       	cbi	0x17, 2	; 23
      fc:	c2 9a       	sbi	0x18, 2	; 24
      fe:	d7 9a       	sbi	0x1a, 7	; 26
     100:	df 9a       	sbi	0x1b, 7	; 27
     102:	20 e0       	ldi	r18, 0x00	; 0
     104:	48 ec       	ldi	r20, 0xC8	; 200
     106:	50 e0       	ldi	r21, 0x00	; 0
     108:	6a e5       	ldi	r22, 0x5A	; 90
     10a:	70 e0       	ldi	r23, 0x00	; 0
     10c:	88 ea       	ldi	r24, 0xA8	; 168
     10e:	92 e0       	ldi	r25, 0x02	; 2
     110:	0e 94 42 07 	call	0xe84	; 0xe84 <_ZN6CTimer8add_taskEPFvvEjb>
     114:	80 e6       	ldi	r24, 0x60	; 96
     116:	90 e0       	ldi	r25, 0x00	; 0
     118:	9f 93       	push	r25
     11a:	8f 93       	push	r24
     11c:	89 ea       	ldi	r24, 0xA9	; 169
     11e:	92 e0       	ldi	r25, 0x02	; 2
     120:	9f 93       	push	r25
     122:	8f 93       	push	r24
     124:	0e 94 34 09 	call	0x1268	; 0x1268 <_ZN9CTerminal6printfEPKcz>
     128:	ce 01       	movw	r24, r28
     12a:	01 96       	adiw	r24, 0x01	; 1
     12c:	0e 94 df 03 	call	0x7be	; 0x7be <_ZN8CVL53L0XC1Ev>
     130:	ce 01       	movw	r24, r28
     132:	43 96       	adiw	r24, 0x13	; 19
     134:	0e 94 dc 09 	call	0x13b8	; 0x13b8 <_ZN11CLEDDisplayC1Ev>
     138:	60 e0       	ldi	r22, 0x00	; 0
     13a:	ce 01       	movw	r24, r28
     13c:	43 96       	adiw	r24, 0x13	; 19
     13e:	0e 94 f4 09 	call	0x13e8	; 0x13e8 <_ZN11CLEDDisplay11display_decEh>
     142:	0f 90       	pop	r0
     144:	0f 90       	pop	r0
     146:	0f 90       	pop	r0
     148:	0f 90       	pop	r0
     14a:	b3 9b       	sbis	0x16, 3	; 22
     14c:	04 c0       	rjmp	.+8      	; 0x156 <main+0x74>
     14e:	b2 9b       	sbis	0x16, 2	; 22
     150:	02 c0       	rjmp	.+4      	; 0x156 <main+0x74>
     152:	00 00       	nop
     154:	fa cf       	rjmp	.-12     	; 0x14a <main+0x68>
     156:	60 e6       	ldi	r22, 0x60	; 96
     158:	72 e0       	ldi	r23, 0x02	; 2
     15a:	ce 01       	movw	r24, r28
     15c:	01 96       	adiw	r24, 0x01	; 1
     15e:	0e 94 63 05 	call	0xac6	; 0xac6 <_ZN8CVL53L0X4initEP14CI2C_Interface>
     162:	80 e4       	ldi	r24, 0x40	; 64
     164:	48 2e       	mov	r4, r24
     166:	51 2c       	mov	r5, r1
     168:	61 2c       	mov	r6, r1
     16a:	71 2c       	mov	r7, r1
     16c:	92 e7       	ldi	r25, 0x72	; 114
     16e:	89 2e       	mov	r8, r25
     170:	90 e0       	ldi	r25, 0x00	; 0
     172:	99 2e       	mov	r9, r25
     174:	29 ea       	ldi	r18, 0xA9	; 169
     176:	a2 2e       	mov	r10, r18
     178:	22 e0       	ldi	r18, 0x02	; 2
     17a:	b2 2e       	mov	r11, r18
     17c:	00 e4       	ldi	r16, 0x40	; 64
     17e:	10 e0       	ldi	r17, 0x00	; 0
     180:	c1 2c       	mov	r12, r1
     182:	d1 2c       	mov	r13, r1
     184:	76 01       	movw	r14, r12
     186:	ce 01       	movw	r24, r28
     188:	01 96       	adiw	r24, 0x01	; 1
     18a:	0e 94 e1 03 	call	0x7c2	; 0x7c2 <_ZN8CVL53L0X4readEv>
     18e:	09 2e       	mov	r0, r25
     190:	00 0c       	add	r0, r0
     192:	aa 0b       	sbc	r26, r26
     194:	bb 0b       	sbc	r27, r27
     196:	c8 0e       	add	r12, r24
     198:	d9 1e       	adc	r13, r25
     19a:	ea 1e       	adc	r14, r26
     19c:	fb 1e       	adc	r15, r27
     19e:	4a e0       	ldi	r20, 0x0A	; 10
     1a0:	50 e0       	ldi	r21, 0x00	; 0
     1a2:	60 e0       	ldi	r22, 0x00	; 0
     1a4:	70 e0       	ldi	r23, 0x00	; 0
     1a6:	88 ea       	ldi	r24, 0xA8	; 168
     1a8:	92 e0       	ldi	r25, 0x02	; 2
     1aa:	0e 94 87 07 	call	0xf0e	; 0xf0e <_ZN6CTimer8delay_msEm>
     1ae:	01 50       	subi	r16, 0x01	; 1
     1b0:	11 09       	sbc	r17, r1
     1b2:	49 f7       	brne	.-46     	; 0x186 <main+0xa4>
     1b4:	c7 01       	movw	r24, r14
     1b6:	b6 01       	movw	r22, r12
     1b8:	a3 01       	movw	r20, r6
     1ba:	92 01       	movw	r18, r4
     1bc:	0e 94 50 0a 	call	0x14a0	; 0x14a0 <__divmodsi4>
     1c0:	ca 01       	movw	r24, r20
     1c2:	9f 93       	push	r25
     1c4:	4f 93       	push	r20
     1c6:	3f 93       	push	r19
     1c8:	2f 93       	push	r18
     1ca:	9f 92       	push	r9
     1cc:	8f 92       	push	r8
     1ce:	bf 92       	push	r11
     1d0:	af 92       	push	r10
     1d2:	2c 8b       	std	Y+20, r18	; 0x14
     1d4:	3d 8b       	std	Y+21, r19	; 0x15
     1d6:	4e 8b       	std	Y+22, r20	; 0x16
     1d8:	9f 8b       	std	Y+23, r25	; 0x17
     1da:	0e 94 34 09 	call	0x1268	; 0x1268 <_ZN9CTerminal6printfEPKcz>
     1de:	2c 89       	ldd	r18, Y+20	; 0x14
     1e0:	62 2f       	mov	r22, r18
     1e2:	3d 89       	ldd	r19, Y+21	; 0x15
     1e4:	73 2f       	mov	r23, r19
     1e6:	8e 89       	ldd	r24, Y+22	; 0x16
     1e8:	9f 89       	ldd	r25, Y+23	; 0x17
     1ea:	2a e0       	ldi	r18, 0x0A	; 10
     1ec:	30 e0       	ldi	r19, 0x00	; 0
     1ee:	40 e0       	ldi	r20, 0x00	; 0
     1f0:	50 e0       	ldi	r21, 0x00	; 0
     1f2:	0e 94 50 0a 	call	0x14a0	; 0x14a0 <__divmodsi4>
     1f6:	62 2f       	mov	r22, r18
     1f8:	ce 01       	movw	r24, r28
     1fa:	43 96       	adiw	r24, 0x13	; 19
     1fc:	0e 94 f4 09 	call	0x13e8	; 0x13e8 <_ZN11CLEDDisplay11display_decEh>
     200:	0f b6       	in	r0, 0x3f	; 63
     202:	f8 94       	cli
     204:	de bf       	out	0x3e, r29	; 62
     206:	0f be       	out	0x3f, r0	; 63
     208:	cd bf       	out	0x3d, r28	; 61
     20a:	b8 cf       	rjmp	.-144    	; 0x17c <main+0x9a>

0000020c <_GLOBAL__sub_I_led1>:
     20c:	d5 9a       	sbi	0x1a, 5	; 26
     20e:	80 ea       	ldi	r24, 0xA0	; 160
     210:	90 e0       	ldi	r25, 0x00	; 0
     212:	0c 94 0f 01 	jmp	0x21e	; 0x21e <_ZN12CLidarKernelC1Ev>

00000216 <_GLOBAL__sub_D_led1>:
     216:	80 ea       	ldi	r24, 0xA0	; 160
     218:	90 e0       	ldi	r25, 0x00	; 0
     21a:	0c 94 21 01 	jmp	0x242	; 0x242 <_ZN12CLidarKernelD1Ev>

0000021e <_ZN12CLidarKernelC1Ev>:
     21e:	cf 93       	push	r28
     220:	df 93       	push	r29
     222:	ec 01       	movw	r28, r24
     224:	09 96       	adiw	r24, 0x09	; 9
     226:	0e 94 16 07 	call	0xe2c	; 0xe2c <_ZN5CGyroC1Ev>
     22a:	ce 01       	movw	r24, r28
     22c:	8d 5b       	subi	r24, 0xBD	; 189
     22e:	9f 4f       	sbci	r25, 0xFF	; 255
     230:	0e 94 44 01 	call	0x288	; 0x288 <_ZN6CMotorC1Ev>
     234:	ce 01       	movw	r24, r28
     236:	8c 5b       	subi	r24, 0xBC	; 188
     238:	9f 4f       	sbci	r25, 0xFF	; 255
     23a:	df 91       	pop	r29
     23c:	cf 91       	pop	r28
     23e:	0c 94 df 03 	jmp	0x7be	; 0x7be <_ZN8CVL53L0XC1Ev>

00000242 <_ZN12CLidarKernelD1Ev>:
     242:	cf 93       	push	r28
     244:	df 93       	push	r29
     246:	ec 01       	movw	r28, r24
     248:	8c 5b       	subi	r24, 0xBC	; 188
     24a:	9f 4f       	sbci	r25, 0xFF	; 255
     24c:	0e 94 e0 03 	call	0x7c0	; 0x7c0 <_ZN8CVL53L0XD1Ev>
     250:	ce 01       	movw	r24, r28
     252:	8d 5b       	subi	r24, 0xBD	; 189
     254:	9f 4f       	sbci	r25, 0xFF	; 255
     256:	0e 94 50 01 	call	0x2a0	; 0x2a0 <_ZN6CMotorD1Ev>
     25a:	ce 01       	movw	r24, r28
     25c:	09 96       	adiw	r24, 0x09	; 9
     25e:	df 91       	pop	r29
     260:	cf 91       	pop	r28
     262:	0c 94 17 07 	jmp	0xe2e	; 0xe2e <_ZN5CGyroD1Ev>

00000266 <_ZN6CUSARTC1Ev>:
     266:	10 bc       	out	0x20, r1	; 32
     268:	80 e4       	ldi	r24, 0x40	; 64
     26a:	89 b9       	out	0x09, r24	; 9
     26c:	80 b5       	in	r24, 0x20	; 32
     26e:	86 68       	ori	r24, 0x86	; 134
     270:	80 bd       	out	0x20, r24	; 32
     272:	8a b1       	in	r24, 0x0a	; 10
     274:	88 61       	ori	r24, 0x18	; 24
     276:	8a b9       	out	0x0a, r24	; 10
     278:	08 95       	ret

0000027a <_ZN6CUSARTD1Ev>:
     27a:	08 95       	ret

0000027c <_ZN6CUSART7putcharEc>:
     27c:	6c b9       	out	0x0c, r22	; 12
     27e:	5d 99       	sbic	0x0b, 5	; 11
     280:	02 c0       	rjmp	.+4      	; 0x286 <_ZN6CUSART7putcharEc+0xa>
     282:	00 00       	nop
     284:	fc cf       	rjmp	.-8      	; 0x27e <_ZN6CUSART7putcharEc+0x2>
     286:	08 95       	ret

00000288 <_ZN6CMotorC1Ev>:
     288:	80 ef       	ldi	r24, 0xF0	; 240
     28a:	81 bb       	out	0x11, r24	; 17
     28c:	95 98       	cbi	0x12, 5	; 18
     28e:	81 ea       	ldi	r24, 0xA1	; 161
     290:	8f bd       	out	0x2f, r24	; 47
     292:	81 e0       	ldi	r24, 0x01	; 1
     294:	8e bd       	out	0x2e, r24	; 46
     296:	1b bc       	out	0x2b, r1	; 43
     298:	1a bc       	out	0x2a, r1	; 42
     29a:	19 bc       	out	0x29, r1	; 41
     29c:	18 bc       	out	0x28, r1	; 40
     29e:	08 95       	ret

000002a0 <_ZN6CMotorD1Ev>:
     2a0:	08 95       	ret

000002a2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
     2a2:	0f 93       	push	r16
     2a4:	1f 93       	push	r17
     2a6:	cf 93       	push	r28
     2a8:	df 93       	push	r29
     2aa:	00 d0       	rcall	.+0      	; 0x2ac <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
     2ac:	1f 92       	push	r1
     2ae:	cd b7       	in	r28, 0x3d	; 61
     2b0:	de b7       	in	r29, 0x3e	; 62
     2b2:	8c 01       	movw	r16, r24
     2b4:	dc 01       	movw	r26, r24
     2b6:	ed 91       	ld	r30, X+
     2b8:	fc 91       	ld	r31, X
     2ba:	01 90       	ld	r0, Z+
     2bc:	f0 81       	ld	r31, Z
     2be:	e0 2d       	mov	r30, r0
     2c0:	2b 83       	std	Y+3, r18	; 0x03
     2c2:	4a 83       	std	Y+2, r20	; 0x02
     2c4:	69 83       	std	Y+1, r22	; 0x01
     2c6:	09 95       	icall
     2c8:	d8 01       	movw	r26, r16
     2ca:	ed 91       	ld	r30, X+
     2cc:	fc 91       	ld	r31, X
     2ce:	04 80       	ldd	r0, Z+4	; 0x04
     2d0:	f5 81       	ldd	r31, Z+5	; 0x05
     2d2:	e0 2d       	mov	r30, r0
     2d4:	69 81       	ldd	r22, Y+1	; 0x01
     2d6:	c8 01       	movw	r24, r16
     2d8:	09 95       	icall
     2da:	d8 01       	movw	r26, r16
     2dc:	ed 91       	ld	r30, X+
     2de:	fc 91       	ld	r31, X
     2e0:	04 80       	ldd	r0, Z+4	; 0x04
     2e2:	f5 81       	ldd	r31, Z+5	; 0x05
     2e4:	e0 2d       	mov	r30, r0
     2e6:	4a 81       	ldd	r20, Y+2	; 0x02
     2e8:	64 2f       	mov	r22, r20
     2ea:	c8 01       	movw	r24, r16
     2ec:	09 95       	icall
     2ee:	d8 01       	movw	r26, r16
     2f0:	ed 91       	ld	r30, X+
     2f2:	fc 91       	ld	r31, X
     2f4:	04 80       	ldd	r0, Z+4	; 0x04
     2f6:	f5 81       	ldd	r31, Z+5	; 0x05
     2f8:	e0 2d       	mov	r30, r0
     2fa:	2b 81       	ldd	r18, Y+3	; 0x03
     2fc:	62 2f       	mov	r22, r18
     2fe:	c8 01       	movw	r24, r16
     300:	09 95       	icall
     302:	d8 01       	movw	r26, r16
     304:	ed 91       	ld	r30, X+
     306:	fc 91       	ld	r31, X
     308:	02 80       	ldd	r0, Z+2	; 0x02
     30a:	f3 81       	ldd	r31, Z+3	; 0x03
     30c:	e0 2d       	mov	r30, r0
     30e:	c8 01       	movw	r24, r16
     310:	0f 90       	pop	r0
     312:	0f 90       	pop	r0
     314:	0f 90       	pop	r0
     316:	df 91       	pop	r29
     318:	cf 91       	pop	r28
     31a:	1f 91       	pop	r17
     31c:	0f 91       	pop	r16
     31e:	09 94       	ijmp

00000320 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
     320:	0f 93       	push	r16
     322:	1f 93       	push	r17
     324:	cf 93       	push	r28
     326:	df 93       	push	r29
     328:	00 d0       	rcall	.+0      	; 0x32a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
     32a:	00 d0       	rcall	.+0      	; 0x32c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
     32c:	cd b7       	in	r28, 0x3d	; 61
     32e:	de b7       	in	r29, 0x3e	; 62
     330:	8c 01       	movw	r16, r24
     332:	dc 01       	movw	r26, r24
     334:	ed 91       	ld	r30, X+
     336:	fc 91       	ld	r31, X
     338:	01 90       	ld	r0, Z+
     33a:	f0 81       	ld	r31, Z
     33c:	e0 2d       	mov	r30, r0
     33e:	2c 83       	std	Y+4, r18	; 0x04
     340:	3b 83       	std	Y+3, r19	; 0x03
     342:	4a 83       	std	Y+2, r20	; 0x02
     344:	69 83       	std	Y+1, r22	; 0x01
     346:	09 95       	icall
     348:	d8 01       	movw	r26, r16
     34a:	ed 91       	ld	r30, X+
     34c:	fc 91       	ld	r31, X
     34e:	04 80       	ldd	r0, Z+4	; 0x04
     350:	f5 81       	ldd	r31, Z+5	; 0x05
     352:	e0 2d       	mov	r30, r0
     354:	69 81       	ldd	r22, Y+1	; 0x01
     356:	c8 01       	movw	r24, r16
     358:	09 95       	icall
     35a:	d8 01       	movw	r26, r16
     35c:	ed 91       	ld	r30, X+
     35e:	fc 91       	ld	r31, X
     360:	04 80       	ldd	r0, Z+4	; 0x04
     362:	f5 81       	ldd	r31, Z+5	; 0x05
     364:	e0 2d       	mov	r30, r0
     366:	4a 81       	ldd	r20, Y+2	; 0x02
     368:	64 2f       	mov	r22, r20
     36a:	c8 01       	movw	r24, r16
     36c:	09 95       	icall
     36e:	d8 01       	movw	r26, r16
     370:	ed 91       	ld	r30, X+
     372:	fc 91       	ld	r31, X
     374:	04 80       	ldd	r0, Z+4	; 0x04
     376:	f5 81       	ldd	r31, Z+5	; 0x05
     378:	e0 2d       	mov	r30, r0
     37a:	3b 81       	ldd	r19, Y+3	; 0x03
     37c:	63 2f       	mov	r22, r19
     37e:	c8 01       	movw	r24, r16
     380:	09 95       	icall
     382:	d8 01       	movw	r26, r16
     384:	ed 91       	ld	r30, X+
     386:	fc 91       	ld	r31, X
     388:	04 80       	ldd	r0, Z+4	; 0x04
     38a:	f5 81       	ldd	r31, Z+5	; 0x05
     38c:	e0 2d       	mov	r30, r0
     38e:	2c 81       	ldd	r18, Y+4	; 0x04
     390:	62 2f       	mov	r22, r18
     392:	c8 01       	movw	r24, r16
     394:	09 95       	icall
     396:	d8 01       	movw	r26, r16
     398:	ed 91       	ld	r30, X+
     39a:	fc 91       	ld	r31, X
     39c:	02 80       	ldd	r0, Z+2	; 0x02
     39e:	f3 81       	ldd	r31, Z+3	; 0x03
     3a0:	e0 2d       	mov	r30, r0
     3a2:	c8 01       	movw	r24, r16
     3a4:	0f 90       	pop	r0
     3a6:	0f 90       	pop	r0
     3a8:	0f 90       	pop	r0
     3aa:	0f 90       	pop	r0
     3ac:	df 91       	pop	r29
     3ae:	cf 91       	pop	r28
     3b0:	1f 91       	pop	r17
     3b2:	0f 91       	pop	r16
     3b4:	09 94       	ijmp

000003b6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
     3b6:	cf 92       	push	r12
     3b8:	df 92       	push	r13
     3ba:	ef 92       	push	r14
     3bc:	ff 92       	push	r15
     3be:	0f 93       	push	r16
     3c0:	1f 93       	push	r17
     3c2:	cf 93       	push	r28
     3c4:	df 93       	push	r29
     3c6:	00 d0       	rcall	.+0      	; 0x3c8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
     3c8:	00 d0       	rcall	.+0      	; 0x3ca <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
     3ca:	cd b7       	in	r28, 0x3d	; 61
     3cc:	de b7       	in	r29, 0x3e	; 62
     3ce:	6c 01       	movw	r12, r24
     3d0:	dc 01       	movw	r26, r24
     3d2:	ed 91       	ld	r30, X+
     3d4:	fc 91       	ld	r31, X
     3d6:	01 90       	ld	r0, Z+
     3d8:	f0 81       	ld	r31, Z
     3da:	e0 2d       	mov	r30, r0
     3dc:	2b 83       	std	Y+3, r18	; 0x03
     3de:	3c 83       	std	Y+4, r19	; 0x04
     3e0:	4a 83       	std	Y+2, r20	; 0x02
     3e2:	69 83       	std	Y+1, r22	; 0x01
     3e4:	09 95       	icall
     3e6:	d6 01       	movw	r26, r12
     3e8:	ed 91       	ld	r30, X+
     3ea:	fc 91       	ld	r31, X
     3ec:	04 80       	ldd	r0, Z+4	; 0x04
     3ee:	f5 81       	ldd	r31, Z+5	; 0x05
     3f0:	e0 2d       	mov	r30, r0
     3f2:	69 81       	ldd	r22, Y+1	; 0x01
     3f4:	c6 01       	movw	r24, r12
     3f6:	09 95       	icall
     3f8:	d6 01       	movw	r26, r12
     3fa:	ed 91       	ld	r30, X+
     3fc:	fc 91       	ld	r31, X
     3fe:	04 80       	ldd	r0, Z+4	; 0x04
     400:	f5 81       	ldd	r31, Z+5	; 0x05
     402:	e0 2d       	mov	r30, r0
     404:	4a 81       	ldd	r20, Y+2	; 0x02
     406:	64 2f       	mov	r22, r20
     408:	c6 01       	movw	r24, r12
     40a:	09 95       	icall
     40c:	2b 81       	ldd	r18, Y+3	; 0x03
     40e:	e2 2e       	mov	r14, r18
     410:	3c 81       	ldd	r19, Y+4	; 0x04
     412:	f3 2e       	mov	r15, r19
     414:	0e 0d       	add	r16, r14
     416:	1f 1d       	adc	r17, r15
     418:	d6 01       	movw	r26, r12
     41a:	ed 91       	ld	r30, X+
     41c:	fc 91       	ld	r31, X
     41e:	e0 16       	cp	r14, r16
     420:	f1 06       	cpc	r15, r17
     422:	49 f0       	breq	.+18     	; 0x436 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
     424:	d7 01       	movw	r26, r14
     426:	6d 91       	ld	r22, X+
     428:	7d 01       	movw	r14, r26
     42a:	04 80       	ldd	r0, Z+4	; 0x04
     42c:	f5 81       	ldd	r31, Z+5	; 0x05
     42e:	e0 2d       	mov	r30, r0
     430:	c6 01       	movw	r24, r12
     432:	09 95       	icall
     434:	f1 cf       	rjmp	.-30     	; 0x418 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
     436:	02 80       	ldd	r0, Z+2	; 0x02
     438:	f3 81       	ldd	r31, Z+3	; 0x03
     43a:	e0 2d       	mov	r30, r0
     43c:	c6 01       	movw	r24, r12
     43e:	0f 90       	pop	r0
     440:	0f 90       	pop	r0
     442:	0f 90       	pop	r0
     444:	0f 90       	pop	r0
     446:	df 91       	pop	r29
     448:	cf 91       	pop	r28
     44a:	1f 91       	pop	r17
     44c:	0f 91       	pop	r16
     44e:	ff 90       	pop	r15
     450:	ef 90       	pop	r14
     452:	df 90       	pop	r13
     454:	cf 90       	pop	r12
     456:	09 94       	ijmp

00000458 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
     458:	ef 92       	push	r14
     45a:	ff 92       	push	r15
     45c:	1f 93       	push	r17
     45e:	cf 93       	push	r28
     460:	df 93       	push	r29
     462:	1f 92       	push	r1
     464:	cd b7       	in	r28, 0x3d	; 61
     466:	de b7       	in	r29, 0x3e	; 62
     468:	7c 01       	movw	r14, r24
     46a:	16 2f       	mov	r17, r22
     46c:	dc 01       	movw	r26, r24
     46e:	ed 91       	ld	r30, X+
     470:	fc 91       	ld	r31, X
     472:	01 90       	ld	r0, Z+
     474:	f0 81       	ld	r31, Z
     476:	e0 2d       	mov	r30, r0
     478:	49 83       	std	Y+1, r20	; 0x01
     47a:	09 95       	icall
     47c:	d7 01       	movw	r26, r14
     47e:	ed 91       	ld	r30, X+
     480:	fc 91       	ld	r31, X
     482:	04 80       	ldd	r0, Z+4	; 0x04
     484:	f5 81       	ldd	r31, Z+5	; 0x05
     486:	e0 2d       	mov	r30, r0
     488:	61 2f       	mov	r22, r17
     48a:	c7 01       	movw	r24, r14
     48c:	09 95       	icall
     48e:	d7 01       	movw	r26, r14
     490:	ed 91       	ld	r30, X+
     492:	fc 91       	ld	r31, X
     494:	04 80       	ldd	r0, Z+4	; 0x04
     496:	f5 81       	ldd	r31, Z+5	; 0x05
     498:	e0 2d       	mov	r30, r0
     49a:	49 81       	ldd	r20, Y+1	; 0x01
     49c:	64 2f       	mov	r22, r20
     49e:	c7 01       	movw	r24, r14
     4a0:	09 95       	icall
     4a2:	d7 01       	movw	r26, r14
     4a4:	ed 91       	ld	r30, X+
     4a6:	fc 91       	ld	r31, X
     4a8:	01 90       	ld	r0, Z+
     4aa:	f0 81       	ld	r31, Z
     4ac:	e0 2d       	mov	r30, r0
     4ae:	c7 01       	movw	r24, r14
     4b0:	09 95       	icall
     4b2:	d7 01       	movw	r26, r14
     4b4:	ed 91       	ld	r30, X+
     4b6:	fc 91       	ld	r31, X
     4b8:	61 2f       	mov	r22, r17
     4ba:	61 60       	ori	r22, 0x01	; 1
     4bc:	04 80       	ldd	r0, Z+4	; 0x04
     4be:	f5 81       	ldd	r31, Z+5	; 0x05
     4c0:	e0 2d       	mov	r30, r0
     4c2:	c7 01       	movw	r24, r14
     4c4:	09 95       	icall
     4c6:	d7 01       	movw	r26, r14
     4c8:	ed 91       	ld	r30, X+
     4ca:	fc 91       	ld	r31, X
     4cc:	06 80       	ldd	r0, Z+6	; 0x06
     4ce:	f7 81       	ldd	r31, Z+7	; 0x07
     4d0:	e0 2d       	mov	r30, r0
     4d2:	60 e0       	ldi	r22, 0x00	; 0
     4d4:	c7 01       	movw	r24, r14
     4d6:	09 95       	icall
     4d8:	18 2f       	mov	r17, r24
     4da:	d7 01       	movw	r26, r14
     4dc:	ed 91       	ld	r30, X+
     4de:	fc 91       	ld	r31, X
     4e0:	02 80       	ldd	r0, Z+2	; 0x02
     4e2:	f3 81       	ldd	r31, Z+3	; 0x03
     4e4:	e0 2d       	mov	r30, r0
     4e6:	c7 01       	movw	r24, r14
     4e8:	09 95       	icall
     4ea:	81 2f       	mov	r24, r17
     4ec:	0f 90       	pop	r0
     4ee:	df 91       	pop	r29
     4f0:	cf 91       	pop	r28
     4f2:	1f 91       	pop	r17
     4f4:	ff 90       	pop	r15
     4f6:	ef 90       	pop	r14
     4f8:	08 95       	ret

000004fa <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
     4fa:	ef 92       	push	r14
     4fc:	ff 92       	push	r15
     4fe:	0f 93       	push	r16
     500:	1f 93       	push	r17
     502:	cf 93       	push	r28
     504:	df 93       	push	r29
     506:	1f 92       	push	r1
     508:	cd b7       	in	r28, 0x3d	; 61
     50a:	de b7       	in	r29, 0x3e	; 62
     50c:	7c 01       	movw	r14, r24
     50e:	16 2f       	mov	r17, r22
     510:	dc 01       	movw	r26, r24
     512:	ed 91       	ld	r30, X+
     514:	fc 91       	ld	r31, X
     516:	01 90       	ld	r0, Z+
     518:	f0 81       	ld	r31, Z
     51a:	e0 2d       	mov	r30, r0
     51c:	49 83       	std	Y+1, r20	; 0x01
     51e:	09 95       	icall
     520:	d7 01       	movw	r26, r14
     522:	ed 91       	ld	r30, X+
     524:	fc 91       	ld	r31, X
     526:	04 80       	ldd	r0, Z+4	; 0x04
     528:	f5 81       	ldd	r31, Z+5	; 0x05
     52a:	e0 2d       	mov	r30, r0
     52c:	61 2f       	mov	r22, r17
     52e:	c7 01       	movw	r24, r14
     530:	09 95       	icall
     532:	d7 01       	movw	r26, r14
     534:	ed 91       	ld	r30, X+
     536:	fc 91       	ld	r31, X
     538:	04 80       	ldd	r0, Z+4	; 0x04
     53a:	f5 81       	ldd	r31, Z+5	; 0x05
     53c:	e0 2d       	mov	r30, r0
     53e:	49 81       	ldd	r20, Y+1	; 0x01
     540:	64 2f       	mov	r22, r20
     542:	c7 01       	movw	r24, r14
     544:	09 95       	icall
     546:	d7 01       	movw	r26, r14
     548:	ed 91       	ld	r30, X+
     54a:	fc 91       	ld	r31, X
     54c:	01 90       	ld	r0, Z+
     54e:	f0 81       	ld	r31, Z
     550:	e0 2d       	mov	r30, r0
     552:	c7 01       	movw	r24, r14
     554:	09 95       	icall
     556:	d7 01       	movw	r26, r14
     558:	ed 91       	ld	r30, X+
     55a:	fc 91       	ld	r31, X
     55c:	61 2f       	mov	r22, r17
     55e:	61 60       	ori	r22, 0x01	; 1
     560:	04 80       	ldd	r0, Z+4	; 0x04
     562:	f5 81       	ldd	r31, Z+5	; 0x05
     564:	e0 2d       	mov	r30, r0
     566:	c7 01       	movw	r24, r14
     568:	09 95       	icall
     56a:	d7 01       	movw	r26, r14
     56c:	ed 91       	ld	r30, X+
     56e:	fc 91       	ld	r31, X
     570:	06 80       	ldd	r0, Z+6	; 0x06
     572:	f7 81       	ldd	r31, Z+7	; 0x07
     574:	e0 2d       	mov	r30, r0
     576:	61 e0       	ldi	r22, 0x01	; 1
     578:	c7 01       	movw	r24, r14
     57a:	09 95       	icall
     57c:	08 2f       	mov	r16, r24
     57e:	10 e0       	ldi	r17, 0x00	; 0
     580:	10 2f       	mov	r17, r16
     582:	00 27       	eor	r16, r16
     584:	d7 01       	movw	r26, r14
     586:	ed 91       	ld	r30, X+
     588:	fc 91       	ld	r31, X
     58a:	06 80       	ldd	r0, Z+6	; 0x06
     58c:	f7 81       	ldd	r31, Z+7	; 0x07
     58e:	e0 2d       	mov	r30, r0
     590:	60 e0       	ldi	r22, 0x00	; 0
     592:	c7 01       	movw	r24, r14
     594:	09 95       	icall
     596:	08 2b       	or	r16, r24
     598:	d7 01       	movw	r26, r14
     59a:	ed 91       	ld	r30, X+
     59c:	fc 91       	ld	r31, X
     59e:	02 80       	ldd	r0, Z+2	; 0x02
     5a0:	f3 81       	ldd	r31, Z+3	; 0x03
     5a2:	e0 2d       	mov	r30, r0
     5a4:	c7 01       	movw	r24, r14
     5a6:	09 95       	icall
     5a8:	c8 01       	movw	r24, r16
     5aa:	0f 90       	pop	r0
     5ac:	df 91       	pop	r29
     5ae:	cf 91       	pop	r28
     5b0:	1f 91       	pop	r17
     5b2:	0f 91       	pop	r16
     5b4:	ff 90       	pop	r15
     5b6:	ef 90       	pop	r14
     5b8:	08 95       	ret

000005ba <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
     5ba:	cf 92       	push	r12
     5bc:	df 92       	push	r13
     5be:	ef 92       	push	r14
     5c0:	ff 92       	push	r15
     5c2:	0f 93       	push	r16
     5c4:	1f 93       	push	r17
     5c6:	cf 93       	push	r28
     5c8:	df 93       	push	r29
     5ca:	00 d0       	rcall	.+0      	; 0x5cc <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
     5cc:	1f 92       	push	r1
     5ce:	cd b7       	in	r28, 0x3d	; 61
     5d0:	de b7       	in	r29, 0x3e	; 62
     5d2:	6c 01       	movw	r12, r24
     5d4:	f6 2e       	mov	r15, r22
     5d6:	dc 01       	movw	r26, r24
     5d8:	ed 91       	ld	r30, X+
     5da:	fc 91       	ld	r31, X
     5dc:	01 90       	ld	r0, Z+
     5de:	f0 81       	ld	r31, Z
     5e0:	e0 2d       	mov	r30, r0
     5e2:	2a 83       	std	Y+2, r18	; 0x02
     5e4:	3b 83       	std	Y+3, r19	; 0x03
     5e6:	49 83       	std	Y+1, r20	; 0x01
     5e8:	09 95       	icall
     5ea:	d6 01       	movw	r26, r12
     5ec:	ed 91       	ld	r30, X+
     5ee:	fc 91       	ld	r31, X
     5f0:	04 80       	ldd	r0, Z+4	; 0x04
     5f2:	f5 81       	ldd	r31, Z+5	; 0x05
     5f4:	e0 2d       	mov	r30, r0
     5f6:	6f 2d       	mov	r22, r15
     5f8:	c6 01       	movw	r24, r12
     5fa:	09 95       	icall
     5fc:	d6 01       	movw	r26, r12
     5fe:	ed 91       	ld	r30, X+
     600:	fc 91       	ld	r31, X
     602:	04 80       	ldd	r0, Z+4	; 0x04
     604:	f5 81       	ldd	r31, Z+5	; 0x05
     606:	e0 2d       	mov	r30, r0
     608:	49 81       	ldd	r20, Y+1	; 0x01
     60a:	64 2f       	mov	r22, r20
     60c:	c6 01       	movw	r24, r12
     60e:	09 95       	icall
     610:	d6 01       	movw	r26, r12
     612:	ed 91       	ld	r30, X+
     614:	fc 91       	ld	r31, X
     616:	01 90       	ld	r0, Z+
     618:	f0 81       	ld	r31, Z
     61a:	e0 2d       	mov	r30, r0
     61c:	c6 01       	movw	r24, r12
     61e:	09 95       	icall
     620:	d6 01       	movw	r26, r12
     622:	ed 91       	ld	r30, X+
     624:	fc 91       	ld	r31, X
     626:	6f 2d       	mov	r22, r15
     628:	61 60       	ori	r22, 0x01	; 1
     62a:	04 80       	ldd	r0, Z+4	; 0x04
     62c:	f5 81       	ldd	r31, Z+5	; 0x05
     62e:	e0 2d       	mov	r30, r0
     630:	c6 01       	movw	r24, r12
     632:	09 95       	icall
     634:	2a 81       	ldd	r18, Y+2	; 0x02
     636:	e2 2e       	mov	r14, r18
     638:	3b 81       	ldd	r19, Y+3	; 0x03
     63a:	f3 2e       	mov	r15, r19
     63c:	0e 0d       	add	r16, r14
     63e:	1f 1d       	adc	r17, r15
     640:	d6 01       	movw	r26, r12
     642:	ed 91       	ld	r30, X+
     644:	fc 91       	ld	r31, X
     646:	e0 16       	cp	r14, r16
     648:	f1 06       	cpc	r15, r17
     64a:	51 f0       	breq	.+20     	; 0x660 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0xa6>
     64c:	06 80       	ldd	r0, Z+6	; 0x06
     64e:	f7 81       	ldd	r31, Z+7	; 0x07
     650:	e0 2d       	mov	r30, r0
     652:	61 e0       	ldi	r22, 0x01	; 1
     654:	c6 01       	movw	r24, r12
     656:	09 95       	icall
     658:	f7 01       	movw	r30, r14
     65a:	81 93       	st	Z+, r24
     65c:	7f 01       	movw	r14, r30
     65e:	f0 cf       	rjmp	.-32     	; 0x640 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x86>
     660:	02 80       	ldd	r0, Z+2	; 0x02
     662:	f3 81       	ldd	r31, Z+3	; 0x03
     664:	e0 2d       	mov	r30, r0
     666:	c6 01       	movw	r24, r12
     668:	0f 90       	pop	r0
     66a:	0f 90       	pop	r0
     66c:	0f 90       	pop	r0
     66e:	df 91       	pop	r29
     670:	cf 91       	pop	r28
     672:	1f 91       	pop	r17
     674:	0f 91       	pop	r16
     676:	ff 90       	pop	r15
     678:	ef 90       	pop	r14
     67a:	df 90       	pop	r13
     67c:	cf 90       	pop	r12
     67e:	09 94       	ijmp

00000680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     680:	88 23       	and	r24, r24
     682:	21 f0       	breq	.+8      	; 0x68c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     684:	bf 98       	cbi	0x17, 7	; 23
     686:	82 30       	cpi	r24, 0x02	; 2
     688:	19 f0       	breq	.+6      	; 0x690 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     68a:	08 95       	ret
     68c:	bf 9a       	sbi	0x17, 7	; 23
     68e:	08 95       	ret
     690:	c7 9a       	sbi	0x18, 7	; 24
     692:	08 95       	ret

00000694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
     694:	8a e0       	ldi	r24, 0x0A	; 10
     696:	00 00       	nop
     698:	81 50       	subi	r24, 0x01	; 1
     69a:	e9 f7       	brne	.-6      	; 0x696 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
     69c:	08 95       	ret

0000069e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
     69e:	1f 93       	push	r17
     6a0:	cf 93       	push	r28
     6a2:	df 93       	push	r29
     6a4:	16 2f       	mov	r17, r22
     6a6:	bd 98       	cbi	0x17, 5	; 23
     6a8:	80 e0       	ldi	r24, 0x00	; 0
     6aa:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6ae:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     6b2:	d8 e0       	ldi	r29, 0x08	; 8
     6b4:	c0 e0       	ldi	r28, 0x00	; 0
     6b6:	cc 0f       	add	r28, r28
     6b8:	81 e0       	ldi	r24, 0x01	; 1
     6ba:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6be:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     6c2:	b5 99       	sbic	0x16, 5	; 22
     6c4:	c1 60       	ori	r28, 0x01	; 1
     6c6:	80 e0       	ldi	r24, 0x00	; 0
     6c8:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6cc:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     6d0:	d1 50       	subi	r29, 0x01	; 1
     6d2:	89 f7       	brne	.-30     	; 0x6b6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
     6d4:	11 23       	and	r17, r17
     6d6:	11 f0       	breq	.+4      	; 0x6dc <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
     6d8:	bd 9a       	sbi	0x17, 5	; 23
     6da:	01 c0       	rjmp	.+2      	; 0x6de <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
     6dc:	bd 98       	cbi	0x17, 5	; 23
     6de:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     6e2:	81 e0       	ldi	r24, 0x01	; 1
     6e4:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6e8:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     6ec:	80 e0       	ldi	r24, 0x00	; 0
     6ee:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     6f2:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     6f6:	bd 98       	cbi	0x17, 5	; 23
     6f8:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     6fc:	8c 2f       	mov	r24, r28
     6fe:	df 91       	pop	r29
     700:	cf 91       	pop	r28
     702:	1f 91       	pop	r17
     704:	08 95       	ret

00000706 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
     706:	cf 93       	push	r28
     708:	df 93       	push	r29
     70a:	d6 2f       	mov	r29, r22
     70c:	c8 e0       	ldi	r28, 0x08	; 8
     70e:	80 e0       	ldi	r24, 0x00	; 0
     710:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     714:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     718:	d7 ff       	sbrs	r29, 7
     71a:	02 c0       	rjmp	.+4      	; 0x720 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
     71c:	bd 98       	cbi	0x17, 5	; 23
     71e:	01 c0       	rjmp	.+2      	; 0x722 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
     720:	bd 9a       	sbi	0x17, 5	; 23
     722:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     726:	81 e0       	ldi	r24, 0x01	; 1
     728:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     72c:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     730:	dd 0f       	add	r29, r29
     732:	c1 50       	subi	r28, 0x01	; 1
     734:	61 f7       	brne	.-40     	; 0x70e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
     736:	80 e0       	ldi	r24, 0x00	; 0
     738:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     73c:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     740:	bd 98       	cbi	0x17, 5	; 23
     742:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     746:	81 e0       	ldi	r24, 0x01	; 1
     748:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     74c:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     750:	c6 b3       	in	r28, 0x16	; 22
     752:	80 e0       	ldi	r24, 0x00	; 0
     754:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     758:	0e 94 4a 03 	call	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     75c:	c5 fb       	bst	r28, 5
     75e:	cc 27       	eor	r28, r28
     760:	c0 f9       	bld	r28, 0
     762:	81 e0       	ldi	r24, 0x01	; 1
     764:	8c 27       	eor	r24, r28
     766:	df 91       	pop	r29
     768:	cf 91       	pop	r28
     76a:	08 95       	ret

0000076c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
     76c:	81 e0       	ldi	r24, 0x01	; 1
     76e:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     772:	bd 98       	cbi	0x17, 5	; 23
     774:	81 e0       	ldi	r24, 0x01	; 1
     776:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     77a:	bd 9a       	sbi	0x17, 5	; 23
     77c:	80 e0       	ldi	r24, 0x00	; 0
     77e:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     782:	bd 98       	cbi	0x17, 5	; 23
     784:	0c 94 4a 03 	jmp	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

00000788 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
     788:	80 e0       	ldi	r24, 0x00	; 0
     78a:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     78e:	bd 9a       	sbi	0x17, 5	; 23
     790:	81 e0       	ldi	r24, 0x01	; 1
     792:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     796:	bd 9a       	sbi	0x17, 5	; 23
     798:	81 e0       	ldi	r24, 0x01	; 1
     79a:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     79e:	bd 98       	cbi	0x17, 5	; 23
     7a0:	0c 94 4a 03 	jmp	0x694	; 0x694 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

000007a4 <_GLOBAL__sub_I_i2c>:
     7a4:	8a e7       	ldi	r24, 0x7A	; 122
     7a6:	90 e0       	ldi	r25, 0x00	; 0
     7a8:	90 93 61 02 	sts	0x0261, r25
     7ac:	80 93 60 02 	sts	0x0260, r24
     7b0:	bd 98       	cbi	0x17, 5	; 23
     7b2:	81 e0       	ldi	r24, 0x01	; 1
     7b4:	0e 94 40 03 	call	0x680	; 0x680 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7b8:	c5 98       	cbi	0x18, 5	; 24
     7ba:	c7 98       	cbi	0x18, 7	; 24
     7bc:	08 95       	ret

000007be <_ZN8CVL53L0XC1Ev>:
     7be:	08 95       	ret

000007c0 <_ZN8CVL53L0XD1Ev>:
     7c0:	08 95       	ret

000007c2 <_ZN8CVL53L0X4readEv>:
     7c2:	0f 93       	push	r16
     7c4:	1f 93       	push	r17
     7c6:	cf 93       	push	r28
     7c8:	df 93       	push	r29
     7ca:	ec 01       	movw	r28, r24
     7cc:	88 89       	ldd	r24, Y+16	; 0x10
     7ce:	99 89       	ldd	r25, Y+17	; 0x11
     7d0:	dc 01       	movw	r26, r24
     7d2:	ed 91       	ld	r30, X+
     7d4:	fc 91       	ld	r31, X
     7d6:	00 84       	ldd	r0, Z+8	; 0x08
     7d8:	f1 85       	ldd	r31, Z+9	; 0x09
     7da:	e0 2d       	mov	r30, r0
     7dc:	21 e0       	ldi	r18, 0x01	; 1
     7de:	4b e0       	ldi	r20, 0x0B	; 11
     7e0:	62 e5       	ldi	r22, 0x52	; 82
     7e2:	09 95       	icall
     7e4:	88 89       	ldd	r24, Y+16	; 0x10
     7e6:	99 89       	ldd	r25, Y+17	; 0x11
     7e8:	dc 01       	movw	r26, r24
     7ea:	ed 91       	ld	r30, X+
     7ec:	fc 91       	ld	r31, X
     7ee:	9e 01       	movw	r18, r28
     7f0:	2e 5f       	subi	r18, 0xFE	; 254
     7f2:	3f 4f       	sbci	r19, 0xFF	; 255
     7f4:	02 88       	ldd	r0, Z+18	; 0x12
     7f6:	f3 89       	ldd	r31, Z+19	; 0x13
     7f8:	e0 2d       	mov	r30, r0
     7fa:	0e e0       	ldi	r16, 0x0E	; 14
     7fc:	10 e0       	ldi	r17, 0x00	; 0
     7fe:	44 e1       	ldi	r20, 0x14	; 20
     800:	62 e5       	ldi	r22, 0x52	; 82
     802:	09 95       	icall
     804:	2c 85       	ldd	r18, Y+12	; 0x0c
     806:	30 e0       	ldi	r19, 0x00	; 0
     808:	32 2f       	mov	r19, r18
     80a:	22 27       	eor	r18, r18
     80c:	8d 85       	ldd	r24, Y+13	; 0x0d
     80e:	28 2b       	or	r18, r24
     810:	c9 01       	movw	r24, r18
     812:	06 97       	sbiw	r24, 0x06	; 6
     814:	8a 3f       	cpi	r24, 0xFA	; 250
     816:	93 40       	sbci	r25, 0x03	; 3
     818:	80 f4       	brcc	.+32     	; 0x83a <_ZN8CVL53L0X4readEv+0x78>
     81a:	88 81       	ld	r24, Y
     81c:	99 81       	ldd	r25, Y+1	; 0x01
     81e:	43 e0       	ldi	r20, 0x03	; 3
     820:	88 0f       	add	r24, r24
     822:	99 1f       	adc	r25, r25
     824:	4a 95       	dec	r20
     826:	e1 f7       	brne	.-8      	; 0x820 <_ZN8CVL53L0X4readEv+0x5e>
     828:	82 0f       	add	r24, r18
     82a:	93 1f       	adc	r25, r19
     82c:	69 e0       	ldi	r22, 0x09	; 9
     82e:	70 e0       	ldi	r23, 0x00	; 0
     830:	0e 94 1a 0a 	call	0x1434	; 0x1434 <__divmodhi4>
     834:	79 83       	std	Y+1, r23	; 0x01
     836:	68 83       	st	Y, r22
     838:	04 c0       	rjmp	.+8      	; 0x842 <_ZN8CVL53L0X4readEv+0x80>
     83a:	80 e0       	ldi	r24, 0x00	; 0
     83c:	94 e0       	ldi	r25, 0x04	; 4
     83e:	99 83       	std	Y+1, r25	; 0x01
     840:	88 83       	st	Y, r24
     842:	88 81       	ld	r24, Y
     844:	99 81       	ldd	r25, Y+1	; 0x01
     846:	df 91       	pop	r29
     848:	cf 91       	pop	r28
     84a:	1f 91       	pop	r17
     84c:	0f 91       	pop	r16
     84e:	08 95       	ret

00000850 <_ZN8CVL53L0X11getSPADinfoEPhPb>:
     850:	af 92       	push	r10
     852:	bf 92       	push	r11
     854:	cf 92       	push	r12
     856:	df 92       	push	r13
     858:	ef 92       	push	r14
     85a:	ff 92       	push	r15
     85c:	0f 93       	push	r16
     85e:	1f 93       	push	r17
     860:	cf 93       	push	r28
     862:	df 93       	push	r29
     864:	ec 01       	movw	r28, r24
     866:	8b 01       	movw	r16, r22
     868:	5a 01       	movw	r10, r20
     86a:	db 01       	movw	r26, r22
     86c:	1c 92       	st	X, r1
     86e:	88 89       	ldd	r24, Y+16	; 0x10
     870:	99 89       	ldd	r25, Y+17	; 0x11
     872:	dc 01       	movw	r26, r24
     874:	ed 91       	ld	r30, X+
     876:	fc 91       	ld	r31, X
     878:	00 84       	ldd	r0, Z+8	; 0x08
     87a:	f1 85       	ldd	r31, Z+9	; 0x09
     87c:	e0 2d       	mov	r30, r0
     87e:	21 e0       	ldi	r18, 0x01	; 1
     880:	40 e8       	ldi	r20, 0x80	; 128
     882:	62 e5       	ldi	r22, 0x52	; 82
     884:	09 95       	icall
     886:	88 89       	ldd	r24, Y+16	; 0x10
     888:	99 89       	ldd	r25, Y+17	; 0x11
     88a:	dc 01       	movw	r26, r24
     88c:	ed 91       	ld	r30, X+
     88e:	fc 91       	ld	r31, X
     890:	00 84       	ldd	r0, Z+8	; 0x08
     892:	f1 85       	ldd	r31, Z+9	; 0x09
     894:	e0 2d       	mov	r30, r0
     896:	21 e0       	ldi	r18, 0x01	; 1
     898:	4f ef       	ldi	r20, 0xFF	; 255
     89a:	62 e5       	ldi	r22, 0x52	; 82
     89c:	09 95       	icall
     89e:	88 89       	ldd	r24, Y+16	; 0x10
     8a0:	99 89       	ldd	r25, Y+17	; 0x11
     8a2:	dc 01       	movw	r26, r24
     8a4:	ed 91       	ld	r30, X+
     8a6:	fc 91       	ld	r31, X
     8a8:	00 84       	ldd	r0, Z+8	; 0x08
     8aa:	f1 85       	ldd	r31, Z+9	; 0x09
     8ac:	e0 2d       	mov	r30, r0
     8ae:	20 e0       	ldi	r18, 0x00	; 0
     8b0:	40 e0       	ldi	r20, 0x00	; 0
     8b2:	62 e5       	ldi	r22, 0x52	; 82
     8b4:	09 95       	icall
     8b6:	88 89       	ldd	r24, Y+16	; 0x10
     8b8:	99 89       	ldd	r25, Y+17	; 0x11
     8ba:	dc 01       	movw	r26, r24
     8bc:	ed 91       	ld	r30, X+
     8be:	fc 91       	ld	r31, X
     8c0:	00 84       	ldd	r0, Z+8	; 0x08
     8c2:	f1 85       	ldd	r31, Z+9	; 0x09
     8c4:	e0 2d       	mov	r30, r0
     8c6:	26 e0       	ldi	r18, 0x06	; 6
     8c8:	4f ef       	ldi	r20, 0xFF	; 255
     8ca:	62 e5       	ldi	r22, 0x52	; 82
     8cc:	09 95       	icall
     8ce:	88 89       	ldd	r24, Y+16	; 0x10
     8d0:	99 89       	ldd	r25, Y+17	; 0x11
     8d2:	fc 01       	movw	r30, r24
     8d4:	a0 81       	ld	r26, Z
     8d6:	b1 81       	ldd	r27, Z+1	; 0x01
     8d8:	18 96       	adiw	r26, 0x08	; 8
     8da:	ed 90       	ld	r14, X+
     8dc:	fc 90       	ld	r15, X
     8de:	19 97       	sbiw	r26, 0x09	; 9
     8e0:	1e 96       	adiw	r26, 0x0e	; 14
     8e2:	ed 91       	ld	r30, X+
     8e4:	fc 91       	ld	r31, X
     8e6:	1f 97       	sbiw	r26, 0x0f	; 15
     8e8:	43 e8       	ldi	r20, 0x83	; 131
     8ea:	62 e5       	ldi	r22, 0x52	; 82
     8ec:	09 95       	icall
     8ee:	28 2f       	mov	r18, r24
     8f0:	24 60       	ori	r18, 0x04	; 4
     8f2:	43 e8       	ldi	r20, 0x83	; 131
     8f4:	62 e5       	ldi	r22, 0x52	; 82
     8f6:	88 89       	ldd	r24, Y+16	; 0x10
     8f8:	99 89       	ldd	r25, Y+17	; 0x11
     8fa:	f7 01       	movw	r30, r14
     8fc:	09 95       	icall
     8fe:	88 89       	ldd	r24, Y+16	; 0x10
     900:	99 89       	ldd	r25, Y+17	; 0x11
     902:	dc 01       	movw	r26, r24
     904:	ed 91       	ld	r30, X+
     906:	fc 91       	ld	r31, X
     908:	00 84       	ldd	r0, Z+8	; 0x08
     90a:	f1 85       	ldd	r31, Z+9	; 0x09
     90c:	e0 2d       	mov	r30, r0
     90e:	27 e0       	ldi	r18, 0x07	; 7
     910:	4f ef       	ldi	r20, 0xFF	; 255
     912:	62 e5       	ldi	r22, 0x52	; 82
     914:	09 95       	icall
     916:	88 89       	ldd	r24, Y+16	; 0x10
     918:	99 89       	ldd	r25, Y+17	; 0x11
     91a:	dc 01       	movw	r26, r24
     91c:	ed 91       	ld	r30, X+
     91e:	fc 91       	ld	r31, X
     920:	00 84       	ldd	r0, Z+8	; 0x08
     922:	f1 85       	ldd	r31, Z+9	; 0x09
     924:	e0 2d       	mov	r30, r0
     926:	21 e0       	ldi	r18, 0x01	; 1
     928:	41 e8       	ldi	r20, 0x81	; 129
     92a:	62 e5       	ldi	r22, 0x52	; 82
     92c:	09 95       	icall
     92e:	88 89       	ldd	r24, Y+16	; 0x10
     930:	99 89       	ldd	r25, Y+17	; 0x11
     932:	dc 01       	movw	r26, r24
     934:	ed 91       	ld	r30, X+
     936:	fc 91       	ld	r31, X
     938:	00 84       	ldd	r0, Z+8	; 0x08
     93a:	f1 85       	ldd	r31, Z+9	; 0x09
     93c:	e0 2d       	mov	r30, r0
     93e:	21 e0       	ldi	r18, 0x01	; 1
     940:	40 e8       	ldi	r20, 0x80	; 128
     942:	62 e5       	ldi	r22, 0x52	; 82
     944:	09 95       	icall
     946:	88 89       	ldd	r24, Y+16	; 0x10
     948:	99 89       	ldd	r25, Y+17	; 0x11
     94a:	dc 01       	movw	r26, r24
     94c:	ed 91       	ld	r30, X+
     94e:	fc 91       	ld	r31, X
     950:	00 84       	ldd	r0, Z+8	; 0x08
     952:	f1 85       	ldd	r31, Z+9	; 0x09
     954:	e0 2d       	mov	r30, r0
     956:	2b e6       	ldi	r18, 0x6B	; 107
     958:	44 e9       	ldi	r20, 0x94	; 148
     95a:	62 e5       	ldi	r22, 0x52	; 82
     95c:	09 95       	icall
     95e:	88 89       	ldd	r24, Y+16	; 0x10
     960:	99 89       	ldd	r25, Y+17	; 0x11
     962:	dc 01       	movw	r26, r24
     964:	ed 91       	ld	r30, X+
     966:	fc 91       	ld	r31, X
     968:	00 84       	ldd	r0, Z+8	; 0x08
     96a:	f1 85       	ldd	r31, Z+9	; 0x09
     96c:	e0 2d       	mov	r30, r0
     96e:	20 e0       	ldi	r18, 0x00	; 0
     970:	43 e8       	ldi	r20, 0x83	; 131
     972:	62 e5       	ldi	r22, 0x52	; 82
     974:	09 95       	icall
     976:	81 e4       	ldi	r24, 0x41	; 65
     978:	c8 2e       	mov	r12, r24
     97a:	82 e4       	ldi	r24, 0x42	; 66
     97c:	d8 2e       	mov	r13, r24
     97e:	8f e0       	ldi	r24, 0x0F	; 15
     980:	e8 2e       	mov	r14, r24
     982:	f1 2c       	mov	r15, r1
     984:	88 89       	ldd	r24, Y+16	; 0x10
     986:	99 89       	ldd	r25, Y+17	; 0x11
     988:	dc 01       	movw	r26, r24
     98a:	ed 91       	ld	r30, X+
     98c:	fc 91       	ld	r31, X
     98e:	06 84       	ldd	r0, Z+14	; 0x0e
     990:	f7 85       	ldd	r31, Z+15	; 0x0f
     992:	e0 2d       	mov	r30, r0
     994:	43 e8       	ldi	r20, 0x83	; 131
     996:	62 e5       	ldi	r22, 0x52	; 82
     998:	09 95       	icall
     99a:	81 11       	cpse	r24, r1
     99c:	08 c0       	rjmp	.+16     	; 0x9ae <_ZN8CVL53L0X11getSPADinfoEPhPb+0x15e>
     99e:	b1 e0       	ldi	r27, 0x01	; 1
     9a0:	cb 1a       	sub	r12, r27
     9a2:	d1 08       	sbc	r13, r1
     9a4:	e1 08       	sbc	r14, r1
     9a6:	f1 08       	sbc	r15, r1
     9a8:	69 f7       	brne	.-38     	; 0x984 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x134>
     9aa:	80 e0       	ldi	r24, 0x00	; 0
     9ac:	81 c0       	rjmp	.+258    	; 0xab0 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x260>
     9ae:	88 89       	ldd	r24, Y+16	; 0x10
     9b0:	99 89       	ldd	r25, Y+17	; 0x11
     9b2:	dc 01       	movw	r26, r24
     9b4:	ed 91       	ld	r30, X+
     9b6:	fc 91       	ld	r31, X
     9b8:	00 84       	ldd	r0, Z+8	; 0x08
     9ba:	f1 85       	ldd	r31, Z+9	; 0x09
     9bc:	e0 2d       	mov	r30, r0
     9be:	21 e0       	ldi	r18, 0x01	; 1
     9c0:	43 e8       	ldi	r20, 0x83	; 131
     9c2:	62 e5       	ldi	r22, 0x52	; 82
     9c4:	09 95       	icall
     9c6:	88 89       	ldd	r24, Y+16	; 0x10
     9c8:	99 89       	ldd	r25, Y+17	; 0x11
     9ca:	dc 01       	movw	r26, r24
     9cc:	ed 91       	ld	r30, X+
     9ce:	fc 91       	ld	r31, X
     9d0:	06 84       	ldd	r0, Z+14	; 0x0e
     9d2:	f7 85       	ldd	r31, Z+15	; 0x0f
     9d4:	e0 2d       	mov	r30, r0
     9d6:	42 e9       	ldi	r20, 0x92	; 146
     9d8:	62 e5       	ldi	r22, 0x52	; 82
     9da:	09 95       	icall
     9dc:	98 2f       	mov	r25, r24
     9de:	9f 77       	andi	r25, 0x7F	; 127
     9e0:	f8 01       	movw	r30, r16
     9e2:	90 83       	st	Z, r25
     9e4:	98 2f       	mov	r25, r24
     9e6:	99 1f       	adc	r25, r25
     9e8:	99 27       	eor	r25, r25
     9ea:	99 1f       	adc	r25, r25
     9ec:	d5 01       	movw	r26, r10
     9ee:	9c 93       	st	X, r25
     9f0:	88 89       	ldd	r24, Y+16	; 0x10
     9f2:	99 89       	ldd	r25, Y+17	; 0x11
     9f4:	dc 01       	movw	r26, r24
     9f6:	ed 91       	ld	r30, X+
     9f8:	fc 91       	ld	r31, X
     9fa:	00 84       	ldd	r0, Z+8	; 0x08
     9fc:	f1 85       	ldd	r31, Z+9	; 0x09
     9fe:	e0 2d       	mov	r30, r0
     a00:	20 e0       	ldi	r18, 0x00	; 0
     a02:	41 e8       	ldi	r20, 0x81	; 129
     a04:	62 e5       	ldi	r22, 0x52	; 82
     a06:	09 95       	icall
     a08:	88 89       	ldd	r24, Y+16	; 0x10
     a0a:	99 89       	ldd	r25, Y+17	; 0x11
     a0c:	dc 01       	movw	r26, r24
     a0e:	ed 91       	ld	r30, X+
     a10:	fc 91       	ld	r31, X
     a12:	00 84       	ldd	r0, Z+8	; 0x08
     a14:	f1 85       	ldd	r31, Z+9	; 0x09
     a16:	e0 2d       	mov	r30, r0
     a18:	26 e0       	ldi	r18, 0x06	; 6
     a1a:	4f ef       	ldi	r20, 0xFF	; 255
     a1c:	62 e5       	ldi	r22, 0x52	; 82
     a1e:	09 95       	icall
     a20:	88 89       	ldd	r24, Y+16	; 0x10
     a22:	99 89       	ldd	r25, Y+17	; 0x11
     a24:	fc 01       	movw	r30, r24
     a26:	a0 81       	ld	r26, Z
     a28:	b1 81       	ldd	r27, Z+1	; 0x01
     a2a:	18 96       	adiw	r26, 0x08	; 8
     a2c:	0d 91       	ld	r16, X+
     a2e:	1c 91       	ld	r17, X
     a30:	19 97       	sbiw	r26, 0x09	; 9
     a32:	1e 96       	adiw	r26, 0x0e	; 14
     a34:	ed 91       	ld	r30, X+
     a36:	fc 91       	ld	r31, X
     a38:	1f 97       	sbiw	r26, 0x0f	; 15
     a3a:	43 e8       	ldi	r20, 0x83	; 131
     a3c:	62 e5       	ldi	r22, 0x52	; 82
     a3e:	09 95       	icall
     a40:	28 2f       	mov	r18, r24
     a42:	43 e8       	ldi	r20, 0x83	; 131
     a44:	62 e5       	ldi	r22, 0x52	; 82
     a46:	88 89       	ldd	r24, Y+16	; 0x10
     a48:	99 89       	ldd	r25, Y+17	; 0x11
     a4a:	f8 01       	movw	r30, r16
     a4c:	09 95       	icall
     a4e:	88 89       	ldd	r24, Y+16	; 0x10
     a50:	99 89       	ldd	r25, Y+17	; 0x11
     a52:	dc 01       	movw	r26, r24
     a54:	ed 91       	ld	r30, X+
     a56:	fc 91       	ld	r31, X
     a58:	00 84       	ldd	r0, Z+8	; 0x08
     a5a:	f1 85       	ldd	r31, Z+9	; 0x09
     a5c:	e0 2d       	mov	r30, r0
     a5e:	21 e0       	ldi	r18, 0x01	; 1
     a60:	4f ef       	ldi	r20, 0xFF	; 255
     a62:	62 e5       	ldi	r22, 0x52	; 82
     a64:	09 95       	icall
     a66:	88 89       	ldd	r24, Y+16	; 0x10
     a68:	99 89       	ldd	r25, Y+17	; 0x11
     a6a:	dc 01       	movw	r26, r24
     a6c:	ed 91       	ld	r30, X+
     a6e:	fc 91       	ld	r31, X
     a70:	00 84       	ldd	r0, Z+8	; 0x08
     a72:	f1 85       	ldd	r31, Z+9	; 0x09
     a74:	e0 2d       	mov	r30, r0
     a76:	21 e0       	ldi	r18, 0x01	; 1
     a78:	40 e0       	ldi	r20, 0x00	; 0
     a7a:	62 e5       	ldi	r22, 0x52	; 82
     a7c:	09 95       	icall
     a7e:	88 89       	ldd	r24, Y+16	; 0x10
     a80:	99 89       	ldd	r25, Y+17	; 0x11
     a82:	dc 01       	movw	r26, r24
     a84:	ed 91       	ld	r30, X+
     a86:	fc 91       	ld	r31, X
     a88:	00 84       	ldd	r0, Z+8	; 0x08
     a8a:	f1 85       	ldd	r31, Z+9	; 0x09
     a8c:	e0 2d       	mov	r30, r0
     a8e:	20 e0       	ldi	r18, 0x00	; 0
     a90:	4f ef       	ldi	r20, 0xFF	; 255
     a92:	62 e5       	ldi	r22, 0x52	; 82
     a94:	09 95       	icall
     a96:	88 89       	ldd	r24, Y+16	; 0x10
     a98:	99 89       	ldd	r25, Y+17	; 0x11
     a9a:	dc 01       	movw	r26, r24
     a9c:	ed 91       	ld	r30, X+
     a9e:	fc 91       	ld	r31, X
     aa0:	00 84       	ldd	r0, Z+8	; 0x08
     aa2:	f1 85       	ldd	r31, Z+9	; 0x09
     aa4:	e0 2d       	mov	r30, r0
     aa6:	20 e0       	ldi	r18, 0x00	; 0
     aa8:	40 e8       	ldi	r20, 0x80	; 128
     aaa:	62 e5       	ldi	r22, 0x52	; 82
     aac:	09 95       	icall
     aae:	81 e0       	ldi	r24, 0x01	; 1
     ab0:	df 91       	pop	r29
     ab2:	cf 91       	pop	r28
     ab4:	1f 91       	pop	r17
     ab6:	0f 91       	pop	r16
     ab8:	ff 90       	pop	r15
     aba:	ef 90       	pop	r14
     abc:	df 90       	pop	r13
     abe:	cf 90       	pop	r12
     ac0:	bf 90       	pop	r11
     ac2:	af 90       	pop	r10
     ac4:	08 95       	ret

00000ac6 <_ZN8CVL53L0X4initEP14CI2C_Interface>:
     ac6:	ef 92       	push	r14
     ac8:	ff 92       	push	r15
     aca:	0f 93       	push	r16
     acc:	1f 93       	push	r17
     ace:	cf 93       	push	r28
     ad0:	df 93       	push	r29
     ad2:	cd b7       	in	r28, 0x3d	; 61
     ad4:	de b7       	in	r29, 0x3e	; 62
     ad6:	28 97       	sbiw	r28, 0x08	; 8
     ad8:	0f b6       	in	r0, 0x3f	; 63
     ada:	f8 94       	cli
     adc:	de bf       	out	0x3e, r29	; 62
     ade:	0f be       	out	0x3f, r0	; 63
     ae0:	cd bf       	out	0x3d, r28	; 61
     ae2:	7c 01       	movw	r14, r24
     ae4:	cb 01       	movw	r24, r22
     ae6:	d7 01       	movw	r26, r14
     ae8:	51 96       	adiw	r26, 0x11	; 17
     aea:	7c 93       	st	X, r23
     aec:	6e 93       	st	-X, r22
     aee:	50 97       	sbiw	r26, 0x10	; 16
     af0:	20 e0       	ldi	r18, 0x00	; 0
     af2:	30 e2       	ldi	r19, 0x20	; 32
     af4:	2d 93       	st	X+, r18
     af6:	3c 93       	st	X, r19
     af8:	fb 01       	movw	r30, r22
     afa:	a0 81       	ld	r26, Z
     afc:	b1 81       	ldd	r27, Z+1	; 0x01
     afe:	18 96       	adiw	r26, 0x08	; 8
     b00:	0d 91       	ld	r16, X+
     b02:	1c 91       	ld	r17, X
     b04:	19 97       	sbiw	r26, 0x09	; 9
     b06:	1e 96       	adiw	r26, 0x0e	; 14
     b08:	ed 91       	ld	r30, X+
     b0a:	fc 91       	ld	r31, X
     b0c:	1f 97       	sbiw	r26, 0x0f	; 15
     b0e:	49 e8       	ldi	r20, 0x89	; 137
     b10:	62 e5       	ldi	r22, 0x52	; 82
     b12:	09 95       	icall
     b14:	28 2f       	mov	r18, r24
     b16:	21 60       	ori	r18, 0x01	; 1
     b18:	49 e8       	ldi	r20, 0x89	; 137
     b1a:	62 e5       	ldi	r22, 0x52	; 82
     b1c:	d7 01       	movw	r26, r14
     b1e:	50 96       	adiw	r26, 0x10	; 16
     b20:	8d 91       	ld	r24, X+
     b22:	9c 91       	ld	r25, X
     b24:	51 97       	sbiw	r26, 0x11	; 17
     b26:	f8 01       	movw	r30, r16
     b28:	09 95       	icall
     b2a:	d7 01       	movw	r26, r14
     b2c:	50 96       	adiw	r26, 0x10	; 16
     b2e:	8d 91       	ld	r24, X+
     b30:	9c 91       	ld	r25, X
     b32:	51 97       	sbiw	r26, 0x11	; 17
     b34:	dc 01       	movw	r26, r24
     b36:	ed 91       	ld	r30, X+
     b38:	fc 91       	ld	r31, X
     b3a:	06 84       	ldd	r0, Z+14	; 0x0e
     b3c:	f7 85       	ldd	r31, Z+15	; 0x0f
     b3e:	e0 2d       	mov	r30, r0
     b40:	40 ec       	ldi	r20, 0xC0	; 192
     b42:	62 e5       	ldi	r22, 0x52	; 82
     b44:	09 95       	icall
     b46:	8e 3e       	cpi	r24, 0xEE	; 238
     b48:	09 f0       	breq	.+2      	; 0xb4c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x86>
     b4a:	61 c1       	rjmp	.+706    	; 0xe0e <_ZN8CVL53L0X4initEP14CI2C_Interface+0x348>
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
     b60:	4f eb       	ldi	r20, 0xBF	; 191
     b62:	62 e5       	ldi	r22, 0x52	; 82
     b64:	09 95       	icall
     b66:	81 ea       	ldi	r24, 0xA1	; 161
     b68:	96 e8       	ldi	r25, 0x86	; 134
     b6a:	a1 e0       	ldi	r26, 0x01	; 1
     b6c:	b0 e0       	ldi	r27, 0x00	; 0
     b6e:	01 97       	sbiw	r24, 0x01	; 1
     b70:	a1 09       	sbc	r26, r1
     b72:	b1 09       	sbc	r27, r1
     b74:	11 f0       	breq	.+4      	; 0xb7a <_ZN8CVL53L0X4initEP14CI2C_Interface+0xb4>
     b76:	00 00       	nop
     b78:	fa cf       	rjmp	.-12     	; 0xb6e <_ZN8CVL53L0X4initEP14CI2C_Interface+0xa8>
     b7a:	f7 01       	movw	r30, r14
     b7c:	80 89       	ldd	r24, Z+16	; 0x10
     b7e:	91 89       	ldd	r25, Z+17	; 0x11
     b80:	dc 01       	movw	r26, r24
     b82:	ed 91       	ld	r30, X+
     b84:	fc 91       	ld	r31, X
     b86:	00 84       	ldd	r0, Z+8	; 0x08
     b88:	f1 85       	ldd	r31, Z+9	; 0x09
     b8a:	e0 2d       	mov	r30, r0
     b8c:	20 e0       	ldi	r18, 0x00	; 0
     b8e:	48 e8       	ldi	r20, 0x88	; 136
     b90:	62 e5       	ldi	r22, 0x52	; 82
     b92:	09 95       	icall
     b94:	f7 01       	movw	r30, r14
     b96:	80 89       	ldd	r24, Z+16	; 0x10
     b98:	91 89       	ldd	r25, Z+17	; 0x11
     b9a:	dc 01       	movw	r26, r24
     b9c:	ed 91       	ld	r30, X+
     b9e:	fc 91       	ld	r31, X
     ba0:	00 84       	ldd	r0, Z+8	; 0x08
     ba2:	f1 85       	ldd	r31, Z+9	; 0x09
     ba4:	e0 2d       	mov	r30, r0
     ba6:	21 e0       	ldi	r18, 0x01	; 1
     ba8:	40 e8       	ldi	r20, 0x80	; 128
     baa:	62 e5       	ldi	r22, 0x52	; 82
     bac:	09 95       	icall
     bae:	f7 01       	movw	r30, r14
     bb0:	80 89       	ldd	r24, Z+16	; 0x10
     bb2:	91 89       	ldd	r25, Z+17	; 0x11
     bb4:	dc 01       	movw	r26, r24
     bb6:	ed 91       	ld	r30, X+
     bb8:	fc 91       	ld	r31, X
     bba:	00 84       	ldd	r0, Z+8	; 0x08
     bbc:	f1 85       	ldd	r31, Z+9	; 0x09
     bbe:	e0 2d       	mov	r30, r0
     bc0:	21 e0       	ldi	r18, 0x01	; 1
     bc2:	4f ef       	ldi	r20, 0xFF	; 255
     bc4:	62 e5       	ldi	r22, 0x52	; 82
     bc6:	09 95       	icall
     bc8:	f7 01       	movw	r30, r14
     bca:	80 89       	ldd	r24, Z+16	; 0x10
     bcc:	91 89       	ldd	r25, Z+17	; 0x11
     bce:	dc 01       	movw	r26, r24
     bd0:	ed 91       	ld	r30, X+
     bd2:	fc 91       	ld	r31, X
     bd4:	00 84       	ldd	r0, Z+8	; 0x08
     bd6:	f1 85       	ldd	r31, Z+9	; 0x09
     bd8:	e0 2d       	mov	r30, r0
     bda:	20 e0       	ldi	r18, 0x00	; 0
     bdc:	40 e0       	ldi	r20, 0x00	; 0
     bde:	62 e5       	ldi	r22, 0x52	; 82
     be0:	09 95       	icall
     be2:	f7 01       	movw	r30, r14
     be4:	80 89       	ldd	r24, Z+16	; 0x10
     be6:	91 89       	ldd	r25, Z+17	; 0x11
     be8:	dc 01       	movw	r26, r24
     bea:	ed 91       	ld	r30, X+
     bec:	fc 91       	ld	r31, X
     bee:	06 84       	ldd	r0, Z+14	; 0x0e
     bf0:	f7 85       	ldd	r31, Z+15	; 0x0f
     bf2:	e0 2d       	mov	r30, r0
     bf4:	41 e9       	ldi	r20, 0x91	; 145
     bf6:	62 e5       	ldi	r22, 0x52	; 82
     bf8:	09 95       	icall
     bfa:	f7 01       	movw	r30, r14
     bfc:	80 89       	ldd	r24, Z+16	; 0x10
     bfe:	91 89       	ldd	r25, Z+17	; 0x11
     c00:	dc 01       	movw	r26, r24
     c02:	ed 91       	ld	r30, X+
     c04:	fc 91       	ld	r31, X
     c06:	00 84       	ldd	r0, Z+8	; 0x08
     c08:	f1 85       	ldd	r31, Z+9	; 0x09
     c0a:	e0 2d       	mov	r30, r0
     c0c:	21 e0       	ldi	r18, 0x01	; 1
     c0e:	40 e0       	ldi	r20, 0x00	; 0
     c10:	62 e5       	ldi	r22, 0x52	; 82
     c12:	09 95       	icall
     c14:	f7 01       	movw	r30, r14
     c16:	80 89       	ldd	r24, Z+16	; 0x10
     c18:	91 89       	ldd	r25, Z+17	; 0x11
     c1a:	dc 01       	movw	r26, r24
     c1c:	ed 91       	ld	r30, X+
     c1e:	fc 91       	ld	r31, X
     c20:	00 84       	ldd	r0, Z+8	; 0x08
     c22:	f1 85       	ldd	r31, Z+9	; 0x09
     c24:	e0 2d       	mov	r30, r0
     c26:	20 e0       	ldi	r18, 0x00	; 0
     c28:	4f ef       	ldi	r20, 0xFF	; 255
     c2a:	62 e5       	ldi	r22, 0x52	; 82
     c2c:	09 95       	icall
     c2e:	f7 01       	movw	r30, r14
     c30:	80 89       	ldd	r24, Z+16	; 0x10
     c32:	91 89       	ldd	r25, Z+17	; 0x11
     c34:	dc 01       	movw	r26, r24
     c36:	ed 91       	ld	r30, X+
     c38:	fc 91       	ld	r31, X
     c3a:	00 84       	ldd	r0, Z+8	; 0x08
     c3c:	f1 85       	ldd	r31, Z+9	; 0x09
     c3e:	e0 2d       	mov	r30, r0
     c40:	20 e0       	ldi	r18, 0x00	; 0
     c42:	40 e8       	ldi	r20, 0x80	; 128
     c44:	62 e5       	ldi	r22, 0x52	; 82
     c46:	09 95       	icall
     c48:	18 86       	std	Y+8, r1	; 0x08
     c4a:	ae 01       	movw	r20, r28
     c4c:	49 5f       	subi	r20, 0xF9	; 249
     c4e:	5f 4f       	sbci	r21, 0xFF	; 255
     c50:	be 01       	movw	r22, r28
     c52:	68 5f       	subi	r22, 0xF8	; 248
     c54:	7f 4f       	sbci	r23, 0xFF	; 255
     c56:	c7 01       	movw	r24, r14
     c58:	0e 94 28 04 	call	0x850	; 0x850 <_ZN8CVL53L0X11getSPADinfoEPhPb>
     c5c:	f7 01       	movw	r30, r14
     c5e:	80 89       	ldd	r24, Z+16	; 0x10
     c60:	91 89       	ldd	r25, Z+17	; 0x11
     c62:	dc 01       	movw	r26, r24
     c64:	ed 91       	ld	r30, X+
     c66:	fc 91       	ld	r31, X
     c68:	02 88       	ldd	r0, Z+18	; 0x12
     c6a:	f3 89       	ldd	r31, Z+19	; 0x13
     c6c:	e0 2d       	mov	r30, r0
     c6e:	06 e0       	ldi	r16, 0x06	; 6
     c70:	10 e0       	ldi	r17, 0x00	; 0
     c72:	9e 01       	movw	r18, r28
     c74:	2f 5f       	subi	r18, 0xFF	; 255
     c76:	3f 4f       	sbci	r19, 0xFF	; 255
     c78:	40 eb       	ldi	r20, 0xB0	; 176
     c7a:	62 e5       	ldi	r22, 0x52	; 82
     c7c:	09 95       	icall
     c7e:	f7 01       	movw	r30, r14
     c80:	80 89       	ldd	r24, Z+16	; 0x10
     c82:	91 89       	ldd	r25, Z+17	; 0x11
     c84:	dc 01       	movw	r26, r24
     c86:	ed 91       	ld	r30, X+
     c88:	fc 91       	ld	r31, X
     c8a:	00 84       	ldd	r0, Z+8	; 0x08
     c8c:	f1 85       	ldd	r31, Z+9	; 0x09
     c8e:	e0 2d       	mov	r30, r0
     c90:	21 e0       	ldi	r18, 0x01	; 1
     c92:	4f ef       	ldi	r20, 0xFF	; 255
     c94:	62 e5       	ldi	r22, 0x52	; 82
     c96:	09 95       	icall
     c98:	f7 01       	movw	r30, r14
     c9a:	80 89       	ldd	r24, Z+16	; 0x10
     c9c:	91 89       	ldd	r25, Z+17	; 0x11
     c9e:	dc 01       	movw	r26, r24
     ca0:	ed 91       	ld	r30, X+
     ca2:	fc 91       	ld	r31, X
     ca4:	00 84       	ldd	r0, Z+8	; 0x08
     ca6:	f1 85       	ldd	r31, Z+9	; 0x09
     ca8:	e0 2d       	mov	r30, r0
     caa:	20 e0       	ldi	r18, 0x00	; 0
     cac:	4f e4       	ldi	r20, 0x4F	; 79
     cae:	62 e5       	ldi	r22, 0x52	; 82
     cb0:	09 95       	icall
     cb2:	f7 01       	movw	r30, r14
     cb4:	80 89       	ldd	r24, Z+16	; 0x10
     cb6:	91 89       	ldd	r25, Z+17	; 0x11
     cb8:	dc 01       	movw	r26, r24
     cba:	ed 91       	ld	r30, X+
     cbc:	fc 91       	ld	r31, X
     cbe:	00 84       	ldd	r0, Z+8	; 0x08
     cc0:	f1 85       	ldd	r31, Z+9	; 0x09
     cc2:	e0 2d       	mov	r30, r0
     cc4:	2c e2       	ldi	r18, 0x2C	; 44
     cc6:	4e e4       	ldi	r20, 0x4E	; 78
     cc8:	62 e5       	ldi	r22, 0x52	; 82
     cca:	09 95       	icall
     ccc:	f7 01       	movw	r30, r14
     cce:	80 89       	ldd	r24, Z+16	; 0x10
     cd0:	91 89       	ldd	r25, Z+17	; 0x11
     cd2:	dc 01       	movw	r26, r24
     cd4:	ed 91       	ld	r30, X+
     cd6:	fc 91       	ld	r31, X
     cd8:	00 84       	ldd	r0, Z+8	; 0x08
     cda:	f1 85       	ldd	r31, Z+9	; 0x09
     cdc:	e0 2d       	mov	r30, r0
     cde:	20 e0       	ldi	r18, 0x00	; 0
     ce0:	4f ef       	ldi	r20, 0xFF	; 255
     ce2:	62 e5       	ldi	r22, 0x52	; 82
     ce4:	09 95       	icall
     ce6:	f7 01       	movw	r30, r14
     ce8:	80 89       	ldd	r24, Z+16	; 0x10
     cea:	91 89       	ldd	r25, Z+17	; 0x11
     cec:	dc 01       	movw	r26, r24
     cee:	ed 91       	ld	r30, X+
     cf0:	fc 91       	ld	r31, X
     cf2:	00 84       	ldd	r0, Z+8	; 0x08
     cf4:	f1 85       	ldd	r31, Z+9	; 0x09
     cf6:	e0 2d       	mov	r30, r0
     cf8:	24 eb       	ldi	r18, 0xB4	; 180
     cfa:	46 eb       	ldi	r20, 0xB6	; 182
     cfc:	62 e5       	ldi	r22, 0x52	; 82
     cfe:	09 95       	icall
     d00:	8f 81       	ldd	r24, Y+7	; 0x07
     d02:	81 11       	cpse	r24, r1
     d04:	02 c0       	rjmp	.+4      	; 0xd0a <_ZN8CVL53L0X4initEP14CI2C_Interface+0x244>
     d06:	40 e0       	ldi	r20, 0x00	; 0
     d08:	01 c0       	rjmp	.+2      	; 0xd0c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x246>
     d0a:	4c e0       	ldi	r20, 0x0C	; 12
     d0c:	a8 85       	ldd	r26, Y+8	; 0x08
     d0e:	80 e0       	ldi	r24, 0x00	; 0
     d10:	90 e0       	ldi	r25, 0x00	; 0
     d12:	61 e0       	ldi	r22, 0x01	; 1
     d14:	70 e0       	ldi	r23, 0x00	; 0
     d16:	28 2f       	mov	r18, r24
     d18:	26 95       	lsr	r18
     d1a:	26 95       	lsr	r18
     d1c:	26 95       	lsr	r18
     d1e:	58 2f       	mov	r21, r24
     d20:	57 70       	andi	r21, 0x07	; 7
     d22:	e1 e0       	ldi	r30, 0x01	; 1
     d24:	f0 e0       	ldi	r31, 0x00	; 0
     d26:	ec 0f       	add	r30, r28
     d28:	fd 1f       	adc	r31, r29
     d2a:	e2 0f       	add	r30, r18
     d2c:	f1 1d       	adc	r31, r1
     d2e:	84 17       	cp	r24, r20
     d30:	10 f0       	brcs	.+4      	; 0xd36 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x270>
     d32:	9a 13       	cpse	r25, r26
     d34:	0a c0       	rjmp	.+20     	; 0xd4a <_ZN8CVL53L0X4initEP14CI2C_Interface+0x284>
     d36:	9b 01       	movw	r18, r22
     d38:	01 c0       	rjmp	.+2      	; 0xd3c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x276>
     d3a:	22 0f       	add	r18, r18
     d3c:	5a 95       	dec	r21
     d3e:	ea f7       	brpl	.-6      	; 0xd3a <_ZN8CVL53L0X4initEP14CI2C_Interface+0x274>
     d40:	20 95       	com	r18
     d42:	30 81       	ld	r19, Z
     d44:	23 23       	and	r18, r19
     d46:	20 83       	st	Z, r18
     d48:	09 c0       	rjmp	.+18     	; 0xd5c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x296>
     d4a:	20 81       	ld	r18, Z
     d4c:	30 e0       	ldi	r19, 0x00	; 0
     d4e:	02 c0       	rjmp	.+4      	; 0xd54 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28e>
     d50:	35 95       	asr	r19
     d52:	27 95       	ror	r18
     d54:	5a 95       	dec	r21
     d56:	e2 f7       	brpl	.-8      	; 0xd50 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28a>
     d58:	20 fd       	sbrc	r18, 0
     d5a:	9f 5f       	subi	r25, 0xFF	; 255
     d5c:	8f 5f       	subi	r24, 0xFF	; 255
     d5e:	80 33       	cpi	r24, 0x30	; 48
     d60:	d1 f6       	brne	.-76     	; 0xd16 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x250>
     d62:	f7 01       	movw	r30, r14
     d64:	80 89       	ldd	r24, Z+16	; 0x10
     d66:	91 89       	ldd	r25, Z+17	; 0x11
     d68:	dc 01       	movw	r26, r24
     d6a:	ed 91       	ld	r30, X+
     d6c:	fc 91       	ld	r31, X
     d6e:	04 84       	ldd	r0, Z+12	; 0x0c
     d70:	f5 85       	ldd	r31, Z+13	; 0x0d
     d72:	e0 2d       	mov	r30, r0
     d74:	06 e0       	ldi	r16, 0x06	; 6
     d76:	10 e0       	ldi	r17, 0x00	; 0
     d78:	9e 01       	movw	r18, r28
     d7a:	2f 5f       	subi	r18, 0xFF	; 255
     d7c:	3f 4f       	sbci	r19, 0xFF	; 255
     d7e:	40 eb       	ldi	r20, 0xB0	; 176
     d80:	62 e5       	ldi	r22, 0x52	; 82
     d82:	09 95       	icall
     d84:	f7 01       	movw	r30, r14
     d86:	80 89       	ldd	r24, Z+16	; 0x10
     d88:	91 89       	ldd	r25, Z+17	; 0x11
     d8a:	dc 01       	movw	r26, r24
     d8c:	ed 91       	ld	r30, X+
     d8e:	fc 91       	ld	r31, X
     d90:	06 84       	ldd	r0, Z+14	; 0x0e
     d92:	f7 85       	ldd	r31, Z+15	; 0x0f
     d94:	e0 2d       	mov	r30, r0
     d96:	44 e8       	ldi	r20, 0x84	; 132
     d98:	62 e5       	ldi	r22, 0x52	; 82
     d9a:	09 95       	icall
     d9c:	18 2f       	mov	r17, r24
     d9e:	f7 01       	movw	r30, r14
     da0:	80 89       	ldd	r24, Z+16	; 0x10
     da2:	91 89       	ldd	r25, Z+17	; 0x11
     da4:	dc 01       	movw	r26, r24
     da6:	ed 91       	ld	r30, X+
     da8:	fc 91       	ld	r31, X
     daa:	00 84       	ldd	r0, Z+8	; 0x08
     dac:	f1 85       	ldd	r31, Z+9	; 0x09
     dae:	e0 2d       	mov	r30, r0
     db0:	24 e0       	ldi	r18, 0x04	; 4
     db2:	4a e0       	ldi	r20, 0x0A	; 10
     db4:	62 e5       	ldi	r22, 0x52	; 82
     db6:	09 95       	icall
     db8:	f7 01       	movw	r30, r14
     dba:	80 89       	ldd	r24, Z+16	; 0x10
     dbc:	91 89       	ldd	r25, Z+17	; 0x11
     dbe:	dc 01       	movw	r26, r24
     dc0:	ed 91       	ld	r30, X+
     dc2:	fc 91       	ld	r31, X
     dc4:	21 2f       	mov	r18, r17
     dc6:	2f 7e       	andi	r18, 0xEF	; 239
     dc8:	00 84       	ldd	r0, Z+8	; 0x08
     dca:	f1 85       	ldd	r31, Z+9	; 0x09
     dcc:	e0 2d       	mov	r30, r0
     dce:	44 e8       	ldi	r20, 0x84	; 132
     dd0:	62 e5       	ldi	r22, 0x52	; 82
     dd2:	09 95       	icall
     dd4:	f7 01       	movw	r30, r14
     dd6:	80 89       	ldd	r24, Z+16	; 0x10
     dd8:	91 89       	ldd	r25, Z+17	; 0x11
     dda:	dc 01       	movw	r26, r24
     ddc:	ed 91       	ld	r30, X+
     dde:	fc 91       	ld	r31, X
     de0:	00 84       	ldd	r0, Z+8	; 0x08
     de2:	f1 85       	ldd	r31, Z+9	; 0x09
     de4:	e0 2d       	mov	r30, r0
     de6:	21 e0       	ldi	r18, 0x01	; 1
     de8:	4b e0       	ldi	r20, 0x0B	; 11
     dea:	62 e5       	ldi	r22, 0x52	; 82
     dec:	09 95       	icall
     dee:	f7 01       	movw	r30, r14
     df0:	80 89       	ldd	r24, Z+16	; 0x10
     df2:	91 89       	ldd	r25, Z+17	; 0x11
     df4:	dc 01       	movw	r26, r24
     df6:	ed 91       	ld	r30, X+
     df8:	fc 91       	ld	r31, X
     dfa:	00 84       	ldd	r0, Z+8	; 0x08
     dfc:	f1 85       	ldd	r31, Z+9	; 0x09
     dfe:	e0 2d       	mov	r30, r0
     e00:	22 e0       	ldi	r18, 0x02	; 2
     e02:	40 e0       	ldi	r20, 0x00	; 0
     e04:	62 e5       	ldi	r22, 0x52	; 82
     e06:	09 95       	icall
     e08:	80 e0       	ldi	r24, 0x00	; 0
     e0a:	90 e0       	ldi	r25, 0x00	; 0
     e0c:	02 c0       	rjmp	.+4      	; 0xe12 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x34c>
     e0e:	8e ef       	ldi	r24, 0xFE	; 254
     e10:	9f ef       	ldi	r25, 0xFF	; 255
     e12:	28 96       	adiw	r28, 0x08	; 8
     e14:	0f b6       	in	r0, 0x3f	; 63
     e16:	f8 94       	cli
     e18:	de bf       	out	0x3e, r29	; 62
     e1a:	0f be       	out	0x3f, r0	; 63
     e1c:	cd bf       	out	0x3d, r28	; 61
     e1e:	df 91       	pop	r29
     e20:	cf 91       	pop	r28
     e22:	1f 91       	pop	r17
     e24:	0f 91       	pop	r16
     e26:	ff 90       	pop	r15
     e28:	ef 90       	pop	r14
     e2a:	08 95       	ret

00000e2c <_ZN5CGyroC1Ev>:
     e2c:	08 95       	ret

00000e2e <_ZN5CGyroD1Ev>:
     e2e:	08 95       	ret

00000e30 <_ZN6CTimerC1Ev>:
     e30:	80 e0       	ldi	r24, 0x00	; 0
     e32:	90 e0       	ldi	r25, 0x00	; 0
     e34:	fc 01       	movw	r30, r24
     e36:	23 e0       	ldi	r18, 0x03	; 3
     e38:	ee 0f       	add	r30, r30
     e3a:	ff 1f       	adc	r31, r31
     e3c:	2a 95       	dec	r18
     e3e:	e1 f7       	brne	.-8      	; 0xe38 <_ZN6CTimerC1Ev+0x8>
     e40:	ec 59       	subi	r30, 0x9C	; 156
     e42:	fd 4f       	sbci	r31, 0xFD	; 253
     e44:	11 82       	std	Z+1, r1	; 0x01
     e46:	10 82       	st	Z, r1
     e48:	13 82       	std	Z+3, r1	; 0x03
     e4a:	12 82       	std	Z+2, r1	; 0x02
     e4c:	15 82       	std	Z+5, r1	; 0x05
     e4e:	14 82       	std	Z+4, r1	; 0x04
     e50:	16 82       	std	Z+6, r1	; 0x06
     e52:	17 82       	std	Z+7, r1	; 0x07
     e54:	01 96       	adiw	r24, 0x01	; 1
     e56:	88 30       	cpi	r24, 0x08	; 8
     e58:	91 05       	cpc	r25, r1
     e5a:	61 f7       	brne	.-40     	; 0xe34 <_ZN6CTimerC1Ev+0x4>
     e5c:	10 92 a4 02 	sts	0x02A4, r1
     e60:	10 92 a5 02 	sts	0x02A5, r1
     e64:	10 92 a6 02 	sts	0x02A6, r1
     e68:	10 92 a7 02 	sts	0x02A7, r1
     e6c:	83 b7       	in	r24, 0x33	; 51
     e6e:	88 60       	ori	r24, 0x08	; 8
     e70:	83 bf       	out	0x33, r24	; 51
     e72:	8b e9       	ldi	r24, 0x9B	; 155
     e74:	8c bf       	out	0x3c, r24	; 60
     e76:	83 e0       	ldi	r24, 0x03	; 3
     e78:	83 bf       	out	0x33, r24	; 51
     e7a:	89 b7       	in	r24, 0x39	; 57
     e7c:	82 60       	ori	r24, 0x02	; 2
     e7e:	89 bf       	out	0x39, r24	; 57
     e80:	78 94       	sei
     e82:	08 95       	ret

00000e84 <_ZN6CTimer8add_taskEPFvvEjb>:
     e84:	80 e0       	ldi	r24, 0x00	; 0
     e86:	90 e0       	ldi	r25, 0x00	; 0
     e88:	ef ef       	ldi	r30, 0xFF	; 255
     e8a:	dc 01       	movw	r26, r24
     e8c:	33 e0       	ldi	r19, 0x03	; 3
     e8e:	aa 0f       	add	r26, r26
     e90:	bb 1f       	adc	r27, r27
     e92:	3a 95       	dec	r19
     e94:	e1 f7       	brne	.-8      	; 0xe8e <_ZN6CTimer8add_taskEPFvvEjb+0xa>
     e96:	ac 59       	subi	r26, 0x9C	; 156
     e98:	bd 4f       	sbci	r27, 0xFD	; 253
     e9a:	0d 90       	ld	r0, X+
     e9c:	bc 91       	ld	r27, X
     e9e:	a0 2d       	mov	r26, r0
     ea0:	ab 2b       	or	r26, r27
     ea2:	09 f4       	brne	.+2      	; 0xea6 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
     ea4:	e8 2f       	mov	r30, r24
     ea6:	01 96       	adiw	r24, 0x01	; 1
     ea8:	88 30       	cpi	r24, 0x08	; 8
     eaa:	91 05       	cpc	r25, r1
     eac:	71 f7       	brne	.-36     	; 0xe8a <_ZN6CTimer8add_taskEPFvvEjb+0x6>
     eae:	ef 3f       	cpi	r30, 0xFF	; 255
     eb0:	71 f0       	breq	.+28     	; 0xece <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
     eb2:	88 e0       	ldi	r24, 0x08	; 8
     eb4:	e8 02       	muls	r30, r24
     eb6:	f0 01       	movw	r30, r0
     eb8:	11 24       	eor	r1, r1
     eba:	ec 59       	subi	r30, 0x9C	; 156
     ebc:	fd 4f       	sbci	r31, 0xFD	; 253
     ebe:	71 83       	std	Z+1, r23	; 0x01
     ec0:	60 83       	st	Z, r22
     ec2:	53 83       	std	Z+3, r21	; 0x03
     ec4:	42 83       	std	Z+2, r20	; 0x02
     ec6:	55 83       	std	Z+5, r21	; 0x05
     ec8:	44 83       	std	Z+4, r20	; 0x04
     eca:	16 82       	std	Z+6, r1	; 0x06
     ecc:	27 83       	std	Z+7, r18	; 0x07
     ece:	08 95       	ret

00000ed0 <_ZN6CTimer8get_timeEv>:
     ed0:	cf 93       	push	r28
     ed2:	df 93       	push	r29
     ed4:	00 d0       	rcall	.+0      	; 0xed6 <_ZN6CTimer8get_timeEv+0x6>
     ed6:	00 d0       	rcall	.+0      	; 0xed8 <_ZN6CTimer8get_timeEv+0x8>
     ed8:	cd b7       	in	r28, 0x3d	; 61
     eda:	de b7       	in	r29, 0x3e	; 62
     edc:	f8 94       	cli
     ede:	80 91 a4 02 	lds	r24, 0x02A4
     ee2:	90 91 a5 02 	lds	r25, 0x02A5
     ee6:	a0 91 a6 02 	lds	r26, 0x02A6
     eea:	b0 91 a7 02 	lds	r27, 0x02A7
     eee:	89 83       	std	Y+1, r24	; 0x01
     ef0:	9a 83       	std	Y+2, r25	; 0x02
     ef2:	ab 83       	std	Y+3, r26	; 0x03
     ef4:	bc 83       	std	Y+4, r27	; 0x04
     ef6:	78 94       	sei
     ef8:	69 81       	ldd	r22, Y+1	; 0x01
     efa:	7a 81       	ldd	r23, Y+2	; 0x02
     efc:	8b 81       	ldd	r24, Y+3	; 0x03
     efe:	9c 81       	ldd	r25, Y+4	; 0x04
     f00:	0f 90       	pop	r0
     f02:	0f 90       	pop	r0
     f04:	0f 90       	pop	r0
     f06:	0f 90       	pop	r0
     f08:	df 91       	pop	r29
     f0a:	cf 91       	pop	r28
     f0c:	08 95       	ret

00000f0e <_ZN6CTimer8delay_msEm>:
     f0e:	cf 92       	push	r12
     f10:	df 92       	push	r13
     f12:	ef 92       	push	r14
     f14:	ff 92       	push	r15
     f16:	0f 93       	push	r16
     f18:	1f 93       	push	r17
     f1a:	cf 93       	push	r28
     f1c:	df 93       	push	r29
     f1e:	00 d0       	rcall	.+0      	; 0xf20 <_ZN6CTimer8delay_msEm+0x12>
     f20:	00 d0       	rcall	.+0      	; 0xf22 <_ZN6CTimer8delay_msEm+0x14>
     f22:	cd b7       	in	r28, 0x3d	; 61
     f24:	de b7       	in	r29, 0x3e	; 62
     f26:	8c 01       	movw	r16, r24
     f28:	6a 01       	movw	r12, r20
     f2a:	7b 01       	movw	r14, r22
     f2c:	0e 94 68 07 	call	0xed0	; 0xed0 <_ZN6CTimer8get_timeEv>
     f30:	c6 0e       	add	r12, r22
     f32:	d7 1e       	adc	r13, r23
     f34:	e8 1e       	adc	r14, r24
     f36:	f9 1e       	adc	r15, r25
     f38:	c9 82       	std	Y+1, r12	; 0x01
     f3a:	da 82       	std	Y+2, r13	; 0x02
     f3c:	eb 82       	std	Y+3, r14	; 0x03
     f3e:	fc 82       	std	Y+4, r15	; 0x04
     f40:	c8 01       	movw	r24, r16
     f42:	0e 94 68 07 	call	0xed0	; 0xed0 <_ZN6CTimer8get_timeEv>
     f46:	c9 80       	ldd	r12, Y+1	; 0x01
     f48:	da 80       	ldd	r13, Y+2	; 0x02
     f4a:	eb 80       	ldd	r14, Y+3	; 0x03
     f4c:	fc 80       	ldd	r15, Y+4	; 0x04
     f4e:	6c 15       	cp	r22, r12
     f50:	7d 05       	cpc	r23, r13
     f52:	8e 05       	cpc	r24, r14
     f54:	9f 05       	cpc	r25, r15
     f56:	10 f4       	brcc	.+4      	; 0xf5c <_ZN6CTimer8delay_msEm+0x4e>
     f58:	00 00       	nop
     f5a:	f2 cf       	rjmp	.-28     	; 0xf40 <_ZN6CTimer8delay_msEm+0x32>
     f5c:	0f 90       	pop	r0
     f5e:	0f 90       	pop	r0
     f60:	0f 90       	pop	r0
     f62:	0f 90       	pop	r0
     f64:	df 91       	pop	r29
     f66:	cf 91       	pop	r28
     f68:	1f 91       	pop	r17
     f6a:	0f 91       	pop	r16
     f6c:	ff 90       	pop	r15
     f6e:	ef 90       	pop	r14
     f70:	df 90       	pop	r13
     f72:	cf 90       	pop	r12
     f74:	08 95       	ret

00000f76 <__vector_19>:
     f76:	1f 92       	push	r1
     f78:	0f 92       	push	r0
     f7a:	0f b6       	in	r0, 0x3f	; 63
     f7c:	0f 92       	push	r0
     f7e:	11 24       	eor	r1, r1
     f80:	2f 93       	push	r18
     f82:	3f 93       	push	r19
     f84:	4f 93       	push	r20
     f86:	5f 93       	push	r21
     f88:	6f 93       	push	r22
     f8a:	7f 93       	push	r23
     f8c:	8f 93       	push	r24
     f8e:	9f 93       	push	r25
     f90:	af 93       	push	r26
     f92:	bf 93       	push	r27
     f94:	cf 93       	push	r28
     f96:	df 93       	push	r29
     f98:	ef 93       	push	r30
     f9a:	ff 93       	push	r31
     f9c:	c0 e0       	ldi	r28, 0x00	; 0
     f9e:	d0 e0       	ldi	r29, 0x00	; 0
     fa0:	ce 01       	movw	r24, r28
     fa2:	23 e0       	ldi	r18, 0x03	; 3
     fa4:	88 0f       	add	r24, r24
     fa6:	99 1f       	adc	r25, r25
     fa8:	2a 95       	dec	r18
     faa:	e1 f7       	brne	.-8      	; 0xfa4 <__vector_19+0x2e>
     fac:	fc 01       	movw	r30, r24
     fae:	ec 59       	subi	r30, 0x9C	; 156
     fb0:	fd 4f       	sbci	r31, 0xFD	; 253
     fb2:	24 81       	ldd	r18, Z+4	; 0x04
     fb4:	35 81       	ldd	r19, Z+5	; 0x05
     fb6:	23 2b       	or	r18, r19
     fb8:	31 f0       	breq	.+12     	; 0xfc6 <__vector_19+0x50>
     fba:	84 81       	ldd	r24, Z+4	; 0x04
     fbc:	95 81       	ldd	r25, Z+5	; 0x05
     fbe:	01 97       	sbiw	r24, 0x01	; 1
     fc0:	95 83       	std	Z+5, r25	; 0x05
     fc2:	84 83       	std	Z+4, r24	; 0x04
     fc4:	18 c0       	rjmp	.+48     	; 0xff6 <__vector_19+0x80>
     fc6:	22 81       	ldd	r18, Z+2	; 0x02
     fc8:	33 81       	ldd	r19, Z+3	; 0x03
     fca:	35 83       	std	Z+5, r19	; 0x05
     fcc:	24 83       	std	Z+4, r18	; 0x04
     fce:	26 81       	ldd	r18, Z+6	; 0x06
     fd0:	2f 3f       	cpi	r18, 0xFF	; 255
     fd2:	19 f0       	breq	.+6      	; 0xfda <__vector_19+0x64>
     fd4:	26 81       	ldd	r18, Z+6	; 0x06
     fd6:	2f 5f       	subi	r18, 0xFF	; 255
     fd8:	26 83       	std	Z+6, r18	; 0x06
     fda:	fc 01       	movw	r30, r24
     fdc:	ec 59       	subi	r30, 0x9C	; 156
     fde:	fd 4f       	sbci	r31, 0xFD	; 253
     fe0:	87 81       	ldd	r24, Z+7	; 0x07
     fe2:	81 11       	cpse	r24, r1
     fe4:	08 c0       	rjmp	.+16     	; 0xff6 <__vector_19+0x80>
     fe6:	80 81       	ld	r24, Z
     fe8:	91 81       	ldd	r25, Z+1	; 0x01
     fea:	89 2b       	or	r24, r25
     fec:	21 f0       	breq	.+8      	; 0xff6 <__vector_19+0x80>
     fee:	01 90       	ld	r0, Z+
     ff0:	f0 81       	ld	r31, Z
     ff2:	e0 2d       	mov	r30, r0
     ff4:	09 95       	icall
     ff6:	21 96       	adiw	r28, 0x01	; 1
     ff8:	c8 30       	cpi	r28, 0x08	; 8
     ffa:	d1 05       	cpc	r29, r1
     ffc:	89 f6       	brne	.-94     	; 0xfa0 <__vector_19+0x2a>
     ffe:	80 91 a4 02 	lds	r24, 0x02A4
    1002:	90 91 a5 02 	lds	r25, 0x02A5
    1006:	a0 91 a6 02 	lds	r26, 0x02A6
    100a:	b0 91 a7 02 	lds	r27, 0x02A7
    100e:	01 96       	adiw	r24, 0x01	; 1
    1010:	a1 1d       	adc	r26, r1
    1012:	b1 1d       	adc	r27, r1
    1014:	80 93 a4 02 	sts	0x02A4, r24
    1018:	90 93 a5 02 	sts	0x02A5, r25
    101c:	a0 93 a6 02 	sts	0x02A6, r26
    1020:	b0 93 a7 02 	sts	0x02A7, r27
    1024:	ff 91       	pop	r31
    1026:	ef 91       	pop	r30
    1028:	df 91       	pop	r29
    102a:	cf 91       	pop	r28
    102c:	bf 91       	pop	r27
    102e:	af 91       	pop	r26
    1030:	9f 91       	pop	r25
    1032:	8f 91       	pop	r24
    1034:	7f 91       	pop	r23
    1036:	6f 91       	pop	r22
    1038:	5f 91       	pop	r21
    103a:	4f 91       	pop	r20
    103c:	3f 91       	pop	r19
    103e:	2f 91       	pop	r18
    1040:	0f 90       	pop	r0
    1042:	0f be       	out	0x3f, r0	; 63
    1044:	0f 90       	pop	r0
    1046:	1f 90       	pop	r1
    1048:	18 95       	reti

0000104a <_GLOBAL__sub_I_timer>:
    104a:	88 ea       	ldi	r24, 0xA8	; 168
    104c:	92 e0       	ldi	r25, 0x02	; 2
    104e:	0c 94 18 07 	jmp	0xe30	; 0xe30 <_ZN6CTimerC1Ev>

00001052 <_ZN9CTerminal4putsEPc>:
    1052:	0f 93       	push	r16
    1054:	1f 93       	push	r17
    1056:	cf 93       	push	r28
    1058:	df 93       	push	r29
    105a:	8c 01       	movw	r16, r24
    105c:	eb 01       	movw	r28, r22
    105e:	69 91       	ld	r22, Y+
    1060:	66 23       	and	r22, r22
    1062:	21 f0       	breq	.+8      	; 0x106c <_ZN9CTerminal4putsEPc+0x1a>
    1064:	c8 01       	movw	r24, r16
    1066:	0e 94 3e 01 	call	0x27c	; 0x27c <_ZN6CUSART7putcharEc>
    106a:	f9 cf       	rjmp	.-14     	; 0x105e <_ZN9CTerminal4putsEPc+0xc>
    106c:	df 91       	pop	r29
    106e:	cf 91       	pop	r28
    1070:	1f 91       	pop	r17
    1072:	0f 91       	pop	r16
    1074:	08 95       	ret

00001076 <_ZN9CTerminal4putiEl>:
    1076:	8f 92       	push	r8
    1078:	9f 92       	push	r9
    107a:	af 92       	push	r10
    107c:	bf 92       	push	r11
    107e:	cf 92       	push	r12
    1080:	df 92       	push	r13
    1082:	ef 92       	push	r14
    1084:	ff 92       	push	r15
    1086:	0f 93       	push	r16
    1088:	1f 93       	push	r17
    108a:	cf 93       	push	r28
    108c:	df 93       	push	r29
    108e:	cd b7       	in	r28, 0x3d	; 61
    1090:	de b7       	in	r29, 0x3e	; 62
    1092:	2c 97       	sbiw	r28, 0x0c	; 12
    1094:	0f b6       	in	r0, 0x3f	; 63
    1096:	f8 94       	cli
    1098:	de bf       	out	0x3e, r29	; 62
    109a:	0f be       	out	0x3f, r0	; 63
    109c:	cd bf       	out	0x3d, r28	; 61
    109e:	7c 01       	movw	r14, r24
    10a0:	77 ff       	sbrs	r23, 7
    10a2:	09 c0       	rjmp	.+18     	; 0x10b6 <_ZN9CTerminal4putiEl+0x40>
    10a4:	70 95       	com	r23
    10a6:	60 95       	com	r22
    10a8:	50 95       	com	r21
    10aa:	41 95       	neg	r20
    10ac:	5f 4f       	sbci	r21, 0xFF	; 255
    10ae:	6f 4f       	sbci	r22, 0xFF	; 255
    10b0:	7f 4f       	sbci	r23, 0xFF	; 255
    10b2:	01 e0       	ldi	r16, 0x01	; 1
    10b4:	01 c0       	rjmp	.+2      	; 0x10b8 <_ZN9CTerminal4putiEl+0x42>
    10b6:	00 e0       	ldi	r16, 0x00	; 0
    10b8:	1c 86       	std	Y+12, r1	; 0x0c
    10ba:	1a e0       	ldi	r17, 0x0A	; 10
    10bc:	9a e0       	ldi	r25, 0x0A	; 10
    10be:	89 2e       	mov	r8, r25
    10c0:	91 2c       	mov	r9, r1
    10c2:	a1 2c       	mov	r10, r1
    10c4:	b1 2c       	mov	r11, r1
    10c6:	cc 24       	eor	r12, r12
    10c8:	c3 94       	inc	r12
    10ca:	d1 2c       	mov	r13, r1
    10cc:	cc 0e       	add	r12, r28
    10ce:	dd 1e       	adc	r13, r29
    10d0:	c1 0e       	add	r12, r17
    10d2:	d1 1c       	adc	r13, r1
    10d4:	cb 01       	movw	r24, r22
    10d6:	ba 01       	movw	r22, r20
    10d8:	a5 01       	movw	r20, r10
    10da:	94 01       	movw	r18, r8
    10dc:	0e 94 50 0a 	call	0x14a0	; 0x14a0 <__divmodsi4>
    10e0:	94 2f       	mov	r25, r20
    10e2:	85 2f       	mov	r24, r21
    10e4:	60 5d       	subi	r22, 0xD0	; 208
    10e6:	f6 01       	movw	r30, r12
    10e8:	60 83       	st	Z, r22
    10ea:	a9 01       	movw	r20, r18
    10ec:	69 2f       	mov	r22, r25
    10ee:	78 2f       	mov	r23, r24
    10f0:	8f ef       	ldi	r24, 0xFF	; 255
    10f2:	81 0f       	add	r24, r17
    10f4:	41 15       	cp	r20, r1
    10f6:	51 05       	cpc	r21, r1
    10f8:	61 05       	cpc	r22, r1
    10fa:	71 05       	cpc	r23, r1
    10fc:	11 f0       	breq	.+4      	; 0x1102 <_ZN9CTerminal4putiEl+0x8c>
    10fe:	18 2f       	mov	r17, r24
    1100:	e2 cf       	rjmp	.-60     	; 0x10c6 <_ZN9CTerminal4putiEl+0x50>
    1102:	00 23       	and	r16, r16
    1104:	49 f0       	breq	.+18     	; 0x1118 <_ZN9CTerminal4putiEl+0xa2>
    1106:	e1 e0       	ldi	r30, 0x01	; 1
    1108:	f0 e0       	ldi	r31, 0x00	; 0
    110a:	ec 0f       	add	r30, r28
    110c:	fd 1f       	adc	r31, r29
    110e:	e8 0f       	add	r30, r24
    1110:	f1 1d       	adc	r31, r1
    1112:	9d e2       	ldi	r25, 0x2D	; 45
    1114:	90 83       	st	Z, r25
    1116:	18 2f       	mov	r17, r24
    1118:	61 e0       	ldi	r22, 0x01	; 1
    111a:	70 e0       	ldi	r23, 0x00	; 0
    111c:	6c 0f       	add	r22, r28
    111e:	7d 1f       	adc	r23, r29
    1120:	61 0f       	add	r22, r17
    1122:	71 1d       	adc	r23, r1
    1124:	c7 01       	movw	r24, r14
    1126:	0e 94 29 08 	call	0x1052	; 0x1052 <_ZN9CTerminal4putsEPc>
    112a:	2c 96       	adiw	r28, 0x0c	; 12
    112c:	0f b6       	in	r0, 0x3f	; 63
    112e:	f8 94       	cli
    1130:	de bf       	out	0x3e, r29	; 62
    1132:	0f be       	out	0x3f, r0	; 63
    1134:	cd bf       	out	0x3d, r28	; 61
    1136:	df 91       	pop	r29
    1138:	cf 91       	pop	r28
    113a:	1f 91       	pop	r17
    113c:	0f 91       	pop	r16
    113e:	ff 90       	pop	r15
    1140:	ef 90       	pop	r14
    1142:	df 90       	pop	r13
    1144:	cf 90       	pop	r12
    1146:	bf 90       	pop	r11
    1148:	af 90       	pop	r10
    114a:	9f 90       	pop	r9
    114c:	8f 90       	pop	r8
    114e:	08 95       	ret

00001150 <_ZN9CTerminal5putuiEm>:
    1150:	8f 92       	push	r8
    1152:	9f 92       	push	r9
    1154:	af 92       	push	r10
    1156:	bf 92       	push	r11
    1158:	cf 92       	push	r12
    115a:	df 92       	push	r13
    115c:	ef 92       	push	r14
    115e:	ff 92       	push	r15
    1160:	1f 93       	push	r17
    1162:	cf 93       	push	r28
    1164:	df 93       	push	r29
    1166:	cd b7       	in	r28, 0x3d	; 61
    1168:	de b7       	in	r29, 0x3e	; 62
    116a:	2c 97       	sbiw	r28, 0x0c	; 12
    116c:	0f b6       	in	r0, 0x3f	; 63
    116e:	f8 94       	cli
    1170:	de bf       	out	0x3e, r29	; 62
    1172:	0f be       	out	0x3f, r0	; 63
    1174:	cd bf       	out	0x3d, r28	; 61
    1176:	6c 01       	movw	r12, r24
    1178:	1c 86       	std	Y+12, r1	; 0x0c
    117a:	1a e0       	ldi	r17, 0x0A	; 10
    117c:	9a e0       	ldi	r25, 0x0A	; 10
    117e:	89 2e       	mov	r8, r25
    1180:	91 2c       	mov	r9, r1
    1182:	a1 2c       	mov	r10, r1
    1184:	b1 2c       	mov	r11, r1
    1186:	ee 24       	eor	r14, r14
    1188:	e3 94       	inc	r14
    118a:	f1 2c       	mov	r15, r1
    118c:	ec 0e       	add	r14, r28
    118e:	fd 1e       	adc	r15, r29
    1190:	e1 0e       	add	r14, r17
    1192:	f1 1c       	adc	r15, r1
    1194:	cb 01       	movw	r24, r22
    1196:	ba 01       	movw	r22, r20
    1198:	a5 01       	movw	r20, r10
    119a:	94 01       	movw	r18, r8
    119c:	0e 94 2e 0a 	call	0x145c	; 0x145c <__udivmodsi4>
    11a0:	94 2f       	mov	r25, r20
    11a2:	85 2f       	mov	r24, r21
    11a4:	60 5d       	subi	r22, 0xD0	; 208
    11a6:	f7 01       	movw	r30, r14
    11a8:	60 83       	st	Z, r22
    11aa:	a9 01       	movw	r20, r18
    11ac:	69 2f       	mov	r22, r25
    11ae:	78 2f       	mov	r23, r24
    11b0:	11 50       	subi	r17, 0x01	; 1
    11b2:	41 15       	cp	r20, r1
    11b4:	51 05       	cpc	r21, r1
    11b6:	61 05       	cpc	r22, r1
    11b8:	71 05       	cpc	r23, r1
    11ba:	29 f7       	brne	.-54     	; 0x1186 <_ZN9CTerminal5putuiEm+0x36>
    11bc:	b7 01       	movw	r22, r14
    11be:	c6 01       	movw	r24, r12
    11c0:	0e 94 29 08 	call	0x1052	; 0x1052 <_ZN9CTerminal4putsEPc>
    11c4:	2c 96       	adiw	r28, 0x0c	; 12
    11c6:	0f b6       	in	r0, 0x3f	; 63
    11c8:	f8 94       	cli
    11ca:	de bf       	out	0x3e, r29	; 62
    11cc:	0f be       	out	0x3f, r0	; 63
    11ce:	cd bf       	out	0x3d, r28	; 61
    11d0:	df 91       	pop	r29
    11d2:	cf 91       	pop	r28
    11d4:	1f 91       	pop	r17
    11d6:	ff 90       	pop	r15
    11d8:	ef 90       	pop	r14
    11da:	df 90       	pop	r13
    11dc:	cf 90       	pop	r12
    11de:	bf 90       	pop	r11
    11e0:	af 90       	pop	r10
    11e2:	9f 90       	pop	r9
    11e4:	8f 90       	pop	r8
    11e6:	08 95       	ret

000011e8 <_ZN9CTerminal4putxEm>:
    11e8:	ef 92       	push	r14
    11ea:	ff 92       	push	r15
    11ec:	cf 93       	push	r28
    11ee:	df 93       	push	r29
    11f0:	cd b7       	in	r28, 0x3d	; 61
    11f2:	de b7       	in	r29, 0x3e	; 62
    11f4:	2c 97       	sbiw	r28, 0x0c	; 12
    11f6:	0f b6       	in	r0, 0x3f	; 63
    11f8:	f8 94       	cli
    11fa:	de bf       	out	0x3e, r29	; 62
    11fc:	0f be       	out	0x3f, r0	; 63
    11fe:	cd bf       	out	0x3d, r28	; 61
    1200:	fc 01       	movw	r30, r24
    1202:	1c 86       	std	Y+12, r1	; 0x0c
    1204:	2a e0       	ldi	r18, 0x0A	; 10
    1206:	94 2f       	mov	r25, r20
    1208:	9f 70       	andi	r25, 0x0F	; 15
    120a:	e2 2e       	mov	r14, r18
    120c:	f1 2c       	mov	r15, r1
    120e:	a1 e0       	ldi	r26, 0x01	; 1
    1210:	b0 e0       	ldi	r27, 0x00	; 0
    1212:	ac 0f       	add	r26, r28
    1214:	bd 1f       	adc	r27, r29
    1216:	ae 0d       	add	r26, r14
    1218:	bf 1d       	adc	r27, r15
    121a:	9a 30       	cpi	r25, 0x0A	; 10
    121c:	14 f4       	brge	.+4      	; 0x1222 <_ZN9CTerminal4putxEm+0x3a>
    121e:	90 5d       	subi	r25, 0xD0	; 208
    1220:	01 c0       	rjmp	.+2      	; 0x1224 <_ZN9CTerminal4putxEm+0x3c>
    1222:	99 5a       	subi	r25, 0xA9	; 169
    1224:	9c 93       	st	X, r25
    1226:	84 e0       	ldi	r24, 0x04	; 4
    1228:	76 95       	lsr	r23
    122a:	67 95       	ror	r22
    122c:	57 95       	ror	r21
    122e:	47 95       	ror	r20
    1230:	8a 95       	dec	r24
    1232:	d1 f7       	brne	.-12     	; 0x1228 <_ZN9CTerminal4putxEm+0x40>
    1234:	21 50       	subi	r18, 0x01	; 1
    1236:	41 15       	cp	r20, r1
    1238:	51 05       	cpc	r21, r1
    123a:	61 05       	cpc	r22, r1
    123c:	71 05       	cpc	r23, r1
    123e:	19 f7       	brne	.-58     	; 0x1206 <_ZN9CTerminal4putxEm+0x1e>
    1240:	61 e0       	ldi	r22, 0x01	; 1
    1242:	70 e0       	ldi	r23, 0x00	; 0
    1244:	6c 0f       	add	r22, r28
    1246:	7d 1f       	adc	r23, r29
    1248:	6e 0d       	add	r22, r14
    124a:	7f 1d       	adc	r23, r15
    124c:	cf 01       	movw	r24, r30
    124e:	0e 94 29 08 	call	0x1052	; 0x1052 <_ZN9CTerminal4putsEPc>
    1252:	2c 96       	adiw	r28, 0x0c	; 12
    1254:	0f b6       	in	r0, 0x3f	; 63
    1256:	f8 94       	cli
    1258:	de bf       	out	0x3e, r29	; 62
    125a:	0f be       	out	0x3f, r0	; 63
    125c:	cd bf       	out	0x3d, r28	; 61
    125e:	df 91       	pop	r29
    1260:	cf 91       	pop	r28
    1262:	ff 90       	pop	r15
    1264:	ef 90       	pop	r14
    1266:	08 95       	ret

00001268 <_ZN9CTerminal6printfEPKcz>:
    1268:	af 92       	push	r10
    126a:	bf 92       	push	r11
    126c:	cf 92       	push	r12
    126e:	df 92       	push	r13
    1270:	ef 92       	push	r14
    1272:	ff 92       	push	r15
    1274:	0f 93       	push	r16
    1276:	1f 93       	push	r17
    1278:	cf 93       	push	r28
    127a:	df 93       	push	r29
    127c:	cd b7       	in	r28, 0x3d	; 61
    127e:	de b7       	in	r29, 0x3e	; 62
    1280:	ed 84       	ldd	r14, Y+13	; 0x0d
    1282:	fe 84       	ldd	r15, Y+14	; 0x0e
    1284:	8e 01       	movw	r16, r28
    1286:	0f 5e       	subi	r16, 0xEF	; 239
    1288:	1f 4f       	sbci	r17, 0xFF	; 255
    128a:	c1 2c       	mov	r12, r1
    128c:	d1 2c       	mov	r13, r1
    128e:	ef 85       	ldd	r30, Y+15	; 0x0f
    1290:	f8 89       	ldd	r31, Y+16	; 0x10
    1292:	ec 0d       	add	r30, r12
    1294:	fd 1d       	adc	r31, r13
    1296:	60 81       	ld	r22, Z
    1298:	66 23       	and	r22, r22
    129a:	09 f4       	brne	.+2      	; 0x129e <_ZN9CTerminal6printfEPKcz+0x36>
    129c:	5e c0       	rjmp	.+188    	; 0x135a <_ZN9CTerminal6printfEPKcz+0xf2>
    129e:	65 32       	cpi	r22, 0x25	; 37
    12a0:	39 f0       	breq	.+14     	; 0x12b0 <_ZN9CTerminal6printfEPKcz+0x48>
    12a2:	c7 01       	movw	r24, r14
    12a4:	0e 94 3e 01 	call	0x27c	; 0x27c <_ZN6CUSART7putcharEc>
    12a8:	8f ef       	ldi	r24, 0xFF	; 255
    12aa:	c8 1a       	sub	r12, r24
    12ac:	d8 0a       	sbc	r13, r24
    12ae:	ef cf       	rjmp	.-34     	; 0x128e <_ZN9CTerminal6printfEPKcz+0x26>
    12b0:	81 81       	ldd	r24, Z+1	; 0x01
    12b2:	89 36       	cpi	r24, 0x69	; 105
    12b4:	11 f1       	breq	.+68     	; 0x12fa <_ZN9CTerminal6printfEPKcz+0x92>
    12b6:	84 f4       	brge	.+32     	; 0x12d8 <_ZN9CTerminal6printfEPKcz+0x70>
    12b8:	85 32       	cpi	r24, 0x25	; 37
    12ba:	09 f4       	brne	.+2      	; 0x12be <_ZN9CTerminal6printfEPKcz+0x56>
    12bc:	46 c0       	rjmp	.+140    	; 0x134a <_ZN9CTerminal6printfEPKcz+0xe2>
    12be:	83 36       	cpi	r24, 0x63	; 99
    12c0:	09 f0       	breq	.+2      	; 0x12c4 <_ZN9CTerminal6printfEPKcz+0x5c>
    12c2:	47 c0       	rjmp	.+142    	; 0x1352 <_ZN9CTerminal6printfEPKcz+0xea>
    12c4:	58 01       	movw	r10, r16
    12c6:	f2 e0       	ldi	r31, 0x02	; 2
    12c8:	af 0e       	add	r10, r31
    12ca:	b1 1c       	adc	r11, r1
    12cc:	f8 01       	movw	r30, r16
    12ce:	60 81       	ld	r22, Z
    12d0:	c7 01       	movw	r24, r14
    12d2:	0e 94 3e 01 	call	0x27c	; 0x27c <_ZN6CUSART7putcharEc>
    12d6:	2a c0       	rjmp	.+84     	; 0x132c <_ZN9CTerminal6printfEPKcz+0xc4>
    12d8:	85 37       	cpi	r24, 0x75	; 117
    12da:	e1 f0       	breq	.+56     	; 0x1314 <_ZN9CTerminal6printfEPKcz+0xac>
    12dc:	88 37       	cpi	r24, 0x78	; 120
    12de:	41 f1       	breq	.+80     	; 0x1330 <_ZN9CTerminal6printfEPKcz+0xc8>
    12e0:	83 37       	cpi	r24, 0x73	; 115
    12e2:	b9 f5       	brne	.+110    	; 0x1352 <_ZN9CTerminal6printfEPKcz+0xea>
    12e4:	58 01       	movw	r10, r16
    12e6:	f2 e0       	ldi	r31, 0x02	; 2
    12e8:	af 0e       	add	r10, r31
    12ea:	b1 1c       	adc	r11, r1
    12ec:	f8 01       	movw	r30, r16
    12ee:	60 81       	ld	r22, Z
    12f0:	71 81       	ldd	r23, Z+1	; 0x01
    12f2:	c7 01       	movw	r24, r14
    12f4:	0e 94 29 08 	call	0x1052	; 0x1052 <_ZN9CTerminal4putsEPc>
    12f8:	19 c0       	rjmp	.+50     	; 0x132c <_ZN9CTerminal6printfEPKcz+0xc4>
    12fa:	58 01       	movw	r10, r16
    12fc:	94 e0       	ldi	r25, 0x04	; 4
    12fe:	a9 0e       	add	r10, r25
    1300:	b1 1c       	adc	r11, r1
    1302:	f8 01       	movw	r30, r16
    1304:	40 81       	ld	r20, Z
    1306:	51 81       	ldd	r21, Z+1	; 0x01
    1308:	62 81       	ldd	r22, Z+2	; 0x02
    130a:	73 81       	ldd	r23, Z+3	; 0x03
    130c:	c7 01       	movw	r24, r14
    130e:	0e 94 3b 08 	call	0x1076	; 0x1076 <_ZN9CTerminal4putiEl>
    1312:	0c c0       	rjmp	.+24     	; 0x132c <_ZN9CTerminal6printfEPKcz+0xc4>
    1314:	58 01       	movw	r10, r16
    1316:	f4 e0       	ldi	r31, 0x04	; 4
    1318:	af 0e       	add	r10, r31
    131a:	b1 1c       	adc	r11, r1
    131c:	f8 01       	movw	r30, r16
    131e:	40 81       	ld	r20, Z
    1320:	51 81       	ldd	r21, Z+1	; 0x01
    1322:	62 81       	ldd	r22, Z+2	; 0x02
    1324:	73 81       	ldd	r23, Z+3	; 0x03
    1326:	c7 01       	movw	r24, r14
    1328:	0e 94 a8 08 	call	0x1150	; 0x1150 <_ZN9CTerminal5putuiEm>
    132c:	85 01       	movw	r16, r10
    132e:	11 c0       	rjmp	.+34     	; 0x1352 <_ZN9CTerminal6printfEPKcz+0xea>
    1330:	58 01       	movw	r10, r16
    1332:	f4 e0       	ldi	r31, 0x04	; 4
    1334:	af 0e       	add	r10, r31
    1336:	b1 1c       	adc	r11, r1
    1338:	f8 01       	movw	r30, r16
    133a:	40 81       	ld	r20, Z
    133c:	51 81       	ldd	r21, Z+1	; 0x01
    133e:	62 81       	ldd	r22, Z+2	; 0x02
    1340:	73 81       	ldd	r23, Z+3	; 0x03
    1342:	c7 01       	movw	r24, r14
    1344:	0e 94 f4 08 	call	0x11e8	; 0x11e8 <_ZN9CTerminal4putxEm>
    1348:	f1 cf       	rjmp	.-30     	; 0x132c <_ZN9CTerminal6printfEPKcz+0xc4>
    134a:	65 e2       	ldi	r22, 0x25	; 37
    134c:	c7 01       	movw	r24, r14
    134e:	0e 94 3e 01 	call	0x27c	; 0x27c <_ZN6CUSART7putcharEc>
    1352:	f2 e0       	ldi	r31, 0x02	; 2
    1354:	cf 0e       	add	r12, r31
    1356:	d1 1c       	adc	r13, r1
    1358:	9a cf       	rjmp	.-204    	; 0x128e <_ZN9CTerminal6printfEPKcz+0x26>
    135a:	df 91       	pop	r29
    135c:	cf 91       	pop	r28
    135e:	1f 91       	pop	r17
    1360:	0f 91       	pop	r16
    1362:	ff 90       	pop	r15
    1364:	ef 90       	pop	r14
    1366:	df 90       	pop	r13
    1368:	cf 90       	pop	r12
    136a:	bf 90       	pop	r11
    136c:	af 90       	pop	r10
    136e:	08 95       	ret

00001370 <_GLOBAL__sub_I_terminal>:
    1370:	89 ea       	ldi	r24, 0xA9	; 169
    1372:	92 e0       	ldi	r25, 0x02	; 2
    1374:	0c 94 33 01 	jmp	0x266	; 0x266 <_ZN6CUSARTC1Ev>

00001378 <_GLOBAL__sub_D_terminal>:
    1378:	89 ea       	ldi	r24, 0xA9	; 169
    137a:	92 e0       	ldi	r25, 0x02	; 2
    137c:	0c 94 3d 01 	jmp	0x27a	; 0x27a <_ZN6CUSARTD1Ev>

00001380 <_Z11led_refreshv>:
    1380:	80 91 ac 02 	lds	r24, 0x02AC
    1384:	88 23       	and	r24, r24
    1386:	19 f0       	breq	.+6      	; 0x138e <_Z11led_refreshv+0xe>
    1388:	81 30       	cpi	r24, 0x01	; 1
    138a:	61 f0       	breq	.+24     	; 0x13a4 <_Z11led_refreshv+0x24>
    138c:	08 95       	ret
    138e:	88 b3       	in	r24, 0x18	; 24
    1390:	83 60       	ori	r24, 0x03	; 3
    1392:	88 bb       	out	0x18, r24	; 24
    1394:	80 91 ab 02 	lds	r24, 0x02AB
    1398:	85 bb       	out	0x15, r24	; 21
    139a:	c0 98       	cbi	0x18, 0	; 24
    139c:	81 e0       	ldi	r24, 0x01	; 1
    139e:	80 93 ac 02 	sts	0x02AC, r24
    13a2:	08 95       	ret
    13a4:	88 b3       	in	r24, 0x18	; 24
    13a6:	83 60       	ori	r24, 0x03	; 3
    13a8:	88 bb       	out	0x18, r24	; 24
    13aa:	80 91 aa 02 	lds	r24, 0x02AA
    13ae:	85 bb       	out	0x15, r24	; 21
    13b0:	c1 98       	cbi	0x18, 1	; 24
    13b2:	10 92 ac 02 	sts	0x02AC, r1
    13b6:	08 95       	ret

000013b8 <_ZN11CLEDDisplayC1Ev>:
    13b8:	10 92 ac 02 	sts	0x02AC, r1
    13bc:	8f ef       	ldi	r24, 0xFF	; 255
    13be:	80 93 ab 02 	sts	0x02AB, r24
    13c2:	80 93 aa 02 	sts	0x02AA, r24
    13c6:	97 b3       	in	r25, 0x17	; 23
    13c8:	93 60       	ori	r25, 0x03	; 3
    13ca:	97 bb       	out	0x17, r25	; 23
    13cc:	98 b3       	in	r25, 0x18	; 24
    13ce:	93 60       	ori	r25, 0x03	; 3
    13d0:	98 bb       	out	0x18, r25	; 24
    13d2:	85 bb       	out	0x15, r24	; 21
    13d4:	84 bb       	out	0x14, r24	; 20
    13d6:	20 e0       	ldi	r18, 0x00	; 0
    13d8:	45 e0       	ldi	r20, 0x05	; 5
    13da:	50 e0       	ldi	r21, 0x00	; 0
    13dc:	60 ec       	ldi	r22, 0xC0	; 192
    13de:	79 e0       	ldi	r23, 0x09	; 9
    13e0:	88 ea       	ldi	r24, 0xA8	; 168
    13e2:	92 e0       	ldi	r25, 0x02	; 2
    13e4:	0c 94 42 07 	jmp	0xe84	; 0xe84 <_ZN6CTimer8add_taskEPFvvEjb>

000013e8 <_ZN11CLEDDisplay11display_decEh>:
    13e8:	86 2f       	mov	r24, r22
    13ea:	64 36       	cpi	r22, 0x64	; 100
    13ec:	08 f0       	brcs	.+2      	; 0x13f0 <_ZN11CLEDDisplay11display_decEh+0x8>
    13ee:	83 e6       	ldi	r24, 0x63	; 99
    13f0:	6a e0       	ldi	r22, 0x0A	; 10
    13f2:	0e 94 0e 0a 	call	0x141c	; 0x141c <__udivmodqi4>
    13f6:	e8 2f       	mov	r30, r24
    13f8:	f0 e0       	ldi	r31, 0x00	; 0
    13fa:	e2 57       	subi	r30, 0x72	; 114
    13fc:	ff 4f       	sbci	r31, 0xFF	; 255
    13fe:	20 81       	ld	r18, Z
    1400:	20 95       	com	r18
    1402:	e9 2f       	mov	r30, r25
    1404:	f0 e0       	ldi	r31, 0x00	; 0
    1406:	e2 57       	subi	r30, 0x72	; 114
    1408:	ff 4f       	sbci	r31, 0xFF	; 255
    140a:	80 81       	ld	r24, Z
    140c:	80 95       	com	r24
    140e:	f8 94       	cli
    1410:	20 93 ab 02 	sts	0x02AB, r18
    1414:	80 93 aa 02 	sts	0x02AA, r24
    1418:	78 94       	sei
    141a:	08 95       	ret

0000141c <__udivmodqi4>:
    141c:	99 1b       	sub	r25, r25
    141e:	79 e0       	ldi	r23, 0x09	; 9
    1420:	04 c0       	rjmp	.+8      	; 0x142a <__udivmodqi4_ep>

00001422 <__udivmodqi4_loop>:
    1422:	99 1f       	adc	r25, r25
    1424:	96 17       	cp	r25, r22
    1426:	08 f0       	brcs	.+2      	; 0x142a <__udivmodqi4_ep>
    1428:	96 1b       	sub	r25, r22

0000142a <__udivmodqi4_ep>:
    142a:	88 1f       	adc	r24, r24
    142c:	7a 95       	dec	r23
    142e:	c9 f7       	brne	.-14     	; 0x1422 <__udivmodqi4_loop>
    1430:	80 95       	com	r24
    1432:	08 95       	ret

00001434 <__divmodhi4>:
    1434:	97 fb       	bst	r25, 7
    1436:	07 2e       	mov	r0, r23
    1438:	16 f4       	brtc	.+4      	; 0x143e <__divmodhi4+0xa>
    143a:	00 94       	com	r0
    143c:	07 d0       	rcall	.+14     	; 0x144c <__divmodhi4_neg1>
    143e:	77 fd       	sbrc	r23, 7
    1440:	09 d0       	rcall	.+18     	; 0x1454 <__divmodhi4_neg2>
    1442:	0e 94 6f 0a 	call	0x14de	; 0x14de <__udivmodhi4>
    1446:	07 fc       	sbrc	r0, 7
    1448:	05 d0       	rcall	.+10     	; 0x1454 <__divmodhi4_neg2>
    144a:	3e f4       	brtc	.+14     	; 0x145a <__divmodhi4_exit>

0000144c <__divmodhi4_neg1>:
    144c:	90 95       	com	r25
    144e:	81 95       	neg	r24
    1450:	9f 4f       	sbci	r25, 0xFF	; 255
    1452:	08 95       	ret

00001454 <__divmodhi4_neg2>:
    1454:	70 95       	com	r23
    1456:	61 95       	neg	r22
    1458:	7f 4f       	sbci	r23, 0xFF	; 255

0000145a <__divmodhi4_exit>:
    145a:	08 95       	ret

0000145c <__udivmodsi4>:
    145c:	a1 e2       	ldi	r26, 0x21	; 33
    145e:	1a 2e       	mov	r1, r26
    1460:	aa 1b       	sub	r26, r26
    1462:	bb 1b       	sub	r27, r27
    1464:	fd 01       	movw	r30, r26
    1466:	0d c0       	rjmp	.+26     	; 0x1482 <__udivmodsi4_ep>

00001468 <__udivmodsi4_loop>:
    1468:	aa 1f       	adc	r26, r26
    146a:	bb 1f       	adc	r27, r27
    146c:	ee 1f       	adc	r30, r30
    146e:	ff 1f       	adc	r31, r31
    1470:	a2 17       	cp	r26, r18
    1472:	b3 07       	cpc	r27, r19
    1474:	e4 07       	cpc	r30, r20
    1476:	f5 07       	cpc	r31, r21
    1478:	20 f0       	brcs	.+8      	; 0x1482 <__udivmodsi4_ep>
    147a:	a2 1b       	sub	r26, r18
    147c:	b3 0b       	sbc	r27, r19
    147e:	e4 0b       	sbc	r30, r20
    1480:	f5 0b       	sbc	r31, r21

00001482 <__udivmodsi4_ep>:
    1482:	66 1f       	adc	r22, r22
    1484:	77 1f       	adc	r23, r23
    1486:	88 1f       	adc	r24, r24
    1488:	99 1f       	adc	r25, r25
    148a:	1a 94       	dec	r1
    148c:	69 f7       	brne	.-38     	; 0x1468 <__udivmodsi4_loop>
    148e:	60 95       	com	r22
    1490:	70 95       	com	r23
    1492:	80 95       	com	r24
    1494:	90 95       	com	r25
    1496:	9b 01       	movw	r18, r22
    1498:	ac 01       	movw	r20, r24
    149a:	bd 01       	movw	r22, r26
    149c:	cf 01       	movw	r24, r30
    149e:	08 95       	ret

000014a0 <__divmodsi4>:
    14a0:	05 2e       	mov	r0, r21
    14a2:	97 fb       	bst	r25, 7
    14a4:	1e f4       	brtc	.+6      	; 0x14ac <__divmodsi4+0xc>
    14a6:	00 94       	com	r0
    14a8:	0e 94 67 0a 	call	0x14ce	; 0x14ce <__negsi2>
    14ac:	57 fd       	sbrc	r21, 7
    14ae:	07 d0       	rcall	.+14     	; 0x14be <__divmodsi4_neg2>
    14b0:	0e 94 2e 0a 	call	0x145c	; 0x145c <__udivmodsi4>
    14b4:	07 fc       	sbrc	r0, 7
    14b6:	03 d0       	rcall	.+6      	; 0x14be <__divmodsi4_neg2>
    14b8:	4e f4       	brtc	.+18     	; 0x14cc <__divmodsi4_exit>
    14ba:	0c 94 67 0a 	jmp	0x14ce	; 0x14ce <__negsi2>

000014be <__divmodsi4_neg2>:
    14be:	50 95       	com	r21
    14c0:	40 95       	com	r20
    14c2:	30 95       	com	r19
    14c4:	21 95       	neg	r18
    14c6:	3f 4f       	sbci	r19, 0xFF	; 255
    14c8:	4f 4f       	sbci	r20, 0xFF	; 255
    14ca:	5f 4f       	sbci	r21, 0xFF	; 255

000014cc <__divmodsi4_exit>:
    14cc:	08 95       	ret

000014ce <__negsi2>:
    14ce:	90 95       	com	r25
    14d0:	80 95       	com	r24
    14d2:	70 95       	com	r23
    14d4:	61 95       	neg	r22
    14d6:	7f 4f       	sbci	r23, 0xFF	; 255
    14d8:	8f 4f       	sbci	r24, 0xFF	; 255
    14da:	9f 4f       	sbci	r25, 0xFF	; 255
    14dc:	08 95       	ret

000014de <__udivmodhi4>:
    14de:	aa 1b       	sub	r26, r26
    14e0:	bb 1b       	sub	r27, r27
    14e2:	51 e1       	ldi	r21, 0x11	; 17
    14e4:	07 c0       	rjmp	.+14     	; 0x14f4 <__udivmodhi4_ep>

000014e6 <__udivmodhi4_loop>:
    14e6:	aa 1f       	adc	r26, r26
    14e8:	bb 1f       	adc	r27, r27
    14ea:	a6 17       	cp	r26, r22
    14ec:	b7 07       	cpc	r27, r23
    14ee:	10 f0       	brcs	.+4      	; 0x14f4 <__udivmodhi4_ep>
    14f0:	a6 1b       	sub	r26, r22
    14f2:	b7 0b       	sbc	r27, r23

000014f4 <__udivmodhi4_ep>:
    14f4:	88 1f       	adc	r24, r24
    14f6:	99 1f       	adc	r25, r25
    14f8:	5a 95       	dec	r21
    14fa:	a9 f7       	brne	.-22     	; 0x14e6 <__udivmodhi4_loop>
    14fc:	80 95       	com	r24
    14fe:	90 95       	com	r25
    1500:	bc 01       	movw	r22, r24
    1502:	cd 01       	movw	r24, r26
    1504:	08 95       	ret

00001506 <__tablejump2__>:
    1506:	ee 0f       	add	r30, r30
    1508:	ff 1f       	adc	r31, r31
    150a:	05 90       	lpm	r0, Z+
    150c:	f4 91       	lpm	r31, Z
    150e:	e0 2d       	mov	r30, r0
    1510:	09 94       	ijmp

00001512 <__do_global_dtors>:
    1512:	10 e0       	ldi	r17, 0x00	; 0
    1514:	ce e2       	ldi	r28, 0x2E	; 46
    1516:	d0 e0       	ldi	r29, 0x00	; 0
    1518:	04 c0       	rjmp	.+8      	; 0x1522 <__do_global_dtors+0x10>
    151a:	fe 01       	movw	r30, r28
    151c:	0e 94 83 0a 	call	0x1506	; 0x1506 <__tablejump2__>
    1520:	21 96       	adiw	r28, 0x01	; 1
    1522:	c0 33       	cpi	r28, 0x30	; 48
    1524:	d1 07       	cpc	r29, r17
    1526:	c9 f7       	brne	.-14     	; 0x151a <__do_global_dtors+0x8>
    1528:	f8 94       	cli

0000152a <__stop_program>:
    152a:	ff cf       	rjmp	.-2      	; 0x152a <__stop_program>
