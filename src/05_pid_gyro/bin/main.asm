
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
      4c:	0c 94 6e 08 	jmp	0x10dc	; 0x10dc <__vector_19>
      50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
      54:	6f 05       	cpc	r22, r15
      56:	b2 08       	sbc	r11, r2
      58:	b6 08       	sbc	r11, r6

0000005a <__ctors_end>:
      5a:	ba 08       	sbc	r11, r10

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
      6e:	e8 ec       	ldi	r30, 0xC8	; 200
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
      9a:	0e 94 58 09 	call	0x12b0	; 0x12b0 <__tablejump2__>
      9e:	ca 32       	cpi	r28, 0x2A	; 42
      a0:	d1 07       	cpc	r29, r17
      a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
      a4:	0e 94 f1 00 	call	0x1e2	; 0x1e2 <main>
      a8:	0c 94 57 0c 	jmp	0x18ae	; 0x18ae <__do_global_dtors>

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
      ca:	0e 94 80 05 	call	0xb00	; 0xb00 <_ZN4Gyro4readEb>
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
      e8:	0e 94 08 0a 	call	0x1410	; 0x1410 <__floatsisf>
      ec:	2d ec       	ldi	r18, 0xCD	; 205
      ee:	3c ec       	ldi	r19, 0xCC	; 204
      f0:	4c ec       	ldi	r20, 0xCC	; 204
      f2:	5d e3       	ldi	r21, 0x3D	; 61
      f4:	0e 94 bd 0a 	call	0x157a	; 0x157a <__mulsf3>
      f8:	9b 01       	movw	r18, r22
      fa:	ac 01       	movw	r20, r24
      fc:	60 e0       	ldi	r22, 0x00	; 0
      fe:	70 e0       	ldi	r23, 0x00	; 0
     100:	cb 01       	movw	r24, r22
     102:	0e 94 5e 09 	call	0x12bc	; 0x12bc <__subsf3>
     106:	ab 01       	movw	r20, r22
     108:	bc 01       	movw	r22, r24
     10a:	ce 01       	movw	r24, r28
     10c:	cd 96       	adiw	r24, 0x3d	; 61
     10e:	0e 94 18 02 	call	0x430	; 0x430 <_ZN3PID7processEf>
     112:	6b 01       	movw	r12, r22
     114:	7c 01       	movw	r14, r24
     116:	9b 01       	movw	r18, r22
     118:	ac 01       	movw	r20, r24
     11a:	60 e0       	ldi	r22, 0x00	; 0
     11c:	70 e0       	ldi	r23, 0x00	; 0
     11e:	cb 01       	movw	r24, r22
     120:	0e 94 5e 09 	call	0x12bc	; 0x12bc <__subsf3>
     124:	0e 94 d0 09 	call	0x13a0	; 0x13a0 <__fixsfsi>
     128:	4b 01       	movw	r8, r22
     12a:	5c 01       	movw	r10, r24
     12c:	20 e0       	ldi	r18, 0x00	; 0
     12e:	30 e0       	ldi	r19, 0x00	; 0
     130:	a9 01       	movw	r20, r18
     132:	c7 01       	movw	r24, r14
     134:	b6 01       	movw	r22, r12
     136:	0e 94 5f 09 	call	0x12be	; 0x12be <__addsf3>
     13a:	0e 94 d0 09 	call	0x13a0	; 0x13a0 <__fixsfsi>
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
     158:	0c 94 b8 02 	jmp	0x570	; 0x570 <_ZN5Motor3runEii>

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
     16e:	0e 94 ae 01 	call	0x35c	; 0x35c <_ZN3PIDD1Ev>
     172:	ce 01       	movw	r24, r28
     174:	03 96       	adiw	r24, 0x03	; 3
     176:	0e 94 7f 05 	call	0xafe	; 0xafe <_ZN4GyroD1Ev>
     17a:	ce 01       	movw	r24, r28
     17c:	02 96       	adiw	r24, 0x02	; 2
     17e:	df 91       	pop	r29
     180:	cf 91       	pop	r28
     182:	0c 94 b7 02 	jmp	0x56e	; 0x56e <_ZN5MotorD1Ev>

00000186 <_ZN13StabilizationD0Ev>:
     186:	cf 93       	push	r28
     188:	df 93       	push	r29
     18a:	ec 01       	movw	r28, r24
     18c:	0e 94 ae 00 	call	0x15c	; 0x15c <_ZN13StabilizationD1Ev>
     190:	ce 01       	movw	r24, r28
     192:	df 91       	pop	r29
     194:	cf 91       	pop	r28
     196:	0c 94 7c 05 	jmp	0xaf8	; 0xaf8 <_ZdlPv>

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
     1b4:	0e 94 f1 08 	call	0x11e2	; 0x11e2 <_ZN10LEDDisplay11display_decEh>
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
     1d0:	0e 94 f1 08 	call	0x11e2	; 0x11e2 <_ZN10LEDDisplay11display_decEh>
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
     210:	0e 94 d9 08 	call	0x11b2	; 0x11b2 <_ZN10LEDDisplayC1Ev>
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
     232:	0e 94 2f 08 	call	0x105e	; 0x105e <_ZN5Timer8add_taskEP4Taskj>
     236:	84 e7       	ldi	r24, 0x74	; 116
     238:	90 e0       	ldi	r25, 0x00	; 0
     23a:	9a 83       	std	Y+2, r25	; 0x02
     23c:	89 83       	std	Y+1, r24	; 0x01
     23e:	ce 01       	movw	r24, r28
     240:	03 96       	adiw	r24, 0x03	; 3
     242:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5MotorC1Ev>
     246:	ce 01       	movw	r24, r28
     248:	04 96       	adiw	r24, 0x04	; 4
     24a:	0e 94 7e 05 	call	0xafc	; 0xafc <_ZN4GyroC1Ev>
     24e:	ce 01       	movw	r24, r28
     250:	ce 96       	adiw	r24, 0x3e	; 62
     252:	0e 94 88 01 	call	0x310	; 0x310 <_ZN3PIDC1Ev>
     256:	6c ea       	ldi	r22, 0xAC	; 172
     258:	70 e0       	ldi	r23, 0x00	; 0
     25a:	ce 01       	movw	r24, r28
     25c:	04 96       	adiw	r24, 0x04	; 4
     25e:	0e 94 16 07 	call	0xe2c	; 0xe2c <_ZN4Gyro4initEP13I2C_Interface>
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
     278:	43 e3       	ldi	r20, 0x33	; 51
     27a:	53 e3       	ldi	r21, 0x33	; 51
     27c:	63 e3       	ldi	r22, 0x33	; 51
     27e:	7f e3       	ldi	r23, 0x3F	; 63
     280:	ce 01       	movw	r24, r28
     282:	ce 96       	adiw	r24, 0x3e	; 62
     284:	0e 94 af 01 	call	0x35e	; 0x35e <_ZN3PID4initEffff>
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
     29c:	0e 94 51 08 	call	0x10a2	; 0x10a2 <_ZN5Timer4mainEv>
     2a0:	f7 cf       	rjmp	.-18     	; 0x290 <main+0xae>
     2a2:	b3 99       	sbic	0x16, 3	; 22
     2a4:	15 c0       	rjmp	.+42     	; 0x2d0 <main+0xee>
     2a6:	81 2c       	mov	r8, r1
     2a8:	91 2c       	mov	r9, r1
     2aa:	8f e7       	ldi	r24, 0x7F	; 127
     2ac:	a8 2e       	mov	r10, r24
     2ae:	83 e4       	ldi	r24, 0x43	; 67
     2b0:	b8 2e       	mov	r11, r24
     2b2:	c1 2c       	mov	r12, r1
     2b4:	d1 2c       	mov	r13, r1
     2b6:	90 e8       	ldi	r25, 0x80	; 128
     2b8:	e9 2e       	mov	r14, r25
     2ba:	9f e3       	ldi	r25, 0x3F	; 63
     2bc:	f9 2e       	mov	r15, r25
     2be:	00 e0       	ldi	r16, 0x00	; 0
     2c0:	10 e0       	ldi	r17, 0x00	; 0
     2c2:	98 01       	movw	r18, r16
     2c4:	b7 01       	movw	r22, r14
     2c6:	a6 01       	movw	r20, r12
     2c8:	ce 01       	movw	r24, r28
     2ca:	ce 96       	adiw	r24, 0x3e	; 62
     2cc:	0e 94 af 01 	call	0x35e	; 0x35e <_ZN3PID4initEffff>
     2d0:	4a e0       	ldi	r20, 0x0A	; 10
     2d2:	50 e0       	ldi	r21, 0x00	; 0
     2d4:	be 01       	movw	r22, r28
     2d6:	6f 5f       	subi	r22, 0xFF	; 255
     2d8:	7f 4f       	sbci	r23, 0xFF	; 255
     2da:	80 eb       	ldi	r24, 0xB0	; 176
     2dc:	90 e0       	ldi	r25, 0x00	; 0
     2de:	0e 94 2f 08 	call	0x105e	; 0x105e <_ZN5Timer8add_taskEP4Taskj>
     2e2:	80 eb       	ldi	r24, 0xB0	; 176
     2e4:	90 e0       	ldi	r25, 0x00	; 0
     2e6:	0e 94 51 08 	call	0x10a2	; 0x10a2 <_ZN5Timer4mainEv>
     2ea:	fb cf       	rjmp	.-10     	; 0x2e2 <main+0x100>

000002ec <_ZN5BlinkD1Ev>:
     2ec:	2a e6       	ldi	r18, 0x6A	; 106
     2ee:	30 e0       	ldi	r19, 0x00	; 0
     2f0:	fc 01       	movw	r30, r24
     2f2:	31 83       	std	Z+1, r19	; 0x01
     2f4:	20 83       	st	Z, r18
     2f6:	05 96       	adiw	r24, 0x05	; 5
     2f8:	0c 94 be 08 	jmp	0x117c	; 0x117c <_ZN10LEDDisplayD1Ev>

000002fc <_ZN5BlinkD0Ev>:
     2fc:	cf 93       	push	r28
     2fe:	df 93       	push	r29
     300:	ec 01       	movw	r28, r24
     302:	0e 94 76 01 	call	0x2ec	; 0x2ec <_ZN5BlinkD1Ev>
     306:	ce 01       	movw	r24, r28
     308:	df 91       	pop	r29
     30a:	cf 91       	pop	r28
     30c:	0c 94 7c 05 	jmp	0xaf8	; 0xaf8 <_ZdlPv>

00000310 <_ZN3PIDC1Ev>:
     310:	fc 01       	movw	r30, r24
     312:	10 82       	st	Z, r1
     314:	11 82       	std	Z+1, r1	; 0x01
     316:	12 82       	std	Z+2, r1	; 0x02
     318:	13 82       	std	Z+3, r1	; 0x03
     31a:	14 82       	std	Z+4, r1	; 0x04
     31c:	15 82       	std	Z+5, r1	; 0x05
     31e:	16 82       	std	Z+6, r1	; 0x06
     320:	17 82       	std	Z+7, r1	; 0x07
     322:	10 86       	std	Z+8, r1	; 0x08
     324:	11 86       	std	Z+9, r1	; 0x09
     326:	12 86       	std	Z+10, r1	; 0x0a
     328:	13 86       	std	Z+11, r1	; 0x0b
     32a:	14 86       	std	Z+12, r1	; 0x0c
     32c:	15 86       	std	Z+13, r1	; 0x0d
     32e:	16 86       	std	Z+14, r1	; 0x0e
     330:	17 86       	std	Z+15, r1	; 0x0f
     332:	10 8a       	std	Z+16, r1	; 0x10
     334:	11 8a       	std	Z+17, r1	; 0x11
     336:	12 8a       	std	Z+18, r1	; 0x12
     338:	13 8a       	std	Z+19, r1	; 0x13
     33a:	14 8a       	std	Z+20, r1	; 0x14
     33c:	15 8a       	std	Z+21, r1	; 0x15
     33e:	16 8a       	std	Z+22, r1	; 0x16
     340:	17 8a       	std	Z+23, r1	; 0x17
     342:	80 e0       	ldi	r24, 0x00	; 0
     344:	90 e0       	ldi	r25, 0x00	; 0
     346:	a0 e0       	ldi	r26, 0x00	; 0
     348:	b0 e8       	ldi	r27, 0x80	; 128
     34a:	80 8f       	std	Z+24, r24	; 0x18
     34c:	91 8f       	std	Z+25, r25	; 0x19
     34e:	a2 8f       	std	Z+26, r26	; 0x1a
     350:	b3 8f       	std	Z+27, r27	; 0x1b
     352:	14 8e       	std	Z+28, r1	; 0x1c
     354:	15 8e       	std	Z+29, r1	; 0x1d
     356:	16 8e       	std	Z+30, r1	; 0x1e
     358:	17 8e       	std	Z+31, r1	; 0x1f
     35a:	08 95       	ret

0000035c <_ZN3PIDD1Ev>:
     35c:	08 95       	ret

0000035e <_ZN3PID4initEffff>:
     35e:	2f 92       	push	r2
     360:	3f 92       	push	r3
     362:	4f 92       	push	r4
     364:	5f 92       	push	r5
     366:	6f 92       	push	r6
     368:	7f 92       	push	r7
     36a:	8f 92       	push	r8
     36c:	9f 92       	push	r9
     36e:	af 92       	push	r10
     370:	bf 92       	push	r11
     372:	cf 92       	push	r12
     374:	df 92       	push	r13
     376:	ef 92       	push	r14
     378:	ff 92       	push	r15
     37a:	0f 93       	push	r16
     37c:	1f 93       	push	r17
     37e:	cf 93       	push	r28
     380:	df 93       	push	r29
     382:	cd b7       	in	r28, 0x3d	; 61
     384:	de b7       	in	r29, 0x3e	; 62
     386:	3c 01       	movw	r6, r24
     388:	1a 01       	movw	r2, r20
     38a:	2b 01       	movw	r4, r22
     38c:	fc 01       	movw	r30, r24
     38e:	10 82       	st	Z, r1
     390:	11 82       	std	Z+1, r1	; 0x01
     392:	12 82       	std	Z+2, r1	; 0x02
     394:	13 82       	std	Z+3, r1	; 0x03
     396:	84 82       	std	Z+4, r8	; 0x04
     398:	95 82       	std	Z+5, r9	; 0x05
     39a:	a6 82       	std	Z+6, r10	; 0x06
     39c:	b7 82       	std	Z+7, r11	; 0x07
     39e:	10 86       	std	Z+8, r1	; 0x08
     3a0:	11 86       	std	Z+9, r1	; 0x09
     3a2:	12 86       	std	Z+10, r1	; 0x0a
     3a4:	13 86       	std	Z+11, r1	; 0x0b
     3a6:	14 86       	std	Z+12, r1	; 0x0c
     3a8:	15 86       	std	Z+13, r1	; 0x0d
     3aa:	16 86       	std	Z+14, r1	; 0x0e
     3ac:	17 86       	std	Z+15, r1	; 0x0f
     3ae:	10 8a       	std	Z+16, r1	; 0x10
     3b0:	11 8a       	std	Z+17, r1	; 0x11
     3b2:	12 8a       	std	Z+18, r1	; 0x12
     3b4:	13 8a       	std	Z+19, r1	; 0x13
     3b6:	a9 01       	movw	r20, r18
     3b8:	98 01       	movw	r18, r16
     3ba:	c2 01       	movw	r24, r4
     3bc:	b1 01       	movw	r22, r2
     3be:	0e 94 5f 09 	call	0x12be	; 0x12be <__addsf3>
     3c2:	a7 01       	movw	r20, r14
     3c4:	96 01       	movw	r18, r12
     3c6:	0e 94 5f 09 	call	0x12be	; 0x12be <__addsf3>
     3ca:	f3 01       	movw	r30, r6
     3cc:	64 8b       	std	Z+20, r22	; 0x14
     3ce:	75 8b       	std	Z+21, r23	; 0x15
     3d0:	86 8b       	std	Z+22, r24	; 0x16
     3d2:	97 8b       	std	Z+23, r25	; 0x17
     3d4:	52 01       	movw	r10, r4
     3d6:	41 01       	movw	r8, r2
     3d8:	b7 fa       	bst	r11, 7
     3da:	b0 94       	com	r11
     3dc:	b7 f8       	bld	r11, 7
     3de:	b0 94       	com	r11
     3e0:	a7 01       	movw	r20, r14
     3e2:	96 01       	movw	r18, r12
     3e4:	c7 01       	movw	r24, r14
     3e6:	b6 01       	movw	r22, r12
     3e8:	0e 94 5f 09 	call	0x12be	; 0x12be <__addsf3>
     3ec:	9b 01       	movw	r18, r22
     3ee:	ac 01       	movw	r20, r24
     3f0:	c5 01       	movw	r24, r10
     3f2:	b4 01       	movw	r22, r8
     3f4:	0e 94 5e 09 	call	0x12bc	; 0x12bc <__subsf3>
     3f8:	f3 01       	movw	r30, r6
     3fa:	60 8f       	std	Z+24, r22	; 0x18
     3fc:	71 8f       	std	Z+25, r23	; 0x19
     3fe:	82 8f       	std	Z+26, r24	; 0x1a
     400:	93 8f       	std	Z+27, r25	; 0x1b
     402:	c4 8e       	std	Z+28, r12	; 0x1c
     404:	d5 8e       	std	Z+29, r13	; 0x1d
     406:	e6 8e       	std	Z+30, r14	; 0x1e
     408:	f7 8e       	std	Z+31, r15	; 0x1f
     40a:	df 91       	pop	r29
     40c:	cf 91       	pop	r28
     40e:	1f 91       	pop	r17
     410:	0f 91       	pop	r16
     412:	ff 90       	pop	r15
     414:	ef 90       	pop	r14
     416:	df 90       	pop	r13
     418:	cf 90       	pop	r12
     41a:	bf 90       	pop	r11
     41c:	af 90       	pop	r10
     41e:	9f 90       	pop	r9
     420:	8f 90       	pop	r8
     422:	7f 90       	pop	r7
     424:	6f 90       	pop	r6
     426:	5f 90       	pop	r5
     428:	4f 90       	pop	r4
     42a:	3f 90       	pop	r3
     42c:	2f 90       	pop	r2
     42e:	08 95       	ret

