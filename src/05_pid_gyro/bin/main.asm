
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
      4c:	0c 94 70 08 	jmp	0x10e0	; 0x10e0 <__vector_19>
      50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
      54:	71 05       	cpc	r23, r1
      56:	b4 08       	sbc	r11, r4
      58:	b8 08       	sbc	r11, r8

0000005a <__ctors_end>:
      5a:	bc 08       	sbc	r11, r12

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
      6e:	ec ec       	ldi	r30, 0xCC	; 204
      70:	f8 e1       	ldi	r31, 0x18	; 24
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
      9a:	0e 94 5a 09 	call	0x12b4	; 0x12b4 <__tablejump2__>
      9e:	ca 32       	cpi	r28, 0x2A	; 42
      a0:	d1 07       	cpc	r29, r17
      a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
      a4:	0e 94 f1 00 	call	0x1e2	; 0x1e2 <main>
      a8:	0c 94 59 0c 	jmp	0x18b2	; 0x18b2 <__do_global_dtors>

000000ac <__bad_interrupt>:
      ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN13Stabilization4mainEv>:
      b0:	8f 92       	push	r8
      b2:	9f 92       	push	r9
      b4:	af 92       	push	r10
      b6:	bf 92       	push	r11
      b8:	cf 92       	push	r12
      ba:	df 92       	push	r13
      bc:	ef 92       	push	r14
      be:	ff 92       	push	r15
      c0:	cf 93       	push	r28
      c2:	df 93       	push	r29
      c4:	ec 01       	movw	r28, r24
      c6:	60 e0       	ldi	r22, 0x00	; 0
      c8:	03 96       	adiw	r24, 0x03	; 3
      ca:	0e 94 82 05 	call	0xb04	; 0xb04 <_ZN4Gyro4readEb>
      ce:	8f 8d       	ldd	r24, Y+31	; 0x1f
      d0:	98 a1       	ldd	r25, Y+32	; 0x20
      d2:	a9 a1       	ldd	r26, Y+33	; 0x21
      d4:	ba a1       	ldd	r27, Y+34	; 0x22
      d6:	9c 01       	movw	r18, r24
      d8:	ad 01       	movw	r20, r26
      da:	66 27       	eor	r22, r22
      dc:	77 27       	eor	r23, r23
      de:	cb 01       	movw	r24, r22
      e0:	62 1b       	sub	r22, r18
      e2:	73 0b       	sbc	r23, r19
      e4:	84 0b       	sbc	r24, r20
      e6:	95 0b       	sbc	r25, r21
      e8:	0e 94 0a 0a 	call	0x1414	; 0x1414 <__floatsisf>
      ec:	2d ec       	ldi	r18, 0xCD	; 205
      ee:	3c ec       	ldi	r19, 0xCC	; 204
      f0:	4c ec       	ldi	r20, 0xCC	; 204
      f2:	5d e3       	ldi	r21, 0x3D	; 61
      f4:	0e 94 bf 0a 	call	0x157e	; 0x157e <__mulsf3>
      f8:	9b 01       	movw	r18, r22
      fa:	ac 01       	movw	r20, r24
      fc:	60 e0       	ldi	r22, 0x00	; 0
      fe:	70 e0       	ldi	r23, 0x00	; 0
     100:	cb 01       	movw	r24, r22
     102:	0e 94 60 09 	call	0x12c0	; 0x12c0 <__subsf3>
     106:	ab 01       	movw	r20, r22
     108:	bc 01       	movw	r22, r24
     10a:	ce 01       	movw	r24, r28
     10c:	cd 96       	adiw	r24, 0x3d	; 61
     10e:	0e 94 1a 02 	call	0x434	; 0x434 <_ZN3PID7processEf>
     112:	6b 01       	movw	r12, r22
     114:	7c 01       	movw	r14, r24
     116:	9b 01       	movw	r18, r22
     118:	ac 01       	movw	r20, r24
     11a:	60 e0       	ldi	r22, 0x00	; 0
     11c:	70 e0       	ldi	r23, 0x00	; 0
     11e:	cb 01       	movw	r24, r22
     120:	0e 94 60 09 	call	0x12c0	; 0x12c0 <__subsf3>
     124:	0e 94 d2 09 	call	0x13a4	; 0x13a4 <__fixsfsi>
     128:	4b 01       	movw	r8, r22
     12a:	5c 01       	movw	r10, r24
     12c:	20 e0       	ldi	r18, 0x00	; 0
     12e:	30 e0       	ldi	r19, 0x00	; 0
     130:	a9 01       	movw	r20, r18
     132:	c7 01       	movw	r24, r14
     134:	b6 01       	movw	r22, r12
     136:	0e 94 61 09 	call	0x12c2	; 0x12c2 <__addsf3>
     13a:	0e 94 d2 09 	call	0x13a4	; 0x13a4 <__fixsfsi>
     13e:	a4 01       	movw	r20, r8
     140:	ce 01       	movw	r24, r28
     142:	02 96       	adiw	r24, 0x02	; 2
     144:	df 91       	pop	r29
     146:	cf 91       	pop	r28
     148:	ff 90       	pop	r15
     14a:	ef 90       	pop	r14
     14c:	df 90       	pop	r13
     14e:	cf 90       	pop	r12
     150:	bf 90       	pop	r11
     152:	af 90       	pop	r10
     154:	9f 90       	pop	r9
     156:	8f 90       	pop	r8
     158:	0c 94 ba 02 	jmp	0x574	; 0x574 <_ZN5Motor3runEii>

0000015c <_ZN13StabilizationD1Ev>:
     15c:	cf 93       	push	r28
     15e:	df 93       	push	r29
     160:	ec 01       	movw	r28, r24
     162:	84 e7       	ldi	r24, 0x74	; 116
     164:	90 e0       	ldi	r25, 0x00	; 0
     166:	99 83       	std	Y+1, r25	; 0x01
     168:	88 83       	st	Y, r24
     16a:	ce 01       	movw	r24, r28
     16c:	cd 96       	adiw	r24, 0x3d	; 61
     16e:	0e 94 b0 01 	call	0x360	; 0x360 <_ZN3PIDD1Ev>
     172:	ce 01       	movw	r24, r28
     174:	03 96       	adiw	r24, 0x03	; 3
     176:	0e 94 81 05 	call	0xb02	; 0xb02 <_ZN4GyroD1Ev>
     17a:	ce 01       	movw	r24, r28
     17c:	02 96       	adiw	r24, 0x02	; 2
     17e:	df 91       	pop	r29
     180:	cf 91       	pop	r28
     182:	0c 94 b9 02 	jmp	0x572	; 0x572 <_ZN5MotorD1Ev>

00000186 <_ZN13StabilizationD0Ev>:
     186:	cf 93       	push	r28
     188:	df 93       	push	r29
     18a:	ec 01       	movw	r28, r24
     18c:	0e 94 ae 00 	call	0x15c	; 0x15c <_ZN13StabilizationD1Ev>
     190:	ce 01       	movw	r24, r28
     192:	df 91       	pop	r29
     194:	cf 91       	pop	r28
     196:	0c 94 7e 05 	jmp	0xafc	; 0xafc <_ZdlPv>

0000019a <_ZN5Blink4mainEv>:
     19a:	cf 93       	push	r28
     19c:	df 93       	push	r29
     19e:	ec 01       	movw	r28, r24
     1a0:	8b 81       	ldd	r24, Y+3	; 0x03
     1a2:	9c 81       	ldd	r25, Y+4	; 0x04
     1a4:	00 97       	sbiw	r24, 0x00	; 0
     1a6:	81 f0       	breq	.+32     	; 0x1c8 <_ZN5Blink4mainEv+0x2e>
     1a8:	01 97       	sbiw	r24, 0x01	; 1
     1aa:	c1 f4       	brne	.+48     	; 0x1dc <_ZN5Blink4mainEv+0x42>
     1ac:	dd 98       	cbi	0x1b, 5	; 27
     1ae:	6a 85       	ldd	r22, Y+10	; 0x0a
     1b0:	ce 01       	movw	r24, r28
     1b2:	05 96       	adiw	r24, 0x05	; 5
     1b4:	0e 94 f3 08 	call	0x11e6	; 0x11e6 <_ZN10LEDDisplay11display_decEh>
     1b8:	1c 82       	std	Y+4, r1	; 0x04
     1ba:	1b 82       	std	Y+3, r1	; 0x03
     1bc:	8a 85       	ldd	r24, Y+10	; 0x0a
     1be:	9b 85       	ldd	r25, Y+11	; 0x0b
     1c0:	01 96       	adiw	r24, 0x01	; 1
     1c2:	9b 87       	std	Y+11, r25	; 0x0b
     1c4:	8a 87       	std	Y+10, r24	; 0x0a
     1c6:	0a c0       	rjmp	.+20     	; 0x1dc <_ZN5Blink4mainEv+0x42>
     1c8:	dd 9a       	sbi	0x1b, 5	; 27
     1ca:	68 e5       	ldi	r22, 0x58	; 88
     1cc:	ce 01       	movw	r24, r28
     1ce:	05 96       	adiw	r24, 0x05	; 5
     1d0:	0e 94 f3 08 	call	0x11e6	; 0x11e6 <_ZN10LEDDisplay11display_decEh>
     1d4:	81 e0       	ldi	r24, 0x01	; 1
     1d6:	90 e0       	ldi	r25, 0x00	; 0
     1d8:	9c 83       	std	Y+4, r25	; 0x04
     1da:	8b 83       	std	Y+3, r24	; 0x03
     1dc:	df 91       	pop	r29
     1de:	cf 91       	pop	r28
     1e0:	08 95       	ret

000001e2 <main>:
     1e2:	cf 93       	push	r28
     1e4:	df 93       	push	r29
     1e6:	cd b7       	in	r28, 0x3d	; 61
     1e8:	de b7       	in	r29, 0x3e	; 62
     1ea:	c9 56       	subi	r28, 0x69	; 105
     1ec:	d1 09       	sbc	r29, r1
     1ee:	0f b6       	in	r0, 0x3f	; 63
     1f0:	f8 94       	cli
     1f2:	de bf       	out	0x3e, r29	; 62
     1f4:	0f be       	out	0x3f, r0	; 63
     1f6:	cd bf       	out	0x3d, r28	; 61
     1f8:	8a e6       	ldi	r24, 0x6A	; 106
     1fa:	90 e0       	ldi	r25, 0x00	; 0
     1fc:	a0 96       	adiw	r28, 0x20	; 32
     1fe:	9f af       	std	Y+63, r25	; 0x3f
     200:	8e af       	std	Y+62, r24	; 0x3e
     202:	a0 97       	sbiw	r28, 0x20	; 32
     204:	d5 9a       	sbi	0x1a, 5	; 26
     206:	8e e5       	ldi	r24, 0x5E	; 94
     208:	90 e0       	ldi	r25, 0x00	; 0
     20a:	8c 0f       	add	r24, r28
     20c:	9d 1f       	adc	r25, r29
     20e:	05 96       	adiw	r24, 0x05	; 5
     210:	0e 94 db 08 	call	0x11b6	; 0x11b6 <_ZN10LEDDisplayC1Ev>
     214:	a3 96       	adiw	r28, 0x23	; 35
     216:	1f ae       	std	Y+63, r1	; 0x3f
     218:	1e ae       	std	Y+62, r1	; 0x3e
     21a:	a3 97       	sbiw	r28, 0x23	; 35
     21c:	aa 96       	adiw	r28, 0x2a	; 42
     21e:	1f ae       	std	Y+63, r1	; 0x3f
     220:	1e ae       	std	Y+62, r1	; 0x3e
     222:	aa 97       	sbiw	r28, 0x2a	; 42
     224:	48 ec       	ldi	r20, 0xC8	; 200
     226:	50 e0       	ldi	r21, 0x00	; 0
     228:	be 01       	movw	r22, r28
     22a:	62 5a       	subi	r22, 0xA2	; 162
     22c:	7f 4f       	sbci	r23, 0xFF	; 255
     22e:	80 eb       	ldi	r24, 0xB0	; 176
     230:	90 e0       	ldi	r25, 0x00	; 0
     232:	0e 94 31 08 	call	0x1062	; 0x1062 <_ZN5Timer8add_taskEP4Taskj>
     236:	84 e7       	ldi	r24, 0x74	; 116
     238:	90 e0       	ldi	r25, 0x00	; 0
     23a:	9a 83       	std	Y+2, r25	; 0x02
     23c:	89 83       	std	Y+1, r24	; 0x01
     23e:	ce 01       	movw	r24, r28
     240:	03 96       	adiw	r24, 0x03	; 3
     242:	0e 94 ad 02 	call	0x55a	; 0x55a <_ZN5MotorC1Ev>
     246:	ce 01       	movw	r24, r28
     248:	04 96       	adiw	r24, 0x04	; 4
     24a:	0e 94 80 05 	call	0xb00	; 0xb00 <_ZN4GyroC1Ev>
     24e:	ce 01       	movw	r24, r28
     250:	ce 96       	adiw	r24, 0x3e	; 62
     252:	0e 94 8a 01 	call	0x314	; 0x314 <_ZN3PIDC1Ev>
     256:	6c ea       	ldi	r22, 0xAC	; 172
     258:	70 e0       	ldi	r23, 0x00	; 0
     25a:	ce 01       	movw	r24, r28
     25c:	04 96       	adiw	r24, 0x04	; 4
     25e:	0e 94 18 07 	call	0xe30	; 0xe30 <_ZN4Gyro4initEP13I2C_Interface>
     262:	81 2c       	mov	r8, r1
     264:	91 2c       	mov	r9, r1
     266:	2f e7       	ldi	r18, 0x7F	; 127
     268:	a2 2e       	mov	r10, r18
     26a:	23 e4       	ldi	r18, 0x43	; 67
     26c:	b2 2e       	mov	r11, r18
     26e:	c1 2c       	mov	r12, r1
     270:	d1 2c       	mov	r13, r1
     272:	76 01       	movw	r14, r12
     274:	97 01       	movw	r18, r14
     276:	86 01       	movw	r16, r12
     278:	40 e0       	ldi	r20, 0x00	; 0
     27a:	50 e0       	ldi	r21, 0x00	; 0
     27c:	60 e8       	ldi	r22, 0x80	; 128
     27e:	7f e3       	ldi	r23, 0x3F	; 63
     280:	ce 01       	movw	r24, r28
     282:	ce 96       	adiw	r24, 0x3e	; 62
     284:	0e 94 b1 01 	call	0x362	; 0x362 <_ZN3PID4initEffff>
     288:	bb 98       	cbi	0x17, 3	; 23
     28a:	c3 9a       	sbi	0x18, 3	; 24
     28c:	ba 98       	cbi	0x17, 2	; 23
     28e:	c2 9a       	sbi	0x18, 2	; 24
     290:	b3 9b       	sbis	0x16, 3	; 22
     292:	07 c0       	rjmp	.+14     	; 0x2a2 <main+0xc0>
     294:	b2 9b       	sbis	0x16, 2	; 22
     296:	05 c0       	rjmp	.+10     	; 0x2a2 <main+0xc0>
     298:	80 eb       	ldi	r24, 0xB0	; 176
     29a:	90 e0       	ldi	r25, 0x00	; 0
     29c:	0e 94 53 08 	call	0x10a6	; 0x10a6 <_ZN5Timer4mainEv>
     2a0:	f7 cf       	rjmp	.-18     	; 0x290 <main+0xae>
     2a2:	b3 99       	sbic	0x16, 3	; 22
     2a4:	17 c0       	rjmp	.+46     	; 0x2d4 <main+0xf2>
     2a6:	81 2c       	mov	r8, r1
     2a8:	91 2c       	mov	r9, r1
     2aa:	8f e7       	ldi	r24, 0x7F	; 127
     2ac:	a8 2e       	mov	r10, r24
     2ae:	83 e4       	ldi	r24, 0x43	; 67
     2b0:	b8 2e       	mov	r11, r24
     2b2:	c1 2c       	mov	r12, r1
     2b4:	d1 2c       	mov	r13, r1
     2b6:	90 ea       	ldi	r25, 0xA0	; 160
     2b8:	e9 2e       	mov	r14, r25
     2ba:	90 e4       	ldi	r25, 0x40	; 64
     2bc:	f9 2e       	mov	r15, r25
     2be:	00 e0       	ldi	r16, 0x00	; 0
     2c0:	10 e0       	ldi	r17, 0x00	; 0
     2c2:	98 01       	movw	r18, r16
     2c4:	40 e0       	ldi	r20, 0x00	; 0
     2c6:	50 e0       	ldi	r21, 0x00	; 0
     2c8:	60 ec       	ldi	r22, 0xC0	; 192
     2ca:	7f e3       	ldi	r23, 0x3F	; 63
     2cc:	ce 01       	movw	r24, r28
     2ce:	ce 96       	adiw	r24, 0x3e	; 62
     2d0:	0e 94 b1 01 	call	0x362	; 0x362 <_ZN3PID4initEffff>
     2d4:	4a e0       	ldi	r20, 0x0A	; 10
     2d6:	50 e0       	ldi	r21, 0x00	; 0
     2d8:	be 01       	movw	r22, r28
     2da:	6f 5f       	subi	r22, 0xFF	; 255
     2dc:	7f 4f       	sbci	r23, 0xFF	; 255
     2de:	80 eb       	ldi	r24, 0xB0	; 176
     2e0:	90 e0       	ldi	r25, 0x00	; 0
     2e2:	0e 94 31 08 	call	0x1062	; 0x1062 <_ZN5Timer8add_taskEP4Taskj>
     2e6:	80 eb       	ldi	r24, 0xB0	; 176
     2e8:	90 e0       	ldi	r25, 0x00	; 0
     2ea:	0e 94 53 08 	call	0x10a6	; 0x10a6 <_ZN5Timer4mainEv>
     2ee:	fb cf       	rjmp	.-10     	; 0x2e6 <main+0x104>

000002f0 <_ZN5BlinkD1Ev>:
     2f0:	2a e6       	ldi	r18, 0x6A	; 106
     2f2:	30 e0       	ldi	r19, 0x00	; 0
     2f4:	fc 01       	movw	r30, r24
     2f6:	31 83       	std	Z+1, r19	; 0x01
     2f8:	20 83       	st	Z, r18
     2fa:	05 96       	adiw	r24, 0x05	; 5
     2fc:	0c 94 c0 08 	jmp	0x1180	; 0x1180 <_ZN10LEDDisplayD1Ev>

00000300 <_ZN5BlinkD0Ev>:
     300:	cf 93       	push	r28
     302:	df 93       	push	r29
     304:	ec 01       	movw	r28, r24
     306:	0e 94 78 01 	call	0x2f0	; 0x2f0 <_ZN5BlinkD1Ev>
     30a:	ce 01       	movw	r24, r28
     30c:	df 91       	pop	r29
     30e:	cf 91       	pop	r28
     310:	0c 94 7e 05 	jmp	0xafc	; 0xafc <_ZdlPv>

00000314 <_ZN3PIDC1Ev>:
     314:	fc 01       	movw	r30, r24
     316:	10 82       	st	Z, r1
     318:	11 82       	std	Z+1, r1	; 0x01
     31a:	12 82       	std	Z+2, r1	; 0x02
     31c:	13 82       	std	Z+3, r1	; 0x03
     31e:	14 82       	std	Z+4, r1	; 0x04
     320:	15 82       	std	Z+5, r1	; 0x05
     322:	16 82       	std	Z+6, r1	; 0x06
     324:	17 82       	std	Z+7, r1	; 0x07
     326:	10 86       	std	Z+8, r1	; 0x08
     328:	11 86       	std	Z+9, r1	; 0x09
     32a:	12 86       	std	Z+10, r1	; 0x0a
     32c:	13 86       	std	Z+11, r1	; 0x0b
     32e:	14 86       	std	Z+12, r1	; 0x0c
     330:	15 86       	std	Z+13, r1	; 0x0d
     332:	16 86       	std	Z+14, r1	; 0x0e
     334:	17 86       	std	Z+15, r1	; 0x0f
     336:	10 8a       	std	Z+16, r1	; 0x10
     338:	11 8a       	std	Z+17, r1	; 0x11
     33a:	12 8a       	std	Z+18, r1	; 0x12
     33c:	13 8a       	std	Z+19, r1	; 0x13
     33e:	14 8a       	std	Z+20, r1	; 0x14
     340:	15 8a       	std	Z+21, r1	; 0x15
     342:	16 8a       	std	Z+22, r1	; 0x16
     344:	17 8a       	std	Z+23, r1	; 0x17
     346:	80 e0       	ldi	r24, 0x00	; 0
     348:	90 e0       	ldi	r25, 0x00	; 0
     34a:	a0 e0       	ldi	r26, 0x00	; 0
     34c:	b0 e8       	ldi	r27, 0x80	; 128
     34e:	80 8f       	std	Z+24, r24	; 0x18
     350:	91 8f       	std	Z+25, r25	; 0x19
     352:	a2 8f       	std	Z+26, r26	; 0x1a
     354:	b3 8f       	std	Z+27, r27	; 0x1b
     356:	14 8e       	std	Z+28, r1	; 0x1c
     358:	15 8e       	std	Z+29, r1	; 0x1d
     35a:	16 8e       	std	Z+30, r1	; 0x1e
     35c:	17 8e       	std	Z+31, r1	; 0x1f
     35e:	08 95       	ret

00000360 <_ZN3PIDD1Ev>:
     360:	08 95       	ret

