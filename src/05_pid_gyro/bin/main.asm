
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
       0:	0c 94 31 00 	jmp	0x62	; 0x62 <__dtors_end>
       4:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
       8:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
       c:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      10:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      14:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      18:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      1c:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      20:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      24:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      28:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      2c:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      30:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      34:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      38:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      3c:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      40:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      44:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      48:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      4c:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>
      50:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>

00000054 <__ctors_start>:
      54:	c6 00       	.word	0x00c6	; ????
      56:	71 02       	muls	r23, r17
      58:	8b 07       	cpc	r24, r27
      5a:	02 08       	sbc	r0, r2
      5c:	95 09       	sbc	r25, r5

0000005e <__ctors_end>:
      5e:	ca 00       	.word	0x00ca	; ????
      60:	99 09       	sbc	r25, r9

00000062 <__dtors_end>:
      62:	11 24       	eor	r1, r1
      64:	1f be       	out	0x3f, r1	; 63
      66:	cf e5       	ldi	r28, 0x5F	; 95
      68:	d4 e0       	ldi	r29, 0x04	; 4
      6a:	de bf       	out	0x3e, r29	; 62
      6c:	cd bf       	out	0x3d, r28	; 61

0000006e <__do_copy_data>:
      6e:	10 e0       	ldi	r17, 0x00	; 0
      70:	a0 e6       	ldi	r26, 0x60	; 96
      72:	b0 e0       	ldi	r27, 0x00	; 0
      74:	e2 e6       	ldi	r30, 0x62	; 98
      76:	fa e1       	ldi	r31, 0x1A	; 26
      78:	02 c0       	rjmp	.+4      	; 0x7e <__do_copy_data+0x10>
      7a:	05 90       	lpm	r0, Z+
      7c:	0d 92       	st	X+, r0
      7e:	a4 3a       	cpi	r26, 0xA4	; 164
      80:	b1 07       	cpc	r27, r17
      82:	d9 f7       	brne	.-10     	; 0x7a <__do_copy_data+0xc>

00000084 <__do_clear_bss>:
      84:	21 e0       	ldi	r18, 0x01	; 1
      86:	a4 ea       	ldi	r26, 0xA4	; 164
      88:	b0 e0       	ldi	r27, 0x00	; 0
      8a:	01 c0       	rjmp	.+2      	; 0x8e <.do_clear_bss_start>

0000008c <.do_clear_bss_loop>:
      8c:	1d 92       	st	X+, r1

0000008e <.do_clear_bss_start>:
      8e:	ab 34       	cpi	r26, 0x4B	; 75
      90:	b2 07       	cpc	r27, r18
      92:	e1 f7       	brne	.-8      	; 0x8c <.do_clear_bss_loop>

00000094 <__do_global_ctors>:
      94:	10 e0       	ldi	r17, 0x00	; 0
      96:	cf e2       	ldi	r28, 0x2F	; 47
      98:	d0 e0       	ldi	r29, 0x00	; 0
      9a:	04 c0       	rjmp	.+8      	; 0xa4 <__do_global_ctors+0x10>
      9c:	21 97       	sbiw	r28, 0x01	; 1
      9e:	fe 01       	movw	r30, r28
      a0:	0e 94 25 0a 	call	0x144a	; 0x144a <__tablejump2__>
      a4:	ca 32       	cpi	r28, 0x2A	; 42
      a6:	d1 07       	cpc	r29, r17
      a8:	c9 f7       	brne	.-14     	; 0x9c <__do_global_ctors+0x8>
      aa:	0e 94 70 00 	call	0xe0	; 0xe0 <main>
      ae:	0c 94 24 0d 	jmp	0x1a48	; 0x1a48 <__do_global_dtors>

000000b2 <__bad_interrupt>:
      b2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b6 <_ZN6CBlinkD1Ev>:
      b6:	08 95       	ret

000000b8 <_ZN6CBlinkD0Ev>:
      b8:	0c 94 e2 09 	jmp	0x13c4	; 0x13c4 <_ZdlPv>

000000bc <_ZN6CBlinkclEv>:
      bc:	fc 01       	movw	r30, r24
      be:	83 81       	ldd	r24, Z+3	; 0x03
      c0:	94 81       	ldd	r25, Z+4	; 0x04
      c2:	00 97       	sbiw	r24, 0x00	; 0
      c4:	19 f0       	breq	.+6      	; 0xcc <_ZN6CBlinkclEv+0x10>
      c6:	01 97       	sbiw	r24, 0x01	; 1
      c8:	39 f0       	breq	.+14     	; 0xd8 <_ZN6CBlinkclEv+0x1c>
      ca:	08 95       	ret
      cc:	dd 9a       	sbi	0x1b, 5	; 27
      ce:	81 e0       	ldi	r24, 0x01	; 1
      d0:	90 e0       	ldi	r25, 0x00	; 0
      d2:	94 83       	std	Z+4, r25	; 0x04
      d4:	83 83       	std	Z+3, r24	; 0x03
      d6:	08 95       	ret
      d8:	dd 98       	cbi	0x1b, 5	; 27
      da:	14 82       	std	Z+4, r1	; 0x04
      dc:	13 82       	std	Z+3, r1	; 0x03
      de:	08 95       	ret

000000e0 <main>:
      e0:	cf 93       	push	r28
      e2:	df 93       	push	r29
      e4:	cd b7       	in	r28, 0x3d	; 61
      e6:	de b7       	in	r29, 0x3e	; 62
      e8:	ca 56       	subi	r28, 0x6A	; 106
      ea:	d1 09       	sbc	r29, r1
      ec:	0f b6       	in	r0, 0x3f	; 63
      ee:	f8 94       	cli
      f0:	de bf       	out	0x3e, r29	; 62
      f2:	0f be       	out	0x3f, r0	; 63
      f4:	cd bf       	out	0x3d, r28	; 61
      f6:	bb 98       	cbi	0x17, 3	; 23
      f8:	c3 9a       	sbi	0x18, 3	; 24
      fa:	ba 98       	cbi	0x17, 2	; 23
      fc:	c2 9a       	sbi	0x18, 2	; 24
      fe:	86 e6       	ldi	r24, 0x66	; 102
     100:	90 e0       	ldi	r25, 0x00	; 0
     102:	9f 93       	push	r25
     104:	8f 93       	push	r24
     106:	86 e4       	ldi	r24, 0x46	; 70
     108:	91 e0       	ldi	r25, 0x01	; 1
     10a:	9f 93       	push	r25
     10c:	8f 93       	push	r24
     10e:	0e 94 11 09 	call	0x1222	; 0x1222 <_ZN9CTerminal6printfEPKcz>
     112:	8c e7       	ldi	r24, 0x7C	; 124
     114:	90 e0       	ldi	r25, 0x00	; 0
     116:	a8 96       	adiw	r28, 0x28	; 40
     118:	9f af       	std	Y+63, r25	; 0x3f
     11a:	8e af       	std	Y+62, r24	; 0x3e
     11c:	a8 97       	sbiw	r28, 0x28	; 40
     11e:	d5 9a       	sbi	0x1a, 5	; 26
     120:	ab 96       	adiw	r28, 0x2b	; 43
     122:	1f ae       	std	Y+63, r1	; 0x3f
     124:	1e ae       	std	Y+62, r1	; 0x3e
     126:	ab 97       	sbiw	r28, 0x2b	; 43
     128:	48 ec       	ldi	r20, 0xC8	; 200
     12a:	50 e0       	ldi	r21, 0x00	; 0
     12c:	be 01       	movw	r22, r28
     12e:	6a 59       	subi	r22, 0x9A	; 154
     130:	7f 4f       	sbci	r23, 0xFF	; 255
     132:	8d e0       	ldi	r24, 0x0D	; 13
     134:	91 e0       	ldi	r25, 0x01	; 1
     136:	0e 94 c3 07 	call	0xf86	; 0xf86 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     13a:	ce 01       	movw	r24, r28
     13c:	01 96       	adiw	r24, 0x01	; 1
     13e:	0e 94 cf 01 	call	0x39e	; 0x39e <_ZN16CStabilityKernelC1Ev>
     142:	0f 90       	pop	r0
     144:	0f 90       	pop	r0
     146:	0f 90       	pop	r0
     148:	0f 90       	pop	r0
     14a:	b3 9b       	sbis	0x16, 3	; 22
     14c:	07 c0       	rjmp	.+14     	; 0x15c <main+0x7c>
     14e:	b2 9b       	sbis	0x16, 2	; 22
     150:	05 c0       	rjmp	.+10     	; 0x15c <main+0x7c>
     152:	8d e0       	ldi	r24, 0x0D	; 13
     154:	91 e0       	ldi	r25, 0x01	; 1
     156:	0e 94 e5 07 	call	0xfca	; 0xfca <_ZN8CRTTimer4mainEv>
     15a:	f7 cf       	rjmp	.-18     	; 0x14a <main+0x6a>
     15c:	66 b3       	in	r22, 0x16	; 22
     15e:	63 fb       	bst	r22, 3
     160:	66 27       	eor	r22, r22
     162:	60 f9       	bld	r22, 0
     164:	81 e0       	ldi	r24, 0x01	; 1
     166:	68 27       	eor	r22, r24
     168:	ce 01       	movw	r24, r28
     16a:	01 96       	adiw	r24, 0x01	; 1
     16c:	0e 94 e1 01 	call	0x3c2	; 0x3c2 <_ZN16CStabilityKernel4initEb>
     170:	45 e0       	ldi	r20, 0x05	; 5
     172:	50 e0       	ldi	r21, 0x00	; 0
     174:	be 01       	movw	r22, r28
     176:	6f 5f       	subi	r22, 0xFF	; 255
     178:	7f 4f       	sbci	r23, 0xFF	; 255
     17a:	8d e0       	ldi	r24, 0x0D	; 13
     17c:	91 e0       	ldi	r25, 0x01	; 1
     17e:	0e 94 c3 07 	call	0xf86	; 0xf86 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     182:	8d e0       	ldi	r24, 0x0D	; 13
     184:	91 e0       	ldi	r25, 0x01	; 1
     186:	0e 94 e5 07 	call	0xfca	; 0xfca <_ZN8CRTTimer4mainEv>
     18a:	fb cf       	rjmp	.-10     	; 0x182 <main+0xa2>

0000018c <_GLOBAL__sub_I_stability_kernel>:
     18c:	84 ea       	ldi	r24, 0xA4	; 164
     18e:	90 e0       	ldi	r25, 0x00	; 0
     190:	0c 94 cf 01 	jmp	0x39e	; 0x39e <_ZN16CStabilityKernelC1Ev>

00000194 <_GLOBAL__sub_D_stability_kernel>:
     194:	84 ea       	ldi	r24, 0xA4	; 164
     196:	90 e0       	ldi	r25, 0x00	; 0
     198:	0c 94 ce 00 	jmp	0x19c	; 0x19c <_ZN16CStabilityKernelD1Ev>

0000019c <_ZN16CStabilityKernelD1Ev>:
     19c:	cf 93       	push	r28
     19e:	df 93       	push	r29
     1a0:	ec 01       	movw	r28, r24
     1a2:	86 e8       	ldi	r24, 0x86	; 134
     1a4:	90 e0       	ldi	r25, 0x00	; 0
     1a6:	99 83       	std	Y+1, r25	; 0x01
     1a8:	88 83       	st	Y, r24
     1aa:	ce 01       	movw	r24, r28
     1ac:	8c 59       	subi	r24, 0x9C	; 156
     1ae:	9f 4f       	sbci	r25, 0xFF	; 255
     1b0:	0e 94 a9 09 	call	0x1352	; 0x1352 <_ZN6CMotorD1Ev>
     1b4:	ce 01       	movw	r24, r28
     1b6:	8a 96       	adiw	r24, 0x2a	; 42
     1b8:	df 91       	pop	r29
     1ba:	cf 91       	pop	r28
     1bc:	0c 94 74 02 	jmp	0x4e8	; 0x4e8 <_ZN5CGyroD1Ev>

000001c0 <_ZN16CStabilityKernelD0Ev>:
     1c0:	cf 93       	push	r28
     1c2:	df 93       	push	r29
     1c4:	ec 01       	movw	r28, r24
     1c6:	0e 94 ce 00 	call	0x19c	; 0x19c <_ZN16CStabilityKernelD1Ev>
     1ca:	ce 01       	movw	r24, r28
     1cc:	df 91       	pop	r29
     1ce:	cf 91       	pop	r28
     1d0:	0c 94 e2 09 	jmp	0x13c4	; 0x13c4 <_ZdlPv>

000001d4 <_ZN16CStabilityKernelclEv>:
     1d4:	4f 92       	push	r4
     1d6:	5f 92       	push	r5
     1d8:	6f 92       	push	r6
     1da:	7f 92       	push	r7
     1dc:	8f 92       	push	r8
     1de:	9f 92       	push	r9
     1e0:	af 92       	push	r10
     1e2:	bf 92       	push	r11
     1e4:	cf 92       	push	r12
     1e6:	df 92       	push	r13
     1e8:	ef 92       	push	r14
     1ea:	ff 92       	push	r15
     1ec:	cf 93       	push	r28
     1ee:	df 93       	push	r29
     1f0:	ec 01       	movw	r28, r24
     1f2:	60 e0       	ldi	r22, 0x00	; 0
     1f4:	8a 96       	adiw	r24, 0x2a	; 42
     1f6:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN5CGyro4readEb>
     1fa:	fe 01       	movw	r30, r28
     1fc:	ea 5b       	subi	r30, 0xBA	; 186
     1fe:	ff 4f       	sbci	r31, 0xFF	; 255
     200:	80 81       	ld	r24, Z
     202:	91 81       	ldd	r25, Z+1	; 0x01
     204:	a2 81       	ldd	r26, Z+2	; 0x02
     206:	b3 81       	ldd	r27, Z+3	; 0x03
     208:	9c 01       	movw	r18, r24
     20a:	ad 01       	movw	r20, r26
     20c:	66 27       	eor	r22, r22
     20e:	77 27       	eor	r23, r23
     210:	cb 01       	movw	r24, r22
     212:	62 1b       	sub	r22, r18
     214:	73 0b       	sbc	r23, r19
     216:	84 0b       	sbc	r24, r20
     218:	95 0b       	sbc	r25, r21
     21a:	0e 94 d5 0a 	call	0x15aa	; 0x15aa <__floatsisf>
     21e:	2d ec       	ldi	r18, 0xCD	; 205
     220:	3c ec       	ldi	r19, 0xCC	; 204
     222:	4c ec       	ldi	r20, 0xCC	; 204
     224:	5d e3       	ldi	r21, 0x3D	; 61
     226:	0e 94 8a 0b 	call	0x1714	; 0x1714 <__mulsf3>
     22a:	9b 01       	movw	r18, r22
     22c:	ac 01       	movw	r20, r24
     22e:	ce 8c       	ldd	r12, Y+30	; 0x1e
     230:	df 8c       	ldd	r13, Y+31	; 0x1f
     232:	e8 a0       	ldd	r14, Y+32	; 0x20
     234:	f9 a0       	ldd	r15, Y+33	; 0x21
     236:	ca a2       	std	Y+34, r12	; 0x22
     238:	db a2       	std	Y+35, r13	; 0x23
     23a:	ec a2       	std	Y+36, r14	; 0x24
     23c:	fd a2       	std	Y+37, r15	; 0x25
     23e:	8a 8c       	ldd	r8, Y+26	; 0x1a
     240:	9b 8c       	ldd	r9, Y+27	; 0x1b
     242:	ac 8c       	ldd	r10, Y+28	; 0x1c
     244:	bd 8c       	ldd	r11, Y+29	; 0x1d
     246:	8e 8e       	std	Y+30, r8	; 0x1e
     248:	9f 8e       	std	Y+31, r9	; 0x1f
     24a:	a8 a2       	std	Y+32, r10	; 0x20
     24c:	b9 a2       	std	Y+33, r11	; 0x21
     24e:	60 e0       	ldi	r22, 0x00	; 0
     250:	70 e0       	ldi	r23, 0x00	; 0
     252:	cb 01       	movw	r24, r22
     254:	0e 94 2b 0a 	call	0x1456	; 0x1456 <__subsf3>
     258:	6a 8f       	std	Y+26, r22	; 0x1a
     25a:	7b 8f       	std	Y+27, r23	; 0x1b
     25c:	8c 8f       	std	Y+28, r24	; 0x1c
     25e:	9d 8f       	std	Y+29, r25	; 0x1d
     260:	2e 85       	ldd	r18, Y+14	; 0x0e
     262:	3f 85       	ldd	r19, Y+15	; 0x0f
     264:	48 89       	ldd	r20, Y+16	; 0x10
     266:	59 89       	ldd	r21, Y+17	; 0x11
     268:	0e 94 8a 0b 	call	0x1714	; 0x1714 <__mulsf3>
     26c:	2b 01       	movw	r4, r22
     26e:	3c 01       	movw	r6, r24
     270:	2a 89       	ldd	r18, Y+18	; 0x12
     272:	3b 89       	ldd	r19, Y+19	; 0x13
     274:	4c 89       	ldd	r20, Y+20	; 0x14
     276:	5d 89       	ldd	r21, Y+21	; 0x15
     278:	c5 01       	movw	r24, r10
     27a:	b4 01       	movw	r22, r8
     27c:	0e 94 8a 0b 	call	0x1714	; 0x1714 <__mulsf3>
     280:	9b 01       	movw	r18, r22
     282:	ac 01       	movw	r20, r24
     284:	c3 01       	movw	r24, r6
     286:	b2 01       	movw	r22, r4
     288:	0e 94 2c 0a 	call	0x1458	; 0x1458 <__addsf3>
     28c:	4b 01       	movw	r8, r22
     28e:	5c 01       	movw	r10, r24
     290:	2e 89       	ldd	r18, Y+22	; 0x16
     292:	3f 89       	ldd	r19, Y+23	; 0x17
     294:	48 8d       	ldd	r20, Y+24	; 0x18
     296:	59 8d       	ldd	r21, Y+25	; 0x19
     298:	c7 01       	movw	r24, r14
     29a:	b6 01       	movw	r22, r12
     29c:	0e 94 8a 0b 	call	0x1714	; 0x1714 <__mulsf3>
     2a0:	9b 01       	movw	r18, r22
     2a2:	ac 01       	movw	r20, r24
     2a4:	c5 01       	movw	r24, r10
     2a6:	b4 01       	movw	r22, r8
     2a8:	0e 94 2c 0a 	call	0x1458	; 0x1458 <__addsf3>
     2ac:	2e a1       	ldd	r18, Y+38	; 0x26
     2ae:	3f a1       	ldd	r19, Y+39	; 0x27
     2b0:	48 a5       	ldd	r20, Y+40	; 0x28
     2b2:	59 a5       	ldd	r21, Y+41	; 0x29
     2b4:	0e 94 2c 0a 	call	0x1458	; 0x1458 <__addsf3>
     2b8:	4b 01       	movw	r8, r22
     2ba:	5c 01       	movw	r10, r24
     2bc:	6e a3       	std	Y+38, r22	; 0x26
     2be:	7f a3       	std	Y+39, r23	; 0x27
     2c0:	88 a7       	std	Y+40, r24	; 0x28
     2c2:	99 a7       	std	Y+41, r25	; 0x29
     2c4:	20 e0       	ldi	r18, 0x00	; 0
     2c6:	30 e0       	ldi	r19, 0x00	; 0
     2c8:	a9 01       	movw	r20, r18
     2ca:	0e 94 2c 0a 	call	0x1458	; 0x1458 <__addsf3>
     2ce:	6b 01       	movw	r12, r22
     2d0:	7c 01       	movw	r14, r24
     2d2:	20 e0       	ldi	r18, 0x00	; 0
     2d4:	30 e0       	ldi	r19, 0x00	; 0
     2d6:	40 e8       	ldi	r20, 0x80	; 128
     2d8:	53 ec       	ldi	r21, 0xC3	; 195
     2da:	0e 94 98 0a 	call	0x1530	; 0x1530 <__cmpsf2>
     2de:	87 fd       	sbrc	r24, 7
     2e0:	11 c0       	rjmp	.+34     	; 0x304 <_ZN16CStabilityKernelclEv+0x130>
     2e2:	20 e0       	ldi	r18, 0x00	; 0
     2e4:	30 e0       	ldi	r19, 0x00	; 0
     2e6:	40 e8       	ldi	r20, 0x80	; 128
     2e8:	53 e4       	ldi	r21, 0x43	; 67
     2ea:	c7 01       	movw	r24, r14
     2ec:	b6 01       	movw	r22, r12
     2ee:	0e 94 85 0b 	call	0x170a	; 0x170a <__gesf2>
     2f2:	18 16       	cp	r1, r24
     2f4:	6c f4       	brge	.+26     	; 0x310 <_ZN16CStabilityKernelclEv+0x13c>
     2f6:	c1 2c       	mov	r12, r1
     2f8:	d1 2c       	mov	r13, r1
     2fa:	30 e8       	ldi	r19, 0x80	; 128
     2fc:	e3 2e       	mov	r14, r19
     2fe:	33 e4       	ldi	r19, 0x43	; 67
     300:	f3 2e       	mov	r15, r19
     302:	06 c0       	rjmp	.+12     	; 0x310 <_ZN16CStabilityKernelclEv+0x13c>
     304:	c1 2c       	mov	r12, r1
     306:	d1 2c       	mov	r13, r1
     308:	20 e8       	ldi	r18, 0x80	; 128
     30a:	e2 2e       	mov	r14, r18
     30c:	23 ec       	ldi	r18, 0xC3	; 195
     30e:	f2 2e       	mov	r15, r18
     310:	c7 01       	movw	r24, r14
     312:	b6 01       	movw	r22, r12
     314:	0e 94 9d 0a 	call	0x153a	; 0x153a <__fixsfsi>
     318:	2b 01       	movw	r4, r22
     31a:	3c 01       	movw	r6, r24
     31c:	a5 01       	movw	r20, r10
     31e:	94 01       	movw	r18, r8
     320:	60 e0       	ldi	r22, 0x00	; 0
     322:	70 e0       	ldi	r23, 0x00	; 0
     324:	cb 01       	movw	r24, r22
     326:	0e 94 2b 0a 	call	0x1456	; 0x1456 <__subsf3>
     32a:	6b 01       	movw	r12, r22
     32c:	7c 01       	movw	r14, r24
     32e:	20 e0       	ldi	r18, 0x00	; 0
     330:	30 e0       	ldi	r19, 0x00	; 0
     332:	40 e8       	ldi	r20, 0x80	; 128
     334:	53 ec       	ldi	r21, 0xC3	; 195
     336:	0e 94 98 0a 	call	0x1530	; 0x1530 <__cmpsf2>
     33a:	87 fd       	sbrc	r24, 7
     33c:	11 c0       	rjmp	.+34     	; 0x360 <_ZN16CStabilityKernelclEv+0x18c>
     33e:	20 e0       	ldi	r18, 0x00	; 0
     340:	30 e0       	ldi	r19, 0x00	; 0
     342:	40 e8       	ldi	r20, 0x80	; 128
     344:	53 e4       	ldi	r21, 0x43	; 67
     346:	c7 01       	movw	r24, r14
     348:	b6 01       	movw	r22, r12
     34a:	0e 94 85 0b 	call	0x170a	; 0x170a <__gesf2>
     34e:	18 16       	cp	r1, r24
     350:	6c f4       	brge	.+26     	; 0x36c <_ZN16CStabilityKernelclEv+0x198>
     352:	c1 2c       	mov	r12, r1
     354:	d1 2c       	mov	r13, r1
     356:	90 e8       	ldi	r25, 0x80	; 128
     358:	e9 2e       	mov	r14, r25
     35a:	93 e4       	ldi	r25, 0x43	; 67
     35c:	f9 2e       	mov	r15, r25
     35e:	06 c0       	rjmp	.+12     	; 0x36c <_ZN16CStabilityKernelclEv+0x198>
     360:	c1 2c       	mov	r12, r1
     362:	d1 2c       	mov	r13, r1
     364:	80 e8       	ldi	r24, 0x80	; 128
     366:	e8 2e       	mov	r14, r24
     368:	83 ec       	ldi	r24, 0xC3	; 195
     36a:	f8 2e       	mov	r15, r24
     36c:	c7 01       	movw	r24, r14
     36e:	b6 01       	movw	r22, r12
     370:	0e 94 9d 0a 	call	0x153a	; 0x153a <__fixsfsi>
     374:	ab 01       	movw	r20, r22
     376:	b2 01       	movw	r22, r4
     378:	ce 01       	movw	r24, r28
     37a:	8c 59       	subi	r24, 0x9C	; 156
     37c:	9f 4f       	sbci	r25, 0xFF	; 255
     37e:	df 91       	pop	r29
     380:	cf 91       	pop	r28
     382:	ff 90       	pop	r15
     384:	ef 90       	pop	r14
     386:	df 90       	pop	r13
     388:	cf 90       	pop	r12
     38a:	bf 90       	pop	r11
     38c:	af 90       	pop	r10
     38e:	9f 90       	pop	r9
     390:	8f 90       	pop	r8
     392:	7f 90       	pop	r7
     394:	6f 90       	pop	r6
     396:	5f 90       	pop	r5
     398:	4f 90       	pop	r4
     39a:	0c 94 aa 09 	jmp	0x1354	; 0x1354 <_ZN6CMotor3runEii>