00000430 <_ZN3PID7processEf>:
     430:	4f 92       	push	r4
     432:	5f 92       	push	r5
     434:	6f 92       	push	r6
     436:	7f 92       	push	r7
     438:	8f 92       	push	r8
     43a:	9f 92       	push	r9
     43c:	af 92       	push	r10
     43e:	bf 92       	push	r11
     440:	cf 92       	push	r12
     442:	df 92       	push	r13
     444:	ef 92       	push	r14
     446:	ff 92       	push	r15
     448:	cf 93       	push	r28
     44a:	df 93       	push	r29
     44c:	ec 01       	movw	r28, r24
     44e:	cb 01       	movw	r24, r22
     450:	ba 01       	movw	r22, r20
     452:	cc 84       	ldd	r12, Y+12	; 0x0c
     454:	dd 84       	ldd	r13, Y+13	; 0x0d
     456:	ee 84       	ldd	r14, Y+14	; 0x0e
     458:	ff 84       	ldd	r15, Y+15	; 0x0f
     45a:	c8 8a       	std	Y+16, r12	; 0x10
     45c:	d9 8a       	std	Y+17, r13	; 0x11
     45e:	ea 8a       	std	Y+18, r14	; 0x12
     460:	fb 8a       	std	Y+19, r15	; 0x13
     462:	88 84       	ldd	r8, Y+8	; 0x08
     464:	99 84       	ldd	r9, Y+9	; 0x09
     466:	aa 84       	ldd	r10, Y+10	; 0x0a
     468:	bb 84       	ldd	r11, Y+11	; 0x0b
     46a:	8c 86       	std	Y+12, r8	; 0x0c
     46c:	9d 86       	std	Y+13, r9	; 0x0d
     46e:	ae 86       	std	Y+14, r10	; 0x0e
     470:	bf 86       	std	Y+15, r11	; 0x0f
     472:	68 87       	std	Y+8, r22	; 0x08
     474:	79 87       	std	Y+9, r23	; 0x09
     476:	8a 87       	std	Y+10, r24	; 0x0a
     478:	9b 87       	std	Y+11, r25	; 0x0b
     47a:	2c 89       	ldd	r18, Y+20	; 0x14
     47c:	3d 89       	ldd	r19, Y+21	; 0x15
     47e:	4e 89       	ldd	r20, Y+22	; 0x16
     480:	5f 89       	ldd	r21, Y+23	; 0x17
     482:	0e 94 bd 0a 	call	0x157a	; 0x157a <__mulsf3>
     486:	2b 01       	movw	r4, r22
     488:	3c 01       	movw	r6, r24
     48a:	28 8d       	ldd	r18, Y+24	; 0x18
     48c:	39 8d       	ldd	r19, Y+25	; 0x19
     48e:	4a 8d       	ldd	r20, Y+26	; 0x1a
     490:	5b 8d       	ldd	r21, Y+27	; 0x1b
     492:	c5 01       	movw	r24, r10
     494:	b4 01       	movw	r22, r8
     496:	0e 94 bd 0a 	call	0x157a	; 0x157a <__mulsf3>
     49a:	9b 01       	movw	r18, r22
     49c:	ac 01       	movw	r20, r24
     49e:	c3 01       	movw	r24, r6
     4a0:	b2 01       	movw	r22, r4
     4a2:	0e 94 5f 09 	call	0x12be	; 0x12be <__addsf3>
     4a6:	4b 01       	movw	r8, r22
     4a8:	5c 01       	movw	r10, r24
     4aa:	2c 8d       	ldd	r18, Y+28	; 0x1c
     4ac:	3d 8d       	ldd	r19, Y+29	; 0x1d
     4ae:	4e 8d       	ldd	r20, Y+30	; 0x1e
     4b0:	5f 8d       	ldd	r21, Y+31	; 0x1f
     4b2:	c7 01       	movw	r24, r14
     4b4:	b6 01       	movw	r22, r12
     4b6:	0e 94 bd 0a 	call	0x157a	; 0x157a <__mulsf3>
     4ba:	9b 01       	movw	r18, r22
     4bc:	ac 01       	movw	r20, r24
     4be:	c5 01       	movw	r24, r10
     4c0:	b4 01       	movw	r22, r8
     4c2:	0e 94 5f 09 	call	0x12be	; 0x12be <__addsf3>
     4c6:	28 81       	ld	r18, Y
     4c8:	39 81       	ldd	r19, Y+1	; 0x01
     4ca:	4a 81       	ldd	r20, Y+2	; 0x02
     4cc:	5b 81       	ldd	r21, Y+3	; 0x03
     4ce:	0e 94 5f 09 	call	0x12be	; 0x12be <__addsf3>
     4d2:	68 83       	st	Y, r22
     4d4:	79 83       	std	Y+1, r23	; 0x01
     4d6:	8a 83       	std	Y+2, r24	; 0x02
     4d8:	9b 83       	std	Y+3, r25	; 0x03
     4da:	cc 80       	ldd	r12, Y+4	; 0x04
     4dc:	dd 80       	ldd	r13, Y+5	; 0x05
     4de:	ee 80       	ldd	r14, Y+6	; 0x06
     4e0:	ff 80       	ldd	r15, Y+7	; 0x07
     4e2:	a7 01       	movw	r20, r14
     4e4:	96 01       	movw	r18, r12
     4e6:	0e 94 b8 0a 	call	0x1570	; 0x1570 <__gesf2>
     4ea:	18 16       	cp	r1, r24
     4ec:	24 f4       	brge	.+8      	; 0x4f6 <__stack+0x97>
     4ee:	c8 82       	st	Y, r12
     4f0:	d9 82       	std	Y+1, r13	; 0x01
     4f2:	ea 82       	std	Y+2, r14	; 0x02
     4f4:	fb 82       	std	Y+3, r15	; 0x03
     4f6:	f7 fa       	bst	r15, 7
     4f8:	f0 94       	com	r15
     4fa:	f7 f8       	bld	r15, 7
     4fc:	f0 94       	com	r15
     4fe:	a7 01       	movw	r20, r14
     500:	96 01       	movw	r18, r12
     502:	68 81       	ld	r22, Y
     504:	79 81       	ldd	r23, Y+1	; 0x01
     506:	8a 81       	ldd	r24, Y+2	; 0x02
     508:	9b 81       	ldd	r25, Y+3	; 0x03
     50a:	0e 94 cb 09 	call	0x1396	; 0x1396 <__cmpsf2>
     50e:	87 ff       	sbrs	r24, 7
     510:	04 c0       	rjmp	.+8      	; 0x51a <__stack+0xbb>
     512:	c8 82       	st	Y, r12
     514:	d9 82       	std	Y+1, r13	; 0x01
     516:	ea 82       	std	Y+2, r14	; 0x02
     518:	fb 82       	std	Y+3, r15	; 0x03
     51a:	68 81       	ld	r22, Y
     51c:	79 81       	ldd	r23, Y+1	; 0x01
     51e:	8a 81       	ldd	r24, Y+2	; 0x02
     520:	9b 81       	ldd	r25, Y+3	; 0x03
     522:	df 91       	pop	r29
     524:	cf 91       	pop	r28
     526:	ff 90       	pop	r15
     528:	ef 90       	pop	r14
     52a:	df 90       	pop	r13
     52c:	cf 90       	pop	r12
     52e:	bf 90       	pop	r11
     530:	af 90       	pop	r10
     532:	9f 90       	pop	r9
     534:	8f 90       	pop	r8
     536:	7f 90       	pop	r7
     538:	6f 90       	pop	r6
     53a:	5f 90       	pop	r5
     53c:	4f 90       	pop	r4
     53e:	08 95       	ret

00000540 <_ZN5USARTC1Ev>:
     540:	10 bc       	out	0x20, r1	; 32
     542:	80 e4       	ldi	r24, 0x40	; 64
     544:	89 b9       	out	0x09, r24	; 9
     546:	80 b5       	in	r24, 0x20	; 32
     548:	86 68       	ori	r24, 0x86	; 134
     54a:	80 bd       	out	0x20, r24	; 32
     54c:	8a b1       	in	r24, 0x0a	; 10
     54e:	88 61       	ori	r24, 0x18	; 24
     550:	8a b9       	out	0x0a, r24	; 10
     552:	08 95       	ret

00000554 <_ZN5USARTD1Ev>:
     554:	08 95       	ret

00000556 <_ZN5MotorC1Ev>:
     556:	80 ef       	ldi	r24, 0xF0	; 240
     558:	81 bb       	out	0x11, r24	; 17
     55a:	95 98       	cbi	0x12, 5	; 18
     55c:	81 ea       	ldi	r24, 0xA1	; 161
     55e:	8f bd       	out	0x2f, r24	; 47
     560:	81 e0       	ldi	r24, 0x01	; 1
     562:	8e bd       	out	0x2e, r24	; 46
     564:	1b bc       	out	0x2b, r1	; 43
     566:	1a bc       	out	0x2a, r1	; 42
     568:	19 bc       	out	0x29, r1	; 41
     56a:	18 bc       	out	0x28, r1	; 40
     56c:	08 95       	ret

0000056e <_ZN5MotorD1Ev>:
     56e:	08 95       	ret

00000570 <_ZN5Motor3runEii>:
     570:	6f 3f       	cpi	r22, 0xFF	; 255
     572:	71 05       	cpc	r23, r1
     574:	09 f0       	breq	.+2      	; 0x578 <_ZN5Motor3runEii+0x8>
     576:	3c f4       	brge	.+14     	; 0x586 <_ZN5Motor3runEii+0x16>
     578:	61 30       	cpi	r22, 0x01	; 1
     57a:	8f ef       	ldi	r24, 0xFF	; 255
     57c:	78 07       	cpc	r23, r24
     57e:	2c f4       	brge	.+10     	; 0x58a <_ZN5Motor3runEii+0x1a>
     580:	61 e0       	ldi	r22, 0x01	; 1
     582:	7f ef       	ldi	r23, 0xFF	; 255
     584:	02 c0       	rjmp	.+4      	; 0x58a <_ZN5Motor3runEii+0x1a>
     586:	6f ef       	ldi	r22, 0xFF	; 255
     588:	70 e0       	ldi	r23, 0x00	; 0
     58a:	4f 3f       	cpi	r20, 0xFF	; 255
     58c:	51 05       	cpc	r21, r1
     58e:	09 f0       	breq	.+2      	; 0x592 <_ZN5Motor3runEii+0x22>
     590:	44 f4       	brge	.+16     	; 0x5a2 <_ZN5Motor3runEii+0x32>
     592:	41 30       	cpi	r20, 0x01	; 1
     594:	8f ef       	ldi	r24, 0xFF	; 255
     596:	58 07       	cpc	r21, r24
     598:	6c f0       	brlt	.+26     	; 0x5b4 <_ZN5Motor3runEii+0x44>
     59a:	14 16       	cp	r1, r20
     59c:	15 06       	cpc	r1, r21
     59e:	1c f0       	brlt	.+6      	; 0x5a6 <_ZN5Motor3runEii+0x36>
     5a0:	05 c0       	rjmp	.+10     	; 0x5ac <_ZN5Motor3runEii+0x3c>
     5a2:	4f ef       	ldi	r20, 0xFF	; 255
     5a4:	50 e0       	ldi	r21, 0x00	; 0
     5a6:	4a bd       	out	0x2a, r20	; 42
     5a8:	96 9a       	sbi	0x12, 6	; 18
     5aa:	0b c0       	rjmp	.+22     	; 0x5c2 <_ZN5Motor3runEii+0x52>
     5ac:	41 15       	cp	r20, r1
     5ae:	51 05       	cpc	r21, r1
     5b0:	39 f0       	breq	.+14     	; 0x5c0 <_ZN5Motor3runEii+0x50>
     5b2:	02 c0       	rjmp	.+4      	; 0x5b8 <_ZN5Motor3runEii+0x48>
     5b4:	41 e0       	ldi	r20, 0x01	; 1
     5b6:	5f ef       	ldi	r21, 0xFF	; 255
     5b8:	41 95       	neg	r20
     5ba:	4a bd       	out	0x2a, r20	; 42
     5bc:	96 98       	cbi	0x12, 6	; 18
     5be:	01 c0       	rjmp	.+2      	; 0x5c2 <_ZN5Motor3runEii+0x52>
     5c0:	1a bc       	out	0x2a, r1	; 42
     5c2:	16 16       	cp	r1, r22
     5c4:	17 06       	cpc	r1, r23
     5c6:	1c f4       	brge	.+6      	; 0x5ce <_ZN5Motor3runEii+0x5e>
     5c8:	68 bd       	out	0x28, r22	; 40
     5ca:	97 98       	cbi	0x12, 7	; 18
     5cc:	08 95       	ret
     5ce:	61 15       	cp	r22, r1
     5d0:	71 05       	cpc	r23, r1
     5d2:	21 f0       	breq	.+8      	; 0x5dc <_ZN5Motor3runEii+0x6c>
     5d4:	61 95       	neg	r22
     5d6:	68 bd       	out	0x28, r22	; 40
     5d8:	97 9a       	sbi	0x12, 7	; 18
     5da:	08 95       	ret
     5dc:	18 bc       	out	0x28, r1	; 40
     5de:	08 95       	ret

000005e0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     5e0:	0f 93       	push	r16
     5e2:	1f 93       	push	r17
     5e4:	cf 93       	push	r28
     5e6:	df 93       	push	r29
     5e8:	00 d0       	rcall	.+0      	; 0x5ea <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     5ea:	1f 92       	push	r1
     5ec:	cd b7       	in	r28, 0x3d	; 61
     5ee:	de b7       	in	r29, 0x3e	; 62
     5f0:	8c 01       	movw	r16, r24
     5f2:	dc 01       	movw	r26, r24
     5f4:	ed 91       	ld	r30, X+
     5f6:	fc 91       	ld	r31, X
     5f8:	01 90       	ld	r0, Z+
     5fa:	f0 81       	ld	r31, Z
     5fc:	e0 2d       	mov	r30, r0
     5fe:	2b 83       	std	Y+3, r18	; 0x03
     600:	4a 83       	std	Y+2, r20	; 0x02
     602:	69 83       	std	Y+1, r22	; 0x01
     604:	09 95       	icall
     606:	d8 01       	movw	r26, r16
     608:	ed 91       	ld	r30, X+
     60a:	fc 91       	ld	r31, X
     60c:	04 80       	ldd	r0, Z+4	; 0x04
     60e:	f5 81       	ldd	r31, Z+5	; 0x05
     610:	e0 2d       	mov	r30, r0
     612:	69 81       	ldd	r22, Y+1	; 0x01
     614:	c8 01       	movw	r24, r16
     616:	09 95       	icall
     618:	d8 01       	movw	r26, r16
     61a:	ed 91       	ld	r30, X+
     61c:	fc 91       	ld	r31, X
     61e:	04 80       	ldd	r0, Z+4	; 0x04
     620:	f5 81       	ldd	r31, Z+5	; 0x05
     622:	e0 2d       	mov	r30, r0
     624:	4a 81       	ldd	r20, Y+2	; 0x02
     626:	64 2f       	mov	r22, r20
     628:	c8 01       	movw	r24, r16
     62a:	09 95       	icall
     62c:	d8 01       	movw	r26, r16
     62e:	ed 91       	ld	r30, X+
     630:	fc 91       	ld	r31, X
     632:	04 80       	ldd	r0, Z+4	; 0x04
     634:	f5 81       	ldd	r31, Z+5	; 0x05
     636:	e0 2d       	mov	r30, r0
     638:	2b 81       	ldd	r18, Y+3	; 0x03
     63a:	62 2f       	mov	r22, r18
     63c:	c8 01       	movw	r24, r16
     63e:	09 95       	icall
     640:	d8 01       	movw	r26, r16
     642:	ed 91       	ld	r30, X+
     644:	fc 91       	ld	r31, X
     646:	02 80       	ldd	r0, Z+2	; 0x02
     648:	f3 81       	ldd	r31, Z+3	; 0x03
     64a:	e0 2d       	mov	r30, r0
     64c:	c8 01       	movw	r24, r16
     64e:	0f 90       	pop	r0
     650:	0f 90       	pop	r0
     652:	0f 90       	pop	r0
     654:	df 91       	pop	r29
     656:	cf 91       	pop	r28
     658:	1f 91       	pop	r17
     65a:	0f 91       	pop	r16
     65c:	09 94       	ijmp

0000065e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     65e:	0f 93       	push	r16
     660:	1f 93       	push	r17
     662:	cf 93       	push	r28
     664:	df 93       	push	r29
     666:	00 d0       	rcall	.+0      	; 0x668 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     668:	00 d0       	rcall	.+0      	; 0x66a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     66a:	cd b7       	in	r28, 0x3d	; 61
     66c:	de b7       	in	r29, 0x3e	; 62
     66e:	8c 01       	movw	r16, r24
     670:	dc 01       	movw	r26, r24
     672:	ed 91       	ld	r30, X+
     674:	fc 91       	ld	r31, X
     676:	01 90       	ld	r0, Z+
     678:	f0 81       	ld	r31, Z
     67a:	e0 2d       	mov	r30, r0
     67c:	2c 83       	std	Y+4, r18	; 0x04
     67e:	3b 83       	std	Y+3, r19	; 0x03
     680:	4a 83       	std	Y+2, r20	; 0x02
     682:	69 83       	std	Y+1, r22	; 0x01
     684:	09 95       	icall
     686:	d8 01       	movw	r26, r16
     688:	ed 91       	ld	r30, X+
     68a:	fc 91       	ld	r31, X
     68c:	04 80       	ldd	r0, Z+4	; 0x04
     68e:	f5 81       	ldd	r31, Z+5	; 0x05
     690:	e0 2d       	mov	r30, r0
     692:	69 81       	ldd	r22, Y+1	; 0x01
     694:	c8 01       	movw	r24, r16
     696:	09 95       	icall
     698:	d8 01       	movw	r26, r16
     69a:	ed 91       	ld	r30, X+
     69c:	fc 91       	ld	r31, X
     69e:	04 80       	ldd	r0, Z+4	; 0x04
     6a0:	f5 81       	ldd	r31, Z+5	; 0x05
     6a2:	e0 2d       	mov	r30, r0
     6a4:	4a 81       	ldd	r20, Y+2	; 0x02
     6a6:	64 2f       	mov	r22, r20
     6a8:	c8 01       	movw	r24, r16
     6aa:	09 95       	icall
     6ac:	d8 01       	movw	r26, r16
     6ae:	ed 91       	ld	r30, X+
     6b0:	fc 91       	ld	r31, X
     6b2:	04 80       	ldd	r0, Z+4	; 0x04
     6b4:	f5 81       	ldd	r31, Z+5	; 0x05
     6b6:	e0 2d       	mov	r30, r0
     6b8:	3b 81       	ldd	r19, Y+3	; 0x03
     6ba:	63 2f       	mov	r22, r19
     6bc:	c8 01       	movw	r24, r16
     6be:	09 95       	icall
     6c0:	d8 01       	movw	r26, r16
     6c2:	ed 91       	ld	r30, X+
     6c4:	fc 91       	ld	r31, X
     6c6:	04 80       	ldd	r0, Z+4	; 0x04
     6c8:	f5 81       	ldd	r31, Z+5	; 0x05
     6ca:	e0 2d       	mov	r30, r0
     6cc:	2c 81       	ldd	r18, Y+4	; 0x04
     6ce:	62 2f       	mov	r22, r18
     6d0:	c8 01       	movw	r24, r16
     6d2:	09 95       	icall
     6d4:	d8 01       	movw	r26, r16
     6d6:	ed 91       	ld	r30, X+
     6d8:	fc 91       	ld	r31, X
     6da:	02 80       	ldd	r0, Z+2	; 0x02
     6dc:	f3 81       	ldd	r31, Z+3	; 0x03
     6de:	e0 2d       	mov	r30, r0
     6e0:	c8 01       	movw	r24, r16
     6e2:	0f 90       	pop	r0
     6e4:	0f 90       	pop	r0
     6e6:	0f 90       	pop	r0
     6e8:	0f 90       	pop	r0
     6ea:	df 91       	pop	r29
     6ec:	cf 91       	pop	r28
     6ee:	1f 91       	pop	r17
     6f0:	0f 91       	pop	r16
     6f2:	09 94       	ijmp

000006f4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     6f4:	cf 92       	push	r12
     6f6:	df 92       	push	r13
     6f8:	ef 92       	push	r14
     6fa:	ff 92       	push	r15
     6fc:	0f 93       	push	r16
     6fe:	1f 93       	push	r17
     700:	cf 93       	push	r28
     702:	df 93       	push	r29
     704:	00 d0       	rcall	.+0      	; 0x706 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     706:	00 d0       	rcall	.+0      	; 0x708 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     708:	cd b7       	in	r28, 0x3d	; 61
     70a:	de b7       	in	r29, 0x3e	; 62
     70c:	6c 01       	movw	r12, r24
     70e:	dc 01       	movw	r26, r24
     710:	ed 91       	ld	r30, X+
     712:	fc 91       	ld	r31, X
     714:	01 90       	ld	r0, Z+
     716:	f0 81       	ld	r31, Z
     718:	e0 2d       	mov	r30, r0
     71a:	2b 83       	std	Y+3, r18	; 0x03
     71c:	3c 83       	std	Y+4, r19	; 0x04
     71e:	4a 83       	std	Y+2, r20	; 0x02
     720:	69 83       	std	Y+1, r22	; 0x01
     722:	09 95       	icall
     724:	d6 01       	movw	r26, r12
     726:	ed 91       	ld	r30, X+
     728:	fc 91       	ld	r31, X
     72a:	04 80       	ldd	r0, Z+4	; 0x04
     72c:	f5 81       	ldd	r31, Z+5	; 0x05
     72e:	e0 2d       	mov	r30, r0
     730:	69 81       	ldd	r22, Y+1	; 0x01
     732:	c6 01       	movw	r24, r12
     734:	09 95       	icall
     736:	d6 01       	movw	r26, r12
     738:	ed 91       	ld	r30, X+
     73a:	fc 91       	ld	r31, X
     73c:	04 80       	ldd	r0, Z+4	; 0x04
     73e:	f5 81       	ldd	r31, Z+5	; 0x05
     740:	e0 2d       	mov	r30, r0
     742:	4a 81       	ldd	r20, Y+2	; 0x02
     744:	64 2f       	mov	r22, r20
     746:	c6 01       	movw	r24, r12
     748:	09 95       	icall
     74a:	2b 81       	ldd	r18, Y+3	; 0x03
     74c:	e2 2e       	mov	r14, r18
     74e:	3c 81       	ldd	r19, Y+4	; 0x04
     750:	f3 2e       	mov	r15, r19
     752:	0e 0d       	add	r16, r14
     754:	1f 1d       	adc	r17, r15
     756:	d6 01       	movw	r26, r12
     758:	ed 91       	ld	r30, X+
     75a:	fc 91       	ld	r31, X
     75c:	e0 16       	cp	r14, r16
     75e:	f1 06       	cpc	r15, r17
     760:	49 f0       	breq	.+18     	; 0x774 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
     762:	d7 01       	movw	r26, r14
     764:	6d 91       	ld	r22, X+
     766:	7d 01       	movw	r14, r26
     768:	04 80       	ldd	r0, Z+4	; 0x04
     76a:	f5 81       	ldd	r31, Z+5	; 0x05
     76c:	e0 2d       	mov	r30, r0
     76e:	c6 01       	movw	r24, r12
     770:	09 95       	icall
     772:	f1 cf       	rjmp	.-30     	; 0x756 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
     774:	02 80       	ldd	r0, Z+2	; 0x02
     776:	f3 81       	ldd	r31, Z+3	; 0x03
     778:	e0 2d       	mov	r30, r0
     77a:	c6 01       	movw	r24, r12
     77c:	0f 90       	pop	r0
     77e:	0f 90       	pop	r0
     780:	0f 90       	pop	r0
     782:	0f 90       	pop	r0
     784:	df 91       	pop	r29
     786:	cf 91       	pop	r28
     788:	1f 91       	pop	r17
     78a:	0f 91       	pop	r16
     78c:	ff 90       	pop	r15
     78e:	ef 90       	pop	r14
     790:	df 90       	pop	r13
     792:	cf 90       	pop	r12
     794:	09 94       	ijmp