00000362 <_ZN3PID4initEffff>:
     362:	2f 92       	push	r2
     364:	3f 92       	push	r3
     366:	4f 92       	push	r4
     368:	5f 92       	push	r5
     36a:	6f 92       	push	r6
     36c:	7f 92       	push	r7
     36e:	8f 92       	push	r8
     370:	9f 92       	push	r9
     372:	af 92       	push	r10
     374:	bf 92       	push	r11
     376:	cf 92       	push	r12
     378:	df 92       	push	r13
     37a:	ef 92       	push	r14
     37c:	ff 92       	push	r15
     37e:	0f 93       	push	r16
     380:	1f 93       	push	r17
     382:	cf 93       	push	r28
     384:	df 93       	push	r29
     386:	cd b7       	in	r28, 0x3d	; 61
     388:	de b7       	in	r29, 0x3e	; 62
     38a:	3c 01       	movw	r6, r24
     38c:	1a 01       	movw	r2, r20
     38e:	2b 01       	movw	r4, r22
     390:	fc 01       	movw	r30, r24
     392:	10 82       	st	Z, r1
     394:	11 82       	std	Z+1, r1	; 0x01
     396:	12 82       	std	Z+2, r1	; 0x02
     398:	13 82       	std	Z+3, r1	; 0x03
     39a:	84 82       	std	Z+4, r8	; 0x04
     39c:	95 82       	std	Z+5, r9	; 0x05
     39e:	a6 82       	std	Z+6, r10	; 0x06
     3a0:	b7 82       	std	Z+7, r11	; 0x07
     3a2:	10 86       	std	Z+8, r1	; 0x08
     3a4:	11 86       	std	Z+9, r1	; 0x09
     3a6:	12 86       	std	Z+10, r1	; 0x0a
     3a8:	13 86       	std	Z+11, r1	; 0x0b
     3aa:	14 86       	std	Z+12, r1	; 0x0c
     3ac:	15 86       	std	Z+13, r1	; 0x0d
     3ae:	16 86       	std	Z+14, r1	; 0x0e
     3b0:	17 86       	std	Z+15, r1	; 0x0f
     3b2:	10 8a       	std	Z+16, r1	; 0x10
     3b4:	11 8a       	std	Z+17, r1	; 0x11
     3b6:	12 8a       	std	Z+18, r1	; 0x12
     3b8:	13 8a       	std	Z+19, r1	; 0x13
     3ba:	a9 01       	movw	r20, r18
     3bc:	98 01       	movw	r18, r16
     3be:	c2 01       	movw	r24, r4
     3c0:	b1 01       	movw	r22, r2
     3c2:	0e 94 61 09 	call	0x12c2	; 0x12c2 <__addsf3>
     3c6:	a7 01       	movw	r20, r14
     3c8:	96 01       	movw	r18, r12
     3ca:	0e 94 61 09 	call	0x12c2	; 0x12c2 <__addsf3>
     3ce:	f3 01       	movw	r30, r6
     3d0:	64 8b       	std	Z+20, r22	; 0x14
     3d2:	75 8b       	std	Z+21, r23	; 0x15
     3d4:	86 8b       	std	Z+22, r24	; 0x16
     3d6:	97 8b       	std	Z+23, r25	; 0x17
     3d8:	52 01       	movw	r10, r4
     3da:	41 01       	movw	r8, r2
     3dc:	b7 fa       	bst	r11, 7
     3de:	b0 94       	com	r11
     3e0:	b7 f8       	bld	r11, 7
     3e2:	b0 94       	com	r11
     3e4:	a7 01       	movw	r20, r14
     3e6:	96 01       	movw	r18, r12
     3e8:	c7 01       	movw	r24, r14
     3ea:	b6 01       	movw	r22, r12
     3ec:	0e 94 61 09 	call	0x12c2	; 0x12c2 <__addsf3>
     3f0:	9b 01       	movw	r18, r22
     3f2:	ac 01       	movw	r20, r24
     3f4:	c5 01       	movw	r24, r10
     3f6:	b4 01       	movw	r22, r8
     3f8:	0e 94 60 09 	call	0x12c0	; 0x12c0 <__subsf3>
     3fc:	f3 01       	movw	r30, r6
     3fe:	60 8f       	std	Z+24, r22	; 0x18
     400:	71 8f       	std	Z+25, r23	; 0x19
     402:	82 8f       	std	Z+26, r24	; 0x1a
     404:	93 8f       	std	Z+27, r25	; 0x1b
     406:	c4 8e       	std	Z+28, r12	; 0x1c
     408:	d5 8e       	std	Z+29, r13	; 0x1d
     40a:	e6 8e       	std	Z+30, r14	; 0x1e
     40c:	f7 8e       	std	Z+31, r15	; 0x1f
     40e:	df 91       	pop	r29
     410:	cf 91       	pop	r28
     412:	1f 91       	pop	r17
     414:	0f 91       	pop	r16
     416:	ff 90       	pop	r15
     418:	ef 90       	pop	r14
     41a:	df 90       	pop	r13
     41c:	cf 90       	pop	r12
     41e:	bf 90       	pop	r11
     420:	af 90       	pop	r10
     422:	9f 90       	pop	r9
     424:	8f 90       	pop	r8
     426:	7f 90       	pop	r7
     428:	6f 90       	pop	r6
     42a:	5f 90       	pop	r5
     42c:	4f 90       	pop	r4
     42e:	3f 90       	pop	r3
     430:	2f 90       	pop	r2
     432:	08 95       	ret

00000434 <_ZN3PID7processEf>:
     434:	4f 92       	push	r4
     436:	5f 92       	push	r5
     438:	6f 92       	push	r6
     43a:	7f 92       	push	r7
     43c:	8f 92       	push	r8
     43e:	9f 92       	push	r9
     440:	af 92       	push	r10
     442:	bf 92       	push	r11
     444:	cf 92       	push	r12
     446:	df 92       	push	r13
     448:	ef 92       	push	r14
     44a:	ff 92       	push	r15
     44c:	cf 93       	push	r28
     44e:	df 93       	push	r29
     450:	ec 01       	movw	r28, r24
     452:	cb 01       	movw	r24, r22
     454:	ba 01       	movw	r22, r20
     456:	cc 84       	ldd	r12, Y+12	; 0x0c
     458:	dd 84       	ldd	r13, Y+13	; 0x0d
     45a:	ee 84       	ldd	r14, Y+14	; 0x0e
     45c:	ff 84       	ldd	r15, Y+15	; 0x0f
     45e:	c8 8a       	std	Y+16, r12	; 0x10
     460:	d9 8a       	std	Y+17, r13	; 0x11
     462:	ea 8a       	std	Y+18, r14	; 0x12
     464:	fb 8a       	std	Y+19, r15	; 0x13
     466:	88 84       	ldd	r8, Y+8	; 0x08
     468:	99 84       	ldd	r9, Y+9	; 0x09
     46a:	aa 84       	ldd	r10, Y+10	; 0x0a
     46c:	bb 84       	ldd	r11, Y+11	; 0x0b
     46e:	8c 86       	std	Y+12, r8	; 0x0c
     470:	9d 86       	std	Y+13, r9	; 0x0d
     472:	ae 86       	std	Y+14, r10	; 0x0e
     474:	bf 86       	std	Y+15, r11	; 0x0f
     476:	68 87       	std	Y+8, r22	; 0x08
     478:	79 87       	std	Y+9, r23	; 0x09
     47a:	8a 87       	std	Y+10, r24	; 0x0a
     47c:	9b 87       	std	Y+11, r25	; 0x0b
     47e:	2c 89       	ldd	r18, Y+20	; 0x14
     480:	3d 89       	ldd	r19, Y+21	; 0x15
     482:	4e 89       	ldd	r20, Y+22	; 0x16
     484:	5f 89       	ldd	r21, Y+23	; 0x17
     486:	0e 94 bf 0a 	call	0x157e	; 0x157e <__mulsf3>
     48a:	2b 01       	movw	r4, r22
     48c:	3c 01       	movw	r6, r24
     48e:	28 8d       	ldd	r18, Y+24	; 0x18
     490:	39 8d       	ldd	r19, Y+25	; 0x19
     492:	4a 8d       	ldd	r20, Y+26	; 0x1a
     494:	5b 8d       	ldd	r21, Y+27	; 0x1b
     496:	c5 01       	movw	r24, r10
     498:	b4 01       	movw	r22, r8
     49a:	0e 94 bf 0a 	call	0x157e	; 0x157e <__mulsf3>
     49e:	9b 01       	movw	r18, r22
     4a0:	ac 01       	movw	r20, r24
     4a2:	c3 01       	movw	r24, r6
     4a4:	b2 01       	movw	r22, r4
     4a6:	0e 94 61 09 	call	0x12c2	; 0x12c2 <__addsf3>
     4aa:	4b 01       	movw	r8, r22
     4ac:	5c 01       	movw	r10, r24
     4ae:	2c 8d       	ldd	r18, Y+28	; 0x1c
     4b0:	3d 8d       	ldd	r19, Y+29	; 0x1d
     4b2:	4e 8d       	ldd	r20, Y+30	; 0x1e
     4b4:	5f 8d       	ldd	r21, Y+31	; 0x1f
     4b6:	c7 01       	movw	r24, r14
     4b8:	b6 01       	movw	r22, r12
     4ba:	0e 94 bf 0a 	call	0x157e	; 0x157e <__mulsf3>
     4be:	9b 01       	movw	r18, r22
     4c0:	ac 01       	movw	r20, r24
     4c2:	c5 01       	movw	r24, r10
     4c4:	b4 01       	movw	r22, r8
     4c6:	0e 94 61 09 	call	0x12c2	; 0x12c2 <__addsf3>
     4ca:	28 81       	ld	r18, Y
     4cc:	39 81       	ldd	r19, Y+1	; 0x01
     4ce:	4a 81       	ldd	r20, Y+2	; 0x02
     4d0:	5b 81       	ldd	r21, Y+3	; 0x03
     4d2:	0e 94 61 09 	call	0x12c2	; 0x12c2 <__addsf3>
     4d6:	68 83       	st	Y, r22
     4d8:	79 83       	std	Y+1, r23	; 0x01
     4da:	8a 83       	std	Y+2, r24	; 0x02
     4dc:	9b 83       	std	Y+3, r25	; 0x03
     4de:	cc 80       	ldd	r12, Y+4	; 0x04
     4e0:	dd 80       	ldd	r13, Y+5	; 0x05
     4e2:	ee 80       	ldd	r14, Y+6	; 0x06
     4e4:	ff 80       	ldd	r15, Y+7	; 0x07
     4e6:	a7 01       	movw	r20, r14
     4e8:	96 01       	movw	r18, r12
     4ea:	0e 94 ba 0a 	call	0x1574	; 0x1574 <__gesf2>
     4ee:	18 16       	cp	r1, r24
     4f0:	24 f4       	brge	.+8      	; 0x4fa <__stack+0x9b>
     4f2:	c8 82       	st	Y, r12
     4f4:	d9 82       	std	Y+1, r13	; 0x01
     4f6:	ea 82       	std	Y+2, r14	; 0x02
     4f8:	fb 82       	std	Y+3, r15	; 0x03
     4fa:	f7 fa       	bst	r15, 7
     4fc:	f0 94       	com	r15
     4fe:	f7 f8       	bld	r15, 7
     500:	f0 94       	com	r15
     502:	a7 01       	movw	r20, r14
     504:	96 01       	movw	r18, r12
     506:	68 81       	ld	r22, Y
     508:	79 81       	ldd	r23, Y+1	; 0x01
     50a:	8a 81       	ldd	r24, Y+2	; 0x02
     50c:	9b 81       	ldd	r25, Y+3	; 0x03
     50e:	0e 94 cd 09 	call	0x139a	; 0x139a <__cmpsf2>
     512:	87 ff       	sbrs	r24, 7
     514:	04 c0       	rjmp	.+8      	; 0x51e <__stack+0xbf>
     516:	c8 82       	st	Y, r12
     518:	d9 82       	std	Y+1, r13	; 0x01
     51a:	ea 82       	std	Y+2, r14	; 0x02
     51c:	fb 82       	std	Y+3, r15	; 0x03
     51e:	68 81       	ld	r22, Y
     520:	79 81       	ldd	r23, Y+1	; 0x01
     522:	8a 81       	ldd	r24, Y+2	; 0x02
     524:	9b 81       	ldd	r25, Y+3	; 0x03
     526:	df 91       	pop	r29
     528:	cf 91       	pop	r28
     52a:	ff 90       	pop	r15
     52c:	ef 90       	pop	r14
     52e:	df 90       	pop	r13
     530:	cf 90       	pop	r12
     532:	bf 90       	pop	r11
     534:	af 90       	pop	r10
     536:	9f 90       	pop	r9
     538:	8f 90       	pop	r8
     53a:	7f 90       	pop	r7
     53c:	6f 90       	pop	r6
     53e:	5f 90       	pop	r5
     540:	4f 90       	pop	r4
     542:	08 95       	ret

00000544 <_ZN5USARTC1Ev>:
     544:	10 bc       	out	0x20, r1	; 32
     546:	80 e4       	ldi	r24, 0x40	; 64
     548:	89 b9       	out	0x09, r24	; 9
     54a:	80 b5       	in	r24, 0x20	; 32
     54c:	86 68       	ori	r24, 0x86	; 134
     54e:	80 bd       	out	0x20, r24	; 32
     550:	8a b1       	in	r24, 0x0a	; 10
     552:	88 61       	ori	r24, 0x18	; 24
     554:	8a b9       	out	0x0a, r24	; 10
     556:	08 95       	ret

00000558 <_ZN5USARTD1Ev>:
     558:	08 95       	ret

0000055a <_ZN5MotorC1Ev>:
     55a:	80 ef       	ldi	r24, 0xF0	; 240
     55c:	81 bb       	out	0x11, r24	; 17
     55e:	95 98       	cbi	0x12, 5	; 18
     560:	81 ea       	ldi	r24, 0xA1	; 161
     562:	8f bd       	out	0x2f, r24	; 47
     564:	81 e0       	ldi	r24, 0x01	; 1
     566:	8e bd       	out	0x2e, r24	; 46
     568:	1b bc       	out	0x2b, r1	; 43
     56a:	1a bc       	out	0x2a, r1	; 42
     56c:	19 bc       	out	0x29, r1	; 41
     56e:	18 bc       	out	0x28, r1	; 40
     570:	08 95       	ret

00000572 <_ZN5MotorD1Ev>:
     572:	08 95       	ret

00000574 <_ZN5Motor3runEii>:
     574:	6f 3f       	cpi	r22, 0xFF	; 255
     576:	71 05       	cpc	r23, r1
     578:	09 f0       	breq	.+2      	; 0x57c <_ZN5Motor3runEii+0x8>
     57a:	3c f4       	brge	.+14     	; 0x58a <_ZN5Motor3runEii+0x16>
     57c:	61 30       	cpi	r22, 0x01	; 1
     57e:	8f ef       	ldi	r24, 0xFF	; 255
     580:	78 07       	cpc	r23, r24
     582:	2c f4       	brge	.+10     	; 0x58e <_ZN5Motor3runEii+0x1a>
     584:	61 e0       	ldi	r22, 0x01	; 1
     586:	7f ef       	ldi	r23, 0xFF	; 255
     588:	02 c0       	rjmp	.+4      	; 0x58e <_ZN5Motor3runEii+0x1a>
     58a:	6f ef       	ldi	r22, 0xFF	; 255
     58c:	70 e0       	ldi	r23, 0x00	; 0
     58e:	4f 3f       	cpi	r20, 0xFF	; 255
     590:	51 05       	cpc	r21, r1
     592:	09 f0       	breq	.+2      	; 0x596 <_ZN5Motor3runEii+0x22>
     594:	44 f4       	brge	.+16     	; 0x5a6 <_ZN5Motor3runEii+0x32>
     596:	41 30       	cpi	r20, 0x01	; 1
     598:	8f ef       	ldi	r24, 0xFF	; 255
     59a:	58 07       	cpc	r21, r24
     59c:	6c f0       	brlt	.+26     	; 0x5b8 <_ZN5Motor3runEii+0x44>
     59e:	14 16       	cp	r1, r20
     5a0:	15 06       	cpc	r1, r21
     5a2:	1c f0       	brlt	.+6      	; 0x5aa <_ZN5Motor3runEii+0x36>
     5a4:	05 c0       	rjmp	.+10     	; 0x5b0 <_ZN5Motor3runEii+0x3c>
     5a6:	4f ef       	ldi	r20, 0xFF	; 255
     5a8:	50 e0       	ldi	r21, 0x00	; 0
     5aa:	4a bd       	out	0x2a, r20	; 42
     5ac:	96 9a       	sbi	0x12, 6	; 18
     5ae:	0b c0       	rjmp	.+22     	; 0x5c6 <_ZN5Motor3runEii+0x52>
     5b0:	41 15       	cp	r20, r1
     5b2:	51 05       	cpc	r21, r1
     5b4:	39 f0       	breq	.+14     	; 0x5c4 <_ZN5Motor3runEii+0x50>
     5b6:	02 c0       	rjmp	.+4      	; 0x5bc <_ZN5Motor3runEii+0x48>
     5b8:	41 e0       	ldi	r20, 0x01	; 1
     5ba:	5f ef       	ldi	r21, 0xFF	; 255
     5bc:	41 95       	neg	r20
     5be:	4a bd       	out	0x2a, r20	; 42
     5c0:	96 98       	cbi	0x12, 6	; 18
     5c2:	01 c0       	rjmp	.+2      	; 0x5c6 <_ZN5Motor3runEii+0x52>
     5c4:	1a bc       	out	0x2a, r1	; 42
     5c6:	16 16       	cp	r1, r22
     5c8:	17 06       	cpc	r1, r23
     5ca:	1c f4       	brge	.+6      	; 0x5d2 <_ZN5Motor3runEii+0x5e>
     5cc:	68 bd       	out	0x28, r22	; 40
     5ce:	97 98       	cbi	0x12, 7	; 18
     5d0:	08 95       	ret
     5d2:	61 15       	cp	r22, r1
     5d4:	71 05       	cpc	r23, r1
     5d6:	21 f0       	breq	.+8      	; 0x5e0 <_ZN5Motor3runEii+0x6c>
     5d8:	61 95       	neg	r22
     5da:	68 bd       	out	0x28, r22	; 40
     5dc:	97 9a       	sbi	0x12, 7	; 18
     5de:	08 95       	ret
     5e0:	18 bc       	out	0x28, r1	; 40
     5e2:	08 95       	ret

000005e4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     5e4:	0f 93       	push	r16
     5e6:	1f 93       	push	r17
     5e8:	cf 93       	push	r28
     5ea:	df 93       	push	r29
     5ec:	00 d0       	rcall	.+0      	; 0x5ee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     5ee:	1f 92       	push	r1
     5f0:	cd b7       	in	r28, 0x3d	; 61
     5f2:	de b7       	in	r29, 0x3e	; 62
     5f4:	8c 01       	movw	r16, r24
     5f6:	dc 01       	movw	r26, r24
     5f8:	ed 91       	ld	r30, X+
     5fa:	fc 91       	ld	r31, X
     5fc:	01 90       	ld	r0, Z+
     5fe:	f0 81       	ld	r31, Z
     600:	e0 2d       	mov	r30, r0
     602:	2b 83       	std	Y+3, r18	; 0x03
     604:	4a 83       	std	Y+2, r20	; 0x02
     606:	69 83       	std	Y+1, r22	; 0x01
     608:	09 95       	icall
     60a:	d8 01       	movw	r26, r16
     60c:	ed 91       	ld	r30, X+
     60e:	fc 91       	ld	r31, X
     610:	04 80       	ldd	r0, Z+4	; 0x04
     612:	f5 81       	ldd	r31, Z+5	; 0x05
     614:	e0 2d       	mov	r30, r0
     616:	69 81       	ldd	r22, Y+1	; 0x01
     618:	c8 01       	movw	r24, r16
     61a:	09 95       	icall
     61c:	d8 01       	movw	r26, r16
     61e:	ed 91       	ld	r30, X+
     620:	fc 91       	ld	r31, X
     622:	04 80       	ldd	r0, Z+4	; 0x04
     624:	f5 81       	ldd	r31, Z+5	; 0x05
     626:	e0 2d       	mov	r30, r0
     628:	4a 81       	ldd	r20, Y+2	; 0x02
     62a:	64 2f       	mov	r22, r20
     62c:	c8 01       	movw	r24, r16
     62e:	09 95       	icall
     630:	d8 01       	movw	r26, r16
     632:	ed 91       	ld	r30, X+
     634:	fc 91       	ld	r31, X
     636:	04 80       	ldd	r0, Z+4	; 0x04
     638:	f5 81       	ldd	r31, Z+5	; 0x05
     63a:	e0 2d       	mov	r30, r0
     63c:	2b 81       	ldd	r18, Y+3	; 0x03
     63e:	62 2f       	mov	r22, r18
     640:	c8 01       	movw	r24, r16
     642:	09 95       	icall
     644:	d8 01       	movw	r26, r16
     646:	ed 91       	ld	r30, X+
     648:	fc 91       	ld	r31, X
     64a:	02 80       	ldd	r0, Z+2	; 0x02
     64c:	f3 81       	ldd	r31, Z+3	; 0x03
     64e:	e0 2d       	mov	r30, r0
     650:	c8 01       	movw	r24, r16
     652:	0f 90       	pop	r0
     654:	0f 90       	pop	r0
     656:	0f 90       	pop	r0
     658:	df 91       	pop	r29
     65a:	cf 91       	pop	r28
     65c:	1f 91       	pop	r17
     65e:	0f 91       	pop	r16
     660:	09 94       	ijmp