0000039e <_ZN16CStabilityKernelC1Ev>:
     39e:	cf 93       	push	r28
     3a0:	df 93       	push	r29
     3a2:	ec 01       	movw	r28, r24
     3a4:	86 e8       	ldi	r24, 0x86	; 134
     3a6:	90 e0       	ldi	r25, 0x00	; 0
     3a8:	99 83       	std	Y+1, r25	; 0x01
     3aa:	88 83       	st	Y, r24
     3ac:	ce 01       	movw	r24, r28
     3ae:	8a 96       	adiw	r24, 0x2a	; 42
     3b0:	0e 94 73 02 	call	0x4e6	; 0x4e6 <_ZN5CGyroC1Ev>
     3b4:	ce 01       	movw	r24, r28
     3b6:	8c 59       	subi	r24, 0x9C	; 156
     3b8:	9f 4f       	sbci	r25, 0xFF	; 255
     3ba:	df 91       	pop	r29
     3bc:	cf 91       	pop	r28
     3be:	0c 94 9d 09 	jmp	0x133a	; 0x133a <_ZN6CMotorC1Ev>

000003c2 <_ZN16CStabilityKernel4initEb>:
     3c2:	8f 92       	push	r8
     3c4:	9f 92       	push	r9
     3c6:	af 92       	push	r10
     3c8:	bf 92       	push	r11
     3ca:	cf 92       	push	r12
     3cc:	df 92       	push	r13
     3ce:	ef 92       	push	r14
     3d0:	ff 92       	push	r15
     3d2:	cf 93       	push	r28
     3d4:	df 93       	push	r29
     3d6:	ec 01       	movw	r28, r24
     3d8:	f6 2e       	mov	r15, r22
     3da:	69 e0       	ldi	r22, 0x09	; 9
     3dc:	71 e0       	ldi	r23, 0x01	; 1
     3de:	8a 96       	adiw	r24, 0x2a	; 42
     3e0:	0e 94 0b 04 	call	0x816	; 0x816 <_ZN5CGyro4initEP14CI2C_Interface>
     3e4:	fe 01       	movw	r30, r28
     3e6:	e6 5a       	subi	r30, 0xA6	; 166
     3e8:	ff 4f       	sbci	r31, 0xFF	; 255
     3ea:	80 81       	ld	r24, Z
     3ec:	91 81       	ldd	r25, Z+1	; 0x01
     3ee:	a2 81       	ldd	r26, Z+2	; 0x02
     3f0:	b3 81       	ldd	r27, Z+3	; 0x03
     3f2:	89 2b       	or	r24, r25
     3f4:	8a 2b       	or	r24, r26
     3f6:	8b 2b       	or	r24, r27
     3f8:	11 f0       	breq	.+4      	; 0x3fe <_ZN16CStabilityKernel4initEb+0x3c>
     3fa:	de 98       	cbi	0x1b, 6	; 27
     3fc:	01 c0       	rjmp	.+2      	; 0x400 <_ZN16CStabilityKernel4initEb+0x3e>
     3fe:	de 9a       	sbi	0x1b, 6	; 27
     400:	ff 20       	and	r15, r15
     402:	a9 f0       	breq	.+42     	; 0x42e <_ZN16CStabilityKernel4initEb+0x6c>
     404:	86 e6       	ldi	r24, 0x66	; 102
     406:	96 e6       	ldi	r25, 0x66	; 102
     408:	a6 ee       	ldi	r26, 0xE6	; 230
     40a:	bf e3       	ldi	r27, 0x3F	; 63
     40c:	8a 83       	std	Y+2, r24	; 0x02
     40e:	9b 83       	std	Y+3, r25	; 0x03
     410:	ac 83       	std	Y+4, r26	; 0x04
     412:	bd 83       	std	Y+5, r27	; 0x05
     414:	1e 82       	std	Y+6, r1	; 0x06
     416:	1f 82       	std	Y+7, r1	; 0x07
     418:	18 86       	std	Y+8, r1	; 0x08
     41a:	19 86       	std	Y+9, r1	; 0x09
     41c:	80 e0       	ldi	r24, 0x00	; 0
     41e:	90 e0       	ldi	r25, 0x00	; 0
     420:	a0 e2       	ldi	r26, 0x20	; 32
     422:	b1 e4       	ldi	r27, 0x41	; 65
     424:	8a 87       	std	Y+10, r24	; 0x0a
     426:	9b 87       	std	Y+11, r25	; 0x0b
     428:	ac 87       	std	Y+12, r26	; 0x0c
     42a:	bd 87       	std	Y+13, r27	; 0x0d
     42c:	10 c0       	rjmp	.+32     	; 0x44e <_ZN16CStabilityKernel4initEb+0x8c>
     42e:	80 e0       	ldi	r24, 0x00	; 0
     430:	90 e0       	ldi	r25, 0x00	; 0
     432:	a0 e8       	ldi	r26, 0x80	; 128
     434:	bf e3       	ldi	r27, 0x3F	; 63
     436:	8a 83       	std	Y+2, r24	; 0x02
     438:	9b 83       	std	Y+3, r25	; 0x03
     43a:	ac 83       	std	Y+4, r26	; 0x04
     43c:	bd 83       	std	Y+5, r27	; 0x05
     43e:	1e 82       	std	Y+6, r1	; 0x06
     440:	1f 82       	std	Y+7, r1	; 0x07
     442:	18 86       	std	Y+8, r1	; 0x08
     444:	19 86       	std	Y+9, r1	; 0x09
     446:	1a 86       	std	Y+10, r1	; 0x0a
     448:	1b 86       	std	Y+11, r1	; 0x0b
     44a:	1c 86       	std	Y+12, r1	; 0x0c
     44c:	1d 86       	std	Y+13, r1	; 0x0d
     44e:	8a 80       	ldd	r8, Y+2	; 0x02
     450:	9b 80       	ldd	r9, Y+3	; 0x03
     452:	ac 80       	ldd	r10, Y+4	; 0x04
     454:	bd 80       	ldd	r11, Y+5	; 0x05
     456:	ca 84       	ldd	r12, Y+10	; 0x0a
     458:	db 84       	ldd	r13, Y+11	; 0x0b
     45a:	ec 84       	ldd	r14, Y+12	; 0x0c
     45c:	fd 84       	ldd	r15, Y+13	; 0x0d
     45e:	20 e0       	ldi	r18, 0x00	; 0
     460:	30 e0       	ldi	r19, 0x00	; 0
     462:	a9 01       	movw	r20, r18
     464:	c5 01       	movw	r24, r10
     466:	b4 01       	movw	r22, r8
     468:	0e 94 2c 0a 	call	0x1458	; 0x1458 <__addsf3>
     46c:	a7 01       	movw	r20, r14
     46e:	96 01       	movw	r18, r12
     470:	0e 94 2c 0a 	call	0x1458	; 0x1458 <__addsf3>
     474:	6e 87       	std	Y+14, r22	; 0x0e
     476:	7f 87       	std	Y+15, r23	; 0x0f
     478:	88 8b       	std	Y+16, r24	; 0x10
     47a:	99 8b       	std	Y+17, r25	; 0x11
     47c:	b7 fa       	bst	r11, 7
     47e:	b0 94       	com	r11
     480:	b7 f8       	bld	r11, 7
     482:	b0 94       	com	r11
     484:	a7 01       	movw	r20, r14
     486:	96 01       	movw	r18, r12
     488:	c7 01       	movw	r24, r14
     48a:	b6 01       	movw	r22, r12
     48c:	0e 94 2c 0a 	call	0x1458	; 0x1458 <__addsf3>
     490:	9b 01       	movw	r18, r22
     492:	ac 01       	movw	r20, r24
     494:	c5 01       	movw	r24, r10
     496:	b4 01       	movw	r22, r8
     498:	0e 94 2b 0a 	call	0x1456	; 0x1456 <__subsf3>
     49c:	6a 8b       	std	Y+18, r22	; 0x12
     49e:	7b 8b       	std	Y+19, r23	; 0x13
     4a0:	8c 8b       	std	Y+20, r24	; 0x14
     4a2:	9d 8b       	std	Y+21, r25	; 0x15
     4a4:	ce 8a       	std	Y+22, r12	; 0x16
     4a6:	df 8a       	std	Y+23, r13	; 0x17
     4a8:	e8 8e       	std	Y+24, r14	; 0x18
     4aa:	f9 8e       	std	Y+25, r15	; 0x19
     4ac:	1a 8e       	std	Y+26, r1	; 0x1a
     4ae:	1b 8e       	std	Y+27, r1	; 0x1b
     4b0:	1c 8e       	std	Y+28, r1	; 0x1c
     4b2:	1d 8e       	std	Y+29, r1	; 0x1d
     4b4:	1e 8e       	std	Y+30, r1	; 0x1e
     4b6:	1f 8e       	std	Y+31, r1	; 0x1f
     4b8:	18 a2       	std	Y+32, r1	; 0x20
     4ba:	19 a2       	std	Y+33, r1	; 0x21
     4bc:	1a a2       	std	Y+34, r1	; 0x22
     4be:	1b a2       	std	Y+35, r1	; 0x23
     4c0:	1c a2       	std	Y+36, r1	; 0x24
     4c2:	1d a2       	std	Y+37, r1	; 0x25
     4c4:	1e a2       	std	Y+38, r1	; 0x26
     4c6:	1f a2       	std	Y+39, r1	; 0x27
     4c8:	18 a6       	std	Y+40, r1	; 0x28
     4ca:	19 a6       	std	Y+41, r1	; 0x29
     4cc:	df 91       	pop	r29
     4ce:	cf 91       	pop	r28
     4d0:	ff 90       	pop	r15
     4d2:	ef 90       	pop	r14
     4d4:	df 90       	pop	r13
     4d6:	cf 90       	pop	r12
     4d8:	bf 90       	pop	r11
     4da:	af 90       	pop	r10
     4dc:	9f 90       	pop	r9
     4de:	8f 90       	pop	r8
     4e0:	08 95       	ret

000004e2 <_GLOBAL__sub_I_led>:
     4e2:	d6 9a       	sbi	0x1a, 6	; 26
     4e4:	08 95       	ret

000004e6 <_ZN5CGyroC1Ev>:
     4e6:	08 95       	ret

000004e8 <_ZN5CGyroD1Ev>:
     4e8:	08 95       	ret

000004ea <_ZN5CGyro4readEb>:
     4ea:	4f 92       	push	r4
     4ec:	5f 92       	push	r5
     4ee:	6f 92       	push	r6
     4f0:	7f 92       	push	r7
     4f2:	8f 92       	push	r8
     4f4:	9f 92       	push	r9
     4f6:	af 92       	push	r10
     4f8:	bf 92       	push	r11
     4fa:	cf 92       	push	r12
     4fc:	df 92       	push	r13
     4fe:	ef 92       	push	r14
     500:	ff 92       	push	r15
     502:	0f 93       	push	r16
     504:	1f 93       	push	r17
     506:	cf 93       	push	r28
     508:	df 93       	push	r29
     50a:	ec 01       	movw	r28, r24
     50c:	f6 2e       	mov	r15, r22
     50e:	88 ad       	ldd	r24, Y+56	; 0x38
     510:	99 ad       	ldd	r25, Y+57	; 0x39
     512:	dc 01       	movw	r26, r24
     514:	ed 91       	ld	r30, X+
     516:	fc 91       	ld	r31, X
     518:	06 84       	ldd	r0, Z+14	; 0x0e
     51a:	f7 85       	ldd	r31, Z+15	; 0x0f
     51c:	e0 2d       	mov	r30, r0
     51e:	4f e0       	ldi	r20, 0x0F	; 15
     520:	66 ed       	ldi	r22, 0xD6	; 214
     522:	09 95       	icall
     524:	88 36       	cpi	r24, 0x68	; 104
     526:	49 f4       	brne	.+18     	; 0x53a <_ZN5CGyro4readEb+0x50>
     528:	81 e0       	ldi	r24, 0x01	; 1
     52a:	90 e0       	ldi	r25, 0x00	; 0
     52c:	a0 e0       	ldi	r26, 0x00	; 0
     52e:	b0 e0       	ldi	r27, 0x00	; 0
     530:	88 ab       	std	Y+48, r24	; 0x30
     532:	99 ab       	std	Y+49, r25	; 0x31
     534:	aa ab       	std	Y+50, r26	; 0x32
     536:	bb ab       	std	Y+51, r27	; 0x33
     538:	04 c0       	rjmp	.+8      	; 0x542 <_ZN5CGyro4readEb+0x58>
     53a:	18 aa       	std	Y+48, r1	; 0x30
     53c:	19 aa       	std	Y+49, r1	; 0x31
     53e:	1a aa       	std	Y+50, r1	; 0x32
     540:	1b aa       	std	Y+51, r1	; 0x33
     542:	88 ad       	ldd	r24, Y+56	; 0x38
     544:	99 ad       	ldd	r25, Y+57	; 0x39
     546:	dc 01       	movw	r26, r24
     548:	ed 91       	ld	r30, X+
     54a:	fc 91       	ld	r31, X
     54c:	06 84       	ldd	r0, Z+14	; 0x0e
     54e:	f7 85       	ldd	r31, Z+15	; 0x0f
     550:	e0 2d       	mov	r30, r0
     552:	49 e1       	ldi	r20, 0x19	; 25
     554:	66 ed       	ldi	r22, 0xD6	; 214
     556:	09 95       	icall
     558:	a8 2e       	mov	r10, r24
     55a:	b1 2c       	mov	r11, r1
     55c:	ba 2c       	mov	r11, r10
     55e:	aa 24       	eor	r10, r10
     560:	88 ad       	ldd	r24, Y+56	; 0x38
     562:	99 ad       	ldd	r25, Y+57	; 0x39
     564:	dc 01       	movw	r26, r24
     566:	ed 91       	ld	r30, X+
     568:	fc 91       	ld	r31, X
     56a:	06 84       	ldd	r0, Z+14	; 0x0e
     56c:	f7 85       	ldd	r31, Z+15	; 0x0f
     56e:	e0 2d       	mov	r30, r0
     570:	48 e1       	ldi	r20, 0x18	; 24
     572:	66 ed       	ldi	r22, 0xD6	; 214
     574:	09 95       	icall
     576:	a8 2a       	or	r10, r24
     578:	88 ad       	ldd	r24, Y+56	; 0x38
     57a:	99 ad       	ldd	r25, Y+57	; 0x39
     57c:	dc 01       	movw	r26, r24
     57e:	ed 91       	ld	r30, X+
     580:	fc 91       	ld	r31, X
     582:	06 84       	ldd	r0, Z+14	; 0x0e
     584:	f7 85       	ldd	r31, Z+15	; 0x0f
     586:	e0 2d       	mov	r30, r0
     588:	4b e1       	ldi	r20, 0x1B	; 27
     58a:	66 ed       	ldi	r22, 0xD6	; 214
     58c:	09 95       	icall
     58e:	08 2f       	mov	r16, r24
     590:	10 e0       	ldi	r17, 0x00	; 0
     592:	10 2f       	mov	r17, r16
     594:	00 27       	eor	r16, r16
     596:	88 ad       	ldd	r24, Y+56	; 0x38
     598:	99 ad       	ldd	r25, Y+57	; 0x39
     59a:	dc 01       	movw	r26, r24
     59c:	ed 91       	ld	r30, X+
     59e:	fc 91       	ld	r31, X
     5a0:	06 84       	ldd	r0, Z+14	; 0x0e
     5a2:	f7 85       	ldd	r31, Z+15	; 0x0f
     5a4:	e0 2d       	mov	r30, r0
     5a6:	4a e1       	ldi	r20, 0x1A	; 26
     5a8:	66 ed       	ldi	r22, 0xD6	; 214
     5aa:	09 95       	icall
     5ac:	08 2b       	or	r16, r24
     5ae:	88 ad       	ldd	r24, Y+56	; 0x38
     5b0:	99 ad       	ldd	r25, Y+57	; 0x39
     5b2:	dc 01       	movw	r26, r24
     5b4:	ed 91       	ld	r30, X+
     5b6:	fc 91       	ld	r31, X
     5b8:	06 84       	ldd	r0, Z+14	; 0x0e
     5ba:	f7 85       	ldd	r31, Z+15	; 0x0f
     5bc:	e0 2d       	mov	r30, r0
     5be:	4d e1       	ldi	r20, 0x1D	; 29
     5c0:	66 ed       	ldi	r22, 0xD6	; 214
     5c2:	09 95       	icall
     5c4:	c8 2e       	mov	r12, r24
     5c6:	d1 2c       	mov	r13, r1
     5c8:	dc 2c       	mov	r13, r12
     5ca:	cc 24       	eor	r12, r12
     5cc:	88 ad       	ldd	r24, Y+56	; 0x38
     5ce:	99 ad       	ldd	r25, Y+57	; 0x39
     5d0:	dc 01       	movw	r26, r24
     5d2:	ed 91       	ld	r30, X+
     5d4:	fc 91       	ld	r31, X
     5d6:	06 84       	ldd	r0, Z+14	; 0x0e
     5d8:	f7 85       	ldd	r31, Z+15	; 0x0f
     5da:	e0 2d       	mov	r30, r0
     5dc:	4c e1       	ldi	r20, 0x1C	; 28
     5de:	66 ed       	ldi	r22, 0xD6	; 214
     5e0:	09 95       	icall
     5e2:	c8 2a       	or	r12, r24
     5e4:	c5 01       	movw	r24, r10
     5e6:	bb 0c       	add	r11, r11
     5e8:	aa 0b       	sbc	r26, r26
     5ea:	bb 0b       	sbc	r27, r27
     5ec:	01 2e       	mov	r0, r17
     5ee:	00 0c       	add	r0, r0
     5f0:	22 0b       	sbc	r18, r18
     5f2:	33 0b       	sbc	r19, r19
     5f4:	46 01       	movw	r8, r12
     5f6:	dd 0c       	add	r13, r13
     5f8:	aa 08       	sbc	r10, r10
     5fa:	bb 08       	sbc	r11, r11
     5fc:	ff 20       	and	r15, r15
     5fe:	21 f1       	breq	.+72     	; 0x648 <_ZN5CGyro4readEb+0x15e>
     600:	cc a0       	ldd	r12, Y+36	; 0x24
     602:	dd a0       	ldd	r13, Y+37	; 0x25
     604:	ee a0       	ldd	r14, Y+38	; 0x26
     606:	ff a0       	ldd	r15, Y+39	; 0x27
     608:	c8 0e       	add	r12, r24
     60a:	d9 1e       	adc	r13, r25
     60c:	ea 1e       	adc	r14, r26
     60e:	fb 1e       	adc	r15, r27
     610:	cc a2       	std	Y+36, r12	; 0x24
     612:	dd a2       	std	Y+37, r13	; 0x25
     614:	ee a2       	std	Y+38, r14	; 0x26
     616:	ff a2       	std	Y+39, r15	; 0x27
     618:	c8 a4       	ldd	r12, Y+40	; 0x28
     61a:	d9 a4       	ldd	r13, Y+41	; 0x29
     61c:	ea a4       	ldd	r14, Y+42	; 0x2a
     61e:	fb a4       	ldd	r15, Y+43	; 0x2b
     620:	c0 0e       	add	r12, r16
     622:	d1 1e       	adc	r13, r17
     624:	e2 1e       	adc	r14, r18
     626:	f3 1e       	adc	r15, r19
     628:	c8 a6       	std	Y+40, r12	; 0x28
     62a:	d9 a6       	std	Y+41, r13	; 0x29
     62c:	ea a6       	std	Y+42, r14	; 0x2a
     62e:	fb a6       	std	Y+43, r15	; 0x2b
     630:	cc a4       	ldd	r12, Y+44	; 0x2c
     632:	dd a4       	ldd	r13, Y+45	; 0x2d
     634:	ee a4       	ldd	r14, Y+46	; 0x2e
     636:	ff a4       	ldd	r15, Y+47	; 0x2f
     638:	c8 0c       	add	r12, r8
     63a:	d9 1c       	adc	r13, r9
     63c:	ea 1c       	adc	r14, r10
     63e:	fb 1c       	adc	r15, r11
     640:	cc a6       	std	Y+44, r12	; 0x2c
     642:	dd a6       	std	Y+45, r13	; 0x2d
     644:	ee a6       	std	Y+46, r14	; 0x2e
     646:	ff a6       	std	Y+47, r15	; 0x2f
     648:	cc a0       	ldd	r12, Y+36	; 0x24
     64a:	dd a0       	ldd	r13, Y+37	; 0x25
     64c:	ee a0       	ldd	r14, Y+38	; 0x26
     64e:	ff a0       	ldd	r15, Y+39	; 0x27
     650:	bc 01       	movw	r22, r24
     652:	cd 01       	movw	r24, r26
     654:	6c 19       	sub	r22, r12
     656:	7d 09       	sbc	r23, r13
     658:	8e 09       	sbc	r24, r14
     65a:	9f 09       	sbc	r25, r15
     65c:	6c 87       	std	Y+12, r22	; 0x0c
     65e:	7d 87       	std	Y+13, r23	; 0x0d
     660:	8e 87       	std	Y+14, r24	; 0x0e
     662:	9f 87       	std	Y+15, r25	; 0x0f
     664:	c8 a4       	ldd	r12, Y+40	; 0x28
     666:	d9 a4       	ldd	r13, Y+41	; 0x29
     668:	ea a4       	ldd	r14, Y+42	; 0x2a
     66a:	fb a4       	ldd	r15, Y+43	; 0x2b
     66c:	28 01       	movw	r4, r16
     66e:	39 01       	movw	r6, r18
     670:	4c 18       	sub	r4, r12
     672:	5d 08       	sbc	r5, r13
     674:	6e 08       	sbc	r6, r14
     676:	7f 08       	sbc	r7, r15
     678:	48 8a       	std	Y+16, r4	; 0x10
     67a:	59 8a       	std	Y+17, r5	; 0x11
     67c:	6a 8a       	std	Y+18, r6	; 0x12
     67e:	7b 8a       	std	Y+19, r7	; 0x13
     680:	0c a5       	ldd	r16, Y+44	; 0x2c
     682:	1d a5       	ldd	r17, Y+45	; 0x2d
     684:	2e a5       	ldd	r18, Y+46	; 0x2e
     686:	3f a5       	ldd	r19, Y+47	; 0x2f
     688:	75 01       	movw	r14, r10
     68a:	64 01       	movw	r12, r8
     68c:	c0 1a       	sub	r12, r16
     68e:	d1 0a       	sbc	r13, r17
     690:	e2 0a       	sbc	r14, r18
     692:	f3 0a       	sbc	r15, r19
     694:	cc 8a       	std	Y+20, r12	; 0x14
     696:	dd 8a       	std	Y+21, r13	; 0x15
     698:	ee 8a       	std	Y+22, r14	; 0x16
     69a:	ff 8a       	std	Y+23, r15	; 0x17
     69c:	29 e1       	ldi	r18, 0x19	; 25
     69e:	82 2e       	mov	r8, r18
     6a0:	91 2c       	mov	r9, r1
     6a2:	a1 2c       	mov	r10, r1
     6a4:	b1 2c       	mov	r11, r1
     6a6:	a5 01       	movw	r20, r10
     6a8:	94 01       	movw	r18, r8
     6aa:	0e 94 06 0a 	call	0x140c	; 0x140c <__divmodsi4>
     6ae:	88 8d       	ldd	r24, Y+24	; 0x18
     6b0:	99 8d       	ldd	r25, Y+25	; 0x19
     6b2:	aa 8d       	ldd	r26, Y+26	; 0x1a
     6b4:	bb 8d       	ldd	r27, Y+27	; 0x1b
     6b6:	82 0f       	add	r24, r18
     6b8:	93 1f       	adc	r25, r19
     6ba:	a4 1f       	adc	r26, r20
     6bc:	b5 1f       	adc	r27, r21
     6be:	88 8f       	std	Y+24, r24	; 0x18
     6c0:	99 8f       	std	Y+25, r25	; 0x19
     6c2:	aa 8f       	std	Y+26, r26	; 0x1a
     6c4:	bb 8f       	std	Y+27, r27	; 0x1b
     6c6:	c3 01       	movw	r24, r6
     6c8:	b2 01       	movw	r22, r4
     6ca:	a5 01       	movw	r20, r10
     6cc:	94 01       	movw	r18, r8
     6ce:	0e 94 06 0a 	call	0x140c	; 0x140c <__divmodsi4>
     6d2:	8c 8d       	ldd	r24, Y+28	; 0x1c
     6d4:	9d 8d       	ldd	r25, Y+29	; 0x1d
     6d6:	ae 8d       	ldd	r26, Y+30	; 0x1e
     6d8:	bf 8d       	ldd	r27, Y+31	; 0x1f
     6da:	82 0f       	add	r24, r18
     6dc:	93 1f       	adc	r25, r19
     6de:	a4 1f       	adc	r26, r20
     6e0:	b5 1f       	adc	r27, r21
     6e2:	8c 8f       	std	Y+28, r24	; 0x1c
     6e4:	9d 8f       	std	Y+29, r25	; 0x1d
     6e6:	ae 8f       	std	Y+30, r26	; 0x1e
     6e8:	bf 8f       	std	Y+31, r27	; 0x1f
     6ea:	c7 01       	movw	r24, r14
     6ec:	b6 01       	movw	r22, r12
     6ee:	a5 01       	movw	r20, r10
     6f0:	94 01       	movw	r18, r8
     6f2:	0e 94 06 0a 	call	0x140c	; 0x140c <__divmodsi4>
     6f6:	88 a1       	ldd	r24, Y+32	; 0x20
     6f8:	99 a1       	ldd	r25, Y+33	; 0x21
     6fa:	aa a1       	ldd	r26, Y+34	; 0x22
     6fc:	bb a1       	ldd	r27, Y+35	; 0x23
     6fe:	82 0f       	add	r24, r18
     700:	93 1f       	adc	r25, r19
     702:	a4 1f       	adc	r26, r20
     704:	b5 1f       	adc	r27, r21
     706:	88 a3       	std	Y+32, r24	; 0x20
     708:	99 a3       	std	Y+33, r25	; 0x21
     70a:	aa a3       	std	Y+34, r26	; 0x22
     70c:	bb a3       	std	Y+35, r27	; 0x23
     70e:	88 ad       	ldd	r24, Y+56	; 0x38
     710:	99 ad       	ldd	r25, Y+57	; 0x39
     712:	dc 01       	movw	r26, r24
     714:	ed 91       	ld	r30, X+
     716:	fc 91       	ld	r31, X
     718:	06 84       	ldd	r0, Z+14	; 0x0e
     71a:	f7 85       	ldd	r31, Z+15	; 0x0f
     71c:	e0 2d       	mov	r30, r0
     71e:	49 e2       	ldi	r20, 0x29	; 41
     720:	66 ed       	ldi	r22, 0xD6	; 214
     722:	09 95       	icall
     724:	08 2f       	mov	r16, r24
     726:	10 e0       	ldi	r17, 0x00	; 0
     728:	10 2f       	mov	r17, r16
     72a:	00 27       	eor	r16, r16
     72c:	88 ad       	ldd	r24, Y+56	; 0x38
     72e:	99 ad       	ldd	r25, Y+57	; 0x39
     730:	dc 01       	movw	r26, r24
     732:	ed 91       	ld	r30, X+
     734:	fc 91       	ld	r31, X
     736:	06 84       	ldd	r0, Z+14	; 0x0e
     738:	f7 85       	ldd	r31, Z+15	; 0x0f
     73a:	e0 2d       	mov	r30, r0
     73c:	48 e2       	ldi	r20, 0x28	; 40
     73e:	66 ed       	ldi	r22, 0xD6	; 214
     740:	09 95       	icall
     742:	68 01       	movw	r12, r16
     744:	c8 2a       	or	r12, r24
     746:	88 ad       	ldd	r24, Y+56	; 0x38
     748:	99 ad       	ldd	r25, Y+57	; 0x39
     74a:	dc 01       	movw	r26, r24
     74c:	ed 91       	ld	r30, X+
     74e:	fc 91       	ld	r31, X
     750:	06 84       	ldd	r0, Z+14	; 0x0e
     752:	f7 85       	ldd	r31, Z+15	; 0x0f
     754:	e0 2d       	mov	r30, r0
     756:	4b e2       	ldi	r20, 0x2B	; 43
     758:	66 ed       	ldi	r22, 0xD6	; 214
     75a:	09 95       	icall
     75c:	08 2f       	mov	r16, r24
     75e:	10 e0       	ldi	r17, 0x00	; 0
     760:	10 2f       	mov	r17, r16
     762:	00 27       	eor	r16, r16
     764:	88 ad       	ldd	r24, Y+56	; 0x38
     766:	99 ad       	ldd	r25, Y+57	; 0x39
     768:	dc 01       	movw	r26, r24
     76a:	ed 91       	ld	r30, X+
     76c:	fc 91       	ld	r31, X
     76e:	06 84       	ldd	r0, Z+14	; 0x0e
     770:	f7 85       	ldd	r31, Z+15	; 0x0f
     772:	e0 2d       	mov	r30, r0
     774:	4a e2       	ldi	r20, 0x2A	; 42
     776:	66 ed       	ldi	r22, 0xD6	; 214
     778:	09 95       	icall
     77a:	08 2b       	or	r16, r24
     77c:	88 ad       	ldd	r24, Y+56	; 0x38
     77e:	99 ad       	ldd	r25, Y+57	; 0x39
     780:	dc 01       	movw	r26, r24
     782:	ed 91       	ld	r30, X+
     784:	fc 91       	ld	r31, X
     786:	06 84       	ldd	r0, Z+14	; 0x0e
     788:	f7 85       	ldd	r31, Z+15	; 0x0f
     78a:	e0 2d       	mov	r30, r0
     78c:	4d e2       	ldi	r20, 0x2D	; 45
     78e:	66 ed       	ldi	r22, 0xD6	; 214
     790:	09 95       	icall
     792:	90 e0       	ldi	r25, 0x00	; 0
     794:	f8 2e       	mov	r15, r24
     796:	ee 24       	eor	r14, r14
     798:	88 ad       	ldd	r24, Y+56	; 0x38
     79a:	99 ad       	ldd	r25, Y+57	; 0x39
     79c:	dc 01       	movw	r26, r24
     79e:	ed 91       	ld	r30, X+
     7a0:	fc 91       	ld	r31, X
     7a2:	06 84       	ldd	r0, Z+14	; 0x0e
     7a4:	f7 85       	ldd	r31, Z+15	; 0x0f
     7a6:	e0 2d       	mov	r30, r0
     7a8:	4c e2       	ldi	r20, 0x2C	; 44
     7aa:	66 ed       	ldi	r22, 0xD6	; 214
     7ac:	09 95       	icall
     7ae:	a6 01       	movw	r20, r12
     7b0:	dd 0c       	add	r13, r13
     7b2:	66 0b       	sbc	r22, r22
     7b4:	77 0b       	sbc	r23, r23
     7b6:	48 83       	st	Y, r20
     7b8:	59 83       	std	Y+1, r21	; 0x01
     7ba:	6a 83       	std	Y+2, r22	; 0x02
     7bc:	7b 83       	std	Y+3, r23	; 0x03
     7be:	01 2e       	mov	r0, r17
     7c0:	00 0c       	add	r0, r0
     7c2:	22 0b       	sbc	r18, r18
     7c4:	33 0b       	sbc	r19, r19
     7c6:	0c 83       	std	Y+4, r16	; 0x04
     7c8:	1d 83       	std	Y+5, r17	; 0x05
     7ca:	2e 83       	std	Y+6, r18	; 0x06
     7cc:	3f 83       	std	Y+7, r19	; 0x07
     7ce:	97 01       	movw	r18, r14
     7d0:	28 2b       	or	r18, r24
     7d2:	c9 01       	movw	r24, r18
     7d4:	09 2e       	mov	r0, r25
     7d6:	00 0c       	add	r0, r0
     7d8:	aa 0b       	sbc	r26, r26
     7da:	bb 0b       	sbc	r27, r27
     7dc:	88 87       	std	Y+8, r24	; 0x08
     7de:	99 87       	std	Y+9, r25	; 0x09
     7e0:	aa 87       	std	Y+10, r26	; 0x0a
     7e2:	bb 87       	std	Y+11, r27	; 0x0b
     7e4:	df 91       	pop	r29
     7e6:	cf 91       	pop	r28
     7e8:	1f 91       	pop	r17
     7ea:	0f 91       	pop	r16
     7ec:	ff 90       	pop	r15
     7ee:	ef 90       	pop	r14
     7f0:	df 90       	pop	r13
     7f2:	cf 90       	pop	r12
     7f4:	bf 90       	pop	r11
     7f6:	af 90       	pop	r10
     7f8:	9f 90       	pop	r9
     7fa:	8f 90       	pop	r8
     7fc:	7f 90       	pop	r7
     7fe:	6f 90       	pop	r6
     800:	5f 90       	pop	r5
     802:	4f 90       	pop	r4
     804:	08 95       	ret