00000796 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     796:	ef 92       	push	r14
     798:	ff 92       	push	r15
     79a:	1f 93       	push	r17
     79c:	cf 93       	push	r28
     79e:	df 93       	push	r29
     7a0:	1f 92       	push	r1
     7a2:	cd b7       	in	r28, 0x3d	; 61
     7a4:	de b7       	in	r29, 0x3e	; 62
     7a6:	7c 01       	movw	r14, r24
     7a8:	16 2f       	mov	r17, r22
     7aa:	dc 01       	movw	r26, r24
     7ac:	ed 91       	ld	r30, X+
     7ae:	fc 91       	ld	r31, X
     7b0:	01 90       	ld	r0, Z+
     7b2:	f0 81       	ld	r31, Z
     7b4:	e0 2d       	mov	r30, r0
     7b6:	49 83       	std	Y+1, r20	; 0x01
     7b8:	09 95       	icall
     7ba:	d7 01       	movw	r26, r14
     7bc:	ed 91       	ld	r30, X+
     7be:	fc 91       	ld	r31, X
     7c0:	04 80       	ldd	r0, Z+4	; 0x04
     7c2:	f5 81       	ldd	r31, Z+5	; 0x05
     7c4:	e0 2d       	mov	r30, r0
     7c6:	61 2f       	mov	r22, r17
     7c8:	c7 01       	movw	r24, r14
     7ca:	09 95       	icall
     7cc:	d7 01       	movw	r26, r14
     7ce:	ed 91       	ld	r30, X+
     7d0:	fc 91       	ld	r31, X
     7d2:	04 80       	ldd	r0, Z+4	; 0x04
     7d4:	f5 81       	ldd	r31, Z+5	; 0x05
     7d6:	e0 2d       	mov	r30, r0
     7d8:	49 81       	ldd	r20, Y+1	; 0x01
     7da:	64 2f       	mov	r22, r20
     7dc:	c7 01       	movw	r24, r14
     7de:	09 95       	icall
     7e0:	d7 01       	movw	r26, r14
     7e2:	ed 91       	ld	r30, X+
     7e4:	fc 91       	ld	r31, X
     7e6:	01 90       	ld	r0, Z+
     7e8:	f0 81       	ld	r31, Z
     7ea:	e0 2d       	mov	r30, r0
     7ec:	c7 01       	movw	r24, r14
     7ee:	09 95       	icall
     7f0:	d7 01       	movw	r26, r14
     7f2:	ed 91       	ld	r30, X+
     7f4:	fc 91       	ld	r31, X
     7f6:	61 2f       	mov	r22, r17
     7f8:	61 60       	ori	r22, 0x01	; 1
     7fa:	04 80       	ldd	r0, Z+4	; 0x04
     7fc:	f5 81       	ldd	r31, Z+5	; 0x05
     7fe:	e0 2d       	mov	r30, r0
     800:	c7 01       	movw	r24, r14
     802:	09 95       	icall
     804:	d7 01       	movw	r26, r14
     806:	ed 91       	ld	r30, X+
     808:	fc 91       	ld	r31, X
     80a:	06 80       	ldd	r0, Z+6	; 0x06
     80c:	f7 81       	ldd	r31, Z+7	; 0x07
     80e:	e0 2d       	mov	r30, r0
     810:	60 e0       	ldi	r22, 0x00	; 0
     812:	c7 01       	movw	r24, r14
     814:	09 95       	icall
     816:	18 2f       	mov	r17, r24
     818:	d7 01       	movw	r26, r14
     81a:	ed 91       	ld	r30, X+
     81c:	fc 91       	ld	r31, X
     81e:	02 80       	ldd	r0, Z+2	; 0x02
     820:	f3 81       	ldd	r31, Z+3	; 0x03
     822:	e0 2d       	mov	r30, r0
     824:	c7 01       	movw	r24, r14
     826:	09 95       	icall
     828:	81 2f       	mov	r24, r17
     82a:	0f 90       	pop	r0
     82c:	df 91       	pop	r29
     82e:	cf 91       	pop	r28
     830:	1f 91       	pop	r17
     832:	ff 90       	pop	r15
     834:	ef 90       	pop	r14
     836:	08 95       	ret

00000838 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     838:	ef 92       	push	r14
     83a:	ff 92       	push	r15
     83c:	0f 93       	push	r16
     83e:	1f 93       	push	r17
     840:	cf 93       	push	r28
     842:	df 93       	push	r29
     844:	1f 92       	push	r1
     846:	cd b7       	in	r28, 0x3d	; 61
     848:	de b7       	in	r29, 0x3e	; 62
     84a:	7c 01       	movw	r14, r24
     84c:	16 2f       	mov	r17, r22
     84e:	dc 01       	movw	r26, r24
     850:	ed 91       	ld	r30, X+
     852:	fc 91       	ld	r31, X
     854:	01 90       	ld	r0, Z+
     856:	f0 81       	ld	r31, Z
     858:	e0 2d       	mov	r30, r0
     85a:	49 83       	std	Y+1, r20	; 0x01
     85c:	09 95       	icall
     85e:	d7 01       	movw	r26, r14
     860:	ed 91       	ld	r30, X+
     862:	fc 91       	ld	r31, X
     864:	04 80       	ldd	r0, Z+4	; 0x04
     866:	f5 81       	ldd	r31, Z+5	; 0x05
     868:	e0 2d       	mov	r30, r0
     86a:	61 2f       	mov	r22, r17
     86c:	c7 01       	movw	r24, r14
     86e:	09 95       	icall
     870:	d7 01       	movw	r26, r14
     872:	ed 91       	ld	r30, X+
     874:	fc 91       	ld	r31, X
     876:	04 80       	ldd	r0, Z+4	; 0x04
     878:	f5 81       	ldd	r31, Z+5	; 0x05
     87a:	e0 2d       	mov	r30, r0
     87c:	49 81       	ldd	r20, Y+1	; 0x01
     87e:	64 2f       	mov	r22, r20
     880:	c7 01       	movw	r24, r14
     882:	09 95       	icall
     884:	d7 01       	movw	r26, r14
     886:	ed 91       	ld	r30, X+
     888:	fc 91       	ld	r31, X
     88a:	01 90       	ld	r0, Z+
     88c:	f0 81       	ld	r31, Z
     88e:	e0 2d       	mov	r30, r0
     890:	c7 01       	movw	r24, r14
     892:	09 95       	icall
     894:	d7 01       	movw	r26, r14
     896:	ed 91       	ld	r30, X+
     898:	fc 91       	ld	r31, X
     89a:	61 2f       	mov	r22, r17
     89c:	61 60       	ori	r22, 0x01	; 1
     89e:	04 80       	ldd	r0, Z+4	; 0x04
     8a0:	f5 81       	ldd	r31, Z+5	; 0x05
     8a2:	e0 2d       	mov	r30, r0
     8a4:	c7 01       	movw	r24, r14
     8a6:	09 95       	icall
     8a8:	d7 01       	movw	r26, r14
     8aa:	ed 91       	ld	r30, X+
     8ac:	fc 91       	ld	r31, X
     8ae:	06 80       	ldd	r0, Z+6	; 0x06
     8b0:	f7 81       	ldd	r31, Z+7	; 0x07
     8b2:	e0 2d       	mov	r30, r0
     8b4:	61 e0       	ldi	r22, 0x01	; 1
     8b6:	c7 01       	movw	r24, r14
     8b8:	09 95       	icall
     8ba:	08 2f       	mov	r16, r24
     8bc:	10 e0       	ldi	r17, 0x00	; 0
     8be:	10 2f       	mov	r17, r16
     8c0:	00 27       	eor	r16, r16
     8c2:	d7 01       	movw	r26, r14
     8c4:	ed 91       	ld	r30, X+
     8c6:	fc 91       	ld	r31, X
     8c8:	06 80       	ldd	r0, Z+6	; 0x06
     8ca:	f7 81       	ldd	r31, Z+7	; 0x07
     8cc:	e0 2d       	mov	r30, r0
     8ce:	60 e0       	ldi	r22, 0x00	; 0
     8d0:	c7 01       	movw	r24, r14
     8d2:	09 95       	icall
     8d4:	08 2b       	or	r16, r24
     8d6:	d7 01       	movw	r26, r14
     8d8:	ed 91       	ld	r30, X+
     8da:	fc 91       	ld	r31, X
     8dc:	02 80       	ldd	r0, Z+2	; 0x02
     8de:	f3 81       	ldd	r31, Z+3	; 0x03
     8e0:	e0 2d       	mov	r30, r0
     8e2:	c7 01       	movw	r24, r14
     8e4:	09 95       	icall
     8e6:	c8 01       	movw	r24, r16
     8e8:	0f 90       	pop	r0
     8ea:	df 91       	pop	r29
     8ec:	cf 91       	pop	r28
     8ee:	1f 91       	pop	r17
     8f0:	0f 91       	pop	r16
     8f2:	ff 90       	pop	r15
     8f4:	ef 90       	pop	r14
     8f6:	08 95       	ret

000008f8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     8f8:	cf 92       	push	r12
     8fa:	df 92       	push	r13
     8fc:	ef 92       	push	r14
     8fe:	ff 92       	push	r15
     900:	0f 93       	push	r16
     902:	1f 93       	push	r17
     904:	cf 93       	push	r28
     906:	df 93       	push	r29
     908:	00 d0       	rcall	.+0      	; 0x90a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     90a:	1f 92       	push	r1
     90c:	cd b7       	in	r28, 0x3d	; 61
     90e:	de b7       	in	r29, 0x3e	; 62
     910:	6c 01       	movw	r12, r24
     912:	f6 2e       	mov	r15, r22
     914:	dc 01       	movw	r26, r24
     916:	ed 91       	ld	r30, X+
     918:	fc 91       	ld	r31, X
     91a:	01 90       	ld	r0, Z+
     91c:	f0 81       	ld	r31, Z
     91e:	e0 2d       	mov	r30, r0
     920:	2a 83       	std	Y+2, r18	; 0x02
     922:	3b 83       	std	Y+3, r19	; 0x03
     924:	49 83       	std	Y+1, r20	; 0x01
     926:	09 95       	icall
     928:	d6 01       	movw	r26, r12
     92a:	ed 91       	ld	r30, X+
     92c:	fc 91       	ld	r31, X
     92e:	04 80       	ldd	r0, Z+4	; 0x04
     930:	f5 81       	ldd	r31, Z+5	; 0x05
     932:	e0 2d       	mov	r30, r0
     934:	6f 2d       	mov	r22, r15
     936:	c6 01       	movw	r24, r12
     938:	09 95       	icall
     93a:	d6 01       	movw	r26, r12
     93c:	ed 91       	ld	r30, X+
     93e:	fc 91       	ld	r31, X
     940:	04 80       	ldd	r0, Z+4	; 0x04
     942:	f5 81       	ldd	r31, Z+5	; 0x05
     944:	e0 2d       	mov	r30, r0
     946:	49 81       	ldd	r20, Y+1	; 0x01
     948:	64 2f       	mov	r22, r20
     94a:	c6 01       	movw	r24, r12
     94c:	09 95       	icall
     94e:	d6 01       	movw	r26, r12
     950:	ed 91       	ld	r30, X+
     952:	fc 91       	ld	r31, X
     954:	01 90       	ld	r0, Z+
     956:	f0 81       	ld	r31, Z
     958:	e0 2d       	mov	r30, r0
     95a:	c6 01       	movw	r24, r12
     95c:	09 95       	icall
     95e:	d6 01       	movw	r26, r12
     960:	ed 91       	ld	r30, X+
     962:	fc 91       	ld	r31, X
     964:	6f 2d       	mov	r22, r15
     966:	61 60       	ori	r22, 0x01	; 1
     968:	04 80       	ldd	r0, Z+4	; 0x04
     96a:	f5 81       	ldd	r31, Z+5	; 0x05
     96c:	e0 2d       	mov	r30, r0
     96e:	c6 01       	movw	r24, r12
     970:	09 95       	icall
     972:	2a 81       	ldd	r18, Y+2	; 0x02
     974:	e2 2e       	mov	r14, r18
     976:	3b 81       	ldd	r19, Y+3	; 0x03
     978:	f3 2e       	mov	r15, r19
     97a:	0e 0d       	add	r16, r14
     97c:	1f 1d       	adc	r17, r15
     97e:	d6 01       	movw	r26, r12
     980:	ed 91       	ld	r30, X+
     982:	fc 91       	ld	r31, X
     984:	e0 16       	cp	r14, r16
     986:	f1 06       	cpc	r15, r17
     988:	51 f0       	breq	.+20     	; 0x99e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     98a:	06 80       	ldd	r0, Z+6	; 0x06
     98c:	f7 81       	ldd	r31, Z+7	; 0x07
     98e:	e0 2d       	mov	r30, r0
     990:	61 e0       	ldi	r22, 0x01	; 1
     992:	c6 01       	movw	r24, r12
     994:	09 95       	icall
     996:	f7 01       	movw	r30, r14
     998:	81 93       	st	Z+, r24
     99a:	7f 01       	movw	r14, r30
     99c:	f0 cf       	rjmp	.-32     	; 0x97e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     99e:	02 80       	ldd	r0, Z+2	; 0x02
     9a0:	f3 81       	ldd	r31, Z+3	; 0x03
     9a2:	e0 2d       	mov	r30, r0
     9a4:	c6 01       	movw	r24, r12
     9a6:	0f 90       	pop	r0
     9a8:	0f 90       	pop	r0
     9aa:	0f 90       	pop	r0
     9ac:	df 91       	pop	r29
     9ae:	cf 91       	pop	r28
     9b0:	1f 91       	pop	r17
     9b2:	0f 91       	pop	r16
     9b4:	ff 90       	pop	r15
     9b6:	ef 90       	pop	r14
     9b8:	df 90       	pop	r13
     9ba:	cf 90       	pop	r12
     9bc:	09 94       	ijmp

000009be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     9be:	88 23       	and	r24, r24
     9c0:	21 f0       	breq	.+8      	; 0x9ca <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     9c2:	bf 98       	cbi	0x17, 7	; 23
     9c4:	82 30       	cpi	r24, 0x02	; 2
     9c6:	19 f0       	breq	.+6      	; 0x9ce <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     9c8:	08 95       	ret
     9ca:	bf 9a       	sbi	0x17, 7	; 23
     9cc:	08 95       	ret
     9ce:	c7 9a       	sbi	0x18, 7	; 24
     9d0:	08 95       	ret

000009d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     9d2:	00 00       	nop
     9d4:	00 00       	nop
     9d6:	08 95       	ret

000009d8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     9d8:	1f 93       	push	r17
     9da:	cf 93       	push	r28
     9dc:	df 93       	push	r29
     9de:	16 2f       	mov	r17, r22
     9e0:	bd 98       	cbi	0x17, 5	; 23
     9e2:	80 e0       	ldi	r24, 0x00	; 0
     9e4:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9e8:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9ec:	d8 e0       	ldi	r29, 0x08	; 8
     9ee:	c0 e0       	ldi	r28, 0x00	; 0
     9f0:	cc 0f       	add	r28, r28
     9f2:	81 e0       	ldi	r24, 0x01	; 1
     9f4:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9f8:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9fc:	b5 99       	sbic	0x16, 5	; 22
     9fe:	c1 60       	ori	r28, 0x01	; 1
     a00:	80 e0       	ldi	r24, 0x00	; 0
     a02:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a06:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a0a:	d1 50       	subi	r29, 0x01	; 1
     a0c:	89 f7       	brne	.-30     	; 0x9f0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
     a0e:	11 23       	and	r17, r17
     a10:	11 f0       	breq	.+4      	; 0xa16 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
     a12:	bd 9a       	sbi	0x17, 5	; 23
     a14:	01 c0       	rjmp	.+2      	; 0xa18 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
     a16:	bd 98       	cbi	0x17, 5	; 23
     a18:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a1c:	81 e0       	ldi	r24, 0x01	; 1
     a1e:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a22:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a26:	80 e0       	ldi	r24, 0x00	; 0
     a28:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a2c:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a30:	bd 98       	cbi	0x17, 5	; 23
     a32:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a36:	8c 2f       	mov	r24, r28
     a38:	df 91       	pop	r29
     a3a:	cf 91       	pop	r28
     a3c:	1f 91       	pop	r17
     a3e:	08 95       	ret

00000a40 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
     a40:	cf 93       	push	r28
     a42:	df 93       	push	r29
     a44:	d6 2f       	mov	r29, r22
     a46:	c8 e0       	ldi	r28, 0x08	; 8
     a48:	80 e0       	ldi	r24, 0x00	; 0
     a4a:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a4e:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a52:	d7 ff       	sbrs	r29, 7
     a54:	02 c0       	rjmp	.+4      	; 0xa5a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
     a56:	bd 98       	cbi	0x17, 5	; 23
     a58:	01 c0       	rjmp	.+2      	; 0xa5c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
     a5a:	bd 9a       	sbi	0x17, 5	; 23
     a5c:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a60:	81 e0       	ldi	r24, 0x01	; 1
     a62:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a66:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a6a:	dd 0f       	add	r29, r29
     a6c:	c1 50       	subi	r28, 0x01	; 1
     a6e:	61 f7       	brne	.-40     	; 0xa48 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
     a70:	80 e0       	ldi	r24, 0x00	; 0
     a72:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a76:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a7a:	bd 98       	cbi	0x17, 5	; 23
     a7c:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a80:	81 e0       	ldi	r24, 0x01	; 1
     a82:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a86:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a8a:	c6 b3       	in	r28, 0x16	; 22
     a8c:	80 e0       	ldi	r24, 0x00	; 0
     a8e:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a92:	0e 94 e9 04 	call	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a96:	c5 fb       	bst	r28, 5
     a98:	cc 27       	eor	r28, r28
     a9a:	c0 f9       	bld	r28, 0
     a9c:	81 e0       	ldi	r24, 0x01	; 1
     a9e:	8c 27       	eor	r24, r28
     aa0:	df 91       	pop	r29
     aa2:	cf 91       	pop	r28
     aa4:	08 95       	ret

00000aa6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
     aa6:	81 e0       	ldi	r24, 0x01	; 1
     aa8:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     aac:	bd 98       	cbi	0x17, 5	; 23
     aae:	81 e0       	ldi	r24, 0x01	; 1
     ab0:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ab4:	bd 9a       	sbi	0x17, 5	; 23
     ab6:	80 e0       	ldi	r24, 0x00	; 0
     ab8:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     abc:	bd 98       	cbi	0x17, 5	; 23
     abe:	0c 94 e9 04 	jmp	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000ac2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
     ac2:	80 e0       	ldi	r24, 0x00	; 0
     ac4:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ac8:	bd 9a       	sbi	0x17, 5	; 23
     aca:	81 e0       	ldi	r24, 0x01	; 1
     acc:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ad0:	bd 9a       	sbi	0x17, 5	; 23
     ad2:	81 e0       	ldi	r24, 0x01	; 1
     ad4:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ad8:	bd 98       	cbi	0x17, 5	; 23
     ada:	0c 94 e9 04 	jmp	0x9d2	; 0x9d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000ade <_GLOBAL__sub_I_i2c>:
     ade:	8e e7       	ldi	r24, 0x7E	; 126
     ae0:	90 e0       	ldi	r25, 0x00	; 0
     ae2:	90 93 ad 00 	sts	0x00AD, r25
     ae6:	80 93 ac 00 	sts	0x00AC, r24
     aea:	bd 98       	cbi	0x17, 5	; 23
     aec:	81 e0       	ldi	r24, 0x01	; 1
     aee:	0e 94 df 04 	call	0x9be	; 0x9be <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     af2:	c5 98       	cbi	0x18, 5	; 24
     af4:	c7 98       	cbi	0x18, 7	; 24
     af6:	08 95       	ret

00000af8 <_ZdlPv>:
     af8:	0c 94 bf 0b 	jmp	0x177e	; 0x177e <free>

00000afc <_ZN4GyroC1Ev>:
     afc:	08 95       	ret

00000afe <_ZN4GyroD1Ev>:
     afe:	08 95       	ret