00000662 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     662:	0f 93       	push	r16
     664:	1f 93       	push	r17
     666:	cf 93       	push	r28
     668:	df 93       	push	r29
     66a:	00 d0       	rcall	.+0      	; 0x66c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     66c:	00 d0       	rcall	.+0      	; 0x66e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     66e:	cd b7       	in	r28, 0x3d	; 61
     670:	de b7       	in	r29, 0x3e	; 62
     672:	8c 01       	movw	r16, r24
     674:	dc 01       	movw	r26, r24
     676:	ed 91       	ld	r30, X+
     678:	fc 91       	ld	r31, X
     67a:	01 90       	ld	r0, Z+
     67c:	f0 81       	ld	r31, Z
     67e:	e0 2d       	mov	r30, r0
     680:	2c 83       	std	Y+4, r18	; 0x04
     682:	3b 83       	std	Y+3, r19	; 0x03
     684:	4a 83       	std	Y+2, r20	; 0x02
     686:	69 83       	std	Y+1, r22	; 0x01
     688:	09 95       	icall
     68a:	d8 01       	movw	r26, r16
     68c:	ed 91       	ld	r30, X+
     68e:	fc 91       	ld	r31, X
     690:	04 80       	ldd	r0, Z+4	; 0x04
     692:	f5 81       	ldd	r31, Z+5	; 0x05
     694:	e0 2d       	mov	r30, r0
     696:	69 81       	ldd	r22, Y+1	; 0x01
     698:	c8 01       	movw	r24, r16
     69a:	09 95       	icall
     69c:	d8 01       	movw	r26, r16
     69e:	ed 91       	ld	r30, X+
     6a0:	fc 91       	ld	r31, X
     6a2:	04 80       	ldd	r0, Z+4	; 0x04
     6a4:	f5 81       	ldd	r31, Z+5	; 0x05
     6a6:	e0 2d       	mov	r30, r0
     6a8:	4a 81       	ldd	r20, Y+2	; 0x02
     6aa:	64 2f       	mov	r22, r20
     6ac:	c8 01       	movw	r24, r16
     6ae:	09 95       	icall
     6b0:	d8 01       	movw	r26, r16
     6b2:	ed 91       	ld	r30, X+
     6b4:	fc 91       	ld	r31, X
     6b6:	04 80       	ldd	r0, Z+4	; 0x04
     6b8:	f5 81       	ldd	r31, Z+5	; 0x05
     6ba:	e0 2d       	mov	r30, r0
     6bc:	3b 81       	ldd	r19, Y+3	; 0x03
     6be:	63 2f       	mov	r22, r19
     6c0:	c8 01       	movw	r24, r16
     6c2:	09 95       	icall
     6c4:	d8 01       	movw	r26, r16
     6c6:	ed 91       	ld	r30, X+
     6c8:	fc 91       	ld	r31, X
     6ca:	04 80       	ldd	r0, Z+4	; 0x04
     6cc:	f5 81       	ldd	r31, Z+5	; 0x05
     6ce:	e0 2d       	mov	r30, r0
     6d0:	2c 81       	ldd	r18, Y+4	; 0x04
     6d2:	62 2f       	mov	r22, r18
     6d4:	c8 01       	movw	r24, r16
     6d6:	09 95       	icall
     6d8:	d8 01       	movw	r26, r16
     6da:	ed 91       	ld	r30, X+
     6dc:	fc 91       	ld	r31, X
     6de:	02 80       	ldd	r0, Z+2	; 0x02
     6e0:	f3 81       	ldd	r31, Z+3	; 0x03
     6e2:	e0 2d       	mov	r30, r0
     6e4:	c8 01       	movw	r24, r16
     6e6:	0f 90       	pop	r0
     6e8:	0f 90       	pop	r0
     6ea:	0f 90       	pop	r0
     6ec:	0f 90       	pop	r0
     6ee:	df 91       	pop	r29
     6f0:	cf 91       	pop	r28
     6f2:	1f 91       	pop	r17
     6f4:	0f 91       	pop	r16
     6f6:	09 94       	ijmp

000006f8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     6f8:	cf 92       	push	r12
     6fa:	df 92       	push	r13
     6fc:	ef 92       	push	r14
     6fe:	ff 92       	push	r15
     700:	0f 93       	push	r16
     702:	1f 93       	push	r17
     704:	cf 93       	push	r28
     706:	df 93       	push	r29
     708:	00 d0       	rcall	.+0      	; 0x70a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     70a:	00 d0       	rcall	.+0      	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     70c:	cd b7       	in	r28, 0x3d	; 61
     70e:	de b7       	in	r29, 0x3e	; 62
     710:	6c 01       	movw	r12, r24
     712:	dc 01       	movw	r26, r24
     714:	ed 91       	ld	r30, X+
     716:	fc 91       	ld	r31, X
     718:	01 90       	ld	r0, Z+
     71a:	f0 81       	ld	r31, Z
     71c:	e0 2d       	mov	r30, r0
     71e:	2b 83       	std	Y+3, r18	; 0x03
     720:	3c 83       	std	Y+4, r19	; 0x04
     722:	4a 83       	std	Y+2, r20	; 0x02
     724:	69 83       	std	Y+1, r22	; 0x01
     726:	09 95       	icall
     728:	d6 01       	movw	r26, r12
     72a:	ed 91       	ld	r30, X+
     72c:	fc 91       	ld	r31, X
     72e:	04 80       	ldd	r0, Z+4	; 0x04
     730:	f5 81       	ldd	r31, Z+5	; 0x05
     732:	e0 2d       	mov	r30, r0
     734:	69 81       	ldd	r22, Y+1	; 0x01
     736:	c6 01       	movw	r24, r12
     738:	09 95       	icall
     73a:	d6 01       	movw	r26, r12
     73c:	ed 91       	ld	r30, X+
     73e:	fc 91       	ld	r31, X
     740:	04 80       	ldd	r0, Z+4	; 0x04
     742:	f5 81       	ldd	r31, Z+5	; 0x05
     744:	e0 2d       	mov	r30, r0
     746:	4a 81       	ldd	r20, Y+2	; 0x02
     748:	64 2f       	mov	r22, r20
     74a:	c6 01       	movw	r24, r12
     74c:	09 95       	icall
     74e:	2b 81       	ldd	r18, Y+3	; 0x03
     750:	e2 2e       	mov	r14, r18
     752:	3c 81       	ldd	r19, Y+4	; 0x04
     754:	f3 2e       	mov	r15, r19
     756:	0e 0d       	add	r16, r14
     758:	1f 1d       	adc	r17, r15
     75a:	d6 01       	movw	r26, r12
     75c:	ed 91       	ld	r30, X+
     75e:	fc 91       	ld	r31, X
     760:	e0 16       	cp	r14, r16
     762:	f1 06       	cpc	r15, r17
     764:	49 f0       	breq	.+18     	; 0x778 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
     766:	d7 01       	movw	r26, r14
     768:	6d 91       	ld	r22, X+
     76a:	7d 01       	movw	r14, r26
     76c:	04 80       	ldd	r0, Z+4	; 0x04
     76e:	f5 81       	ldd	r31, Z+5	; 0x05
     770:	e0 2d       	mov	r30, r0
     772:	c6 01       	movw	r24, r12
     774:	09 95       	icall
     776:	f1 cf       	rjmp	.-30     	; 0x75a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
     778:	02 80       	ldd	r0, Z+2	; 0x02
     77a:	f3 81       	ldd	r31, Z+3	; 0x03
     77c:	e0 2d       	mov	r30, r0
     77e:	c6 01       	movw	r24, r12
     780:	0f 90       	pop	r0
     782:	0f 90       	pop	r0
     784:	0f 90       	pop	r0
     786:	0f 90       	pop	r0
     788:	df 91       	pop	r29
     78a:	cf 91       	pop	r28
     78c:	1f 91       	pop	r17
     78e:	0f 91       	pop	r16
     790:	ff 90       	pop	r15
     792:	ef 90       	pop	r14
     794:	df 90       	pop	r13
     796:	cf 90       	pop	r12
     798:	09 94       	ijmp

0000079a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     79a:	ef 92       	push	r14
     79c:	ff 92       	push	r15
     79e:	1f 93       	push	r17
     7a0:	cf 93       	push	r28
     7a2:	df 93       	push	r29
     7a4:	1f 92       	push	r1
     7a6:	cd b7       	in	r28, 0x3d	; 61
     7a8:	de b7       	in	r29, 0x3e	; 62
     7aa:	7c 01       	movw	r14, r24
     7ac:	16 2f       	mov	r17, r22
     7ae:	dc 01       	movw	r26, r24
     7b0:	ed 91       	ld	r30, X+
     7b2:	fc 91       	ld	r31, X
     7b4:	01 90       	ld	r0, Z+
     7b6:	f0 81       	ld	r31, Z
     7b8:	e0 2d       	mov	r30, r0
     7ba:	49 83       	std	Y+1, r20	; 0x01
     7bc:	09 95       	icall
     7be:	d7 01       	movw	r26, r14
     7c0:	ed 91       	ld	r30, X+
     7c2:	fc 91       	ld	r31, X
     7c4:	04 80       	ldd	r0, Z+4	; 0x04
     7c6:	f5 81       	ldd	r31, Z+5	; 0x05
     7c8:	e0 2d       	mov	r30, r0
     7ca:	61 2f       	mov	r22, r17
     7cc:	c7 01       	movw	r24, r14
     7ce:	09 95       	icall
     7d0:	d7 01       	movw	r26, r14
     7d2:	ed 91       	ld	r30, X+
     7d4:	fc 91       	ld	r31, X
     7d6:	04 80       	ldd	r0, Z+4	; 0x04
     7d8:	f5 81       	ldd	r31, Z+5	; 0x05
     7da:	e0 2d       	mov	r30, r0
     7dc:	49 81       	ldd	r20, Y+1	; 0x01
     7de:	64 2f       	mov	r22, r20
     7e0:	c7 01       	movw	r24, r14
     7e2:	09 95       	icall
     7e4:	d7 01       	movw	r26, r14
     7e6:	ed 91       	ld	r30, X+
     7e8:	fc 91       	ld	r31, X
     7ea:	01 90       	ld	r0, Z+
     7ec:	f0 81       	ld	r31, Z
     7ee:	e0 2d       	mov	r30, r0
     7f0:	c7 01       	movw	r24, r14
     7f2:	09 95       	icall
     7f4:	d7 01       	movw	r26, r14
     7f6:	ed 91       	ld	r30, X+
     7f8:	fc 91       	ld	r31, X
     7fa:	61 2f       	mov	r22, r17
     7fc:	61 60       	ori	r22, 0x01	; 1
     7fe:	04 80       	ldd	r0, Z+4	; 0x04
     800:	f5 81       	ldd	r31, Z+5	; 0x05
     802:	e0 2d       	mov	r30, r0
     804:	c7 01       	movw	r24, r14
     806:	09 95       	icall
     808:	d7 01       	movw	r26, r14
     80a:	ed 91       	ld	r30, X+
     80c:	fc 91       	ld	r31, X
     80e:	06 80       	ldd	r0, Z+6	; 0x06
     810:	f7 81       	ldd	r31, Z+7	; 0x07
     812:	e0 2d       	mov	r30, r0
     814:	60 e0       	ldi	r22, 0x00	; 0
     816:	c7 01       	movw	r24, r14
     818:	09 95       	icall
     81a:	18 2f       	mov	r17, r24
     81c:	d7 01       	movw	r26, r14
     81e:	ed 91       	ld	r30, X+
     820:	fc 91       	ld	r31, X
     822:	02 80       	ldd	r0, Z+2	; 0x02
     824:	f3 81       	ldd	r31, Z+3	; 0x03
     826:	e0 2d       	mov	r30, r0
     828:	c7 01       	movw	r24, r14
     82a:	09 95       	icall
     82c:	81 2f       	mov	r24, r17
     82e:	0f 90       	pop	r0
     830:	df 91       	pop	r29
     832:	cf 91       	pop	r28
     834:	1f 91       	pop	r17
     836:	ff 90       	pop	r15
     838:	ef 90       	pop	r14
     83a:	08 95       	ret

0000083c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     83c:	ef 92       	push	r14
     83e:	ff 92       	push	r15
     840:	0f 93       	push	r16
     842:	1f 93       	push	r17
     844:	cf 93       	push	r28
     846:	df 93       	push	r29
     848:	1f 92       	push	r1
     84a:	cd b7       	in	r28, 0x3d	; 61
     84c:	de b7       	in	r29, 0x3e	; 62
     84e:	7c 01       	movw	r14, r24
     850:	16 2f       	mov	r17, r22
     852:	dc 01       	movw	r26, r24
     854:	ed 91       	ld	r30, X+
     856:	fc 91       	ld	r31, X
     858:	01 90       	ld	r0, Z+
     85a:	f0 81       	ld	r31, Z
     85c:	e0 2d       	mov	r30, r0
     85e:	49 83       	std	Y+1, r20	; 0x01
     860:	09 95       	icall
     862:	d7 01       	movw	r26, r14
     864:	ed 91       	ld	r30, X+
     866:	fc 91       	ld	r31, X
     868:	04 80       	ldd	r0, Z+4	; 0x04
     86a:	f5 81       	ldd	r31, Z+5	; 0x05
     86c:	e0 2d       	mov	r30, r0
     86e:	61 2f       	mov	r22, r17
     870:	c7 01       	movw	r24, r14
     872:	09 95       	icall
     874:	d7 01       	movw	r26, r14
     876:	ed 91       	ld	r30, X+
     878:	fc 91       	ld	r31, X
     87a:	04 80       	ldd	r0, Z+4	; 0x04
     87c:	f5 81       	ldd	r31, Z+5	; 0x05
     87e:	e0 2d       	mov	r30, r0
     880:	49 81       	ldd	r20, Y+1	; 0x01
     882:	64 2f       	mov	r22, r20
     884:	c7 01       	movw	r24, r14
     886:	09 95       	icall
     888:	d7 01       	movw	r26, r14
     88a:	ed 91       	ld	r30, X+
     88c:	fc 91       	ld	r31, X
     88e:	01 90       	ld	r0, Z+
     890:	f0 81       	ld	r31, Z
     892:	e0 2d       	mov	r30, r0
     894:	c7 01       	movw	r24, r14
     896:	09 95       	icall
     898:	d7 01       	movw	r26, r14
     89a:	ed 91       	ld	r30, X+
     89c:	fc 91       	ld	r31, X
     89e:	61 2f       	mov	r22, r17
     8a0:	61 60       	ori	r22, 0x01	; 1
     8a2:	04 80       	ldd	r0, Z+4	; 0x04
     8a4:	f5 81       	ldd	r31, Z+5	; 0x05
     8a6:	e0 2d       	mov	r30, r0
     8a8:	c7 01       	movw	r24, r14
     8aa:	09 95       	icall
     8ac:	d7 01       	movw	r26, r14
     8ae:	ed 91       	ld	r30, X+
     8b0:	fc 91       	ld	r31, X
     8b2:	06 80       	ldd	r0, Z+6	; 0x06
     8b4:	f7 81       	ldd	r31, Z+7	; 0x07
     8b6:	e0 2d       	mov	r30, r0
     8b8:	61 e0       	ldi	r22, 0x01	; 1
     8ba:	c7 01       	movw	r24, r14
     8bc:	09 95       	icall
     8be:	08 2f       	mov	r16, r24
     8c0:	10 e0       	ldi	r17, 0x00	; 0
     8c2:	10 2f       	mov	r17, r16
     8c4:	00 27       	eor	r16, r16
     8c6:	d7 01       	movw	r26, r14
     8c8:	ed 91       	ld	r30, X+
     8ca:	fc 91       	ld	r31, X
     8cc:	06 80       	ldd	r0, Z+6	; 0x06
     8ce:	f7 81       	ldd	r31, Z+7	; 0x07
     8d0:	e0 2d       	mov	r30, r0
     8d2:	60 e0       	ldi	r22, 0x00	; 0
     8d4:	c7 01       	movw	r24, r14
     8d6:	09 95       	icall
     8d8:	08 2b       	or	r16, r24
     8da:	d7 01       	movw	r26, r14
     8dc:	ed 91       	ld	r30, X+
     8de:	fc 91       	ld	r31, X
     8e0:	02 80       	ldd	r0, Z+2	; 0x02
     8e2:	f3 81       	ldd	r31, Z+3	; 0x03
     8e4:	e0 2d       	mov	r30, r0
     8e6:	c7 01       	movw	r24, r14
     8e8:	09 95       	icall
     8ea:	c8 01       	movw	r24, r16
     8ec:	0f 90       	pop	r0
     8ee:	df 91       	pop	r29
     8f0:	cf 91       	pop	r28
     8f2:	1f 91       	pop	r17
     8f4:	0f 91       	pop	r16
     8f6:	ff 90       	pop	r15
     8f8:	ef 90       	pop	r14
     8fa:	08 95       	ret

000008fc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     8fc:	cf 92       	push	r12
     8fe:	df 92       	push	r13
     900:	ef 92       	push	r14
     902:	ff 92       	push	r15
     904:	0f 93       	push	r16
     906:	1f 93       	push	r17
     908:	cf 93       	push	r28
     90a:	df 93       	push	r29
     90c:	00 d0       	rcall	.+0      	; 0x90e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     90e:	1f 92       	push	r1
     910:	cd b7       	in	r28, 0x3d	; 61
     912:	de b7       	in	r29, 0x3e	; 62
     914:	6c 01       	movw	r12, r24
     916:	f6 2e       	mov	r15, r22
     918:	dc 01       	movw	r26, r24
     91a:	ed 91       	ld	r30, X+
     91c:	fc 91       	ld	r31, X
     91e:	01 90       	ld	r0, Z+
     920:	f0 81       	ld	r31, Z
     922:	e0 2d       	mov	r30, r0
     924:	2a 83       	std	Y+2, r18	; 0x02
     926:	3b 83       	std	Y+3, r19	; 0x03
     928:	49 83       	std	Y+1, r20	; 0x01
     92a:	09 95       	icall
     92c:	d6 01       	movw	r26, r12
     92e:	ed 91       	ld	r30, X+
     930:	fc 91       	ld	r31, X
     932:	04 80       	ldd	r0, Z+4	; 0x04
     934:	f5 81       	ldd	r31, Z+5	; 0x05
     936:	e0 2d       	mov	r30, r0
     938:	6f 2d       	mov	r22, r15
     93a:	c6 01       	movw	r24, r12
     93c:	09 95       	icall
     93e:	d6 01       	movw	r26, r12
     940:	ed 91       	ld	r30, X+
     942:	fc 91       	ld	r31, X
     944:	04 80       	ldd	r0, Z+4	; 0x04
     946:	f5 81       	ldd	r31, Z+5	; 0x05
     948:	e0 2d       	mov	r30, r0
     94a:	49 81       	ldd	r20, Y+1	; 0x01
     94c:	64 2f       	mov	r22, r20
     94e:	c6 01       	movw	r24, r12
     950:	09 95       	icall
     952:	d6 01       	movw	r26, r12
     954:	ed 91       	ld	r30, X+
     956:	fc 91       	ld	r31, X
     958:	01 90       	ld	r0, Z+
     95a:	f0 81       	ld	r31, Z
     95c:	e0 2d       	mov	r30, r0
     95e:	c6 01       	movw	r24, r12
     960:	09 95       	icall
     962:	d6 01       	movw	r26, r12
     964:	ed 91       	ld	r30, X+
     966:	fc 91       	ld	r31, X
     968:	6f 2d       	mov	r22, r15
     96a:	61 60       	ori	r22, 0x01	; 1
     96c:	04 80       	ldd	r0, Z+4	; 0x04
     96e:	f5 81       	ldd	r31, Z+5	; 0x05
     970:	e0 2d       	mov	r30, r0
     972:	c6 01       	movw	r24, r12
     974:	09 95       	icall
     976:	2a 81       	ldd	r18, Y+2	; 0x02
     978:	e2 2e       	mov	r14, r18
     97a:	3b 81       	ldd	r19, Y+3	; 0x03
     97c:	f3 2e       	mov	r15, r19
     97e:	0e 0d       	add	r16, r14
     980:	1f 1d       	adc	r17, r15
     982:	d6 01       	movw	r26, r12
     984:	ed 91       	ld	r30, X+
     986:	fc 91       	ld	r31, X
     988:	e0 16       	cp	r14, r16
     98a:	f1 06       	cpc	r15, r17
     98c:	51 f0       	breq	.+20     	; 0x9a2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     98e:	06 80       	ldd	r0, Z+6	; 0x06
     990:	f7 81       	ldd	r31, Z+7	; 0x07
     992:	e0 2d       	mov	r30, r0
     994:	61 e0       	ldi	r22, 0x01	; 1
     996:	c6 01       	movw	r24, r12
     998:	09 95       	icall
     99a:	f7 01       	movw	r30, r14
     99c:	81 93       	st	Z+, r24
     99e:	7f 01       	movw	r14, r30
     9a0:	f0 cf       	rjmp	.-32     	; 0x982 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     9a2:	02 80       	ldd	r0, Z+2	; 0x02
     9a4:	f3 81       	ldd	r31, Z+3	; 0x03
     9a6:	e0 2d       	mov	r30, r0
     9a8:	c6 01       	movw	r24, r12
     9aa:	0f 90       	pop	r0
     9ac:	0f 90       	pop	r0
     9ae:	0f 90       	pop	r0
     9b0:	df 91       	pop	r29
     9b2:	cf 91       	pop	r28
     9b4:	1f 91       	pop	r17
     9b6:	0f 91       	pop	r16
     9b8:	ff 90       	pop	r15
     9ba:	ef 90       	pop	r14
     9bc:	df 90       	pop	r13
     9be:	cf 90       	pop	r12
     9c0:	09 94       	ijmp

000009c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     9c2:	88 23       	and	r24, r24
     9c4:	21 f0       	breq	.+8      	; 0x9ce <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     9c6:	bf 98       	cbi	0x17, 7	; 23
     9c8:	82 30       	cpi	r24, 0x02	; 2
     9ca:	19 f0       	breq	.+6      	; 0x9d2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     9cc:	08 95       	ret
     9ce:	bf 9a       	sbi	0x17, 7	; 23
     9d0:	08 95       	ret
     9d2:	c7 9a       	sbi	0x18, 7	; 24
     9d4:	08 95       	ret

000009d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     9d6:	00 00       	nop
     9d8:	00 00       	nop
     9da:	08 95       	ret