00000806 <_ZN5CGyro11delay_loopsEm>:
     806:	41 50       	subi	r20, 0x01	; 1
     808:	51 09       	sbc	r21, r1
     80a:	61 09       	sbc	r22, r1
     80c:	71 09       	sbc	r23, r1
     80e:	10 f0       	brcs	.+4      	; 0x814 <_ZN5CGyro11delay_loopsEm+0xe>
     810:	00 00       	nop
     812:	f9 cf       	rjmp	.-14     	; 0x806 <_ZN5CGyro11delay_loopsEm>
     814:	08 95       	ret

00000816 <_ZN5CGyro4initEP14CI2C_Interface>:
     816:	cf 92       	push	r12
     818:	df 92       	push	r13
     81a:	ef 92       	push	r14
     81c:	ff 92       	push	r15
     81e:	cf 93       	push	r28
     820:	df 93       	push	r29
     822:	ec 01       	movw	r28, r24
     824:	79 af       	std	Y+57, r23	; 0x39
     826:	68 af       	std	Y+56, r22	; 0x38
     828:	1c 86       	std	Y+12, r1	; 0x0c
     82a:	1d 86       	std	Y+13, r1	; 0x0d
     82c:	1e 86       	std	Y+14, r1	; 0x0e
     82e:	1f 86       	std	Y+15, r1	; 0x0f
     830:	18 8a       	std	Y+16, r1	; 0x10
     832:	19 8a       	std	Y+17, r1	; 0x11
     834:	1a 8a       	std	Y+18, r1	; 0x12
     836:	1b 8a       	std	Y+19, r1	; 0x13
     838:	1c 8a       	std	Y+20, r1	; 0x14
     83a:	1d 8a       	std	Y+21, r1	; 0x15
     83c:	1e 8a       	std	Y+22, r1	; 0x16
     83e:	1f 8a       	std	Y+23, r1	; 0x17
     840:	1c a2       	std	Y+36, r1	; 0x24
     842:	1d a2       	std	Y+37, r1	; 0x25
     844:	1e a2       	std	Y+38, r1	; 0x26
     846:	1f a2       	std	Y+39, r1	; 0x27
     848:	18 a6       	std	Y+40, r1	; 0x28
     84a:	19 a6       	std	Y+41, r1	; 0x29
     84c:	1a a6       	std	Y+42, r1	; 0x2a
     84e:	1b a6       	std	Y+43, r1	; 0x2b
     850:	1c a6       	std	Y+44, r1	; 0x2c
     852:	1d a6       	std	Y+45, r1	; 0x2d
     854:	1e a6       	std	Y+46, r1	; 0x2e
     856:	1f a6       	std	Y+47, r1	; 0x2f
     858:	18 8e       	std	Y+24, r1	; 0x18
     85a:	19 8e       	std	Y+25, r1	; 0x19
     85c:	1a 8e       	std	Y+26, r1	; 0x1a
     85e:	1b 8e       	std	Y+27, r1	; 0x1b
     860:	1c 8e       	std	Y+28, r1	; 0x1c
     862:	1d 8e       	std	Y+29, r1	; 0x1d
     864:	1e 8e       	std	Y+30, r1	; 0x1e
     866:	1f 8e       	std	Y+31, r1	; 0x1f
     868:	18 a2       	std	Y+32, r1	; 0x20
     86a:	19 a2       	std	Y+33, r1	; 0x21
     86c:	1a a2       	std	Y+34, r1	; 0x22
     86e:	1b a2       	std	Y+35, r1	; 0x23
     870:	40 e1       	ldi	r20, 0x10	; 16
     872:	57 e2       	ldi	r21, 0x27	; 39
     874:	60 e0       	ldi	r22, 0x00	; 0
     876:	70 e0       	ldi	r23, 0x00	; 0
     878:	0e 94 03 04 	call	0x806	; 0x806 <_ZN5CGyro11delay_loopsEm>
     87c:	18 aa       	std	Y+48, r1	; 0x30
     87e:	19 aa       	std	Y+49, r1	; 0x31
     880:	1a aa       	std	Y+50, r1	; 0x32
     882:	1b aa       	std	Y+51, r1	; 0x33
     884:	88 ad       	ldd	r24, Y+56	; 0x38
     886:	99 ad       	ldd	r25, Y+57	; 0x39
     888:	dc 01       	movw	r26, r24
     88a:	ed 91       	ld	r30, X+
     88c:	fc 91       	ld	r31, X
     88e:	06 84       	ldd	r0, Z+14	; 0x0e
     890:	f7 85       	ldd	r31, Z+15	; 0x0f
     892:	e0 2d       	mov	r30, r0
     894:	4f e0       	ldi	r20, 0x0F	; 15
     896:	66 ed       	ldi	r22, 0xD6	; 214
     898:	09 95       	icall
     89a:	88 36       	cpi	r24, 0x68	; 104
     89c:	41 f4       	brne	.+16     	; 0x8ae <_ZN5CGyro4initEP14CI2C_Interface+0x98>
     89e:	81 e0       	ldi	r24, 0x01	; 1
     8a0:	90 e0       	ldi	r25, 0x00	; 0
     8a2:	a0 e0       	ldi	r26, 0x00	; 0
     8a4:	b0 e0       	ldi	r27, 0x00	; 0
     8a6:	88 ab       	std	Y+48, r24	; 0x30
     8a8:	99 ab       	std	Y+49, r25	; 0x31
     8aa:	aa ab       	std	Y+50, r26	; 0x32
     8ac:	bb ab       	std	Y+51, r27	; 0x33
     8ae:	88 ad       	ldd	r24, Y+56	; 0x38
     8b0:	99 ad       	ldd	r25, Y+57	; 0x39
     8b2:	dc 01       	movw	r26, r24
     8b4:	ed 91       	ld	r30, X+
     8b6:	fc 91       	ld	r31, X
     8b8:	00 84       	ldd	r0, Z+8	; 0x08
     8ba:	f1 85       	ldd	r31, Z+9	; 0x09
     8bc:	e0 2d       	mov	r30, r0
     8be:	28 ea       	ldi	r18, 0xA8	; 168
     8c0:	40 e1       	ldi	r20, 0x10	; 16
     8c2:	66 ed       	ldi	r22, 0xD6	; 214
     8c4:	09 95       	icall
     8c6:	88 ad       	ldd	r24, Y+56	; 0x38
     8c8:	99 ad       	ldd	r25, Y+57	; 0x39
     8ca:	dc 01       	movw	r26, r24
     8cc:	ed 91       	ld	r30, X+
     8ce:	fc 91       	ld	r31, X
     8d0:	00 84       	ldd	r0, Z+8	; 0x08
     8d2:	f1 85       	ldd	r31, Z+9	; 0x09
     8d4:	e0 2d       	mov	r30, r0
     8d6:	28 e3       	ldi	r18, 0x38	; 56
     8d8:	4e e1       	ldi	r20, 0x1E	; 30
     8da:	66 ed       	ldi	r22, 0xD6	; 214
     8dc:	09 95       	icall
     8de:	88 ad       	ldd	r24, Y+56	; 0x38
     8e0:	99 ad       	ldd	r25, Y+57	; 0x39
     8e2:	dc 01       	movw	r26, r24
     8e4:	ed 91       	ld	r30, X+
     8e6:	fc 91       	ld	r31, X
     8e8:	00 84       	ldd	r0, Z+8	; 0x08
     8ea:	f1 85       	ldd	r31, Z+9	; 0x09
     8ec:	e0 2d       	mov	r30, r0
     8ee:	20 e0       	ldi	r18, 0x00	; 0
     8f0:	4e e2       	ldi	r20, 0x2E	; 46
     8f2:	66 ed       	ldi	r22, 0xD6	; 214
     8f4:	09 95       	icall
     8f6:	88 ad       	ldd	r24, Y+56	; 0x38
     8f8:	99 ad       	ldd	r25, Y+57	; 0x39
     8fa:	dc 01       	movw	r26, r24
     8fc:	ed 91       	ld	r30, X+
     8fe:	fc 91       	ld	r31, X
     900:	00 84       	ldd	r0, Z+8	; 0x08
     902:	f1 85       	ldd	r31, Z+9	; 0x09
     904:	e0 2d       	mov	r30, r0
     906:	20 e0       	ldi	r18, 0x00	; 0
     908:	42 e1       	ldi	r20, 0x12	; 18
     90a:	66 ed       	ldi	r22, 0xD6	; 214
     90c:	09 95       	icall
     90e:	88 ad       	ldd	r24, Y+56	; 0x38
     910:	99 ad       	ldd	r25, Y+57	; 0x39
     912:	dc 01       	movw	r26, r24
     914:	ed 91       	ld	r30, X+
     916:	fc 91       	ld	r31, X
     918:	00 84       	ldd	r0, Z+8	; 0x08
     91a:	f1 85       	ldd	r31, Z+9	; 0x09
     91c:	e0 2d       	mov	r30, r0
     91e:	20 e6       	ldi	r18, 0x60	; 96
     920:	40 e2       	ldi	r20, 0x20	; 32
     922:	66 ed       	ldi	r22, 0xD6	; 214
     924:	09 95       	icall
     926:	88 ad       	ldd	r24, Y+56	; 0x38
     928:	99 ad       	ldd	r25, Y+57	; 0x39
     92a:	dc 01       	movw	r26, r24
     92c:	ed 91       	ld	r30, X+
     92e:	fc 91       	ld	r31, X
     930:	00 84       	ldd	r0, Z+8	; 0x08
     932:	f1 85       	ldd	r31, Z+9	; 0x09
     934:	e0 2d       	mov	r30, r0
     936:	28 e3       	ldi	r18, 0x38	; 56
     938:	4f e1       	ldi	r20, 0x1F	; 31
     93a:	66 ed       	ldi	r22, 0xD6	; 214
     93c:	09 95       	icall
     93e:	40 e1       	ldi	r20, 0x10	; 16
     940:	57 e2       	ldi	r21, 0x27	; 39
     942:	60 e0       	ldi	r22, 0x00	; 0
     944:	70 e0       	ldi	r23, 0x00	; 0
     946:	ce 01       	movw	r24, r28
     948:	0e 94 03 04 	call	0x806	; 0x806 <_ZN5CGyro11delay_loopsEm>
     94c:	60 e0       	ldi	r22, 0x00	; 0
     94e:	ce 01       	movw	r24, r28
     950:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN5CGyro4readEb>
     954:	1c aa       	std	Y+52, r1	; 0x34
     956:	1d aa       	std	Y+53, r1	; 0x35
     958:	1e aa       	std	Y+54, r1	; 0x36
     95a:	1f aa       	std	Y+55, r1	; 0x37
     95c:	e1 2c       	mov	r14, r1
     95e:	f1 2c       	mov	r15, r1
     960:	61 e0       	ldi	r22, 0x01	; 1
     962:	ce 01       	movw	r24, r28
     964:	0e 94 75 02 	call	0x4ea	; 0x4ea <_ZN5CGyro4readEb>
     968:	48 ee       	ldi	r20, 0xE8	; 232
     96a:	53 e0       	ldi	r21, 0x03	; 3
     96c:	60 e0       	ldi	r22, 0x00	; 0
     96e:	70 e0       	ldi	r23, 0x00	; 0
     970:	ce 01       	movw	r24, r28
     972:	0e 94 03 04 	call	0x806	; 0x806 <_ZN5CGyro11delay_loopsEm>
     976:	bf ef       	ldi	r27, 0xFF	; 255
     978:	eb 1a       	sub	r14, r27
     97a:	fb 0a       	sbc	r15, r27
     97c:	88 ec       	ldi	r24, 0xC8	; 200
     97e:	e8 16       	cp	r14, r24
     980:	f1 04       	cpc	r15, r1
     982:	71 f7       	brne	.-36     	; 0x960 <_ZN5CGyro4initEP14CI2C_Interface+0x14a>
     984:	6c a1       	ldd	r22, Y+36	; 0x24
     986:	7d a1       	ldd	r23, Y+37	; 0x25
     988:	8e a1       	ldd	r24, Y+38	; 0x26
     98a:	9f a1       	ldd	r25, Y+39	; 0x27
     98c:	28 ec       	ldi	r18, 0xC8	; 200
     98e:	c2 2e       	mov	r12, r18
     990:	d1 2c       	mov	r13, r1
     992:	e1 2c       	mov	r14, r1
     994:	f1 2c       	mov	r15, r1
     996:	a7 01       	movw	r20, r14
     998:	96 01       	movw	r18, r12
     99a:	0e 94 06 0a 	call	0x140c	; 0x140c <__divmodsi4>
     99e:	2c a3       	std	Y+36, r18	; 0x24
     9a0:	3d a3       	std	Y+37, r19	; 0x25
     9a2:	4e a3       	std	Y+38, r20	; 0x26
     9a4:	5f a3       	std	Y+39, r21	; 0x27
     9a6:	68 a5       	ldd	r22, Y+40	; 0x28
     9a8:	79 a5       	ldd	r23, Y+41	; 0x29
     9aa:	8a a5       	ldd	r24, Y+42	; 0x2a
     9ac:	9b a5       	ldd	r25, Y+43	; 0x2b
     9ae:	a7 01       	movw	r20, r14
     9b0:	96 01       	movw	r18, r12
     9b2:	0e 94 06 0a 	call	0x140c	; 0x140c <__divmodsi4>
     9b6:	28 a7       	std	Y+40, r18	; 0x28
     9b8:	39 a7       	std	Y+41, r19	; 0x29
     9ba:	4a a7       	std	Y+42, r20	; 0x2a
     9bc:	5b a7       	std	Y+43, r21	; 0x2b
     9be:	6c a5       	ldd	r22, Y+44	; 0x2c
     9c0:	7d a5       	ldd	r23, Y+45	; 0x2d
     9c2:	8e a5       	ldd	r24, Y+46	; 0x2e
     9c4:	9f a5       	ldd	r25, Y+47	; 0x2f
     9c6:	a7 01       	movw	r20, r14
     9c8:	96 01       	movw	r18, r12
     9ca:	0e 94 06 0a 	call	0x140c	; 0x140c <__divmodsi4>
     9ce:	2c a7       	std	Y+44, r18	; 0x2c
     9d0:	3d a7       	std	Y+45, r19	; 0x2d
     9d2:	4e a7       	std	Y+46, r20	; 0x2e
     9d4:	5f a7       	std	Y+47, r21	; 0x2f
     9d6:	18 8e       	std	Y+24, r1	; 0x18
     9d8:	19 8e       	std	Y+25, r1	; 0x19
     9da:	1a 8e       	std	Y+26, r1	; 0x1a
     9dc:	1b 8e       	std	Y+27, r1	; 0x1b
     9de:	1c 8e       	std	Y+28, r1	; 0x1c
     9e0:	1d 8e       	std	Y+29, r1	; 0x1d
     9e2:	1e 8e       	std	Y+30, r1	; 0x1e
     9e4:	1f 8e       	std	Y+31, r1	; 0x1f
     9e6:	18 a2       	std	Y+32, r1	; 0x20
     9e8:	19 a2       	std	Y+33, r1	; 0x21
     9ea:	1a a2       	std	Y+34, r1	; 0x22
     9ec:	1b a2       	std	Y+35, r1	; 0x23
     9ee:	18 82       	st	Y, r1
     9f0:	19 82       	std	Y+1, r1	; 0x01
     9f2:	1a 82       	std	Y+2, r1	; 0x02
     9f4:	1b 82       	std	Y+3, r1	; 0x03
     9f6:	1c 82       	std	Y+4, r1	; 0x04
     9f8:	1d 82       	std	Y+5, r1	; 0x05
     9fa:	1e 82       	std	Y+6, r1	; 0x06
     9fc:	1f 82       	std	Y+7, r1	; 0x07
     9fe:	18 86       	std	Y+8, r1	; 0x08
     a00:	19 86       	std	Y+9, r1	; 0x09
     a02:	1a 86       	std	Y+10, r1	; 0x0a
     a04:	1b 86       	std	Y+11, r1	; 0x0b
     a06:	df 91       	pop	r29
     a08:	cf 91       	pop	r28
     a0a:	ff 90       	pop	r15
     a0c:	ef 90       	pop	r14
     a0e:	df 90       	pop	r13
     a10:	cf 90       	pop	r12
     a12:	08 95       	ret