00000b00 <_ZN4Gyro4readEb>:
     b00:	4f 92       	push	r4
     b02:	5f 92       	push	r5
     b04:	6f 92       	push	r6
     b06:	7f 92       	push	r7
     b08:	8f 92       	push	r8
     b0a:	9f 92       	push	r9
     b0c:	af 92       	push	r10
     b0e:	bf 92       	push	r11
     b10:	cf 92       	push	r12
     b12:	df 92       	push	r13
     b14:	ef 92       	push	r14
     b16:	ff 92       	push	r15
     b18:	0f 93       	push	r16
     b1a:	1f 93       	push	r17
     b1c:	cf 93       	push	r28
     b1e:	df 93       	push	r29
     b20:	ec 01       	movw	r28, r24
     b22:	f6 2e       	mov	r15, r22
     b24:	88 ad       	ldd	r24, Y+56	; 0x38
     b26:	99 ad       	ldd	r25, Y+57	; 0x39
     b28:	dc 01       	movw	r26, r24
     b2a:	ed 91       	ld	r30, X+
     b2c:	fc 91       	ld	r31, X
     b2e:	06 84       	ldd	r0, Z+14	; 0x0e
     b30:	f7 85       	ldd	r31, Z+15	; 0x0f
     b32:	e0 2d       	mov	r30, r0
     b34:	4f e0       	ldi	r20, 0x0F	; 15
     b36:	64 ed       	ldi	r22, 0xD4	; 212
     b38:	09 95       	icall
     b3a:	88 36       	cpi	r24, 0x68	; 104
     b3c:	49 f4       	brne	.+18     	; 0xb50 <_ZN4Gyro4readEb+0x50>
     b3e:	81 e0       	ldi	r24, 0x01	; 1
     b40:	90 e0       	ldi	r25, 0x00	; 0
     b42:	a0 e0       	ldi	r26, 0x00	; 0
     b44:	b0 e0       	ldi	r27, 0x00	; 0
     b46:	88 ab       	std	Y+48, r24	; 0x30
     b48:	99 ab       	std	Y+49, r25	; 0x31
     b4a:	aa ab       	std	Y+50, r26	; 0x32
     b4c:	bb ab       	std	Y+51, r27	; 0x33
     b4e:	04 c0       	rjmp	.+8      	; 0xb58 <_ZN4Gyro4readEb+0x58>
     b50:	18 aa       	std	Y+48, r1	; 0x30
     b52:	19 aa       	std	Y+49, r1	; 0x31
     b54:	1a aa       	std	Y+50, r1	; 0x32
     b56:	1b aa       	std	Y+51, r1	; 0x33
     b58:	88 ad       	ldd	r24, Y+56	; 0x38
     b5a:	99 ad       	ldd	r25, Y+57	; 0x39
     b5c:	dc 01       	movw	r26, r24
     b5e:	ed 91       	ld	r30, X+
     b60:	fc 91       	ld	r31, X
     b62:	06 84       	ldd	r0, Z+14	; 0x0e
     b64:	f7 85       	ldd	r31, Z+15	; 0x0f
     b66:	e0 2d       	mov	r30, r0
     b68:	49 e1       	ldi	r20, 0x19	; 25
     b6a:	64 ed       	ldi	r22, 0xD4	; 212
     b6c:	09 95       	icall
     b6e:	a8 2e       	mov	r10, r24
     b70:	b1 2c       	mov	r11, r1
     b72:	ba 2c       	mov	r11, r10
     b74:	aa 24       	eor	r10, r10
     b76:	88 ad       	ldd	r24, Y+56	; 0x38
     b78:	99 ad       	ldd	r25, Y+57	; 0x39
     b7a:	dc 01       	movw	r26, r24
     b7c:	ed 91       	ld	r30, X+
     b7e:	fc 91       	ld	r31, X
     b80:	06 84       	ldd	r0, Z+14	; 0x0e
     b82:	f7 85       	ldd	r31, Z+15	; 0x0f
     b84:	e0 2d       	mov	r30, r0
     b86:	48 e1       	ldi	r20, 0x18	; 24
     b88:	64 ed       	ldi	r22, 0xD4	; 212
     b8a:	09 95       	icall
     b8c:	a8 2a       	or	r10, r24
     b8e:	88 ad       	ldd	r24, Y+56	; 0x38
     b90:	99 ad       	ldd	r25, Y+57	; 0x39
     b92:	dc 01       	movw	r26, r24
     b94:	ed 91       	ld	r30, X+
     b96:	fc 91       	ld	r31, X
     b98:	06 84       	ldd	r0, Z+14	; 0x0e
     b9a:	f7 85       	ldd	r31, Z+15	; 0x0f
     b9c:	e0 2d       	mov	r30, r0
     b9e:	4b e1       	ldi	r20, 0x1B	; 27
     ba0:	64 ed       	ldi	r22, 0xD4	; 212
     ba2:	09 95       	icall
     ba4:	08 2f       	mov	r16, r24
     ba6:	10 e0       	ldi	r17, 0x00	; 0
     ba8:	10 2f       	mov	r17, r16
     baa:	00 27       	eor	r16, r16
     bac:	88 ad       	ldd	r24, Y+56	; 0x38
     bae:	99 ad       	ldd	r25, Y+57	; 0x39
     bb0:	dc 01       	movw	r26, r24
     bb2:	ed 91       	ld	r30, X+
     bb4:	fc 91       	ld	r31, X
     bb6:	06 84       	ldd	r0, Z+14	; 0x0e
     bb8:	f7 85       	ldd	r31, Z+15	; 0x0f
     bba:	e0 2d       	mov	r30, r0
     bbc:	4a e1       	ldi	r20, 0x1A	; 26
     bbe:	64 ed       	ldi	r22, 0xD4	; 212
     bc0:	09 95       	icall
     bc2:	08 2b       	or	r16, r24
     bc4:	88 ad       	ldd	r24, Y+56	; 0x38
     bc6:	99 ad       	ldd	r25, Y+57	; 0x39
     bc8:	dc 01       	movw	r26, r24
     bca:	ed 91       	ld	r30, X+
     bcc:	fc 91       	ld	r31, X
     bce:	06 84       	ldd	r0, Z+14	; 0x0e
     bd0:	f7 85       	ldd	r31, Z+15	; 0x0f
     bd2:	e0 2d       	mov	r30, r0
     bd4:	4d e1       	ldi	r20, 0x1D	; 29
     bd6:	64 ed       	ldi	r22, 0xD4	; 212
     bd8:	09 95       	icall
     bda:	c8 2e       	mov	r12, r24
     bdc:	d1 2c       	mov	r13, r1
     bde:	dc 2c       	mov	r13, r12
     be0:	cc 24       	eor	r12, r12
     be2:	88 ad       	ldd	r24, Y+56	; 0x38
     be4:	99 ad       	ldd	r25, Y+57	; 0x39
     be6:	dc 01       	movw	r26, r24
     be8:	ed 91       	ld	r30, X+
     bea:	fc 91       	ld	r31, X
     bec:	06 84       	ldd	r0, Z+14	; 0x0e
     bee:	f7 85       	ldd	r31, Z+15	; 0x0f
     bf0:	e0 2d       	mov	r30, r0
     bf2:	4c e1       	ldi	r20, 0x1C	; 28
     bf4:	64 ed       	ldi	r22, 0xD4	; 212
     bf6:	09 95       	icall
     bf8:	c8 2a       	or	r12, r24
     bfa:	c5 01       	movw	r24, r10
     bfc:	bb 0c       	add	r11, r11
     bfe:	aa 0b       	sbc	r26, r26
     c00:	bb 0b       	sbc	r27, r27
     c02:	01 2e       	mov	r0, r17
     c04:	00 0c       	add	r0, r0
     c06:	22 0b       	sbc	r18, r18
     c08:	33 0b       	sbc	r19, r19
     c0a:	46 01       	movw	r8, r12
     c0c:	dd 0c       	add	r13, r13
     c0e:	aa 08       	sbc	r10, r10
     c10:	bb 08       	sbc	r11, r11
     c12:	ff 20       	and	r15, r15
     c14:	21 f1       	breq	.+72     	; 0xc5e <_ZN4Gyro4readEb+0x15e>
     c16:	cc a0       	ldd	r12, Y+36	; 0x24
     c18:	dd a0       	ldd	r13, Y+37	; 0x25
     c1a:	ee a0       	ldd	r14, Y+38	; 0x26
     c1c:	ff a0       	ldd	r15, Y+39	; 0x27
     c1e:	c8 0e       	add	r12, r24
     c20:	d9 1e       	adc	r13, r25
     c22:	ea 1e       	adc	r14, r26
     c24:	fb 1e       	adc	r15, r27
     c26:	cc a2       	std	Y+36, r12	; 0x24
     c28:	dd a2       	std	Y+37, r13	; 0x25
     c2a:	ee a2       	std	Y+38, r14	; 0x26
     c2c:	ff a2       	std	Y+39, r15	; 0x27
     c2e:	c8 a4       	ldd	r12, Y+40	; 0x28
     c30:	d9 a4       	ldd	r13, Y+41	; 0x29
     c32:	ea a4       	ldd	r14, Y+42	; 0x2a
     c34:	fb a4       	ldd	r15, Y+43	; 0x2b
     c36:	c0 0e       	add	r12, r16
     c38:	d1 1e       	adc	r13, r17
     c3a:	e2 1e       	adc	r14, r18
     c3c:	f3 1e       	adc	r15, r19
     c3e:	c8 a6       	std	Y+40, r12	; 0x28
     c40:	d9 a6       	std	Y+41, r13	; 0x29
     c42:	ea a6       	std	Y+42, r14	; 0x2a
     c44:	fb a6       	std	Y+43, r15	; 0x2b
     c46:	cc a4       	ldd	r12, Y+44	; 0x2c
     c48:	dd a4       	ldd	r13, Y+45	; 0x2d
     c4a:	ee a4       	ldd	r14, Y+46	; 0x2e
     c4c:	ff a4       	ldd	r15, Y+47	; 0x2f
     c4e:	c8 0c       	add	r12, r8
     c50:	d9 1c       	adc	r13, r9
     c52:	ea 1c       	adc	r14, r10
     c54:	fb 1c       	adc	r15, r11
     c56:	cc a6       	std	Y+44, r12	; 0x2c
     c58:	dd a6       	std	Y+45, r13	; 0x2d
     c5a:	ee a6       	std	Y+46, r14	; 0x2e
     c5c:	ff a6       	std	Y+47, r15	; 0x2f
     c5e:	cc a0       	ldd	r12, Y+36	; 0x24
     c60:	dd a0       	ldd	r13, Y+37	; 0x25
     c62:	ee a0       	ldd	r14, Y+38	; 0x26
     c64:	ff a0       	ldd	r15, Y+39	; 0x27
     c66:	bc 01       	movw	r22, r24
     c68:	cd 01       	movw	r24, r26
     c6a:	6c 19       	sub	r22, r12
     c6c:	7d 09       	sbc	r23, r13
     c6e:	8e 09       	sbc	r24, r14
     c70:	9f 09       	sbc	r25, r15
     c72:	6c 87       	std	Y+12, r22	; 0x0c
     c74:	7d 87       	std	Y+13, r23	; 0x0d
     c76:	8e 87       	std	Y+14, r24	; 0x0e
     c78:	9f 87       	std	Y+15, r25	; 0x0f
     c7a:	c8 a4       	ldd	r12, Y+40	; 0x28
     c7c:	d9 a4       	ldd	r13, Y+41	; 0x29
     c7e:	ea a4       	ldd	r14, Y+42	; 0x2a
     c80:	fb a4       	ldd	r15, Y+43	; 0x2b
     c82:	28 01       	movw	r4, r16
     c84:	39 01       	movw	r6, r18
     c86:	4c 18       	sub	r4, r12
     c88:	5d 08       	sbc	r5, r13
     c8a:	6e 08       	sbc	r6, r14
     c8c:	7f 08       	sbc	r7, r15
     c8e:	48 8a       	std	Y+16, r4	; 0x10
     c90:	59 8a       	std	Y+17, r5	; 0x11
     c92:	6a 8a       	std	Y+18, r6	; 0x12
     c94:	7b 8a       	std	Y+19, r7	; 0x13
     c96:	0c a5       	ldd	r16, Y+44	; 0x2c
     c98:	1d a5       	ldd	r17, Y+45	; 0x2d
     c9a:	2e a5       	ldd	r18, Y+46	; 0x2e
     c9c:	3f a5       	ldd	r19, Y+47	; 0x2f
     c9e:	75 01       	movw	r14, r10
     ca0:	64 01       	movw	r12, r8
     ca2:	c0 1a       	sub	r12, r16
     ca4:	d1 0a       	sbc	r13, r17
     ca6:	e2 0a       	sbc	r14, r18
     ca8:	f3 0a       	sbc	r15, r19
     caa:	cc 8a       	std	Y+20, r12	; 0x14
     cac:	dd 8a       	std	Y+21, r13	; 0x15
     cae:	ee 8a       	std	Y+22, r14	; 0x16
     cb0:	ff 8a       	std	Y+23, r15	; 0x17
     cb2:	29 e1       	ldi	r18, 0x19	; 25
     cb4:	82 2e       	mov	r8, r18
     cb6:	91 2c       	mov	r9, r1
     cb8:	a1 2c       	mov	r10, r1
     cba:	b1 2c       	mov	r11, r1
     cbc:	a5 01       	movw	r20, r10
     cbe:	94 01       	movw	r18, r8
     cc0:	0e 94 39 09 	call	0x1272	; 0x1272 <__divmodsi4>
     cc4:	88 8d       	ldd	r24, Y+24	; 0x18
     cc6:	99 8d       	ldd	r25, Y+25	; 0x19
     cc8:	aa 8d       	ldd	r26, Y+26	; 0x1a
     cca:	bb 8d       	ldd	r27, Y+27	; 0x1b
     ccc:	82 0f       	add	r24, r18
     cce:	93 1f       	adc	r25, r19
     cd0:	a4 1f       	adc	r26, r20
     cd2:	b5 1f       	adc	r27, r21
     cd4:	88 8f       	std	Y+24, r24	; 0x18
     cd6:	99 8f       	std	Y+25, r25	; 0x19
     cd8:	aa 8f       	std	Y+26, r26	; 0x1a
     cda:	bb 8f       	std	Y+27, r27	; 0x1b
     cdc:	c3 01       	movw	r24, r6
     cde:	b2 01       	movw	r22, r4
     ce0:	a5 01       	movw	r20, r10
     ce2:	94 01       	movw	r18, r8
     ce4:	0e 94 39 09 	call	0x1272	; 0x1272 <__divmodsi4>
     ce8:	8c 8d       	ldd	r24, Y+28	; 0x1c
     cea:	9d 8d       	ldd	r25, Y+29	; 0x1d
     cec:	ae 8d       	ldd	r26, Y+30	; 0x1e
     cee:	bf 8d       	ldd	r27, Y+31	; 0x1f
     cf0:	82 0f       	add	r24, r18
     cf2:	93 1f       	adc	r25, r19
     cf4:	a4 1f       	adc	r26, r20
     cf6:	b5 1f       	adc	r27, r21
     cf8:	8c 8f       	std	Y+28, r24	; 0x1c
     cfa:	9d 8f       	std	Y+29, r25	; 0x1d
     cfc:	ae 8f       	std	Y+30, r26	; 0x1e
     cfe:	bf 8f       	std	Y+31, r27	; 0x1f
     d00:	c7 01       	movw	r24, r14
     d02:	b6 01       	movw	r22, r12
     d04:	a5 01       	movw	r20, r10
     d06:	94 01       	movw	r18, r8
     d08:	0e 94 39 09 	call	0x1272	; 0x1272 <__divmodsi4>
     d0c:	88 a1       	ldd	r24, Y+32	; 0x20
     d0e:	99 a1       	ldd	r25, Y+33	; 0x21
     d10:	aa a1       	ldd	r26, Y+34	; 0x22
     d12:	bb a1       	ldd	r27, Y+35	; 0x23
     d14:	82 0f       	add	r24, r18
     d16:	93 1f       	adc	r25, r19
     d18:	a4 1f       	adc	r26, r20
     d1a:	b5 1f       	adc	r27, r21
     d1c:	88 a3       	std	Y+32, r24	; 0x20
     d1e:	99 a3       	std	Y+33, r25	; 0x21
     d20:	aa a3       	std	Y+34, r26	; 0x22
     d22:	bb a3       	std	Y+35, r27	; 0x23
     d24:	88 ad       	ldd	r24, Y+56	; 0x38
     d26:	99 ad       	ldd	r25, Y+57	; 0x39
     d28:	dc 01       	movw	r26, r24
     d2a:	ed 91       	ld	r30, X+
     d2c:	fc 91       	ld	r31, X
     d2e:	06 84       	ldd	r0, Z+14	; 0x0e
     d30:	f7 85       	ldd	r31, Z+15	; 0x0f
     d32:	e0 2d       	mov	r30, r0
     d34:	49 e2       	ldi	r20, 0x29	; 41
     d36:	64 ed       	ldi	r22, 0xD4	; 212
     d38:	09 95       	icall
     d3a:	08 2f       	mov	r16, r24
     d3c:	10 e0       	ldi	r17, 0x00	; 0
     d3e:	10 2f       	mov	r17, r16
     d40:	00 27       	eor	r16, r16
     d42:	88 ad       	ldd	r24, Y+56	; 0x38
     d44:	99 ad       	ldd	r25, Y+57	; 0x39
     d46:	dc 01       	movw	r26, r24
     d48:	ed 91       	ld	r30, X+
     d4a:	fc 91       	ld	r31, X
     d4c:	06 84       	ldd	r0, Z+14	; 0x0e
     d4e:	f7 85       	ldd	r31, Z+15	; 0x0f
     d50:	e0 2d       	mov	r30, r0
     d52:	48 e2       	ldi	r20, 0x28	; 40
     d54:	64 ed       	ldi	r22, 0xD4	; 212
     d56:	09 95       	icall
     d58:	68 01       	movw	r12, r16
     d5a:	c8 2a       	or	r12, r24
     d5c:	88 ad       	ldd	r24, Y+56	; 0x38
     d5e:	99 ad       	ldd	r25, Y+57	; 0x39
     d60:	dc 01       	movw	r26, r24
     d62:	ed 91       	ld	r30, X+
     d64:	fc 91       	ld	r31, X
     d66:	06 84       	ldd	r0, Z+14	; 0x0e
     d68:	f7 85       	ldd	r31, Z+15	; 0x0f
     d6a:	e0 2d       	mov	r30, r0
     d6c:	4b e2       	ldi	r20, 0x2B	; 43
     d6e:	64 ed       	ldi	r22, 0xD4	; 212
     d70:	09 95       	icall
     d72:	08 2f       	mov	r16, r24
     d74:	10 e0       	ldi	r17, 0x00	; 0
     d76:	10 2f       	mov	r17, r16
     d78:	00 27       	eor	r16, r16
     d7a:	88 ad       	ldd	r24, Y+56	; 0x38
     d7c:	99 ad       	ldd	r25, Y+57	; 0x39
     d7e:	dc 01       	movw	r26, r24
     d80:	ed 91       	ld	r30, X+
     d82:	fc 91       	ld	r31, X
     d84:	06 84       	ldd	r0, Z+14	; 0x0e
     d86:	f7 85       	ldd	r31, Z+15	; 0x0f
     d88:	e0 2d       	mov	r30, r0
     d8a:	4a e2       	ldi	r20, 0x2A	; 42
     d8c:	64 ed       	ldi	r22, 0xD4	; 212
     d8e:	09 95       	icall
     d90:	08 2b       	or	r16, r24
     d92:	88 ad       	ldd	r24, Y+56	; 0x38
     d94:	99 ad       	ldd	r25, Y+57	; 0x39
     d96:	dc 01       	movw	r26, r24
     d98:	ed 91       	ld	r30, X+
     d9a:	fc 91       	ld	r31, X
     d9c:	06 84       	ldd	r0, Z+14	; 0x0e
     d9e:	f7 85       	ldd	r31, Z+15	; 0x0f
     da0:	e0 2d       	mov	r30, r0
     da2:	4d e2       	ldi	r20, 0x2D	; 45
     da4:	64 ed       	ldi	r22, 0xD4	; 212
     da6:	09 95       	icall
     da8:	90 e0       	ldi	r25, 0x00	; 0
     daa:	f8 2e       	mov	r15, r24
     dac:	ee 24       	eor	r14, r14
     dae:	88 ad       	ldd	r24, Y+56	; 0x38
     db0:	99 ad       	ldd	r25, Y+57	; 0x39
     db2:	dc 01       	movw	r26, r24
     db4:	ed 91       	ld	r30, X+
     db6:	fc 91       	ld	r31, X
     db8:	06 84       	ldd	r0, Z+14	; 0x0e
     dba:	f7 85       	ldd	r31, Z+15	; 0x0f
     dbc:	e0 2d       	mov	r30, r0
     dbe:	4c e2       	ldi	r20, 0x2C	; 44
     dc0:	64 ed       	ldi	r22, 0xD4	; 212
     dc2:	09 95       	icall
     dc4:	a6 01       	movw	r20, r12
     dc6:	dd 0c       	add	r13, r13
     dc8:	66 0b       	sbc	r22, r22
     dca:	77 0b       	sbc	r23, r23
     dcc:	48 83       	st	Y, r20
     dce:	59 83       	std	Y+1, r21	; 0x01
     dd0:	6a 83       	std	Y+2, r22	; 0x02
     dd2:	7b 83       	std	Y+3, r23	; 0x03
     dd4:	01 2e       	mov	r0, r17
     dd6:	00 0c       	add	r0, r0
     dd8:	22 0b       	sbc	r18, r18
     dda:	33 0b       	sbc	r19, r19
     ddc:	0c 83       	std	Y+4, r16	; 0x04
     dde:	1d 83       	std	Y+5, r17	; 0x05
     de0:	2e 83       	std	Y+6, r18	; 0x06
     de2:	3f 83       	std	Y+7, r19	; 0x07
     de4:	97 01       	movw	r18, r14
     de6:	28 2b       	or	r18, r24
     de8:	c9 01       	movw	r24, r18
     dea:	09 2e       	mov	r0, r25
     dec:	00 0c       	add	r0, r0
     dee:	aa 0b       	sbc	r26, r26
     df0:	bb 0b       	sbc	r27, r27
     df2:	88 87       	std	Y+8, r24	; 0x08
     df4:	99 87       	std	Y+9, r25	; 0x09
     df6:	aa 87       	std	Y+10, r26	; 0x0a
     df8:	bb 87       	std	Y+11, r27	; 0x0b
     dfa:	df 91       	pop	r29
     dfc:	cf 91       	pop	r28
     dfe:	1f 91       	pop	r17
     e00:	0f 91       	pop	r16
     e02:	ff 90       	pop	r15
     e04:	ef 90       	pop	r14
     e06:	df 90       	pop	r13
     e08:	cf 90       	pop	r12
     e0a:	bf 90       	pop	r11
     e0c:	af 90       	pop	r10
     e0e:	9f 90       	pop	r9
     e10:	8f 90       	pop	r8
     e12:	7f 90       	pop	r7
     e14:	6f 90       	pop	r6
     e16:	5f 90       	pop	r5
     e18:	4f 90       	pop	r4
     e1a:	08 95       	ret