000009dc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     9dc:	1f 93       	push	r17
     9de:	cf 93       	push	r28
     9e0:	df 93       	push	r29
     9e2:	16 2f       	mov	r17, r22
     9e4:	bd 98       	cbi	0x17, 5	; 23
     9e6:	80 e0       	ldi	r24, 0x00	; 0
     9e8:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9ec:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9f0:	d8 e0       	ldi	r29, 0x08	; 8
     9f2:	c0 e0       	ldi	r28, 0x00	; 0
     9f4:	cc 0f       	add	r28, r28
     9f6:	81 e0       	ldi	r24, 0x01	; 1
     9f8:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9fc:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a00:	b5 99       	sbic	0x16, 5	; 22
     a02:	c1 60       	ori	r28, 0x01	; 1
     a04:	80 e0       	ldi	r24, 0x00	; 0
     a06:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a0a:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a0e:	d1 50       	subi	r29, 0x01	; 1
     a10:	89 f7       	brne	.-30     	; 0x9f4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
     a12:	11 23       	and	r17, r17
     a14:	11 f0       	breq	.+4      	; 0xa1a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
     a16:	bd 9a       	sbi	0x17, 5	; 23
     a18:	01 c0       	rjmp	.+2      	; 0xa1c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
     a1a:	bd 98       	cbi	0x17, 5	; 23
     a1c:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a20:	81 e0       	ldi	r24, 0x01	; 1
     a22:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a26:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a2a:	80 e0       	ldi	r24, 0x00	; 0
     a2c:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a30:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a34:	bd 98       	cbi	0x17, 5	; 23
     a36:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a3a:	8c 2f       	mov	r24, r28
     a3c:	df 91       	pop	r29
     a3e:	cf 91       	pop	r28
     a40:	1f 91       	pop	r17
     a42:	08 95       	ret

00000a44 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
     a44:	cf 93       	push	r28
     a46:	df 93       	push	r29
     a48:	d6 2f       	mov	r29, r22
     a4a:	c8 e0       	ldi	r28, 0x08	; 8
     a4c:	80 e0       	ldi	r24, 0x00	; 0
     a4e:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a52:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a56:	d7 ff       	sbrs	r29, 7
     a58:	02 c0       	rjmp	.+4      	; 0xa5e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
     a5a:	bd 98       	cbi	0x17, 5	; 23
     a5c:	01 c0       	rjmp	.+2      	; 0xa60 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
     a5e:	bd 9a       	sbi	0x17, 5	; 23
     a60:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a64:	81 e0       	ldi	r24, 0x01	; 1
     a66:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a6a:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a6e:	dd 0f       	add	r29, r29
     a70:	c1 50       	subi	r28, 0x01	; 1
     a72:	61 f7       	brne	.-40     	; 0xa4c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
     a74:	80 e0       	ldi	r24, 0x00	; 0
     a76:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a7a:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a7e:	bd 98       	cbi	0x17, 5	; 23
     a80:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a84:	81 e0       	ldi	r24, 0x01	; 1
     a86:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a8a:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a8e:	c6 b3       	in	r28, 0x16	; 22
     a90:	80 e0       	ldi	r24, 0x00	; 0
     a92:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a96:	0e 94 eb 04 	call	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a9a:	c5 fb       	bst	r28, 5
     a9c:	cc 27       	eor	r28, r28
     a9e:	c0 f9       	bld	r28, 0
     aa0:	81 e0       	ldi	r24, 0x01	; 1
     aa2:	8c 27       	eor	r24, r28
     aa4:	df 91       	pop	r29
     aa6:	cf 91       	pop	r28
     aa8:	08 95       	ret

00000aaa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
     aaa:	81 e0       	ldi	r24, 0x01	; 1
     aac:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ab0:	bd 98       	cbi	0x17, 5	; 23
     ab2:	81 e0       	ldi	r24, 0x01	; 1
     ab4:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ab8:	bd 9a       	sbi	0x17, 5	; 23
     aba:	80 e0       	ldi	r24, 0x00	; 0
     abc:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ac0:	bd 98       	cbi	0x17, 5	; 23
     ac2:	0c 94 eb 04 	jmp	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000ac6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
     ac6:	80 e0       	ldi	r24, 0x00	; 0
     ac8:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     acc:	bd 9a       	sbi	0x17, 5	; 23
     ace:	81 e0       	ldi	r24, 0x01	; 1
     ad0:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ad4:	bd 9a       	sbi	0x17, 5	; 23
     ad6:	81 e0       	ldi	r24, 0x01	; 1
     ad8:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     adc:	bd 98       	cbi	0x17, 5	; 23
     ade:	0c 94 eb 04 	jmp	0x9d6	; 0x9d6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000ae2 <_GLOBAL__sub_I_i2c>:
     ae2:	8e e7       	ldi	r24, 0x7E	; 126
     ae4:	90 e0       	ldi	r25, 0x00	; 0
     ae6:	90 93 ad 00 	sts	0x00AD, r25
     aea:	80 93 ac 00 	sts	0x00AC, r24
     aee:	bd 98       	cbi	0x17, 5	; 23
     af0:	81 e0       	ldi	r24, 0x01	; 1
     af2:	0e 94 e1 04 	call	0x9c2	; 0x9c2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     af6:	c5 98       	cbi	0x18, 5	; 24
     af8:	c7 98       	cbi	0x18, 7	; 24
     afa:	08 95       	ret

00000afc <_ZdlPv>:
     afc:	0c 94 c1 0b 	jmp	0x1782	; 0x1782 <free>

00000b00 <_ZN4GyroC1Ev>:
     b00:	08 95       	ret

00000b02 <_ZN4GyroD1Ev>:
     b02:	08 95       	ret

00000b04 <_ZN4Gyro4readEb>:
     b04:	4f 92       	push	r4
     b06:	5f 92       	push	r5
     b08:	6f 92       	push	r6
     b0a:	7f 92       	push	r7
     b0c:	8f 92       	push	r8
     b0e:	9f 92       	push	r9
     b10:	af 92       	push	r10
     b12:	bf 92       	push	r11
     b14:	cf 92       	push	r12
     b16:	df 92       	push	r13
     b18:	ef 92       	push	r14
     b1a:	ff 92       	push	r15
     b1c:	0f 93       	push	r16
     b1e:	1f 93       	push	r17
     b20:	cf 93       	push	r28
     b22:	df 93       	push	r29
     b24:	ec 01       	movw	r28, r24
     b26:	f6 2e       	mov	r15, r22
     b28:	88 ad       	ldd	r24, Y+56	; 0x38
     b2a:	99 ad       	ldd	r25, Y+57	; 0x39
     b2c:	dc 01       	movw	r26, r24
     b2e:	ed 91       	ld	r30, X+
     b30:	fc 91       	ld	r31, X
     b32:	06 84       	ldd	r0, Z+14	; 0x0e
     b34:	f7 85       	ldd	r31, Z+15	; 0x0f
     b36:	e0 2d       	mov	r30, r0
     b38:	4f e0       	ldi	r20, 0x0F	; 15
     b3a:	64 ed       	ldi	r22, 0xD4	; 212
     b3c:	09 95       	icall
     b3e:	88 36       	cpi	r24, 0x68	; 104
     b40:	49 f4       	brne	.+18     	; 0xb54 <_ZN4Gyro4readEb+0x50>
     b42:	81 e0       	ldi	r24, 0x01	; 1
     b44:	90 e0       	ldi	r25, 0x00	; 0
     b46:	a0 e0       	ldi	r26, 0x00	; 0
     b48:	b0 e0       	ldi	r27, 0x00	; 0
     b4a:	88 ab       	std	Y+48, r24	; 0x30
     b4c:	99 ab       	std	Y+49, r25	; 0x31
     b4e:	aa ab       	std	Y+50, r26	; 0x32
     b50:	bb ab       	std	Y+51, r27	; 0x33
     b52:	04 c0       	rjmp	.+8      	; 0xb5c <_ZN4Gyro4readEb+0x58>
     b54:	18 aa       	std	Y+48, r1	; 0x30
     b56:	19 aa       	std	Y+49, r1	; 0x31
     b58:	1a aa       	std	Y+50, r1	; 0x32
     b5a:	1b aa       	std	Y+51, r1	; 0x33
     b5c:	88 ad       	ldd	r24, Y+56	; 0x38
     b5e:	99 ad       	ldd	r25, Y+57	; 0x39
     b60:	dc 01       	movw	r26, r24
     b62:	ed 91       	ld	r30, X+
     b64:	fc 91       	ld	r31, X
     b66:	06 84       	ldd	r0, Z+14	; 0x0e
     b68:	f7 85       	ldd	r31, Z+15	; 0x0f
     b6a:	e0 2d       	mov	r30, r0
     b6c:	49 e1       	ldi	r20, 0x19	; 25
     b6e:	64 ed       	ldi	r22, 0xD4	; 212
     b70:	09 95       	icall
     b72:	a8 2e       	mov	r10, r24
     b74:	b1 2c       	mov	r11, r1
     b76:	ba 2c       	mov	r11, r10
     b78:	aa 24       	eor	r10, r10
     b7a:	88 ad       	ldd	r24, Y+56	; 0x38
     b7c:	99 ad       	ldd	r25, Y+57	; 0x39
     b7e:	dc 01       	movw	r26, r24
     b80:	ed 91       	ld	r30, X+
     b82:	fc 91       	ld	r31, X
     b84:	06 84       	ldd	r0, Z+14	; 0x0e
     b86:	f7 85       	ldd	r31, Z+15	; 0x0f
     b88:	e0 2d       	mov	r30, r0
     b8a:	48 e1       	ldi	r20, 0x18	; 24
     b8c:	64 ed       	ldi	r22, 0xD4	; 212
     b8e:	09 95       	icall
     b90:	a8 2a       	or	r10, r24
     b92:	88 ad       	ldd	r24, Y+56	; 0x38
     b94:	99 ad       	ldd	r25, Y+57	; 0x39
     b96:	dc 01       	movw	r26, r24
     b98:	ed 91       	ld	r30, X+
     b9a:	fc 91       	ld	r31, X
     b9c:	06 84       	ldd	r0, Z+14	; 0x0e
     b9e:	f7 85       	ldd	r31, Z+15	; 0x0f
     ba0:	e0 2d       	mov	r30, r0
     ba2:	4b e1       	ldi	r20, 0x1B	; 27
     ba4:	64 ed       	ldi	r22, 0xD4	; 212
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
     bc0:	4a e1       	ldi	r20, 0x1A	; 26
     bc2:	64 ed       	ldi	r22, 0xD4	; 212
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
     bd8:	4d e1       	ldi	r20, 0x1D	; 29
     bda:	64 ed       	ldi	r22, 0xD4	; 212
     bdc:	09 95       	icall
     bde:	c8 2e       	mov	r12, r24
     be0:	d1 2c       	mov	r13, r1
     be2:	dc 2c       	mov	r13, r12
     be4:	cc 24       	eor	r12, r12
     be6:	88 ad       	ldd	r24, Y+56	; 0x38
     be8:	99 ad       	ldd	r25, Y+57	; 0x39
     bea:	dc 01       	movw	r26, r24
     bec:	ed 91       	ld	r30, X+
     bee:	fc 91       	ld	r31, X
     bf0:	06 84       	ldd	r0, Z+14	; 0x0e
     bf2:	f7 85       	ldd	r31, Z+15	; 0x0f
     bf4:	e0 2d       	mov	r30, r0
     bf6:	4c e1       	ldi	r20, 0x1C	; 28
     bf8:	64 ed       	ldi	r22, 0xD4	; 212
     bfa:	09 95       	icall
     bfc:	c8 2a       	or	r12, r24
     bfe:	c5 01       	movw	r24, r10
     c00:	bb 0c       	add	r11, r11
     c02:	aa 0b       	sbc	r26, r26
     c04:	bb 0b       	sbc	r27, r27
     c06:	01 2e       	mov	r0, r17
     c08:	00 0c       	add	r0, r0
     c0a:	22 0b       	sbc	r18, r18
     c0c:	33 0b       	sbc	r19, r19
     c0e:	46 01       	movw	r8, r12
     c10:	dd 0c       	add	r13, r13
     c12:	aa 08       	sbc	r10, r10
     c14:	bb 08       	sbc	r11, r11
     c16:	ff 20       	and	r15, r15
     c18:	21 f1       	breq	.+72     	; 0xc62 <_ZN4Gyro4readEb+0x15e>
     c1a:	cc a0       	ldd	r12, Y+36	; 0x24
     c1c:	dd a0       	ldd	r13, Y+37	; 0x25
     c1e:	ee a0       	ldd	r14, Y+38	; 0x26
     c20:	ff a0       	ldd	r15, Y+39	; 0x27
     c22:	c8 0e       	add	r12, r24
     c24:	d9 1e       	adc	r13, r25
     c26:	ea 1e       	adc	r14, r26
     c28:	fb 1e       	adc	r15, r27
     c2a:	cc a2       	std	Y+36, r12	; 0x24
     c2c:	dd a2       	std	Y+37, r13	; 0x25
     c2e:	ee a2       	std	Y+38, r14	; 0x26
     c30:	ff a2       	std	Y+39, r15	; 0x27
     c32:	c8 a4       	ldd	r12, Y+40	; 0x28
     c34:	d9 a4       	ldd	r13, Y+41	; 0x29
     c36:	ea a4       	ldd	r14, Y+42	; 0x2a
     c38:	fb a4       	ldd	r15, Y+43	; 0x2b
     c3a:	c0 0e       	add	r12, r16
     c3c:	d1 1e       	adc	r13, r17
     c3e:	e2 1e       	adc	r14, r18
     c40:	f3 1e       	adc	r15, r19
     c42:	c8 a6       	std	Y+40, r12	; 0x28
     c44:	d9 a6       	std	Y+41, r13	; 0x29
     c46:	ea a6       	std	Y+42, r14	; 0x2a
     c48:	fb a6       	std	Y+43, r15	; 0x2b
     c4a:	cc a4       	ldd	r12, Y+44	; 0x2c
     c4c:	dd a4       	ldd	r13, Y+45	; 0x2d
     c4e:	ee a4       	ldd	r14, Y+46	; 0x2e
     c50:	ff a4       	ldd	r15, Y+47	; 0x2f
     c52:	c8 0c       	add	r12, r8
     c54:	d9 1c       	adc	r13, r9
     c56:	ea 1c       	adc	r14, r10
     c58:	fb 1c       	adc	r15, r11
     c5a:	cc a6       	std	Y+44, r12	; 0x2c
     c5c:	dd a6       	std	Y+45, r13	; 0x2d
     c5e:	ee a6       	std	Y+46, r14	; 0x2e
     c60:	ff a6       	std	Y+47, r15	; 0x2f
     c62:	cc a0       	ldd	r12, Y+36	; 0x24
     c64:	dd a0       	ldd	r13, Y+37	; 0x25
     c66:	ee a0       	ldd	r14, Y+38	; 0x26
     c68:	ff a0       	ldd	r15, Y+39	; 0x27
     c6a:	bc 01       	movw	r22, r24
     c6c:	cd 01       	movw	r24, r26
     c6e:	6c 19       	sub	r22, r12
     c70:	7d 09       	sbc	r23, r13
     c72:	8e 09       	sbc	r24, r14
     c74:	9f 09       	sbc	r25, r15
     c76:	6c 87       	std	Y+12, r22	; 0x0c
     c78:	7d 87       	std	Y+13, r23	; 0x0d
     c7a:	8e 87       	std	Y+14, r24	; 0x0e
     c7c:	9f 87       	std	Y+15, r25	; 0x0f
     c7e:	c8 a4       	ldd	r12, Y+40	; 0x28
     c80:	d9 a4       	ldd	r13, Y+41	; 0x29
     c82:	ea a4       	ldd	r14, Y+42	; 0x2a
     c84:	fb a4       	ldd	r15, Y+43	; 0x2b
     c86:	28 01       	movw	r4, r16
     c88:	39 01       	movw	r6, r18
     c8a:	4c 18       	sub	r4, r12
     c8c:	5d 08       	sbc	r5, r13
     c8e:	6e 08       	sbc	r6, r14
     c90:	7f 08       	sbc	r7, r15
     c92:	48 8a       	std	Y+16, r4	; 0x10
     c94:	59 8a       	std	Y+17, r5	; 0x11
     c96:	6a 8a       	std	Y+18, r6	; 0x12
     c98:	7b 8a       	std	Y+19, r7	; 0x13
     c9a:	0c a5       	ldd	r16, Y+44	; 0x2c
     c9c:	1d a5       	ldd	r17, Y+45	; 0x2d
     c9e:	2e a5       	ldd	r18, Y+46	; 0x2e
     ca0:	3f a5       	ldd	r19, Y+47	; 0x2f
     ca2:	75 01       	movw	r14, r10
     ca4:	64 01       	movw	r12, r8
     ca6:	c0 1a       	sub	r12, r16
     ca8:	d1 0a       	sbc	r13, r17
     caa:	e2 0a       	sbc	r14, r18
     cac:	f3 0a       	sbc	r15, r19
     cae:	cc 8a       	std	Y+20, r12	; 0x14
     cb0:	dd 8a       	std	Y+21, r13	; 0x15
     cb2:	ee 8a       	std	Y+22, r14	; 0x16
     cb4:	ff 8a       	std	Y+23, r15	; 0x17
     cb6:	29 e1       	ldi	r18, 0x19	; 25
     cb8:	82 2e       	mov	r8, r18
     cba:	91 2c       	mov	r9, r1
     cbc:	a1 2c       	mov	r10, r1
     cbe:	b1 2c       	mov	r11, r1
     cc0:	a5 01       	movw	r20, r10
     cc2:	94 01       	movw	r18, r8
     cc4:	0e 94 3b 09 	call	0x1276	; 0x1276 <__divmodsi4>
     cc8:	88 8d       	ldd	r24, Y+24	; 0x18
     cca:	99 8d       	ldd	r25, Y+25	; 0x19
     ccc:	aa 8d       	ldd	r26, Y+26	; 0x1a
     cce:	bb 8d       	ldd	r27, Y+27	; 0x1b
     cd0:	82 0f       	add	r24, r18
     cd2:	93 1f       	adc	r25, r19
     cd4:	a4 1f       	adc	r26, r20
     cd6:	b5 1f       	adc	r27, r21
     cd8:	88 8f       	std	Y+24, r24	; 0x18
     cda:	99 8f       	std	Y+25, r25	; 0x19
     cdc:	aa 8f       	std	Y+26, r26	; 0x1a
     cde:	bb 8f       	std	Y+27, r27	; 0x1b
     ce0:	c3 01       	movw	r24, r6
     ce2:	b2 01       	movw	r22, r4
     ce4:	a5 01       	movw	r20, r10
     ce6:	94 01       	movw	r18, r8
     ce8:	0e 94 3b 09 	call	0x1276	; 0x1276 <__divmodsi4>
     cec:	8c 8d       	ldd	r24, Y+28	; 0x1c
     cee:	9d 8d       	ldd	r25, Y+29	; 0x1d
     cf0:	ae 8d       	ldd	r26, Y+30	; 0x1e
     cf2:	bf 8d       	ldd	r27, Y+31	; 0x1f
     cf4:	82 0f       	add	r24, r18
     cf6:	93 1f       	adc	r25, r19
     cf8:	a4 1f       	adc	r26, r20
     cfa:	b5 1f       	adc	r27, r21
     cfc:	8c 8f       	std	Y+28, r24	; 0x1c
     cfe:	9d 8f       	std	Y+29, r25	; 0x1d
     d00:	ae 8f       	std	Y+30, r26	; 0x1e
     d02:	bf 8f       	std	Y+31, r27	; 0x1f
     d04:	c7 01       	movw	r24, r14
     d06:	b6 01       	movw	r22, r12
     d08:	a5 01       	movw	r20, r10
     d0a:	94 01       	movw	r18, r8
     d0c:	0e 94 3b 09 	call	0x1276	; 0x1276 <__divmodsi4>
     d10:	88 a1       	ldd	r24, Y+32	; 0x20
     d12:	99 a1       	ldd	r25, Y+33	; 0x21
     d14:	aa a1       	ldd	r26, Y+34	; 0x22
     d16:	bb a1       	ldd	r27, Y+35	; 0x23
     d18:	82 0f       	add	r24, r18
     d1a:	93 1f       	adc	r25, r19
     d1c:	a4 1f       	adc	r26, r20
     d1e:	b5 1f       	adc	r27, r21
     d20:	88 a3       	std	Y+32, r24	; 0x20
     d22:	99 a3       	std	Y+33, r25	; 0x21
     d24:	aa a3       	std	Y+34, r26	; 0x22
     d26:	bb a3       	std	Y+35, r27	; 0x23
     d28:	88 ad       	ldd	r24, Y+56	; 0x38
     d2a:	99 ad       	ldd	r25, Y+57	; 0x39
     d2c:	dc 01       	movw	r26, r24
     d2e:	ed 91       	ld	r30, X+
     d30:	fc 91       	ld	r31, X
     d32:	06 84       	ldd	r0, Z+14	; 0x0e
     d34:	f7 85       	ldd	r31, Z+15	; 0x0f
     d36:	e0 2d       	mov	r30, r0
     d38:	49 e2       	ldi	r20, 0x29	; 41
     d3a:	64 ed       	ldi	r22, 0xD4	; 212
     d3c:	09 95       	icall
     d3e:	08 2f       	mov	r16, r24
     d40:	10 e0       	ldi	r17, 0x00	; 0
     d42:	10 2f       	mov	r17, r16
     d44:	00 27       	eor	r16, r16
     d46:	88 ad       	ldd	r24, Y+56	; 0x38
     d48:	99 ad       	ldd	r25, Y+57	; 0x39
     d4a:	dc 01       	movw	r26, r24
     d4c:	ed 91       	ld	r30, X+
     d4e:	fc 91       	ld	r31, X
     d50:	06 84       	ldd	r0, Z+14	; 0x0e
     d52:	f7 85       	ldd	r31, Z+15	; 0x0f
     d54:	e0 2d       	mov	r30, r0
     d56:	48 e2       	ldi	r20, 0x28	; 40
     d58:	64 ed       	ldi	r22, 0xD4	; 212
     d5a:	09 95       	icall
     d5c:	68 01       	movw	r12, r16
     d5e:	c8 2a       	or	r12, r24
     d60:	88 ad       	ldd	r24, Y+56	; 0x38
     d62:	99 ad       	ldd	r25, Y+57	; 0x39
     d64:	dc 01       	movw	r26, r24
     d66:	ed 91       	ld	r30, X+
     d68:	fc 91       	ld	r31, X
     d6a:	06 84       	ldd	r0, Z+14	; 0x0e
     d6c:	f7 85       	ldd	r31, Z+15	; 0x0f
     d6e:	e0 2d       	mov	r30, r0
     d70:	4b e2       	ldi	r20, 0x2B	; 43
     d72:	64 ed       	ldi	r22, 0xD4	; 212
     d74:	09 95       	icall
     d76:	08 2f       	mov	r16, r24
     d78:	10 e0       	ldi	r17, 0x00	; 0
     d7a:	10 2f       	mov	r17, r16
     d7c:	00 27       	eor	r16, r16
     d7e:	88 ad       	ldd	r24, Y+56	; 0x38
     d80:	99 ad       	ldd	r25, Y+57	; 0x39
     d82:	dc 01       	movw	r26, r24
     d84:	ed 91       	ld	r30, X+
     d86:	fc 91       	ld	r31, X
     d88:	06 84       	ldd	r0, Z+14	; 0x0e
     d8a:	f7 85       	ldd	r31, Z+15	; 0x0f
     d8c:	e0 2d       	mov	r30, r0
     d8e:	4a e2       	ldi	r20, 0x2A	; 42
     d90:	64 ed       	ldi	r22, 0xD4	; 212
     d92:	09 95       	icall
     d94:	08 2b       	or	r16, r24
     d96:	88 ad       	ldd	r24, Y+56	; 0x38
     d98:	99 ad       	ldd	r25, Y+57	; 0x39
     d9a:	dc 01       	movw	r26, r24
     d9c:	ed 91       	ld	r30, X+
     d9e:	fc 91       	ld	r31, X
     da0:	06 84       	ldd	r0, Z+14	; 0x0e
     da2:	f7 85       	ldd	r31, Z+15	; 0x0f
     da4:	e0 2d       	mov	r30, r0
     da6:	4d e2       	ldi	r20, 0x2D	; 45
     da8:	64 ed       	ldi	r22, 0xD4	; 212
     daa:	09 95       	icall
     dac:	90 e0       	ldi	r25, 0x00	; 0
     dae:	f8 2e       	mov	r15, r24
     db0:	ee 24       	eor	r14, r14
     db2:	88 ad       	ldd	r24, Y+56	; 0x38
     db4:	99 ad       	ldd	r25, Y+57	; 0x39
     db6:	dc 01       	movw	r26, r24
     db8:	ed 91       	ld	r30, X+
     dba:	fc 91       	ld	r31, X
     dbc:	06 84       	ldd	r0, Z+14	; 0x0e
     dbe:	f7 85       	ldd	r31, Z+15	; 0x0f
     dc0:	e0 2d       	mov	r30, r0
     dc2:	4c e2       	ldi	r20, 0x2C	; 44
     dc4:	64 ed       	ldi	r22, 0xD4	; 212
     dc6:	09 95       	icall
     dc8:	a6 01       	movw	r20, r12
     dca:	dd 0c       	add	r13, r13
     dcc:	66 0b       	sbc	r22, r22
     dce:	77 0b       	sbc	r23, r23
     dd0:	48 83       	st	Y, r20
     dd2:	59 83       	std	Y+1, r21	; 0x01
     dd4:	6a 83       	std	Y+2, r22	; 0x02
     dd6:	7b 83       	std	Y+3, r23	; 0x03
     dd8:	01 2e       	mov	r0, r17
     dda:	00 0c       	add	r0, r0
     ddc:	22 0b       	sbc	r18, r18
     dde:	33 0b       	sbc	r19, r19
     de0:	0c 83       	std	Y+4, r16	; 0x04
     de2:	1d 83       	std	Y+5, r17	; 0x05
     de4:	2e 83       	std	Y+6, r18	; 0x06
     de6:	3f 83       	std	Y+7, r19	; 0x07
     de8:	97 01       	movw	r18, r14
     dea:	28 2b       	or	r18, r24
     dec:	c9 01       	movw	r24, r18
     dee:	09 2e       	mov	r0, r25
     df0:	00 0c       	add	r0, r0
     df2:	aa 0b       	sbc	r26, r26
     df4:	bb 0b       	sbc	r27, r27
     df6:	88 87       	std	Y+8, r24	; 0x08
     df8:	99 87       	std	Y+9, r25	; 0x09
     dfa:	aa 87       	std	Y+10, r26	; 0x0a
     dfc:	bb 87       	std	Y+11, r27	; 0x0b
     dfe:	df 91       	pop	r29
     e00:	cf 91       	pop	r28
     e02:	1f 91       	pop	r17
     e04:	0f 91       	pop	r16
     e06:	ff 90       	pop	r15
     e08:	ef 90       	pop	r14
     e0a:	df 90       	pop	r13
     e0c:	cf 90       	pop	r12
     e0e:	bf 90       	pop	r11
     e10:	af 90       	pop	r10
     e12:	9f 90       	pop	r9
     e14:	8f 90       	pop	r8
     e16:	7f 90       	pop	r7
     e18:	6f 90       	pop	r6
     e1a:	5f 90       	pop	r5
     e1c:	4f 90       	pop	r4
     e1e:	08 95       	ret