00000a14 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
     a14:	0f 93       	push	r16
     a16:	1f 93       	push	r17
     a18:	cf 93       	push	r28
     a1a:	df 93       	push	r29
     a1c:	00 d0       	rcall	.+0      	; 0xa1e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
     a1e:	1f 92       	push	r1
     a20:	cd b7       	in	r28, 0x3d	; 61
     a22:	de b7       	in	r29, 0x3e	; 62
     a24:	8c 01       	movw	r16, r24
     a26:	dc 01       	movw	r26, r24
     a28:	ed 91       	ld	r30, X+
     a2a:	fc 91       	ld	r31, X
     a2c:	01 90       	ld	r0, Z+
     a2e:	f0 81       	ld	r31, Z
     a30:	e0 2d       	mov	r30, r0
     a32:	2b 83       	std	Y+3, r18	; 0x03
     a34:	4a 83       	std	Y+2, r20	; 0x02
     a36:	69 83       	std	Y+1, r22	; 0x01
     a38:	09 95       	icall
     a3a:	d8 01       	movw	r26, r16
     a3c:	ed 91       	ld	r30, X+
     a3e:	fc 91       	ld	r31, X
     a40:	04 80       	ldd	r0, Z+4	; 0x04
     a42:	f5 81       	ldd	r31, Z+5	; 0x05
     a44:	e0 2d       	mov	r30, r0
     a46:	69 81       	ldd	r22, Y+1	; 0x01
     a48:	c8 01       	movw	r24, r16
     a4a:	09 95       	icall
     a4c:	d8 01       	movw	r26, r16
     a4e:	ed 91       	ld	r30, X+
     a50:	fc 91       	ld	r31, X
     a52:	04 80       	ldd	r0, Z+4	; 0x04
     a54:	f5 81       	ldd	r31, Z+5	; 0x05
     a56:	e0 2d       	mov	r30, r0
     a58:	4a 81       	ldd	r20, Y+2	; 0x02
     a5a:	64 2f       	mov	r22, r20
     a5c:	c8 01       	movw	r24, r16
     a5e:	09 95       	icall
     a60:	d8 01       	movw	r26, r16
     a62:	ed 91       	ld	r30, X+
     a64:	fc 91       	ld	r31, X
     a66:	04 80       	ldd	r0, Z+4	; 0x04
     a68:	f5 81       	ldd	r31, Z+5	; 0x05
     a6a:	e0 2d       	mov	r30, r0
     a6c:	2b 81       	ldd	r18, Y+3	; 0x03
     a6e:	62 2f       	mov	r22, r18
     a70:	c8 01       	movw	r24, r16
     a72:	09 95       	icall
     a74:	d8 01       	movw	r26, r16
     a76:	ed 91       	ld	r30, X+
     a78:	fc 91       	ld	r31, X
     a7a:	02 80       	ldd	r0, Z+2	; 0x02
     a7c:	f3 81       	ldd	r31, Z+3	; 0x03
     a7e:	e0 2d       	mov	r30, r0
     a80:	c8 01       	movw	r24, r16
     a82:	0f 90       	pop	r0
     a84:	0f 90       	pop	r0
     a86:	0f 90       	pop	r0
     a88:	df 91       	pop	r29
     a8a:	cf 91       	pop	r28
     a8c:	1f 91       	pop	r17
     a8e:	0f 91       	pop	r16
     a90:	09 94       	ijmp

00000a92 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
     a92:	0f 93       	push	r16
     a94:	1f 93       	push	r17
     a96:	cf 93       	push	r28
     a98:	df 93       	push	r29
     a9a:	00 d0       	rcall	.+0      	; 0xa9c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
     a9c:	00 d0       	rcall	.+0      	; 0xa9e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
     a9e:	cd b7       	in	r28, 0x3d	; 61
     aa0:	de b7       	in	r29, 0x3e	; 62
     aa2:	8c 01       	movw	r16, r24
     aa4:	dc 01       	movw	r26, r24
     aa6:	ed 91       	ld	r30, X+
     aa8:	fc 91       	ld	r31, X
     aaa:	01 90       	ld	r0, Z+
     aac:	f0 81       	ld	r31, Z
     aae:	e0 2d       	mov	r30, r0
     ab0:	2c 83       	std	Y+4, r18	; 0x04
     ab2:	3b 83       	std	Y+3, r19	; 0x03
     ab4:	4a 83       	std	Y+2, r20	; 0x02
     ab6:	69 83       	std	Y+1, r22	; 0x01
     ab8:	09 95       	icall
     aba:	d8 01       	movw	r26, r16
     abc:	ed 91       	ld	r30, X+
     abe:	fc 91       	ld	r31, X
     ac0:	04 80       	ldd	r0, Z+4	; 0x04
     ac2:	f5 81       	ldd	r31, Z+5	; 0x05
     ac4:	e0 2d       	mov	r30, r0
     ac6:	69 81       	ldd	r22, Y+1	; 0x01
     ac8:	c8 01       	movw	r24, r16
     aca:	09 95       	icall
     acc:	d8 01       	movw	r26, r16
     ace:	ed 91       	ld	r30, X+
     ad0:	fc 91       	ld	r31, X
     ad2:	04 80       	ldd	r0, Z+4	; 0x04
     ad4:	f5 81       	ldd	r31, Z+5	; 0x05
     ad6:	e0 2d       	mov	r30, r0
     ad8:	4a 81       	ldd	r20, Y+2	; 0x02
     ada:	64 2f       	mov	r22, r20
     adc:	c8 01       	movw	r24, r16
     ade:	09 95       	icall
     ae0:	d8 01       	movw	r26, r16
     ae2:	ed 91       	ld	r30, X+
     ae4:	fc 91       	ld	r31, X
     ae6:	04 80       	ldd	r0, Z+4	; 0x04
     ae8:	f5 81       	ldd	r31, Z+5	; 0x05
     aea:	e0 2d       	mov	r30, r0
     aec:	3b 81       	ldd	r19, Y+3	; 0x03
     aee:	63 2f       	mov	r22, r19
     af0:	c8 01       	movw	r24, r16
     af2:	09 95       	icall
     af4:	d8 01       	movw	r26, r16
     af6:	ed 91       	ld	r30, X+
     af8:	fc 91       	ld	r31, X
     afa:	04 80       	ldd	r0, Z+4	; 0x04
     afc:	f5 81       	ldd	r31, Z+5	; 0x05
     afe:	e0 2d       	mov	r30, r0
     b00:	2c 81       	ldd	r18, Y+4	; 0x04
     b02:	62 2f       	mov	r22, r18
     b04:	c8 01       	movw	r24, r16
     b06:	09 95       	icall
     b08:	d8 01       	movw	r26, r16
     b0a:	ed 91       	ld	r30, X+
     b0c:	fc 91       	ld	r31, X
     b0e:	02 80       	ldd	r0, Z+2	; 0x02
     b10:	f3 81       	ldd	r31, Z+3	; 0x03
     b12:	e0 2d       	mov	r30, r0
     b14:	c8 01       	movw	r24, r16
     b16:	0f 90       	pop	r0
     b18:	0f 90       	pop	r0
     b1a:	0f 90       	pop	r0
     b1c:	0f 90       	pop	r0
     b1e:	df 91       	pop	r29
     b20:	cf 91       	pop	r28
     b22:	1f 91       	pop	r17
     b24:	0f 91       	pop	r16
     b26:	09 94       	ijmp

00000b28 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
     b28:	cf 92       	push	r12
     b2a:	df 92       	push	r13
     b2c:	ef 92       	push	r14
     b2e:	ff 92       	push	r15
     b30:	0f 93       	push	r16
     b32:	1f 93       	push	r17
     b34:	cf 93       	push	r28
     b36:	df 93       	push	r29
     b38:	00 d0       	rcall	.+0      	; 0xb3a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
     b3a:	00 d0       	rcall	.+0      	; 0xb3c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
     b3c:	cd b7       	in	r28, 0x3d	; 61
     b3e:	de b7       	in	r29, 0x3e	; 62
     b40:	6c 01       	movw	r12, r24
     b42:	dc 01       	movw	r26, r24
     b44:	ed 91       	ld	r30, X+
     b46:	fc 91       	ld	r31, X
     b48:	01 90       	ld	r0, Z+
     b4a:	f0 81       	ld	r31, Z
     b4c:	e0 2d       	mov	r30, r0
     b4e:	2b 83       	std	Y+3, r18	; 0x03
     b50:	3c 83       	std	Y+4, r19	; 0x04
     b52:	4a 83       	std	Y+2, r20	; 0x02
     b54:	69 83       	std	Y+1, r22	; 0x01
     b56:	09 95       	icall
     b58:	d6 01       	movw	r26, r12
     b5a:	ed 91       	ld	r30, X+
     b5c:	fc 91       	ld	r31, X
     b5e:	04 80       	ldd	r0, Z+4	; 0x04
     b60:	f5 81       	ldd	r31, Z+5	; 0x05
     b62:	e0 2d       	mov	r30, r0
     b64:	69 81       	ldd	r22, Y+1	; 0x01
     b66:	c6 01       	movw	r24, r12
     b68:	09 95       	icall
     b6a:	d6 01       	movw	r26, r12
     b6c:	ed 91       	ld	r30, X+
     b6e:	fc 91       	ld	r31, X
     b70:	04 80       	ldd	r0, Z+4	; 0x04
     b72:	f5 81       	ldd	r31, Z+5	; 0x05
     b74:	e0 2d       	mov	r30, r0
     b76:	4a 81       	ldd	r20, Y+2	; 0x02
     b78:	64 2f       	mov	r22, r20
     b7a:	c6 01       	movw	r24, r12
     b7c:	09 95       	icall
     b7e:	2b 81       	ldd	r18, Y+3	; 0x03
     b80:	e2 2e       	mov	r14, r18
     b82:	3c 81       	ldd	r19, Y+4	; 0x04
     b84:	f3 2e       	mov	r15, r19
     b86:	0e 0d       	add	r16, r14
     b88:	1f 1d       	adc	r17, r15
     b8a:	d6 01       	movw	r26, r12
     b8c:	ed 91       	ld	r30, X+
     b8e:	fc 91       	ld	r31, X
     b90:	e0 16       	cp	r14, r16
     b92:	f1 06       	cpc	r15, r17
     b94:	49 f0       	breq	.+18     	; 0xba8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
     b96:	d7 01       	movw	r26, r14
     b98:	6d 91       	ld	r22, X+
     b9a:	7d 01       	movw	r14, r26
     b9c:	04 80       	ldd	r0, Z+4	; 0x04
     b9e:	f5 81       	ldd	r31, Z+5	; 0x05
     ba0:	e0 2d       	mov	r30, r0
     ba2:	c6 01       	movw	r24, r12
     ba4:	09 95       	icall
     ba6:	f1 cf       	rjmp	.-30     	; 0xb8a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
     ba8:	02 80       	ldd	r0, Z+2	; 0x02
     baa:	f3 81       	ldd	r31, Z+3	; 0x03
     bac:	e0 2d       	mov	r30, r0
     bae:	c6 01       	movw	r24, r12
     bb0:	0f 90       	pop	r0
     bb2:	0f 90       	pop	r0
     bb4:	0f 90       	pop	r0
     bb6:	0f 90       	pop	r0
     bb8:	df 91       	pop	r29
     bba:	cf 91       	pop	r28
     bbc:	1f 91       	pop	r17
     bbe:	0f 91       	pop	r16
     bc0:	ff 90       	pop	r15
     bc2:	ef 90       	pop	r14
     bc4:	df 90       	pop	r13
     bc6:	cf 90       	pop	r12
     bc8:	09 94       	ijmp

00000bca <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
     bca:	ef 92       	push	r14
     bcc:	ff 92       	push	r15
     bce:	1f 93       	push	r17
     bd0:	cf 93       	push	r28
     bd2:	df 93       	push	r29
     bd4:	1f 92       	push	r1
     bd6:	cd b7       	in	r28, 0x3d	; 61
     bd8:	de b7       	in	r29, 0x3e	; 62
     bda:	7c 01       	movw	r14, r24
     bdc:	16 2f       	mov	r17, r22
     bde:	dc 01       	movw	r26, r24
     be0:	ed 91       	ld	r30, X+
     be2:	fc 91       	ld	r31, X
     be4:	01 90       	ld	r0, Z+
     be6:	f0 81       	ld	r31, Z
     be8:	e0 2d       	mov	r30, r0
     bea:	49 83       	std	Y+1, r20	; 0x01
     bec:	09 95       	icall
     bee:	d7 01       	movw	r26, r14
     bf0:	ed 91       	ld	r30, X+
     bf2:	fc 91       	ld	r31, X
     bf4:	04 80       	ldd	r0, Z+4	; 0x04
     bf6:	f5 81       	ldd	r31, Z+5	; 0x05
     bf8:	e0 2d       	mov	r30, r0
     bfa:	61 2f       	mov	r22, r17
     bfc:	c7 01       	movw	r24, r14
     bfe:	09 95       	icall
     c00:	d7 01       	movw	r26, r14
     c02:	ed 91       	ld	r30, X+
     c04:	fc 91       	ld	r31, X
     c06:	04 80       	ldd	r0, Z+4	; 0x04
     c08:	f5 81       	ldd	r31, Z+5	; 0x05
     c0a:	e0 2d       	mov	r30, r0
     c0c:	49 81       	ldd	r20, Y+1	; 0x01
     c0e:	64 2f       	mov	r22, r20
     c10:	c7 01       	movw	r24, r14
     c12:	09 95       	icall
     c14:	d7 01       	movw	r26, r14
     c16:	ed 91       	ld	r30, X+
     c18:	fc 91       	ld	r31, X
     c1a:	01 90       	ld	r0, Z+
     c1c:	f0 81       	ld	r31, Z
     c1e:	e0 2d       	mov	r30, r0
     c20:	c7 01       	movw	r24, r14
     c22:	09 95       	icall
     c24:	d7 01       	movw	r26, r14
     c26:	ed 91       	ld	r30, X+
     c28:	fc 91       	ld	r31, X
     c2a:	61 2f       	mov	r22, r17
     c2c:	61 60       	ori	r22, 0x01	; 1
     c2e:	04 80       	ldd	r0, Z+4	; 0x04
     c30:	f5 81       	ldd	r31, Z+5	; 0x05
     c32:	e0 2d       	mov	r30, r0
     c34:	c7 01       	movw	r24, r14
     c36:	09 95       	icall
     c38:	d7 01       	movw	r26, r14
     c3a:	ed 91       	ld	r30, X+
     c3c:	fc 91       	ld	r31, X
     c3e:	06 80       	ldd	r0, Z+6	; 0x06
     c40:	f7 81       	ldd	r31, Z+7	; 0x07
     c42:	e0 2d       	mov	r30, r0
     c44:	60 e0       	ldi	r22, 0x00	; 0
     c46:	c7 01       	movw	r24, r14
     c48:	09 95       	icall
     c4a:	18 2f       	mov	r17, r24
     c4c:	d7 01       	movw	r26, r14
     c4e:	ed 91       	ld	r30, X+
     c50:	fc 91       	ld	r31, X
     c52:	02 80       	ldd	r0, Z+2	; 0x02
     c54:	f3 81       	ldd	r31, Z+3	; 0x03
     c56:	e0 2d       	mov	r30, r0
     c58:	c7 01       	movw	r24, r14
     c5a:	09 95       	icall
     c5c:	81 2f       	mov	r24, r17
     c5e:	0f 90       	pop	r0
     c60:	df 91       	pop	r29
     c62:	cf 91       	pop	r28
     c64:	1f 91       	pop	r17
     c66:	ff 90       	pop	r15
     c68:	ef 90       	pop	r14
     c6a:	08 95       	ret

00000c6c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
     c6c:	ef 92       	push	r14
     c6e:	ff 92       	push	r15
     c70:	0f 93       	push	r16
     c72:	1f 93       	push	r17
     c74:	cf 93       	push	r28
     c76:	df 93       	push	r29
     c78:	1f 92       	push	r1
     c7a:	cd b7       	in	r28, 0x3d	; 61
     c7c:	de b7       	in	r29, 0x3e	; 62
     c7e:	7c 01       	movw	r14, r24
     c80:	16 2f       	mov	r17, r22
     c82:	dc 01       	movw	r26, r24
     c84:	ed 91       	ld	r30, X+
     c86:	fc 91       	ld	r31, X
     c88:	01 90       	ld	r0, Z+
     c8a:	f0 81       	ld	r31, Z
     c8c:	e0 2d       	mov	r30, r0
     c8e:	49 83       	std	Y+1, r20	; 0x01
     c90:	09 95       	icall
     c92:	d7 01       	movw	r26, r14
     c94:	ed 91       	ld	r30, X+
     c96:	fc 91       	ld	r31, X
     c98:	04 80       	ldd	r0, Z+4	; 0x04
     c9a:	f5 81       	ldd	r31, Z+5	; 0x05
     c9c:	e0 2d       	mov	r30, r0
     c9e:	61 2f       	mov	r22, r17
     ca0:	c7 01       	movw	r24, r14
     ca2:	09 95       	icall
     ca4:	d7 01       	movw	r26, r14
     ca6:	ed 91       	ld	r30, X+
     ca8:	fc 91       	ld	r31, X
     caa:	04 80       	ldd	r0, Z+4	; 0x04
     cac:	f5 81       	ldd	r31, Z+5	; 0x05
     cae:	e0 2d       	mov	r30, r0
     cb0:	49 81       	ldd	r20, Y+1	; 0x01
     cb2:	64 2f       	mov	r22, r20
     cb4:	c7 01       	movw	r24, r14
     cb6:	09 95       	icall
     cb8:	d7 01       	movw	r26, r14
     cba:	ed 91       	ld	r30, X+
     cbc:	fc 91       	ld	r31, X
     cbe:	01 90       	ld	r0, Z+
     cc0:	f0 81       	ld	r31, Z
     cc2:	e0 2d       	mov	r30, r0
     cc4:	c7 01       	movw	r24, r14
     cc6:	09 95       	icall
     cc8:	d7 01       	movw	r26, r14
     cca:	ed 91       	ld	r30, X+
     ccc:	fc 91       	ld	r31, X
     cce:	61 2f       	mov	r22, r17
     cd0:	61 60       	ori	r22, 0x01	; 1
     cd2:	04 80       	ldd	r0, Z+4	; 0x04
     cd4:	f5 81       	ldd	r31, Z+5	; 0x05
     cd6:	e0 2d       	mov	r30, r0
     cd8:	c7 01       	movw	r24, r14
     cda:	09 95       	icall
     cdc:	d7 01       	movw	r26, r14
     cde:	ed 91       	ld	r30, X+
     ce0:	fc 91       	ld	r31, X
     ce2:	06 80       	ldd	r0, Z+6	; 0x06
     ce4:	f7 81       	ldd	r31, Z+7	; 0x07
     ce6:	e0 2d       	mov	r30, r0
     ce8:	61 e0       	ldi	r22, 0x01	; 1
     cea:	c7 01       	movw	r24, r14
     cec:	09 95       	icall
     cee:	08 2f       	mov	r16, r24
     cf0:	10 e0       	ldi	r17, 0x00	; 0
     cf2:	10 2f       	mov	r17, r16
     cf4:	00 27       	eor	r16, r16
     cf6:	d7 01       	movw	r26, r14
     cf8:	ed 91       	ld	r30, X+
     cfa:	fc 91       	ld	r31, X
     cfc:	06 80       	ldd	r0, Z+6	; 0x06
     cfe:	f7 81       	ldd	r31, Z+7	; 0x07
     d00:	e0 2d       	mov	r30, r0
     d02:	60 e0       	ldi	r22, 0x00	; 0
     d04:	c7 01       	movw	r24, r14
     d06:	09 95       	icall
     d08:	08 2b       	or	r16, r24
     d0a:	d7 01       	movw	r26, r14
     d0c:	ed 91       	ld	r30, X+
     d0e:	fc 91       	ld	r31, X
     d10:	02 80       	ldd	r0, Z+2	; 0x02
     d12:	f3 81       	ldd	r31, Z+3	; 0x03
     d14:	e0 2d       	mov	r30, r0
     d16:	c7 01       	movw	r24, r14
     d18:	09 95       	icall
     d1a:	c8 01       	movw	r24, r16
     d1c:	0f 90       	pop	r0
     d1e:	df 91       	pop	r29
     d20:	cf 91       	pop	r28
     d22:	1f 91       	pop	r17
     d24:	0f 91       	pop	r16
     d26:	ff 90       	pop	r15
     d28:	ef 90       	pop	r14
     d2a:	08 95       	ret