00000e1c <_ZN4Gyro11delay_loopsEm>:
     e1c:	41 50       	subi	r20, 0x01	; 1
     e1e:	51 09       	sbc	r21, r1
     e20:	61 09       	sbc	r22, r1
     e22:	71 09       	sbc	r23, r1
     e24:	10 f0       	brcs	.+4      	; 0xe2a <_ZN4Gyro11delay_loopsEm+0xe>
     e26:	00 00       	nop
     e28:	f9 cf       	rjmp	.-14     	; 0xe1c <_ZN4Gyro11delay_loopsEm>
     e2a:	08 95       	ret

00000e2c <_ZN4Gyro4initEP13I2C_Interface>:
     e2c:	cf 92       	push	r12
     e2e:	df 92       	push	r13
     e30:	ef 92       	push	r14
     e32:	ff 92       	push	r15
     e34:	cf 93       	push	r28
     e36:	df 93       	push	r29
     e38:	ec 01       	movw	r28, r24
     e3a:	79 af       	std	Y+57, r23	; 0x39
     e3c:	68 af       	std	Y+56, r22	; 0x38
     e3e:	1c 86       	std	Y+12, r1	; 0x0c
     e40:	1d 86       	std	Y+13, r1	; 0x0d
     e42:	1e 86       	std	Y+14, r1	; 0x0e
     e44:	1f 86       	std	Y+15, r1	; 0x0f
     e46:	18 8a       	std	Y+16, r1	; 0x10
     e48:	19 8a       	std	Y+17, r1	; 0x11
     e4a:	1a 8a       	std	Y+18, r1	; 0x12
     e4c:	1b 8a       	std	Y+19, r1	; 0x13
     e4e:	1c 8a       	std	Y+20, r1	; 0x14
     e50:	1d 8a       	std	Y+21, r1	; 0x15
     e52:	1e 8a       	std	Y+22, r1	; 0x16
     e54:	1f 8a       	std	Y+23, r1	; 0x17
     e56:	1c a2       	std	Y+36, r1	; 0x24
     e58:	1d a2       	std	Y+37, r1	; 0x25
     e5a:	1e a2       	std	Y+38, r1	; 0x26
     e5c:	1f a2       	std	Y+39, r1	; 0x27
     e5e:	18 a6       	std	Y+40, r1	; 0x28
     e60:	19 a6       	std	Y+41, r1	; 0x29
     e62:	1a a6       	std	Y+42, r1	; 0x2a
     e64:	1b a6       	std	Y+43, r1	; 0x2b
     e66:	1c a6       	std	Y+44, r1	; 0x2c
     e68:	1d a6       	std	Y+45, r1	; 0x2d
     e6a:	1e a6       	std	Y+46, r1	; 0x2e
     e6c:	1f a6       	std	Y+47, r1	; 0x2f
     e6e:	18 8e       	std	Y+24, r1	; 0x18
     e70:	19 8e       	std	Y+25, r1	; 0x19
     e72:	1a 8e       	std	Y+26, r1	; 0x1a
     e74:	1b 8e       	std	Y+27, r1	; 0x1b
     e76:	1c 8e       	std	Y+28, r1	; 0x1c
     e78:	1d 8e       	std	Y+29, r1	; 0x1d
     e7a:	1e 8e       	std	Y+30, r1	; 0x1e
     e7c:	1f 8e       	std	Y+31, r1	; 0x1f
     e7e:	18 a2       	std	Y+32, r1	; 0x20
     e80:	19 a2       	std	Y+33, r1	; 0x21
     e82:	1a a2       	std	Y+34, r1	; 0x22
     e84:	1b a2       	std	Y+35, r1	; 0x23
     e86:	40 e1       	ldi	r20, 0x10	; 16
     e88:	57 e2       	ldi	r21, 0x27	; 39
     e8a:	60 e0       	ldi	r22, 0x00	; 0
     e8c:	70 e0       	ldi	r23, 0x00	; 0
     e8e:	0e 94 0e 07 	call	0xe1c	; 0xe1c <_ZN4Gyro11delay_loopsEm>
     e92:	18 aa       	std	Y+48, r1	; 0x30
     e94:	19 aa       	std	Y+49, r1	; 0x31
     e96:	1a aa       	std	Y+50, r1	; 0x32
     e98:	1b aa       	std	Y+51, r1	; 0x33
     e9a:	88 ad       	ldd	r24, Y+56	; 0x38
     e9c:	99 ad       	ldd	r25, Y+57	; 0x39
     e9e:	dc 01       	movw	r26, r24
     ea0:	ed 91       	ld	r30, X+
     ea2:	fc 91       	ld	r31, X
     ea4:	06 84       	ldd	r0, Z+14	; 0x0e
     ea6:	f7 85       	ldd	r31, Z+15	; 0x0f
     ea8:	e0 2d       	mov	r30, r0
     eaa:	4f e0       	ldi	r20, 0x0F	; 15
     eac:	64 ed       	ldi	r22, 0xD4	; 212
     eae:	09 95       	icall
     eb0:	88 36       	cpi	r24, 0x68	; 104
     eb2:	41 f4       	brne	.+16     	; 0xec4 <_ZN4Gyro4initEP13I2C_Interface+0x98>
     eb4:	81 e0       	ldi	r24, 0x01	; 1
     eb6:	90 e0       	ldi	r25, 0x00	; 0
     eb8:	a0 e0       	ldi	r26, 0x00	; 0
     eba:	b0 e0       	ldi	r27, 0x00	; 0
     ebc:	88 ab       	std	Y+48, r24	; 0x30
     ebe:	99 ab       	std	Y+49, r25	; 0x31
     ec0:	aa ab       	std	Y+50, r26	; 0x32
     ec2:	bb ab       	std	Y+51, r27	; 0x33
     ec4:	88 ad       	ldd	r24, Y+56	; 0x38
     ec6:	99 ad       	ldd	r25, Y+57	; 0x39
     ec8:	dc 01       	movw	r26, r24
     eca:	ed 91       	ld	r30, X+
     ecc:	fc 91       	ld	r31, X
     ece:	00 84       	ldd	r0, Z+8	; 0x08
     ed0:	f1 85       	ldd	r31, Z+9	; 0x09
     ed2:	e0 2d       	mov	r30, r0
     ed4:	28 ea       	ldi	r18, 0xA8	; 168
     ed6:	40 e1       	ldi	r20, 0x10	; 16
     ed8:	64 ed       	ldi	r22, 0xD4	; 212
     eda:	09 95       	icall
     edc:	88 ad       	ldd	r24, Y+56	; 0x38
     ede:	99 ad       	ldd	r25, Y+57	; 0x39
     ee0:	dc 01       	movw	r26, r24
     ee2:	ed 91       	ld	r30, X+
     ee4:	fc 91       	ld	r31, X
     ee6:	00 84       	ldd	r0, Z+8	; 0x08
     ee8:	f1 85       	ldd	r31, Z+9	; 0x09
     eea:	e0 2d       	mov	r30, r0
     eec:	28 e3       	ldi	r18, 0x38	; 56
     eee:	4e e1       	ldi	r20, 0x1E	; 30
     ef0:	64 ed       	ldi	r22, 0xD4	; 212
     ef2:	09 95       	icall
     ef4:	88 ad       	ldd	r24, Y+56	; 0x38
     ef6:	99 ad       	ldd	r25, Y+57	; 0x39
     ef8:	dc 01       	movw	r26, r24
     efa:	ed 91       	ld	r30, X+
     efc:	fc 91       	ld	r31, X
     efe:	00 84       	ldd	r0, Z+8	; 0x08
     f00:	f1 85       	ldd	r31, Z+9	; 0x09
     f02:	e0 2d       	mov	r30, r0
     f04:	20 e0       	ldi	r18, 0x00	; 0
     f06:	4e e2       	ldi	r20, 0x2E	; 46
     f08:	64 ed       	ldi	r22, 0xD4	; 212
     f0a:	09 95       	icall
     f0c:	88 ad       	ldd	r24, Y+56	; 0x38
     f0e:	99 ad       	ldd	r25, Y+57	; 0x39
     f10:	dc 01       	movw	r26, r24
     f12:	ed 91       	ld	r30, X+
     f14:	fc 91       	ld	r31, X
     f16:	00 84       	ldd	r0, Z+8	; 0x08
     f18:	f1 85       	ldd	r31, Z+9	; 0x09
     f1a:	e0 2d       	mov	r30, r0
     f1c:	20 e0       	ldi	r18, 0x00	; 0
     f1e:	42 e1       	ldi	r20, 0x12	; 18
     f20:	64 ed       	ldi	r22, 0xD4	; 212
     f22:	09 95       	icall
     f24:	88 ad       	ldd	r24, Y+56	; 0x38
     f26:	99 ad       	ldd	r25, Y+57	; 0x39
     f28:	dc 01       	movw	r26, r24
     f2a:	ed 91       	ld	r30, X+
     f2c:	fc 91       	ld	r31, X
     f2e:	00 84       	ldd	r0, Z+8	; 0x08
     f30:	f1 85       	ldd	r31, Z+9	; 0x09
     f32:	e0 2d       	mov	r30, r0
     f34:	20 e6       	ldi	r18, 0x60	; 96
     f36:	40 e2       	ldi	r20, 0x20	; 32
     f38:	64 ed       	ldi	r22, 0xD4	; 212
     f3a:	09 95       	icall
     f3c:	88 ad       	ldd	r24, Y+56	; 0x38
     f3e:	99 ad       	ldd	r25, Y+57	; 0x39
     f40:	dc 01       	movw	r26, r24
     f42:	ed 91       	ld	r30, X+
     f44:	fc 91       	ld	r31, X
     f46:	00 84       	ldd	r0, Z+8	; 0x08
     f48:	f1 85       	ldd	r31, Z+9	; 0x09
     f4a:	e0 2d       	mov	r30, r0
     f4c:	28 e3       	ldi	r18, 0x38	; 56
     f4e:	4f e1       	ldi	r20, 0x1F	; 31
     f50:	64 ed       	ldi	r22, 0xD4	; 212
     f52:	09 95       	icall
     f54:	40 e1       	ldi	r20, 0x10	; 16
     f56:	57 e2       	ldi	r21, 0x27	; 39
     f58:	60 e0       	ldi	r22, 0x00	; 0
     f5a:	70 e0       	ldi	r23, 0x00	; 0
     f5c:	ce 01       	movw	r24, r28
     f5e:	0e 94 0e 07 	call	0xe1c	; 0xe1c <_ZN4Gyro11delay_loopsEm>
     f62:	60 e0       	ldi	r22, 0x00	; 0
     f64:	ce 01       	movw	r24, r28
     f66:	0e 94 80 05 	call	0xb00	; 0xb00 <_ZN4Gyro4readEb>
     f6a:	1c aa       	std	Y+52, r1	; 0x34
     f6c:	1d aa       	std	Y+53, r1	; 0x35
     f6e:	1e aa       	std	Y+54, r1	; 0x36
     f70:	1f aa       	std	Y+55, r1	; 0x37
     f72:	e1 2c       	mov	r14, r1
     f74:	f1 2c       	mov	r15, r1
     f76:	61 e0       	ldi	r22, 0x01	; 1
     f78:	ce 01       	movw	r24, r28
     f7a:	0e 94 80 05 	call	0xb00	; 0xb00 <_ZN4Gyro4readEb>
     f7e:	48 ee       	ldi	r20, 0xE8	; 232
     f80:	53 e0       	ldi	r21, 0x03	; 3
     f82:	60 e0       	ldi	r22, 0x00	; 0
     f84:	70 e0       	ldi	r23, 0x00	; 0
     f86:	ce 01       	movw	r24, r28
     f88:	0e 94 0e 07 	call	0xe1c	; 0xe1c <_ZN4Gyro11delay_loopsEm>
     f8c:	bf ef       	ldi	r27, 0xFF	; 255
     f8e:	eb 1a       	sub	r14, r27
     f90:	fb 0a       	sbc	r15, r27
     f92:	88 ec       	ldi	r24, 0xC8	; 200
     f94:	e8 16       	cp	r14, r24
     f96:	f1 04       	cpc	r15, r1
     f98:	71 f7       	brne	.-36     	; 0xf76 <_ZN4Gyro4initEP13I2C_Interface+0x14a>
     f9a:	6c a1       	ldd	r22, Y+36	; 0x24
     f9c:	7d a1       	ldd	r23, Y+37	; 0x25
     f9e:	8e a1       	ldd	r24, Y+38	; 0x26
     fa0:	9f a1       	ldd	r25, Y+39	; 0x27
     fa2:	28 ec       	ldi	r18, 0xC8	; 200
     fa4:	c2 2e       	mov	r12, r18
     fa6:	d1 2c       	mov	r13, r1
     fa8:	e1 2c       	mov	r14, r1
     faa:	f1 2c       	mov	r15, r1
     fac:	a7 01       	movw	r20, r14
     fae:	96 01       	movw	r18, r12
     fb0:	0e 94 39 09 	call	0x1272	; 0x1272 <__divmodsi4>
     fb4:	2c a3       	std	Y+36, r18	; 0x24
     fb6:	3d a3       	std	Y+37, r19	; 0x25
     fb8:	4e a3       	std	Y+38, r20	; 0x26
     fba:	5f a3       	std	Y+39, r21	; 0x27
     fbc:	68 a5       	ldd	r22, Y+40	; 0x28
     fbe:	79 a5       	ldd	r23, Y+41	; 0x29
     fc0:	8a a5       	ldd	r24, Y+42	; 0x2a
     fc2:	9b a5       	ldd	r25, Y+43	; 0x2b
     fc4:	a7 01       	movw	r20, r14
     fc6:	96 01       	movw	r18, r12
     fc8:	0e 94 39 09 	call	0x1272	; 0x1272 <__divmodsi4>
     fcc:	28 a7       	std	Y+40, r18	; 0x28
     fce:	39 a7       	std	Y+41, r19	; 0x29
     fd0:	4a a7       	std	Y+42, r20	; 0x2a
     fd2:	5b a7       	std	Y+43, r21	; 0x2b
     fd4:	6c a5       	ldd	r22, Y+44	; 0x2c
     fd6:	7d a5       	ldd	r23, Y+45	; 0x2d
     fd8:	8e a5       	ldd	r24, Y+46	; 0x2e
     fda:	9f a5       	ldd	r25, Y+47	; 0x2f
     fdc:	a7 01       	movw	r20, r14
     fde:	96 01       	movw	r18, r12
     fe0:	0e 94 39 09 	call	0x1272	; 0x1272 <__divmodsi4>
     fe4:	2c a7       	std	Y+44, r18	; 0x2c
     fe6:	3d a7       	std	Y+45, r19	; 0x2d
     fe8:	4e a7       	std	Y+46, r20	; 0x2e
     fea:	5f a7       	std	Y+47, r21	; 0x2f
     fec:	18 8e       	std	Y+24, r1	; 0x18
     fee:	19 8e       	std	Y+25, r1	; 0x19
     ff0:	1a 8e       	std	Y+26, r1	; 0x1a
     ff2:	1b 8e       	std	Y+27, r1	; 0x1b
     ff4:	1c 8e       	std	Y+28, r1	; 0x1c
     ff6:	1d 8e       	std	Y+29, r1	; 0x1d
     ff8:	1e 8e       	std	Y+30, r1	; 0x1e
     ffa:	1f 8e       	std	Y+31, r1	; 0x1f
     ffc:	18 a2       	std	Y+32, r1	; 0x20
     ffe:	19 a2       	std	Y+33, r1	; 0x21
    1000:	1a a2       	std	Y+34, r1	; 0x22
    1002:	1b a2       	std	Y+35, r1	; 0x23
    1004:	18 82       	st	Y, r1
    1006:	19 82       	std	Y+1, r1	; 0x01
    1008:	1a 82       	std	Y+2, r1	; 0x02
    100a:	1b 82       	std	Y+3, r1	; 0x03
    100c:	1c 82       	std	Y+4, r1	; 0x04
    100e:	1d 82       	std	Y+5, r1	; 0x05
    1010:	1e 82       	std	Y+6, r1	; 0x06
    1012:	1f 82       	std	Y+7, r1	; 0x07
    1014:	18 86       	std	Y+8, r1	; 0x08
    1016:	19 86       	std	Y+9, r1	; 0x09
    1018:	1a 86       	std	Y+10, r1	; 0x0a
    101a:	1b 86       	std	Y+11, r1	; 0x0b
    101c:	df 91       	pop	r29
    101e:	cf 91       	pop	r28
    1020:	ff 90       	pop	r15
    1022:	ef 90       	pop	r14
    1024:	df 90       	pop	r13
    1026:	cf 90       	pop	r12
    1028:	08 95       	ret

0000102a <_ZN5TimerC1Ev>:
    102a:	e1 eb       	ldi	r30, 0xB1	; 177
    102c:	f0 e0       	ldi	r31, 0x00	; 0
    102e:	11 82       	std	Z+1, r1	; 0x01
    1030:	10 82       	st	Z, r1
    1032:	13 82       	std	Z+3, r1	; 0x03
    1034:	12 82       	std	Z+2, r1	; 0x02
    1036:	15 82       	std	Z+5, r1	; 0x05
    1038:	14 82       	std	Z+4, r1	; 0x04
    103a:	16 82       	std	Z+6, r1	; 0x06
    103c:	37 96       	adiw	r30, 0x07	; 7
    103e:	80 e0       	ldi	r24, 0x00	; 0
    1040:	e9 3e       	cpi	r30, 0xE9	; 233
    1042:	f8 07       	cpc	r31, r24
    1044:	a1 f7       	brne	.-24     	; 0x102e <_ZN5TimerC1Ev+0x4>
    1046:	83 b7       	in	r24, 0x33	; 51
    1048:	88 60       	ori	r24, 0x08	; 8
    104a:	83 bf       	out	0x33, r24	; 51
    104c:	8b e9       	ldi	r24, 0x9B	; 155
    104e:	8c bf       	out	0x3c, r24	; 60
    1050:	83 e0       	ldi	r24, 0x03	; 3
    1052:	83 bf       	out	0x33, r24	; 51
    1054:	89 b7       	in	r24, 0x39	; 57
    1056:	82 60       	ori	r24, 0x02	; 2
    1058:	89 bf       	out	0x39, r24	; 57
    105a:	78 94       	sei
    105c:	08 95       	ret