00000e20 <_ZN4Gyro11delay_loopsEm>:
     e20:	41 50       	subi	r20, 0x01	; 1
     e22:	51 09       	sbc	r21, r1
     e24:	61 09       	sbc	r22, r1
     e26:	71 09       	sbc	r23, r1
     e28:	10 f0       	brcs	.+4      	; 0xe2e <_ZN4Gyro11delay_loopsEm+0xe>
     e2a:	00 00       	nop
     e2c:	f9 cf       	rjmp	.-14     	; 0xe20 <_ZN4Gyro11delay_loopsEm>
     e2e:	08 95       	ret

00000e30 <_ZN4Gyro4initEP13I2C_Interface>:
     e30:	cf 92       	push	r12
     e32:	df 92       	push	r13
     e34:	ef 92       	push	r14
     e36:	ff 92       	push	r15
     e38:	cf 93       	push	r28
     e3a:	df 93       	push	r29
     e3c:	ec 01       	movw	r28, r24
     e3e:	79 af       	std	Y+57, r23	; 0x39
     e40:	68 af       	std	Y+56, r22	; 0x38
     e42:	1c 86       	std	Y+12, r1	; 0x0c
     e44:	1d 86       	std	Y+13, r1	; 0x0d
     e46:	1e 86       	std	Y+14, r1	; 0x0e
     e48:	1f 86       	std	Y+15, r1	; 0x0f
     e4a:	18 8a       	std	Y+16, r1	; 0x10
     e4c:	19 8a       	std	Y+17, r1	; 0x11
     e4e:	1a 8a       	std	Y+18, r1	; 0x12
     e50:	1b 8a       	std	Y+19, r1	; 0x13
     e52:	1c 8a       	std	Y+20, r1	; 0x14
     e54:	1d 8a       	std	Y+21, r1	; 0x15
     e56:	1e 8a       	std	Y+22, r1	; 0x16
     e58:	1f 8a       	std	Y+23, r1	; 0x17
     e5a:	1c a2       	std	Y+36, r1	; 0x24
     e5c:	1d a2       	std	Y+37, r1	; 0x25
     e5e:	1e a2       	std	Y+38, r1	; 0x26
     e60:	1f a2       	std	Y+39, r1	; 0x27
     e62:	18 a6       	std	Y+40, r1	; 0x28
     e64:	19 a6       	std	Y+41, r1	; 0x29
     e66:	1a a6       	std	Y+42, r1	; 0x2a
     e68:	1b a6       	std	Y+43, r1	; 0x2b
     e6a:	1c a6       	std	Y+44, r1	; 0x2c
     e6c:	1d a6       	std	Y+45, r1	; 0x2d
     e6e:	1e a6       	std	Y+46, r1	; 0x2e
     e70:	1f a6       	std	Y+47, r1	; 0x2f
     e72:	18 8e       	std	Y+24, r1	; 0x18
     e74:	19 8e       	std	Y+25, r1	; 0x19
     e76:	1a 8e       	std	Y+26, r1	; 0x1a
     e78:	1b 8e       	std	Y+27, r1	; 0x1b
     e7a:	1c 8e       	std	Y+28, r1	; 0x1c
     e7c:	1d 8e       	std	Y+29, r1	; 0x1d
     e7e:	1e 8e       	std	Y+30, r1	; 0x1e
     e80:	1f 8e       	std	Y+31, r1	; 0x1f
     e82:	18 a2       	std	Y+32, r1	; 0x20
     e84:	19 a2       	std	Y+33, r1	; 0x21
     e86:	1a a2       	std	Y+34, r1	; 0x22
     e88:	1b a2       	std	Y+35, r1	; 0x23
     e8a:	40 e1       	ldi	r20, 0x10	; 16
     e8c:	57 e2       	ldi	r21, 0x27	; 39
     e8e:	60 e0       	ldi	r22, 0x00	; 0
     e90:	70 e0       	ldi	r23, 0x00	; 0
     e92:	0e 94 10 07 	call	0xe20	; 0xe20 <_ZN4Gyro11delay_loopsEm>
     e96:	18 aa       	std	Y+48, r1	; 0x30
     e98:	19 aa       	std	Y+49, r1	; 0x31
     e9a:	1a aa       	std	Y+50, r1	; 0x32
     e9c:	1b aa       	std	Y+51, r1	; 0x33
     e9e:	88 ad       	ldd	r24, Y+56	; 0x38
     ea0:	99 ad       	ldd	r25, Y+57	; 0x39
     ea2:	dc 01       	movw	r26, r24
     ea4:	ed 91       	ld	r30, X+
     ea6:	fc 91       	ld	r31, X
     ea8:	06 84       	ldd	r0, Z+14	; 0x0e
     eaa:	f7 85       	ldd	r31, Z+15	; 0x0f
     eac:	e0 2d       	mov	r30, r0
     eae:	4f e0       	ldi	r20, 0x0F	; 15
     eb0:	64 ed       	ldi	r22, 0xD4	; 212
     eb2:	09 95       	icall
     eb4:	88 36       	cpi	r24, 0x68	; 104
     eb6:	41 f4       	brne	.+16     	; 0xec8 <_ZN4Gyro4initEP13I2C_Interface+0x98>
     eb8:	81 e0       	ldi	r24, 0x01	; 1
     eba:	90 e0       	ldi	r25, 0x00	; 0
     ebc:	a0 e0       	ldi	r26, 0x00	; 0
     ebe:	b0 e0       	ldi	r27, 0x00	; 0
     ec0:	88 ab       	std	Y+48, r24	; 0x30
     ec2:	99 ab       	std	Y+49, r25	; 0x31
     ec4:	aa ab       	std	Y+50, r26	; 0x32
     ec6:	bb ab       	std	Y+51, r27	; 0x33
     ec8:	88 ad       	ldd	r24, Y+56	; 0x38
     eca:	99 ad       	ldd	r25, Y+57	; 0x39
     ecc:	dc 01       	movw	r26, r24
     ece:	ed 91       	ld	r30, X+
     ed0:	fc 91       	ld	r31, X
     ed2:	00 84       	ldd	r0, Z+8	; 0x08
     ed4:	f1 85       	ldd	r31, Z+9	; 0x09
     ed6:	e0 2d       	mov	r30, r0
     ed8:	28 ea       	ldi	r18, 0xA8	; 168
     eda:	40 e1       	ldi	r20, 0x10	; 16
     edc:	64 ed       	ldi	r22, 0xD4	; 212
     ede:	09 95       	icall
     ee0:	88 ad       	ldd	r24, Y+56	; 0x38
     ee2:	99 ad       	ldd	r25, Y+57	; 0x39
     ee4:	dc 01       	movw	r26, r24
     ee6:	ed 91       	ld	r30, X+
     ee8:	fc 91       	ld	r31, X
     eea:	00 84       	ldd	r0, Z+8	; 0x08
     eec:	f1 85       	ldd	r31, Z+9	; 0x09
     eee:	e0 2d       	mov	r30, r0
     ef0:	28 e3       	ldi	r18, 0x38	; 56
     ef2:	4e e1       	ldi	r20, 0x1E	; 30
     ef4:	64 ed       	ldi	r22, 0xD4	; 212
     ef6:	09 95       	icall
     ef8:	88 ad       	ldd	r24, Y+56	; 0x38
     efa:	99 ad       	ldd	r25, Y+57	; 0x39
     efc:	dc 01       	movw	r26, r24
     efe:	ed 91       	ld	r30, X+
     f00:	fc 91       	ld	r31, X
     f02:	00 84       	ldd	r0, Z+8	; 0x08
     f04:	f1 85       	ldd	r31, Z+9	; 0x09
     f06:	e0 2d       	mov	r30, r0
     f08:	20 e0       	ldi	r18, 0x00	; 0
     f0a:	4e e2       	ldi	r20, 0x2E	; 46
     f0c:	64 ed       	ldi	r22, 0xD4	; 212
     f0e:	09 95       	icall
     f10:	88 ad       	ldd	r24, Y+56	; 0x38
     f12:	99 ad       	ldd	r25, Y+57	; 0x39
     f14:	dc 01       	movw	r26, r24
     f16:	ed 91       	ld	r30, X+
     f18:	fc 91       	ld	r31, X
     f1a:	00 84       	ldd	r0, Z+8	; 0x08
     f1c:	f1 85       	ldd	r31, Z+9	; 0x09
     f1e:	e0 2d       	mov	r30, r0
     f20:	20 e0       	ldi	r18, 0x00	; 0
     f22:	42 e1       	ldi	r20, 0x12	; 18
     f24:	64 ed       	ldi	r22, 0xD4	; 212
     f26:	09 95       	icall
     f28:	88 ad       	ldd	r24, Y+56	; 0x38
     f2a:	99 ad       	ldd	r25, Y+57	; 0x39
     f2c:	dc 01       	movw	r26, r24
     f2e:	ed 91       	ld	r30, X+
     f30:	fc 91       	ld	r31, X
     f32:	00 84       	ldd	r0, Z+8	; 0x08
     f34:	f1 85       	ldd	r31, Z+9	; 0x09
     f36:	e0 2d       	mov	r30, r0
     f38:	20 e6       	ldi	r18, 0x60	; 96
     f3a:	40 e2       	ldi	r20, 0x20	; 32
     f3c:	64 ed       	ldi	r22, 0xD4	; 212
     f3e:	09 95       	icall
     f40:	88 ad       	ldd	r24, Y+56	; 0x38
     f42:	99 ad       	ldd	r25, Y+57	; 0x39
     f44:	dc 01       	movw	r26, r24
     f46:	ed 91       	ld	r30, X+
     f48:	fc 91       	ld	r31, X
     f4a:	00 84       	ldd	r0, Z+8	; 0x08
     f4c:	f1 85       	ldd	r31, Z+9	; 0x09
     f4e:	e0 2d       	mov	r30, r0
     f50:	28 e3       	ldi	r18, 0x38	; 56
     f52:	4f e1       	ldi	r20, 0x1F	; 31
     f54:	64 ed       	ldi	r22, 0xD4	; 212
     f56:	09 95       	icall
     f58:	40 e1       	ldi	r20, 0x10	; 16
     f5a:	57 e2       	ldi	r21, 0x27	; 39
     f5c:	60 e0       	ldi	r22, 0x00	; 0
     f5e:	70 e0       	ldi	r23, 0x00	; 0
     f60:	ce 01       	movw	r24, r28
     f62:	0e 94 10 07 	call	0xe20	; 0xe20 <_ZN4Gyro11delay_loopsEm>
     f66:	60 e0       	ldi	r22, 0x00	; 0
     f68:	ce 01       	movw	r24, r28
     f6a:	0e 94 82 05 	call	0xb04	; 0xb04 <_ZN4Gyro4readEb>
     f6e:	1c aa       	std	Y+52, r1	; 0x34
     f70:	1d aa       	std	Y+53, r1	; 0x35
     f72:	1e aa       	std	Y+54, r1	; 0x36
     f74:	1f aa       	std	Y+55, r1	; 0x37
     f76:	e1 2c       	mov	r14, r1
     f78:	f1 2c       	mov	r15, r1
     f7a:	61 e0       	ldi	r22, 0x01	; 1
     f7c:	ce 01       	movw	r24, r28
     f7e:	0e 94 82 05 	call	0xb04	; 0xb04 <_ZN4Gyro4readEb>
     f82:	48 ee       	ldi	r20, 0xE8	; 232
     f84:	53 e0       	ldi	r21, 0x03	; 3
     f86:	60 e0       	ldi	r22, 0x00	; 0
     f88:	70 e0       	ldi	r23, 0x00	; 0
     f8a:	ce 01       	movw	r24, r28
     f8c:	0e 94 10 07 	call	0xe20	; 0xe20 <_ZN4Gyro11delay_loopsEm>
     f90:	bf ef       	ldi	r27, 0xFF	; 255
     f92:	eb 1a       	sub	r14, r27
     f94:	fb 0a       	sbc	r15, r27
     f96:	88 ec       	ldi	r24, 0xC8	; 200
     f98:	e8 16       	cp	r14, r24
     f9a:	f1 04       	cpc	r15, r1
     f9c:	71 f7       	brne	.-36     	; 0xf7a <_ZN4Gyro4initEP13I2C_Interface+0x14a>
     f9e:	6c a1       	ldd	r22, Y+36	; 0x24
     fa0:	7d a1       	ldd	r23, Y+37	; 0x25
     fa2:	8e a1       	ldd	r24, Y+38	; 0x26
     fa4:	9f a1       	ldd	r25, Y+39	; 0x27
     fa6:	28 ec       	ldi	r18, 0xC8	; 200
     fa8:	c2 2e       	mov	r12, r18
     faa:	d1 2c       	mov	r13, r1
     fac:	e1 2c       	mov	r14, r1
     fae:	f1 2c       	mov	r15, r1
     fb0:	a7 01       	movw	r20, r14
     fb2:	96 01       	movw	r18, r12
     fb4:	0e 94 3b 09 	call	0x1276	; 0x1276 <__divmodsi4>
     fb8:	2c a3       	std	Y+36, r18	; 0x24
     fba:	3d a3       	std	Y+37, r19	; 0x25
     fbc:	4e a3       	std	Y+38, r20	; 0x26
     fbe:	5f a3       	std	Y+39, r21	; 0x27
     fc0:	68 a5       	ldd	r22, Y+40	; 0x28
     fc2:	79 a5       	ldd	r23, Y+41	; 0x29
     fc4:	8a a5       	ldd	r24, Y+42	; 0x2a
     fc6:	9b a5       	ldd	r25, Y+43	; 0x2b
     fc8:	a7 01       	movw	r20, r14
     fca:	96 01       	movw	r18, r12
     fcc:	0e 94 3b 09 	call	0x1276	; 0x1276 <__divmodsi4>
     fd0:	28 a7       	std	Y+40, r18	; 0x28
     fd2:	39 a7       	std	Y+41, r19	; 0x29
     fd4:	4a a7       	std	Y+42, r20	; 0x2a
     fd6:	5b a7       	std	Y+43, r21	; 0x2b
     fd8:	6c a5       	ldd	r22, Y+44	; 0x2c
     fda:	7d a5       	ldd	r23, Y+45	; 0x2d
     fdc:	8e a5       	ldd	r24, Y+46	; 0x2e
     fde:	9f a5       	ldd	r25, Y+47	; 0x2f
     fe0:	a7 01       	movw	r20, r14
     fe2:	96 01       	movw	r18, r12
     fe4:	0e 94 3b 09 	call	0x1276	; 0x1276 <__divmodsi4>
     fe8:	2c a7       	std	Y+44, r18	; 0x2c
     fea:	3d a7       	std	Y+45, r19	; 0x2d
     fec:	4e a7       	std	Y+46, r20	; 0x2e
     fee:	5f a7       	std	Y+47, r21	; 0x2f
     ff0:	18 8e       	std	Y+24, r1	; 0x18
     ff2:	19 8e       	std	Y+25, r1	; 0x19
     ff4:	1a 8e       	std	Y+26, r1	; 0x1a
     ff6:	1b 8e       	std	Y+27, r1	; 0x1b
     ff8:	1c 8e       	std	Y+28, r1	; 0x1c
     ffa:	1d 8e       	std	Y+29, r1	; 0x1d
     ffc:	1e 8e       	std	Y+30, r1	; 0x1e
     ffe:	1f 8e       	std	Y+31, r1	; 0x1f
    1000:	18 a2       	std	Y+32, r1	; 0x20
    1002:	19 a2       	std	Y+33, r1	; 0x21
    1004:	1a a2       	std	Y+34, r1	; 0x22
    1006:	1b a2       	std	Y+35, r1	; 0x23
    1008:	18 82       	st	Y, r1
    100a:	19 82       	std	Y+1, r1	; 0x01
    100c:	1a 82       	std	Y+2, r1	; 0x02
    100e:	1b 82       	std	Y+3, r1	; 0x03
    1010:	1c 82       	std	Y+4, r1	; 0x04
    1012:	1d 82       	std	Y+5, r1	; 0x05
    1014:	1e 82       	std	Y+6, r1	; 0x06
    1016:	1f 82       	std	Y+7, r1	; 0x07
    1018:	18 86       	std	Y+8, r1	; 0x08
    101a:	19 86       	std	Y+9, r1	; 0x09
    101c:	1a 86       	std	Y+10, r1	; 0x0a
    101e:	1b 86       	std	Y+11, r1	; 0x0b
    1020:	df 91       	pop	r29
    1022:	cf 91       	pop	r28
    1024:	ff 90       	pop	r15
    1026:	ef 90       	pop	r14
    1028:	df 90       	pop	r13
    102a:	cf 90       	pop	r12
    102c:	08 95       	ret