00000d2c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
     d2c:	cf 92       	push	r12
     d2e:	df 92       	push	r13
     d30:	ef 92       	push	r14
     d32:	ff 92       	push	r15
     d34:	0f 93       	push	r16
     d36:	1f 93       	push	r17
     d38:	cf 93       	push	r28
     d3a:	df 93       	push	r29
     d3c:	00 d0       	rcall	.+0      	; 0xd3e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
     d3e:	1f 92       	push	r1
     d40:	cd b7       	in	r28, 0x3d	; 61
     d42:	de b7       	in	r29, 0x3e	; 62
     d44:	6c 01       	movw	r12, r24
     d46:	f6 2e       	mov	r15, r22
     d48:	dc 01       	movw	r26, r24
     d4a:	ed 91       	ld	r30, X+
     d4c:	fc 91       	ld	r31, X
     d4e:	01 90       	ld	r0, Z+
     d50:	f0 81       	ld	r31, Z
     d52:	e0 2d       	mov	r30, r0
     d54:	2a 83       	std	Y+2, r18	; 0x02
     d56:	3b 83       	std	Y+3, r19	; 0x03
     d58:	49 83       	std	Y+1, r20	; 0x01
     d5a:	09 95       	icall
     d5c:	d6 01       	movw	r26, r12
     d5e:	ed 91       	ld	r30, X+
     d60:	fc 91       	ld	r31, X
     d62:	04 80       	ldd	r0, Z+4	; 0x04
     d64:	f5 81       	ldd	r31, Z+5	; 0x05
     d66:	e0 2d       	mov	r30, r0
     d68:	6f 2d       	mov	r22, r15
     d6a:	c6 01       	movw	r24, r12
     d6c:	09 95       	icall
     d6e:	d6 01       	movw	r26, r12
     d70:	ed 91       	ld	r30, X+
     d72:	fc 91       	ld	r31, X
     d74:	04 80       	ldd	r0, Z+4	; 0x04
     d76:	f5 81       	ldd	r31, Z+5	; 0x05
     d78:	e0 2d       	mov	r30, r0
     d7a:	49 81       	ldd	r20, Y+1	; 0x01
     d7c:	64 2f       	mov	r22, r20
     d7e:	c6 01       	movw	r24, r12
     d80:	09 95       	icall
     d82:	d6 01       	movw	r26, r12
     d84:	ed 91       	ld	r30, X+
     d86:	fc 91       	ld	r31, X
     d88:	01 90       	ld	r0, Z+
     d8a:	f0 81       	ld	r31, Z
     d8c:	e0 2d       	mov	r30, r0
     d8e:	c6 01       	movw	r24, r12
     d90:	09 95       	icall
     d92:	d6 01       	movw	r26, r12
     d94:	ed 91       	ld	r30, X+
     d96:	fc 91       	ld	r31, X
     d98:	6f 2d       	mov	r22, r15
     d9a:	61 60       	ori	r22, 0x01	; 1
     d9c:	04 80       	ldd	r0, Z+4	; 0x04
     d9e:	f5 81       	ldd	r31, Z+5	; 0x05
     da0:	e0 2d       	mov	r30, r0
     da2:	c6 01       	movw	r24, r12
     da4:	09 95       	icall
     da6:	2a 81       	ldd	r18, Y+2	; 0x02
     da8:	e2 2e       	mov	r14, r18
     daa:	3b 81       	ldd	r19, Y+3	; 0x03
     dac:	f3 2e       	mov	r15, r19
     dae:	0e 0d       	add	r16, r14
     db0:	1f 1d       	adc	r17, r15
     db2:	d6 01       	movw	r26, r12
     db4:	ed 91       	ld	r30, X+
     db6:	fc 91       	ld	r31, X
     db8:	e0 16       	cp	r14, r16
     dba:	f1 06       	cpc	r15, r17
     dbc:	51 f0       	breq	.+20     	; 0xdd2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0xa6>
     dbe:	06 80       	ldd	r0, Z+6	; 0x06
     dc0:	f7 81       	ldd	r31, Z+7	; 0x07
     dc2:	e0 2d       	mov	r30, r0
     dc4:	61 e0       	ldi	r22, 0x01	; 1
     dc6:	c6 01       	movw	r24, r12
     dc8:	09 95       	icall
     dca:	f7 01       	movw	r30, r14
     dcc:	81 93       	st	Z+, r24
     dce:	7f 01       	movw	r14, r30
     dd0:	f0 cf       	rjmp	.-32     	; 0xdb2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x86>
     dd2:	02 80       	ldd	r0, Z+2	; 0x02
     dd4:	f3 81       	ldd	r31, Z+3	; 0x03
     dd6:	e0 2d       	mov	r30, r0
     dd8:	c6 01       	movw	r24, r12
     dda:	0f 90       	pop	r0
     ddc:	0f 90       	pop	r0
     dde:	0f 90       	pop	r0
     de0:	df 91       	pop	r29
     de2:	cf 91       	pop	r28
     de4:	1f 91       	pop	r17
     de6:	0f 91       	pop	r16
     de8:	ff 90       	pop	r15
     dea:	ef 90       	pop	r14
     dec:	df 90       	pop	r13
     dee:	cf 90       	pop	r12
     df0:	09 94       	ijmp

00000df2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     df2:	88 23       	and	r24, r24
     df4:	21 f0       	breq	.+8      	; 0xdfe <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     df6:	bf 98       	cbi	0x17, 7	; 23
     df8:	82 30       	cpi	r24, 0x02	; 2
     dfa:	19 f0       	breq	.+6      	; 0xe02 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     dfc:	08 95       	ret
     dfe:	bf 9a       	sbi	0x17, 7	; 23
     e00:	08 95       	ret
     e02:	c7 9a       	sbi	0x18, 7	; 24
     e04:	08 95       	ret

00000e06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
     e06:	8a e0       	ldi	r24, 0x0A	; 10
     e08:	00 00       	nop
     e0a:	81 50       	subi	r24, 0x01	; 1
     e0c:	e9 f7       	brne	.-6      	; 0xe08 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
     e0e:	08 95       	ret

00000e10 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
     e10:	1f 93       	push	r17
     e12:	cf 93       	push	r28
     e14:	df 93       	push	r29
     e16:	16 2f       	mov	r17, r22
     e18:	bd 98       	cbi	0x17, 5	; 23
     e1a:	80 e0       	ldi	r24, 0x00	; 0
     e1c:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     e20:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     e24:	d8 e0       	ldi	r29, 0x08	; 8
     e26:	c0 e0       	ldi	r28, 0x00	; 0
     e28:	cc 0f       	add	r28, r28
     e2a:	81 e0       	ldi	r24, 0x01	; 1
     e2c:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     e30:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     e34:	b5 99       	sbic	0x16, 5	; 22
     e36:	c1 60       	ori	r28, 0x01	; 1
     e38:	80 e0       	ldi	r24, 0x00	; 0
     e3a:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     e3e:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     e42:	d1 50       	subi	r29, 0x01	; 1
     e44:	89 f7       	brne	.-30     	; 0xe28 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
     e46:	11 23       	and	r17, r17
     e48:	11 f0       	breq	.+4      	; 0xe4e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
     e4a:	bd 9a       	sbi	0x17, 5	; 23
     e4c:	01 c0       	rjmp	.+2      	; 0xe50 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
     e4e:	bd 98       	cbi	0x17, 5	; 23
     e50:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     e54:	81 e0       	ldi	r24, 0x01	; 1
     e56:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     e5a:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     e5e:	80 e0       	ldi	r24, 0x00	; 0
     e60:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     e64:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     e68:	bd 98       	cbi	0x17, 5	; 23
     e6a:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     e6e:	8c 2f       	mov	r24, r28
     e70:	df 91       	pop	r29
     e72:	cf 91       	pop	r28
     e74:	1f 91       	pop	r17
     e76:	08 95       	ret

00000e78 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
     e78:	cf 93       	push	r28
     e7a:	df 93       	push	r29
     e7c:	d6 2f       	mov	r29, r22
     e7e:	c8 e0       	ldi	r28, 0x08	; 8
     e80:	80 e0       	ldi	r24, 0x00	; 0
     e82:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     e86:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     e8a:	d7 ff       	sbrs	r29, 7
     e8c:	02 c0       	rjmp	.+4      	; 0xe92 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
     e8e:	bd 98       	cbi	0x17, 5	; 23
     e90:	01 c0       	rjmp	.+2      	; 0xe94 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
     e92:	bd 9a       	sbi	0x17, 5	; 23
     e94:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     e98:	81 e0       	ldi	r24, 0x01	; 1
     e9a:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     e9e:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     ea2:	dd 0f       	add	r29, r29
     ea4:	c1 50       	subi	r28, 0x01	; 1
     ea6:	61 f7       	brne	.-40     	; 0xe80 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
     ea8:	80 e0       	ldi	r24, 0x00	; 0
     eaa:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     eae:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     eb2:	bd 98       	cbi	0x17, 5	; 23
     eb4:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     eb8:	81 e0       	ldi	r24, 0x01	; 1
     eba:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ebe:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     ec2:	c6 b3       	in	r28, 0x16	; 22
     ec4:	80 e0       	ldi	r24, 0x00	; 0
     ec6:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     eca:	0e 94 03 07 	call	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     ece:	c5 fb       	bst	r28, 5
     ed0:	cc 27       	eor	r28, r28
     ed2:	c0 f9       	bld	r28, 0
     ed4:	81 e0       	ldi	r24, 0x01	; 1
     ed6:	8c 27       	eor	r24, r28
     ed8:	df 91       	pop	r29
     eda:	cf 91       	pop	r28
     edc:	08 95       	ret

00000ede <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
     ede:	81 e0       	ldi	r24, 0x01	; 1
     ee0:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ee4:	bd 98       	cbi	0x17, 5	; 23
     ee6:	81 e0       	ldi	r24, 0x01	; 1
     ee8:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     eec:	bd 9a       	sbi	0x17, 5	; 23
     eee:	80 e0       	ldi	r24, 0x00	; 0
     ef0:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ef4:	bd 98       	cbi	0x17, 5	; 23
     ef6:	0c 94 03 07 	jmp	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

00000efa <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
     efa:	80 e0       	ldi	r24, 0x00	; 0
     efc:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     f00:	bd 9a       	sbi	0x17, 5	; 23
     f02:	81 e0       	ldi	r24, 0x01	; 1
     f04:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     f08:	bd 9a       	sbi	0x17, 5	; 23
     f0a:	81 e0       	ldi	r24, 0x01	; 1
     f0c:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     f10:	bd 98       	cbi	0x17, 5	; 23
     f12:	0c 94 03 07 	jmp	0xe06	; 0xe06 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

00000f16 <_GLOBAL__sub_I_i2c>:
     f16:	80 e9       	ldi	r24, 0x90	; 144
     f18:	90 e0       	ldi	r25, 0x00	; 0
     f1a:	90 93 0a 01 	sts	0x010A, r25
     f1e:	80 93 09 01 	sts	0x0109, r24
     f22:	bd 98       	cbi	0x17, 5	; 23
     f24:	81 e0       	ldi	r24, 0x01	; 1
     f26:	0e 94 f9 06 	call	0xdf2	; 0xdf2 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     f2a:	c5 98       	cbi	0x18, 5	; 24
     f2c:	c7 98       	cbi	0x18, 7	; 24
     f2e:	08 95       	ret

00000f30 <_ZN6CUSARTC1Ev>:
     f30:	10 bc       	out	0x20, r1	; 32
     f32:	80 e4       	ldi	r24, 0x40	; 64
     f34:	89 b9       	out	0x09, r24	; 9
     f36:	80 b5       	in	r24, 0x20	; 32
     f38:	86 68       	ori	r24, 0x86	; 134
     f3a:	80 bd       	out	0x20, r24	; 32
     f3c:	8a b1       	in	r24, 0x0a	; 10
     f3e:	88 61       	ori	r24, 0x18	; 24
     f40:	8a b9       	out	0x0a, r24	; 10
     f42:	08 95       	ret

00000f44 <_ZN6CUSARTD1Ev>:
     f44:	08 95       	ret

00000f46 <_ZN6CUSART7putcharEc>:
     f46:	6c b9       	out	0x0c, r22	; 12
     f48:	5d 99       	sbic	0x0b, 5	; 11
     f4a:	02 c0       	rjmp	.+4      	; 0xf50 <_ZN6CUSART7putcharEc+0xa>
     f4c:	00 00       	nop
     f4e:	fc cf       	rjmp	.-8      	; 0xf48 <_ZN6CUSART7putcharEc+0x2>
     f50:	08 95       	ret

00000f52 <_ZN8CRTTimerC1Ev>:
     f52:	ee e0       	ldi	r30, 0x0E	; 14
     f54:	f1 e0       	ldi	r31, 0x01	; 1
     f56:	11 82       	std	Z+1, r1	; 0x01
     f58:	10 82       	st	Z, r1
     f5a:	13 82       	std	Z+3, r1	; 0x03
     f5c:	12 82       	std	Z+2, r1	; 0x02
     f5e:	15 82       	std	Z+5, r1	; 0x05
     f60:	14 82       	std	Z+4, r1	; 0x04
     f62:	16 82       	std	Z+6, r1	; 0x06
     f64:	37 96       	adiw	r30, 0x07	; 7
     f66:	81 e0       	ldi	r24, 0x01	; 1
     f68:	e6 34       	cpi	r30, 0x46	; 70
     f6a:	f8 07       	cpc	r31, r24
     f6c:	a1 f7       	brne	.-24     	; 0xf56 <_ZN8CRTTimerC1Ev+0x4>
     f6e:	83 b7       	in	r24, 0x33	; 51
     f70:	88 60       	ori	r24, 0x08	; 8
     f72:	83 bf       	out	0x33, r24	; 51
     f74:	8b e9       	ldi	r24, 0x9B	; 155
     f76:	8c bf       	out	0x3c, r24	; 60
     f78:	83 e0       	ldi	r24, 0x03	; 3
     f7a:	83 bf       	out	0x33, r24	; 51
     f7c:	89 b7       	in	r24, 0x39	; 57
     f7e:	82 60       	ori	r24, 0x02	; 2
     f80:	89 bf       	out	0x39, r24	; 57
     f82:	78 94       	sei
     f84:	08 95       	ret

00000f86 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>:
     f86:	f8 94       	cli
     f88:	ee e0       	ldi	r30, 0x0E	; 14
     f8a:	f1 e0       	ldi	r31, 0x01	; 1
     f8c:	80 e0       	ldi	r24, 0x00	; 0
     f8e:	90 e0       	ldi	r25, 0x00	; 0
     f90:	20 81       	ld	r18, Z
     f92:	31 81       	ldd	r19, Z+1	; 0x01
     f94:	23 2b       	or	r18, r19
     f96:	81 f4       	brne	.+32     	; 0xfb8 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x32>
     f98:	27 e0       	ldi	r18, 0x07	; 7
     f9a:	28 9f       	mul	r18, r24
     f9c:	f0 01       	movw	r30, r0
     f9e:	29 9f       	mul	r18, r25
     fa0:	f0 0d       	add	r31, r0
     fa2:	11 24       	eor	r1, r1
     fa4:	e2 5f       	subi	r30, 0xF2	; 242
     fa6:	fe 4f       	sbci	r31, 0xFE	; 254
     fa8:	71 83       	std	Z+1, r23	; 0x01
     faa:	60 83       	st	Z, r22
     fac:	53 83       	std	Z+3, r21	; 0x03
     fae:	42 83       	std	Z+2, r20	; 0x02
     fb0:	55 83       	std	Z+5, r21	; 0x05
     fb2:	44 83       	std	Z+4, r20	; 0x04
     fb4:	16 82       	std	Z+6, r1	; 0x06
     fb6:	07 c0       	rjmp	.+14     	; 0xfc6 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x40>
     fb8:	01 96       	adiw	r24, 0x01	; 1
     fba:	37 96       	adiw	r30, 0x07	; 7
     fbc:	88 30       	cpi	r24, 0x08	; 8
     fbe:	91 05       	cpc	r25, r1
     fc0:	39 f7       	brne	.-50     	; 0xf90 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0xa>
     fc2:	8f ef       	ldi	r24, 0xFF	; 255
     fc4:	9f ef       	ldi	r25, 0xFF	; 255
     fc6:	78 94       	sei
     fc8:	08 95       	ret

00000fca <_ZN8CRTTimer4mainEv>:
     fca:	cf 93       	push	r28
     fcc:	df 93       	push	r29
     fce:	c4 e1       	ldi	r28, 0x14	; 20
     fd0:	d1 e0       	ldi	r29, 0x01	; 1
     fd2:	fe 01       	movw	r30, r28
     fd4:	36 97       	sbiw	r30, 0x06	; 6
     fd6:	80 81       	ld	r24, Z
     fd8:	91 81       	ldd	r25, Z+1	; 0x01
     fda:	00 97       	sbiw	r24, 0x00	; 0
     fdc:	59 f0       	breq	.+22     	; 0xff4 <_ZN8CRTTimer4mainEv+0x2a>
     fde:	28 81       	ld	r18, Y
     fe0:	22 23       	and	r18, r18
     fe2:	41 f0       	breq	.+16     	; 0xff4 <_ZN8CRTTimer4mainEv+0x2a>
     fe4:	18 82       	st	Y, r1
     fe6:	dc 01       	movw	r26, r24
     fe8:	ed 91       	ld	r30, X+
     fea:	fc 91       	ld	r31, X
     fec:	04 80       	ldd	r0, Z+4	; 0x04
     fee:	f5 81       	ldd	r31, Z+5	; 0x05
     ff0:	e0 2d       	mov	r30, r0
     ff2:	09 95       	icall
     ff4:	27 96       	adiw	r28, 0x07	; 7
     ff6:	b1 e0       	ldi	r27, 0x01	; 1
     ff8:	cc 34       	cpi	r28, 0x4C	; 76
     ffa:	db 07       	cpc	r29, r27
     ffc:	51 f7       	brne	.-44     	; 0xfd2 <_ZN8CRTTimer4mainEv+0x8>
     ffe:	df 91       	pop	r29
    1000:	cf 91       	pop	r28
    1002:	08 95       	ret

00001004 <_GLOBAL__sub_I_g_rt_time>:
    1004:	8d e0       	ldi	r24, 0x0D	; 13
    1006:	91 e0       	ldi	r25, 0x01	; 1
    1008:	0c 94 a9 07 	jmp	0xf52	; 0xf52 <_ZN8CRTTimerC1Ev>

0000100c <_ZN9CTerminal4putsEPc>:
    100c:	0f 93       	push	r16
    100e:	1f 93       	push	r17
    1010:	cf 93       	push	r28
    1012:	df 93       	push	r29
    1014:	8c 01       	movw	r16, r24
    1016:	eb 01       	movw	r28, r22
    1018:	69 91       	ld	r22, Y+
    101a:	66 23       	and	r22, r22
    101c:	21 f0       	breq	.+8      	; 0x1026 <_ZN9CTerminal4putsEPc+0x1a>
    101e:	c8 01       	movw	r24, r16
    1020:	0e 94 a3 07 	call	0xf46	; 0xf46 <_ZN6CUSART7putcharEc>
    1024:	f9 cf       	rjmp	.-14     	; 0x1018 <_ZN9CTerminal4putsEPc+0xc>
    1026:	df 91       	pop	r29
    1028:	cf 91       	pop	r28
    102a:	1f 91       	pop	r17
    102c:	0f 91       	pop	r16
    102e:	08 95       	ret

00001030 <_ZN9CTerminal4putiEl>:
    1030:	8f 92       	push	r8
    1032:	9f 92       	push	r9
    1034:	af 92       	push	r10
    1036:	bf 92       	push	r11
    1038:	cf 92       	push	r12
    103a:	df 92       	push	r13
    103c:	ef 92       	push	r14
    103e:	ff 92       	push	r15
    1040:	0f 93       	push	r16
    1042:	1f 93       	push	r17
    1044:	cf 93       	push	r28
    1046:	df 93       	push	r29
    1048:	cd b7       	in	r28, 0x3d	; 61
    104a:	de b7       	in	r29, 0x3e	; 62
    104c:	2c 97       	sbiw	r28, 0x0c	; 12
    104e:	0f b6       	in	r0, 0x3f	; 63
    1050:	f8 94       	cli
    1052:	de bf       	out	0x3e, r29	; 62
    1054:	0f be       	out	0x3f, r0	; 63
    1056:	cd bf       	out	0x3d, r28	; 61
    1058:	7c 01       	movw	r14, r24
    105a:	77 ff       	sbrs	r23, 7
    105c:	09 c0       	rjmp	.+18     	; 0x1070 <_ZN9CTerminal4putiEl+0x40>
    105e:	70 95       	com	r23
    1060:	60 95       	com	r22
    1062:	50 95       	com	r21
    1064:	41 95       	neg	r20
    1066:	5f 4f       	sbci	r21, 0xFF	; 255
    1068:	6f 4f       	sbci	r22, 0xFF	; 255
    106a:	7f 4f       	sbci	r23, 0xFF	; 255
    106c:	01 e0       	ldi	r16, 0x01	; 1
    106e:	01 c0       	rjmp	.+2      	; 0x1072 <_ZN9CTerminal4putiEl+0x42>
    1070:	00 e0       	ldi	r16, 0x00	; 0
    1072:	1c 86       	std	Y+12, r1	; 0x0c
    1074:	1a e0       	ldi	r17, 0x0A	; 10
    1076:	9a e0       	ldi	r25, 0x0A	; 10
    1078:	89 2e       	mov	r8, r25
    107a:	91 2c       	mov	r9, r1
    107c:	a1 2c       	mov	r10, r1
    107e:	b1 2c       	mov	r11, r1
    1080:	cc 24       	eor	r12, r12
    1082:	c3 94       	inc	r12
    1084:	d1 2c       	mov	r13, r1
    1086:	cc 0e       	add	r12, r28
    1088:	dd 1e       	adc	r13, r29
    108a:	c1 0e       	add	r12, r17
    108c:	d1 1c       	adc	r13, r1
    108e:	cb 01       	movw	r24, r22
    1090:	ba 01       	movw	r22, r20
    1092:	a5 01       	movw	r20, r10
    1094:	94 01       	movw	r18, r8
    1096:	0e 94 06 0a 	call	0x140c	; 0x140c <__divmodsi4>
    109a:	94 2f       	mov	r25, r20
    109c:	85 2f       	mov	r24, r21
    109e:	60 5d       	subi	r22, 0xD0	; 208
    10a0:	f6 01       	movw	r30, r12
    10a2:	60 83       	st	Z, r22
    10a4:	a9 01       	movw	r20, r18
    10a6:	69 2f       	mov	r22, r25
    10a8:	78 2f       	mov	r23, r24
    10aa:	8f ef       	ldi	r24, 0xFF	; 255
    10ac:	81 0f       	add	r24, r17
    10ae:	41 15       	cp	r20, r1
    10b0:	51 05       	cpc	r21, r1
    10b2:	61 05       	cpc	r22, r1
    10b4:	71 05       	cpc	r23, r1
    10b6:	11 f0       	breq	.+4      	; 0x10bc <_ZN9CTerminal4putiEl+0x8c>
    10b8:	18 2f       	mov	r17, r24
    10ba:	e2 cf       	rjmp	.-60     	; 0x1080 <_ZN9CTerminal4putiEl+0x50>
    10bc:	00 23       	and	r16, r16
    10be:	49 f0       	breq	.+18     	; 0x10d2 <_ZN9CTerminal4putiEl+0xa2>
    10c0:	e1 e0       	ldi	r30, 0x01	; 1
    10c2:	f0 e0       	ldi	r31, 0x00	; 0
    10c4:	ec 0f       	add	r30, r28
    10c6:	fd 1f       	adc	r31, r29
    10c8:	e8 0f       	add	r30, r24
    10ca:	f1 1d       	adc	r31, r1
    10cc:	9d e2       	ldi	r25, 0x2D	; 45
    10ce:	90 83       	st	Z, r25
    10d0:	18 2f       	mov	r17, r24
    10d2:	61 e0       	ldi	r22, 0x01	; 1
    10d4:	70 e0       	ldi	r23, 0x00	; 0
    10d6:	6c 0f       	add	r22, r28
    10d8:	7d 1f       	adc	r23, r29
    10da:	61 0f       	add	r22, r17
    10dc:	71 1d       	adc	r23, r1
    10de:	c7 01       	movw	r24, r14
    10e0:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN9CTerminal4putsEPc>
    10e4:	2c 96       	adiw	r28, 0x0c	; 12
    10e6:	0f b6       	in	r0, 0x3f	; 63
    10e8:	f8 94       	cli
    10ea:	de bf       	out	0x3e, r29	; 62
    10ec:	0f be       	out	0x3f, r0	; 63
    10ee:	cd bf       	out	0x3d, r28	; 61
    10f0:	df 91       	pop	r29
    10f2:	cf 91       	pop	r28
    10f4:	1f 91       	pop	r17
    10f6:	0f 91       	pop	r16
    10f8:	ff 90       	pop	r15
    10fa:	ef 90       	pop	r14
    10fc:	df 90       	pop	r13
    10fe:	cf 90       	pop	r12
    1100:	bf 90       	pop	r11
    1102:	af 90       	pop	r10
    1104:	9f 90       	pop	r9
    1106:	8f 90       	pop	r8
    1108:	08 95       	ret