0000105e <_ZN5Timer8add_taskEP4Taskj>:
    105e:	f8 94       	cli
    1060:	e1 eb       	ldi	r30, 0xB1	; 177
    1062:	f0 e0       	ldi	r31, 0x00	; 0
    1064:	80 e0       	ldi	r24, 0x00	; 0
    1066:	90 e0       	ldi	r25, 0x00	; 0
    1068:	20 81       	ld	r18, Z
    106a:	31 81       	ldd	r19, Z+1	; 0x01
    106c:	23 2b       	or	r18, r19
    106e:	81 f4       	brne	.+32     	; 0x1090 <_ZN5Timer8add_taskEP4Taskj+0x32>
    1070:	27 e0       	ldi	r18, 0x07	; 7
    1072:	28 9f       	mul	r18, r24
    1074:	f0 01       	movw	r30, r0
    1076:	29 9f       	mul	r18, r25
    1078:	f0 0d       	add	r31, r0
    107a:	11 24       	eor	r1, r1
    107c:	ef 54       	subi	r30, 0x4F	; 79
    107e:	ff 4f       	sbci	r31, 0xFF	; 255
    1080:	71 83       	std	Z+1, r23	; 0x01
    1082:	60 83       	st	Z, r22
    1084:	53 83       	std	Z+3, r21	; 0x03
    1086:	42 83       	std	Z+2, r20	; 0x02
    1088:	55 83       	std	Z+5, r21	; 0x05
    108a:	44 83       	std	Z+4, r20	; 0x04
    108c:	16 82       	std	Z+6, r1	; 0x06
    108e:	07 c0       	rjmp	.+14     	; 0x109e <_ZN5Timer8add_taskEP4Taskj+0x40>
    1090:	01 96       	adiw	r24, 0x01	; 1
    1092:	37 96       	adiw	r30, 0x07	; 7
    1094:	88 30       	cpi	r24, 0x08	; 8
    1096:	91 05       	cpc	r25, r1
    1098:	39 f7       	brne	.-50     	; 0x1068 <_ZN5Timer8add_taskEP4Taskj+0xa>
    109a:	8f ef       	ldi	r24, 0xFF	; 255
    109c:	9f ef       	ldi	r25, 0xFF	; 255
    109e:	78 94       	sei
    10a0:	08 95       	ret

000010a2 <_ZN5Timer4mainEv>:
    10a2:	cf 93       	push	r28
    10a4:	df 93       	push	r29
    10a6:	c7 eb       	ldi	r28, 0xB7	; 183
    10a8:	d0 e0       	ldi	r29, 0x00	; 0
    10aa:	fe 01       	movw	r30, r28
    10ac:	36 97       	sbiw	r30, 0x06	; 6
    10ae:	80 81       	ld	r24, Z
    10b0:	91 81       	ldd	r25, Z+1	; 0x01
    10b2:	00 97       	sbiw	r24, 0x00	; 0
    10b4:	59 f0       	breq	.+22     	; 0x10cc <_ZN5Timer4mainEv+0x2a>
    10b6:	28 81       	ld	r18, Y
    10b8:	22 23       	and	r18, r18
    10ba:	41 f0       	breq	.+16     	; 0x10cc <_ZN5Timer4mainEv+0x2a>
    10bc:	18 82       	st	Y, r1
    10be:	dc 01       	movw	r26, r24
    10c0:	ed 91       	ld	r30, X+
    10c2:	fc 91       	ld	r31, X
    10c4:	04 80       	ldd	r0, Z+4	; 0x04
    10c6:	f5 81       	ldd	r31, Z+5	; 0x05
    10c8:	e0 2d       	mov	r30, r0
    10ca:	09 95       	icall
    10cc:	27 96       	adiw	r28, 0x07	; 7
    10ce:	b0 e0       	ldi	r27, 0x00	; 0
    10d0:	cf 3e       	cpi	r28, 0xEF	; 239
    10d2:	db 07       	cpc	r29, r27
    10d4:	51 f7       	brne	.-44     	; 0x10aa <_ZN5Timer4mainEv+0x8>
    10d6:	df 91       	pop	r29
    10d8:	cf 91       	pop	r28
    10da:	08 95       	ret

000010dc <__vector_19>:
    10dc:	1f 92       	push	r1
    10de:	0f 92       	push	r0
    10e0:	0f b6       	in	r0, 0x3f	; 63
    10e2:	0f 92       	push	r0
    10e4:	11 24       	eor	r1, r1
    10e6:	8f 93       	push	r24
    10e8:	9f 93       	push	r25
    10ea:	af 93       	push	r26
    10ec:	bf 93       	push	r27
    10ee:	ef 93       	push	r30
    10f0:	ff 93       	push	r31
    10f2:	e1 eb       	ldi	r30, 0xB1	; 177
    10f4:	f0 e0       	ldi	r31, 0x00	; 0
    10f6:	a7 eb       	ldi	r26, 0xB7	; 183
    10f8:	b0 e0       	ldi	r27, 0x00	; 0
    10fa:	84 81       	ldd	r24, Z+4	; 0x04
    10fc:	95 81       	ldd	r25, Z+5	; 0x05
    10fe:	00 97       	sbiw	r24, 0x00	; 0
    1100:	21 f0       	breq	.+8      	; 0x110a <__vector_19+0x2e>
    1102:	01 97       	sbiw	r24, 0x01	; 1
    1104:	95 83       	std	Z+5, r25	; 0x05
    1106:	84 83       	std	Z+4, r24	; 0x04
    1108:	09 c0       	rjmp	.+18     	; 0x111c <__vector_19+0x40>
    110a:	82 81       	ldd	r24, Z+2	; 0x02
    110c:	93 81       	ldd	r25, Z+3	; 0x03
    110e:	95 83       	std	Z+5, r25	; 0x05
    1110:	84 83       	std	Z+4, r24	; 0x04
    1112:	8c 91       	ld	r24, X
    1114:	8f 3f       	cpi	r24, 0xFF	; 255
    1116:	11 f0       	breq	.+4      	; 0x111c <__vector_19+0x40>
    1118:	8f 5f       	subi	r24, 0xFF	; 255
    111a:	8c 93       	st	X, r24
    111c:	37 96       	adiw	r30, 0x07	; 7
    111e:	17 96       	adiw	r26, 0x07	; 7
    1120:	80 e0       	ldi	r24, 0x00	; 0
    1122:	e9 3e       	cpi	r30, 0xE9	; 233
    1124:	f8 07       	cpc	r31, r24
    1126:	49 f7       	brne	.-46     	; 0x10fa <__vector_19+0x1e>
    1128:	80 91 e9 00 	lds	r24, 0x00E9
    112c:	90 91 ea 00 	lds	r25, 0x00EA
    1130:	a0 91 eb 00 	lds	r26, 0x00EB
    1134:	b0 91 ec 00 	lds	r27, 0x00EC
    1138:	01 96       	adiw	r24, 0x01	; 1
    113a:	a1 1d       	adc	r26, r1
    113c:	b1 1d       	adc	r27, r1
    113e:	80 93 e9 00 	sts	0x00E9, r24
    1142:	90 93 ea 00 	sts	0x00EA, r25
    1146:	a0 93 eb 00 	sts	0x00EB, r26
    114a:	b0 93 ec 00 	sts	0x00EC, r27
    114e:	ff 91       	pop	r31
    1150:	ef 91       	pop	r30
    1152:	bf 91       	pop	r27
    1154:	af 91       	pop	r26
    1156:	9f 91       	pop	r25
    1158:	8f 91       	pop	r24
    115a:	0f 90       	pop	r0
    115c:	0f be       	out	0x3f, r0	; 63
    115e:	0f 90       	pop	r0
    1160:	1f 90       	pop	r1
    1162:	18 95       	reti

00001164 <_GLOBAL__sub_I_g_rt_time>:
    1164:	80 eb       	ldi	r24, 0xB0	; 176
    1166:	90 e0       	ldi	r25, 0x00	; 0
    1168:	0c 94 15 08 	jmp	0x102a	; 0x102a <_ZN5TimerC1Ev>

0000116c <_GLOBAL__sub_I_terminal>:
    116c:	8d ee       	ldi	r24, 0xED	; 237
    116e:	90 e0       	ldi	r25, 0x00	; 0
    1170:	0c 94 a0 02 	jmp	0x540	; 0x540 <_ZN5USARTC1Ev>

00001174 <_GLOBAL__sub_D_terminal>:
    1174:	8d ee       	ldi	r24, 0xED	; 237
    1176:	90 e0       	ldi	r25, 0x00	; 0
    1178:	0c 94 aa 02 	jmp	0x554	; 0x554 <_ZN5USARTD1Ev>

0000117c <_ZN10LEDDisplayD1Ev>:
    117c:	08 95       	ret

0000117e <_ZN10LEDDisplay4mainEv>:
    117e:	fc 01       	movw	r30, r24
    1180:	82 81       	ldd	r24, Z+2	; 0x02
    1182:	88 23       	and	r24, r24
    1184:	19 f0       	breq	.+6      	; 0x118c <_ZN10LEDDisplay4mainEv+0xe>
    1186:	81 30       	cpi	r24, 0x01	; 1
    1188:	51 f0       	breq	.+20     	; 0x119e <_ZN10LEDDisplay4mainEv+0x20>
    118a:	08 95       	ret
    118c:	88 b3       	in	r24, 0x18	; 24
    118e:	83 60       	ori	r24, 0x03	; 3
    1190:	88 bb       	out	0x18, r24	; 24
    1192:	83 81       	ldd	r24, Z+3	; 0x03
    1194:	85 bb       	out	0x15, r24	; 21
    1196:	c0 98       	cbi	0x18, 0	; 24
    1198:	81 e0       	ldi	r24, 0x01	; 1
    119a:	82 83       	std	Z+2, r24	; 0x02
    119c:	08 95       	ret
    119e:	88 b3       	in	r24, 0x18	; 24
    11a0:	83 60       	ori	r24, 0x03	; 3
    11a2:	88 bb       	out	0x18, r24	; 24
    11a4:	84 81       	ldd	r24, Z+4	; 0x04
    11a6:	85 bb       	out	0x15, r24	; 21
    11a8:	c1 98       	cbi	0x18, 1	; 24
    11aa:	12 82       	std	Z+2, r1	; 0x02
    11ac:	08 95       	ret

000011ae <_ZN10LEDDisplayD0Ev>:
    11ae:	0c 94 7c 05 	jmp	0xaf8	; 0xaf8 <_ZdlPv>

000011b2 <_ZN10LEDDisplayC1Ev>:
    11b2:	fc 01       	movw	r30, r24
    11b4:	86 ea       	ldi	r24, 0xA6	; 166
    11b6:	90 e0       	ldi	r25, 0x00	; 0
    11b8:	91 83       	std	Z+1, r25	; 0x01
    11ba:	80 83       	st	Z, r24
    11bc:	12 82       	std	Z+2, r1	; 0x02
    11be:	8f ef       	ldi	r24, 0xFF	; 255
    11c0:	83 83       	std	Z+3, r24	; 0x03
    11c2:	84 83       	std	Z+4, r24	; 0x04
    11c4:	97 b3       	in	r25, 0x17	; 23
    11c6:	93 60       	ori	r25, 0x03	; 3
    11c8:	97 bb       	out	0x17, r25	; 23
    11ca:	98 b3       	in	r25, 0x18	; 24
    11cc:	93 60       	ori	r25, 0x03	; 3
    11ce:	98 bb       	out	0x18, r25	; 24
    11d0:	85 bb       	out	0x15, r24	; 21
    11d2:	84 bb       	out	0x14, r24	; 20
    11d4:	45 e0       	ldi	r20, 0x05	; 5
    11d6:	50 e0       	ldi	r21, 0x00	; 0
    11d8:	bf 01       	movw	r22, r30
    11da:	80 eb       	ldi	r24, 0xB0	; 176
    11dc:	90 e0       	ldi	r25, 0x00	; 0
    11de:	0c 94 2f 08 	jmp	0x105e	; 0x105e <_ZN5Timer8add_taskEP4Taskj>

000011e2 <_ZN10LEDDisplay11display_decEh>:
    11e2:	dc 01       	movw	r26, r24
    11e4:	86 2f       	mov	r24, r22
    11e6:	64 36       	cpi	r22, 0x64	; 100
    11e8:	08 f0       	brcs	.+2      	; 0x11ec <_ZN10LEDDisplay11display_decEh+0xa>
    11ea:	83 e6       	ldi	r24, 0x63	; 99
    11ec:	6a e0       	ldi	r22, 0x0A	; 10
    11ee:	0e 94 0b 09 	call	0x1216	; 0x1216 <__udivmodqi4>
    11f2:	e8 2f       	mov	r30, r24
    11f4:	f0 e0       	ldi	r31, 0x00	; 0
    11f6:	ee 56       	subi	r30, 0x6E	; 110
    11f8:	ff 4f       	sbci	r31, 0xFF	; 255
    11fa:	20 81       	ld	r18, Z
    11fc:	20 95       	com	r18
    11fe:	13 96       	adiw	r26, 0x03	; 3
    1200:	2c 93       	st	X, r18
    1202:	13 97       	sbiw	r26, 0x03	; 3
    1204:	e9 2f       	mov	r30, r25
    1206:	f0 e0       	ldi	r31, 0x00	; 0
    1208:	ee 56       	subi	r30, 0x6E	; 110
    120a:	ff 4f       	sbci	r31, 0xFF	; 255
    120c:	90 81       	ld	r25, Z
    120e:	90 95       	com	r25
    1210:	14 96       	adiw	r26, 0x04	; 4
    1212:	9c 93       	st	X, r25
    1214:	08 95       	ret

00001216 <__udivmodqi4>:
    1216:	99 1b       	sub	r25, r25
    1218:	79 e0       	ldi	r23, 0x09	; 9
    121a:	04 c0       	rjmp	.+8      	; 0x1224 <__udivmodqi4_ep>

0000121c <__udivmodqi4_loop>:
    121c:	99 1f       	adc	r25, r25
    121e:	96 17       	cp	r25, r22
    1220:	08 f0       	brcs	.+2      	; 0x1224 <__udivmodqi4_ep>
    1222:	96 1b       	sub	r25, r22

00001224 <__udivmodqi4_ep>:
    1224:	88 1f       	adc	r24, r24
    1226:	7a 95       	dec	r23
    1228:	c9 f7       	brne	.-14     	; 0x121c <__udivmodqi4_loop>
    122a:	80 95       	com	r24
    122c:	08 95       	ret

0000122e <__udivmodsi4>:
    122e:	a1 e2       	ldi	r26, 0x21	; 33
    1230:	1a 2e       	mov	r1, r26
    1232:	aa 1b       	sub	r26, r26
    1234:	bb 1b       	sub	r27, r27
    1236:	fd 01       	movw	r30, r26
    1238:	0d c0       	rjmp	.+26     	; 0x1254 <__udivmodsi4_ep>

0000123a <__udivmodsi4_loop>:
    123a:	aa 1f       	adc	r26, r26
    123c:	bb 1f       	adc	r27, r27
    123e:	ee 1f       	adc	r30, r30
    1240:	ff 1f       	adc	r31, r31
    1242:	a2 17       	cp	r26, r18
    1244:	b3 07       	cpc	r27, r19
    1246:	e4 07       	cpc	r30, r20
    1248:	f5 07       	cpc	r31, r21
    124a:	20 f0       	brcs	.+8      	; 0x1254 <__udivmodsi4_ep>
    124c:	a2 1b       	sub	r26, r18
    124e:	b3 0b       	sbc	r27, r19
    1250:	e4 0b       	sbc	r30, r20
    1252:	f5 0b       	sbc	r31, r21

00001254 <__udivmodsi4_ep>:
    1254:	66 1f       	adc	r22, r22
    1256:	77 1f       	adc	r23, r23
    1258:	88 1f       	adc	r24, r24
    125a:	99 1f       	adc	r25, r25
    125c:	1a 94       	dec	r1
    125e:	69 f7       	brne	.-38     	; 0x123a <__udivmodsi4_loop>
    1260:	60 95       	com	r22
    1262:	70 95       	com	r23
    1264:	80 95       	com	r24
    1266:	90 95       	com	r25
    1268:	9b 01       	movw	r18, r22
    126a:	ac 01       	movw	r20, r24
    126c:	bd 01       	movw	r22, r26
    126e:	cf 01       	movw	r24, r30
    1270:	08 95       	ret

00001272 <__divmodsi4>:
    1272:	05 2e       	mov	r0, r21
    1274:	97 fb       	bst	r25, 7
    1276:	1e f4       	brtc	.+6      	; 0x127e <__divmodsi4+0xc>
    1278:	00 94       	com	r0
    127a:	0e 94 50 09 	call	0x12a0	; 0x12a0 <__negsi2>
    127e:	57 fd       	sbrc	r21, 7
    1280:	07 d0       	rcall	.+14     	; 0x1290 <__divmodsi4_neg2>
    1282:	0e 94 17 09 	call	0x122e	; 0x122e <__udivmodsi4>
    1286:	07 fc       	sbrc	r0, 7
    1288:	03 d0       	rcall	.+6      	; 0x1290 <__divmodsi4_neg2>
    128a:	4e f4       	brtc	.+18     	; 0x129e <__divmodsi4_exit>
    128c:	0c 94 50 09 	jmp	0x12a0	; 0x12a0 <__negsi2>

00001290 <__divmodsi4_neg2>:
    1290:	50 95       	com	r21
    1292:	40 95       	com	r20
    1294:	30 95       	com	r19
    1296:	21 95       	neg	r18
    1298:	3f 4f       	sbci	r19, 0xFF	; 255
    129a:	4f 4f       	sbci	r20, 0xFF	; 255
    129c:	5f 4f       	sbci	r21, 0xFF	; 255

0000129e <__divmodsi4_exit>:
    129e:	08 95       	ret

000012a0 <__negsi2>:
    12a0:	90 95       	com	r25
    12a2:	80 95       	com	r24
    12a4:	70 95       	com	r23
    12a6:	61 95       	neg	r22
    12a8:	7f 4f       	sbci	r23, 0xFF	; 255
    12aa:	8f 4f       	sbci	r24, 0xFF	; 255
    12ac:	9f 4f       	sbci	r25, 0xFF	; 255
    12ae:	08 95       	ret

000012b0 <__tablejump2__>:
    12b0:	ee 0f       	add	r30, r30
    12b2:	ff 1f       	adc	r31, r31
    12b4:	05 90       	lpm	r0, Z+
    12b6:	f4 91       	lpm	r31, Z
    12b8:	e0 2d       	mov	r30, r0
    12ba:	09 94       	ijmp

000012bc <__subsf3>:
    12bc:	50 58       	subi	r21, 0x80	; 128

000012be <__addsf3>:
    12be:	bb 27       	eor	r27, r27
    12c0:	aa 27       	eor	r26, r26
    12c2:	0e 94 76 09 	call	0x12ec	; 0x12ec <__addsf3x>
    12c6:	0c 94 7e 0a 	jmp	0x14fc	; 0x14fc <__fp_round>
    12ca:	0e 94 70 0a 	call	0x14e0	; 0x14e0 <__fp_pscA>
    12ce:	38 f0       	brcs	.+14     	; 0x12de <__addsf3+0x20>
    12d0:	0e 94 77 0a 	call	0x14ee	; 0x14ee <__fp_pscB>
    12d4:	20 f0       	brcs	.+8      	; 0x12de <__addsf3+0x20>
    12d6:	39 f4       	brne	.+14     	; 0x12e6 <__addsf3+0x28>
    12d8:	9f 3f       	cpi	r25, 0xFF	; 255
    12da:	19 f4       	brne	.+6      	; 0x12e2 <__addsf3+0x24>
    12dc:	26 f4       	brtc	.+8      	; 0x12e6 <__addsf3+0x28>
    12de:	0c 94 6d 0a 	jmp	0x14da	; 0x14da <__fp_nan>
    12e2:	0e f4       	brtc	.+2      	; 0x12e6 <__addsf3+0x28>
    12e4:	e0 95       	com	r30
    12e6:	e7 fb       	bst	r30, 7
    12e8:	0c 94 67 0a 	jmp	0x14ce	; 0x14ce <__fp_inf>