0000102e <_ZN5TimerC1Ev>:
    102e:	e1 eb       	ldi	r30, 0xB1	; 177
    1030:	f0 e0       	ldi	r31, 0x00	; 0
    1032:	11 82       	std	Z+1, r1	; 0x01
    1034:	10 82       	st	Z, r1
    1036:	13 82       	std	Z+3, r1	; 0x03
    1038:	12 82       	std	Z+2, r1	; 0x02
    103a:	15 82       	std	Z+5, r1	; 0x05
    103c:	14 82       	std	Z+4, r1	; 0x04
    103e:	16 82       	std	Z+6, r1	; 0x06
    1040:	37 96       	adiw	r30, 0x07	; 7
    1042:	80 e0       	ldi	r24, 0x00	; 0
    1044:	e9 3e       	cpi	r30, 0xE9	; 233
    1046:	f8 07       	cpc	r31, r24
    1048:	a1 f7       	brne	.-24     	; 0x1032 <_ZN5TimerC1Ev+0x4>
    104a:	83 b7       	in	r24, 0x33	; 51
    104c:	88 60       	ori	r24, 0x08	; 8
    104e:	83 bf       	out	0x33, r24	; 51
    1050:	8b e9       	ldi	r24, 0x9B	; 155
    1052:	8c bf       	out	0x3c, r24	; 60
    1054:	83 e0       	ldi	r24, 0x03	; 3
    1056:	83 bf       	out	0x33, r24	; 51
    1058:	89 b7       	in	r24, 0x39	; 57
    105a:	82 60       	ori	r24, 0x02	; 2
    105c:	89 bf       	out	0x39, r24	; 57
    105e:	78 94       	sei
    1060:	08 95       	ret

00001062 <_ZN5Timer8add_taskEP4Taskj>:
    1062:	f8 94       	cli
    1064:	e1 eb       	ldi	r30, 0xB1	; 177
    1066:	f0 e0       	ldi	r31, 0x00	; 0
    1068:	80 e0       	ldi	r24, 0x00	; 0
    106a:	90 e0       	ldi	r25, 0x00	; 0
    106c:	20 81       	ld	r18, Z
    106e:	31 81       	ldd	r19, Z+1	; 0x01
    1070:	23 2b       	or	r18, r19
    1072:	81 f4       	brne	.+32     	; 0x1094 <_ZN5Timer8add_taskEP4Taskj+0x32>
    1074:	27 e0       	ldi	r18, 0x07	; 7
    1076:	28 9f       	mul	r18, r24
    1078:	f0 01       	movw	r30, r0
    107a:	29 9f       	mul	r18, r25
    107c:	f0 0d       	add	r31, r0
    107e:	11 24       	eor	r1, r1
    1080:	ef 54       	subi	r30, 0x4F	; 79
    1082:	ff 4f       	sbci	r31, 0xFF	; 255
    1084:	71 83       	std	Z+1, r23	; 0x01
    1086:	60 83       	st	Z, r22
    1088:	53 83       	std	Z+3, r21	; 0x03
    108a:	42 83       	std	Z+2, r20	; 0x02
    108c:	55 83       	std	Z+5, r21	; 0x05
    108e:	44 83       	std	Z+4, r20	; 0x04
    1090:	16 82       	std	Z+6, r1	; 0x06
    1092:	07 c0       	rjmp	.+14     	; 0x10a2 <_ZN5Timer8add_taskEP4Taskj+0x40>
    1094:	01 96       	adiw	r24, 0x01	; 1
    1096:	37 96       	adiw	r30, 0x07	; 7
    1098:	88 30       	cpi	r24, 0x08	; 8
    109a:	91 05       	cpc	r25, r1
    109c:	39 f7       	brne	.-50     	; 0x106c <_ZN5Timer8add_taskEP4Taskj+0xa>
    109e:	8f ef       	ldi	r24, 0xFF	; 255
    10a0:	9f ef       	ldi	r25, 0xFF	; 255
    10a2:	78 94       	sei
    10a4:	08 95       	ret

000010a6 <_ZN5Timer4mainEv>:
    10a6:	cf 93       	push	r28
    10a8:	df 93       	push	r29
    10aa:	c7 eb       	ldi	r28, 0xB7	; 183
    10ac:	d0 e0       	ldi	r29, 0x00	; 0
    10ae:	fe 01       	movw	r30, r28
    10b0:	36 97       	sbiw	r30, 0x06	; 6
    10b2:	80 81       	ld	r24, Z
    10b4:	91 81       	ldd	r25, Z+1	; 0x01
    10b6:	00 97       	sbiw	r24, 0x00	; 0
    10b8:	59 f0       	breq	.+22     	; 0x10d0 <_ZN5Timer4mainEv+0x2a>
    10ba:	28 81       	ld	r18, Y
    10bc:	22 23       	and	r18, r18
    10be:	41 f0       	breq	.+16     	; 0x10d0 <_ZN5Timer4mainEv+0x2a>
    10c0:	18 82       	st	Y, r1
    10c2:	dc 01       	movw	r26, r24
    10c4:	ed 91       	ld	r30, X+
    10c6:	fc 91       	ld	r31, X
    10c8:	04 80       	ldd	r0, Z+4	; 0x04
    10ca:	f5 81       	ldd	r31, Z+5	; 0x05
    10cc:	e0 2d       	mov	r30, r0
    10ce:	09 95       	icall
    10d0:	27 96       	adiw	r28, 0x07	; 7
    10d2:	b0 e0       	ldi	r27, 0x00	; 0
    10d4:	cf 3e       	cpi	r28, 0xEF	; 239
    10d6:	db 07       	cpc	r29, r27
    10d8:	51 f7       	brne	.-44     	; 0x10ae <_ZN5Timer4mainEv+0x8>
    10da:	df 91       	pop	r29
    10dc:	cf 91       	pop	r28
    10de:	08 95       	ret

000010e0 <__vector_19>:
    10e0:	1f 92       	push	r1
    10e2:	0f 92       	push	r0
    10e4:	0f b6       	in	r0, 0x3f	; 63
    10e6:	0f 92       	push	r0
    10e8:	11 24       	eor	r1, r1
    10ea:	8f 93       	push	r24
    10ec:	9f 93       	push	r25
    10ee:	af 93       	push	r26
    10f0:	bf 93       	push	r27
    10f2:	ef 93       	push	r30
    10f4:	ff 93       	push	r31
    10f6:	e1 eb       	ldi	r30, 0xB1	; 177
    10f8:	f0 e0       	ldi	r31, 0x00	; 0
    10fa:	a7 eb       	ldi	r26, 0xB7	; 183
    10fc:	b0 e0       	ldi	r27, 0x00	; 0
    10fe:	84 81       	ldd	r24, Z+4	; 0x04
    1100:	95 81       	ldd	r25, Z+5	; 0x05
    1102:	00 97       	sbiw	r24, 0x00	; 0
    1104:	21 f0       	breq	.+8      	; 0x110e <__vector_19+0x2e>
    1106:	01 97       	sbiw	r24, 0x01	; 1
    1108:	95 83       	std	Z+5, r25	; 0x05
    110a:	84 83       	std	Z+4, r24	; 0x04
    110c:	09 c0       	rjmp	.+18     	; 0x1120 <__vector_19+0x40>
    110e:	82 81       	ldd	r24, Z+2	; 0x02
    1110:	93 81       	ldd	r25, Z+3	; 0x03
    1112:	95 83       	std	Z+5, r25	; 0x05
    1114:	84 83       	std	Z+4, r24	; 0x04
    1116:	8c 91       	ld	r24, X
    1118:	8f 3f       	cpi	r24, 0xFF	; 255
    111a:	11 f0       	breq	.+4      	; 0x1120 <__vector_19+0x40>
    111c:	8f 5f       	subi	r24, 0xFF	; 255
    111e:	8c 93       	st	X, r24
    1120:	37 96       	adiw	r30, 0x07	; 7
    1122:	17 96       	adiw	r26, 0x07	; 7
    1124:	80 e0       	ldi	r24, 0x00	; 0
    1126:	e9 3e       	cpi	r30, 0xE9	; 233
    1128:	f8 07       	cpc	r31, r24
    112a:	49 f7       	brne	.-46     	; 0x10fe <__vector_19+0x1e>
    112c:	80 91 e9 00 	lds	r24, 0x00E9
    1130:	90 91 ea 00 	lds	r25, 0x00EA
    1134:	a0 91 eb 00 	lds	r26, 0x00EB
    1138:	b0 91 ec 00 	lds	r27, 0x00EC
    113c:	01 96       	adiw	r24, 0x01	; 1
    113e:	a1 1d       	adc	r26, r1
    1140:	b1 1d       	adc	r27, r1
    1142:	80 93 e9 00 	sts	0x00E9, r24
    1146:	90 93 ea 00 	sts	0x00EA, r25
    114a:	a0 93 eb 00 	sts	0x00EB, r26
    114e:	b0 93 ec 00 	sts	0x00EC, r27
    1152:	ff 91       	pop	r31
    1154:	ef 91       	pop	r30
    1156:	bf 91       	pop	r27
    1158:	af 91       	pop	r26
    115a:	9f 91       	pop	r25
    115c:	8f 91       	pop	r24
    115e:	0f 90       	pop	r0
    1160:	0f be       	out	0x3f, r0	; 63
    1162:	0f 90       	pop	r0
    1164:	1f 90       	pop	r1
    1166:	18 95       	reti

00001168 <_GLOBAL__sub_I_g_rt_time>:
    1168:	80 eb       	ldi	r24, 0xB0	; 176
    116a:	90 e0       	ldi	r25, 0x00	; 0
    116c:	0c 94 17 08 	jmp	0x102e	; 0x102e <_ZN5TimerC1Ev>

00001170 <_GLOBAL__sub_I_terminal>:
    1170:	8d ee       	ldi	r24, 0xED	; 237
    1172:	90 e0       	ldi	r25, 0x00	; 0
    1174:	0c 94 a2 02 	jmp	0x544	; 0x544 <_ZN5USARTC1Ev>

00001178 <_GLOBAL__sub_D_terminal>:
    1178:	8d ee       	ldi	r24, 0xED	; 237
    117a:	90 e0       	ldi	r25, 0x00	; 0
    117c:	0c 94 ac 02 	jmp	0x558	; 0x558 <_ZN5USARTD1Ev>

00001180 <_ZN10LEDDisplayD1Ev>:
    1180:	08 95       	ret

00001182 <_ZN10LEDDisplay4mainEv>:
    1182:	fc 01       	movw	r30, r24
    1184:	82 81       	ldd	r24, Z+2	; 0x02
    1186:	88 23       	and	r24, r24
    1188:	19 f0       	breq	.+6      	; 0x1190 <_ZN10LEDDisplay4mainEv+0xe>
    118a:	81 30       	cpi	r24, 0x01	; 1
    118c:	51 f0       	breq	.+20     	; 0x11a2 <_ZN10LEDDisplay4mainEv+0x20>
    118e:	08 95       	ret
    1190:	88 b3       	in	r24, 0x18	; 24
    1192:	83 60       	ori	r24, 0x03	; 3
    1194:	88 bb       	out	0x18, r24	; 24
    1196:	83 81       	ldd	r24, Z+3	; 0x03
    1198:	85 bb       	out	0x15, r24	; 21
    119a:	c0 98       	cbi	0x18, 0	; 24
    119c:	81 e0       	ldi	r24, 0x01	; 1
    119e:	82 83       	std	Z+2, r24	; 0x02
    11a0:	08 95       	ret
    11a2:	88 b3       	in	r24, 0x18	; 24
    11a4:	83 60       	ori	r24, 0x03	; 3
    11a6:	88 bb       	out	0x18, r24	; 24
    11a8:	84 81       	ldd	r24, Z+4	; 0x04
    11aa:	85 bb       	out	0x15, r24	; 21
    11ac:	c1 98       	cbi	0x18, 1	; 24
    11ae:	12 82       	std	Z+2, r1	; 0x02
    11b0:	08 95       	ret

000011b2 <_ZN10LEDDisplayD0Ev>:
    11b2:	0c 94 7e 05 	jmp	0xafc	; 0xafc <_ZdlPv>

000011b6 <_ZN10LEDDisplayC1Ev>:
    11b6:	fc 01       	movw	r30, r24
    11b8:	86 ea       	ldi	r24, 0xA6	; 166
    11ba:	90 e0       	ldi	r25, 0x00	; 0
    11bc:	91 83       	std	Z+1, r25	; 0x01
    11be:	80 83       	st	Z, r24
    11c0:	12 82       	std	Z+2, r1	; 0x02
    11c2:	8f ef       	ldi	r24, 0xFF	; 255
    11c4:	83 83       	std	Z+3, r24	; 0x03
    11c6:	84 83       	std	Z+4, r24	; 0x04
    11c8:	97 b3       	in	r25, 0x17	; 23
    11ca:	93 60       	ori	r25, 0x03	; 3
    11cc:	97 bb       	out	0x17, r25	; 23
    11ce:	98 b3       	in	r25, 0x18	; 24
    11d0:	93 60       	ori	r25, 0x03	; 3
    11d2:	98 bb       	out	0x18, r25	; 24
    11d4:	85 bb       	out	0x15, r24	; 21
    11d6:	84 bb       	out	0x14, r24	; 20
    11d8:	45 e0       	ldi	r20, 0x05	; 5
    11da:	50 e0       	ldi	r21, 0x00	; 0
    11dc:	bf 01       	movw	r22, r30
    11de:	80 eb       	ldi	r24, 0xB0	; 176
    11e0:	90 e0       	ldi	r25, 0x00	; 0
    11e2:	0c 94 31 08 	jmp	0x1062	; 0x1062 <_ZN5Timer8add_taskEP4Taskj>

000011e6 <_ZN10LEDDisplay11display_decEh>:
    11e6:	dc 01       	movw	r26, r24
    11e8:	86 2f       	mov	r24, r22
    11ea:	64 36       	cpi	r22, 0x64	; 100
    11ec:	08 f0       	brcs	.+2      	; 0x11f0 <_ZN10LEDDisplay11display_decEh+0xa>
    11ee:	83 e6       	ldi	r24, 0x63	; 99
    11f0:	6a e0       	ldi	r22, 0x0A	; 10
    11f2:	0e 94 0d 09 	call	0x121a	; 0x121a <__udivmodqi4>
    11f6:	e8 2f       	mov	r30, r24
    11f8:	f0 e0       	ldi	r31, 0x00	; 0
    11fa:	ee 56       	subi	r30, 0x6E	; 110
    11fc:	ff 4f       	sbci	r31, 0xFF	; 255
    11fe:	20 81       	ld	r18, Z
    1200:	20 95       	com	r18
    1202:	13 96       	adiw	r26, 0x03	; 3
    1204:	2c 93       	st	X, r18
    1206:	13 97       	sbiw	r26, 0x03	; 3
    1208:	e9 2f       	mov	r30, r25
    120a:	f0 e0       	ldi	r31, 0x00	; 0
    120c:	ee 56       	subi	r30, 0x6E	; 110
    120e:	ff 4f       	sbci	r31, 0xFF	; 255
    1210:	90 81       	ld	r25, Z
    1212:	90 95       	com	r25
    1214:	14 96       	adiw	r26, 0x04	; 4
    1216:	9c 93       	st	X, r25
    1218:	08 95       	ret

0000121a <__udivmodqi4>:
    121a:	99 1b       	sub	r25, r25
    121c:	79 e0       	ldi	r23, 0x09	; 9
    121e:	04 c0       	rjmp	.+8      	; 0x1228 <__udivmodqi4_ep>

00001220 <__udivmodqi4_loop>:
    1220:	99 1f       	adc	r25, r25
    1222:	96 17       	cp	r25, r22
    1224:	08 f0       	brcs	.+2      	; 0x1228 <__udivmodqi4_ep>
    1226:	96 1b       	sub	r25, r22

00001228 <__udivmodqi4_ep>:
    1228:	88 1f       	adc	r24, r24
    122a:	7a 95       	dec	r23
    122c:	c9 f7       	brne	.-14     	; 0x1220 <__udivmodqi4_loop>
    122e:	80 95       	com	r24
    1230:	08 95       	ret

00001232 <__udivmodsi4>:
    1232:	a1 e2       	ldi	r26, 0x21	; 33
    1234:	1a 2e       	mov	r1, r26
    1236:	aa 1b       	sub	r26, r26
    1238:	bb 1b       	sub	r27, r27
    123a:	fd 01       	movw	r30, r26
    123c:	0d c0       	rjmp	.+26     	; 0x1258 <__udivmodsi4_ep>

0000123e <__udivmodsi4_loop>:
    123e:	aa 1f       	adc	r26, r26
    1240:	bb 1f       	adc	r27, r27
    1242:	ee 1f       	adc	r30, r30
    1244:	ff 1f       	adc	r31, r31
    1246:	a2 17       	cp	r26, r18
    1248:	b3 07       	cpc	r27, r19
    124a:	e4 07       	cpc	r30, r20
    124c:	f5 07       	cpc	r31, r21
    124e:	20 f0       	brcs	.+8      	; 0x1258 <__udivmodsi4_ep>
    1250:	a2 1b       	sub	r26, r18
    1252:	b3 0b       	sbc	r27, r19
    1254:	e4 0b       	sbc	r30, r20
    1256:	f5 0b       	sbc	r31, r21

00001258 <__udivmodsi4_ep>:
    1258:	66 1f       	adc	r22, r22
    125a:	77 1f       	adc	r23, r23
    125c:	88 1f       	adc	r24, r24
    125e:	99 1f       	adc	r25, r25
    1260:	1a 94       	dec	r1
    1262:	69 f7       	brne	.-38     	; 0x123e <__udivmodsi4_loop>
    1264:	60 95       	com	r22
    1266:	70 95       	com	r23
    1268:	80 95       	com	r24
    126a:	90 95       	com	r25
    126c:	9b 01       	movw	r18, r22
    126e:	ac 01       	movw	r20, r24
    1270:	bd 01       	movw	r22, r26
    1272:	cf 01       	movw	r24, r30
    1274:	08 95       	ret

00001276 <__divmodsi4>:
    1276:	05 2e       	mov	r0, r21
    1278:	97 fb       	bst	r25, 7
    127a:	1e f4       	brtc	.+6      	; 0x1282 <__divmodsi4+0xc>
    127c:	00 94       	com	r0
    127e:	0e 94 52 09 	call	0x12a4	; 0x12a4 <__negsi2>
    1282:	57 fd       	sbrc	r21, 7
    1284:	07 d0       	rcall	.+14     	; 0x1294 <__divmodsi4_neg2>
    1286:	0e 94 19 09 	call	0x1232	; 0x1232 <__udivmodsi4>
    128a:	07 fc       	sbrc	r0, 7
    128c:	03 d0       	rcall	.+6      	; 0x1294 <__divmodsi4_neg2>
    128e:	4e f4       	brtc	.+18     	; 0x12a2 <__divmodsi4_exit>
    1290:	0c 94 52 09 	jmp	0x12a4	; 0x12a4 <__negsi2>

00001294 <__divmodsi4_neg2>:
    1294:	50 95       	com	r21
    1296:	40 95       	com	r20
    1298:	30 95       	com	r19
    129a:	21 95       	neg	r18
    129c:	3f 4f       	sbci	r19, 0xFF	; 255
    129e:	4f 4f       	sbci	r20, 0xFF	; 255
    12a0:	5f 4f       	sbci	r21, 0xFF	; 255

000012a2 <__divmodsi4_exit>:
    12a2:	08 95       	ret

000012a4 <__negsi2>:
    12a4:	90 95       	com	r25
    12a6:	80 95       	com	r24
    12a8:	70 95       	com	r23
    12aa:	61 95       	neg	r22
    12ac:	7f 4f       	sbci	r23, 0xFF	; 255
    12ae:	8f 4f       	sbci	r24, 0xFF	; 255
    12b0:	9f 4f       	sbci	r25, 0xFF	; 255
    12b2:	08 95       	ret

000012b4 <__tablejump2__>:
    12b4:	ee 0f       	add	r30, r30
    12b6:	ff 1f       	adc	r31, r31
    12b8:	05 90       	lpm	r0, Z+
    12ba:	f4 91       	lpm	r31, Z
    12bc:	e0 2d       	mov	r30, r0
    12be:	09 94       	ijmp

000012c0 <__subsf3>:
    12c0:	50 58       	subi	r21, 0x80	; 128

000012c2 <__addsf3>:
    12c2:	bb 27       	eor	r27, r27
    12c4:	aa 27       	eor	r26, r26
    12c6:	0e 94 78 09 	call	0x12f0	; 0x12f0 <__addsf3x>
    12ca:	0c 94 80 0a 	jmp	0x1500	; 0x1500 <__fp_round>
    12ce:	0e 94 72 0a 	call	0x14e4	; 0x14e4 <__fp_pscA>
    12d2:	38 f0       	brcs	.+14     	; 0x12e2 <__addsf3+0x20>
    12d4:	0e 94 79 0a 	call	0x14f2	; 0x14f2 <__fp_pscB>
    12d8:	20 f0       	brcs	.+8      	; 0x12e2 <__addsf3+0x20>
    12da:	39 f4       	brne	.+14     	; 0x12ea <__addsf3+0x28>
    12dc:	9f 3f       	cpi	r25, 0xFF	; 255
    12de:	19 f4       	brne	.+6      	; 0x12e6 <__addsf3+0x24>
    12e0:	26 f4       	brtc	.+8      	; 0x12ea <__addsf3+0x28>
    12e2:	0c 94 6f 0a 	jmp	0x14de	; 0x14de <__fp_nan>
    12e6:	0e f4       	brtc	.+2      	; 0x12ea <__addsf3+0x28>
    12e8:	e0 95       	com	r30
    12ea:	e7 fb       	bst	r30, 7
    12ec:	0c 94 69 0a 	jmp	0x14d2	; 0x14d2 <__fp_inf>