0000110a <_ZN9CTerminal5putuiEm>:
    110a:	8f 92       	push	r8
    110c:	9f 92       	push	r9
    110e:	af 92       	push	r10
    1110:	bf 92       	push	r11
    1112:	cf 92       	push	r12
    1114:	df 92       	push	r13
    1116:	ef 92       	push	r14
    1118:	ff 92       	push	r15
    111a:	1f 93       	push	r17
    111c:	cf 93       	push	r28
    111e:	df 93       	push	r29
    1120:	cd b7       	in	r28, 0x3d	; 61
    1122:	de b7       	in	r29, 0x3e	; 62
    1124:	2c 97       	sbiw	r28, 0x0c	; 12
    1126:	0f b6       	in	r0, 0x3f	; 63
    1128:	f8 94       	cli
    112a:	de bf       	out	0x3e, r29	; 62
    112c:	0f be       	out	0x3f, r0	; 63
    112e:	cd bf       	out	0x3d, r28	; 61
    1130:	6c 01       	movw	r12, r24
    1132:	1c 86       	std	Y+12, r1	; 0x0c
    1134:	1a e0       	ldi	r17, 0x0A	; 10
    1136:	9a e0       	ldi	r25, 0x0A	; 10
    1138:	89 2e       	mov	r8, r25
    113a:	91 2c       	mov	r9, r1
    113c:	a1 2c       	mov	r10, r1
    113e:	b1 2c       	mov	r11, r1
    1140:	ee 24       	eor	r14, r14
    1142:	e3 94       	inc	r14
    1144:	f1 2c       	mov	r15, r1
    1146:	ec 0e       	add	r14, r28
    1148:	fd 1e       	adc	r15, r29
    114a:	e1 0e       	add	r14, r17
    114c:	f1 1c       	adc	r15, r1
    114e:	cb 01       	movw	r24, r22
    1150:	ba 01       	movw	r22, r20
    1152:	a5 01       	movw	r20, r10
    1154:	94 01       	movw	r18, r8
    1156:	0e 94 e4 09 	call	0x13c8	; 0x13c8 <__udivmodsi4>
    115a:	94 2f       	mov	r25, r20
    115c:	85 2f       	mov	r24, r21
    115e:	60 5d       	subi	r22, 0xD0	; 208
    1160:	f7 01       	movw	r30, r14
    1162:	60 83       	st	Z, r22
    1164:	a9 01       	movw	r20, r18
    1166:	69 2f       	mov	r22, r25
    1168:	78 2f       	mov	r23, r24
    116a:	11 50       	subi	r17, 0x01	; 1
    116c:	41 15       	cp	r20, r1
    116e:	51 05       	cpc	r21, r1
    1170:	61 05       	cpc	r22, r1
    1172:	71 05       	cpc	r23, r1
    1174:	29 f7       	brne	.-54     	; 0x1140 <_ZN9CTerminal5putuiEm+0x36>
    1176:	b7 01       	movw	r22, r14
    1178:	c6 01       	movw	r24, r12
    117a:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN9CTerminal4putsEPc>
    117e:	2c 96       	adiw	r28, 0x0c	; 12
    1180:	0f b6       	in	r0, 0x3f	; 63
    1182:	f8 94       	cli
    1184:	de bf       	out	0x3e, r29	; 62
    1186:	0f be       	out	0x3f, r0	; 63
    1188:	cd bf       	out	0x3d, r28	; 61
    118a:	df 91       	pop	r29
    118c:	cf 91       	pop	r28
    118e:	1f 91       	pop	r17
    1190:	ff 90       	pop	r15
    1192:	ef 90       	pop	r14
    1194:	df 90       	pop	r13
    1196:	cf 90       	pop	r12
    1198:	bf 90       	pop	r11
    119a:	af 90       	pop	r10
    119c:	9f 90       	pop	r9
    119e:	8f 90       	pop	r8
    11a0:	08 95       	ret

000011a2 <_ZN9CTerminal4putxEm>:
    11a2:	ef 92       	push	r14
    11a4:	ff 92       	push	r15
    11a6:	cf 93       	push	r28
    11a8:	df 93       	push	r29
    11aa:	cd b7       	in	r28, 0x3d	; 61
    11ac:	de b7       	in	r29, 0x3e	; 62
    11ae:	2c 97       	sbiw	r28, 0x0c	; 12
    11b0:	0f b6       	in	r0, 0x3f	; 63
    11b2:	f8 94       	cli
    11b4:	de bf       	out	0x3e, r29	; 62
    11b6:	0f be       	out	0x3f, r0	; 63
    11b8:	cd bf       	out	0x3d, r28	; 61
    11ba:	fc 01       	movw	r30, r24
    11bc:	1c 86       	std	Y+12, r1	; 0x0c
    11be:	2a e0       	ldi	r18, 0x0A	; 10
    11c0:	94 2f       	mov	r25, r20
    11c2:	9f 70       	andi	r25, 0x0F	; 15
    11c4:	e2 2e       	mov	r14, r18
    11c6:	f1 2c       	mov	r15, r1
    11c8:	a1 e0       	ldi	r26, 0x01	; 1
    11ca:	b0 e0       	ldi	r27, 0x00	; 0
    11cc:	ac 0f       	add	r26, r28
    11ce:	bd 1f       	adc	r27, r29
    11d0:	ae 0d       	add	r26, r14
    11d2:	bf 1d       	adc	r27, r15
    11d4:	9a 30       	cpi	r25, 0x0A	; 10
    11d6:	14 f4       	brge	.+4      	; 0x11dc <_ZN9CTerminal4putxEm+0x3a>
    11d8:	90 5d       	subi	r25, 0xD0	; 208
    11da:	01 c0       	rjmp	.+2      	; 0x11de <_ZN9CTerminal4putxEm+0x3c>
    11dc:	99 5a       	subi	r25, 0xA9	; 169
    11de:	9c 93       	st	X, r25
    11e0:	84 e0       	ldi	r24, 0x04	; 4
    11e2:	76 95       	lsr	r23
    11e4:	67 95       	ror	r22
    11e6:	57 95       	ror	r21
    11e8:	47 95       	ror	r20
    11ea:	8a 95       	dec	r24
    11ec:	d1 f7       	brne	.-12     	; 0x11e2 <_ZN9CTerminal4putxEm+0x40>
    11ee:	21 50       	subi	r18, 0x01	; 1
    11f0:	41 15       	cp	r20, r1
    11f2:	51 05       	cpc	r21, r1
    11f4:	61 05       	cpc	r22, r1
    11f6:	71 05       	cpc	r23, r1
    11f8:	19 f7       	brne	.-58     	; 0x11c0 <_ZN9CTerminal4putxEm+0x1e>
    11fa:	61 e0       	ldi	r22, 0x01	; 1
    11fc:	70 e0       	ldi	r23, 0x00	; 0
    11fe:	6c 0f       	add	r22, r28
    1200:	7d 1f       	adc	r23, r29
    1202:	6e 0d       	add	r22, r14
    1204:	7f 1d       	adc	r23, r15
    1206:	cf 01       	movw	r24, r30
    1208:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN9CTerminal4putsEPc>
    120c:	2c 96       	adiw	r28, 0x0c	; 12
    120e:	0f b6       	in	r0, 0x3f	; 63
    1210:	f8 94       	cli
    1212:	de bf       	out	0x3e, r29	; 62
    1214:	0f be       	out	0x3f, r0	; 63
    1216:	cd bf       	out	0x3d, r28	; 61
    1218:	df 91       	pop	r29
    121a:	cf 91       	pop	r28
    121c:	ff 90       	pop	r15
    121e:	ef 90       	pop	r14
    1220:	08 95       	ret

00001222 <_ZN9CTerminal6printfEPKcz>:
    1222:	af 92       	push	r10
    1224:	bf 92       	push	r11
    1226:	cf 92       	push	r12
    1228:	df 92       	push	r13
    122a:	ef 92       	push	r14
    122c:	ff 92       	push	r15
    122e:	0f 93       	push	r16
    1230:	1f 93       	push	r17
    1232:	cf 93       	push	r28
    1234:	df 93       	push	r29
    1236:	cd b7       	in	r28, 0x3d	; 61
    1238:	de b7       	in	r29, 0x3e	; 62
    123a:	ed 84       	ldd	r14, Y+13	; 0x0d
    123c:	fe 84       	ldd	r15, Y+14	; 0x0e
    123e:	8e 01       	movw	r16, r28
    1240:	0f 5e       	subi	r16, 0xEF	; 239
    1242:	1f 4f       	sbci	r17, 0xFF	; 255
    1244:	c1 2c       	mov	r12, r1
    1246:	d1 2c       	mov	r13, r1
    1248:	ef 85       	ldd	r30, Y+15	; 0x0f
    124a:	f8 89       	ldd	r31, Y+16	; 0x10
    124c:	ec 0d       	add	r30, r12
    124e:	fd 1d       	adc	r31, r13
    1250:	60 81       	ld	r22, Z
    1252:	66 23       	and	r22, r22
    1254:	09 f4       	brne	.+2      	; 0x1258 <_ZN9CTerminal6printfEPKcz+0x36>
    1256:	5e c0       	rjmp	.+188    	; 0x1314 <_ZN9CTerminal6printfEPKcz+0xf2>
    1258:	65 32       	cpi	r22, 0x25	; 37
    125a:	39 f0       	breq	.+14     	; 0x126a <_ZN9CTerminal6printfEPKcz+0x48>
    125c:	c7 01       	movw	r24, r14
    125e:	0e 94 a3 07 	call	0xf46	; 0xf46 <_ZN6CUSART7putcharEc>
    1262:	8f ef       	ldi	r24, 0xFF	; 255
    1264:	c8 1a       	sub	r12, r24
    1266:	d8 0a       	sbc	r13, r24
    1268:	ef cf       	rjmp	.-34     	; 0x1248 <_ZN9CTerminal6printfEPKcz+0x26>
    126a:	81 81       	ldd	r24, Z+1	; 0x01
    126c:	89 36       	cpi	r24, 0x69	; 105
    126e:	11 f1       	breq	.+68     	; 0x12b4 <_ZN9CTerminal6printfEPKcz+0x92>
    1270:	84 f4       	brge	.+32     	; 0x1292 <_ZN9CTerminal6printfEPKcz+0x70>
    1272:	85 32       	cpi	r24, 0x25	; 37
    1274:	09 f4       	brne	.+2      	; 0x1278 <_ZN9CTerminal6printfEPKcz+0x56>
    1276:	46 c0       	rjmp	.+140    	; 0x1304 <_ZN9CTerminal6printfEPKcz+0xe2>
    1278:	83 36       	cpi	r24, 0x63	; 99
    127a:	09 f0       	breq	.+2      	; 0x127e <_ZN9CTerminal6printfEPKcz+0x5c>
    127c:	47 c0       	rjmp	.+142    	; 0x130c <_ZN9CTerminal6printfEPKcz+0xea>
    127e:	58 01       	movw	r10, r16
    1280:	f2 e0       	ldi	r31, 0x02	; 2
    1282:	af 0e       	add	r10, r31
    1284:	b1 1c       	adc	r11, r1
    1286:	f8 01       	movw	r30, r16
    1288:	60 81       	ld	r22, Z
    128a:	c7 01       	movw	r24, r14
    128c:	0e 94 a3 07 	call	0xf46	; 0xf46 <_ZN6CUSART7putcharEc>
    1290:	2a c0       	rjmp	.+84     	; 0x12e6 <_ZN9CTerminal6printfEPKcz+0xc4>
    1292:	85 37       	cpi	r24, 0x75	; 117
    1294:	e1 f0       	breq	.+56     	; 0x12ce <_ZN9CTerminal6printfEPKcz+0xac>
    1296:	88 37       	cpi	r24, 0x78	; 120
    1298:	41 f1       	breq	.+80     	; 0x12ea <_ZN9CTerminal6printfEPKcz+0xc8>
    129a:	83 37       	cpi	r24, 0x73	; 115
    129c:	b9 f5       	brne	.+110    	; 0x130c <_ZN9CTerminal6printfEPKcz+0xea>
    129e:	58 01       	movw	r10, r16
    12a0:	f2 e0       	ldi	r31, 0x02	; 2
    12a2:	af 0e       	add	r10, r31
    12a4:	b1 1c       	adc	r11, r1
    12a6:	f8 01       	movw	r30, r16
    12a8:	60 81       	ld	r22, Z
    12aa:	71 81       	ldd	r23, Z+1	; 0x01
    12ac:	c7 01       	movw	r24, r14
    12ae:	0e 94 06 08 	call	0x100c	; 0x100c <_ZN9CTerminal4putsEPc>
    12b2:	19 c0       	rjmp	.+50     	; 0x12e6 <_ZN9CTerminal6printfEPKcz+0xc4>
    12b4:	58 01       	movw	r10, r16
    12b6:	94 e0       	ldi	r25, 0x04	; 4
    12b8:	a9 0e       	add	r10, r25
    12ba:	b1 1c       	adc	r11, r1
    12bc:	f8 01       	movw	r30, r16
    12be:	40 81       	ld	r20, Z
    12c0:	51 81       	ldd	r21, Z+1	; 0x01
    12c2:	62 81       	ldd	r22, Z+2	; 0x02
    12c4:	73 81       	ldd	r23, Z+3	; 0x03
    12c6:	c7 01       	movw	r24, r14
    12c8:	0e 94 18 08 	call	0x1030	; 0x1030 <_ZN9CTerminal4putiEl>
    12cc:	0c c0       	rjmp	.+24     	; 0x12e6 <_ZN9CTerminal6printfEPKcz+0xc4>
    12ce:	58 01       	movw	r10, r16
    12d0:	f4 e0       	ldi	r31, 0x04	; 4
    12d2:	af 0e       	add	r10, r31
    12d4:	b1 1c       	adc	r11, r1
    12d6:	f8 01       	movw	r30, r16
    12d8:	40 81       	ld	r20, Z
    12da:	51 81       	ldd	r21, Z+1	; 0x01
    12dc:	62 81       	ldd	r22, Z+2	; 0x02
    12de:	73 81       	ldd	r23, Z+3	; 0x03
    12e0:	c7 01       	movw	r24, r14
    12e2:	0e 94 85 08 	call	0x110a	; 0x110a <_ZN9CTerminal5putuiEm>
    12e6:	85 01       	movw	r16, r10
    12e8:	11 c0       	rjmp	.+34     	; 0x130c <_ZN9CTerminal6printfEPKcz+0xea>
    12ea:	58 01       	movw	r10, r16
    12ec:	f4 e0       	ldi	r31, 0x04	; 4
    12ee:	af 0e       	add	r10, r31
    12f0:	b1 1c       	adc	r11, r1
    12f2:	f8 01       	movw	r30, r16
    12f4:	40 81       	ld	r20, Z
    12f6:	51 81       	ldd	r21, Z+1	; 0x01
    12f8:	62 81       	ldd	r22, Z+2	; 0x02
    12fa:	73 81       	ldd	r23, Z+3	; 0x03
    12fc:	c7 01       	movw	r24, r14
    12fe:	0e 94 d1 08 	call	0x11a2	; 0x11a2 <_ZN9CTerminal4putxEm>
    1302:	f1 cf       	rjmp	.-30     	; 0x12e6 <_ZN9CTerminal6printfEPKcz+0xc4>
    1304:	65 e2       	ldi	r22, 0x25	; 37
    1306:	c7 01       	movw	r24, r14
    1308:	0e 94 a3 07 	call	0xf46	; 0xf46 <_ZN6CUSART7putcharEc>
    130c:	f2 e0       	ldi	r31, 0x02	; 2
    130e:	cf 0e       	add	r12, r31
    1310:	d1 1c       	adc	r13, r1
    1312:	9a cf       	rjmp	.-204    	; 0x1248 <_ZN9CTerminal6printfEPKcz+0x26>
    1314:	df 91       	pop	r29
    1316:	cf 91       	pop	r28
    1318:	1f 91       	pop	r17
    131a:	0f 91       	pop	r16
    131c:	ff 90       	pop	r15
    131e:	ef 90       	pop	r14
    1320:	df 90       	pop	r13
    1322:	cf 90       	pop	r12
    1324:	bf 90       	pop	r11
    1326:	af 90       	pop	r10
    1328:	08 95       	ret

0000132a <_GLOBAL__sub_I_terminal>:
    132a:	86 e4       	ldi	r24, 0x46	; 70
    132c:	91 e0       	ldi	r25, 0x01	; 1
    132e:	0c 94 98 07 	jmp	0xf30	; 0xf30 <_ZN6CUSARTC1Ev>

00001332 <_GLOBAL__sub_D_terminal>:
    1332:	86 e4       	ldi	r24, 0x46	; 70
    1334:	91 e0       	ldi	r25, 0x01	; 1
    1336:	0c 94 a2 07 	jmp	0xf44	; 0xf44 <_ZN6CUSARTD1Ev>

0000133a <_ZN6CMotorC1Ev>:
    133a:	80 ef       	ldi	r24, 0xF0	; 240
    133c:	81 bb       	out	0x11, r24	; 17
    133e:	95 98       	cbi	0x12, 5	; 18
    1340:	81 ea       	ldi	r24, 0xA1	; 161
    1342:	8f bd       	out	0x2f, r24	; 47
    1344:	81 e0       	ldi	r24, 0x01	; 1
    1346:	8e bd       	out	0x2e, r24	; 46
    1348:	1b bc       	out	0x2b, r1	; 43
    134a:	1a bc       	out	0x2a, r1	; 42
    134c:	19 bc       	out	0x29, r1	; 41
    134e:	18 bc       	out	0x28, r1	; 40
    1350:	08 95       	ret

00001352 <_ZN6CMotorD1Ev>:
    1352:	08 95       	ret

00001354 <_ZN6CMotor3runEii>:
    1354:	6f 3f       	cpi	r22, 0xFF	; 255
    1356:	71 05       	cpc	r23, r1
    1358:	09 f0       	breq	.+2      	; 0x135c <_ZN6CMotor3runEii+0x8>
    135a:	3c f4       	brge	.+14     	; 0x136a <_ZN6CMotor3runEii+0x16>
    135c:	61 30       	cpi	r22, 0x01	; 1
    135e:	8f ef       	ldi	r24, 0xFF	; 255
    1360:	78 07       	cpc	r23, r24
    1362:	2c f4       	brge	.+10     	; 0x136e <_ZN6CMotor3runEii+0x1a>
    1364:	61 e0       	ldi	r22, 0x01	; 1
    1366:	7f ef       	ldi	r23, 0xFF	; 255
    1368:	02 c0       	rjmp	.+4      	; 0x136e <_ZN6CMotor3runEii+0x1a>
    136a:	6f ef       	ldi	r22, 0xFF	; 255
    136c:	70 e0       	ldi	r23, 0x00	; 0
    136e:	4f 3f       	cpi	r20, 0xFF	; 255
    1370:	51 05       	cpc	r21, r1
    1372:	09 f0       	breq	.+2      	; 0x1376 <_ZN6CMotor3runEii+0x22>
    1374:	44 f4       	brge	.+16     	; 0x1386 <_ZN6CMotor3runEii+0x32>
    1376:	41 30       	cpi	r20, 0x01	; 1
    1378:	8f ef       	ldi	r24, 0xFF	; 255
    137a:	58 07       	cpc	r21, r24
    137c:	6c f0       	brlt	.+26     	; 0x1398 <_ZN6CMotor3runEii+0x44>
    137e:	14 16       	cp	r1, r20
    1380:	15 06       	cpc	r1, r21
    1382:	1c f0       	brlt	.+6      	; 0x138a <_ZN6CMotor3runEii+0x36>
    1384:	05 c0       	rjmp	.+10     	; 0x1390 <_ZN6CMotor3runEii+0x3c>
    1386:	4f ef       	ldi	r20, 0xFF	; 255
    1388:	50 e0       	ldi	r21, 0x00	; 0
    138a:	4a bd       	out	0x2a, r20	; 42
    138c:	96 9a       	sbi	0x12, 6	; 18
    138e:	0b c0       	rjmp	.+22     	; 0x13a6 <_ZN6CMotor3runEii+0x52>
    1390:	41 15       	cp	r20, r1
    1392:	51 05       	cpc	r21, r1
    1394:	39 f0       	breq	.+14     	; 0x13a4 <_ZN6CMotor3runEii+0x50>
    1396:	02 c0       	rjmp	.+4      	; 0x139c <_ZN6CMotor3runEii+0x48>
    1398:	41 e0       	ldi	r20, 0x01	; 1
    139a:	5f ef       	ldi	r21, 0xFF	; 255
    139c:	41 95       	neg	r20
    139e:	4a bd       	out	0x2a, r20	; 42
    13a0:	96 98       	cbi	0x12, 6	; 18
    13a2:	01 c0       	rjmp	.+2      	; 0x13a6 <_ZN6CMotor3runEii+0x52>
    13a4:	1a bc       	out	0x2a, r1	; 42
    13a6:	16 16       	cp	r1, r22
    13a8:	17 06       	cpc	r1, r23
    13aa:	1c f4       	brge	.+6      	; 0x13b2 <_ZN6CMotor3runEii+0x5e>
    13ac:	68 bd       	out	0x28, r22	; 40
    13ae:	97 98       	cbi	0x12, 7	; 18
    13b0:	08 95       	ret
    13b2:	61 15       	cp	r22, r1
    13b4:	71 05       	cpc	r23, r1
    13b6:	21 f0       	breq	.+8      	; 0x13c0 <_ZN6CMotor3runEii+0x6c>
    13b8:	61 95       	neg	r22
    13ba:	68 bd       	out	0x28, r22	; 40
    13bc:	97 9a       	sbi	0x12, 7	; 18
    13be:	08 95       	ret
    13c0:	18 bc       	out	0x28, r1	; 40
    13c2:	08 95       	ret

000013c4 <_ZdlPv>:
    13c4:	0c 94 8c 0c 	jmp	0x1918	; 0x1918 <free>

000013c8 <__udivmodsi4>:
    13c8:	a1 e2       	ldi	r26, 0x21	; 33
    13ca:	1a 2e       	mov	r1, r26
    13cc:	aa 1b       	sub	r26, r26
    13ce:	bb 1b       	sub	r27, r27
    13d0:	fd 01       	movw	r30, r26
    13d2:	0d c0       	rjmp	.+26     	; 0x13ee <__udivmodsi4_ep>

000013d4 <__udivmodsi4_loop>:
    13d4:	aa 1f       	adc	r26, r26
    13d6:	bb 1f       	adc	r27, r27
    13d8:	ee 1f       	adc	r30, r30
    13da:	ff 1f       	adc	r31, r31
    13dc:	a2 17       	cp	r26, r18
    13de:	b3 07       	cpc	r27, r19
    13e0:	e4 07       	cpc	r30, r20
    13e2:	f5 07       	cpc	r31, r21
    13e4:	20 f0       	brcs	.+8      	; 0x13ee <__udivmodsi4_ep>
    13e6:	a2 1b       	sub	r26, r18
    13e8:	b3 0b       	sbc	r27, r19
    13ea:	e4 0b       	sbc	r30, r20
    13ec:	f5 0b       	sbc	r31, r21

000013ee <__udivmodsi4_ep>:
    13ee:	66 1f       	adc	r22, r22
    13f0:	77 1f       	adc	r23, r23
    13f2:	88 1f       	adc	r24, r24
    13f4:	99 1f       	adc	r25, r25
    13f6:	1a 94       	dec	r1
    13f8:	69 f7       	brne	.-38     	; 0x13d4 <__udivmodsi4_loop>
    13fa:	60 95       	com	r22
    13fc:	70 95       	com	r23
    13fe:	80 95       	com	r24
    1400:	90 95       	com	r25
    1402:	9b 01       	movw	r18, r22
    1404:	ac 01       	movw	r20, r24
    1406:	bd 01       	movw	r22, r26
    1408:	cf 01       	movw	r24, r30
    140a:	08 95       	ret