000012ec <__addsf3x>:
    12ec:	e9 2f       	mov	r30, r25
    12ee:	0e 94 8f 0a 	call	0x151e	; 0x151e <__fp_split3>
    12f2:	58 f3       	brcs	.-42     	; 0x12ca <__addsf3+0xc>
    12f4:	ba 17       	cp	r27, r26
    12f6:	62 07       	cpc	r22, r18
    12f8:	73 07       	cpc	r23, r19
    12fa:	84 07       	cpc	r24, r20
    12fc:	95 07       	cpc	r25, r21
    12fe:	20 f0       	brcs	.+8      	; 0x1308 <__addsf3x+0x1c>
    1300:	79 f4       	brne	.+30     	; 0x1320 <__addsf3x+0x34>
    1302:	a6 f5       	brtc	.+104    	; 0x136c <__addsf3x+0x80>
    1304:	0c 94 b1 0a 	jmp	0x1562	; 0x1562 <__fp_zero>
    1308:	0e f4       	brtc	.+2      	; 0x130c <__addsf3x+0x20>
    130a:	e0 95       	com	r30
    130c:	0b 2e       	mov	r0, r27
    130e:	ba 2f       	mov	r27, r26
    1310:	a0 2d       	mov	r26, r0
    1312:	0b 01       	movw	r0, r22
    1314:	b9 01       	movw	r22, r18
    1316:	90 01       	movw	r18, r0
    1318:	0c 01       	movw	r0, r24
    131a:	ca 01       	movw	r24, r20
    131c:	a0 01       	movw	r20, r0
    131e:	11 24       	eor	r1, r1
    1320:	ff 27       	eor	r31, r31
    1322:	59 1b       	sub	r21, r25
    1324:	99 f0       	breq	.+38     	; 0x134c <__addsf3x+0x60>
    1326:	59 3f       	cpi	r21, 0xF9	; 249
    1328:	50 f4       	brcc	.+20     	; 0x133e <__addsf3x+0x52>
    132a:	50 3e       	cpi	r21, 0xE0	; 224
    132c:	68 f1       	brcs	.+90     	; 0x1388 <__addsf3x+0x9c>
    132e:	1a 16       	cp	r1, r26
    1330:	f0 40       	sbci	r31, 0x00	; 0
    1332:	a2 2f       	mov	r26, r18
    1334:	23 2f       	mov	r18, r19
    1336:	34 2f       	mov	r19, r20
    1338:	44 27       	eor	r20, r20
    133a:	58 5f       	subi	r21, 0xF8	; 248
    133c:	f3 cf       	rjmp	.-26     	; 0x1324 <__addsf3x+0x38>
    133e:	46 95       	lsr	r20
    1340:	37 95       	ror	r19
    1342:	27 95       	ror	r18
    1344:	a7 95       	ror	r26
    1346:	f0 40       	sbci	r31, 0x00	; 0
    1348:	53 95       	inc	r21
    134a:	c9 f7       	brne	.-14     	; 0x133e <__addsf3x+0x52>
    134c:	7e f4       	brtc	.+30     	; 0x136c <__addsf3x+0x80>
    134e:	1f 16       	cp	r1, r31
    1350:	ba 0b       	sbc	r27, r26
    1352:	62 0b       	sbc	r22, r18
    1354:	73 0b       	sbc	r23, r19
    1356:	84 0b       	sbc	r24, r20
    1358:	ba f0       	brmi	.+46     	; 0x1388 <__addsf3x+0x9c>
    135a:	91 50       	subi	r25, 0x01	; 1
    135c:	a1 f0       	breq	.+40     	; 0x1386 <__addsf3x+0x9a>
    135e:	ff 0f       	add	r31, r31
    1360:	bb 1f       	adc	r27, r27
    1362:	66 1f       	adc	r22, r22
    1364:	77 1f       	adc	r23, r23
    1366:	88 1f       	adc	r24, r24
    1368:	c2 f7       	brpl	.-16     	; 0x135a <__addsf3x+0x6e>
    136a:	0e c0       	rjmp	.+28     	; 0x1388 <__addsf3x+0x9c>
    136c:	ba 0f       	add	r27, r26
    136e:	62 1f       	adc	r22, r18
    1370:	73 1f       	adc	r23, r19
    1372:	84 1f       	adc	r24, r20
    1374:	48 f4       	brcc	.+18     	; 0x1388 <__addsf3x+0x9c>
    1376:	87 95       	ror	r24
    1378:	77 95       	ror	r23
    137a:	67 95       	ror	r22
    137c:	b7 95       	ror	r27
    137e:	f7 95       	ror	r31
    1380:	9e 3f       	cpi	r25, 0xFE	; 254
    1382:	08 f0       	brcs	.+2      	; 0x1386 <__addsf3x+0x9a>
    1384:	b0 cf       	rjmp	.-160    	; 0x12e6 <__addsf3+0x28>
    1386:	93 95       	inc	r25
    1388:	88 0f       	add	r24, r24
    138a:	08 f0       	brcs	.+2      	; 0x138e <__addsf3x+0xa2>
    138c:	99 27       	eor	r25, r25
    138e:	ee 0f       	add	r30, r30
    1390:	97 95       	ror	r25
    1392:	87 95       	ror	r24
    1394:	08 95       	ret

00001396 <__cmpsf2>:
    1396:	0e 94 43 0a 	call	0x1486	; 0x1486 <__fp_cmp>
    139a:	08 f4       	brcc	.+2      	; 0x139e <__cmpsf2+0x8>
    139c:	81 e0       	ldi	r24, 0x01	; 1
    139e:	08 95       	ret

000013a0 <__fixsfsi>:
    13a0:	0e 94 d7 09 	call	0x13ae	; 0x13ae <__fixunssfsi>
    13a4:	68 94       	set
    13a6:	b1 11       	cpse	r27, r1
    13a8:	0c 94 b2 0a 	jmp	0x1564	; 0x1564 <__fp_szero>
    13ac:	08 95       	ret

000013ae <__fixunssfsi>:
    13ae:	0e 94 97 0a 	call	0x152e	; 0x152e <__fp_splitA>
    13b2:	88 f0       	brcs	.+34     	; 0x13d6 <__fixunssfsi+0x28>
    13b4:	9f 57       	subi	r25, 0x7F	; 127
    13b6:	98 f0       	brcs	.+38     	; 0x13de <__fixunssfsi+0x30>
    13b8:	b9 2f       	mov	r27, r25
    13ba:	99 27       	eor	r25, r25
    13bc:	b7 51       	subi	r27, 0x17	; 23
    13be:	b0 f0       	brcs	.+44     	; 0x13ec <__fixunssfsi+0x3e>
    13c0:	e1 f0       	breq	.+56     	; 0x13fa <__fixunssfsi+0x4c>
    13c2:	66 0f       	add	r22, r22
    13c4:	77 1f       	adc	r23, r23
    13c6:	88 1f       	adc	r24, r24
    13c8:	99 1f       	adc	r25, r25
    13ca:	1a f0       	brmi	.+6      	; 0x13d2 <__fixunssfsi+0x24>
    13cc:	ba 95       	dec	r27
    13ce:	c9 f7       	brne	.-14     	; 0x13c2 <__fixunssfsi+0x14>
    13d0:	14 c0       	rjmp	.+40     	; 0x13fa <__fixunssfsi+0x4c>
    13d2:	b1 30       	cpi	r27, 0x01	; 1
    13d4:	91 f0       	breq	.+36     	; 0x13fa <__fixunssfsi+0x4c>
    13d6:	0e 94 b1 0a 	call	0x1562	; 0x1562 <__fp_zero>
    13da:	b1 e0       	ldi	r27, 0x01	; 1
    13dc:	08 95       	ret
    13de:	0c 94 b1 0a 	jmp	0x1562	; 0x1562 <__fp_zero>
    13e2:	67 2f       	mov	r22, r23
    13e4:	78 2f       	mov	r23, r24
    13e6:	88 27       	eor	r24, r24
    13e8:	b8 5f       	subi	r27, 0xF8	; 248
    13ea:	39 f0       	breq	.+14     	; 0x13fa <__fixunssfsi+0x4c>
    13ec:	b9 3f       	cpi	r27, 0xF9	; 249
    13ee:	cc f3       	brlt	.-14     	; 0x13e2 <__fixunssfsi+0x34>
    13f0:	86 95       	lsr	r24
    13f2:	77 95       	ror	r23
    13f4:	67 95       	ror	r22
    13f6:	b3 95       	inc	r27
    13f8:	d9 f7       	brne	.-10     	; 0x13f0 <__fixunssfsi+0x42>
    13fa:	3e f4       	brtc	.+14     	; 0x140a <__fixunssfsi+0x5c>
    13fc:	90 95       	com	r25
    13fe:	80 95       	com	r24
    1400:	70 95       	com	r23
    1402:	61 95       	neg	r22
    1404:	7f 4f       	sbci	r23, 0xFF	; 255
    1406:	8f 4f       	sbci	r24, 0xFF	; 255
    1408:	9f 4f       	sbci	r25, 0xFF	; 255
    140a:	08 95       	ret

0000140c <__floatunsisf>:
    140c:	e8 94       	clt
    140e:	09 c0       	rjmp	.+18     	; 0x1422 <__floatsisf+0x12>

00001410 <__floatsisf>:
    1410:	97 fb       	bst	r25, 7
    1412:	3e f4       	brtc	.+14     	; 0x1422 <__floatsisf+0x12>
    1414:	90 95       	com	r25
    1416:	80 95       	com	r24
    1418:	70 95       	com	r23
    141a:	61 95       	neg	r22
    141c:	7f 4f       	sbci	r23, 0xFF	; 255
    141e:	8f 4f       	sbci	r24, 0xFF	; 255
    1420:	9f 4f       	sbci	r25, 0xFF	; 255
    1422:	99 23       	and	r25, r25
    1424:	a9 f0       	breq	.+42     	; 0x1450 <__floatsisf+0x40>
    1426:	f9 2f       	mov	r31, r25
    1428:	96 e9       	ldi	r25, 0x96	; 150
    142a:	bb 27       	eor	r27, r27
    142c:	93 95       	inc	r25
    142e:	f6 95       	lsr	r31
    1430:	87 95       	ror	r24
    1432:	77 95       	ror	r23
    1434:	67 95       	ror	r22
    1436:	b7 95       	ror	r27
    1438:	f1 11       	cpse	r31, r1
    143a:	f8 cf       	rjmp	.-16     	; 0x142c <__floatsisf+0x1c>
    143c:	fa f4       	brpl	.+62     	; 0x147c <__floatsisf+0x6c>
    143e:	bb 0f       	add	r27, r27
    1440:	11 f4       	brne	.+4      	; 0x1446 <__floatsisf+0x36>
    1442:	60 ff       	sbrs	r22, 0
    1444:	1b c0       	rjmp	.+54     	; 0x147c <__floatsisf+0x6c>
    1446:	6f 5f       	subi	r22, 0xFF	; 255
    1448:	7f 4f       	sbci	r23, 0xFF	; 255
    144a:	8f 4f       	sbci	r24, 0xFF	; 255
    144c:	9f 4f       	sbci	r25, 0xFF	; 255
    144e:	16 c0       	rjmp	.+44     	; 0x147c <__floatsisf+0x6c>
    1450:	88 23       	and	r24, r24
    1452:	11 f0       	breq	.+4      	; 0x1458 <__floatsisf+0x48>
    1454:	96 e9       	ldi	r25, 0x96	; 150
    1456:	11 c0       	rjmp	.+34     	; 0x147a <__floatsisf+0x6a>
    1458:	77 23       	and	r23, r23
    145a:	21 f0       	breq	.+8      	; 0x1464 <__floatsisf+0x54>
    145c:	9e e8       	ldi	r25, 0x8E	; 142
    145e:	87 2f       	mov	r24, r23
    1460:	76 2f       	mov	r23, r22
    1462:	05 c0       	rjmp	.+10     	; 0x146e <__floatsisf+0x5e>
    1464:	66 23       	and	r22, r22
    1466:	71 f0       	breq	.+28     	; 0x1484 <__floatsisf+0x74>
    1468:	96 e8       	ldi	r25, 0x86	; 134
    146a:	86 2f       	mov	r24, r22
    146c:	70 e0       	ldi	r23, 0x00	; 0
    146e:	60 e0       	ldi	r22, 0x00	; 0
    1470:	2a f0       	brmi	.+10     	; 0x147c <__floatsisf+0x6c>
    1472:	9a 95       	dec	r25
    1474:	66 0f       	add	r22, r22
    1476:	77 1f       	adc	r23, r23
    1478:	88 1f       	adc	r24, r24
    147a:	da f7       	brpl	.-10     	; 0x1472 <__floatsisf+0x62>
    147c:	88 0f       	add	r24, r24
    147e:	96 95       	lsr	r25
    1480:	87 95       	ror	r24
    1482:	97 f9       	bld	r25, 7
    1484:	08 95       	ret

00001486 <__fp_cmp>:
    1486:	99 0f       	add	r25, r25
    1488:	00 08       	sbc	r0, r0
    148a:	55 0f       	add	r21, r21
    148c:	aa 0b       	sbc	r26, r26
    148e:	e0 e8       	ldi	r30, 0x80	; 128
    1490:	fe ef       	ldi	r31, 0xFE	; 254
    1492:	16 16       	cp	r1, r22
    1494:	17 06       	cpc	r1, r23
    1496:	e8 07       	cpc	r30, r24
    1498:	f9 07       	cpc	r31, r25
    149a:	c0 f0       	brcs	.+48     	; 0x14cc <__fp_cmp+0x46>
    149c:	12 16       	cp	r1, r18
    149e:	13 06       	cpc	r1, r19
    14a0:	e4 07       	cpc	r30, r20
    14a2:	f5 07       	cpc	r31, r21
    14a4:	98 f0       	brcs	.+38     	; 0x14cc <__fp_cmp+0x46>
    14a6:	62 1b       	sub	r22, r18
    14a8:	73 0b       	sbc	r23, r19
    14aa:	84 0b       	sbc	r24, r20
    14ac:	95 0b       	sbc	r25, r21
    14ae:	39 f4       	brne	.+14     	; 0x14be <__fp_cmp+0x38>
    14b0:	0a 26       	eor	r0, r26
    14b2:	61 f0       	breq	.+24     	; 0x14cc <__fp_cmp+0x46>
    14b4:	23 2b       	or	r18, r19
    14b6:	24 2b       	or	r18, r20
    14b8:	25 2b       	or	r18, r21
    14ba:	21 f4       	brne	.+8      	; 0x14c4 <__fp_cmp+0x3e>
    14bc:	08 95       	ret
    14be:	0a 26       	eor	r0, r26
    14c0:	09 f4       	brne	.+2      	; 0x14c4 <__fp_cmp+0x3e>
    14c2:	a1 40       	sbci	r26, 0x01	; 1
    14c4:	a6 95       	lsr	r26
    14c6:	8f ef       	ldi	r24, 0xFF	; 255
    14c8:	81 1d       	adc	r24, r1
    14ca:	81 1d       	adc	r24, r1
    14cc:	08 95       	ret

000014ce <__fp_inf>:
    14ce:	97 f9       	bld	r25, 7
    14d0:	9f 67       	ori	r25, 0x7F	; 127
    14d2:	80 e8       	ldi	r24, 0x80	; 128
    14d4:	70 e0       	ldi	r23, 0x00	; 0
    14d6:	60 e0       	ldi	r22, 0x00	; 0
    14d8:	08 95       	ret

000014da <__fp_nan>:
    14da:	9f ef       	ldi	r25, 0xFF	; 255
    14dc:	80 ec       	ldi	r24, 0xC0	; 192
    14de:	08 95       	ret

000014e0 <__fp_pscA>:
    14e0:	00 24       	eor	r0, r0
    14e2:	0a 94       	dec	r0
    14e4:	16 16       	cp	r1, r22
    14e6:	17 06       	cpc	r1, r23
    14e8:	18 06       	cpc	r1, r24
    14ea:	09 06       	cpc	r0, r25
    14ec:	08 95       	ret

000014ee <__fp_pscB>:
    14ee:	00 24       	eor	r0, r0
    14f0:	0a 94       	dec	r0
    14f2:	12 16       	cp	r1, r18
    14f4:	13 06       	cpc	r1, r19
    14f6:	14 06       	cpc	r1, r20
    14f8:	05 06       	cpc	r0, r21
    14fa:	08 95       	ret

000014fc <__fp_round>:
    14fc:	09 2e       	mov	r0, r25
    14fe:	03 94       	inc	r0
    1500:	00 0c       	add	r0, r0
    1502:	11 f4       	brne	.+4      	; 0x1508 <__fp_round+0xc>
    1504:	88 23       	and	r24, r24
    1506:	52 f0       	brmi	.+20     	; 0x151c <__fp_round+0x20>
    1508:	bb 0f       	add	r27, r27
    150a:	40 f4       	brcc	.+16     	; 0x151c <__fp_round+0x20>
    150c:	bf 2b       	or	r27, r31
    150e:	11 f4       	brne	.+4      	; 0x1514 <__fp_round+0x18>
    1510:	60 ff       	sbrs	r22, 0
    1512:	04 c0       	rjmp	.+8      	; 0x151c <__fp_round+0x20>
    1514:	6f 5f       	subi	r22, 0xFF	; 255
    1516:	7f 4f       	sbci	r23, 0xFF	; 255
    1518:	8f 4f       	sbci	r24, 0xFF	; 255
    151a:	9f 4f       	sbci	r25, 0xFF	; 255
    151c:	08 95       	ret

0000151e <__fp_split3>:
    151e:	57 fd       	sbrc	r21, 7
    1520:	90 58       	subi	r25, 0x80	; 128
    1522:	44 0f       	add	r20, r20
    1524:	55 1f       	adc	r21, r21
    1526:	59 f0       	breq	.+22     	; 0x153e <__fp_splitA+0x10>
    1528:	5f 3f       	cpi	r21, 0xFF	; 255
    152a:	71 f0       	breq	.+28     	; 0x1548 <__fp_splitA+0x1a>
    152c:	47 95       	ror	r20

0000152e <__fp_splitA>:
    152e:	88 0f       	add	r24, r24
    1530:	97 fb       	bst	r25, 7
    1532:	99 1f       	adc	r25, r25
    1534:	61 f0       	breq	.+24     	; 0x154e <__fp_splitA+0x20>
    1536:	9f 3f       	cpi	r25, 0xFF	; 255
    1538:	79 f0       	breq	.+30     	; 0x1558 <__fp_splitA+0x2a>
    153a:	87 95       	ror	r24
    153c:	08 95       	ret
    153e:	12 16       	cp	r1, r18
    1540:	13 06       	cpc	r1, r19
    1542:	14 06       	cpc	r1, r20
    1544:	55 1f       	adc	r21, r21
    1546:	f2 cf       	rjmp	.-28     	; 0x152c <__fp_split3+0xe>
    1548:	46 95       	lsr	r20
    154a:	f1 df       	rcall	.-30     	; 0x152e <__fp_splitA>
    154c:	08 c0       	rjmp	.+16     	; 0x155e <__fp_splitA+0x30>
    154e:	16 16       	cp	r1, r22
    1550:	17 06       	cpc	r1, r23
    1552:	18 06       	cpc	r1, r24
    1554:	99 1f       	adc	r25, r25
    1556:	f1 cf       	rjmp	.-30     	; 0x153a <__fp_splitA+0xc>
    1558:	86 95       	lsr	r24
    155a:	71 05       	cpc	r23, r1
    155c:	61 05       	cpc	r22, r1
    155e:	08 94       	sec
    1560:	08 95       	ret

00001562 <__fp_zero>:
    1562:	e8 94       	clt

00001564 <__fp_szero>:
    1564:	bb 27       	eor	r27, r27
    1566:	66 27       	eor	r22, r22
    1568:	77 27       	eor	r23, r23
    156a:	cb 01       	movw	r24, r22
    156c:	97 f9       	bld	r25, 7
    156e:	08 95       	ret

00001570 <__gesf2>:
    1570:	0e 94 43 0a 	call	0x1486	; 0x1486 <__fp_cmp>
    1574:	08 f4       	brcc	.+2      	; 0x1578 <__gesf2+0x8>
    1576:	8f ef       	ldi	r24, 0xFF	; 255
    1578:	08 95       	ret

0000157a <__mulsf3>:
    157a:	0e 94 d0 0a 	call	0x15a0	; 0x15a0 <__mulsf3x>
    157e:	0c 94 7e 0a 	jmp	0x14fc	; 0x14fc <__fp_round>
    1582:	0e 94 70 0a 	call	0x14e0	; 0x14e0 <__fp_pscA>
    1586:	38 f0       	brcs	.+14     	; 0x1596 <__mulsf3+0x1c>
    1588:	0e 94 77 0a 	call	0x14ee	; 0x14ee <__fp_pscB>
    158c:	20 f0       	brcs	.+8      	; 0x1596 <__mulsf3+0x1c>
    158e:	95 23       	and	r25, r21
    1590:	11 f0       	breq	.+4      	; 0x1596 <__mulsf3+0x1c>
    1592:	0c 94 67 0a 	jmp	0x14ce	; 0x14ce <__fp_inf>
    1596:	0c 94 6d 0a 	jmp	0x14da	; 0x14da <__fp_nan>
    159a:	11 24       	eor	r1, r1
    159c:	0c 94 b2 0a 	jmp	0x1564	; 0x1564 <__fp_szero>

000015a0 <__mulsf3x>:
    15a0:	0e 94 8f 0a 	call	0x151e	; 0x151e <__fp_split3>
    15a4:	70 f3       	brcs	.-36     	; 0x1582 <__mulsf3+0x8>