000012f0 <__addsf3x>:
    12f0:	e9 2f       	mov	r30, r25
    12f2:	0e 94 91 0a 	call	0x1522	; 0x1522 <__fp_split3>
    12f6:	58 f3       	brcs	.-42     	; 0x12ce <__addsf3+0xc>
    12f8:	ba 17       	cp	r27, r26
    12fa:	62 07       	cpc	r22, r18
    12fc:	73 07       	cpc	r23, r19
    12fe:	84 07       	cpc	r24, r20
    1300:	95 07       	cpc	r25, r21
    1302:	20 f0       	brcs	.+8      	; 0x130c <__addsf3x+0x1c>
    1304:	79 f4       	brne	.+30     	; 0x1324 <__addsf3x+0x34>
    1306:	a6 f5       	brtc	.+104    	; 0x1370 <__addsf3x+0x80>
    1308:	0c 94 b3 0a 	jmp	0x1566	; 0x1566 <__fp_zero>
    130c:	0e f4       	brtc	.+2      	; 0x1310 <__addsf3x+0x20>
    130e:	e0 95       	com	r30
    1310:	0b 2e       	mov	r0, r27
    1312:	ba 2f       	mov	r27, r26
    1314:	a0 2d       	mov	r26, r0
    1316:	0b 01       	movw	r0, r22
    1318:	b9 01       	movw	r22, r18
    131a:	90 01       	movw	r18, r0
    131c:	0c 01       	movw	r0, r24
    131e:	ca 01       	movw	r24, r20
    1320:	a0 01       	movw	r20, r0
    1322:	11 24       	eor	r1, r1
    1324:	ff 27       	eor	r31, r31
    1326:	59 1b       	sub	r21, r25
    1328:	99 f0       	breq	.+38     	; 0x1350 <__addsf3x+0x60>
    132a:	59 3f       	cpi	r21, 0xF9	; 249
    132c:	50 f4       	brcc	.+20     	; 0x1342 <__addsf3x+0x52>
    132e:	50 3e       	cpi	r21, 0xE0	; 224
    1330:	68 f1       	brcs	.+90     	; 0x138c <__addsf3x+0x9c>
    1332:	1a 16       	cp	r1, r26
    1334:	f0 40       	sbci	r31, 0x00	; 0
    1336:	a2 2f       	mov	r26, r18
    1338:	23 2f       	mov	r18, r19
    133a:	34 2f       	mov	r19, r20
    133c:	44 27       	eor	r20, r20
    133e:	58 5f       	subi	r21, 0xF8	; 248
    1340:	f3 cf       	rjmp	.-26     	; 0x1328 <__addsf3x+0x38>
    1342:	46 95       	lsr	r20
    1344:	37 95       	ror	r19
    1346:	27 95       	ror	r18
    1348:	a7 95       	ror	r26
    134a:	f0 40       	sbci	r31, 0x00	; 0
    134c:	53 95       	inc	r21
    134e:	c9 f7       	brne	.-14     	; 0x1342 <__addsf3x+0x52>
    1350:	7e f4       	brtc	.+30     	; 0x1370 <__addsf3x+0x80>
    1352:	1f 16       	cp	r1, r31
    1354:	ba 0b       	sbc	r27, r26
    1356:	62 0b       	sbc	r22, r18
    1358:	73 0b       	sbc	r23, r19
    135a:	84 0b       	sbc	r24, r20
    135c:	ba f0       	brmi	.+46     	; 0x138c <__addsf3x+0x9c>
    135e:	91 50       	subi	r25, 0x01	; 1
    1360:	a1 f0       	breq	.+40     	; 0x138a <__addsf3x+0x9a>
    1362:	ff 0f       	add	r31, r31
    1364:	bb 1f       	adc	r27, r27
    1366:	66 1f       	adc	r22, r22
    1368:	77 1f       	adc	r23, r23
    136a:	88 1f       	adc	r24, r24
    136c:	c2 f7       	brpl	.-16     	; 0x135e <__addsf3x+0x6e>
    136e:	0e c0       	rjmp	.+28     	; 0x138c <__addsf3x+0x9c>
    1370:	ba 0f       	add	r27, r26
    1372:	62 1f       	adc	r22, r18
    1374:	73 1f       	adc	r23, r19
    1376:	84 1f       	adc	r24, r20
    1378:	48 f4       	brcc	.+18     	; 0x138c <__addsf3x+0x9c>
    137a:	87 95       	ror	r24
    137c:	77 95       	ror	r23
    137e:	67 95       	ror	r22
    1380:	b7 95       	ror	r27
    1382:	f7 95       	ror	r31
    1384:	9e 3f       	cpi	r25, 0xFE	; 254
    1386:	08 f0       	brcs	.+2      	; 0x138a <__addsf3x+0x9a>
    1388:	b0 cf       	rjmp	.-160    	; 0x12ea <__addsf3+0x28>
    138a:	93 95       	inc	r25
    138c:	88 0f       	add	r24, r24
    138e:	08 f0       	brcs	.+2      	; 0x1392 <__addsf3x+0xa2>
    1390:	99 27       	eor	r25, r25
    1392:	ee 0f       	add	r30, r30
    1394:	97 95       	ror	r25
    1396:	87 95       	ror	r24
    1398:	08 95       	ret

0000139a <__cmpsf2>:
    139a:	0e 94 45 0a 	call	0x148a	; 0x148a <__fp_cmp>
    139e:	08 f4       	brcc	.+2      	; 0x13a2 <__cmpsf2+0x8>
    13a0:	81 e0       	ldi	r24, 0x01	; 1
    13a2:	08 95       	ret

000013a4 <__fixsfsi>:
    13a4:	0e 94 d9 09 	call	0x13b2	; 0x13b2 <__fixunssfsi>
    13a8:	68 94       	set
    13aa:	b1 11       	cpse	r27, r1
    13ac:	0c 94 b4 0a 	jmp	0x1568	; 0x1568 <__fp_szero>
    13b0:	08 95       	ret

000013b2 <__fixunssfsi>:
    13b2:	0e 94 99 0a 	call	0x1532	; 0x1532 <__fp_splitA>
    13b6:	88 f0       	brcs	.+34     	; 0x13da <__fixunssfsi+0x28>
    13b8:	9f 57       	subi	r25, 0x7F	; 127
    13ba:	98 f0       	brcs	.+38     	; 0x13e2 <__fixunssfsi+0x30>
    13bc:	b9 2f       	mov	r27, r25
    13be:	99 27       	eor	r25, r25
    13c0:	b7 51       	subi	r27, 0x17	; 23
    13c2:	b0 f0       	brcs	.+44     	; 0x13f0 <__fixunssfsi+0x3e>
    13c4:	e1 f0       	breq	.+56     	; 0x13fe <__fixunssfsi+0x4c>
    13c6:	66 0f       	add	r22, r22
    13c8:	77 1f       	adc	r23, r23
    13ca:	88 1f       	adc	r24, r24
    13cc:	99 1f       	adc	r25, r25
    13ce:	1a f0       	brmi	.+6      	; 0x13d6 <__fixunssfsi+0x24>
    13d0:	ba 95       	dec	r27
    13d2:	c9 f7       	brne	.-14     	; 0x13c6 <__fixunssfsi+0x14>
    13d4:	14 c0       	rjmp	.+40     	; 0x13fe <__fixunssfsi+0x4c>
    13d6:	b1 30       	cpi	r27, 0x01	; 1
    13d8:	91 f0       	breq	.+36     	; 0x13fe <__fixunssfsi+0x4c>
    13da:	0e 94 b3 0a 	call	0x1566	; 0x1566 <__fp_zero>
    13de:	b1 e0       	ldi	r27, 0x01	; 1
    13e0:	08 95       	ret
    13e2:	0c 94 b3 0a 	jmp	0x1566	; 0x1566 <__fp_zero>
    13e6:	67 2f       	mov	r22, r23
    13e8:	78 2f       	mov	r23, r24
    13ea:	88 27       	eor	r24, r24
    13ec:	b8 5f       	subi	r27, 0xF8	; 248
    13ee:	39 f0       	breq	.+14     	; 0x13fe <__fixunssfsi+0x4c>
    13f0:	b9 3f       	cpi	r27, 0xF9	; 249
    13f2:	cc f3       	brlt	.-14     	; 0x13e6 <__fixunssfsi+0x34>
    13f4:	86 95       	lsr	r24
    13f6:	77 95       	ror	r23
    13f8:	67 95       	ror	r22
    13fa:	b3 95       	inc	r27
    13fc:	d9 f7       	brne	.-10     	; 0x13f4 <__fixunssfsi+0x42>
    13fe:	3e f4       	brtc	.+14     	; 0x140e <__fixunssfsi+0x5c>
    1400:	90 95       	com	r25
    1402:	80 95       	com	r24
    1404:	70 95       	com	r23
    1406:	61 95       	neg	r22
    1408:	7f 4f       	sbci	r23, 0xFF	; 255
    140a:	8f 4f       	sbci	r24, 0xFF	; 255
    140c:	9f 4f       	sbci	r25, 0xFF	; 255
    140e:	08 95       	ret

00001410 <__floatunsisf>:
    1410:	e8 94       	clt
    1412:	09 c0       	rjmp	.+18     	; 0x1426 <__floatsisf+0x12>

00001414 <__floatsisf>:
    1414:	97 fb       	bst	r25, 7
    1416:	3e f4       	brtc	.+14     	; 0x1426 <__floatsisf+0x12>
    1418:	90 95       	com	r25
    141a:	80 95       	com	r24
    141c:	70 95       	com	r23
    141e:	61 95       	neg	r22
    1420:	7f 4f       	sbci	r23, 0xFF	; 255
    1422:	8f 4f       	sbci	r24, 0xFF	; 255
    1424:	9f 4f       	sbci	r25, 0xFF	; 255
    1426:	99 23       	and	r25, r25
    1428:	a9 f0       	breq	.+42     	; 0x1454 <__floatsisf+0x40>
    142a:	f9 2f       	mov	r31, r25
    142c:	96 e9       	ldi	r25, 0x96	; 150
    142e:	bb 27       	eor	r27, r27
    1430:	93 95       	inc	r25
    1432:	f6 95       	lsr	r31
    1434:	87 95       	ror	r24
    1436:	77 95       	ror	r23
    1438:	67 95       	ror	r22
    143a:	b7 95       	ror	r27
    143c:	f1 11       	cpse	r31, r1
    143e:	f8 cf       	rjmp	.-16     	; 0x1430 <__floatsisf+0x1c>
    1440:	fa f4       	brpl	.+62     	; 0x1480 <__floatsisf+0x6c>
    1442:	bb 0f       	add	r27, r27
    1444:	11 f4       	brne	.+4      	; 0x144a <__floatsisf+0x36>
    1446:	60 ff       	sbrs	r22, 0
    1448:	1b c0       	rjmp	.+54     	; 0x1480 <__floatsisf+0x6c>
    144a:	6f 5f       	subi	r22, 0xFF	; 255
    144c:	7f 4f       	sbci	r23, 0xFF	; 255
    144e:	8f 4f       	sbci	r24, 0xFF	; 255
    1450:	9f 4f       	sbci	r25, 0xFF	; 255
    1452:	16 c0       	rjmp	.+44     	; 0x1480 <__floatsisf+0x6c>
    1454:	88 23       	and	r24, r24
    1456:	11 f0       	breq	.+4      	; 0x145c <__floatsisf+0x48>
    1458:	96 e9       	ldi	r25, 0x96	; 150
    145a:	11 c0       	rjmp	.+34     	; 0x147e <__floatsisf+0x6a>
    145c:	77 23       	and	r23, r23
    145e:	21 f0       	breq	.+8      	; 0x1468 <__floatsisf+0x54>
    1460:	9e e8       	ldi	r25, 0x8E	; 142
    1462:	87 2f       	mov	r24, r23
    1464:	76 2f       	mov	r23, r22
    1466:	05 c0       	rjmp	.+10     	; 0x1472 <__floatsisf+0x5e>
    1468:	66 23       	and	r22, r22
    146a:	71 f0       	breq	.+28     	; 0x1488 <__floatsisf+0x74>
    146c:	96 e8       	ldi	r25, 0x86	; 134
    146e:	86 2f       	mov	r24, r22
    1470:	70 e0       	ldi	r23, 0x00	; 0
    1472:	60 e0       	ldi	r22, 0x00	; 0
    1474:	2a f0       	brmi	.+10     	; 0x1480 <__floatsisf+0x6c>
    1476:	9a 95       	dec	r25
    1478:	66 0f       	add	r22, r22
    147a:	77 1f       	adc	r23, r23
    147c:	88 1f       	adc	r24, r24
    147e:	da f7       	brpl	.-10     	; 0x1476 <__floatsisf+0x62>
    1480:	88 0f       	add	r24, r24
    1482:	96 95       	lsr	r25
    1484:	87 95       	ror	r24
    1486:	97 f9       	bld	r25, 7
    1488:	08 95       	ret

0000148a <__fp_cmp>:
    148a:	99 0f       	add	r25, r25
    148c:	00 08       	sbc	r0, r0
    148e:	55 0f       	add	r21, r21
    1490:	aa 0b       	sbc	r26, r26
    1492:	e0 e8       	ldi	r30, 0x80	; 128
    1494:	fe ef       	ldi	r31, 0xFE	; 254
    1496:	16 16       	cp	r1, r22
    1498:	17 06       	cpc	r1, r23
    149a:	e8 07       	cpc	r30, r24
    149c:	f9 07       	cpc	r31, r25
    149e:	c0 f0       	brcs	.+48     	; 0x14d0 <__fp_cmp+0x46>
    14a0:	12 16       	cp	r1, r18
    14a2:	13 06       	cpc	r1, r19
    14a4:	e4 07       	cpc	r30, r20
    14a6:	f5 07       	cpc	r31, r21
    14a8:	98 f0       	brcs	.+38     	; 0x14d0 <__fp_cmp+0x46>
    14aa:	62 1b       	sub	r22, r18
    14ac:	73 0b       	sbc	r23, r19
    14ae:	84 0b       	sbc	r24, r20
    14b0:	95 0b       	sbc	r25, r21
    14b2:	39 f4       	brne	.+14     	; 0x14c2 <__fp_cmp+0x38>
    14b4:	0a 26       	eor	r0, r26
    14b6:	61 f0       	breq	.+24     	; 0x14d0 <__fp_cmp+0x46>
    14b8:	23 2b       	or	r18, r19
    14ba:	24 2b       	or	r18, r20
    14bc:	25 2b       	or	r18, r21
    14be:	21 f4       	brne	.+8      	; 0x14c8 <__fp_cmp+0x3e>
    14c0:	08 95       	ret
    14c2:	0a 26       	eor	r0, r26
    14c4:	09 f4       	brne	.+2      	; 0x14c8 <__fp_cmp+0x3e>
    14c6:	a1 40       	sbci	r26, 0x01	; 1
    14c8:	a6 95       	lsr	r26
    14ca:	8f ef       	ldi	r24, 0xFF	; 255
    14cc:	81 1d       	adc	r24, r1
    14ce:	81 1d       	adc	r24, r1
    14d0:	08 95       	ret

000014d2 <__fp_inf>:
    14d2:	97 f9       	bld	r25, 7
    14d4:	9f 67       	ori	r25, 0x7F	; 127
    14d6:	80 e8       	ldi	r24, 0x80	; 128
    14d8:	70 e0       	ldi	r23, 0x00	; 0
    14da:	60 e0       	ldi	r22, 0x00	; 0
    14dc:	08 95       	ret

000014de <__fp_nan>:
    14de:	9f ef       	ldi	r25, 0xFF	; 255
    14e0:	80 ec       	ldi	r24, 0xC0	; 192
    14e2:	08 95       	ret

000014e4 <__fp_pscA>:
    14e4:	00 24       	eor	r0, r0
    14e6:	0a 94       	dec	r0
    14e8:	16 16       	cp	r1, r22
    14ea:	17 06       	cpc	r1, r23
    14ec:	18 06       	cpc	r1, r24
    14ee:	09 06       	cpc	r0, r25
    14f0:	08 95       	ret

000014f2 <__fp_pscB>:
    14f2:	00 24       	eor	r0, r0
    14f4:	0a 94       	dec	r0
    14f6:	12 16       	cp	r1, r18
    14f8:	13 06       	cpc	r1, r19
    14fa:	14 06       	cpc	r1, r20
    14fc:	05 06       	cpc	r0, r21
    14fe:	08 95       	ret

00001500 <__fp_round>:
    1500:	09 2e       	mov	r0, r25
    1502:	03 94       	inc	r0
    1504:	00 0c       	add	r0, r0
    1506:	11 f4       	brne	.+4      	; 0x150c <__fp_round+0xc>
    1508:	88 23       	and	r24, r24
    150a:	52 f0       	brmi	.+20     	; 0x1520 <__fp_round+0x20>
    150c:	bb 0f       	add	r27, r27
    150e:	40 f4       	brcc	.+16     	; 0x1520 <__fp_round+0x20>
    1510:	bf 2b       	or	r27, r31
    1512:	11 f4       	brne	.+4      	; 0x1518 <__fp_round+0x18>
    1514:	60 ff       	sbrs	r22, 0
    1516:	04 c0       	rjmp	.+8      	; 0x1520 <__fp_round+0x20>
    1518:	6f 5f       	subi	r22, 0xFF	; 255
    151a:	7f 4f       	sbci	r23, 0xFF	; 255
    151c:	8f 4f       	sbci	r24, 0xFF	; 255
    151e:	9f 4f       	sbci	r25, 0xFF	; 255
    1520:	08 95       	ret

00001522 <__fp_split3>:
    1522:	57 fd       	sbrc	r21, 7
    1524:	90 58       	subi	r25, 0x80	; 128
    1526:	44 0f       	add	r20, r20
    1528:	55 1f       	adc	r21, r21
    152a:	59 f0       	breq	.+22     	; 0x1542 <__fp_splitA+0x10>
    152c:	5f 3f       	cpi	r21, 0xFF	; 255
    152e:	71 f0       	breq	.+28     	; 0x154c <__fp_splitA+0x1a>
    1530:	47 95       	ror	r20

00001532 <__fp_splitA>:
    1532:	88 0f       	add	r24, r24
    1534:	97 fb       	bst	r25, 7
    1536:	99 1f       	adc	r25, r25
    1538:	61 f0       	breq	.+24     	; 0x1552 <__fp_splitA+0x20>
    153a:	9f 3f       	cpi	r25, 0xFF	; 255
    153c:	79 f0       	breq	.+30     	; 0x155c <__fp_splitA+0x2a>
    153e:	87 95       	ror	r24
    1540:	08 95       	ret
    1542:	12 16       	cp	r1, r18
    1544:	13 06       	cpc	r1, r19
    1546:	14 06       	cpc	r1, r20
    1548:	55 1f       	adc	r21, r21
    154a:	f2 cf       	rjmp	.-28     	; 0x1530 <__fp_split3+0xe>
    154c:	46 95       	lsr	r20
    154e:	f1 df       	rcall	.-30     	; 0x1532 <__fp_splitA>
    1550:	08 c0       	rjmp	.+16     	; 0x1562 <__fp_splitA+0x30>
    1552:	16 16       	cp	r1, r22
    1554:	17 06       	cpc	r1, r23
    1556:	18 06       	cpc	r1, r24
    1558:	99 1f       	adc	r25, r25
    155a:	f1 cf       	rjmp	.-30     	; 0x153e <__fp_splitA+0xc>
    155c:	86 95       	lsr	r24
    155e:	71 05       	cpc	r23, r1
    1560:	61 05       	cpc	r22, r1
    1562:	08 94       	sec
    1564:	08 95       	ret

00001566 <__fp_zero>:
    1566:	e8 94       	clt

00001568 <__fp_szero>:
    1568:	bb 27       	eor	r27, r27
    156a:	66 27       	eor	r22, r22
    156c:	77 27       	eor	r23, r23
    156e:	cb 01       	movw	r24, r22
    1570:	97 f9       	bld	r25, 7
    1572:	08 95       	ret

00001574 <__gesf2>:
    1574:	0e 94 45 0a 	call	0x148a	; 0x148a <__fp_cmp>
    1578:	08 f4       	brcc	.+2      	; 0x157c <__gesf2+0x8>
    157a:	8f ef       	ldi	r24, 0xFF	; 255
    157c:	08 95       	ret

0000157e <__mulsf3>:
    157e:	0e 94 d2 0a 	call	0x15a4	; 0x15a4 <__mulsf3x>
    1582:	0c 94 80 0a 	jmp	0x1500	; 0x1500 <__fp_round>
    1586:	0e 94 72 0a 	call	0x14e4	; 0x14e4 <__fp_pscA>
    158a:	38 f0       	brcs	.+14     	; 0x159a <__mulsf3+0x1c>
    158c:	0e 94 79 0a 	call	0x14f2	; 0x14f2 <__fp_pscB>
    1590:	20 f0       	brcs	.+8      	; 0x159a <__mulsf3+0x1c>
    1592:	95 23       	and	r25, r21
    1594:	11 f0       	breq	.+4      	; 0x159a <__mulsf3+0x1c>
    1596:	0c 94 69 0a 	jmp	0x14d2	; 0x14d2 <__fp_inf>
    159a:	0c 94 6f 0a 	jmp	0x14de	; 0x14de <__fp_nan>
    159e:	11 24       	eor	r1, r1
    15a0:	0c 94 b4 0a 	jmp	0x1568	; 0x1568 <__fp_szero>

000015a4 <__mulsf3x>:
    15a4:	0e 94 91 0a 	call	0x1522	; 0x1522 <__fp_split3>
    15a8:	70 f3       	brcs	.-36     	; 0x1586 <__mulsf3+0x8>