0000140c <__divmodsi4>:
    140c:	05 2e       	mov	r0, r21
    140e:	97 fb       	bst	r25, 7
    1410:	1e f4       	brtc	.+6      	; 0x1418 <__divmodsi4+0xc>
    1412:	00 94       	com	r0
    1414:	0e 94 1d 0a 	call	0x143a	; 0x143a <__negsi2>
    1418:	57 fd       	sbrc	r21, 7
    141a:	07 d0       	rcall	.+14     	; 0x142a <__divmodsi4_neg2>
    141c:	0e 94 e4 09 	call	0x13c8	; 0x13c8 <__udivmodsi4>
    1420:	07 fc       	sbrc	r0, 7
    1422:	03 d0       	rcall	.+6      	; 0x142a <__divmodsi4_neg2>
    1424:	4e f4       	brtc	.+18     	; 0x1438 <__divmodsi4_exit>
    1426:	0c 94 1d 0a 	jmp	0x143a	; 0x143a <__negsi2>

0000142a <__divmodsi4_neg2>:
    142a:	50 95       	com	r21
    142c:	40 95       	com	r20
    142e:	30 95       	com	r19
    1430:	21 95       	neg	r18
    1432:	3f 4f       	sbci	r19, 0xFF	; 255
    1434:	4f 4f       	sbci	r20, 0xFF	; 255
    1436:	5f 4f       	sbci	r21, 0xFF	; 255

00001438 <__divmodsi4_exit>:
    1438:	08 95       	ret

0000143a <__negsi2>:
    143a:	90 95       	com	r25
    143c:	80 95       	com	r24
    143e:	70 95       	com	r23
    1440:	61 95       	neg	r22
    1442:	7f 4f       	sbci	r23, 0xFF	; 255
    1444:	8f 4f       	sbci	r24, 0xFF	; 255
    1446:	9f 4f       	sbci	r25, 0xFF	; 255
    1448:	08 95       	ret

0000144a <__tablejump2__>:
    144a:	ee 0f       	add	r30, r30
    144c:	ff 1f       	adc	r31, r31
    144e:	05 90       	lpm	r0, Z+
    1450:	f4 91       	lpm	r31, Z
    1452:	e0 2d       	mov	r30, r0
    1454:	09 94       	ijmp

00001456 <__subsf3>:
    1456:	50 58       	subi	r21, 0x80	; 128

00001458 <__addsf3>:
    1458:	bb 27       	eor	r27, r27
    145a:	aa 27       	eor	r26, r26
    145c:	0e 94 43 0a 	call	0x1486	; 0x1486 <__addsf3x>
    1460:	0c 94 4b 0b 	jmp	0x1696	; 0x1696 <__fp_round>
    1464:	0e 94 3d 0b 	call	0x167a	; 0x167a <__fp_pscA>
    1468:	38 f0       	brcs	.+14     	; 0x1478 <__addsf3+0x20>
    146a:	0e 94 44 0b 	call	0x1688	; 0x1688 <__fp_pscB>
    146e:	20 f0       	brcs	.+8      	; 0x1478 <__addsf3+0x20>
    1470:	39 f4       	brne	.+14     	; 0x1480 <__addsf3+0x28>
    1472:	9f 3f       	cpi	r25, 0xFF	; 255
    1474:	19 f4       	brne	.+6      	; 0x147c <__addsf3+0x24>
    1476:	26 f4       	brtc	.+8      	; 0x1480 <__addsf3+0x28>
    1478:	0c 94 3a 0b 	jmp	0x1674	; 0x1674 <__fp_nan>
    147c:	0e f4       	brtc	.+2      	; 0x1480 <__addsf3+0x28>
    147e:	e0 95       	com	r30
    1480:	e7 fb       	bst	r30, 7
    1482:	0c 94 34 0b 	jmp	0x1668	; 0x1668 <__fp_inf>

00001486 <__addsf3x>:
    1486:	e9 2f       	mov	r30, r25
    1488:	0e 94 5c 0b 	call	0x16b8	; 0x16b8 <__fp_split3>
    148c:	58 f3       	brcs	.-42     	; 0x1464 <__addsf3+0xc>
    148e:	ba 17       	cp	r27, r26
    1490:	62 07       	cpc	r22, r18
    1492:	73 07       	cpc	r23, r19
    1494:	84 07       	cpc	r24, r20
    1496:	95 07       	cpc	r25, r21
    1498:	20 f0       	brcs	.+8      	; 0x14a2 <__addsf3x+0x1c>
    149a:	79 f4       	brne	.+30     	; 0x14ba <__addsf3x+0x34>
    149c:	a6 f5       	brtc	.+104    	; 0x1506 <__addsf3x+0x80>
    149e:	0c 94 7e 0b 	jmp	0x16fc	; 0x16fc <__fp_zero>
    14a2:	0e f4       	brtc	.+2      	; 0x14a6 <__addsf3x+0x20>
    14a4:	e0 95       	com	r30
    14a6:	0b 2e       	mov	r0, r27
    14a8:	ba 2f       	mov	r27, r26
    14aa:	a0 2d       	mov	r26, r0
    14ac:	0b 01       	movw	r0, r22
    14ae:	b9 01       	movw	r22, r18
    14b0:	90 01       	movw	r18, r0
    14b2:	0c 01       	movw	r0, r24
    14b4:	ca 01       	movw	r24, r20
    14b6:	a0 01       	movw	r20, r0
    14b8:	11 24       	eor	r1, r1
    14ba:	ff 27       	eor	r31, r31
    14bc:	59 1b       	sub	r21, r25
    14be:	99 f0       	breq	.+38     	; 0x14e6 <__addsf3x+0x60>
    14c0:	59 3f       	cpi	r21, 0xF9	; 249
    14c2:	50 f4       	brcc	.+20     	; 0x14d8 <__addsf3x+0x52>
    14c4:	50 3e       	cpi	r21, 0xE0	; 224
    14c6:	68 f1       	brcs	.+90     	; 0x1522 <__addsf3x+0x9c>
    14c8:	1a 16       	cp	r1, r26
    14ca:	f0 40       	sbci	r31, 0x00	; 0
    14cc:	a2 2f       	mov	r26, r18
    14ce:	23 2f       	mov	r18, r19
    14d0:	34 2f       	mov	r19, r20
    14d2:	44 27       	eor	r20, r20
    14d4:	58 5f       	subi	r21, 0xF8	; 248
    14d6:	f3 cf       	rjmp	.-26     	; 0x14be <__addsf3x+0x38>
    14d8:	46 95       	lsr	r20
    14da:	37 95       	ror	r19
    14dc:	27 95       	ror	r18
    14de:	a7 95       	ror	r26
    14e0:	f0 40       	sbci	r31, 0x00	; 0
    14e2:	53 95       	inc	r21
    14e4:	c9 f7       	brne	.-14     	; 0x14d8 <__addsf3x+0x52>
    14e6:	7e f4       	brtc	.+30     	; 0x1506 <__addsf3x+0x80>
    14e8:	1f 16       	cp	r1, r31
    14ea:	ba 0b       	sbc	r27, r26
    14ec:	62 0b       	sbc	r22, r18
    14ee:	73 0b       	sbc	r23, r19
    14f0:	84 0b       	sbc	r24, r20
    14f2:	ba f0       	brmi	.+46     	; 0x1522 <__addsf3x+0x9c>
    14f4:	91 50       	subi	r25, 0x01	; 1
    14f6:	a1 f0       	breq	.+40     	; 0x1520 <__addsf3x+0x9a>
    14f8:	ff 0f       	add	r31, r31
    14fa:	bb 1f       	adc	r27, r27
    14fc:	66 1f       	adc	r22, r22
    14fe:	77 1f       	adc	r23, r23
    1500:	88 1f       	adc	r24, r24
    1502:	c2 f7       	brpl	.-16     	; 0x14f4 <__addsf3x+0x6e>
    1504:	0e c0       	rjmp	.+28     	; 0x1522 <__addsf3x+0x9c>
    1506:	ba 0f       	add	r27, r26
    1508:	62 1f       	adc	r22, r18
    150a:	73 1f       	adc	r23, r19
    150c:	84 1f       	adc	r24, r20
    150e:	48 f4       	brcc	.+18     	; 0x1522 <__addsf3x+0x9c>
    1510:	87 95       	ror	r24
    1512:	77 95       	ror	r23
    1514:	67 95       	ror	r22
    1516:	b7 95       	ror	r27
    1518:	f7 95       	ror	r31
    151a:	9e 3f       	cpi	r25, 0xFE	; 254
    151c:	08 f0       	brcs	.+2      	; 0x1520 <__addsf3x+0x9a>
    151e:	b0 cf       	rjmp	.-160    	; 0x1480 <__addsf3+0x28>
    1520:	93 95       	inc	r25
    1522:	88 0f       	add	r24, r24
    1524:	08 f0       	brcs	.+2      	; 0x1528 <__addsf3x+0xa2>
    1526:	99 27       	eor	r25, r25
    1528:	ee 0f       	add	r30, r30
    152a:	97 95       	ror	r25
    152c:	87 95       	ror	r24
    152e:	08 95       	ret

00001530 <__cmpsf2>:
    1530:	0e 94 10 0b 	call	0x1620	; 0x1620 <__fp_cmp>
    1534:	08 f4       	brcc	.+2      	; 0x1538 <__cmpsf2+0x8>
    1536:	81 e0       	ldi	r24, 0x01	; 1
    1538:	08 95       	ret

0000153a <__fixsfsi>:
    153a:	0e 94 a4 0a 	call	0x1548	; 0x1548 <__fixunssfsi>
    153e:	68 94       	set
    1540:	b1 11       	cpse	r27, r1
    1542:	0c 94 7f 0b 	jmp	0x16fe	; 0x16fe <__fp_szero>
    1546:	08 95       	ret

00001548 <__fixunssfsi>:
    1548:	0e 94 64 0b 	call	0x16c8	; 0x16c8 <__fp_splitA>
    154c:	88 f0       	brcs	.+34     	; 0x1570 <__fixunssfsi+0x28>
    154e:	9f 57       	subi	r25, 0x7F	; 127
    1550:	98 f0       	brcs	.+38     	; 0x1578 <__fixunssfsi+0x30>
    1552:	b9 2f       	mov	r27, r25
    1554:	99 27       	eor	r25, r25
    1556:	b7 51       	subi	r27, 0x17	; 23
    1558:	b0 f0       	brcs	.+44     	; 0x1586 <__fixunssfsi+0x3e>
    155a:	e1 f0       	breq	.+56     	; 0x1594 <__fixunssfsi+0x4c>
    155c:	66 0f       	add	r22, r22
    155e:	77 1f       	adc	r23, r23
    1560:	88 1f       	adc	r24, r24
    1562:	99 1f       	adc	r25, r25
    1564:	1a f0       	brmi	.+6      	; 0x156c <__fixunssfsi+0x24>
    1566:	ba 95       	dec	r27
    1568:	c9 f7       	brne	.-14     	; 0x155c <__fixunssfsi+0x14>
    156a:	14 c0       	rjmp	.+40     	; 0x1594 <__fixunssfsi+0x4c>
    156c:	b1 30       	cpi	r27, 0x01	; 1
    156e:	91 f0       	breq	.+36     	; 0x1594 <__fixunssfsi+0x4c>
    1570:	0e 94 7e 0b 	call	0x16fc	; 0x16fc <__fp_zero>
    1574:	b1 e0       	ldi	r27, 0x01	; 1
    1576:	08 95       	ret
    1578:	0c 94 7e 0b 	jmp	0x16fc	; 0x16fc <__fp_zero>
    157c:	67 2f       	mov	r22, r23
    157e:	78 2f       	mov	r23, r24
    1580:	88 27       	eor	r24, r24
    1582:	b8 5f       	subi	r27, 0xF8	; 248
    1584:	39 f0       	breq	.+14     	; 0x1594 <__fixunssfsi+0x4c>
    1586:	b9 3f       	cpi	r27, 0xF9	; 249
    1588:	cc f3       	brlt	.-14     	; 0x157c <__fixunssfsi+0x34>
    158a:	86 95       	lsr	r24
    158c:	77 95       	ror	r23
    158e:	67 95       	ror	r22
    1590:	b3 95       	inc	r27
    1592:	d9 f7       	brne	.-10     	; 0x158a <__fixunssfsi+0x42>
    1594:	3e f4       	brtc	.+14     	; 0x15a4 <__fixunssfsi+0x5c>
    1596:	90 95       	com	r25
    1598:	80 95       	com	r24
    159a:	70 95       	com	r23
    159c:	61 95       	neg	r22
    159e:	7f 4f       	sbci	r23, 0xFF	; 255
    15a0:	8f 4f       	sbci	r24, 0xFF	; 255
    15a2:	9f 4f       	sbci	r25, 0xFF	; 255
    15a4:	08 95       	ret

000015a6 <__floatunsisf>:
    15a6:	e8 94       	clt
    15a8:	09 c0       	rjmp	.+18     	; 0x15bc <__floatsisf+0x12>

000015aa <__floatsisf>:
    15aa:	97 fb       	bst	r25, 7
    15ac:	3e f4       	brtc	.+14     	; 0x15bc <__floatsisf+0x12>
    15ae:	90 95       	com	r25
    15b0:	80 95       	com	r24
    15b2:	70 95       	com	r23
    15b4:	61 95       	neg	r22
    15b6:	7f 4f       	sbci	r23, 0xFF	; 255
    15b8:	8f 4f       	sbci	r24, 0xFF	; 255
    15ba:	9f 4f       	sbci	r25, 0xFF	; 255
    15bc:	99 23       	and	r25, r25
    15be:	a9 f0       	breq	.+42     	; 0x15ea <__floatsisf+0x40>
    15c0:	f9 2f       	mov	r31, r25
    15c2:	96 e9       	ldi	r25, 0x96	; 150
    15c4:	bb 27       	eor	r27, r27
    15c6:	93 95       	inc	r25
    15c8:	f6 95       	lsr	r31
    15ca:	87 95       	ror	r24
    15cc:	77 95       	ror	r23
    15ce:	67 95       	ror	r22
    15d0:	b7 95       	ror	r27
    15d2:	f1 11       	cpse	r31, r1
    15d4:	f8 cf       	rjmp	.-16     	; 0x15c6 <__floatsisf+0x1c>
    15d6:	fa f4       	brpl	.+62     	; 0x1616 <__floatsisf+0x6c>
    15d8:	bb 0f       	add	r27, r27
    15da:	11 f4       	brne	.+4      	; 0x15e0 <__floatsisf+0x36>
    15dc:	60 ff       	sbrs	r22, 0
    15de:	1b c0       	rjmp	.+54     	; 0x1616 <__floatsisf+0x6c>
    15e0:	6f 5f       	subi	r22, 0xFF	; 255
    15e2:	7f 4f       	sbci	r23, 0xFF	; 255
    15e4:	8f 4f       	sbci	r24, 0xFF	; 255
    15e6:	9f 4f       	sbci	r25, 0xFF	; 255
    15e8:	16 c0       	rjmp	.+44     	; 0x1616 <__floatsisf+0x6c>
    15ea:	88 23       	and	r24, r24
    15ec:	11 f0       	breq	.+4      	; 0x15f2 <__floatsisf+0x48>
    15ee:	96 e9       	ldi	r25, 0x96	; 150
    15f0:	11 c0       	rjmp	.+34     	; 0x1614 <__floatsisf+0x6a>
    15f2:	77 23       	and	r23, r23
    15f4:	21 f0       	breq	.+8      	; 0x15fe <__floatsisf+0x54>
    15f6:	9e e8       	ldi	r25, 0x8E	; 142
    15f8:	87 2f       	mov	r24, r23
    15fa:	76 2f       	mov	r23, r22
    15fc:	05 c0       	rjmp	.+10     	; 0x1608 <__floatsisf+0x5e>
    15fe:	66 23       	and	r22, r22
    1600:	71 f0       	breq	.+28     	; 0x161e <__floatsisf+0x74>
    1602:	96 e8       	ldi	r25, 0x86	; 134
    1604:	86 2f       	mov	r24, r22
    1606:	70 e0       	ldi	r23, 0x00	; 0
    1608:	60 e0       	ldi	r22, 0x00	; 0
    160a:	2a f0       	brmi	.+10     	; 0x1616 <__floatsisf+0x6c>
    160c:	9a 95       	dec	r25
    160e:	66 0f       	add	r22, r22
    1610:	77 1f       	adc	r23, r23
    1612:	88 1f       	adc	r24, r24
    1614:	da f7       	brpl	.-10     	; 0x160c <__floatsisf+0x62>
    1616:	88 0f       	add	r24, r24
    1618:	96 95       	lsr	r25
    161a:	87 95       	ror	r24
    161c:	97 f9       	bld	r25, 7
    161e:	08 95       	ret

00001620 <__fp_cmp>:
    1620:	99 0f       	add	r25, r25
    1622:	00 08       	sbc	r0, r0
    1624:	55 0f       	add	r21, r21
    1626:	aa 0b       	sbc	r26, r26
    1628:	e0 e8       	ldi	r30, 0x80	; 128
    162a:	fe ef       	ldi	r31, 0xFE	; 254
    162c:	16 16       	cp	r1, r22
    162e:	17 06       	cpc	r1, r23
    1630:	e8 07       	cpc	r30, r24
    1632:	f9 07       	cpc	r31, r25
    1634:	c0 f0       	brcs	.+48     	; 0x1666 <__fp_cmp+0x46>
    1636:	12 16       	cp	r1, r18
    1638:	13 06       	cpc	r1, r19
    163a:	e4 07       	cpc	r30, r20
    163c:	f5 07       	cpc	r31, r21
    163e:	98 f0       	brcs	.+38     	; 0x1666 <__fp_cmp+0x46>
    1640:	62 1b       	sub	r22, r18
    1642:	73 0b       	sbc	r23, r19
    1644:	84 0b       	sbc	r24, r20
    1646:	95 0b       	sbc	r25, r21
    1648:	39 f4       	brne	.+14     	; 0x1658 <__fp_cmp+0x38>
    164a:	0a 26       	eor	r0, r26
    164c:	61 f0       	breq	.+24     	; 0x1666 <__fp_cmp+0x46>
    164e:	23 2b       	or	r18, r19
    1650:	24 2b       	or	r18, r20
    1652:	25 2b       	or	r18, r21
    1654:	21 f4       	brne	.+8      	; 0x165e <__fp_cmp+0x3e>
    1656:	08 95       	ret
    1658:	0a 26       	eor	r0, r26
    165a:	09 f4       	brne	.+2      	; 0x165e <__fp_cmp+0x3e>
    165c:	a1 40       	sbci	r26, 0x01	; 1
    165e:	a6 95       	lsr	r26
    1660:	8f ef       	ldi	r24, 0xFF	; 255
    1662:	81 1d       	adc	r24, r1
    1664:	81 1d       	adc	r24, r1
    1666:	08 95       	ret

00001668 <__fp_inf>:
    1668:	97 f9       	bld	r25, 7
    166a:	9f 67       	ori	r25, 0x7F	; 127
    166c:	80 e8       	ldi	r24, 0x80	; 128
    166e:	70 e0       	ldi	r23, 0x00	; 0
    1670:	60 e0       	ldi	r22, 0x00	; 0
    1672:	08 95       	ret

00001674 <__fp_nan>:
    1674:	9f ef       	ldi	r25, 0xFF	; 255
    1676:	80 ec       	ldi	r24, 0xC0	; 192
    1678:	08 95       	ret

0000167a <__fp_pscA>:
    167a:	00 24       	eor	r0, r0
    167c:	0a 94       	dec	r0
    167e:	16 16       	cp	r1, r22
    1680:	17 06       	cpc	r1, r23
    1682:	18 06       	cpc	r1, r24
    1684:	09 06       	cpc	r0, r25
    1686:	08 95       	ret

00001688 <__fp_pscB>:
    1688:	00 24       	eor	r0, r0
    168a:	0a 94       	dec	r0
    168c:	12 16       	cp	r1, r18
    168e:	13 06       	cpc	r1, r19
    1690:	14 06       	cpc	r1, r20
    1692:	05 06       	cpc	r0, r21
    1694:	08 95       	ret

00001696 <__fp_round>:
    1696:	09 2e       	mov	r0, r25
    1698:	03 94       	inc	r0
    169a:	00 0c       	add	r0, r0
    169c:	11 f4       	brne	.+4      	; 0x16a2 <__fp_round+0xc>
    169e:	88 23       	and	r24, r24
    16a0:	52 f0       	brmi	.+20     	; 0x16b6 <__fp_round+0x20>
    16a2:	bb 0f       	add	r27, r27
    16a4:	40 f4       	brcc	.+16     	; 0x16b6 <__fp_round+0x20>
    16a6:	bf 2b       	or	r27, r31
    16a8:	11 f4       	brne	.+4      	; 0x16ae <__fp_round+0x18>
    16aa:	60 ff       	sbrs	r22, 0
    16ac:	04 c0       	rjmp	.+8      	; 0x16b6 <__fp_round+0x20>
    16ae:	6f 5f       	subi	r22, 0xFF	; 255
    16b0:	7f 4f       	sbci	r23, 0xFF	; 255
    16b2:	8f 4f       	sbci	r24, 0xFF	; 255
    16b4:	9f 4f       	sbci	r25, 0xFF	; 255
    16b6:	08 95       	ret

000016b8 <__fp_split3>:
    16b8:	57 fd       	sbrc	r21, 7
    16ba:	90 58       	subi	r25, 0x80	; 128
    16bc:	44 0f       	add	r20, r20
    16be:	55 1f       	adc	r21, r21
    16c0:	59 f0       	breq	.+22     	; 0x16d8 <__fp_splitA+0x10>
    16c2:	5f 3f       	cpi	r21, 0xFF	; 255
    16c4:	71 f0       	breq	.+28     	; 0x16e2 <__fp_splitA+0x1a>
    16c6:	47 95       	ror	r20

000016c8 <__fp_splitA>:
    16c8:	88 0f       	add	r24, r24
    16ca:	97 fb       	bst	r25, 7
    16cc:	99 1f       	adc	r25, r25
    16ce:	61 f0       	breq	.+24     	; 0x16e8 <__fp_splitA+0x20>
    16d0:	9f 3f       	cpi	r25, 0xFF	; 255
    16d2:	79 f0       	breq	.+30     	; 0x16f2 <__fp_splitA+0x2a>
    16d4:	87 95       	ror	r24
    16d6:	08 95       	ret
    16d8:	12 16       	cp	r1, r18
    16da:	13 06       	cpc	r1, r19
    16dc:	14 06       	cpc	r1, r20
    16de:	55 1f       	adc	r21, r21
    16e0:	f2 cf       	rjmp	.-28     	; 0x16c6 <__fp_split3+0xe>
    16e2:	46 95       	lsr	r20
    16e4:	f1 df       	rcall	.-30     	; 0x16c8 <__fp_splitA>
    16e6:	08 c0       	rjmp	.+16     	; 0x16f8 <__fp_splitA+0x30>
    16e8:	16 16       	cp	r1, r22
    16ea:	17 06       	cpc	r1, r23
    16ec:	18 06       	cpc	r1, r24
    16ee:	99 1f       	adc	r25, r25
    16f0:	f1 cf       	rjmp	.-30     	; 0x16d4 <__fp_splitA+0xc>
    16f2:	86 95       	lsr	r24
    16f4:	71 05       	cpc	r23, r1
    16f6:	61 05       	cpc	r22, r1
    16f8:	08 94       	sec
    16fa:	08 95       	ret

000016fc <__fp_zero>:
    16fc:	e8 94       	clt

000016fe <__fp_szero>:
    16fe:	bb 27       	eor	r27, r27
    1700:	66 27       	eor	r22, r22
    1702:	77 27       	eor	r23, r23
    1704:	cb 01       	movw	r24, r22
    1706:	97 f9       	bld	r25, 7
    1708:	08 95       	ret