000015a6 <__mulsf3_pse>:
    15a6:	95 9f       	mul	r25, r21
    15a8:	c1 f3       	breq	.-16     	; 0x159a <__mulsf3+0x20>
    15aa:	95 0f       	add	r25, r21
    15ac:	50 e0       	ldi	r21, 0x00	; 0
    15ae:	55 1f       	adc	r21, r21
    15b0:	62 9f       	mul	r22, r18
    15b2:	f0 01       	movw	r30, r0
    15b4:	72 9f       	mul	r23, r18
    15b6:	bb 27       	eor	r27, r27
    15b8:	f0 0d       	add	r31, r0
    15ba:	b1 1d       	adc	r27, r1
    15bc:	63 9f       	mul	r22, r19
    15be:	aa 27       	eor	r26, r26
    15c0:	f0 0d       	add	r31, r0
    15c2:	b1 1d       	adc	r27, r1
    15c4:	aa 1f       	adc	r26, r26
    15c6:	64 9f       	mul	r22, r20
    15c8:	66 27       	eor	r22, r22
    15ca:	b0 0d       	add	r27, r0
    15cc:	a1 1d       	adc	r26, r1
    15ce:	66 1f       	adc	r22, r22
    15d0:	82 9f       	mul	r24, r18
    15d2:	22 27       	eor	r18, r18
    15d4:	b0 0d       	add	r27, r0
    15d6:	a1 1d       	adc	r26, r1
    15d8:	62 1f       	adc	r22, r18
    15da:	73 9f       	mul	r23, r19
    15dc:	b0 0d       	add	r27, r0
    15de:	a1 1d       	adc	r26, r1
    15e0:	62 1f       	adc	r22, r18
    15e2:	83 9f       	mul	r24, r19
    15e4:	a0 0d       	add	r26, r0
    15e6:	61 1d       	adc	r22, r1
    15e8:	22 1f       	adc	r18, r18
    15ea:	74 9f       	mul	r23, r20
    15ec:	33 27       	eor	r19, r19
    15ee:	a0 0d       	add	r26, r0
    15f0:	61 1d       	adc	r22, r1
    15f2:	23 1f       	adc	r18, r19
    15f4:	84 9f       	mul	r24, r20
    15f6:	60 0d       	add	r22, r0
    15f8:	21 1d       	adc	r18, r1
    15fa:	82 2f       	mov	r24, r18
    15fc:	76 2f       	mov	r23, r22
    15fe:	6a 2f       	mov	r22, r26
    1600:	11 24       	eor	r1, r1
    1602:	9f 57       	subi	r25, 0x7F	; 127
    1604:	50 40       	sbci	r21, 0x00	; 0
    1606:	9a f0       	brmi	.+38     	; 0x162e <__mulsf3_pse+0x88>
    1608:	f1 f0       	breq	.+60     	; 0x1646 <__mulsf3_pse+0xa0>
    160a:	88 23       	and	r24, r24
    160c:	4a f0       	brmi	.+18     	; 0x1620 <__mulsf3_pse+0x7a>
    160e:	ee 0f       	add	r30, r30
    1610:	ff 1f       	adc	r31, r31
    1612:	bb 1f       	adc	r27, r27
    1614:	66 1f       	adc	r22, r22
    1616:	77 1f       	adc	r23, r23
    1618:	88 1f       	adc	r24, r24
    161a:	91 50       	subi	r25, 0x01	; 1
    161c:	50 40       	sbci	r21, 0x00	; 0
    161e:	a9 f7       	brne	.-22     	; 0x160a <__mulsf3_pse+0x64>
    1620:	9e 3f       	cpi	r25, 0xFE	; 254
    1622:	51 05       	cpc	r21, r1
    1624:	80 f0       	brcs	.+32     	; 0x1646 <__mulsf3_pse+0xa0>
    1626:	0c 94 67 0a 	jmp	0x14ce	; 0x14ce <__fp_inf>
    162a:	0c 94 b2 0a 	jmp	0x1564	; 0x1564 <__fp_szero>
    162e:	5f 3f       	cpi	r21, 0xFF	; 255
    1630:	e4 f3       	brlt	.-8      	; 0x162a <__mulsf3_pse+0x84>
    1632:	98 3e       	cpi	r25, 0xE8	; 232
    1634:	d4 f3       	brlt	.-12     	; 0x162a <__mulsf3_pse+0x84>
    1636:	86 95       	lsr	r24
    1638:	77 95       	ror	r23
    163a:	67 95       	ror	r22
    163c:	b7 95       	ror	r27
    163e:	f7 95       	ror	r31
    1640:	e7 95       	ror	r30
    1642:	9f 5f       	subi	r25, 0xFF	; 255
    1644:	c1 f7       	brne	.-16     	; 0x1636 <__mulsf3_pse+0x90>
    1646:	fe 2b       	or	r31, r30
    1648:	88 0f       	add	r24, r24
    164a:	91 1d       	adc	r25, r1
    164c:	96 95       	lsr	r25
    164e:	87 95       	ror	r24
    1650:	97 f9       	bld	r25, 7
    1652:	08 95       	ret

00001654 <malloc>:
    1654:	cf 93       	push	r28
    1656:	df 93       	push	r29
    1658:	82 30       	cpi	r24, 0x02	; 2
    165a:	91 05       	cpc	r25, r1
    165c:	10 f4       	brcc	.+4      	; 0x1662 <malloc+0xe>
    165e:	82 e0       	ldi	r24, 0x02	; 2
    1660:	90 e0       	ldi	r25, 0x00	; 0
    1662:	e0 91 f0 00 	lds	r30, 0x00F0
    1666:	f0 91 f1 00 	lds	r31, 0x00F1
    166a:	20 e0       	ldi	r18, 0x00	; 0
    166c:	30 e0       	ldi	r19, 0x00	; 0
    166e:	c0 e0       	ldi	r28, 0x00	; 0
    1670:	d0 e0       	ldi	r29, 0x00	; 0
    1672:	30 97       	sbiw	r30, 0x00	; 0
    1674:	11 f1       	breq	.+68     	; 0x16ba <malloc+0x66>
    1676:	40 81       	ld	r20, Z
    1678:	51 81       	ldd	r21, Z+1	; 0x01
    167a:	48 17       	cp	r20, r24
    167c:	59 07       	cpc	r21, r25
    167e:	c0 f0       	brcs	.+48     	; 0x16b0 <malloc+0x5c>
    1680:	48 17       	cp	r20, r24
    1682:	59 07       	cpc	r21, r25
    1684:	61 f4       	brne	.+24     	; 0x169e <malloc+0x4a>
    1686:	82 81       	ldd	r24, Z+2	; 0x02
    1688:	93 81       	ldd	r25, Z+3	; 0x03
    168a:	20 97       	sbiw	r28, 0x00	; 0
    168c:	19 f0       	breq	.+6      	; 0x1694 <malloc+0x40>
    168e:	9b 83       	std	Y+3, r25	; 0x03
    1690:	8a 83       	std	Y+2, r24	; 0x02
    1692:	2b c0       	rjmp	.+86     	; 0x16ea <malloc+0x96>
    1694:	90 93 f1 00 	sts	0x00F1, r25
    1698:	80 93 f0 00 	sts	0x00F0, r24
    169c:	26 c0       	rjmp	.+76     	; 0x16ea <malloc+0x96>
    169e:	21 15       	cp	r18, r1
    16a0:	31 05       	cpc	r19, r1
    16a2:	19 f0       	breq	.+6      	; 0x16aa <malloc+0x56>
    16a4:	42 17       	cp	r20, r18
    16a6:	53 07       	cpc	r21, r19
    16a8:	18 f4       	brcc	.+6      	; 0x16b0 <malloc+0x5c>
    16aa:	9a 01       	movw	r18, r20
    16ac:	be 01       	movw	r22, r28
    16ae:	df 01       	movw	r26, r30
    16b0:	ef 01       	movw	r28, r30
    16b2:	02 80       	ldd	r0, Z+2	; 0x02
    16b4:	f3 81       	ldd	r31, Z+3	; 0x03
    16b6:	e0 2d       	mov	r30, r0
    16b8:	dc cf       	rjmp	.-72     	; 0x1672 <malloc+0x1e>
    16ba:	21 15       	cp	r18, r1
    16bc:	31 05       	cpc	r19, r1
    16be:	09 f1       	breq	.+66     	; 0x1702 <malloc+0xae>
    16c0:	28 1b       	sub	r18, r24
    16c2:	39 0b       	sbc	r19, r25
    16c4:	24 30       	cpi	r18, 0x04	; 4
    16c6:	31 05       	cpc	r19, r1
    16c8:	90 f4       	brcc	.+36     	; 0x16ee <malloc+0x9a>
    16ca:	12 96       	adiw	r26, 0x02	; 2
    16cc:	8d 91       	ld	r24, X+
    16ce:	9c 91       	ld	r25, X
    16d0:	13 97       	sbiw	r26, 0x03	; 3
    16d2:	61 15       	cp	r22, r1
    16d4:	71 05       	cpc	r23, r1
    16d6:	21 f0       	breq	.+8      	; 0x16e0 <malloc+0x8c>
    16d8:	fb 01       	movw	r30, r22
    16da:	93 83       	std	Z+3, r25	; 0x03
    16dc:	82 83       	std	Z+2, r24	; 0x02
    16de:	04 c0       	rjmp	.+8      	; 0x16e8 <malloc+0x94>
    16e0:	90 93 f1 00 	sts	0x00F1, r25
    16e4:	80 93 f0 00 	sts	0x00F0, r24
    16e8:	fd 01       	movw	r30, r26
    16ea:	32 96       	adiw	r30, 0x02	; 2
    16ec:	44 c0       	rjmp	.+136    	; 0x1776 <malloc+0x122>
    16ee:	fd 01       	movw	r30, r26
    16f0:	e2 0f       	add	r30, r18
    16f2:	f3 1f       	adc	r31, r19
    16f4:	81 93       	st	Z+, r24
    16f6:	91 93       	st	Z+, r25
    16f8:	22 50       	subi	r18, 0x02	; 2
    16fa:	31 09       	sbc	r19, r1
    16fc:	2d 93       	st	X+, r18
    16fe:	3c 93       	st	X, r19
    1700:	3a c0       	rjmp	.+116    	; 0x1776 <malloc+0x122>
    1702:	20 91 ee 00 	lds	r18, 0x00EE
    1706:	30 91 ef 00 	lds	r19, 0x00EF
    170a:	23 2b       	or	r18, r19
    170c:	41 f4       	brne	.+16     	; 0x171e <malloc+0xca>
    170e:	20 91 62 00 	lds	r18, 0x0062
    1712:	30 91 63 00 	lds	r19, 0x0063
    1716:	30 93 ef 00 	sts	0x00EF, r19
    171a:	20 93 ee 00 	sts	0x00EE, r18
    171e:	20 91 60 00 	lds	r18, 0x0060
    1722:	30 91 61 00 	lds	r19, 0x0061
    1726:	21 15       	cp	r18, r1
    1728:	31 05       	cpc	r19, r1
    172a:	41 f4       	brne	.+16     	; 0x173c <malloc+0xe8>
    172c:	2d b7       	in	r18, 0x3d	; 61
    172e:	3e b7       	in	r19, 0x3e	; 62
    1730:	40 91 64 00 	lds	r20, 0x0064
    1734:	50 91 65 00 	lds	r21, 0x0065
    1738:	24 1b       	sub	r18, r20
    173a:	35 0b       	sbc	r19, r21
    173c:	e0 91 ee 00 	lds	r30, 0x00EE
    1740:	f0 91 ef 00 	lds	r31, 0x00EF
    1744:	e2 17       	cp	r30, r18
    1746:	f3 07       	cpc	r31, r19
    1748:	a0 f4       	brcc	.+40     	; 0x1772 <malloc+0x11e>
    174a:	2e 1b       	sub	r18, r30
    174c:	3f 0b       	sbc	r19, r31
    174e:	28 17       	cp	r18, r24
    1750:	39 07       	cpc	r19, r25
    1752:	78 f0       	brcs	.+30     	; 0x1772 <malloc+0x11e>
    1754:	ac 01       	movw	r20, r24
    1756:	4e 5f       	subi	r20, 0xFE	; 254
    1758:	5f 4f       	sbci	r21, 0xFF	; 255
    175a:	24 17       	cp	r18, r20
    175c:	35 07       	cpc	r19, r21
    175e:	48 f0       	brcs	.+18     	; 0x1772 <malloc+0x11e>
    1760:	4e 0f       	add	r20, r30
    1762:	5f 1f       	adc	r21, r31
    1764:	50 93 ef 00 	sts	0x00EF, r21
    1768:	40 93 ee 00 	sts	0x00EE, r20
    176c:	81 93       	st	Z+, r24
    176e:	91 93       	st	Z+, r25
    1770:	02 c0       	rjmp	.+4      	; 0x1776 <malloc+0x122>
    1772:	e0 e0       	ldi	r30, 0x00	; 0
    1774:	f0 e0       	ldi	r31, 0x00	; 0
    1776:	cf 01       	movw	r24, r30
    1778:	df 91       	pop	r29
    177a:	cf 91       	pop	r28
    177c:	08 95       	ret

0000177e <free>:
    177e:	0f 93       	push	r16
    1780:	1f 93       	push	r17
    1782:	cf 93       	push	r28
    1784:	df 93       	push	r29
    1786:	00 97       	sbiw	r24, 0x00	; 0
    1788:	09 f4       	brne	.+2      	; 0x178c <free+0xe>
    178a:	8c c0       	rjmp	.+280    	; 0x18a4 <free+0x126>
    178c:	fc 01       	movw	r30, r24
    178e:	32 97       	sbiw	r30, 0x02	; 2
    1790:	13 82       	std	Z+3, r1	; 0x03
    1792:	12 82       	std	Z+2, r1	; 0x02
    1794:	00 91 f0 00 	lds	r16, 0x00F0
    1798:	10 91 f1 00 	lds	r17, 0x00F1
    179c:	01 15       	cp	r16, r1
    179e:	11 05       	cpc	r17, r1
    17a0:	81 f4       	brne	.+32     	; 0x17c2 <free+0x44>
    17a2:	20 81       	ld	r18, Z
    17a4:	31 81       	ldd	r19, Z+1	; 0x01
    17a6:	82 0f       	add	r24, r18
    17a8:	93 1f       	adc	r25, r19
    17aa:	20 91 ee 00 	lds	r18, 0x00EE
    17ae:	30 91 ef 00 	lds	r19, 0x00EF
    17b2:	28 17       	cp	r18, r24
    17b4:	39 07       	cpc	r19, r25
    17b6:	79 f5       	brne	.+94     	; 0x1816 <free+0x98>
    17b8:	f0 93 ef 00 	sts	0x00EF, r31
    17bc:	e0 93 ee 00 	sts	0x00EE, r30
    17c0:	71 c0       	rjmp	.+226    	; 0x18a4 <free+0x126>
    17c2:	d8 01       	movw	r26, r16
    17c4:	40 e0       	ldi	r20, 0x00	; 0
    17c6:	50 e0       	ldi	r21, 0x00	; 0
    17c8:	ae 17       	cp	r26, r30
    17ca:	bf 07       	cpc	r27, r31
    17cc:	50 f4       	brcc	.+20     	; 0x17e2 <free+0x64>
    17ce:	12 96       	adiw	r26, 0x02	; 2
    17d0:	2d 91       	ld	r18, X+
    17d2:	3c 91       	ld	r19, X
    17d4:	13 97       	sbiw	r26, 0x03	; 3
    17d6:	ad 01       	movw	r20, r26
    17d8:	21 15       	cp	r18, r1
    17da:	31 05       	cpc	r19, r1
    17dc:	09 f1       	breq	.+66     	; 0x1820 <free+0xa2>
    17de:	d9 01       	movw	r26, r18
    17e0:	f3 cf       	rjmp	.-26     	; 0x17c8 <free+0x4a>
    17e2:	9d 01       	movw	r18, r26
    17e4:	da 01       	movw	r26, r20
    17e6:	33 83       	std	Z+3, r19	; 0x03
    17e8:	22 83       	std	Z+2, r18	; 0x02
    17ea:	60 81       	ld	r22, Z
    17ec:	71 81       	ldd	r23, Z+1	; 0x01
    17ee:	86 0f       	add	r24, r22
    17f0:	97 1f       	adc	r25, r23
    17f2:	82 17       	cp	r24, r18
    17f4:	93 07       	cpc	r25, r19
    17f6:	69 f4       	brne	.+26     	; 0x1812 <free+0x94>
    17f8:	ec 01       	movw	r28, r24
    17fa:	28 81       	ld	r18, Y
    17fc:	39 81       	ldd	r19, Y+1	; 0x01
    17fe:	26 0f       	add	r18, r22
    1800:	37 1f       	adc	r19, r23
    1802:	2e 5f       	subi	r18, 0xFE	; 254
    1804:	3f 4f       	sbci	r19, 0xFF	; 255
    1806:	31 83       	std	Z+1, r19	; 0x01
    1808:	20 83       	st	Z, r18
    180a:	8a 81       	ldd	r24, Y+2	; 0x02
    180c:	9b 81       	ldd	r25, Y+3	; 0x03
    180e:	93 83       	std	Z+3, r25	; 0x03
    1810:	82 83       	std	Z+2, r24	; 0x02
    1812:	45 2b       	or	r20, r21
    1814:	29 f4       	brne	.+10     	; 0x1820 <free+0xa2>
    1816:	f0 93 f1 00 	sts	0x00F1, r31
    181a:	e0 93 f0 00 	sts	0x00F0, r30
    181e:	42 c0       	rjmp	.+132    	; 0x18a4 <free+0x126>
    1820:	13 96       	adiw	r26, 0x03	; 3
    1822:	fc 93       	st	X, r31
    1824:	ee 93       	st	-X, r30
    1826:	12 97       	sbiw	r26, 0x02	; 2
    1828:	ed 01       	movw	r28, r26
    182a:	49 91       	ld	r20, Y+
    182c:	59 91       	ld	r21, Y+
    182e:	9e 01       	movw	r18, r28
    1830:	24 0f       	add	r18, r20
    1832:	35 1f       	adc	r19, r21
    1834:	e2 17       	cp	r30, r18
    1836:	f3 07       	cpc	r31, r19
    1838:	71 f4       	brne	.+28     	; 0x1856 <free+0xd8>
    183a:	80 81       	ld	r24, Z
    183c:	91 81       	ldd	r25, Z+1	; 0x01
    183e:	84 0f       	add	r24, r20
    1840:	95 1f       	adc	r25, r21
    1842:	02 96       	adiw	r24, 0x02	; 2
    1844:	11 96       	adiw	r26, 0x01	; 1
    1846:	9c 93       	st	X, r25
    1848:	8e 93       	st	-X, r24
    184a:	82 81       	ldd	r24, Z+2	; 0x02
    184c:	93 81       	ldd	r25, Z+3	; 0x03
    184e:	13 96       	adiw	r26, 0x03	; 3
    1850:	9c 93       	st	X, r25
    1852:	8e 93       	st	-X, r24
    1854:	12 97       	sbiw	r26, 0x02	; 2
    1856:	e0 e0       	ldi	r30, 0x00	; 0
    1858:	f0 e0       	ldi	r31, 0x00	; 0
    185a:	d8 01       	movw	r26, r16
    185c:	12 96       	adiw	r26, 0x02	; 2
    185e:	8d 91       	ld	r24, X+
    1860:	9c 91       	ld	r25, X
    1862:	13 97       	sbiw	r26, 0x03	; 3
    1864:	00 97       	sbiw	r24, 0x00	; 0
    1866:	19 f0       	breq	.+6      	; 0x186e <free+0xf0>
    1868:	f8 01       	movw	r30, r16
    186a:	8c 01       	movw	r16, r24
    186c:	f6 cf       	rjmp	.-20     	; 0x185a <free+0xdc>
    186e:	8d 91       	ld	r24, X+
    1870:	9c 91       	ld	r25, X
    1872:	98 01       	movw	r18, r16
    1874:	2e 5f       	subi	r18, 0xFE	; 254
    1876:	3f 4f       	sbci	r19, 0xFF	; 255
    1878:	82 0f       	add	r24, r18
    187a:	93 1f       	adc	r25, r19
    187c:	20 91 ee 00 	lds	r18, 0x00EE
    1880:	30 91 ef 00 	lds	r19, 0x00EF
    1884:	28 17       	cp	r18, r24
    1886:	39 07       	cpc	r19, r25
    1888:	69 f4       	brne	.+26     	; 0x18a4 <free+0x126>
    188a:	30 97       	sbiw	r30, 0x00	; 0
    188c:	29 f4       	brne	.+10     	; 0x1898 <free+0x11a>
    188e:	10 92 f1 00 	sts	0x00F1, r1
    1892:	10 92 f0 00 	sts	0x00F0, r1
    1896:	02 c0       	rjmp	.+4      	; 0x189c <free+0x11e>
    1898:	13 82       	std	Z+3, r1	; 0x03
    189a:	12 82       	std	Z+2, r1	; 0x02
    189c:	10 93 ef 00 	sts	0x00EF, r17
    18a0:	00 93 ee 00 	sts	0x00EE, r16
    18a4:	df 91       	pop	r29
    18a6:	cf 91       	pop	r28
    18a8:	1f 91       	pop	r17
    18aa:	0f 91       	pop	r16
    18ac:	08 95       	ret

000018ae <__do_global_dtors>:
    18ae:	10 e0       	ldi	r17, 0x00	; 0
    18b0:	cd e2       	ldi	r28, 0x2D	; 45
    18b2:	d0 e0       	ldi	r29, 0x00	; 0
    18b4:	04 c0       	rjmp	.+8      	; 0x18be <__do_global_dtors+0x10>
    18b6:	fe 01       	movw	r30, r28
    18b8:	0e 94 58 09 	call	0x12b0	; 0x12b0 <__tablejump2__>
    18bc:	21 96       	adiw	r28, 0x01	; 1
    18be:	ce 32       	cpi	r28, 0x2E	; 46
    18c0:	d1 07       	cpc	r29, r17
    18c2:	c9 f7       	brne	.-14     	; 0x18b6 <__do_global_dtors+0x8>
    18c4:	f8 94       	cli

000018c6 <__stop_program>:
    18c6:	ff cf       	rjmp	.-2      	; 0x18c6 <__stop_program>