000015aa <__mulsf3_pse>:
    15aa:	95 9f       	mul	r25, r21
    15ac:	c1 f3       	breq	.-16     	; 0x159e <__mulsf3+0x20>
    15ae:	95 0f       	add	r25, r21
    15b0:	50 e0       	ldi	r21, 0x00	; 0
    15b2:	55 1f       	adc	r21, r21
    15b4:	62 9f       	mul	r22, r18
    15b6:	f0 01       	movw	r30, r0
    15b8:	72 9f       	mul	r23, r18
    15ba:	bb 27       	eor	r27, r27
    15bc:	f0 0d       	add	r31, r0
    15be:	b1 1d       	adc	r27, r1
    15c0:	63 9f       	mul	r22, r19
    15c2:	aa 27       	eor	r26, r26
    15c4:	f0 0d       	add	r31, r0
    15c6:	b1 1d       	adc	r27, r1
    15c8:	aa 1f       	adc	r26, r26
    15ca:	64 9f       	mul	r22, r20
    15cc:	66 27       	eor	r22, r22
    15ce:	b0 0d       	add	r27, r0
    15d0:	a1 1d       	adc	r26, r1
    15d2:	66 1f       	adc	r22, r22
    15d4:	82 9f       	mul	r24, r18
    15d6:	22 27       	eor	r18, r18
    15d8:	b0 0d       	add	r27, r0
    15da:	a1 1d       	adc	r26, r1
    15dc:	62 1f       	adc	r22, r18
    15de:	73 9f       	mul	r23, r19
    15e0:	b0 0d       	add	r27, r0
    15e2:	a1 1d       	adc	r26, r1
    15e4:	62 1f       	adc	r22, r18
    15e6:	83 9f       	mul	r24, r19
    15e8:	a0 0d       	add	r26, r0
    15ea:	61 1d       	adc	r22, r1
    15ec:	22 1f       	adc	r18, r18
    15ee:	74 9f       	mul	r23, r20
    15f0:	33 27       	eor	r19, r19
    15f2:	a0 0d       	add	r26, r0
    15f4:	61 1d       	adc	r22, r1
    15f6:	23 1f       	adc	r18, r19
    15f8:	84 9f       	mul	r24, r20
    15fa:	60 0d       	add	r22, r0
    15fc:	21 1d       	adc	r18, r1
    15fe:	82 2f       	mov	r24, r18
    1600:	76 2f       	mov	r23, r22
    1602:	6a 2f       	mov	r22, r26
    1604:	11 24       	eor	r1, r1
    1606:	9f 57       	subi	r25, 0x7F	; 127
    1608:	50 40       	sbci	r21, 0x00	; 0
    160a:	9a f0       	brmi	.+38     	; 0x1632 <__mulsf3_pse+0x88>
    160c:	f1 f0       	breq	.+60     	; 0x164a <__mulsf3_pse+0xa0>
    160e:	88 23       	and	r24, r24
    1610:	4a f0       	brmi	.+18     	; 0x1624 <__mulsf3_pse+0x7a>
    1612:	ee 0f       	add	r30, r30
    1614:	ff 1f       	adc	r31, r31
    1616:	bb 1f       	adc	r27, r27
    1618:	66 1f       	adc	r22, r22
    161a:	77 1f       	adc	r23, r23
    161c:	88 1f       	adc	r24, r24
    161e:	91 50       	subi	r25, 0x01	; 1
    1620:	50 40       	sbci	r21, 0x00	; 0
    1622:	a9 f7       	brne	.-22     	; 0x160e <__mulsf3_pse+0x64>
    1624:	9e 3f       	cpi	r25, 0xFE	; 254
    1626:	51 05       	cpc	r21, r1
    1628:	80 f0       	brcs	.+32     	; 0x164a <__mulsf3_pse+0xa0>
    162a:	0c 94 69 0a 	jmp	0x14d2	; 0x14d2 <__fp_inf>
    162e:	0c 94 b4 0a 	jmp	0x1568	; 0x1568 <__fp_szero>
    1632:	5f 3f       	cpi	r21, 0xFF	; 255
    1634:	e4 f3       	brlt	.-8      	; 0x162e <__mulsf3_pse+0x84>
    1636:	98 3e       	cpi	r25, 0xE8	; 232
    1638:	d4 f3       	brlt	.-12     	; 0x162e <__mulsf3_pse+0x84>
    163a:	86 95       	lsr	r24
    163c:	77 95       	ror	r23
    163e:	67 95       	ror	r22
    1640:	b7 95       	ror	r27
    1642:	f7 95       	ror	r31
    1644:	e7 95       	ror	r30
    1646:	9f 5f       	subi	r25, 0xFF	; 255
    1648:	c1 f7       	brne	.-16     	; 0x163a <__mulsf3_pse+0x90>
    164a:	fe 2b       	or	r31, r30
    164c:	88 0f       	add	r24, r24
    164e:	91 1d       	adc	r25, r1
    1650:	96 95       	lsr	r25
    1652:	87 95       	ror	r24
    1654:	97 f9       	bld	r25, 7
    1656:	08 95       	ret

00001658 <malloc>:
    1658:	cf 93       	push	r28
    165a:	df 93       	push	r29
    165c:	82 30       	cpi	r24, 0x02	; 2
    165e:	91 05       	cpc	r25, r1
    1660:	10 f4       	brcc	.+4      	; 0x1666 <malloc+0xe>
    1662:	82 e0       	ldi	r24, 0x02	; 2
    1664:	90 e0       	ldi	r25, 0x00	; 0
    1666:	e0 91 f0 00 	lds	r30, 0x00F0
    166a:	f0 91 f1 00 	lds	r31, 0x00F1
    166e:	20 e0       	ldi	r18, 0x00	; 0
    1670:	30 e0       	ldi	r19, 0x00	; 0
    1672:	c0 e0       	ldi	r28, 0x00	; 0
    1674:	d0 e0       	ldi	r29, 0x00	; 0
    1676:	30 97       	sbiw	r30, 0x00	; 0
    1678:	11 f1       	breq	.+68     	; 0x16be <malloc+0x66>
    167a:	40 81       	ld	r20, Z
    167c:	51 81       	ldd	r21, Z+1	; 0x01
    167e:	48 17       	cp	r20, r24
    1680:	59 07       	cpc	r21, r25
    1682:	c0 f0       	brcs	.+48     	; 0x16b4 <malloc+0x5c>
    1684:	48 17       	cp	r20, r24
    1686:	59 07       	cpc	r21, r25
    1688:	61 f4       	brne	.+24     	; 0x16a2 <malloc+0x4a>
    168a:	82 81       	ldd	r24, Z+2	; 0x02
    168c:	93 81       	ldd	r25, Z+3	; 0x03
    168e:	20 97       	sbiw	r28, 0x00	; 0
    1690:	19 f0       	breq	.+6      	; 0x1698 <malloc+0x40>
    1692:	9b 83       	std	Y+3, r25	; 0x03
    1694:	8a 83       	std	Y+2, r24	; 0x02
    1696:	2b c0       	rjmp	.+86     	; 0x16ee <malloc+0x96>
    1698:	90 93 f1 00 	sts	0x00F1, r25
    169c:	80 93 f0 00 	sts	0x00F0, r24
    16a0:	26 c0       	rjmp	.+76     	; 0x16ee <malloc+0x96>
    16a2:	21 15       	cp	r18, r1
    16a4:	31 05       	cpc	r19, r1
    16a6:	19 f0       	breq	.+6      	; 0x16ae <malloc+0x56>
    16a8:	42 17       	cp	r20, r18
    16aa:	53 07       	cpc	r21, r19
    16ac:	18 f4       	brcc	.+6      	; 0x16b4 <malloc+0x5c>
    16ae:	9a 01       	movw	r18, r20
    16b0:	be 01       	movw	r22, r28
    16b2:	df 01       	movw	r26, r30
    16b4:	ef 01       	movw	r28, r30
    16b6:	02 80       	ldd	r0, Z+2	; 0x02
    16b8:	f3 81       	ldd	r31, Z+3	; 0x03
    16ba:	e0 2d       	mov	r30, r0
    16bc:	dc cf       	rjmp	.-72     	; 0x1676 <malloc+0x1e>
    16be:	21 15       	cp	r18, r1
    16c0:	31 05       	cpc	r19, r1
    16c2:	09 f1       	breq	.+66     	; 0x1706 <malloc+0xae>
    16c4:	28 1b       	sub	r18, r24
    16c6:	39 0b       	sbc	r19, r25
    16c8:	24 30       	cpi	r18, 0x04	; 4
    16ca:	31 05       	cpc	r19, r1
    16cc:	90 f4       	brcc	.+36     	; 0x16f2 <malloc+0x9a>
    16ce:	12 96       	adiw	r26, 0x02	; 2
    16d0:	8d 91       	ld	r24, X+
    16d2:	9c 91       	ld	r25, X
    16d4:	13 97       	sbiw	r26, 0x03	; 3
    16d6:	61 15       	cp	r22, r1
    16d8:	71 05       	cpc	r23, r1
    16da:	21 f0       	breq	.+8      	; 0x16e4 <malloc+0x8c>
    16dc:	fb 01       	movw	r30, r22
    16de:	93 83       	std	Z+3, r25	; 0x03
    16e0:	82 83       	std	Z+2, r24	; 0x02
    16e2:	04 c0       	rjmp	.+8      	; 0x16ec <malloc+0x94>
    16e4:	90 93 f1 00 	sts	0x00F1, r25
    16e8:	80 93 f0 00 	sts	0x00F0, r24
    16ec:	fd 01       	movw	r30, r26
    16ee:	32 96       	adiw	r30, 0x02	; 2
    16f0:	44 c0       	rjmp	.+136    	; 0x177a <malloc+0x122>
    16f2:	fd 01       	movw	r30, r26
    16f4:	e2 0f       	add	r30, r18
    16f6:	f3 1f       	adc	r31, r19
    16f8:	81 93       	st	Z+, r24
    16fa:	91 93       	st	Z+, r25
    16fc:	22 50       	subi	r18, 0x02	; 2
    16fe:	31 09       	sbc	r19, r1
    1700:	2d 93       	st	X+, r18
    1702:	3c 93       	st	X, r19
    1704:	3a c0       	rjmp	.+116    	; 0x177a <malloc+0x122>
    1706:	20 91 ee 00 	lds	r18, 0x00EE
    170a:	30 91 ef 00 	lds	r19, 0x00EF
    170e:	23 2b       	or	r18, r19
    1710:	41 f4       	brne	.+16     	; 0x1722 <malloc+0xca>
    1712:	20 91 62 00 	lds	r18, 0x0062
    1716:	30 91 63 00 	lds	r19, 0x0063
    171a:	30 93 ef 00 	sts	0x00EF, r19
    171e:	20 93 ee 00 	sts	0x00EE, r18
    1722:	20 91 60 00 	lds	r18, 0x0060
    1726:	30 91 61 00 	lds	r19, 0x0061
    172a:	21 15       	cp	r18, r1
    172c:	31 05       	cpc	r19, r1
    172e:	41 f4       	brne	.+16     	; 0x1740 <malloc+0xe8>
    1730:	2d b7       	in	r18, 0x3d	; 61
    1732:	3e b7       	in	r19, 0x3e	; 62
    1734:	40 91 64 00 	lds	r20, 0x0064
    1738:	50 91 65 00 	lds	r21, 0x0065
    173c:	24 1b       	sub	r18, r20
    173e:	35 0b       	sbc	r19, r21
    1740:	e0 91 ee 00 	lds	r30, 0x00EE
    1744:	f0 91 ef 00 	lds	r31, 0x00EF
    1748:	e2 17       	cp	r30, r18
    174a:	f3 07       	cpc	r31, r19
    174c:	a0 f4       	brcc	.+40     	; 0x1776 <malloc+0x11e>
    174e:	2e 1b       	sub	r18, r30
    1750:	3f 0b       	sbc	r19, r31
    1752:	28 17       	cp	r18, r24
    1754:	39 07       	cpc	r19, r25
    1756:	78 f0       	brcs	.+30     	; 0x1776 <malloc+0x11e>
    1758:	ac 01       	movw	r20, r24
    175a:	4e 5f       	subi	r20, 0xFE	; 254
    175c:	5f 4f       	sbci	r21, 0xFF	; 255
    175e:	24 17       	cp	r18, r20
    1760:	35 07       	cpc	r19, r21
    1762:	48 f0       	brcs	.+18     	; 0x1776 <malloc+0x11e>
    1764:	4e 0f       	add	r20, r30
    1766:	5f 1f       	adc	r21, r31
    1768:	50 93 ef 00 	sts	0x00EF, r21
    176c:	40 93 ee 00 	sts	0x00EE, r20
    1770:	81 93       	st	Z+, r24
    1772:	91 93       	st	Z+, r25
    1774:	02 c0       	rjmp	.+4      	; 0x177a <malloc+0x122>
    1776:	e0 e0       	ldi	r30, 0x00	; 0
    1778:	f0 e0       	ldi	r31, 0x00	; 0
    177a:	cf 01       	movw	r24, r30
    177c:	df 91       	pop	r29
    177e:	cf 91       	pop	r28
    1780:	08 95       	ret

00001782 <free>:
    1782:	0f 93       	push	r16
    1784:	1f 93       	push	r17
    1786:	cf 93       	push	r28
    1788:	df 93       	push	r29
    178a:	00 97       	sbiw	r24, 0x00	; 0
    178c:	09 f4       	brne	.+2      	; 0x1790 <free+0xe>
    178e:	8c c0       	rjmp	.+280    	; 0x18a8 <free+0x126>
    1790:	fc 01       	movw	r30, r24
    1792:	32 97       	sbiw	r30, 0x02	; 2
    1794:	13 82       	std	Z+3, r1	; 0x03
    1796:	12 82       	std	Z+2, r1	; 0x02
    1798:	00 91 f0 00 	lds	r16, 0x00F0
    179c:	10 91 f1 00 	lds	r17, 0x00F1
    17a0:	01 15       	cp	r16, r1
    17a2:	11 05       	cpc	r17, r1
    17a4:	81 f4       	brne	.+32     	; 0x17c6 <free+0x44>
    17a6:	20 81       	ld	r18, Z
    17a8:	31 81       	ldd	r19, Z+1	; 0x01
    17aa:	82 0f       	add	r24, r18
    17ac:	93 1f       	adc	r25, r19
    17ae:	20 91 ee 00 	lds	r18, 0x00EE
    17b2:	30 91 ef 00 	lds	r19, 0x00EF
    17b6:	28 17       	cp	r18, r24
    17b8:	39 07       	cpc	r19, r25
    17ba:	79 f5       	brne	.+94     	; 0x181a <free+0x98>
    17bc:	f0 93 ef 00 	sts	0x00EF, r31
    17c0:	e0 93 ee 00 	sts	0x00EE, r30
    17c4:	71 c0       	rjmp	.+226    	; 0x18a8 <free+0x126>
    17c6:	d8 01       	movw	r26, r16
    17c8:	40 e0       	ldi	r20, 0x00	; 0
    17ca:	50 e0       	ldi	r21, 0x00	; 0
    17cc:	ae 17       	cp	r26, r30
    17ce:	bf 07       	cpc	r27, r31
    17d0:	50 f4       	brcc	.+20     	; 0x17e6 <free+0x64>
    17d2:	12 96       	adiw	r26, 0x02	; 2
    17d4:	2d 91       	ld	r18, X+
    17d6:	3c 91       	ld	r19, X
    17d8:	13 97       	sbiw	r26, 0x03	; 3
    17da:	ad 01       	movw	r20, r26
    17dc:	21 15       	cp	r18, r1
    17de:	31 05       	cpc	r19, r1
    17e0:	09 f1       	breq	.+66     	; 0x1824 <free+0xa2>
    17e2:	d9 01       	movw	r26, r18
    17e4:	f3 cf       	rjmp	.-26     	; 0x17cc <free+0x4a>
    17e6:	9d 01       	movw	r18, r26
    17e8:	da 01       	movw	r26, r20
    17ea:	33 83       	std	Z+3, r19	; 0x03
    17ec:	22 83       	std	Z+2, r18	; 0x02
    17ee:	60 81       	ld	r22, Z
    17f0:	71 81       	ldd	r23, Z+1	; 0x01
    17f2:	86 0f       	add	r24, r22
    17f4:	97 1f       	adc	r25, r23
    17f6:	82 17       	cp	r24, r18
    17f8:	93 07       	cpc	r25, r19
    17fa:	69 f4       	brne	.+26     	; 0x1816 <free+0x94>
    17fc:	ec 01       	movw	r28, r24
    17fe:	28 81       	ld	r18, Y
    1800:	39 81       	ldd	r19, Y+1	; 0x01
    1802:	26 0f       	add	r18, r22
    1804:	37 1f       	adc	r19, r23
    1806:	2e 5f       	subi	r18, 0xFE	; 254
    1808:	3f 4f       	sbci	r19, 0xFF	; 255
    180a:	31 83       	std	Z+1, r19	; 0x01
    180c:	20 83       	st	Z, r18
    180e:	8a 81       	ldd	r24, Y+2	; 0x02
    1810:	9b 81       	ldd	r25, Y+3	; 0x03
    1812:	93 83       	std	Z+3, r25	; 0x03
    1814:	82 83       	std	Z+2, r24	; 0x02
    1816:	45 2b       	or	r20, r21
    1818:	29 f4       	brne	.+10     	; 0x1824 <free+0xa2>
    181a:	f0 93 f1 00 	sts	0x00F1, r31
    181e:	e0 93 f0 00 	sts	0x00F0, r30
    1822:	42 c0       	rjmp	.+132    	; 0x18a8 <free+0x126>
    1824:	13 96       	adiw	r26, 0x03	; 3
    1826:	fc 93       	st	X, r31
    1828:	ee 93       	st	-X, r30
    182a:	12 97       	sbiw	r26, 0x02	; 2
    182c:	ed 01       	movw	r28, r26
    182e:	49 91       	ld	r20, Y+
    1830:	59 91       	ld	r21, Y+
    1832:	9e 01       	movw	r18, r28
    1834:	24 0f       	add	r18, r20
    1836:	35 1f       	adc	r19, r21
    1838:	e2 17       	cp	r30, r18
    183a:	f3 07       	cpc	r31, r19
    183c:	71 f4       	brne	.+28     	; 0x185a <free+0xd8>
    183e:	80 81       	ld	r24, Z
    1840:	91 81       	ldd	r25, Z+1	; 0x01
    1842:	84 0f       	add	r24, r20
    1844:	95 1f       	adc	r25, r21
    1846:	02 96       	adiw	r24, 0x02	; 2
    1848:	11 96       	adiw	r26, 0x01	; 1
    184a:	9c 93       	st	X, r25
    184c:	8e 93       	st	-X, r24
    184e:	82 81       	ldd	r24, Z+2	; 0x02
    1850:	93 81       	ldd	r25, Z+3	; 0x03
    1852:	13 96       	adiw	r26, 0x03	; 3
    1854:	9c 93       	st	X, r25
    1856:	8e 93       	st	-X, r24
    1858:	12 97       	sbiw	r26, 0x02	; 2
    185a:	e0 e0       	ldi	r30, 0x00	; 0
    185c:	f0 e0       	ldi	r31, 0x00	; 0
    185e:	d8 01       	movw	r26, r16
    1860:	12 96       	adiw	r26, 0x02	; 2
    1862:	8d 91       	ld	r24, X+
    1864:	9c 91       	ld	r25, X
    1866:	13 97       	sbiw	r26, 0x03	; 3
    1868:	00 97       	sbiw	r24, 0x00	; 0
    186a:	19 f0       	breq	.+6      	; 0x1872 <free+0xf0>
    186c:	f8 01       	movw	r30, r16
    186e:	8c 01       	movw	r16, r24
    1870:	f6 cf       	rjmp	.-20     	; 0x185e <free+0xdc>
    1872:	8d 91       	ld	r24, X+
    1874:	9c 91       	ld	r25, X
    1876:	98 01       	movw	r18, r16
    1878:	2e 5f       	subi	r18, 0xFE	; 254
    187a:	3f 4f       	sbci	r19, 0xFF	; 255
    187c:	82 0f       	add	r24, r18
    187e:	93 1f       	adc	r25, r19
    1880:	20 91 ee 00 	lds	r18, 0x00EE
    1884:	30 91 ef 00 	lds	r19, 0x00EF
    1888:	28 17       	cp	r18, r24
    188a:	39 07       	cpc	r19, r25
    188c:	69 f4       	brne	.+26     	; 0x18a8 <free+0x126>
    188e:	30 97       	sbiw	r30, 0x00	; 0
    1890:	29 f4       	brne	.+10     	; 0x189c <free+0x11a>
    1892:	10 92 f1 00 	sts	0x00F1, r1
    1896:	10 92 f0 00 	sts	0x00F0, r1
    189a:	02 c0       	rjmp	.+4      	; 0x18a0 <free+0x11e>
    189c:	13 82       	std	Z+3, r1	; 0x03
    189e:	12 82       	std	Z+2, r1	; 0x02
    18a0:	10 93 ef 00 	sts	0x00EF, r17
    18a4:	00 93 ee 00 	sts	0x00EE, r16
    18a8:	df 91       	pop	r29
    18aa:	cf 91       	pop	r28
    18ac:	1f 91       	pop	r17
    18ae:	0f 91       	pop	r16
    18b0:	08 95       	ret

000018b2 <__do_global_dtors>:
    18b2:	10 e0       	ldi	r17, 0x00	; 0
    18b4:	cd e2       	ldi	r28, 0x2D	; 45
    18b6:	d0 e0       	ldi	r29, 0x00	; 0
    18b8:	04 c0       	rjmp	.+8      	; 0x18c2 <__do_global_dtors+0x10>
    18ba:	fe 01       	movw	r30, r28
    18bc:	0e 94 5a 09 	call	0x12b4	; 0x12b4 <__tablejump2__>
    18c0:	21 96       	adiw	r28, 0x01	; 1
    18c2:	ce 32       	cpi	r28, 0x2E	; 46
    18c4:	d1 07       	cpc	r29, r17
    18c6:	c9 f7       	brne	.-14     	; 0x18ba <__do_global_dtors+0x8>
    18c8:	f8 94       	cli

000018ca <__stop_program>:
    18ca:	ff cf       	rjmp	.-2      	; 0x18ca <__stop_program>