0000170a <__gesf2>:
    170a:	0e 94 10 0b 	call	0x1620	; 0x1620 <__fp_cmp>
    170e:	08 f4       	brcc	.+2      	; 0x1712 <__gesf2+0x8>
    1710:	8f ef       	ldi	r24, 0xFF	; 255
    1712:	08 95       	ret

00001714 <__mulsf3>:
    1714:	0e 94 9d 0b 	call	0x173a	; 0x173a <__mulsf3x>
    1718:	0c 94 4b 0b 	jmp	0x1696	; 0x1696 <__fp_round>
    171c:	0e 94 3d 0b 	call	0x167a	; 0x167a <__fp_pscA>
    1720:	38 f0       	brcs	.+14     	; 0x1730 <__mulsf3+0x1c>
    1722:	0e 94 44 0b 	call	0x1688	; 0x1688 <__fp_pscB>
    1726:	20 f0       	brcs	.+8      	; 0x1730 <__mulsf3+0x1c>
    1728:	95 23       	and	r25, r21
    172a:	11 f0       	breq	.+4      	; 0x1730 <__mulsf3+0x1c>
    172c:	0c 94 34 0b 	jmp	0x1668	; 0x1668 <__fp_inf>
    1730:	0c 94 3a 0b 	jmp	0x1674	; 0x1674 <__fp_nan>
    1734:	11 24       	eor	r1, r1
    1736:	0c 94 7f 0b 	jmp	0x16fe	; 0x16fe <__fp_szero>

0000173a <__mulsf3x>:
    173a:	0e 94 5c 0b 	call	0x16b8	; 0x16b8 <__fp_split3>
    173e:	70 f3       	brcs	.-36     	; 0x171c <__mulsf3+0x8>

00001740 <__mulsf3_pse>:
    1740:	95 9f       	mul	r25, r21
    1742:	c1 f3       	breq	.-16     	; 0x1734 <__mulsf3+0x20>
    1744:	95 0f       	add	r25, r21
    1746:	50 e0       	ldi	r21, 0x00	; 0
    1748:	55 1f       	adc	r21, r21
    174a:	62 9f       	mul	r22, r18
    174c:	f0 01       	movw	r30, r0
    174e:	72 9f       	mul	r23, r18
    1750:	bb 27       	eor	r27, r27
    1752:	f0 0d       	add	r31, r0
    1754:	b1 1d       	adc	r27, r1
    1756:	63 9f       	mul	r22, r19
    1758:	aa 27       	eor	r26, r26
    175a:	f0 0d       	add	r31, r0
    175c:	b1 1d       	adc	r27, r1
    175e:	aa 1f       	adc	r26, r26
    1760:	64 9f       	mul	r22, r20
    1762:	66 27       	eor	r22, r22
    1764:	b0 0d       	add	r27, r0
    1766:	a1 1d       	adc	r26, r1
    1768:	66 1f       	adc	r22, r22
    176a:	82 9f       	mul	r24, r18
    176c:	22 27       	eor	r18, r18
    176e:	b0 0d       	add	r27, r0
    1770:	a1 1d       	adc	r26, r1
    1772:	62 1f       	adc	r22, r18
    1774:	73 9f       	mul	r23, r19
    1776:	b0 0d       	add	r27, r0
    1778:	a1 1d       	adc	r26, r1
    177a:	62 1f       	adc	r22, r18
    177c:	83 9f       	mul	r24, r19
    177e:	a0 0d       	add	r26, r0
    1780:	61 1d       	adc	r22, r1
    1782:	22 1f       	adc	r18, r18
    1784:	74 9f       	mul	r23, r20
    1786:	33 27       	eor	r19, r19
    1788:	a0 0d       	add	r26, r0
    178a:	61 1d       	adc	r22, r1
    178c:	23 1f       	adc	r18, r19
    178e:	84 9f       	mul	r24, r20
    1790:	60 0d       	add	r22, r0
    1792:	21 1d       	adc	r18, r1
    1794:	82 2f       	mov	r24, r18
    1796:	76 2f       	mov	r23, r22
    1798:	6a 2f       	mov	r22, r26
    179a:	11 24       	eor	r1, r1
    179c:	9f 57       	subi	r25, 0x7F	; 127
    179e:	50 40       	sbci	r21, 0x00	; 0
    17a0:	9a f0       	brmi	.+38     	; 0x17c8 <__mulsf3_pse+0x88>
    17a2:	f1 f0       	breq	.+60     	; 0x17e0 <__mulsf3_pse+0xa0>
    17a4:	88 23       	and	r24, r24
    17a6:	4a f0       	brmi	.+18     	; 0x17ba <__mulsf3_pse+0x7a>
    17a8:	ee 0f       	add	r30, r30
    17aa:	ff 1f       	adc	r31, r31
    17ac:	bb 1f       	adc	r27, r27
    17ae:	66 1f       	adc	r22, r22
    17b0:	77 1f       	adc	r23, r23
    17b2:	88 1f       	adc	r24, r24
    17b4:	91 50       	subi	r25, 0x01	; 1
    17b6:	50 40       	sbci	r21, 0x00	; 0
    17b8:	a9 f7       	brne	.-22     	; 0x17a4 <__mulsf3_pse+0x64>
    17ba:	9e 3f       	cpi	r25, 0xFE	; 254
    17bc:	51 05       	cpc	r21, r1
    17be:	80 f0       	brcs	.+32     	; 0x17e0 <__mulsf3_pse+0xa0>
    17c0:	0c 94 34 0b 	jmp	0x1668	; 0x1668 <__fp_inf>
    17c4:	0c 94 7f 0b 	jmp	0x16fe	; 0x16fe <__fp_szero>
    17c8:	5f 3f       	cpi	r21, 0xFF	; 255
    17ca:	e4 f3       	brlt	.-8      	; 0x17c4 <__mulsf3_pse+0x84>
    17cc:	98 3e       	cpi	r25, 0xE8	; 232
    17ce:	d4 f3       	brlt	.-12     	; 0x17c4 <__mulsf3_pse+0x84>
    17d0:	86 95       	lsr	r24
    17d2:	77 95       	ror	r23
    17d4:	67 95       	ror	r22
    17d6:	b7 95       	ror	r27
    17d8:	f7 95       	ror	r31
    17da:	e7 95       	ror	r30
    17dc:	9f 5f       	subi	r25, 0xFF	; 255
    17de:	c1 f7       	brne	.-16     	; 0x17d0 <__mulsf3_pse+0x90>
    17e0:	fe 2b       	or	r31, r30
    17e2:	88 0f       	add	r24, r24
    17e4:	91 1d       	adc	r25, r1
    17e6:	96 95       	lsr	r25
    17e8:	87 95       	ror	r24
    17ea:	97 f9       	bld	r25, 7
    17ec:	08 95       	ret

000017ee <malloc>:
    17ee:	cf 93       	push	r28
    17f0:	df 93       	push	r29
    17f2:	82 30       	cpi	r24, 0x02	; 2
    17f4:	91 05       	cpc	r25, r1
    17f6:	10 f4       	brcc	.+4      	; 0x17fc <malloc+0xe>
    17f8:	82 e0       	ldi	r24, 0x02	; 2
    17fa:	90 e0       	ldi	r25, 0x00	; 0
    17fc:	e0 91 49 01 	lds	r30, 0x0149
    1800:	f0 91 4a 01 	lds	r31, 0x014A
    1804:	20 e0       	ldi	r18, 0x00	; 0
    1806:	30 e0       	ldi	r19, 0x00	; 0
    1808:	c0 e0       	ldi	r28, 0x00	; 0
    180a:	d0 e0       	ldi	r29, 0x00	; 0
    180c:	30 97       	sbiw	r30, 0x00	; 0
    180e:	11 f1       	breq	.+68     	; 0x1854 <malloc+0x66>
    1810:	40 81       	ld	r20, Z
    1812:	51 81       	ldd	r21, Z+1	; 0x01
    1814:	48 17       	cp	r20, r24
    1816:	59 07       	cpc	r21, r25
    1818:	c0 f0       	brcs	.+48     	; 0x184a <malloc+0x5c>
    181a:	48 17       	cp	r20, r24
    181c:	59 07       	cpc	r21, r25
    181e:	61 f4       	brne	.+24     	; 0x1838 <malloc+0x4a>
    1820:	82 81       	ldd	r24, Z+2	; 0x02
    1822:	93 81       	ldd	r25, Z+3	; 0x03
    1824:	20 97       	sbiw	r28, 0x00	; 0
    1826:	19 f0       	breq	.+6      	; 0x182e <malloc+0x40>
    1828:	9b 83       	std	Y+3, r25	; 0x03
    182a:	8a 83       	std	Y+2, r24	; 0x02
    182c:	2b c0       	rjmp	.+86     	; 0x1884 <malloc+0x96>
    182e:	90 93 4a 01 	sts	0x014A, r25
    1832:	80 93 49 01 	sts	0x0149, r24
    1836:	26 c0       	rjmp	.+76     	; 0x1884 <malloc+0x96>
    1838:	21 15       	cp	r18, r1
    183a:	31 05       	cpc	r19, r1
    183c:	19 f0       	breq	.+6      	; 0x1844 <malloc+0x56>
    183e:	42 17       	cp	r20, r18
    1840:	53 07       	cpc	r21, r19
    1842:	18 f4       	brcc	.+6      	; 0x184a <malloc+0x5c>
    1844:	9a 01       	movw	r18, r20
    1846:	be 01       	movw	r22, r28
    1848:	df 01       	movw	r26, r30
    184a:	ef 01       	movw	r28, r30
    184c:	02 80       	ldd	r0, Z+2	; 0x02
    184e:	f3 81       	ldd	r31, Z+3	; 0x03
    1850:	e0 2d       	mov	r30, r0
    1852:	dc cf       	rjmp	.-72     	; 0x180c <malloc+0x1e>
    1854:	21 15       	cp	r18, r1
    1856:	31 05       	cpc	r19, r1
    1858:	09 f1       	breq	.+66     	; 0x189c <malloc+0xae>
    185a:	28 1b       	sub	r18, r24
    185c:	39 0b       	sbc	r19, r25
    185e:	24 30       	cpi	r18, 0x04	; 4
    1860:	31 05       	cpc	r19, r1
    1862:	90 f4       	brcc	.+36     	; 0x1888 <malloc+0x9a>
    1864:	12 96       	adiw	r26, 0x02	; 2
    1866:	8d 91       	ld	r24, X+
    1868:	9c 91       	ld	r25, X
    186a:	13 97       	sbiw	r26, 0x03	; 3
    186c:	61 15       	cp	r22, r1
    186e:	71 05       	cpc	r23, r1
    1870:	21 f0       	breq	.+8      	; 0x187a <malloc+0x8c>
    1872:	fb 01       	movw	r30, r22
    1874:	93 83       	std	Z+3, r25	; 0x03
    1876:	82 83       	std	Z+2, r24	; 0x02
    1878:	04 c0       	rjmp	.+8      	; 0x1882 <malloc+0x94>
    187a:	90 93 4a 01 	sts	0x014A, r25
    187e:	80 93 49 01 	sts	0x0149, r24
    1882:	fd 01       	movw	r30, r26
    1884:	32 96       	adiw	r30, 0x02	; 2
    1886:	44 c0       	rjmp	.+136    	; 0x1910 <malloc+0x122>
    1888:	fd 01       	movw	r30, r26
    188a:	e2 0f       	add	r30, r18
    188c:	f3 1f       	adc	r31, r19
    188e:	81 93       	st	Z+, r24
    1890:	91 93       	st	Z+, r25
    1892:	22 50       	subi	r18, 0x02	; 2
    1894:	31 09       	sbc	r19, r1
    1896:	2d 93       	st	X+, r18
    1898:	3c 93       	st	X, r19
    189a:	3a c0       	rjmp	.+116    	; 0x1910 <malloc+0x122>
    189c:	20 91 47 01 	lds	r18, 0x0147
    18a0:	30 91 48 01 	lds	r19, 0x0148
    18a4:	23 2b       	or	r18, r19
    18a6:	41 f4       	brne	.+16     	; 0x18b8 <malloc+0xca>
    18a8:	20 91 62 00 	lds	r18, 0x0062
    18ac:	30 91 63 00 	lds	r19, 0x0063
    18b0:	30 93 48 01 	sts	0x0148, r19
    18b4:	20 93 47 01 	sts	0x0147, r18
    18b8:	20 91 60 00 	lds	r18, 0x0060
    18bc:	30 91 61 00 	lds	r19, 0x0061
    18c0:	21 15       	cp	r18, r1
    18c2:	31 05       	cpc	r19, r1
    18c4:	41 f4       	brne	.+16     	; 0x18d6 <malloc+0xe8>
    18c6:	2d b7       	in	r18, 0x3d	; 61
    18c8:	3e b7       	in	r19, 0x3e	; 62
    18ca:	40 91 64 00 	lds	r20, 0x0064
    18ce:	50 91 65 00 	lds	r21, 0x0065
    18d2:	24 1b       	sub	r18, r20
    18d4:	35 0b       	sbc	r19, r21
    18d6:	e0 91 47 01 	lds	r30, 0x0147
    18da:	f0 91 48 01 	lds	r31, 0x0148
    18de:	e2 17       	cp	r30, r18
    18e0:	f3 07       	cpc	r31, r19
    18e2:	a0 f4       	brcc	.+40     	; 0x190c <malloc+0x11e>
    18e4:	2e 1b       	sub	r18, r30
    18e6:	3f 0b       	sbc	r19, r31
    18e8:	28 17       	cp	r18, r24
    18ea:	39 07       	cpc	r19, r25
    18ec:	78 f0       	brcs	.+30     	; 0x190c <malloc+0x11e>
    18ee:	ac 01       	movw	r20, r24
    18f0:	4e 5f       	subi	r20, 0xFE	; 254
    18f2:	5f 4f       	sbci	r21, 0xFF	; 255
    18f4:	24 17       	cp	r18, r20
    18f6:	35 07       	cpc	r19, r21
    18f8:	48 f0       	brcs	.+18     	; 0x190c <malloc+0x11e>
    18fa:	4e 0f       	add	r20, r30
    18fc:	5f 1f       	adc	r21, r31
    18fe:	50 93 48 01 	sts	0x0148, r21
    1902:	40 93 47 01 	sts	0x0147, r20
    1906:	81 93       	st	Z+, r24
    1908:	91 93       	st	Z+, r25
    190a:	02 c0       	rjmp	.+4      	; 0x1910 <malloc+0x122>
    190c:	e0 e0       	ldi	r30, 0x00	; 0
    190e:	f0 e0       	ldi	r31, 0x00	; 0
    1910:	cf 01       	movw	r24, r30
    1912:	df 91       	pop	r29
    1914:	cf 91       	pop	r28
    1916:	08 95       	ret

00001918 <free>:
    1918:	0f 93       	push	r16
    191a:	1f 93       	push	r17
    191c:	cf 93       	push	r28
    191e:	df 93       	push	r29
    1920:	00 97       	sbiw	r24, 0x00	; 0
    1922:	09 f4       	brne	.+2      	; 0x1926 <free+0xe>
    1924:	8c c0       	rjmp	.+280    	; 0x1a3e <free+0x126>
    1926:	fc 01       	movw	r30, r24
    1928:	32 97       	sbiw	r30, 0x02	; 2
    192a:	13 82       	std	Z+3, r1	; 0x03
    192c:	12 82       	std	Z+2, r1	; 0x02
    192e:	00 91 49 01 	lds	r16, 0x0149
    1932:	10 91 4a 01 	lds	r17, 0x014A
    1936:	01 15       	cp	r16, r1
    1938:	11 05       	cpc	r17, r1
    193a:	81 f4       	brne	.+32     	; 0x195c <free+0x44>
    193c:	20 81       	ld	r18, Z
    193e:	31 81       	ldd	r19, Z+1	; 0x01
    1940:	82 0f       	add	r24, r18
    1942:	93 1f       	adc	r25, r19
    1944:	20 91 47 01 	lds	r18, 0x0147
    1948:	30 91 48 01 	lds	r19, 0x0148
    194c:	28 17       	cp	r18, r24
    194e:	39 07       	cpc	r19, r25
    1950:	79 f5       	brne	.+94     	; 0x19b0 <free+0x98>
    1952:	f0 93 48 01 	sts	0x0148, r31
    1956:	e0 93 47 01 	sts	0x0147, r30
    195a:	71 c0       	rjmp	.+226    	; 0x1a3e <free+0x126>
    195c:	d8 01       	movw	r26, r16
    195e:	40 e0       	ldi	r20, 0x00	; 0
    1960:	50 e0       	ldi	r21, 0x00	; 0
    1962:	ae 17       	cp	r26, r30
    1964:	bf 07       	cpc	r27, r31
    1966:	50 f4       	brcc	.+20     	; 0x197c <free+0x64>
    1968:	12 96       	adiw	r26, 0x02	; 2
    196a:	2d 91       	ld	r18, X+
    196c:	3c 91       	ld	r19, X
    196e:	13 97       	sbiw	r26, 0x03	; 3
    1970:	ad 01       	movw	r20, r26
    1972:	21 15       	cp	r18, r1
    1974:	31 05       	cpc	r19, r1
    1976:	09 f1       	breq	.+66     	; 0x19ba <free+0xa2>
    1978:	d9 01       	movw	r26, r18
    197a:	f3 cf       	rjmp	.-26     	; 0x1962 <free+0x4a>
    197c:	9d 01       	movw	r18, r26
    197e:	da 01       	movw	r26, r20
    1980:	33 83       	std	Z+3, r19	; 0x03
    1982:	22 83       	std	Z+2, r18	; 0x02
    1984:	60 81       	ld	r22, Z
    1986:	71 81       	ldd	r23, Z+1	; 0x01
    1988:	86 0f       	add	r24, r22
    198a:	97 1f       	adc	r25, r23
    198c:	82 17       	cp	r24, r18
    198e:	93 07       	cpc	r25, r19
    1990:	69 f4       	brne	.+26     	; 0x19ac <free+0x94>
    1992:	ec 01       	movw	r28, r24
    1994:	28 81       	ld	r18, Y
    1996:	39 81       	ldd	r19, Y+1	; 0x01
    1998:	26 0f       	add	r18, r22
    199a:	37 1f       	adc	r19, r23
    199c:	2e 5f       	subi	r18, 0xFE	; 254
    199e:	3f 4f       	sbci	r19, 0xFF	; 255
    19a0:	31 83       	std	Z+1, r19	; 0x01
    19a2:	20 83       	st	Z, r18
    19a4:	8a 81       	ldd	r24, Y+2	; 0x02
    19a6:	9b 81       	ldd	r25, Y+3	; 0x03
    19a8:	93 83       	std	Z+3, r25	; 0x03
    19aa:	82 83       	std	Z+2, r24	; 0x02
    19ac:	45 2b       	or	r20, r21
    19ae:	29 f4       	brne	.+10     	; 0x19ba <free+0xa2>
    19b0:	f0 93 4a 01 	sts	0x014A, r31
    19b4:	e0 93 49 01 	sts	0x0149, r30
    19b8:	42 c0       	rjmp	.+132    	; 0x1a3e <free+0x126>
    19ba:	13 96       	adiw	r26, 0x03	; 3
    19bc:	fc 93       	st	X, r31
    19be:	ee 93       	st	-X, r30
    19c0:	12 97       	sbiw	r26, 0x02	; 2
    19c2:	ed 01       	movw	r28, r26
    19c4:	49 91       	ld	r20, Y+
    19c6:	59 91       	ld	r21, Y+
    19c8:	9e 01       	movw	r18, r28
    19ca:	24 0f       	add	r18, r20
    19cc:	35 1f       	adc	r19, r21
    19ce:	e2 17       	cp	r30, r18
    19d0:	f3 07       	cpc	r31, r19
    19d2:	71 f4       	brne	.+28     	; 0x19f0 <free+0xd8>
    19d4:	80 81       	ld	r24, Z
    19d6:	91 81       	ldd	r25, Z+1	; 0x01
    19d8:	84 0f       	add	r24, r20
    19da:	95 1f       	adc	r25, r21
    19dc:	02 96       	adiw	r24, 0x02	; 2
    19de:	11 96       	adiw	r26, 0x01	; 1
    19e0:	9c 93       	st	X, r25
    19e2:	8e 93       	st	-X, r24
    19e4:	82 81       	ldd	r24, Z+2	; 0x02
    19e6:	93 81       	ldd	r25, Z+3	; 0x03
    19e8:	13 96       	adiw	r26, 0x03	; 3
    19ea:	9c 93       	st	X, r25
    19ec:	8e 93       	st	-X, r24
    19ee:	12 97       	sbiw	r26, 0x02	; 2
    19f0:	e0 e0       	ldi	r30, 0x00	; 0
    19f2:	f0 e0       	ldi	r31, 0x00	; 0
    19f4:	d8 01       	movw	r26, r16
    19f6:	12 96       	adiw	r26, 0x02	; 2
    19f8:	8d 91       	ld	r24, X+
    19fa:	9c 91       	ld	r25, X
    19fc:	13 97       	sbiw	r26, 0x03	; 3
    19fe:	00 97       	sbiw	r24, 0x00	; 0
    1a00:	19 f0       	breq	.+6      	; 0x1a08 <free+0xf0>
    1a02:	f8 01       	movw	r30, r16
    1a04:	8c 01       	movw	r16, r24
    1a06:	f6 cf       	rjmp	.-20     	; 0x19f4 <free+0xdc>
    1a08:	8d 91       	ld	r24, X+
    1a0a:	9c 91       	ld	r25, X
    1a0c:	98 01       	movw	r18, r16
    1a0e:	2e 5f       	subi	r18, 0xFE	; 254
    1a10:	3f 4f       	sbci	r19, 0xFF	; 255
    1a12:	82 0f       	add	r24, r18
    1a14:	93 1f       	adc	r25, r19
    1a16:	20 91 47 01 	lds	r18, 0x0147
    1a1a:	30 91 48 01 	lds	r19, 0x0148
    1a1e:	28 17       	cp	r18, r24
    1a20:	39 07       	cpc	r19, r25
    1a22:	69 f4       	brne	.+26     	; 0x1a3e <free+0x126>
    1a24:	30 97       	sbiw	r30, 0x00	; 0
    1a26:	29 f4       	brne	.+10     	; 0x1a32 <free+0x11a>
    1a28:	10 92 4a 01 	sts	0x014A, r1
    1a2c:	10 92 49 01 	sts	0x0149, r1
    1a30:	02 c0       	rjmp	.+4      	; 0x1a36 <free+0x11e>
    1a32:	13 82       	std	Z+3, r1	; 0x03
    1a34:	12 82       	std	Z+2, r1	; 0x02
    1a36:	10 93 48 01 	sts	0x0148, r17
    1a3a:	00 93 47 01 	sts	0x0147, r16
    1a3e:	df 91       	pop	r29
    1a40:	cf 91       	pop	r28
    1a42:	1f 91       	pop	r17
    1a44:	0f 91       	pop	r16
    1a46:	08 95       	ret

00001a48 <__do_global_dtors>:
    1a48:	10 e0       	ldi	r17, 0x00	; 0
    1a4a:	cf e2       	ldi	r28, 0x2F	; 47
    1a4c:	d0 e0       	ldi	r29, 0x00	; 0
    1a4e:	04 c0       	rjmp	.+8      	; 0x1a58 <__do_global_dtors+0x10>
    1a50:	fe 01       	movw	r30, r28
    1a52:	0e 94 25 0a 	call	0x144a	; 0x144a <__tablejump2__>
    1a56:	21 96       	adiw	r28, 0x01	; 1
    1a58:	c1 33       	cpi	r28, 0x31	; 49
    1a5a:	d1 07       	cpc	r29, r17
    1a5c:	c9 f7       	brne	.-14     	; 0x1a50 <__do_global_dtors+0x8>
    1a5e:	f8 94       	cli

00001a60 <__stop_program>:
    1a60:	ff cf       	rjmp	.-2      	; 0x1a60 <__stop_program>
