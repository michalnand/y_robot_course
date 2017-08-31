
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
      4c:	0c 94 cd 02 	jmp	0x59a	; 0x59a <__vector_19>
      50:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>

00000054 <__ctors_start>:
      54:	00 02       	muls	r16, r16
      56:	51 02       	muls	r21, r17
      58:	11 03       	mulsu	r17, r17
      5a:	70 08       	sbc	r7, r0
      5c:	0e 0a       	sbc	r0, r30

0000005e <__ctors_end>:
      5e:	5f 02       	muls	r21, r31
      60:	12 0a       	sbc	r1, r18

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
      74:	e6 ec       	ldi	r30, 0xC6	; 198
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
      8e:	a4 35       	cpi	r26, 0x54	; 84
      90:	b2 07       	cpc	r27, r18
      92:	e1 f7       	brne	.-8      	; 0x8c <.do_clear_bss_loop>

00000094 <__do_global_ctors>:
      94:	10 e0       	ldi	r17, 0x00	; 0
      96:	cf e2       	ldi	r28, 0x2F	; 47
      98:	d0 e0       	ldi	r29, 0x00	; 0
      9a:	04 c0       	rjmp	.+8      	; 0xa4 <__do_global_ctors+0x10>
      9c:	21 97       	sbiw	r28, 0x01	; 1
      9e:	fe 01       	movw	r30, r28
      a0:	0e 94 57 0a 	call	0x14ae	; 0x14ae <__tablejump2__>
      a4:	ca 32       	cpi	r28, 0x2A	; 42
      a6:	d1 07       	cpc	r29, r17
      a8:	c9 f7       	brne	.-14     	; 0x9c <__do_global_ctors+0x8>
      aa:	0e 94 17 02 	call	0x42e	; 0x42e <main>
      ae:	0c 94 56 0d 	jmp	0x1aac	; 0x1aac <__do_global_dtors>

000000b2 <__bad_interrupt>:
      b2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b6 <_ZN16CStabilityKernelD1Ev>:
      b6:	cf 93       	push	r28
      b8:	df 93       	push	r29
      ba:	ec 01       	movw	r28, r24
      bc:	8a e6       	ldi	r24, 0x6A	; 106
      be:	90 e0       	ldi	r25, 0x00	; 0
      c0:	99 83       	std	Y+1, r25	; 0x01
      c2:	88 83       	st	Y, r24
      c4:	ce 01       	movw	r24, r28
      c6:	8c 59       	subi	r24, 0x9C	; 156
      c8:	9f 4f       	sbci	r25, 0xFF	; 255
      ca:	0e 94 21 03 	call	0x642	; 0x642 <_ZN6CMotorD1Ev>
      ce:	ce 01       	movw	r24, r28
      d0:	8a 96       	adiw	r24, 0x2a	; 42
      d2:	df 91       	pop	r29
      d4:	cf 91       	pop	r28
      d6:	0c 94 5b 03 	jmp	0x6b6	; 0x6b6 <_ZN5CGyroD1Ev>

000000da <_ZN16CStabilityKernelD0Ev>:
      da:	cf 93       	push	r28
      dc:	df 93       	push	r29
      de:	ec 01       	movw	r28, r24
      e0:	0e 94 5b 00 	call	0xb6	; 0xb6 <_ZN16CStabilityKernelD1Ev>
      e4:	ce 01       	movw	r24, r28
      e6:	df 91       	pop	r29
      e8:	cf 91       	pop	r28
      ea:	0c 94 7d 08 	jmp	0x10fa	; 0x10fa <_ZdlPv>

000000ee <_ZN16CStabilityKernelclEv>:
      ee:	4f 92       	push	r4
      f0:	5f 92       	push	r5
      f2:	6f 92       	push	r6
      f4:	7f 92       	push	r7
      f6:	8f 92       	push	r8
      f8:	9f 92       	push	r9
      fa:	af 92       	push	r10
      fc:	bf 92       	push	r11
      fe:	cf 92       	push	r12
     100:	df 92       	push	r13
     102:	ef 92       	push	r14
     104:	ff 92       	push	r15
     106:	cf 93       	push	r28
     108:	df 93       	push	r29
     10a:	ec 01       	movw	r28, r24
     10c:	60 e0       	ldi	r22, 0x00	; 0
     10e:	8a 96       	adiw	r24, 0x2a	; 42
     110:	0e 94 5c 03 	call	0x6b8	; 0x6b8 <_ZN5CGyro4readEb>
     114:	fe 01       	movw	r30, r28
     116:	ea 5b       	subi	r30, 0xBA	; 186
     118:	ff 4f       	sbci	r31, 0xFF	; 255
     11a:	80 81       	ld	r24, Z
     11c:	91 81       	ldd	r25, Z+1	; 0x01
     11e:	a2 81       	ldd	r26, Z+2	; 0x02
     120:	b3 81       	ldd	r27, Z+3	; 0x03
     122:	9c 01       	movw	r18, r24
     124:	ad 01       	movw	r20, r26
     126:	66 27       	eor	r22, r22
     128:	77 27       	eor	r23, r23
     12a:	cb 01       	movw	r24, r22
     12c:	62 1b       	sub	r22, r18
     12e:	73 0b       	sbc	r23, r19
     130:	84 0b       	sbc	r24, r20
     132:	95 0b       	sbc	r25, r21
     134:	0e 94 07 0b 	call	0x160e	; 0x160e <__floatsisf>
     138:	2d ec       	ldi	r18, 0xCD	; 205
     13a:	3c ec       	ldi	r19, 0xCC	; 204
     13c:	4c ec       	ldi	r20, 0xCC	; 204
     13e:	5d e3       	ldi	r21, 0x3D	; 61
     140:	0e 94 bc 0b 	call	0x1778	; 0x1778 <__mulsf3>
     144:	9b 01       	movw	r18, r22
     146:	ac 01       	movw	r20, r24
     148:	ce 8c       	ldd	r12, Y+30	; 0x1e
     14a:	df 8c       	ldd	r13, Y+31	; 0x1f
     14c:	e8 a0       	ldd	r14, Y+32	; 0x20
     14e:	f9 a0       	ldd	r15, Y+33	; 0x21
     150:	ca a2       	std	Y+34, r12	; 0x22
     152:	db a2       	std	Y+35, r13	; 0x23
     154:	ec a2       	std	Y+36, r14	; 0x24
     156:	fd a2       	std	Y+37, r15	; 0x25
     158:	8a 8c       	ldd	r8, Y+26	; 0x1a
     15a:	9b 8c       	ldd	r9, Y+27	; 0x1b
     15c:	ac 8c       	ldd	r10, Y+28	; 0x1c
     15e:	bd 8c       	ldd	r11, Y+29	; 0x1d
     160:	8e 8e       	std	Y+30, r8	; 0x1e
     162:	9f 8e       	std	Y+31, r9	; 0x1f
     164:	a8 a2       	std	Y+32, r10	; 0x20
     166:	b9 a2       	std	Y+33, r11	; 0x21
     168:	60 e0       	ldi	r22, 0x00	; 0
     16a:	70 e0       	ldi	r23, 0x00	; 0
     16c:	cb 01       	movw	r24, r22
     16e:	0e 94 5d 0a 	call	0x14ba	; 0x14ba <__subsf3>
     172:	6a 8f       	std	Y+26, r22	; 0x1a
     174:	7b 8f       	std	Y+27, r23	; 0x1b
     176:	8c 8f       	std	Y+28, r24	; 0x1c
     178:	9d 8f       	std	Y+29, r25	; 0x1d
     17a:	2e 85       	ldd	r18, Y+14	; 0x0e
     17c:	3f 85       	ldd	r19, Y+15	; 0x0f
     17e:	48 89       	ldd	r20, Y+16	; 0x10
     180:	59 89       	ldd	r21, Y+17	; 0x11
     182:	0e 94 bc 0b 	call	0x1778	; 0x1778 <__mulsf3>
     186:	2b 01       	movw	r4, r22
     188:	3c 01       	movw	r6, r24
     18a:	2a 89       	ldd	r18, Y+18	; 0x12
     18c:	3b 89       	ldd	r19, Y+19	; 0x13
     18e:	4c 89       	ldd	r20, Y+20	; 0x14
     190:	5d 89       	ldd	r21, Y+21	; 0x15
     192:	c5 01       	movw	r24, r10
     194:	b4 01       	movw	r22, r8
     196:	0e 94 bc 0b 	call	0x1778	; 0x1778 <__mulsf3>
     19a:	9b 01       	movw	r18, r22
     19c:	ac 01       	movw	r20, r24
     19e:	c3 01       	movw	r24, r6
     1a0:	b2 01       	movw	r22, r4
     1a2:	0e 94 5e 0a 	call	0x14bc	; 0x14bc <__addsf3>
     1a6:	4b 01       	movw	r8, r22
     1a8:	5c 01       	movw	r10, r24
     1aa:	2e 89       	ldd	r18, Y+22	; 0x16
     1ac:	3f 89       	ldd	r19, Y+23	; 0x17
     1ae:	48 8d       	ldd	r20, Y+24	; 0x18
     1b0:	59 8d       	ldd	r21, Y+25	; 0x19
     1b2:	c7 01       	movw	r24, r14
     1b4:	b6 01       	movw	r22, r12
     1b6:	0e 94 bc 0b 	call	0x1778	; 0x1778 <__mulsf3>
     1ba:	9b 01       	movw	r18, r22
     1bc:	ac 01       	movw	r20, r24
     1be:	c5 01       	movw	r24, r10
     1c0:	b4 01       	movw	r22, r8
     1c2:	0e 94 5e 0a 	call	0x14bc	; 0x14bc <__addsf3>
     1c6:	2e a1       	ldd	r18, Y+38	; 0x26
     1c8:	3f a1       	ldd	r19, Y+39	; 0x27
     1ca:	48 a5       	ldd	r20, Y+40	; 0x28
     1cc:	59 a5       	ldd	r21, Y+41	; 0x29
     1ce:	0e 94 5e 0a 	call	0x14bc	; 0x14bc <__addsf3>
     1d2:	4b 01       	movw	r8, r22
     1d4:	5c 01       	movw	r10, r24
     1d6:	6e a3       	std	Y+38, r22	; 0x26
     1d8:	7f a3       	std	Y+39, r23	; 0x27
     1da:	88 a7       	std	Y+40, r24	; 0x28
     1dc:	99 a7       	std	Y+41, r25	; 0x29
     1de:	20 e0       	ldi	r18, 0x00	; 0
     1e0:	30 e0       	ldi	r19, 0x00	; 0
     1e2:	a9 01       	movw	r20, r18
     1e4:	0e 94 5e 0a 	call	0x14bc	; 0x14bc <__addsf3>
     1e8:	6b 01       	movw	r12, r22
     1ea:	7c 01       	movw	r14, r24
     1ec:	20 e0       	ldi	r18, 0x00	; 0
     1ee:	30 e0       	ldi	r19, 0x00	; 0
     1f0:	40 e8       	ldi	r20, 0x80	; 128
     1f2:	53 ec       	ldi	r21, 0xC3	; 195
     1f4:	0e 94 ca 0a 	call	0x1594	; 0x1594 <__cmpsf2>
     1f8:	87 fd       	sbrc	r24, 7
     1fa:	11 c0       	rjmp	.+34     	; 0x21e <_ZN16CStabilityKernelclEv+0x130>
     1fc:	20 e0       	ldi	r18, 0x00	; 0
     1fe:	30 e0       	ldi	r19, 0x00	; 0
     200:	40 e8       	ldi	r20, 0x80	; 128
     202:	53 e4       	ldi	r21, 0x43	; 67
     204:	c7 01       	movw	r24, r14
     206:	b6 01       	movw	r22, r12
     208:	0e 94 b7 0b 	call	0x176e	; 0x176e <__gesf2>
     20c:	18 16       	cp	r1, r24
     20e:	6c f4       	brge	.+26     	; 0x22a <_ZN16CStabilityKernelclEv+0x13c>
     210:	c1 2c       	mov	r12, r1
     212:	d1 2c       	mov	r13, r1
     214:	30 e8       	ldi	r19, 0x80	; 128
     216:	e3 2e       	mov	r14, r19
     218:	33 e4       	ldi	r19, 0x43	; 67
     21a:	f3 2e       	mov	r15, r19
     21c:	06 c0       	rjmp	.+12     	; 0x22a <_ZN16CStabilityKernelclEv+0x13c>
     21e:	c1 2c       	mov	r12, r1
     220:	d1 2c       	mov	r13, r1
     222:	20 e8       	ldi	r18, 0x80	; 128
     224:	e2 2e       	mov	r14, r18
     226:	23 ec       	ldi	r18, 0xC3	; 195
     228:	f2 2e       	mov	r15, r18
     22a:	c7 01       	movw	r24, r14
     22c:	b6 01       	movw	r22, r12
     22e:	0e 94 cf 0a 	call	0x159e	; 0x159e <__fixsfsi>
     232:	2b 01       	movw	r4, r22
     234:	3c 01       	movw	r6, r24
     236:	a5 01       	movw	r20, r10
     238:	94 01       	movw	r18, r8
     23a:	60 e0       	ldi	r22, 0x00	; 0
     23c:	70 e0       	ldi	r23, 0x00	; 0
     23e:	cb 01       	movw	r24, r22
     240:	0e 94 5d 0a 	call	0x14ba	; 0x14ba <__subsf3>
     244:	6b 01       	movw	r12, r22
     246:	7c 01       	movw	r14, r24
     248:	20 e0       	ldi	r18, 0x00	; 0
     24a:	30 e0       	ldi	r19, 0x00	; 0
     24c:	40 e8       	ldi	r20, 0x80	; 128
     24e:	53 ec       	ldi	r21, 0xC3	; 195
     250:	0e 94 ca 0a 	call	0x1594	; 0x1594 <__cmpsf2>
     254:	87 fd       	sbrc	r24, 7
     256:	11 c0       	rjmp	.+34     	; 0x27a <_ZN16CStabilityKernelclEv+0x18c>
     258:	20 e0       	ldi	r18, 0x00	; 0
     25a:	30 e0       	ldi	r19, 0x00	; 0
     25c:	40 e8       	ldi	r20, 0x80	; 128
     25e:	53 e4       	ldi	r21, 0x43	; 67
     260:	c7 01       	movw	r24, r14
     262:	b6 01       	movw	r22, r12
     264:	0e 94 b7 0b 	call	0x176e	; 0x176e <__gesf2>
     268:	18 16       	cp	r1, r24
     26a:	6c f4       	brge	.+26     	; 0x286 <_ZN16CStabilityKernelclEv+0x198>
     26c:	c1 2c       	mov	r12, r1
     26e:	d1 2c       	mov	r13, r1
     270:	90 e8       	ldi	r25, 0x80	; 128
     272:	e9 2e       	mov	r14, r25
     274:	93 e4       	ldi	r25, 0x43	; 67
     276:	f9 2e       	mov	r15, r25
     278:	06 c0       	rjmp	.+12     	; 0x286 <_ZN16CStabilityKernelclEv+0x198>
     27a:	c1 2c       	mov	r12, r1
     27c:	d1 2c       	mov	r13, r1
     27e:	80 e8       	ldi	r24, 0x80	; 128
     280:	e8 2e       	mov	r14, r24
     282:	83 ec       	ldi	r24, 0xC3	; 195
     284:	f8 2e       	mov	r15, r24
     286:	c7 01       	movw	r24, r14
     288:	b6 01       	movw	r22, r12
     28a:	0e 94 cf 0a 	call	0x159e	; 0x159e <__fixsfsi>
     28e:	ab 01       	movw	r20, r22
     290:	b2 01       	movw	r22, r4
     292:	ce 01       	movw	r24, r28
     294:	8c 59       	subi	r24, 0x9C	; 156
     296:	9f 4f       	sbci	r25, 0xFF	; 255
     298:	df 91       	pop	r29
     29a:	cf 91       	pop	r28
     29c:	ff 90       	pop	r15
     29e:	ef 90       	pop	r14
     2a0:	df 90       	pop	r13
     2a2:	cf 90       	pop	r12
     2a4:	bf 90       	pop	r11
     2a6:	af 90       	pop	r10
     2a8:	9f 90       	pop	r9
     2aa:	8f 90       	pop	r8
     2ac:	7f 90       	pop	r7
     2ae:	6f 90       	pop	r6
     2b0:	5f 90       	pop	r5
     2b2:	4f 90       	pop	r4
     2b4:	0c 94 22 03 	jmp	0x644	; 0x644 <_ZN6CMotor3runEii>

000002b8 <_ZN16CStabilityKernelC1Ev>:
     2b8:	cf 93       	push	r28
     2ba:	df 93       	push	r29
     2bc:	ec 01       	movw	r28, r24
     2be:	8a e6       	ldi	r24, 0x6A	; 106
     2c0:	90 e0       	ldi	r25, 0x00	; 0
     2c2:	99 83       	std	Y+1, r25	; 0x01
     2c4:	88 83       	st	Y, r24
     2c6:	ce 01       	movw	r24, r28
     2c8:	8a 96       	adiw	r24, 0x2a	; 42
     2ca:	0e 94 5a 03 	call	0x6b4	; 0x6b4 <_ZN5CGyroC1Ev>
     2ce:	ce 01       	movw	r24, r28
     2d0:	8c 59       	subi	r24, 0x9C	; 156
     2d2:	9f 4f       	sbci	r25, 0xFF	; 255
     2d4:	0e 94 15 03 	call	0x62a	; 0x62a <_ZN6CMotorC1Ev>
     2d8:	de 9a       	sbi	0x1b, 6	; 27
     2da:	df 91       	pop	r29
     2dc:	cf 91       	pop	r28
     2de:	08 95       	ret

000002e0 <_ZN16CStabilityKernel4initEb>:
     2e0:	8f 92       	push	r8
     2e2:	9f 92       	push	r9
     2e4:	af 92       	push	r10
     2e6:	bf 92       	push	r11
     2e8:	cf 92       	push	r12
     2ea:	df 92       	push	r13
     2ec:	ef 92       	push	r14
     2ee:	ff 92       	push	r15
     2f0:	cf 93       	push	r28
     2f2:	df 93       	push	r29
     2f4:	ec 01       	movw	r28, r24
     2f6:	f6 2e       	mov	r15, r22
     2f8:	6b e4       	ldi	r22, 0x4B	; 75
     2fa:	71 e0       	ldi	r23, 0x01	; 1
     2fc:	8a 96       	adiw	r24, 0x2a	; 42
     2fe:	0e 94 f2 04 	call	0x9e4	; 0x9e4 <_ZN5CGyro4initEP14CI2C_Interface>
     302:	fe 01       	movw	r30, r28
     304:	e6 5a       	subi	r30, 0xA6	; 166
     306:	ff 4f       	sbci	r31, 0xFF	; 255
     308:	80 81       	ld	r24, Z
     30a:	91 81       	ldd	r25, Z+1	; 0x01
     30c:	a2 81       	ldd	r26, Z+2	; 0x02
     30e:	b3 81       	ldd	r27, Z+3	; 0x03
     310:	89 2b       	or	r24, r25
     312:	8a 2b       	or	r24, r26
     314:	8b 2b       	or	r24, r27
     316:	11 f0       	breq	.+4      	; 0x31c <_ZN16CStabilityKernel4initEb+0x3c>
     318:	de 98       	cbi	0x1b, 6	; 27
     31a:	01 c0       	rjmp	.+2      	; 0x31e <_ZN16CStabilityKernel4initEb+0x3e>
     31c:	de 9a       	sbi	0x1b, 6	; 27
     31e:	ff 20       	and	r15, r15
     320:	a9 f0       	breq	.+42     	; 0x34c <_ZN16CStabilityKernel4initEb+0x6c>
     322:	80 e0       	ldi	r24, 0x00	; 0
     324:	90 e0       	ldi	r25, 0x00	; 0
     326:	a0 ec       	ldi	r26, 0xC0	; 192
     328:	bf e3       	ldi	r27, 0x3F	; 63
     32a:	8a 83       	std	Y+2, r24	; 0x02
     32c:	9b 83       	std	Y+3, r25	; 0x03
     32e:	ac 83       	std	Y+4, r26	; 0x04
     330:	bd 83       	std	Y+5, r27	; 0x05
     332:	1e 82       	std	Y+6, r1	; 0x06
     334:	1f 82       	std	Y+7, r1	; 0x07
     336:	18 86       	std	Y+8, r1	; 0x08
     338:	19 86       	std	Y+9, r1	; 0x09
     33a:	80 e0       	ldi	r24, 0x00	; 0
     33c:	90 e0       	ldi	r25, 0x00	; 0
     33e:	a0 ea       	ldi	r26, 0xA0	; 160
     340:	b0 e4       	ldi	r27, 0x40	; 64
     342:	8a 87       	std	Y+10, r24	; 0x0a
     344:	9b 87       	std	Y+11, r25	; 0x0b
     346:	ac 87       	std	Y+12, r26	; 0x0c
     348:	bd 87       	std	Y+13, r27	; 0x0d
     34a:	10 c0       	rjmp	.+32     	; 0x36c <_ZN16CStabilityKernel4initEb+0x8c>
     34c:	80 e0       	ldi	r24, 0x00	; 0
     34e:	90 e0       	ldi	r25, 0x00	; 0
     350:	a0 e8       	ldi	r26, 0x80	; 128
     352:	bf e3       	ldi	r27, 0x3F	; 63
     354:	8a 83       	std	Y+2, r24	; 0x02
     356:	9b 83       	std	Y+3, r25	; 0x03
     358:	ac 83       	std	Y+4, r26	; 0x04
     35a:	bd 83       	std	Y+5, r27	; 0x05
     35c:	1e 82       	std	Y+6, r1	; 0x06
     35e:	1f 82       	std	Y+7, r1	; 0x07
     360:	18 86       	std	Y+8, r1	; 0x08
     362:	19 86       	std	Y+9, r1	; 0x09
     364:	1a 86       	std	Y+10, r1	; 0x0a
     366:	1b 86       	std	Y+11, r1	; 0x0b
     368:	1c 86       	std	Y+12, r1	; 0x0c
     36a:	1d 86       	std	Y+13, r1	; 0x0d
     36c:	8a 80       	ldd	r8, Y+2	; 0x02
     36e:	9b 80       	ldd	r9, Y+3	; 0x03
     370:	ac 80       	ldd	r10, Y+4	; 0x04
     372:	bd 80       	ldd	r11, Y+5	; 0x05
     374:	ca 84       	ldd	r12, Y+10	; 0x0a
     376:	db 84       	ldd	r13, Y+11	; 0x0b
     378:	ec 84       	ldd	r14, Y+12	; 0x0c
     37a:	fd 84       	ldd	r15, Y+13	; 0x0d
     37c:	20 e0       	ldi	r18, 0x00	; 0
     37e:	30 e0       	ldi	r19, 0x00	; 0
     380:	a9 01       	movw	r20, r18
     382:	c5 01       	movw	r24, r10
     384:	b4 01       	movw	r22, r8
     386:	0e 94 5e 0a 	call	0x14bc	; 0x14bc <__addsf3>
     38a:	a7 01       	movw	r20, r14
     38c:	96 01       	movw	r18, r12
     38e:	0e 94 5e 0a 	call	0x14bc	; 0x14bc <__addsf3>
     392:	6e 87       	std	Y+14, r22	; 0x0e
     394:	7f 87       	std	Y+15, r23	; 0x0f
     396:	88 8b       	std	Y+16, r24	; 0x10
     398:	99 8b       	std	Y+17, r25	; 0x11
     39a:	b7 fa       	bst	r11, 7
     39c:	b0 94       	com	r11
     39e:	b7 f8       	bld	r11, 7
     3a0:	b0 94       	com	r11
     3a2:	a7 01       	movw	r20, r14
     3a4:	96 01       	movw	r18, r12
     3a6:	c7 01       	movw	r24, r14
     3a8:	b6 01       	movw	r22, r12
     3aa:	0e 94 5e 0a 	call	0x14bc	; 0x14bc <__addsf3>
     3ae:	9b 01       	movw	r18, r22
     3b0:	ac 01       	movw	r20, r24
     3b2:	c5 01       	movw	r24, r10
     3b4:	b4 01       	movw	r22, r8
     3b6:	0e 94 5d 0a 	call	0x14ba	; 0x14ba <__subsf3>
     3ba:	6a 8b       	std	Y+18, r22	; 0x12
     3bc:	7b 8b       	std	Y+19, r23	; 0x13
     3be:	8c 8b       	std	Y+20, r24	; 0x14
     3c0:	9d 8b       	std	Y+21, r25	; 0x15
     3c2:	ce 8a       	std	Y+22, r12	; 0x16
     3c4:	df 8a       	std	Y+23, r13	; 0x17
     3c6:	e8 8e       	std	Y+24, r14	; 0x18
     3c8:	f9 8e       	std	Y+25, r15	; 0x19
     3ca:	1a 8e       	std	Y+26, r1	; 0x1a
     3cc:	1b 8e       	std	Y+27, r1	; 0x1b
     3ce:	1c 8e       	std	Y+28, r1	; 0x1c
     3d0:	1d 8e       	std	Y+29, r1	; 0x1d
     3d2:	1e 8e       	std	Y+30, r1	; 0x1e
     3d4:	1f 8e       	std	Y+31, r1	; 0x1f
     3d6:	18 a2       	std	Y+32, r1	; 0x20
     3d8:	19 a2       	std	Y+33, r1	; 0x21
     3da:	1a a2       	std	Y+34, r1	; 0x22
     3dc:	1b a2       	std	Y+35, r1	; 0x23
     3de:	1c a2       	std	Y+36, r1	; 0x24
     3e0:	1d a2       	std	Y+37, r1	; 0x25
     3e2:	1e a2       	std	Y+38, r1	; 0x26
     3e4:	1f a2       	std	Y+39, r1	; 0x27
     3e6:	18 a6       	std	Y+40, r1	; 0x28
     3e8:	19 a6       	std	Y+41, r1	; 0x29
     3ea:	df 91       	pop	r29
     3ec:	cf 91       	pop	r28
     3ee:	ff 90       	pop	r15
     3f0:	ef 90       	pop	r14
     3f2:	df 90       	pop	r13
     3f4:	cf 90       	pop	r12
     3f6:	bf 90       	pop	r11
     3f8:	af 90       	pop	r10
     3fa:	9f 90       	pop	r9
     3fc:	8f 90       	pop	r8
     3fe:	08 95       	ret

00000400 <_GLOBAL__sub_I_led>:
     400:	d6 9a       	sbi	0x1a, 6	; 26
     402:	08 95       	ret

00000404 <_ZN6CBlinkD1Ev>:
     404:	08 95       	ret

00000406 <_ZN6CBlinkD0Ev>:
     406:	0c 94 7d 08 	jmp	0x10fa	; 0x10fa <_ZdlPv>

0000040a <_ZN6CBlinkclEv>:
     40a:	fc 01       	movw	r30, r24
     40c:	83 81       	ldd	r24, Z+3	; 0x03
     40e:	94 81       	ldd	r25, Z+4	; 0x04
     410:	00 97       	sbiw	r24, 0x00	; 0
     412:	19 f0       	breq	.+6      	; 0x41a <_ZN6CBlinkclEv+0x10>
     414:	01 97       	sbiw	r24, 0x01	; 1
     416:	39 f0       	breq	.+14     	; 0x426 <_ZN6CBlinkclEv+0x1c>
     418:	08 95       	ret
     41a:	dd 9a       	sbi	0x1b, 5	; 27
     41c:	81 e0       	ldi	r24, 0x01	; 1
     41e:	90 e0       	ldi	r25, 0x00	; 0
     420:	94 83       	std	Z+4, r25	; 0x04
     422:	83 83       	std	Z+3, r24	; 0x03
     424:	08 95       	ret
     426:	dd 98       	cbi	0x1b, 5	; 27
     428:	14 82       	std	Z+4, r1	; 0x04
     42a:	13 82       	std	Z+3, r1	; 0x03
     42c:	08 95       	ret

0000042e <main>:
     42e:	bb 98       	cbi	0x17, 3	; 23
     430:	c3 9a       	sbi	0x18, 3	; 24
     432:	ba 98       	cbi	0x17, 2	; 23
     434:	c2 9a       	sbi	0x18, 2	; 24
     436:	80 e7       	ldi	r24, 0x70	; 112
     438:	90 e0       	ldi	r25, 0x00	; 0
     43a:	9f 93       	push	r25
     43c:	8f 93       	push	r24
     43e:	8f e4       	ldi	r24, 0x4F	; 79
     440:	91 e0       	ldi	r25, 0x01	; 1
     442:	9f 93       	push	r25
     444:	8f 93       	push	r24
     446:	0e 94 8a 09 	call	0x1314	; 0x1314 <_ZN9CTerminal6printfEPKcz>
     44a:	48 ec       	ldi	r20, 0xC8	; 200
     44c:	50 e0       	ldi	r21, 0x00	; 0
     44e:	64 ea       	ldi	r22, 0xA4	; 164
     450:	70 e0       	ldi	r23, 0x00	; 0
     452:	8e e0       	ldi	r24, 0x0E	; 14
     454:	91 e0       	ldi	r25, 0x01	; 1
     456:	0e 94 8e 02 	call	0x51c	; 0x51c <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     45a:	0f 90       	pop	r0
     45c:	0f 90       	pop	r0
     45e:	0f 90       	pop	r0
     460:	0f 90       	pop	r0
     462:	b3 9b       	sbis	0x16, 3	; 22
     464:	07 c0       	rjmp	.+14     	; 0x474 <__stack+0x15>
     466:	b2 9b       	sbis	0x16, 2	; 22
     468:	05 c0       	rjmp	.+10     	; 0x474 <__stack+0x15>
     46a:	8e e0       	ldi	r24, 0x0E	; 14
     46c:	91 e0       	ldi	r25, 0x01	; 1
     46e:	0e 94 b0 02 	call	0x560	; 0x560 <_ZN8CRTTimer4mainEv>
     472:	f7 cf       	rjmp	.-18     	; 0x462 <__stack+0x3>
     474:	66 b3       	in	r22, 0x16	; 22
     476:	63 fb       	bst	r22, 3
     478:	66 27       	eor	r22, r22
     47a:	60 f9       	bld	r22, 0
     47c:	81 e0       	ldi	r24, 0x01	; 1
     47e:	68 27       	eor	r22, r24
     480:	89 ea       	ldi	r24, 0xA9	; 169
     482:	90 e0       	ldi	r25, 0x00	; 0
     484:	0e 94 70 01 	call	0x2e0	; 0x2e0 <_ZN16CStabilityKernel4initEb>
     488:	4a e0       	ldi	r20, 0x0A	; 10
     48a:	50 e0       	ldi	r21, 0x00	; 0
     48c:	69 ea       	ldi	r22, 0xA9	; 169
     48e:	70 e0       	ldi	r23, 0x00	; 0
     490:	8e e0       	ldi	r24, 0x0E	; 14
     492:	91 e0       	ldi	r25, 0x01	; 1
     494:	0e 94 8e 02 	call	0x51c	; 0x51c <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     498:	8e e0       	ldi	r24, 0x0E	; 14
     49a:	91 e0       	ldi	r25, 0x01	; 1
     49c:	0e 94 b0 02 	call	0x560	; 0x560 <_ZN8CRTTimer4mainEv>
     4a0:	fb cf       	rjmp	.-10     	; 0x498 <__stack+0x39>

000004a2 <_GLOBAL__sub_I_stability_kernel>:
     4a2:	89 ea       	ldi	r24, 0xA9	; 169
     4a4:	90 e0       	ldi	r25, 0x00	; 0
     4a6:	0e 94 5c 01 	call	0x2b8	; 0x2b8 <_ZN16CStabilityKernelC1Ev>
     4aa:	e4 ea       	ldi	r30, 0xA4	; 164
     4ac:	f0 e0       	ldi	r31, 0x00	; 0
     4ae:	86 e8       	ldi	r24, 0x86	; 134
     4b0:	90 e0       	ldi	r25, 0x00	; 0
     4b2:	91 83       	std	Z+1, r25	; 0x01
     4b4:	80 83       	st	Z, r24
     4b6:	d5 9a       	sbi	0x1a, 5	; 26
     4b8:	14 82       	std	Z+4, r1	; 0x04
     4ba:	13 82       	std	Z+3, r1	; 0x03
     4bc:	08 95       	ret

000004be <_GLOBAL__sub_D_stability_kernel>:
     4be:	89 ea       	ldi	r24, 0xA9	; 169
     4c0:	90 e0       	ldi	r25, 0x00	; 0
     4c2:	0c 94 5b 00 	jmp	0xb6	; 0xb6 <_ZN16CStabilityKernelD1Ev>

000004c6 <_ZN6CUSARTC1Ev>:
     4c6:	10 bc       	out	0x20, r1	; 32
     4c8:	80 e4       	ldi	r24, 0x40	; 64
     4ca:	89 b9       	out	0x09, r24	; 9
     4cc:	80 b5       	in	r24, 0x20	; 32
     4ce:	86 68       	ori	r24, 0x86	; 134
     4d0:	80 bd       	out	0x20, r24	; 32
     4d2:	8a b1       	in	r24, 0x0a	; 10
     4d4:	88 61       	ori	r24, 0x18	; 24
     4d6:	8a b9       	out	0x0a, r24	; 10
     4d8:	08 95       	ret

000004da <_ZN6CUSARTD1Ev>:
     4da:	08 95       	ret

000004dc <_ZN6CUSART7putcharEc>:
     4dc:	6c b9       	out	0x0c, r22	; 12
     4de:	5d 99       	sbic	0x0b, 5	; 11
     4e0:	02 c0       	rjmp	.+4      	; 0x4e6 <_ZN6CUSART7putcharEc+0xa>
     4e2:	00 00       	nop
     4e4:	fc cf       	rjmp	.-8      	; 0x4de <_ZN6CUSART7putcharEc+0x2>
     4e6:	08 95       	ret

000004e8 <_ZN8CRTTimerC1Ev>:
     4e8:	ef e0       	ldi	r30, 0x0F	; 15
     4ea:	f1 e0       	ldi	r31, 0x01	; 1
     4ec:	11 82       	std	Z+1, r1	; 0x01
     4ee:	10 82       	st	Z, r1
     4f0:	13 82       	std	Z+3, r1	; 0x03
     4f2:	12 82       	std	Z+2, r1	; 0x02
     4f4:	15 82       	std	Z+5, r1	; 0x05
     4f6:	14 82       	std	Z+4, r1	; 0x04
     4f8:	16 82       	std	Z+6, r1	; 0x06
     4fa:	37 96       	adiw	r30, 0x07	; 7
     4fc:	81 e0       	ldi	r24, 0x01	; 1
     4fe:	e7 34       	cpi	r30, 0x47	; 71
     500:	f8 07       	cpc	r31, r24
     502:	a1 f7       	brne	.-24     	; 0x4ec <_ZN8CRTTimerC1Ev+0x4>
     504:	83 b7       	in	r24, 0x33	; 51
     506:	88 60       	ori	r24, 0x08	; 8
     508:	83 bf       	out	0x33, r24	; 51
     50a:	8b e9       	ldi	r24, 0x9B	; 155
     50c:	8c bf       	out	0x3c, r24	; 60
     50e:	83 e0       	ldi	r24, 0x03	; 3
     510:	83 bf       	out	0x33, r24	; 51
     512:	89 b7       	in	r24, 0x39	; 57
     514:	82 60       	ori	r24, 0x02	; 2
     516:	89 bf       	out	0x39, r24	; 57
     518:	78 94       	sei
     51a:	08 95       	ret

0000051c <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>:
     51c:	f8 94       	cli
     51e:	ef e0       	ldi	r30, 0x0F	; 15
     520:	f1 e0       	ldi	r31, 0x01	; 1
     522:	80 e0       	ldi	r24, 0x00	; 0
     524:	90 e0       	ldi	r25, 0x00	; 0
     526:	20 81       	ld	r18, Z
     528:	31 81       	ldd	r19, Z+1	; 0x01
     52a:	23 2b       	or	r18, r19
     52c:	81 f4       	brne	.+32     	; 0x54e <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x32>
     52e:	27 e0       	ldi	r18, 0x07	; 7
     530:	28 9f       	mul	r18, r24
     532:	f0 01       	movw	r30, r0
     534:	29 9f       	mul	r18, r25
     536:	f0 0d       	add	r31, r0
     538:	11 24       	eor	r1, r1
     53a:	e1 5f       	subi	r30, 0xF1	; 241
     53c:	fe 4f       	sbci	r31, 0xFE	; 254
     53e:	71 83       	std	Z+1, r23	; 0x01
     540:	60 83       	st	Z, r22
     542:	53 83       	std	Z+3, r21	; 0x03
     544:	42 83       	std	Z+2, r20	; 0x02
     546:	55 83       	std	Z+5, r21	; 0x05
     548:	44 83       	std	Z+4, r20	; 0x04
     54a:	16 82       	std	Z+6, r1	; 0x06
     54c:	07 c0       	rjmp	.+14     	; 0x55c <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x40>
     54e:	01 96       	adiw	r24, 0x01	; 1
     550:	37 96       	adiw	r30, 0x07	; 7
     552:	88 30       	cpi	r24, 0x08	; 8
     554:	91 05       	cpc	r25, r1
     556:	39 f7       	brne	.-50     	; 0x526 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0xa>
     558:	8f ef       	ldi	r24, 0xFF	; 255
     55a:	9f ef       	ldi	r25, 0xFF	; 255
     55c:	78 94       	sei
     55e:	08 95       	ret

00000560 <_ZN8CRTTimer4mainEv>:
     560:	cf 93       	push	r28
     562:	df 93       	push	r29
     564:	c5 e1       	ldi	r28, 0x15	; 21
     566:	d1 e0       	ldi	r29, 0x01	; 1
     568:	fe 01       	movw	r30, r28
     56a:	36 97       	sbiw	r30, 0x06	; 6
     56c:	80 81       	ld	r24, Z
     56e:	91 81       	ldd	r25, Z+1	; 0x01
     570:	00 97       	sbiw	r24, 0x00	; 0
     572:	59 f0       	breq	.+22     	; 0x58a <_ZN8CRTTimer4mainEv+0x2a>
     574:	28 81       	ld	r18, Y
     576:	22 23       	and	r18, r18
     578:	41 f0       	breq	.+16     	; 0x58a <_ZN8CRTTimer4mainEv+0x2a>
     57a:	18 82       	st	Y, r1
     57c:	dc 01       	movw	r26, r24
     57e:	ed 91       	ld	r30, X+
     580:	fc 91       	ld	r31, X
     582:	04 80       	ldd	r0, Z+4	; 0x04
     584:	f5 81       	ldd	r31, Z+5	; 0x05
     586:	e0 2d       	mov	r30, r0
     588:	09 95       	icall
     58a:	27 96       	adiw	r28, 0x07	; 7
     58c:	b1 e0       	ldi	r27, 0x01	; 1
     58e:	cd 34       	cpi	r28, 0x4D	; 77
     590:	db 07       	cpc	r29, r27
     592:	51 f7       	brne	.-44     	; 0x568 <_ZN8CRTTimer4mainEv+0x8>
     594:	df 91       	pop	r29
     596:	cf 91       	pop	r28
     598:	08 95       	ret

0000059a <__vector_19>:
     59a:	1f 92       	push	r1
     59c:	0f 92       	push	r0
     59e:	0f b6       	in	r0, 0x3f	; 63
     5a0:	0f 92       	push	r0
     5a2:	11 24       	eor	r1, r1
     5a4:	8f 93       	push	r24
     5a6:	9f 93       	push	r25
     5a8:	af 93       	push	r26
     5aa:	bf 93       	push	r27
     5ac:	ef 93       	push	r30
     5ae:	ff 93       	push	r31
     5b0:	ef e0       	ldi	r30, 0x0F	; 15
     5b2:	f1 e0       	ldi	r31, 0x01	; 1
     5b4:	a5 e1       	ldi	r26, 0x15	; 21
     5b6:	b1 e0       	ldi	r27, 0x01	; 1
     5b8:	84 81       	ldd	r24, Z+4	; 0x04
     5ba:	95 81       	ldd	r25, Z+5	; 0x05
     5bc:	00 97       	sbiw	r24, 0x00	; 0
     5be:	21 f0       	breq	.+8      	; 0x5c8 <__vector_19+0x2e>
     5c0:	01 97       	sbiw	r24, 0x01	; 1
     5c2:	95 83       	std	Z+5, r25	; 0x05
     5c4:	84 83       	std	Z+4, r24	; 0x04
     5c6:	09 c0       	rjmp	.+18     	; 0x5da <__vector_19+0x40>
     5c8:	82 81       	ldd	r24, Z+2	; 0x02
     5ca:	93 81       	ldd	r25, Z+3	; 0x03
     5cc:	95 83       	std	Z+5, r25	; 0x05
     5ce:	84 83       	std	Z+4, r24	; 0x04
     5d0:	8c 91       	ld	r24, X
     5d2:	8f 3f       	cpi	r24, 0xFF	; 255
     5d4:	11 f0       	breq	.+4      	; 0x5da <__vector_19+0x40>
     5d6:	8f 5f       	subi	r24, 0xFF	; 255
     5d8:	8c 93       	st	X, r24
     5da:	37 96       	adiw	r30, 0x07	; 7
     5dc:	17 96       	adiw	r26, 0x07	; 7
     5de:	81 e0       	ldi	r24, 0x01	; 1
     5e0:	e7 34       	cpi	r30, 0x47	; 71
     5e2:	f8 07       	cpc	r31, r24
     5e4:	49 f7       	brne	.-46     	; 0x5b8 <__vector_19+0x1e>
     5e6:	80 91 47 01 	lds	r24, 0x0147
     5ea:	90 91 48 01 	lds	r25, 0x0148
     5ee:	a0 91 49 01 	lds	r26, 0x0149
     5f2:	b0 91 4a 01 	lds	r27, 0x014A
     5f6:	01 96       	adiw	r24, 0x01	; 1
     5f8:	a1 1d       	adc	r26, r1
     5fa:	b1 1d       	adc	r27, r1
     5fc:	80 93 47 01 	sts	0x0147, r24
     600:	90 93 48 01 	sts	0x0148, r25
     604:	a0 93 49 01 	sts	0x0149, r26
     608:	b0 93 4a 01 	sts	0x014A, r27
     60c:	ff 91       	pop	r31
     60e:	ef 91       	pop	r30
     610:	bf 91       	pop	r27
     612:	af 91       	pop	r26
     614:	9f 91       	pop	r25
     616:	8f 91       	pop	r24
     618:	0f 90       	pop	r0
     61a:	0f be       	out	0x3f, r0	; 63
     61c:	0f 90       	pop	r0
     61e:	1f 90       	pop	r1
     620:	18 95       	reti

00000622 <_GLOBAL__sub_I_g_rt_time>:
     622:	8e e0       	ldi	r24, 0x0E	; 14
     624:	91 e0       	ldi	r25, 0x01	; 1
     626:	0c 94 74 02 	jmp	0x4e8	; 0x4e8 <_ZN8CRTTimerC1Ev>

0000062a <_ZN6CMotorC1Ev>:
     62a:	80 ef       	ldi	r24, 0xF0	; 240
     62c:	81 bb       	out	0x11, r24	; 17
     62e:	95 98       	cbi	0x12, 5	; 18
     630:	81 ea       	ldi	r24, 0xA1	; 161
     632:	8f bd       	out	0x2f, r24	; 47
     634:	81 e0       	ldi	r24, 0x01	; 1
     636:	8e bd       	out	0x2e, r24	; 46
     638:	1b bc       	out	0x2b, r1	; 43
     63a:	1a bc       	out	0x2a, r1	; 42
     63c:	19 bc       	out	0x29, r1	; 41
     63e:	18 bc       	out	0x28, r1	; 40
     640:	08 95       	ret

00000642 <_ZN6CMotorD1Ev>:
     642:	08 95       	ret

00000644 <_ZN6CMotor3runEii>:
     644:	6f 3f       	cpi	r22, 0xFF	; 255
     646:	71 05       	cpc	r23, r1
     648:	09 f0       	breq	.+2      	; 0x64c <_ZN6CMotor3runEii+0x8>
     64a:	3c f4       	brge	.+14     	; 0x65a <_ZN6CMotor3runEii+0x16>
     64c:	61 30       	cpi	r22, 0x01	; 1
     64e:	8f ef       	ldi	r24, 0xFF	; 255
     650:	78 07       	cpc	r23, r24
     652:	2c f4       	brge	.+10     	; 0x65e <_ZN6CMotor3runEii+0x1a>
     654:	61 e0       	ldi	r22, 0x01	; 1
     656:	7f ef       	ldi	r23, 0xFF	; 255
     658:	02 c0       	rjmp	.+4      	; 0x65e <_ZN6CMotor3runEii+0x1a>
     65a:	6f ef       	ldi	r22, 0xFF	; 255
     65c:	70 e0       	ldi	r23, 0x00	; 0
     65e:	4f 3f       	cpi	r20, 0xFF	; 255
     660:	51 05       	cpc	r21, r1
     662:	09 f0       	breq	.+2      	; 0x666 <_ZN6CMotor3runEii+0x22>
     664:	44 f4       	brge	.+16     	; 0x676 <_ZN6CMotor3runEii+0x32>
     666:	41 30       	cpi	r20, 0x01	; 1
     668:	8f ef       	ldi	r24, 0xFF	; 255
     66a:	58 07       	cpc	r21, r24
     66c:	6c f0       	brlt	.+26     	; 0x688 <_ZN6CMotor3runEii+0x44>
     66e:	14 16       	cp	r1, r20
     670:	15 06       	cpc	r1, r21
     672:	1c f0       	brlt	.+6      	; 0x67a <_ZN6CMotor3runEii+0x36>
     674:	05 c0       	rjmp	.+10     	; 0x680 <_ZN6CMotor3runEii+0x3c>
     676:	4f ef       	ldi	r20, 0xFF	; 255
     678:	50 e0       	ldi	r21, 0x00	; 0
     67a:	4a bd       	out	0x2a, r20	; 42
     67c:	96 9a       	sbi	0x12, 6	; 18
     67e:	0b c0       	rjmp	.+22     	; 0x696 <_ZN6CMotor3runEii+0x52>
     680:	41 15       	cp	r20, r1
     682:	51 05       	cpc	r21, r1
     684:	39 f0       	breq	.+14     	; 0x694 <_ZN6CMotor3runEii+0x50>
     686:	02 c0       	rjmp	.+4      	; 0x68c <_ZN6CMotor3runEii+0x48>
     688:	41 e0       	ldi	r20, 0x01	; 1
     68a:	5f ef       	ldi	r21, 0xFF	; 255
     68c:	41 95       	neg	r20
     68e:	4a bd       	out	0x2a, r20	; 42
     690:	96 98       	cbi	0x12, 6	; 18
     692:	01 c0       	rjmp	.+2      	; 0x696 <_ZN6CMotor3runEii+0x52>
     694:	1a bc       	out	0x2a, r1	; 42
     696:	16 16       	cp	r1, r22
     698:	17 06       	cpc	r1, r23
     69a:	1c f4       	brge	.+6      	; 0x6a2 <_ZN6CMotor3runEii+0x5e>
     69c:	68 bd       	out	0x28, r22	; 40
     69e:	97 98       	cbi	0x12, 7	; 18
     6a0:	08 95       	ret
     6a2:	61 15       	cp	r22, r1
     6a4:	71 05       	cpc	r23, r1
     6a6:	21 f0       	breq	.+8      	; 0x6b0 <_ZN6CMotor3runEii+0x6c>
     6a8:	61 95       	neg	r22
     6aa:	68 bd       	out	0x28, r22	; 40
     6ac:	97 9a       	sbi	0x12, 7	; 18
     6ae:	08 95       	ret
     6b0:	18 bc       	out	0x28, r1	; 40
     6b2:	08 95       	ret

000006b4 <_ZN5CGyroC1Ev>:
     6b4:	08 95       	ret

000006b6 <_ZN5CGyroD1Ev>:
     6b6:	08 95       	ret

000006b8 <_ZN5CGyro4readEb>:
     6b8:	4f 92       	push	r4
     6ba:	5f 92       	push	r5
     6bc:	6f 92       	push	r6
     6be:	7f 92       	push	r7
     6c0:	8f 92       	push	r8
     6c2:	9f 92       	push	r9
     6c4:	af 92       	push	r10
     6c6:	bf 92       	push	r11
     6c8:	cf 92       	push	r12
     6ca:	df 92       	push	r13
     6cc:	ef 92       	push	r14
     6ce:	ff 92       	push	r15
     6d0:	0f 93       	push	r16
     6d2:	1f 93       	push	r17
     6d4:	cf 93       	push	r28
     6d6:	df 93       	push	r29
     6d8:	ec 01       	movw	r28, r24
     6da:	f6 2e       	mov	r15, r22
     6dc:	88 ad       	ldd	r24, Y+56	; 0x38
     6de:	99 ad       	ldd	r25, Y+57	; 0x39
     6e0:	dc 01       	movw	r26, r24
     6e2:	ed 91       	ld	r30, X+
     6e4:	fc 91       	ld	r31, X
     6e6:	06 84       	ldd	r0, Z+14	; 0x0e
     6e8:	f7 85       	ldd	r31, Z+15	; 0x0f
     6ea:	e0 2d       	mov	r30, r0
     6ec:	4f e0       	ldi	r20, 0x0F	; 15
     6ee:	66 ed       	ldi	r22, 0xD6	; 214
     6f0:	09 95       	icall
     6f2:	88 36       	cpi	r24, 0x68	; 104
     6f4:	49 f4       	brne	.+18     	; 0x708 <_ZN5CGyro4readEb+0x50>
     6f6:	81 e0       	ldi	r24, 0x01	; 1
     6f8:	90 e0       	ldi	r25, 0x00	; 0
     6fa:	a0 e0       	ldi	r26, 0x00	; 0
     6fc:	b0 e0       	ldi	r27, 0x00	; 0
     6fe:	88 ab       	std	Y+48, r24	; 0x30
     700:	99 ab       	std	Y+49, r25	; 0x31
     702:	aa ab       	std	Y+50, r26	; 0x32
     704:	bb ab       	std	Y+51, r27	; 0x33
     706:	04 c0       	rjmp	.+8      	; 0x710 <_ZN5CGyro4readEb+0x58>
     708:	18 aa       	std	Y+48, r1	; 0x30
     70a:	19 aa       	std	Y+49, r1	; 0x31
     70c:	1a aa       	std	Y+50, r1	; 0x32
     70e:	1b aa       	std	Y+51, r1	; 0x33
     710:	88 ad       	ldd	r24, Y+56	; 0x38
     712:	99 ad       	ldd	r25, Y+57	; 0x39
     714:	dc 01       	movw	r26, r24
     716:	ed 91       	ld	r30, X+
     718:	fc 91       	ld	r31, X
     71a:	06 84       	ldd	r0, Z+14	; 0x0e
     71c:	f7 85       	ldd	r31, Z+15	; 0x0f
     71e:	e0 2d       	mov	r30, r0
     720:	49 e1       	ldi	r20, 0x19	; 25
     722:	66 ed       	ldi	r22, 0xD6	; 214
     724:	09 95       	icall
     726:	a8 2e       	mov	r10, r24
     728:	b1 2c       	mov	r11, r1
     72a:	ba 2c       	mov	r11, r10
     72c:	aa 24       	eor	r10, r10
     72e:	88 ad       	ldd	r24, Y+56	; 0x38
     730:	99 ad       	ldd	r25, Y+57	; 0x39
     732:	dc 01       	movw	r26, r24
     734:	ed 91       	ld	r30, X+
     736:	fc 91       	ld	r31, X
     738:	06 84       	ldd	r0, Z+14	; 0x0e
     73a:	f7 85       	ldd	r31, Z+15	; 0x0f
     73c:	e0 2d       	mov	r30, r0
     73e:	48 e1       	ldi	r20, 0x18	; 24
     740:	66 ed       	ldi	r22, 0xD6	; 214
     742:	09 95       	icall
     744:	a8 2a       	or	r10, r24
     746:	88 ad       	ldd	r24, Y+56	; 0x38
     748:	99 ad       	ldd	r25, Y+57	; 0x39
     74a:	dc 01       	movw	r26, r24
     74c:	ed 91       	ld	r30, X+
     74e:	fc 91       	ld	r31, X
     750:	06 84       	ldd	r0, Z+14	; 0x0e
     752:	f7 85       	ldd	r31, Z+15	; 0x0f
     754:	e0 2d       	mov	r30, r0
     756:	4b e1       	ldi	r20, 0x1B	; 27
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
     774:	4a e1       	ldi	r20, 0x1A	; 26
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
     78c:	4d e1       	ldi	r20, 0x1D	; 29
     78e:	66 ed       	ldi	r22, 0xD6	; 214
     790:	09 95       	icall
     792:	c8 2e       	mov	r12, r24
     794:	d1 2c       	mov	r13, r1
     796:	dc 2c       	mov	r13, r12
     798:	cc 24       	eor	r12, r12
     79a:	88 ad       	ldd	r24, Y+56	; 0x38
     79c:	99 ad       	ldd	r25, Y+57	; 0x39
     79e:	dc 01       	movw	r26, r24
     7a0:	ed 91       	ld	r30, X+
     7a2:	fc 91       	ld	r31, X
     7a4:	06 84       	ldd	r0, Z+14	; 0x0e
     7a6:	f7 85       	ldd	r31, Z+15	; 0x0f
     7a8:	e0 2d       	mov	r30, r0
     7aa:	4c e1       	ldi	r20, 0x1C	; 28
     7ac:	66 ed       	ldi	r22, 0xD6	; 214
     7ae:	09 95       	icall
     7b0:	c8 2a       	or	r12, r24
     7b2:	c5 01       	movw	r24, r10
     7b4:	bb 0c       	add	r11, r11
     7b6:	aa 0b       	sbc	r26, r26
     7b8:	bb 0b       	sbc	r27, r27
     7ba:	01 2e       	mov	r0, r17
     7bc:	00 0c       	add	r0, r0
     7be:	22 0b       	sbc	r18, r18
     7c0:	33 0b       	sbc	r19, r19
     7c2:	46 01       	movw	r8, r12
     7c4:	dd 0c       	add	r13, r13
     7c6:	aa 08       	sbc	r10, r10
     7c8:	bb 08       	sbc	r11, r11
     7ca:	ff 20       	and	r15, r15
     7cc:	21 f1       	breq	.+72     	; 0x816 <_ZN5CGyro4readEb+0x15e>
     7ce:	cc a0       	ldd	r12, Y+36	; 0x24
     7d0:	dd a0       	ldd	r13, Y+37	; 0x25
     7d2:	ee a0       	ldd	r14, Y+38	; 0x26
     7d4:	ff a0       	ldd	r15, Y+39	; 0x27
     7d6:	c8 0e       	add	r12, r24
     7d8:	d9 1e       	adc	r13, r25
     7da:	ea 1e       	adc	r14, r26
     7dc:	fb 1e       	adc	r15, r27
     7de:	cc a2       	std	Y+36, r12	; 0x24
     7e0:	dd a2       	std	Y+37, r13	; 0x25
     7e2:	ee a2       	std	Y+38, r14	; 0x26
     7e4:	ff a2       	std	Y+39, r15	; 0x27
     7e6:	c8 a4       	ldd	r12, Y+40	; 0x28
     7e8:	d9 a4       	ldd	r13, Y+41	; 0x29
     7ea:	ea a4       	ldd	r14, Y+42	; 0x2a
     7ec:	fb a4       	ldd	r15, Y+43	; 0x2b
     7ee:	c0 0e       	add	r12, r16
     7f0:	d1 1e       	adc	r13, r17
     7f2:	e2 1e       	adc	r14, r18
     7f4:	f3 1e       	adc	r15, r19
     7f6:	c8 a6       	std	Y+40, r12	; 0x28
     7f8:	d9 a6       	std	Y+41, r13	; 0x29
     7fa:	ea a6       	std	Y+42, r14	; 0x2a
     7fc:	fb a6       	std	Y+43, r15	; 0x2b
     7fe:	cc a4       	ldd	r12, Y+44	; 0x2c
     800:	dd a4       	ldd	r13, Y+45	; 0x2d
     802:	ee a4       	ldd	r14, Y+46	; 0x2e
     804:	ff a4       	ldd	r15, Y+47	; 0x2f
     806:	c8 0c       	add	r12, r8
     808:	d9 1c       	adc	r13, r9
     80a:	ea 1c       	adc	r14, r10
     80c:	fb 1c       	adc	r15, r11
     80e:	cc a6       	std	Y+44, r12	; 0x2c
     810:	dd a6       	std	Y+45, r13	; 0x2d
     812:	ee a6       	std	Y+46, r14	; 0x2e
     814:	ff a6       	std	Y+47, r15	; 0x2f
     816:	cc a0       	ldd	r12, Y+36	; 0x24
     818:	dd a0       	ldd	r13, Y+37	; 0x25
     81a:	ee a0       	ldd	r14, Y+38	; 0x26
     81c:	ff a0       	ldd	r15, Y+39	; 0x27
     81e:	bc 01       	movw	r22, r24
     820:	cd 01       	movw	r24, r26
     822:	6c 19       	sub	r22, r12
     824:	7d 09       	sbc	r23, r13
     826:	8e 09       	sbc	r24, r14
     828:	9f 09       	sbc	r25, r15
     82a:	6c 87       	std	Y+12, r22	; 0x0c
     82c:	7d 87       	std	Y+13, r23	; 0x0d
     82e:	8e 87       	std	Y+14, r24	; 0x0e
     830:	9f 87       	std	Y+15, r25	; 0x0f
     832:	c8 a4       	ldd	r12, Y+40	; 0x28
     834:	d9 a4       	ldd	r13, Y+41	; 0x29
     836:	ea a4       	ldd	r14, Y+42	; 0x2a
     838:	fb a4       	ldd	r15, Y+43	; 0x2b
     83a:	28 01       	movw	r4, r16
     83c:	39 01       	movw	r6, r18
     83e:	4c 18       	sub	r4, r12
     840:	5d 08       	sbc	r5, r13
     842:	6e 08       	sbc	r6, r14
     844:	7f 08       	sbc	r7, r15
     846:	48 8a       	std	Y+16, r4	; 0x10
     848:	59 8a       	std	Y+17, r5	; 0x11
     84a:	6a 8a       	std	Y+18, r6	; 0x12
     84c:	7b 8a       	std	Y+19, r7	; 0x13
     84e:	0c a5       	ldd	r16, Y+44	; 0x2c
     850:	1d a5       	ldd	r17, Y+45	; 0x2d
     852:	2e a5       	ldd	r18, Y+46	; 0x2e
     854:	3f a5       	ldd	r19, Y+47	; 0x2f
     856:	75 01       	movw	r14, r10
     858:	64 01       	movw	r12, r8
     85a:	c0 1a       	sub	r12, r16
     85c:	d1 0a       	sbc	r13, r17
     85e:	e2 0a       	sbc	r14, r18
     860:	f3 0a       	sbc	r15, r19
     862:	cc 8a       	std	Y+20, r12	; 0x14
     864:	dd 8a       	std	Y+21, r13	; 0x15
     866:	ee 8a       	std	Y+22, r14	; 0x16
     868:	ff 8a       	std	Y+23, r15	; 0x17
     86a:	29 e1       	ldi	r18, 0x19	; 25
     86c:	82 2e       	mov	r8, r18
     86e:	91 2c       	mov	r9, r1
     870:	a1 2c       	mov	r10, r1
     872:	b1 2c       	mov	r11, r1
     874:	a5 01       	movw	r20, r10
     876:	94 01       	movw	r18, r8
     878:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     87c:	88 8d       	ldd	r24, Y+24	; 0x18
     87e:	99 8d       	ldd	r25, Y+25	; 0x19
     880:	aa 8d       	ldd	r26, Y+26	; 0x1a
     882:	bb 8d       	ldd	r27, Y+27	; 0x1b
     884:	82 0f       	add	r24, r18
     886:	93 1f       	adc	r25, r19
     888:	a4 1f       	adc	r26, r20
     88a:	b5 1f       	adc	r27, r21
     88c:	88 8f       	std	Y+24, r24	; 0x18
     88e:	99 8f       	std	Y+25, r25	; 0x19
     890:	aa 8f       	std	Y+26, r26	; 0x1a
     892:	bb 8f       	std	Y+27, r27	; 0x1b
     894:	c3 01       	movw	r24, r6
     896:	b2 01       	movw	r22, r4
     898:	a5 01       	movw	r20, r10
     89a:	94 01       	movw	r18, r8
     89c:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     8a0:	8c 8d       	ldd	r24, Y+28	; 0x1c
     8a2:	9d 8d       	ldd	r25, Y+29	; 0x1d
     8a4:	ae 8d       	ldd	r26, Y+30	; 0x1e
     8a6:	bf 8d       	ldd	r27, Y+31	; 0x1f
     8a8:	82 0f       	add	r24, r18
     8aa:	93 1f       	adc	r25, r19
     8ac:	a4 1f       	adc	r26, r20
     8ae:	b5 1f       	adc	r27, r21
     8b0:	8c 8f       	std	Y+28, r24	; 0x1c
     8b2:	9d 8f       	std	Y+29, r25	; 0x1d
     8b4:	ae 8f       	std	Y+30, r26	; 0x1e
     8b6:	bf 8f       	std	Y+31, r27	; 0x1f
     8b8:	c7 01       	movw	r24, r14
     8ba:	b6 01       	movw	r22, r12
     8bc:	a5 01       	movw	r20, r10
     8be:	94 01       	movw	r18, r8
     8c0:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     8c4:	88 a1       	ldd	r24, Y+32	; 0x20
     8c6:	99 a1       	ldd	r25, Y+33	; 0x21
     8c8:	aa a1       	ldd	r26, Y+34	; 0x22
     8ca:	bb a1       	ldd	r27, Y+35	; 0x23
     8cc:	82 0f       	add	r24, r18
     8ce:	93 1f       	adc	r25, r19
     8d0:	a4 1f       	adc	r26, r20
     8d2:	b5 1f       	adc	r27, r21
     8d4:	88 a3       	std	Y+32, r24	; 0x20
     8d6:	99 a3       	std	Y+33, r25	; 0x21
     8d8:	aa a3       	std	Y+34, r26	; 0x22
     8da:	bb a3       	std	Y+35, r27	; 0x23
     8dc:	88 ad       	ldd	r24, Y+56	; 0x38
     8de:	99 ad       	ldd	r25, Y+57	; 0x39
     8e0:	dc 01       	movw	r26, r24
     8e2:	ed 91       	ld	r30, X+
     8e4:	fc 91       	ld	r31, X
     8e6:	06 84       	ldd	r0, Z+14	; 0x0e
     8e8:	f7 85       	ldd	r31, Z+15	; 0x0f
     8ea:	e0 2d       	mov	r30, r0
     8ec:	49 e2       	ldi	r20, 0x29	; 41
     8ee:	66 ed       	ldi	r22, 0xD6	; 214
     8f0:	09 95       	icall
     8f2:	08 2f       	mov	r16, r24
     8f4:	10 e0       	ldi	r17, 0x00	; 0
     8f6:	10 2f       	mov	r17, r16
     8f8:	00 27       	eor	r16, r16
     8fa:	88 ad       	ldd	r24, Y+56	; 0x38
     8fc:	99 ad       	ldd	r25, Y+57	; 0x39
     8fe:	dc 01       	movw	r26, r24
     900:	ed 91       	ld	r30, X+
     902:	fc 91       	ld	r31, X
     904:	06 84       	ldd	r0, Z+14	; 0x0e
     906:	f7 85       	ldd	r31, Z+15	; 0x0f
     908:	e0 2d       	mov	r30, r0
     90a:	48 e2       	ldi	r20, 0x28	; 40
     90c:	66 ed       	ldi	r22, 0xD6	; 214
     90e:	09 95       	icall
     910:	68 01       	movw	r12, r16
     912:	c8 2a       	or	r12, r24
     914:	88 ad       	ldd	r24, Y+56	; 0x38
     916:	99 ad       	ldd	r25, Y+57	; 0x39
     918:	dc 01       	movw	r26, r24
     91a:	ed 91       	ld	r30, X+
     91c:	fc 91       	ld	r31, X
     91e:	06 84       	ldd	r0, Z+14	; 0x0e
     920:	f7 85       	ldd	r31, Z+15	; 0x0f
     922:	e0 2d       	mov	r30, r0
     924:	4b e2       	ldi	r20, 0x2B	; 43
     926:	66 ed       	ldi	r22, 0xD6	; 214
     928:	09 95       	icall
     92a:	08 2f       	mov	r16, r24
     92c:	10 e0       	ldi	r17, 0x00	; 0
     92e:	10 2f       	mov	r17, r16
     930:	00 27       	eor	r16, r16
     932:	88 ad       	ldd	r24, Y+56	; 0x38
     934:	99 ad       	ldd	r25, Y+57	; 0x39
     936:	dc 01       	movw	r26, r24
     938:	ed 91       	ld	r30, X+
     93a:	fc 91       	ld	r31, X
     93c:	06 84       	ldd	r0, Z+14	; 0x0e
     93e:	f7 85       	ldd	r31, Z+15	; 0x0f
     940:	e0 2d       	mov	r30, r0
     942:	4a e2       	ldi	r20, 0x2A	; 42
     944:	66 ed       	ldi	r22, 0xD6	; 214
     946:	09 95       	icall
     948:	08 2b       	or	r16, r24
     94a:	88 ad       	ldd	r24, Y+56	; 0x38
     94c:	99 ad       	ldd	r25, Y+57	; 0x39
     94e:	dc 01       	movw	r26, r24
     950:	ed 91       	ld	r30, X+
     952:	fc 91       	ld	r31, X
     954:	06 84       	ldd	r0, Z+14	; 0x0e
     956:	f7 85       	ldd	r31, Z+15	; 0x0f
     958:	e0 2d       	mov	r30, r0
     95a:	4d e2       	ldi	r20, 0x2D	; 45
     95c:	66 ed       	ldi	r22, 0xD6	; 214
     95e:	09 95       	icall
     960:	90 e0       	ldi	r25, 0x00	; 0
     962:	f8 2e       	mov	r15, r24
     964:	ee 24       	eor	r14, r14
     966:	88 ad       	ldd	r24, Y+56	; 0x38
     968:	99 ad       	ldd	r25, Y+57	; 0x39
     96a:	dc 01       	movw	r26, r24
     96c:	ed 91       	ld	r30, X+
     96e:	fc 91       	ld	r31, X
     970:	06 84       	ldd	r0, Z+14	; 0x0e
     972:	f7 85       	ldd	r31, Z+15	; 0x0f
     974:	e0 2d       	mov	r30, r0
     976:	4c e2       	ldi	r20, 0x2C	; 44
     978:	66 ed       	ldi	r22, 0xD6	; 214
     97a:	09 95       	icall
     97c:	a6 01       	movw	r20, r12
     97e:	dd 0c       	add	r13, r13
     980:	66 0b       	sbc	r22, r22
     982:	77 0b       	sbc	r23, r23
     984:	48 83       	st	Y, r20
     986:	59 83       	std	Y+1, r21	; 0x01
     988:	6a 83       	std	Y+2, r22	; 0x02
     98a:	7b 83       	std	Y+3, r23	; 0x03
     98c:	01 2e       	mov	r0, r17
     98e:	00 0c       	add	r0, r0
     990:	22 0b       	sbc	r18, r18
     992:	33 0b       	sbc	r19, r19
     994:	0c 83       	std	Y+4, r16	; 0x04
     996:	1d 83       	std	Y+5, r17	; 0x05
     998:	2e 83       	std	Y+6, r18	; 0x06
     99a:	3f 83       	std	Y+7, r19	; 0x07
     99c:	97 01       	movw	r18, r14
     99e:	28 2b       	or	r18, r24
     9a0:	c9 01       	movw	r24, r18
     9a2:	09 2e       	mov	r0, r25
     9a4:	00 0c       	add	r0, r0
     9a6:	aa 0b       	sbc	r26, r26
     9a8:	bb 0b       	sbc	r27, r27
     9aa:	88 87       	std	Y+8, r24	; 0x08
     9ac:	99 87       	std	Y+9, r25	; 0x09
     9ae:	aa 87       	std	Y+10, r26	; 0x0a
     9b0:	bb 87       	std	Y+11, r27	; 0x0b
     9b2:	df 91       	pop	r29
     9b4:	cf 91       	pop	r28
     9b6:	1f 91       	pop	r17
     9b8:	0f 91       	pop	r16
     9ba:	ff 90       	pop	r15
     9bc:	ef 90       	pop	r14
     9be:	df 90       	pop	r13
     9c0:	cf 90       	pop	r12
     9c2:	bf 90       	pop	r11
     9c4:	af 90       	pop	r10
     9c6:	9f 90       	pop	r9
     9c8:	8f 90       	pop	r8
     9ca:	7f 90       	pop	r7
     9cc:	6f 90       	pop	r6
     9ce:	5f 90       	pop	r5
     9d0:	4f 90       	pop	r4
     9d2:	08 95       	ret

000009d4 <_ZN5CGyro11delay_loopsEm>:
     9d4:	41 50       	subi	r20, 0x01	; 1
     9d6:	51 09       	sbc	r21, r1
     9d8:	61 09       	sbc	r22, r1
     9da:	71 09       	sbc	r23, r1
     9dc:	10 f0       	brcs	.+4      	; 0x9e2 <_ZN5CGyro11delay_loopsEm+0xe>
     9de:	00 00       	nop
     9e0:	f9 cf       	rjmp	.-14     	; 0x9d4 <_ZN5CGyro11delay_loopsEm>
     9e2:	08 95       	ret

000009e4 <_ZN5CGyro4initEP14CI2C_Interface>:
     9e4:	cf 92       	push	r12
     9e6:	df 92       	push	r13
     9e8:	ef 92       	push	r14
     9ea:	ff 92       	push	r15
     9ec:	cf 93       	push	r28
     9ee:	df 93       	push	r29
     9f0:	ec 01       	movw	r28, r24
     9f2:	79 af       	std	Y+57, r23	; 0x39
     9f4:	68 af       	std	Y+56, r22	; 0x38
     9f6:	1c 86       	std	Y+12, r1	; 0x0c
     9f8:	1d 86       	std	Y+13, r1	; 0x0d
     9fa:	1e 86       	std	Y+14, r1	; 0x0e
     9fc:	1f 86       	std	Y+15, r1	; 0x0f
     9fe:	18 8a       	std	Y+16, r1	; 0x10
     a00:	19 8a       	std	Y+17, r1	; 0x11
     a02:	1a 8a       	std	Y+18, r1	; 0x12
     a04:	1b 8a       	std	Y+19, r1	; 0x13
     a06:	1c 8a       	std	Y+20, r1	; 0x14
     a08:	1d 8a       	std	Y+21, r1	; 0x15
     a0a:	1e 8a       	std	Y+22, r1	; 0x16
     a0c:	1f 8a       	std	Y+23, r1	; 0x17
     a0e:	1c a2       	std	Y+36, r1	; 0x24
     a10:	1d a2       	std	Y+37, r1	; 0x25
     a12:	1e a2       	std	Y+38, r1	; 0x26
     a14:	1f a2       	std	Y+39, r1	; 0x27
     a16:	18 a6       	std	Y+40, r1	; 0x28
     a18:	19 a6       	std	Y+41, r1	; 0x29
     a1a:	1a a6       	std	Y+42, r1	; 0x2a
     a1c:	1b a6       	std	Y+43, r1	; 0x2b
     a1e:	1c a6       	std	Y+44, r1	; 0x2c
     a20:	1d a6       	std	Y+45, r1	; 0x2d
     a22:	1e a6       	std	Y+46, r1	; 0x2e
     a24:	1f a6       	std	Y+47, r1	; 0x2f
     a26:	18 8e       	std	Y+24, r1	; 0x18
     a28:	19 8e       	std	Y+25, r1	; 0x19
     a2a:	1a 8e       	std	Y+26, r1	; 0x1a
     a2c:	1b 8e       	std	Y+27, r1	; 0x1b
     a2e:	1c 8e       	std	Y+28, r1	; 0x1c
     a30:	1d 8e       	std	Y+29, r1	; 0x1d
     a32:	1e 8e       	std	Y+30, r1	; 0x1e
     a34:	1f 8e       	std	Y+31, r1	; 0x1f
     a36:	18 a2       	std	Y+32, r1	; 0x20
     a38:	19 a2       	std	Y+33, r1	; 0x21
     a3a:	1a a2       	std	Y+34, r1	; 0x22
     a3c:	1b a2       	std	Y+35, r1	; 0x23
     a3e:	40 e1       	ldi	r20, 0x10	; 16
     a40:	57 e2       	ldi	r21, 0x27	; 39
     a42:	60 e0       	ldi	r22, 0x00	; 0
     a44:	70 e0       	ldi	r23, 0x00	; 0
     a46:	0e 94 ea 04 	call	0x9d4	; 0x9d4 <_ZN5CGyro11delay_loopsEm>
     a4a:	18 aa       	std	Y+48, r1	; 0x30
     a4c:	19 aa       	std	Y+49, r1	; 0x31
     a4e:	1a aa       	std	Y+50, r1	; 0x32
     a50:	1b aa       	std	Y+51, r1	; 0x33
     a52:	88 ad       	ldd	r24, Y+56	; 0x38
     a54:	99 ad       	ldd	r25, Y+57	; 0x39
     a56:	dc 01       	movw	r26, r24
     a58:	ed 91       	ld	r30, X+
     a5a:	fc 91       	ld	r31, X
     a5c:	06 84       	ldd	r0, Z+14	; 0x0e
     a5e:	f7 85       	ldd	r31, Z+15	; 0x0f
     a60:	e0 2d       	mov	r30, r0
     a62:	4f e0       	ldi	r20, 0x0F	; 15
     a64:	66 ed       	ldi	r22, 0xD6	; 214
     a66:	09 95       	icall
     a68:	88 36       	cpi	r24, 0x68	; 104
     a6a:	41 f4       	brne	.+16     	; 0xa7c <_ZN5CGyro4initEP14CI2C_Interface+0x98>
     a6c:	81 e0       	ldi	r24, 0x01	; 1
     a6e:	90 e0       	ldi	r25, 0x00	; 0
     a70:	a0 e0       	ldi	r26, 0x00	; 0
     a72:	b0 e0       	ldi	r27, 0x00	; 0
     a74:	88 ab       	std	Y+48, r24	; 0x30
     a76:	99 ab       	std	Y+49, r25	; 0x31
     a78:	aa ab       	std	Y+50, r26	; 0x32
     a7a:	bb ab       	std	Y+51, r27	; 0x33
     a7c:	88 ad       	ldd	r24, Y+56	; 0x38
     a7e:	99 ad       	ldd	r25, Y+57	; 0x39
     a80:	dc 01       	movw	r26, r24
     a82:	ed 91       	ld	r30, X+
     a84:	fc 91       	ld	r31, X
     a86:	00 84       	ldd	r0, Z+8	; 0x08
     a88:	f1 85       	ldd	r31, Z+9	; 0x09
     a8a:	e0 2d       	mov	r30, r0
     a8c:	28 ea       	ldi	r18, 0xA8	; 168
     a8e:	40 e1       	ldi	r20, 0x10	; 16
     a90:	66 ed       	ldi	r22, 0xD6	; 214
     a92:	09 95       	icall
     a94:	88 ad       	ldd	r24, Y+56	; 0x38
     a96:	99 ad       	ldd	r25, Y+57	; 0x39
     a98:	dc 01       	movw	r26, r24
     a9a:	ed 91       	ld	r30, X+
     a9c:	fc 91       	ld	r31, X
     a9e:	00 84       	ldd	r0, Z+8	; 0x08
     aa0:	f1 85       	ldd	r31, Z+9	; 0x09
     aa2:	e0 2d       	mov	r30, r0
     aa4:	28 e3       	ldi	r18, 0x38	; 56
     aa6:	4e e1       	ldi	r20, 0x1E	; 30
     aa8:	66 ed       	ldi	r22, 0xD6	; 214
     aaa:	09 95       	icall
     aac:	88 ad       	ldd	r24, Y+56	; 0x38
     aae:	99 ad       	ldd	r25, Y+57	; 0x39
     ab0:	dc 01       	movw	r26, r24
     ab2:	ed 91       	ld	r30, X+
     ab4:	fc 91       	ld	r31, X
     ab6:	00 84       	ldd	r0, Z+8	; 0x08
     ab8:	f1 85       	ldd	r31, Z+9	; 0x09
     aba:	e0 2d       	mov	r30, r0
     abc:	20 e0       	ldi	r18, 0x00	; 0
     abe:	4e e2       	ldi	r20, 0x2E	; 46
     ac0:	66 ed       	ldi	r22, 0xD6	; 214
     ac2:	09 95       	icall
     ac4:	88 ad       	ldd	r24, Y+56	; 0x38
     ac6:	99 ad       	ldd	r25, Y+57	; 0x39
     ac8:	dc 01       	movw	r26, r24
     aca:	ed 91       	ld	r30, X+
     acc:	fc 91       	ld	r31, X
     ace:	00 84       	ldd	r0, Z+8	; 0x08
     ad0:	f1 85       	ldd	r31, Z+9	; 0x09
     ad2:	e0 2d       	mov	r30, r0
     ad4:	20 e0       	ldi	r18, 0x00	; 0
     ad6:	42 e1       	ldi	r20, 0x12	; 18
     ad8:	66 ed       	ldi	r22, 0xD6	; 214
     ada:	09 95       	icall
     adc:	88 ad       	ldd	r24, Y+56	; 0x38
     ade:	99 ad       	ldd	r25, Y+57	; 0x39
     ae0:	dc 01       	movw	r26, r24
     ae2:	ed 91       	ld	r30, X+
     ae4:	fc 91       	ld	r31, X
     ae6:	00 84       	ldd	r0, Z+8	; 0x08
     ae8:	f1 85       	ldd	r31, Z+9	; 0x09
     aea:	e0 2d       	mov	r30, r0
     aec:	20 e6       	ldi	r18, 0x60	; 96
     aee:	40 e2       	ldi	r20, 0x20	; 32
     af0:	66 ed       	ldi	r22, 0xD6	; 214
     af2:	09 95       	icall
     af4:	88 ad       	ldd	r24, Y+56	; 0x38
     af6:	99 ad       	ldd	r25, Y+57	; 0x39
     af8:	dc 01       	movw	r26, r24
     afa:	ed 91       	ld	r30, X+
     afc:	fc 91       	ld	r31, X
     afe:	00 84       	ldd	r0, Z+8	; 0x08
     b00:	f1 85       	ldd	r31, Z+9	; 0x09
     b02:	e0 2d       	mov	r30, r0
     b04:	28 e3       	ldi	r18, 0x38	; 56
     b06:	4f e1       	ldi	r20, 0x1F	; 31
     b08:	66 ed       	ldi	r22, 0xD6	; 214
     b0a:	09 95       	icall
     b0c:	40 e1       	ldi	r20, 0x10	; 16
     b0e:	57 e2       	ldi	r21, 0x27	; 39
     b10:	60 e0       	ldi	r22, 0x00	; 0
     b12:	70 e0       	ldi	r23, 0x00	; 0
     b14:	ce 01       	movw	r24, r28
     b16:	0e 94 ea 04 	call	0x9d4	; 0x9d4 <_ZN5CGyro11delay_loopsEm>
     b1a:	60 e0       	ldi	r22, 0x00	; 0
     b1c:	ce 01       	movw	r24, r28
     b1e:	0e 94 5c 03 	call	0x6b8	; 0x6b8 <_ZN5CGyro4readEb>
     b22:	1c aa       	std	Y+52, r1	; 0x34
     b24:	1d aa       	std	Y+53, r1	; 0x35
     b26:	1e aa       	std	Y+54, r1	; 0x36
     b28:	1f aa       	std	Y+55, r1	; 0x37
     b2a:	e1 2c       	mov	r14, r1
     b2c:	f1 2c       	mov	r15, r1
     b2e:	61 e0       	ldi	r22, 0x01	; 1
     b30:	ce 01       	movw	r24, r28
     b32:	0e 94 5c 03 	call	0x6b8	; 0x6b8 <_ZN5CGyro4readEb>
     b36:	48 ee       	ldi	r20, 0xE8	; 232
     b38:	53 e0       	ldi	r21, 0x03	; 3
     b3a:	60 e0       	ldi	r22, 0x00	; 0
     b3c:	70 e0       	ldi	r23, 0x00	; 0
     b3e:	ce 01       	movw	r24, r28
     b40:	0e 94 ea 04 	call	0x9d4	; 0x9d4 <_ZN5CGyro11delay_loopsEm>
     b44:	bf ef       	ldi	r27, 0xFF	; 255
     b46:	eb 1a       	sub	r14, r27
     b48:	fb 0a       	sbc	r15, r27
     b4a:	88 ec       	ldi	r24, 0xC8	; 200
     b4c:	e8 16       	cp	r14, r24
     b4e:	f1 04       	cpc	r15, r1
     b50:	71 f7       	brne	.-36     	; 0xb2e <_ZN5CGyro4initEP14CI2C_Interface+0x14a>
     b52:	6c a1       	ldd	r22, Y+36	; 0x24
     b54:	7d a1       	ldd	r23, Y+37	; 0x25
     b56:	8e a1       	ldd	r24, Y+38	; 0x26
     b58:	9f a1       	ldd	r25, Y+39	; 0x27
     b5a:	28 ec       	ldi	r18, 0xC8	; 200
     b5c:	c2 2e       	mov	r12, r18
     b5e:	d1 2c       	mov	r13, r1
     b60:	e1 2c       	mov	r14, r1
     b62:	f1 2c       	mov	r15, r1
     b64:	a7 01       	movw	r20, r14
     b66:	96 01       	movw	r18, r12
     b68:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     b6c:	2c a3       	std	Y+36, r18	; 0x24
     b6e:	3d a3       	std	Y+37, r19	; 0x25
     b70:	4e a3       	std	Y+38, r20	; 0x26
     b72:	5f a3       	std	Y+39, r21	; 0x27
     b74:	68 a5       	ldd	r22, Y+40	; 0x28
     b76:	79 a5       	ldd	r23, Y+41	; 0x29
     b78:	8a a5       	ldd	r24, Y+42	; 0x2a
     b7a:	9b a5       	ldd	r25, Y+43	; 0x2b
     b7c:	a7 01       	movw	r20, r14
     b7e:	96 01       	movw	r18, r12
     b80:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     b84:	28 a7       	std	Y+40, r18	; 0x28
     b86:	39 a7       	std	Y+41, r19	; 0x29
     b88:	4a a7       	std	Y+42, r20	; 0x2a
     b8a:	5b a7       	std	Y+43, r21	; 0x2b
     b8c:	6c a5       	ldd	r22, Y+44	; 0x2c
     b8e:	7d a5       	ldd	r23, Y+45	; 0x2d
     b90:	8e a5       	ldd	r24, Y+46	; 0x2e
     b92:	9f a5       	ldd	r25, Y+47	; 0x2f
     b94:	a7 01       	movw	r20, r14
     b96:	96 01       	movw	r18, r12
     b98:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     b9c:	2c a7       	std	Y+44, r18	; 0x2c
     b9e:	3d a7       	std	Y+45, r19	; 0x2d
     ba0:	4e a7       	std	Y+46, r20	; 0x2e
     ba2:	5f a7       	std	Y+47, r21	; 0x2f
     ba4:	18 8e       	std	Y+24, r1	; 0x18
     ba6:	19 8e       	std	Y+25, r1	; 0x19
     ba8:	1a 8e       	std	Y+26, r1	; 0x1a
     baa:	1b 8e       	std	Y+27, r1	; 0x1b
     bac:	1c 8e       	std	Y+28, r1	; 0x1c
     bae:	1d 8e       	std	Y+29, r1	; 0x1d
     bb0:	1e 8e       	std	Y+30, r1	; 0x1e
     bb2:	1f 8e       	std	Y+31, r1	; 0x1f
     bb4:	18 a2       	std	Y+32, r1	; 0x20
     bb6:	19 a2       	std	Y+33, r1	; 0x21
     bb8:	1a a2       	std	Y+34, r1	; 0x22
     bba:	1b a2       	std	Y+35, r1	; 0x23
     bbc:	18 82       	st	Y, r1
     bbe:	19 82       	std	Y+1, r1	; 0x01
     bc0:	1a 82       	std	Y+2, r1	; 0x02
     bc2:	1b 82       	std	Y+3, r1	; 0x03
     bc4:	1c 82       	std	Y+4, r1	; 0x04
     bc6:	1d 82       	std	Y+5, r1	; 0x05
     bc8:	1e 82       	std	Y+6, r1	; 0x06
     bca:	1f 82       	std	Y+7, r1	; 0x07
     bcc:	18 86       	std	Y+8, r1	; 0x08
     bce:	19 86       	std	Y+9, r1	; 0x09
     bd0:	1a 86       	std	Y+10, r1	; 0x0a
     bd2:	1b 86       	std	Y+11, r1	; 0x0b
     bd4:	df 91       	pop	r29
     bd6:	cf 91       	pop	r28
     bd8:	ff 90       	pop	r15
     bda:	ef 90       	pop	r14
     bdc:	df 90       	pop	r13
     bde:	cf 90       	pop	r12
     be0:	08 95       	ret

00000be2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     be2:	0f 93       	push	r16
     be4:	1f 93       	push	r17
     be6:	cf 93       	push	r28
     be8:	df 93       	push	r29
     bea:	00 d0       	rcall	.+0      	; 0xbec <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     bec:	1f 92       	push	r1
     bee:	cd b7       	in	r28, 0x3d	; 61
     bf0:	de b7       	in	r29, 0x3e	; 62
     bf2:	8c 01       	movw	r16, r24
     bf4:	dc 01       	movw	r26, r24
     bf6:	ed 91       	ld	r30, X+
     bf8:	fc 91       	ld	r31, X
     bfa:	01 90       	ld	r0, Z+
     bfc:	f0 81       	ld	r31, Z
     bfe:	e0 2d       	mov	r30, r0
     c00:	2b 83       	std	Y+3, r18	; 0x03
     c02:	4a 83       	std	Y+2, r20	; 0x02
     c04:	69 83       	std	Y+1, r22	; 0x01
     c06:	09 95       	icall
     c08:	d8 01       	movw	r26, r16
     c0a:	ed 91       	ld	r30, X+
     c0c:	fc 91       	ld	r31, X
     c0e:	04 80       	ldd	r0, Z+4	; 0x04
     c10:	f5 81       	ldd	r31, Z+5	; 0x05
     c12:	e0 2d       	mov	r30, r0
     c14:	69 81       	ldd	r22, Y+1	; 0x01
     c16:	c8 01       	movw	r24, r16
     c18:	09 95       	icall
     c1a:	d8 01       	movw	r26, r16
     c1c:	ed 91       	ld	r30, X+
     c1e:	fc 91       	ld	r31, X
     c20:	04 80       	ldd	r0, Z+4	; 0x04
     c22:	f5 81       	ldd	r31, Z+5	; 0x05
     c24:	e0 2d       	mov	r30, r0
     c26:	4a 81       	ldd	r20, Y+2	; 0x02
     c28:	64 2f       	mov	r22, r20
     c2a:	c8 01       	movw	r24, r16
     c2c:	09 95       	icall
     c2e:	d8 01       	movw	r26, r16
     c30:	ed 91       	ld	r30, X+
     c32:	fc 91       	ld	r31, X
     c34:	04 80       	ldd	r0, Z+4	; 0x04
     c36:	f5 81       	ldd	r31, Z+5	; 0x05
     c38:	e0 2d       	mov	r30, r0
     c3a:	2b 81       	ldd	r18, Y+3	; 0x03
     c3c:	62 2f       	mov	r22, r18
     c3e:	c8 01       	movw	r24, r16
     c40:	09 95       	icall
     c42:	d8 01       	movw	r26, r16
     c44:	ed 91       	ld	r30, X+
     c46:	fc 91       	ld	r31, X
     c48:	02 80       	ldd	r0, Z+2	; 0x02
     c4a:	f3 81       	ldd	r31, Z+3	; 0x03
     c4c:	e0 2d       	mov	r30, r0
     c4e:	c8 01       	movw	r24, r16
     c50:	0f 90       	pop	r0
     c52:	0f 90       	pop	r0
     c54:	0f 90       	pop	r0
     c56:	df 91       	pop	r29
     c58:	cf 91       	pop	r28
     c5a:	1f 91       	pop	r17
     c5c:	0f 91       	pop	r16
     c5e:	09 94       	ijmp

00000c60 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     c60:	0f 93       	push	r16
     c62:	1f 93       	push	r17
     c64:	cf 93       	push	r28
     c66:	df 93       	push	r29
     c68:	00 d0       	rcall	.+0      	; 0xc6a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     c6a:	00 d0       	rcall	.+0      	; 0xc6c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     c6c:	cd b7       	in	r28, 0x3d	; 61
     c6e:	de b7       	in	r29, 0x3e	; 62
     c70:	8c 01       	movw	r16, r24
     c72:	dc 01       	movw	r26, r24
     c74:	ed 91       	ld	r30, X+
     c76:	fc 91       	ld	r31, X
     c78:	01 90       	ld	r0, Z+
     c7a:	f0 81       	ld	r31, Z
     c7c:	e0 2d       	mov	r30, r0
     c7e:	2c 83       	std	Y+4, r18	; 0x04
     c80:	3b 83       	std	Y+3, r19	; 0x03
     c82:	4a 83       	std	Y+2, r20	; 0x02
     c84:	69 83       	std	Y+1, r22	; 0x01
     c86:	09 95       	icall
     c88:	d8 01       	movw	r26, r16
     c8a:	ed 91       	ld	r30, X+
     c8c:	fc 91       	ld	r31, X
     c8e:	04 80       	ldd	r0, Z+4	; 0x04
     c90:	f5 81       	ldd	r31, Z+5	; 0x05
     c92:	e0 2d       	mov	r30, r0
     c94:	69 81       	ldd	r22, Y+1	; 0x01
     c96:	c8 01       	movw	r24, r16
     c98:	09 95       	icall
     c9a:	d8 01       	movw	r26, r16
     c9c:	ed 91       	ld	r30, X+
     c9e:	fc 91       	ld	r31, X
     ca0:	04 80       	ldd	r0, Z+4	; 0x04
     ca2:	f5 81       	ldd	r31, Z+5	; 0x05
     ca4:	e0 2d       	mov	r30, r0
     ca6:	4a 81       	ldd	r20, Y+2	; 0x02
     ca8:	64 2f       	mov	r22, r20
     caa:	c8 01       	movw	r24, r16
     cac:	09 95       	icall
     cae:	d8 01       	movw	r26, r16
     cb0:	ed 91       	ld	r30, X+
     cb2:	fc 91       	ld	r31, X
     cb4:	04 80       	ldd	r0, Z+4	; 0x04
     cb6:	f5 81       	ldd	r31, Z+5	; 0x05
     cb8:	e0 2d       	mov	r30, r0
     cba:	3b 81       	ldd	r19, Y+3	; 0x03
     cbc:	63 2f       	mov	r22, r19
     cbe:	c8 01       	movw	r24, r16
     cc0:	09 95       	icall
     cc2:	d8 01       	movw	r26, r16
     cc4:	ed 91       	ld	r30, X+
     cc6:	fc 91       	ld	r31, X
     cc8:	04 80       	ldd	r0, Z+4	; 0x04
     cca:	f5 81       	ldd	r31, Z+5	; 0x05
     ccc:	e0 2d       	mov	r30, r0
     cce:	2c 81       	ldd	r18, Y+4	; 0x04
     cd0:	62 2f       	mov	r22, r18
     cd2:	c8 01       	movw	r24, r16
     cd4:	09 95       	icall
     cd6:	d8 01       	movw	r26, r16
     cd8:	ed 91       	ld	r30, X+
     cda:	fc 91       	ld	r31, X
     cdc:	02 80       	ldd	r0, Z+2	; 0x02
     cde:	f3 81       	ldd	r31, Z+3	; 0x03
     ce0:	e0 2d       	mov	r30, r0
     ce2:	c8 01       	movw	r24, r16
     ce4:	0f 90       	pop	r0
     ce6:	0f 90       	pop	r0
     ce8:	0f 90       	pop	r0
     cea:	0f 90       	pop	r0
     cec:	df 91       	pop	r29
     cee:	cf 91       	pop	r28
     cf0:	1f 91       	pop	r17
     cf2:	0f 91       	pop	r16
     cf4:	09 94       	ijmp

00000cf6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     cf6:	cf 92       	push	r12
     cf8:	df 92       	push	r13
     cfa:	ef 92       	push	r14
     cfc:	ff 92       	push	r15
     cfe:	0f 93       	push	r16
     d00:	1f 93       	push	r17
     d02:	cf 93       	push	r28
     d04:	df 93       	push	r29
     d06:	00 d0       	rcall	.+0      	; 0xd08 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     d08:	00 d0       	rcall	.+0      	; 0xd0a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     d0a:	cd b7       	in	r28, 0x3d	; 61
     d0c:	de b7       	in	r29, 0x3e	; 62
     d0e:	6c 01       	movw	r12, r24
     d10:	dc 01       	movw	r26, r24
     d12:	ed 91       	ld	r30, X+
     d14:	fc 91       	ld	r31, X
     d16:	01 90       	ld	r0, Z+
     d18:	f0 81       	ld	r31, Z
     d1a:	e0 2d       	mov	r30, r0
     d1c:	2b 83       	std	Y+3, r18	; 0x03
     d1e:	3c 83       	std	Y+4, r19	; 0x04
     d20:	4a 83       	std	Y+2, r20	; 0x02
     d22:	69 83       	std	Y+1, r22	; 0x01
     d24:	09 95       	icall
     d26:	d6 01       	movw	r26, r12
     d28:	ed 91       	ld	r30, X+
     d2a:	fc 91       	ld	r31, X
     d2c:	04 80       	ldd	r0, Z+4	; 0x04
     d2e:	f5 81       	ldd	r31, Z+5	; 0x05
     d30:	e0 2d       	mov	r30, r0
     d32:	69 81       	ldd	r22, Y+1	; 0x01
     d34:	c6 01       	movw	r24, r12
     d36:	09 95       	icall
     d38:	d6 01       	movw	r26, r12
     d3a:	ed 91       	ld	r30, X+
     d3c:	fc 91       	ld	r31, X
     d3e:	04 80       	ldd	r0, Z+4	; 0x04
     d40:	f5 81       	ldd	r31, Z+5	; 0x05
     d42:	e0 2d       	mov	r30, r0
     d44:	4a 81       	ldd	r20, Y+2	; 0x02
     d46:	64 2f       	mov	r22, r20
     d48:	c6 01       	movw	r24, r12
     d4a:	09 95       	icall
     d4c:	2b 81       	ldd	r18, Y+3	; 0x03
     d4e:	e2 2e       	mov	r14, r18
     d50:	3c 81       	ldd	r19, Y+4	; 0x04
     d52:	f3 2e       	mov	r15, r19
     d54:	0e 0d       	add	r16, r14
     d56:	1f 1d       	adc	r17, r15
     d58:	d6 01       	movw	r26, r12
     d5a:	ed 91       	ld	r30, X+
     d5c:	fc 91       	ld	r31, X
     d5e:	e0 16       	cp	r14, r16
     d60:	f1 06       	cpc	r15, r17
     d62:	49 f0       	breq	.+18     	; 0xd76 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
     d64:	d7 01       	movw	r26, r14
     d66:	6d 91       	ld	r22, X+
     d68:	7d 01       	movw	r14, r26
     d6a:	04 80       	ldd	r0, Z+4	; 0x04
     d6c:	f5 81       	ldd	r31, Z+5	; 0x05
     d6e:	e0 2d       	mov	r30, r0
     d70:	c6 01       	movw	r24, r12
     d72:	09 95       	icall
     d74:	f1 cf       	rjmp	.-30     	; 0xd58 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
     d76:	02 80       	ldd	r0, Z+2	; 0x02
     d78:	f3 81       	ldd	r31, Z+3	; 0x03
     d7a:	e0 2d       	mov	r30, r0
     d7c:	c6 01       	movw	r24, r12
     d7e:	0f 90       	pop	r0
     d80:	0f 90       	pop	r0
     d82:	0f 90       	pop	r0
     d84:	0f 90       	pop	r0
     d86:	df 91       	pop	r29
     d88:	cf 91       	pop	r28
     d8a:	1f 91       	pop	r17
     d8c:	0f 91       	pop	r16
     d8e:	ff 90       	pop	r15
     d90:	ef 90       	pop	r14
     d92:	df 90       	pop	r13
     d94:	cf 90       	pop	r12
     d96:	09 94       	ijmp

00000d98 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     d98:	ef 92       	push	r14
     d9a:	ff 92       	push	r15
     d9c:	1f 93       	push	r17
     d9e:	cf 93       	push	r28
     da0:	df 93       	push	r29
     da2:	1f 92       	push	r1
     da4:	cd b7       	in	r28, 0x3d	; 61
     da6:	de b7       	in	r29, 0x3e	; 62
     da8:	7c 01       	movw	r14, r24
     daa:	16 2f       	mov	r17, r22
     dac:	dc 01       	movw	r26, r24
     dae:	ed 91       	ld	r30, X+
     db0:	fc 91       	ld	r31, X
     db2:	01 90       	ld	r0, Z+
     db4:	f0 81       	ld	r31, Z
     db6:	e0 2d       	mov	r30, r0
     db8:	49 83       	std	Y+1, r20	; 0x01
     dba:	09 95       	icall
     dbc:	d7 01       	movw	r26, r14
     dbe:	ed 91       	ld	r30, X+
     dc0:	fc 91       	ld	r31, X
     dc2:	04 80       	ldd	r0, Z+4	; 0x04
     dc4:	f5 81       	ldd	r31, Z+5	; 0x05
     dc6:	e0 2d       	mov	r30, r0
     dc8:	61 2f       	mov	r22, r17
     dca:	c7 01       	movw	r24, r14
     dcc:	09 95       	icall
     dce:	d7 01       	movw	r26, r14
     dd0:	ed 91       	ld	r30, X+
     dd2:	fc 91       	ld	r31, X
     dd4:	04 80       	ldd	r0, Z+4	; 0x04
     dd6:	f5 81       	ldd	r31, Z+5	; 0x05
     dd8:	e0 2d       	mov	r30, r0
     dda:	49 81       	ldd	r20, Y+1	; 0x01
     ddc:	64 2f       	mov	r22, r20
     dde:	c7 01       	movw	r24, r14
     de0:	09 95       	icall
     de2:	d7 01       	movw	r26, r14
     de4:	ed 91       	ld	r30, X+
     de6:	fc 91       	ld	r31, X
     de8:	01 90       	ld	r0, Z+
     dea:	f0 81       	ld	r31, Z
     dec:	e0 2d       	mov	r30, r0
     dee:	c7 01       	movw	r24, r14
     df0:	09 95       	icall
     df2:	d7 01       	movw	r26, r14
     df4:	ed 91       	ld	r30, X+
     df6:	fc 91       	ld	r31, X
     df8:	61 2f       	mov	r22, r17
     dfa:	61 60       	ori	r22, 0x01	; 1
     dfc:	04 80       	ldd	r0, Z+4	; 0x04
     dfe:	f5 81       	ldd	r31, Z+5	; 0x05
     e00:	e0 2d       	mov	r30, r0
     e02:	c7 01       	movw	r24, r14
     e04:	09 95       	icall
     e06:	d7 01       	movw	r26, r14
     e08:	ed 91       	ld	r30, X+
     e0a:	fc 91       	ld	r31, X
     e0c:	06 80       	ldd	r0, Z+6	; 0x06
     e0e:	f7 81       	ldd	r31, Z+7	; 0x07
     e10:	e0 2d       	mov	r30, r0
     e12:	60 e0       	ldi	r22, 0x00	; 0
     e14:	c7 01       	movw	r24, r14
     e16:	09 95       	icall
     e18:	18 2f       	mov	r17, r24
     e1a:	d7 01       	movw	r26, r14
     e1c:	ed 91       	ld	r30, X+
     e1e:	fc 91       	ld	r31, X
     e20:	02 80       	ldd	r0, Z+2	; 0x02
     e22:	f3 81       	ldd	r31, Z+3	; 0x03
     e24:	e0 2d       	mov	r30, r0
     e26:	c7 01       	movw	r24, r14
     e28:	09 95       	icall
     e2a:	81 2f       	mov	r24, r17
     e2c:	0f 90       	pop	r0
     e2e:	df 91       	pop	r29
     e30:	cf 91       	pop	r28
     e32:	1f 91       	pop	r17
     e34:	ff 90       	pop	r15
     e36:	ef 90       	pop	r14
     e38:	08 95       	ret

00000e3a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     e3a:	ef 92       	push	r14
     e3c:	ff 92       	push	r15
     e3e:	0f 93       	push	r16
     e40:	1f 93       	push	r17
     e42:	cf 93       	push	r28
     e44:	df 93       	push	r29
     e46:	1f 92       	push	r1
     e48:	cd b7       	in	r28, 0x3d	; 61
     e4a:	de b7       	in	r29, 0x3e	; 62
     e4c:	7c 01       	movw	r14, r24
     e4e:	16 2f       	mov	r17, r22
     e50:	dc 01       	movw	r26, r24
     e52:	ed 91       	ld	r30, X+
     e54:	fc 91       	ld	r31, X
     e56:	01 90       	ld	r0, Z+
     e58:	f0 81       	ld	r31, Z
     e5a:	e0 2d       	mov	r30, r0
     e5c:	49 83       	std	Y+1, r20	; 0x01
     e5e:	09 95       	icall
     e60:	d7 01       	movw	r26, r14
     e62:	ed 91       	ld	r30, X+
     e64:	fc 91       	ld	r31, X
     e66:	04 80       	ldd	r0, Z+4	; 0x04
     e68:	f5 81       	ldd	r31, Z+5	; 0x05
     e6a:	e0 2d       	mov	r30, r0
     e6c:	61 2f       	mov	r22, r17
     e6e:	c7 01       	movw	r24, r14
     e70:	09 95       	icall
     e72:	d7 01       	movw	r26, r14
     e74:	ed 91       	ld	r30, X+
     e76:	fc 91       	ld	r31, X
     e78:	04 80       	ldd	r0, Z+4	; 0x04
     e7a:	f5 81       	ldd	r31, Z+5	; 0x05
     e7c:	e0 2d       	mov	r30, r0
     e7e:	49 81       	ldd	r20, Y+1	; 0x01
     e80:	64 2f       	mov	r22, r20
     e82:	c7 01       	movw	r24, r14
     e84:	09 95       	icall
     e86:	d7 01       	movw	r26, r14
     e88:	ed 91       	ld	r30, X+
     e8a:	fc 91       	ld	r31, X
     e8c:	01 90       	ld	r0, Z+
     e8e:	f0 81       	ld	r31, Z
     e90:	e0 2d       	mov	r30, r0
     e92:	c7 01       	movw	r24, r14
     e94:	09 95       	icall
     e96:	d7 01       	movw	r26, r14
     e98:	ed 91       	ld	r30, X+
     e9a:	fc 91       	ld	r31, X
     e9c:	61 2f       	mov	r22, r17
     e9e:	61 60       	ori	r22, 0x01	; 1
     ea0:	04 80       	ldd	r0, Z+4	; 0x04
     ea2:	f5 81       	ldd	r31, Z+5	; 0x05
     ea4:	e0 2d       	mov	r30, r0
     ea6:	c7 01       	movw	r24, r14
     ea8:	09 95       	icall
     eaa:	d7 01       	movw	r26, r14
     eac:	ed 91       	ld	r30, X+
     eae:	fc 91       	ld	r31, X
     eb0:	06 80       	ldd	r0, Z+6	; 0x06
     eb2:	f7 81       	ldd	r31, Z+7	; 0x07
     eb4:	e0 2d       	mov	r30, r0
     eb6:	61 e0       	ldi	r22, 0x01	; 1
     eb8:	c7 01       	movw	r24, r14
     eba:	09 95       	icall
     ebc:	08 2f       	mov	r16, r24
     ebe:	10 e0       	ldi	r17, 0x00	; 0
     ec0:	10 2f       	mov	r17, r16
     ec2:	00 27       	eor	r16, r16
     ec4:	d7 01       	movw	r26, r14
     ec6:	ed 91       	ld	r30, X+
     ec8:	fc 91       	ld	r31, X
     eca:	06 80       	ldd	r0, Z+6	; 0x06
     ecc:	f7 81       	ldd	r31, Z+7	; 0x07
     ece:	e0 2d       	mov	r30, r0
     ed0:	60 e0       	ldi	r22, 0x00	; 0
     ed2:	c7 01       	movw	r24, r14
     ed4:	09 95       	icall
     ed6:	08 2b       	or	r16, r24
     ed8:	d7 01       	movw	r26, r14
     eda:	ed 91       	ld	r30, X+
     edc:	fc 91       	ld	r31, X
     ede:	02 80       	ldd	r0, Z+2	; 0x02
     ee0:	f3 81       	ldd	r31, Z+3	; 0x03
     ee2:	e0 2d       	mov	r30, r0
     ee4:	c7 01       	movw	r24, r14
     ee6:	09 95       	icall
     ee8:	c8 01       	movw	r24, r16
     eea:	0f 90       	pop	r0
     eec:	df 91       	pop	r29
     eee:	cf 91       	pop	r28
     ef0:	1f 91       	pop	r17
     ef2:	0f 91       	pop	r16
     ef4:	ff 90       	pop	r15
     ef6:	ef 90       	pop	r14
     ef8:	08 95       	ret

00000efa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     efa:	cf 92       	push	r12
     efc:	df 92       	push	r13
     efe:	ef 92       	push	r14
     f00:	ff 92       	push	r15
     f02:	0f 93       	push	r16
     f04:	1f 93       	push	r17
     f06:	cf 93       	push	r28
     f08:	df 93       	push	r29
     f0a:	00 d0       	rcall	.+0      	; 0xf0c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     f0c:	1f 92       	push	r1
     f0e:	cd b7       	in	r28, 0x3d	; 61
     f10:	de b7       	in	r29, 0x3e	; 62
     f12:	6c 01       	movw	r12, r24
     f14:	f6 2e       	mov	r15, r22
     f16:	dc 01       	movw	r26, r24
     f18:	ed 91       	ld	r30, X+
     f1a:	fc 91       	ld	r31, X
     f1c:	01 90       	ld	r0, Z+
     f1e:	f0 81       	ld	r31, Z
     f20:	e0 2d       	mov	r30, r0
     f22:	2a 83       	std	Y+2, r18	; 0x02
     f24:	3b 83       	std	Y+3, r19	; 0x03
     f26:	49 83       	std	Y+1, r20	; 0x01
     f28:	09 95       	icall
     f2a:	d6 01       	movw	r26, r12
     f2c:	ed 91       	ld	r30, X+
     f2e:	fc 91       	ld	r31, X
     f30:	04 80       	ldd	r0, Z+4	; 0x04
     f32:	f5 81       	ldd	r31, Z+5	; 0x05
     f34:	e0 2d       	mov	r30, r0
     f36:	6f 2d       	mov	r22, r15
     f38:	c6 01       	movw	r24, r12
     f3a:	09 95       	icall
     f3c:	d6 01       	movw	r26, r12
     f3e:	ed 91       	ld	r30, X+
     f40:	fc 91       	ld	r31, X
     f42:	04 80       	ldd	r0, Z+4	; 0x04
     f44:	f5 81       	ldd	r31, Z+5	; 0x05
     f46:	e0 2d       	mov	r30, r0
     f48:	49 81       	ldd	r20, Y+1	; 0x01
     f4a:	64 2f       	mov	r22, r20
     f4c:	c6 01       	movw	r24, r12
     f4e:	09 95       	icall
     f50:	d6 01       	movw	r26, r12
     f52:	ed 91       	ld	r30, X+
     f54:	fc 91       	ld	r31, X
     f56:	01 90       	ld	r0, Z+
     f58:	f0 81       	ld	r31, Z
     f5a:	e0 2d       	mov	r30, r0
     f5c:	c6 01       	movw	r24, r12
     f5e:	09 95       	icall
     f60:	d6 01       	movw	r26, r12
     f62:	ed 91       	ld	r30, X+
     f64:	fc 91       	ld	r31, X
     f66:	6f 2d       	mov	r22, r15
     f68:	61 60       	ori	r22, 0x01	; 1
     f6a:	04 80       	ldd	r0, Z+4	; 0x04
     f6c:	f5 81       	ldd	r31, Z+5	; 0x05
     f6e:	e0 2d       	mov	r30, r0
     f70:	c6 01       	movw	r24, r12
     f72:	09 95       	icall
     f74:	2a 81       	ldd	r18, Y+2	; 0x02
     f76:	e2 2e       	mov	r14, r18
     f78:	3b 81       	ldd	r19, Y+3	; 0x03
     f7a:	f3 2e       	mov	r15, r19
     f7c:	0e 0d       	add	r16, r14
     f7e:	1f 1d       	adc	r17, r15
     f80:	d6 01       	movw	r26, r12
     f82:	ed 91       	ld	r30, X+
     f84:	fc 91       	ld	r31, X
     f86:	e0 16       	cp	r14, r16
     f88:	f1 06       	cpc	r15, r17
     f8a:	51 f0       	breq	.+20     	; 0xfa0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     f8c:	06 80       	ldd	r0, Z+6	; 0x06
     f8e:	f7 81       	ldd	r31, Z+7	; 0x07
     f90:	e0 2d       	mov	r30, r0
     f92:	61 e0       	ldi	r22, 0x01	; 1
     f94:	c6 01       	movw	r24, r12
     f96:	09 95       	icall
     f98:	f7 01       	movw	r30, r14
     f9a:	81 93       	st	Z+, r24
     f9c:	7f 01       	movw	r14, r30
     f9e:	f0 cf       	rjmp	.-32     	; 0xf80 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     fa0:	02 80       	ldd	r0, Z+2	; 0x02
     fa2:	f3 81       	ldd	r31, Z+3	; 0x03
     fa4:	e0 2d       	mov	r30, r0
     fa6:	c6 01       	movw	r24, r12
     fa8:	0f 90       	pop	r0
     faa:	0f 90       	pop	r0
     fac:	0f 90       	pop	r0
     fae:	df 91       	pop	r29
     fb0:	cf 91       	pop	r28
     fb2:	1f 91       	pop	r17
     fb4:	0f 91       	pop	r16
     fb6:	ff 90       	pop	r15
     fb8:	ef 90       	pop	r14
     fba:	df 90       	pop	r13
     fbc:	cf 90       	pop	r12
     fbe:	09 94       	ijmp

00000fc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     fc0:	88 23       	and	r24, r24
     fc2:	21 f0       	breq	.+8      	; 0xfcc <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     fc4:	bf 98       	cbi	0x17, 7	; 23
     fc6:	82 30       	cpi	r24, 0x02	; 2
     fc8:	19 f0       	breq	.+6      	; 0xfd0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     fca:	08 95       	ret
     fcc:	bf 9a       	sbi	0x17, 7	; 23
     fce:	08 95       	ret
     fd0:	c7 9a       	sbi	0x18, 7	; 24
     fd2:	08 95       	ret

00000fd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     fd4:	00 00       	nop
     fd6:	00 00       	nop
     fd8:	08 95       	ret

00000fda <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     fda:	1f 93       	push	r17
     fdc:	cf 93       	push	r28
     fde:	df 93       	push	r29
     fe0:	16 2f       	mov	r17, r22
     fe2:	bd 98       	cbi	0x17, 5	; 23
     fe4:	80 e0       	ldi	r24, 0x00	; 0
     fe6:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     fea:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     fee:	d8 e0       	ldi	r29, 0x08	; 8
     ff0:	c0 e0       	ldi	r28, 0x00	; 0
     ff2:	cc 0f       	add	r28, r28
     ff4:	81 e0       	ldi	r24, 0x01	; 1
     ff6:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     ffa:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     ffe:	b5 99       	sbic	0x16, 5	; 22
    1000:	c1 60       	ori	r28, 0x01	; 1
    1002:	80 e0       	ldi	r24, 0x00	; 0
    1004:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1008:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    100c:	d1 50       	subi	r29, 0x01	; 1
    100e:	89 f7       	brne	.-30     	; 0xff2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
    1010:	11 23       	and	r17, r17
    1012:	11 f0       	breq	.+4      	; 0x1018 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
    1014:	bd 9a       	sbi	0x17, 5	; 23
    1016:	01 c0       	rjmp	.+2      	; 0x101a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
    1018:	bd 98       	cbi	0x17, 5	; 23
    101a:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    101e:	81 e0       	ldi	r24, 0x01	; 1
    1020:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1024:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1028:	80 e0       	ldi	r24, 0x00	; 0
    102a:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    102e:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1032:	bd 98       	cbi	0x17, 5	; 23
    1034:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1038:	8c 2f       	mov	r24, r28
    103a:	df 91       	pop	r29
    103c:	cf 91       	pop	r28
    103e:	1f 91       	pop	r17
    1040:	08 95       	ret

00001042 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
    1042:	cf 93       	push	r28
    1044:	df 93       	push	r29
    1046:	d6 2f       	mov	r29, r22
    1048:	c8 e0       	ldi	r28, 0x08	; 8
    104a:	80 e0       	ldi	r24, 0x00	; 0
    104c:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1050:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1054:	d7 ff       	sbrs	r29, 7
    1056:	02 c0       	rjmp	.+4      	; 0x105c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
    1058:	bd 98       	cbi	0x17, 5	; 23
    105a:	01 c0       	rjmp	.+2      	; 0x105e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
    105c:	bd 9a       	sbi	0x17, 5	; 23
    105e:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1062:	81 e0       	ldi	r24, 0x01	; 1
    1064:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1068:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    106c:	dd 0f       	add	r29, r29
    106e:	c1 50       	subi	r28, 0x01	; 1
    1070:	61 f7       	brne	.-40     	; 0x104a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
    1072:	80 e0       	ldi	r24, 0x00	; 0
    1074:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1078:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    107c:	bd 98       	cbi	0x17, 5	; 23
    107e:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1082:	81 e0       	ldi	r24, 0x01	; 1
    1084:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1088:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    108c:	c6 b3       	in	r28, 0x16	; 22
    108e:	80 e0       	ldi	r24, 0x00	; 0
    1090:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    1094:	0e 94 ea 07 	call	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    1098:	c5 fb       	bst	r28, 5
    109a:	cc 27       	eor	r28, r28
    109c:	c0 f9       	bld	r28, 0
    109e:	81 e0       	ldi	r24, 0x01	; 1
    10a0:	8c 27       	eor	r24, r28
    10a2:	df 91       	pop	r29
    10a4:	cf 91       	pop	r28
    10a6:	08 95       	ret

000010a8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
    10a8:	81 e0       	ldi	r24, 0x01	; 1
    10aa:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10ae:	bd 98       	cbi	0x17, 5	; 23
    10b0:	81 e0       	ldi	r24, 0x01	; 1
    10b2:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10b6:	bd 9a       	sbi	0x17, 5	; 23
    10b8:	80 e0       	ldi	r24, 0x00	; 0
    10ba:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10be:	bd 98       	cbi	0x17, 5	; 23
    10c0:	0c 94 ea 07 	jmp	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

000010c4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
    10c4:	80 e0       	ldi	r24, 0x00	; 0
    10c6:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10ca:	bd 9a       	sbi	0x17, 5	; 23
    10cc:	81 e0       	ldi	r24, 0x01	; 1
    10ce:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10d2:	bd 9a       	sbi	0x17, 5	; 23
    10d4:	81 e0       	ldi	r24, 0x01	; 1
    10d6:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10da:	bd 98       	cbi	0x17, 5	; 23
    10dc:	0c 94 ea 07 	jmp	0xfd4	; 0xfd4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

000010e0 <_GLOBAL__sub_I_i2c>:
    10e0:	80 e9       	ldi	r24, 0x90	; 144
    10e2:	90 e0       	ldi	r25, 0x00	; 0
    10e4:	90 93 4c 01 	sts	0x014C, r25
    10e8:	80 93 4b 01 	sts	0x014B, r24
    10ec:	bd 98       	cbi	0x17, 5	; 23
    10ee:	81 e0       	ldi	r24, 0x01	; 1
    10f0:	0e 94 e0 07 	call	0xfc0	; 0xfc0 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    10f4:	c5 98       	cbi	0x18, 5	; 24
    10f6:	c7 98       	cbi	0x18, 7	; 24
    10f8:	08 95       	ret

000010fa <_ZdlPv>:
    10fa:	0c 94 be 0c 	jmp	0x197c	; 0x197c <free>

000010fe <_ZN9CTerminal4putsEPc>:
    10fe:	0f 93       	push	r16
    1100:	1f 93       	push	r17
    1102:	cf 93       	push	r28
    1104:	df 93       	push	r29
    1106:	8c 01       	movw	r16, r24
    1108:	eb 01       	movw	r28, r22
    110a:	69 91       	ld	r22, Y+
    110c:	66 23       	and	r22, r22
    110e:	21 f0       	breq	.+8      	; 0x1118 <_ZN9CTerminal4putsEPc+0x1a>
    1110:	c8 01       	movw	r24, r16
    1112:	0e 94 6e 02 	call	0x4dc	; 0x4dc <_ZN6CUSART7putcharEc>
    1116:	f9 cf       	rjmp	.-14     	; 0x110a <_ZN9CTerminal4putsEPc+0xc>
    1118:	df 91       	pop	r29
    111a:	cf 91       	pop	r28
    111c:	1f 91       	pop	r17
    111e:	0f 91       	pop	r16
    1120:	08 95       	ret

00001122 <_ZN9CTerminal4putiEl>:
    1122:	8f 92       	push	r8
    1124:	9f 92       	push	r9
    1126:	af 92       	push	r10
    1128:	bf 92       	push	r11
    112a:	cf 92       	push	r12
    112c:	df 92       	push	r13
    112e:	ef 92       	push	r14
    1130:	ff 92       	push	r15
    1132:	0f 93       	push	r16
    1134:	1f 93       	push	r17
    1136:	cf 93       	push	r28
    1138:	df 93       	push	r29
    113a:	cd b7       	in	r28, 0x3d	; 61
    113c:	de b7       	in	r29, 0x3e	; 62
    113e:	2c 97       	sbiw	r28, 0x0c	; 12
    1140:	0f b6       	in	r0, 0x3f	; 63
    1142:	f8 94       	cli
    1144:	de bf       	out	0x3e, r29	; 62
    1146:	0f be       	out	0x3f, r0	; 63
    1148:	cd bf       	out	0x3d, r28	; 61
    114a:	7c 01       	movw	r14, r24
    114c:	77 ff       	sbrs	r23, 7
    114e:	09 c0       	rjmp	.+18     	; 0x1162 <_ZN9CTerminal4putiEl+0x40>
    1150:	70 95       	com	r23
    1152:	60 95       	com	r22
    1154:	50 95       	com	r21
    1156:	41 95       	neg	r20
    1158:	5f 4f       	sbci	r21, 0xFF	; 255
    115a:	6f 4f       	sbci	r22, 0xFF	; 255
    115c:	7f 4f       	sbci	r23, 0xFF	; 255
    115e:	01 e0       	ldi	r16, 0x01	; 1
    1160:	01 c0       	rjmp	.+2      	; 0x1164 <_ZN9CTerminal4putiEl+0x42>
    1162:	00 e0       	ldi	r16, 0x00	; 0
    1164:	1c 86       	std	Y+12, r1	; 0x0c
    1166:	1a e0       	ldi	r17, 0x0A	; 10
    1168:	9a e0       	ldi	r25, 0x0A	; 10
    116a:	89 2e       	mov	r8, r25
    116c:	91 2c       	mov	r9, r1
    116e:	a1 2c       	mov	r10, r1
    1170:	b1 2c       	mov	r11, r1
    1172:	cc 24       	eor	r12, r12
    1174:	c3 94       	inc	r12
    1176:	d1 2c       	mov	r13, r1
    1178:	cc 0e       	add	r12, r28
    117a:	dd 1e       	adc	r13, r29
    117c:	c1 0e       	add	r12, r17
    117e:	d1 1c       	adc	r13, r1
    1180:	cb 01       	movw	r24, r22
    1182:	ba 01       	movw	r22, r20
    1184:	a5 01       	movw	r20, r10
    1186:	94 01       	movw	r18, r8
    1188:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
    118c:	94 2f       	mov	r25, r20
    118e:	85 2f       	mov	r24, r21
    1190:	60 5d       	subi	r22, 0xD0	; 208
    1192:	f6 01       	movw	r30, r12
    1194:	60 83       	st	Z, r22
    1196:	a9 01       	movw	r20, r18
    1198:	69 2f       	mov	r22, r25
    119a:	78 2f       	mov	r23, r24
    119c:	8f ef       	ldi	r24, 0xFF	; 255
    119e:	81 0f       	add	r24, r17
    11a0:	41 15       	cp	r20, r1
    11a2:	51 05       	cpc	r21, r1
    11a4:	61 05       	cpc	r22, r1
    11a6:	71 05       	cpc	r23, r1
    11a8:	11 f0       	breq	.+4      	; 0x11ae <_ZN9CTerminal4putiEl+0x8c>
    11aa:	18 2f       	mov	r17, r24
    11ac:	e2 cf       	rjmp	.-60     	; 0x1172 <_ZN9CTerminal4putiEl+0x50>
    11ae:	00 23       	and	r16, r16
    11b0:	49 f0       	breq	.+18     	; 0x11c4 <_ZN9CTerminal4putiEl+0xa2>
    11b2:	e1 e0       	ldi	r30, 0x01	; 1
    11b4:	f0 e0       	ldi	r31, 0x00	; 0
    11b6:	ec 0f       	add	r30, r28
    11b8:	fd 1f       	adc	r31, r29
    11ba:	e8 0f       	add	r30, r24
    11bc:	f1 1d       	adc	r31, r1
    11be:	9d e2       	ldi	r25, 0x2D	; 45
    11c0:	90 83       	st	Z, r25
    11c2:	18 2f       	mov	r17, r24
    11c4:	61 e0       	ldi	r22, 0x01	; 1
    11c6:	70 e0       	ldi	r23, 0x00	; 0
    11c8:	6c 0f       	add	r22, r28
    11ca:	7d 1f       	adc	r23, r29
    11cc:	61 0f       	add	r22, r17
    11ce:	71 1d       	adc	r23, r1
    11d0:	c7 01       	movw	r24, r14
    11d2:	0e 94 7f 08 	call	0x10fe	; 0x10fe <_ZN9CTerminal4putsEPc>
    11d6:	2c 96       	adiw	r28, 0x0c	; 12
    11d8:	0f b6       	in	r0, 0x3f	; 63
    11da:	f8 94       	cli
    11dc:	de bf       	out	0x3e, r29	; 62
    11de:	0f be       	out	0x3f, r0	; 63
    11e0:	cd bf       	out	0x3d, r28	; 61
    11e2:	df 91       	pop	r29
    11e4:	cf 91       	pop	r28
    11e6:	1f 91       	pop	r17
    11e8:	0f 91       	pop	r16
    11ea:	ff 90       	pop	r15
    11ec:	ef 90       	pop	r14
    11ee:	df 90       	pop	r13
    11f0:	cf 90       	pop	r12
    11f2:	bf 90       	pop	r11
    11f4:	af 90       	pop	r10
    11f6:	9f 90       	pop	r9
    11f8:	8f 90       	pop	r8
    11fa:	08 95       	ret

000011fc <_ZN9CTerminal5putuiEm>:
    11fc:	8f 92       	push	r8
    11fe:	9f 92       	push	r9
    1200:	af 92       	push	r10
    1202:	bf 92       	push	r11
    1204:	cf 92       	push	r12
    1206:	df 92       	push	r13
    1208:	ef 92       	push	r14
    120a:	ff 92       	push	r15
    120c:	1f 93       	push	r17
    120e:	cf 93       	push	r28
    1210:	df 93       	push	r29
    1212:	cd b7       	in	r28, 0x3d	; 61
    1214:	de b7       	in	r29, 0x3e	; 62
    1216:	2c 97       	sbiw	r28, 0x0c	; 12
    1218:	0f b6       	in	r0, 0x3f	; 63
    121a:	f8 94       	cli
    121c:	de bf       	out	0x3e, r29	; 62
    121e:	0f be       	out	0x3f, r0	; 63
    1220:	cd bf       	out	0x3d, r28	; 61
    1222:	6c 01       	movw	r12, r24
    1224:	1c 86       	std	Y+12, r1	; 0x0c
    1226:	1a e0       	ldi	r17, 0x0A	; 10
    1228:	9a e0       	ldi	r25, 0x0A	; 10
    122a:	89 2e       	mov	r8, r25
    122c:	91 2c       	mov	r9, r1
    122e:	a1 2c       	mov	r10, r1
    1230:	b1 2c       	mov	r11, r1
    1232:	ee 24       	eor	r14, r14
    1234:	e3 94       	inc	r14
    1236:	f1 2c       	mov	r15, r1
    1238:	ec 0e       	add	r14, r28
    123a:	fd 1e       	adc	r15, r29
    123c:	e1 0e       	add	r14, r17
    123e:	f1 1c       	adc	r15, r1
    1240:	cb 01       	movw	r24, r22
    1242:	ba 01       	movw	r22, r20
    1244:	a5 01       	movw	r20, r10
    1246:	94 01       	movw	r18, r8
    1248:	0e 94 16 0a 	call	0x142c	; 0x142c <__udivmodsi4>
    124c:	94 2f       	mov	r25, r20
    124e:	85 2f       	mov	r24, r21
    1250:	60 5d       	subi	r22, 0xD0	; 208
    1252:	f7 01       	movw	r30, r14
    1254:	60 83       	st	Z, r22
    1256:	a9 01       	movw	r20, r18
    1258:	69 2f       	mov	r22, r25
    125a:	78 2f       	mov	r23, r24
    125c:	11 50       	subi	r17, 0x01	; 1
    125e:	41 15       	cp	r20, r1
    1260:	51 05       	cpc	r21, r1
    1262:	61 05       	cpc	r22, r1
    1264:	71 05       	cpc	r23, r1
    1266:	29 f7       	brne	.-54     	; 0x1232 <_ZN9CTerminal5putuiEm+0x36>
    1268:	b7 01       	movw	r22, r14
    126a:	c6 01       	movw	r24, r12
    126c:	0e 94 7f 08 	call	0x10fe	; 0x10fe <_ZN9CTerminal4putsEPc>
    1270:	2c 96       	adiw	r28, 0x0c	; 12
    1272:	0f b6       	in	r0, 0x3f	; 63
    1274:	f8 94       	cli
    1276:	de bf       	out	0x3e, r29	; 62
    1278:	0f be       	out	0x3f, r0	; 63
    127a:	cd bf       	out	0x3d, r28	; 61
    127c:	df 91       	pop	r29
    127e:	cf 91       	pop	r28
    1280:	1f 91       	pop	r17
    1282:	ff 90       	pop	r15
    1284:	ef 90       	pop	r14
    1286:	df 90       	pop	r13
    1288:	cf 90       	pop	r12
    128a:	bf 90       	pop	r11
    128c:	af 90       	pop	r10
    128e:	9f 90       	pop	r9
    1290:	8f 90       	pop	r8
    1292:	08 95       	ret

00001294 <_ZN9CTerminal4putxEm>:
    1294:	ef 92       	push	r14
    1296:	ff 92       	push	r15
    1298:	cf 93       	push	r28
    129a:	df 93       	push	r29
    129c:	cd b7       	in	r28, 0x3d	; 61
    129e:	de b7       	in	r29, 0x3e	; 62
    12a0:	2c 97       	sbiw	r28, 0x0c	; 12
    12a2:	0f b6       	in	r0, 0x3f	; 63
    12a4:	f8 94       	cli
    12a6:	de bf       	out	0x3e, r29	; 62
    12a8:	0f be       	out	0x3f, r0	; 63
    12aa:	cd bf       	out	0x3d, r28	; 61
    12ac:	fc 01       	movw	r30, r24
    12ae:	1c 86       	std	Y+12, r1	; 0x0c
    12b0:	2a e0       	ldi	r18, 0x0A	; 10
    12b2:	94 2f       	mov	r25, r20
    12b4:	9f 70       	andi	r25, 0x0F	; 15
    12b6:	e2 2e       	mov	r14, r18
    12b8:	f1 2c       	mov	r15, r1
    12ba:	a1 e0       	ldi	r26, 0x01	; 1
    12bc:	b0 e0       	ldi	r27, 0x00	; 0
    12be:	ac 0f       	add	r26, r28
    12c0:	bd 1f       	adc	r27, r29
    12c2:	ae 0d       	add	r26, r14
    12c4:	bf 1d       	adc	r27, r15
    12c6:	9a 30       	cpi	r25, 0x0A	; 10
    12c8:	14 f4       	brge	.+4      	; 0x12ce <_ZN9CTerminal4putxEm+0x3a>
    12ca:	90 5d       	subi	r25, 0xD0	; 208
    12cc:	01 c0       	rjmp	.+2      	; 0x12d0 <_ZN9CTerminal4putxEm+0x3c>
    12ce:	99 5a       	subi	r25, 0xA9	; 169
    12d0:	9c 93       	st	X, r25
    12d2:	84 e0       	ldi	r24, 0x04	; 4
    12d4:	76 95       	lsr	r23
    12d6:	67 95       	ror	r22
    12d8:	57 95       	ror	r21
    12da:	47 95       	ror	r20
    12dc:	8a 95       	dec	r24
    12de:	d1 f7       	brne	.-12     	; 0x12d4 <_ZN9CTerminal4putxEm+0x40>
    12e0:	21 50       	subi	r18, 0x01	; 1
    12e2:	41 15       	cp	r20, r1
    12e4:	51 05       	cpc	r21, r1
    12e6:	61 05       	cpc	r22, r1
    12e8:	71 05       	cpc	r23, r1
    12ea:	19 f7       	brne	.-58     	; 0x12b2 <_ZN9CTerminal4putxEm+0x1e>
    12ec:	61 e0       	ldi	r22, 0x01	; 1
    12ee:	70 e0       	ldi	r23, 0x00	; 0
    12f0:	6c 0f       	add	r22, r28
    12f2:	7d 1f       	adc	r23, r29
    12f4:	6e 0d       	add	r22, r14
    12f6:	7f 1d       	adc	r23, r15
    12f8:	cf 01       	movw	r24, r30
    12fa:	0e 94 7f 08 	call	0x10fe	; 0x10fe <_ZN9CTerminal4putsEPc>
    12fe:	2c 96       	adiw	r28, 0x0c	; 12
    1300:	0f b6       	in	r0, 0x3f	; 63
    1302:	f8 94       	cli
    1304:	de bf       	out	0x3e, r29	; 62
    1306:	0f be       	out	0x3f, r0	; 63
    1308:	cd bf       	out	0x3d, r28	; 61
    130a:	df 91       	pop	r29
    130c:	cf 91       	pop	r28
    130e:	ff 90       	pop	r15
    1310:	ef 90       	pop	r14
    1312:	08 95       	ret

00001314 <_ZN9CTerminal6printfEPKcz>:
    1314:	af 92       	push	r10
    1316:	bf 92       	push	r11
    1318:	cf 92       	push	r12
    131a:	df 92       	push	r13
    131c:	ef 92       	push	r14
    131e:	ff 92       	push	r15
    1320:	0f 93       	push	r16
    1322:	1f 93       	push	r17
    1324:	cf 93       	push	r28
    1326:	df 93       	push	r29
    1328:	cd b7       	in	r28, 0x3d	; 61
    132a:	de b7       	in	r29, 0x3e	; 62
    132c:	ed 84       	ldd	r14, Y+13	; 0x0d
    132e:	fe 84       	ldd	r15, Y+14	; 0x0e
    1330:	8e 01       	movw	r16, r28
    1332:	0f 5e       	subi	r16, 0xEF	; 239
    1334:	1f 4f       	sbci	r17, 0xFF	; 255
    1336:	c1 2c       	mov	r12, r1
    1338:	d1 2c       	mov	r13, r1
    133a:	ef 85       	ldd	r30, Y+15	; 0x0f
    133c:	f8 89       	ldd	r31, Y+16	; 0x10
    133e:	ec 0d       	add	r30, r12
    1340:	fd 1d       	adc	r31, r13
    1342:	60 81       	ld	r22, Z
    1344:	66 23       	and	r22, r22
    1346:	09 f4       	brne	.+2      	; 0x134a <_ZN9CTerminal6printfEPKcz+0x36>
    1348:	5e c0       	rjmp	.+188    	; 0x1406 <_ZN9CTerminal6printfEPKcz+0xf2>
    134a:	65 32       	cpi	r22, 0x25	; 37
    134c:	39 f0       	breq	.+14     	; 0x135c <_ZN9CTerminal6printfEPKcz+0x48>
    134e:	c7 01       	movw	r24, r14
    1350:	0e 94 6e 02 	call	0x4dc	; 0x4dc <_ZN6CUSART7putcharEc>
    1354:	8f ef       	ldi	r24, 0xFF	; 255
    1356:	c8 1a       	sub	r12, r24
    1358:	d8 0a       	sbc	r13, r24
    135a:	ef cf       	rjmp	.-34     	; 0x133a <_ZN9CTerminal6printfEPKcz+0x26>
    135c:	81 81       	ldd	r24, Z+1	; 0x01
    135e:	89 36       	cpi	r24, 0x69	; 105
    1360:	11 f1       	breq	.+68     	; 0x13a6 <_ZN9CTerminal6printfEPKcz+0x92>
    1362:	84 f4       	brge	.+32     	; 0x1384 <_ZN9CTerminal6printfEPKcz+0x70>
    1364:	85 32       	cpi	r24, 0x25	; 37
    1366:	09 f4       	brne	.+2      	; 0x136a <_ZN9CTerminal6printfEPKcz+0x56>
    1368:	46 c0       	rjmp	.+140    	; 0x13f6 <_ZN9CTerminal6printfEPKcz+0xe2>
    136a:	83 36       	cpi	r24, 0x63	; 99
    136c:	09 f0       	breq	.+2      	; 0x1370 <_ZN9CTerminal6printfEPKcz+0x5c>
    136e:	47 c0       	rjmp	.+142    	; 0x13fe <_ZN9CTerminal6printfEPKcz+0xea>
    1370:	58 01       	movw	r10, r16
    1372:	f2 e0       	ldi	r31, 0x02	; 2
    1374:	af 0e       	add	r10, r31
    1376:	b1 1c       	adc	r11, r1
    1378:	f8 01       	movw	r30, r16
    137a:	60 81       	ld	r22, Z
    137c:	c7 01       	movw	r24, r14
    137e:	0e 94 6e 02 	call	0x4dc	; 0x4dc <_ZN6CUSART7putcharEc>
    1382:	2a c0       	rjmp	.+84     	; 0x13d8 <_ZN9CTerminal6printfEPKcz+0xc4>
    1384:	85 37       	cpi	r24, 0x75	; 117
    1386:	e1 f0       	breq	.+56     	; 0x13c0 <_ZN9CTerminal6printfEPKcz+0xac>
    1388:	88 37       	cpi	r24, 0x78	; 120
    138a:	41 f1       	breq	.+80     	; 0x13dc <_ZN9CTerminal6printfEPKcz+0xc8>
    138c:	83 37       	cpi	r24, 0x73	; 115
    138e:	b9 f5       	brne	.+110    	; 0x13fe <_ZN9CTerminal6printfEPKcz+0xea>
    1390:	58 01       	movw	r10, r16
    1392:	f2 e0       	ldi	r31, 0x02	; 2
    1394:	af 0e       	add	r10, r31
    1396:	b1 1c       	adc	r11, r1
    1398:	f8 01       	movw	r30, r16
    139a:	60 81       	ld	r22, Z
    139c:	71 81       	ldd	r23, Z+1	; 0x01
    139e:	c7 01       	movw	r24, r14
    13a0:	0e 94 7f 08 	call	0x10fe	; 0x10fe <_ZN9CTerminal4putsEPc>
    13a4:	19 c0       	rjmp	.+50     	; 0x13d8 <_ZN9CTerminal6printfEPKcz+0xc4>
    13a6:	58 01       	movw	r10, r16
    13a8:	94 e0       	ldi	r25, 0x04	; 4
    13aa:	a9 0e       	add	r10, r25
    13ac:	b1 1c       	adc	r11, r1
    13ae:	f8 01       	movw	r30, r16
    13b0:	40 81       	ld	r20, Z
    13b2:	51 81       	ldd	r21, Z+1	; 0x01
    13b4:	62 81       	ldd	r22, Z+2	; 0x02
    13b6:	73 81       	ldd	r23, Z+3	; 0x03
    13b8:	c7 01       	movw	r24, r14
    13ba:	0e 94 91 08 	call	0x1122	; 0x1122 <_ZN9CTerminal4putiEl>
    13be:	0c c0       	rjmp	.+24     	; 0x13d8 <_ZN9CTerminal6printfEPKcz+0xc4>
    13c0:	58 01       	movw	r10, r16
    13c2:	f4 e0       	ldi	r31, 0x04	; 4
    13c4:	af 0e       	add	r10, r31
    13c6:	b1 1c       	adc	r11, r1
    13c8:	f8 01       	movw	r30, r16
    13ca:	40 81       	ld	r20, Z
    13cc:	51 81       	ldd	r21, Z+1	; 0x01
    13ce:	62 81       	ldd	r22, Z+2	; 0x02
    13d0:	73 81       	ldd	r23, Z+3	; 0x03
    13d2:	c7 01       	movw	r24, r14
    13d4:	0e 94 fe 08 	call	0x11fc	; 0x11fc <_ZN9CTerminal5putuiEm>
    13d8:	85 01       	movw	r16, r10
    13da:	11 c0       	rjmp	.+34     	; 0x13fe <_ZN9CTerminal6printfEPKcz+0xea>
    13dc:	58 01       	movw	r10, r16
    13de:	f4 e0       	ldi	r31, 0x04	; 4
    13e0:	af 0e       	add	r10, r31
    13e2:	b1 1c       	adc	r11, r1
    13e4:	f8 01       	movw	r30, r16
    13e6:	40 81       	ld	r20, Z
    13e8:	51 81       	ldd	r21, Z+1	; 0x01
    13ea:	62 81       	ldd	r22, Z+2	; 0x02
    13ec:	73 81       	ldd	r23, Z+3	; 0x03
    13ee:	c7 01       	movw	r24, r14
    13f0:	0e 94 4a 09 	call	0x1294	; 0x1294 <_ZN9CTerminal4putxEm>
    13f4:	f1 cf       	rjmp	.-30     	; 0x13d8 <_ZN9CTerminal6printfEPKcz+0xc4>
    13f6:	65 e2       	ldi	r22, 0x25	; 37
    13f8:	c7 01       	movw	r24, r14
    13fa:	0e 94 6e 02 	call	0x4dc	; 0x4dc <_ZN6CUSART7putcharEc>
    13fe:	f2 e0       	ldi	r31, 0x02	; 2
    1400:	cf 0e       	add	r12, r31
    1402:	d1 1c       	adc	r13, r1
    1404:	9a cf       	rjmp	.-204    	; 0x133a <_ZN9CTerminal6printfEPKcz+0x26>
    1406:	df 91       	pop	r29
    1408:	cf 91       	pop	r28
    140a:	1f 91       	pop	r17
    140c:	0f 91       	pop	r16
    140e:	ff 90       	pop	r15
    1410:	ef 90       	pop	r14
    1412:	df 90       	pop	r13
    1414:	cf 90       	pop	r12
    1416:	bf 90       	pop	r11
    1418:	af 90       	pop	r10
    141a:	08 95       	ret

0000141c <_GLOBAL__sub_I_terminal>:
    141c:	8f e4       	ldi	r24, 0x4F	; 79
    141e:	91 e0       	ldi	r25, 0x01	; 1
    1420:	0c 94 63 02 	jmp	0x4c6	; 0x4c6 <_ZN6CUSARTC1Ev>

00001424 <_GLOBAL__sub_D_terminal>:
    1424:	8f e4       	ldi	r24, 0x4F	; 79
    1426:	91 e0       	ldi	r25, 0x01	; 1
    1428:	0c 94 6d 02 	jmp	0x4da	; 0x4da <_ZN6CUSARTD1Ev>

0000142c <__udivmodsi4>:
    142c:	a1 e2       	ldi	r26, 0x21	; 33
    142e:	1a 2e       	mov	r1, r26
    1430:	aa 1b       	sub	r26, r26
    1432:	bb 1b       	sub	r27, r27
    1434:	fd 01       	movw	r30, r26
    1436:	0d c0       	rjmp	.+26     	; 0x1452 <__udivmodsi4_ep>

00001438 <__udivmodsi4_loop>:
    1438:	aa 1f       	adc	r26, r26
    143a:	bb 1f       	adc	r27, r27
    143c:	ee 1f       	adc	r30, r30
    143e:	ff 1f       	adc	r31, r31
    1440:	a2 17       	cp	r26, r18
    1442:	b3 07       	cpc	r27, r19
    1444:	e4 07       	cpc	r30, r20
    1446:	f5 07       	cpc	r31, r21
    1448:	20 f0       	brcs	.+8      	; 0x1452 <__udivmodsi4_ep>
    144a:	a2 1b       	sub	r26, r18
    144c:	b3 0b       	sbc	r27, r19
    144e:	e4 0b       	sbc	r30, r20
    1450:	f5 0b       	sbc	r31, r21

00001452 <__udivmodsi4_ep>:
    1452:	66 1f       	adc	r22, r22
    1454:	77 1f       	adc	r23, r23
    1456:	88 1f       	adc	r24, r24
    1458:	99 1f       	adc	r25, r25
    145a:	1a 94       	dec	r1
    145c:	69 f7       	brne	.-38     	; 0x1438 <__udivmodsi4_loop>
    145e:	60 95       	com	r22
    1460:	70 95       	com	r23
    1462:	80 95       	com	r24
    1464:	90 95       	com	r25
    1466:	9b 01       	movw	r18, r22
    1468:	ac 01       	movw	r20, r24
    146a:	bd 01       	movw	r22, r26
    146c:	cf 01       	movw	r24, r30
    146e:	08 95       	ret

00001470 <__divmodsi4>:
    1470:	05 2e       	mov	r0, r21
    1472:	97 fb       	bst	r25, 7
    1474:	1e f4       	brtc	.+6      	; 0x147c <__divmodsi4+0xc>
    1476:	00 94       	com	r0
    1478:	0e 94 4f 0a 	call	0x149e	; 0x149e <__negsi2>
    147c:	57 fd       	sbrc	r21, 7
    147e:	07 d0       	rcall	.+14     	; 0x148e <__divmodsi4_neg2>
    1480:	0e 94 16 0a 	call	0x142c	; 0x142c <__udivmodsi4>
    1484:	07 fc       	sbrc	r0, 7
    1486:	03 d0       	rcall	.+6      	; 0x148e <__divmodsi4_neg2>
    1488:	4e f4       	brtc	.+18     	; 0x149c <__divmodsi4_exit>
    148a:	0c 94 4f 0a 	jmp	0x149e	; 0x149e <__negsi2>

0000148e <__divmodsi4_neg2>:
    148e:	50 95       	com	r21
    1490:	40 95       	com	r20
    1492:	30 95       	com	r19
    1494:	21 95       	neg	r18
    1496:	3f 4f       	sbci	r19, 0xFF	; 255
    1498:	4f 4f       	sbci	r20, 0xFF	; 255
    149a:	5f 4f       	sbci	r21, 0xFF	; 255

0000149c <__divmodsi4_exit>:
    149c:	08 95       	ret

0000149e <__negsi2>:
    149e:	90 95       	com	r25
    14a0:	80 95       	com	r24
    14a2:	70 95       	com	r23
    14a4:	61 95       	neg	r22
    14a6:	7f 4f       	sbci	r23, 0xFF	; 255
    14a8:	8f 4f       	sbci	r24, 0xFF	; 255
    14aa:	9f 4f       	sbci	r25, 0xFF	; 255
    14ac:	08 95       	ret

000014ae <__tablejump2__>:
    14ae:	ee 0f       	add	r30, r30
    14b0:	ff 1f       	adc	r31, r31
    14b2:	05 90       	lpm	r0, Z+
    14b4:	f4 91       	lpm	r31, Z
    14b6:	e0 2d       	mov	r30, r0
    14b8:	09 94       	ijmp

000014ba <__subsf3>:
    14ba:	50 58       	subi	r21, 0x80	; 128

000014bc <__addsf3>:
    14bc:	bb 27       	eor	r27, r27
    14be:	aa 27       	eor	r26, r26
    14c0:	0e 94 75 0a 	call	0x14ea	; 0x14ea <__addsf3x>
    14c4:	0c 94 7d 0b 	jmp	0x16fa	; 0x16fa <__fp_round>
    14c8:	0e 94 6f 0b 	call	0x16de	; 0x16de <__fp_pscA>
    14cc:	38 f0       	brcs	.+14     	; 0x14dc <__addsf3+0x20>
    14ce:	0e 94 76 0b 	call	0x16ec	; 0x16ec <__fp_pscB>
    14d2:	20 f0       	brcs	.+8      	; 0x14dc <__addsf3+0x20>
    14d4:	39 f4       	brne	.+14     	; 0x14e4 <__addsf3+0x28>
    14d6:	9f 3f       	cpi	r25, 0xFF	; 255
    14d8:	19 f4       	brne	.+6      	; 0x14e0 <__addsf3+0x24>
    14da:	26 f4       	brtc	.+8      	; 0x14e4 <__addsf3+0x28>
    14dc:	0c 94 6c 0b 	jmp	0x16d8	; 0x16d8 <__fp_nan>
    14e0:	0e f4       	brtc	.+2      	; 0x14e4 <__addsf3+0x28>
    14e2:	e0 95       	com	r30
    14e4:	e7 fb       	bst	r30, 7
    14e6:	0c 94 66 0b 	jmp	0x16cc	; 0x16cc <__fp_inf>

000014ea <__addsf3x>:
    14ea:	e9 2f       	mov	r30, r25
    14ec:	0e 94 8e 0b 	call	0x171c	; 0x171c <__fp_split3>
    14f0:	58 f3       	brcs	.-42     	; 0x14c8 <__addsf3+0xc>
    14f2:	ba 17       	cp	r27, r26
    14f4:	62 07       	cpc	r22, r18
    14f6:	73 07       	cpc	r23, r19
    14f8:	84 07       	cpc	r24, r20
    14fa:	95 07       	cpc	r25, r21
    14fc:	20 f0       	brcs	.+8      	; 0x1506 <__addsf3x+0x1c>
    14fe:	79 f4       	brne	.+30     	; 0x151e <__addsf3x+0x34>
    1500:	a6 f5       	brtc	.+104    	; 0x156a <__addsf3x+0x80>
    1502:	0c 94 b0 0b 	jmp	0x1760	; 0x1760 <__fp_zero>
    1506:	0e f4       	brtc	.+2      	; 0x150a <__addsf3x+0x20>
    1508:	e0 95       	com	r30
    150a:	0b 2e       	mov	r0, r27
    150c:	ba 2f       	mov	r27, r26
    150e:	a0 2d       	mov	r26, r0
    1510:	0b 01       	movw	r0, r22
    1512:	b9 01       	movw	r22, r18
    1514:	90 01       	movw	r18, r0
    1516:	0c 01       	movw	r0, r24
    1518:	ca 01       	movw	r24, r20
    151a:	a0 01       	movw	r20, r0
    151c:	11 24       	eor	r1, r1
    151e:	ff 27       	eor	r31, r31
    1520:	59 1b       	sub	r21, r25
    1522:	99 f0       	breq	.+38     	; 0x154a <__addsf3x+0x60>
    1524:	59 3f       	cpi	r21, 0xF9	; 249
    1526:	50 f4       	brcc	.+20     	; 0x153c <__addsf3x+0x52>
    1528:	50 3e       	cpi	r21, 0xE0	; 224
    152a:	68 f1       	brcs	.+90     	; 0x1586 <__addsf3x+0x9c>
    152c:	1a 16       	cp	r1, r26
    152e:	f0 40       	sbci	r31, 0x00	; 0
    1530:	a2 2f       	mov	r26, r18
    1532:	23 2f       	mov	r18, r19
    1534:	34 2f       	mov	r19, r20
    1536:	44 27       	eor	r20, r20
    1538:	58 5f       	subi	r21, 0xF8	; 248
    153a:	f3 cf       	rjmp	.-26     	; 0x1522 <__addsf3x+0x38>
    153c:	46 95       	lsr	r20
    153e:	37 95       	ror	r19
    1540:	27 95       	ror	r18
    1542:	a7 95       	ror	r26
    1544:	f0 40       	sbci	r31, 0x00	; 0
    1546:	53 95       	inc	r21
    1548:	c9 f7       	brne	.-14     	; 0x153c <__addsf3x+0x52>
    154a:	7e f4       	brtc	.+30     	; 0x156a <__addsf3x+0x80>
    154c:	1f 16       	cp	r1, r31
    154e:	ba 0b       	sbc	r27, r26
    1550:	62 0b       	sbc	r22, r18
    1552:	73 0b       	sbc	r23, r19
    1554:	84 0b       	sbc	r24, r20
    1556:	ba f0       	brmi	.+46     	; 0x1586 <__addsf3x+0x9c>
    1558:	91 50       	subi	r25, 0x01	; 1
    155a:	a1 f0       	breq	.+40     	; 0x1584 <__addsf3x+0x9a>
    155c:	ff 0f       	add	r31, r31
    155e:	bb 1f       	adc	r27, r27
    1560:	66 1f       	adc	r22, r22
    1562:	77 1f       	adc	r23, r23
    1564:	88 1f       	adc	r24, r24
    1566:	c2 f7       	brpl	.-16     	; 0x1558 <__addsf3x+0x6e>
    1568:	0e c0       	rjmp	.+28     	; 0x1586 <__addsf3x+0x9c>
    156a:	ba 0f       	add	r27, r26
    156c:	62 1f       	adc	r22, r18
    156e:	73 1f       	adc	r23, r19
    1570:	84 1f       	adc	r24, r20
    1572:	48 f4       	brcc	.+18     	; 0x1586 <__addsf3x+0x9c>
    1574:	87 95       	ror	r24
    1576:	77 95       	ror	r23
    1578:	67 95       	ror	r22
    157a:	b7 95       	ror	r27
    157c:	f7 95       	ror	r31
    157e:	9e 3f       	cpi	r25, 0xFE	; 254
    1580:	08 f0       	brcs	.+2      	; 0x1584 <__addsf3x+0x9a>
    1582:	b0 cf       	rjmp	.-160    	; 0x14e4 <__addsf3+0x28>
    1584:	93 95       	inc	r25
    1586:	88 0f       	add	r24, r24
    1588:	08 f0       	brcs	.+2      	; 0x158c <__addsf3x+0xa2>
    158a:	99 27       	eor	r25, r25
    158c:	ee 0f       	add	r30, r30
    158e:	97 95       	ror	r25
    1590:	87 95       	ror	r24
    1592:	08 95       	ret

00001594 <__cmpsf2>:
    1594:	0e 94 42 0b 	call	0x1684	; 0x1684 <__fp_cmp>
    1598:	08 f4       	brcc	.+2      	; 0x159c <__cmpsf2+0x8>
    159a:	81 e0       	ldi	r24, 0x01	; 1
    159c:	08 95       	ret

0000159e <__fixsfsi>:
    159e:	0e 94 d6 0a 	call	0x15ac	; 0x15ac <__fixunssfsi>
    15a2:	68 94       	set
    15a4:	b1 11       	cpse	r27, r1
    15a6:	0c 94 b1 0b 	jmp	0x1762	; 0x1762 <__fp_szero>
    15aa:	08 95       	ret

000015ac <__fixunssfsi>:
    15ac:	0e 94 96 0b 	call	0x172c	; 0x172c <__fp_splitA>
    15b0:	88 f0       	brcs	.+34     	; 0x15d4 <__fixunssfsi+0x28>
    15b2:	9f 57       	subi	r25, 0x7F	; 127
    15b4:	98 f0       	brcs	.+38     	; 0x15dc <__fixunssfsi+0x30>
    15b6:	b9 2f       	mov	r27, r25
    15b8:	99 27       	eor	r25, r25
    15ba:	b7 51       	subi	r27, 0x17	; 23
    15bc:	b0 f0       	brcs	.+44     	; 0x15ea <__fixunssfsi+0x3e>
    15be:	e1 f0       	breq	.+56     	; 0x15f8 <__fixunssfsi+0x4c>
    15c0:	66 0f       	add	r22, r22
    15c2:	77 1f       	adc	r23, r23
    15c4:	88 1f       	adc	r24, r24
    15c6:	99 1f       	adc	r25, r25
    15c8:	1a f0       	brmi	.+6      	; 0x15d0 <__fixunssfsi+0x24>
    15ca:	ba 95       	dec	r27
    15cc:	c9 f7       	brne	.-14     	; 0x15c0 <__fixunssfsi+0x14>
    15ce:	14 c0       	rjmp	.+40     	; 0x15f8 <__fixunssfsi+0x4c>
    15d0:	b1 30       	cpi	r27, 0x01	; 1
    15d2:	91 f0       	breq	.+36     	; 0x15f8 <__fixunssfsi+0x4c>
    15d4:	0e 94 b0 0b 	call	0x1760	; 0x1760 <__fp_zero>
    15d8:	b1 e0       	ldi	r27, 0x01	; 1
    15da:	08 95       	ret
    15dc:	0c 94 b0 0b 	jmp	0x1760	; 0x1760 <__fp_zero>
    15e0:	67 2f       	mov	r22, r23
    15e2:	78 2f       	mov	r23, r24
    15e4:	88 27       	eor	r24, r24
    15e6:	b8 5f       	subi	r27, 0xF8	; 248
    15e8:	39 f0       	breq	.+14     	; 0x15f8 <__fixunssfsi+0x4c>
    15ea:	b9 3f       	cpi	r27, 0xF9	; 249
    15ec:	cc f3       	brlt	.-14     	; 0x15e0 <__fixunssfsi+0x34>
    15ee:	86 95       	lsr	r24
    15f0:	77 95       	ror	r23
    15f2:	67 95       	ror	r22
    15f4:	b3 95       	inc	r27
    15f6:	d9 f7       	brne	.-10     	; 0x15ee <__fixunssfsi+0x42>
    15f8:	3e f4       	brtc	.+14     	; 0x1608 <__fixunssfsi+0x5c>
    15fa:	90 95       	com	r25
    15fc:	80 95       	com	r24
    15fe:	70 95       	com	r23
    1600:	61 95       	neg	r22
    1602:	7f 4f       	sbci	r23, 0xFF	; 255
    1604:	8f 4f       	sbci	r24, 0xFF	; 255
    1606:	9f 4f       	sbci	r25, 0xFF	; 255
    1608:	08 95       	ret

0000160a <__floatunsisf>:
    160a:	e8 94       	clt
    160c:	09 c0       	rjmp	.+18     	; 0x1620 <__floatsisf+0x12>

0000160e <__floatsisf>:
    160e:	97 fb       	bst	r25, 7
    1610:	3e f4       	brtc	.+14     	; 0x1620 <__floatsisf+0x12>
    1612:	90 95       	com	r25
    1614:	80 95       	com	r24
    1616:	70 95       	com	r23
    1618:	61 95       	neg	r22
    161a:	7f 4f       	sbci	r23, 0xFF	; 255
    161c:	8f 4f       	sbci	r24, 0xFF	; 255
    161e:	9f 4f       	sbci	r25, 0xFF	; 255
    1620:	99 23       	and	r25, r25
    1622:	a9 f0       	breq	.+42     	; 0x164e <__floatsisf+0x40>
    1624:	f9 2f       	mov	r31, r25
    1626:	96 e9       	ldi	r25, 0x96	; 150
    1628:	bb 27       	eor	r27, r27
    162a:	93 95       	inc	r25
    162c:	f6 95       	lsr	r31
    162e:	87 95       	ror	r24
    1630:	77 95       	ror	r23
    1632:	67 95       	ror	r22
    1634:	b7 95       	ror	r27
    1636:	f1 11       	cpse	r31, r1
    1638:	f8 cf       	rjmp	.-16     	; 0x162a <__floatsisf+0x1c>
    163a:	fa f4       	brpl	.+62     	; 0x167a <__floatsisf+0x6c>
    163c:	bb 0f       	add	r27, r27
    163e:	11 f4       	brne	.+4      	; 0x1644 <__floatsisf+0x36>
    1640:	60 ff       	sbrs	r22, 0
    1642:	1b c0       	rjmp	.+54     	; 0x167a <__floatsisf+0x6c>
    1644:	6f 5f       	subi	r22, 0xFF	; 255
    1646:	7f 4f       	sbci	r23, 0xFF	; 255
    1648:	8f 4f       	sbci	r24, 0xFF	; 255
    164a:	9f 4f       	sbci	r25, 0xFF	; 255
    164c:	16 c0       	rjmp	.+44     	; 0x167a <__floatsisf+0x6c>
    164e:	88 23       	and	r24, r24
    1650:	11 f0       	breq	.+4      	; 0x1656 <__floatsisf+0x48>
    1652:	96 e9       	ldi	r25, 0x96	; 150
    1654:	11 c0       	rjmp	.+34     	; 0x1678 <__floatsisf+0x6a>
    1656:	77 23       	and	r23, r23
    1658:	21 f0       	breq	.+8      	; 0x1662 <__floatsisf+0x54>
    165a:	9e e8       	ldi	r25, 0x8E	; 142
    165c:	87 2f       	mov	r24, r23
    165e:	76 2f       	mov	r23, r22
    1660:	05 c0       	rjmp	.+10     	; 0x166c <__floatsisf+0x5e>
    1662:	66 23       	and	r22, r22
    1664:	71 f0       	breq	.+28     	; 0x1682 <__floatsisf+0x74>
    1666:	96 e8       	ldi	r25, 0x86	; 134
    1668:	86 2f       	mov	r24, r22
    166a:	70 e0       	ldi	r23, 0x00	; 0
    166c:	60 e0       	ldi	r22, 0x00	; 0
    166e:	2a f0       	brmi	.+10     	; 0x167a <__floatsisf+0x6c>
    1670:	9a 95       	dec	r25
    1672:	66 0f       	add	r22, r22
    1674:	77 1f       	adc	r23, r23
    1676:	88 1f       	adc	r24, r24
    1678:	da f7       	brpl	.-10     	; 0x1670 <__floatsisf+0x62>
    167a:	88 0f       	add	r24, r24
    167c:	96 95       	lsr	r25
    167e:	87 95       	ror	r24
    1680:	97 f9       	bld	r25, 7
    1682:	08 95       	ret

00001684 <__fp_cmp>:
    1684:	99 0f       	add	r25, r25
    1686:	00 08       	sbc	r0, r0
    1688:	55 0f       	add	r21, r21
    168a:	aa 0b       	sbc	r26, r26
    168c:	e0 e8       	ldi	r30, 0x80	; 128
    168e:	fe ef       	ldi	r31, 0xFE	; 254
    1690:	16 16       	cp	r1, r22
    1692:	17 06       	cpc	r1, r23
    1694:	e8 07       	cpc	r30, r24
    1696:	f9 07       	cpc	r31, r25
    1698:	c0 f0       	brcs	.+48     	; 0x16ca <__fp_cmp+0x46>
    169a:	12 16       	cp	r1, r18
    169c:	13 06       	cpc	r1, r19
    169e:	e4 07       	cpc	r30, r20
    16a0:	f5 07       	cpc	r31, r21
    16a2:	98 f0       	brcs	.+38     	; 0x16ca <__fp_cmp+0x46>
    16a4:	62 1b       	sub	r22, r18
    16a6:	73 0b       	sbc	r23, r19
    16a8:	84 0b       	sbc	r24, r20
    16aa:	95 0b       	sbc	r25, r21
    16ac:	39 f4       	brne	.+14     	; 0x16bc <__fp_cmp+0x38>
    16ae:	0a 26       	eor	r0, r26
    16b0:	61 f0       	breq	.+24     	; 0x16ca <__fp_cmp+0x46>
    16b2:	23 2b       	or	r18, r19
    16b4:	24 2b       	or	r18, r20
    16b6:	25 2b       	or	r18, r21
    16b8:	21 f4       	brne	.+8      	; 0x16c2 <__fp_cmp+0x3e>
    16ba:	08 95       	ret
    16bc:	0a 26       	eor	r0, r26
    16be:	09 f4       	brne	.+2      	; 0x16c2 <__fp_cmp+0x3e>
    16c0:	a1 40       	sbci	r26, 0x01	; 1
    16c2:	a6 95       	lsr	r26
    16c4:	8f ef       	ldi	r24, 0xFF	; 255
    16c6:	81 1d       	adc	r24, r1
    16c8:	81 1d       	adc	r24, r1
    16ca:	08 95       	ret

000016cc <__fp_inf>:
    16cc:	97 f9       	bld	r25, 7
    16ce:	9f 67       	ori	r25, 0x7F	; 127
    16d0:	80 e8       	ldi	r24, 0x80	; 128
    16d2:	70 e0       	ldi	r23, 0x00	; 0
    16d4:	60 e0       	ldi	r22, 0x00	; 0
    16d6:	08 95       	ret

000016d8 <__fp_nan>:
    16d8:	9f ef       	ldi	r25, 0xFF	; 255
    16da:	80 ec       	ldi	r24, 0xC0	; 192
    16dc:	08 95       	ret

000016de <__fp_pscA>:
    16de:	00 24       	eor	r0, r0
    16e0:	0a 94       	dec	r0
    16e2:	16 16       	cp	r1, r22
    16e4:	17 06       	cpc	r1, r23
    16e6:	18 06       	cpc	r1, r24
    16e8:	09 06       	cpc	r0, r25
    16ea:	08 95       	ret

000016ec <__fp_pscB>:
    16ec:	00 24       	eor	r0, r0
    16ee:	0a 94       	dec	r0
    16f0:	12 16       	cp	r1, r18
    16f2:	13 06       	cpc	r1, r19
    16f4:	14 06       	cpc	r1, r20
    16f6:	05 06       	cpc	r0, r21
    16f8:	08 95       	ret

000016fa <__fp_round>:
    16fa:	09 2e       	mov	r0, r25
    16fc:	03 94       	inc	r0
    16fe:	00 0c       	add	r0, r0
    1700:	11 f4       	brne	.+4      	; 0x1706 <__fp_round+0xc>
    1702:	88 23       	and	r24, r24
    1704:	52 f0       	brmi	.+20     	; 0x171a <__fp_round+0x20>
    1706:	bb 0f       	add	r27, r27
    1708:	40 f4       	brcc	.+16     	; 0x171a <__fp_round+0x20>
    170a:	bf 2b       	or	r27, r31
    170c:	11 f4       	brne	.+4      	; 0x1712 <__fp_round+0x18>
    170e:	60 ff       	sbrs	r22, 0
    1710:	04 c0       	rjmp	.+8      	; 0x171a <__fp_round+0x20>
    1712:	6f 5f       	subi	r22, 0xFF	; 255
    1714:	7f 4f       	sbci	r23, 0xFF	; 255
    1716:	8f 4f       	sbci	r24, 0xFF	; 255
    1718:	9f 4f       	sbci	r25, 0xFF	; 255
    171a:	08 95       	ret

0000171c <__fp_split3>:
    171c:	57 fd       	sbrc	r21, 7
    171e:	90 58       	subi	r25, 0x80	; 128
    1720:	44 0f       	add	r20, r20
    1722:	55 1f       	adc	r21, r21
    1724:	59 f0       	breq	.+22     	; 0x173c <__fp_splitA+0x10>
    1726:	5f 3f       	cpi	r21, 0xFF	; 255
    1728:	71 f0       	breq	.+28     	; 0x1746 <__fp_splitA+0x1a>
    172a:	47 95       	ror	r20

0000172c <__fp_splitA>:
    172c:	88 0f       	add	r24, r24
    172e:	97 fb       	bst	r25, 7
    1730:	99 1f       	adc	r25, r25
    1732:	61 f0       	breq	.+24     	; 0x174c <__fp_splitA+0x20>
    1734:	9f 3f       	cpi	r25, 0xFF	; 255
    1736:	79 f0       	breq	.+30     	; 0x1756 <__fp_splitA+0x2a>
    1738:	87 95       	ror	r24
    173a:	08 95       	ret
    173c:	12 16       	cp	r1, r18
    173e:	13 06       	cpc	r1, r19
    1740:	14 06       	cpc	r1, r20
    1742:	55 1f       	adc	r21, r21
    1744:	f2 cf       	rjmp	.-28     	; 0x172a <__fp_split3+0xe>
    1746:	46 95       	lsr	r20
    1748:	f1 df       	rcall	.-30     	; 0x172c <__fp_splitA>
    174a:	08 c0       	rjmp	.+16     	; 0x175c <__fp_splitA+0x30>
    174c:	16 16       	cp	r1, r22
    174e:	17 06       	cpc	r1, r23
    1750:	18 06       	cpc	r1, r24
    1752:	99 1f       	adc	r25, r25
    1754:	f1 cf       	rjmp	.-30     	; 0x1738 <__fp_splitA+0xc>
    1756:	86 95       	lsr	r24
    1758:	71 05       	cpc	r23, r1
    175a:	61 05       	cpc	r22, r1
    175c:	08 94       	sec
    175e:	08 95       	ret

00001760 <__fp_zero>:
    1760:	e8 94       	clt

00001762 <__fp_szero>:
    1762:	bb 27       	eor	r27, r27
    1764:	66 27       	eor	r22, r22
    1766:	77 27       	eor	r23, r23
    1768:	cb 01       	movw	r24, r22
    176a:	97 f9       	bld	r25, 7
    176c:	08 95       	ret

0000176e <__gesf2>:
    176e:	0e 94 42 0b 	call	0x1684	; 0x1684 <__fp_cmp>
    1772:	08 f4       	brcc	.+2      	; 0x1776 <__gesf2+0x8>
    1774:	8f ef       	ldi	r24, 0xFF	; 255
    1776:	08 95       	ret

00001778 <__mulsf3>:
    1778:	0e 94 cf 0b 	call	0x179e	; 0x179e <__mulsf3x>
    177c:	0c 94 7d 0b 	jmp	0x16fa	; 0x16fa <__fp_round>
    1780:	0e 94 6f 0b 	call	0x16de	; 0x16de <__fp_pscA>
    1784:	38 f0       	brcs	.+14     	; 0x1794 <__mulsf3+0x1c>
    1786:	0e 94 76 0b 	call	0x16ec	; 0x16ec <__fp_pscB>
    178a:	20 f0       	brcs	.+8      	; 0x1794 <__mulsf3+0x1c>
    178c:	95 23       	and	r25, r21
    178e:	11 f0       	breq	.+4      	; 0x1794 <__mulsf3+0x1c>
    1790:	0c 94 66 0b 	jmp	0x16cc	; 0x16cc <__fp_inf>
    1794:	0c 94 6c 0b 	jmp	0x16d8	; 0x16d8 <__fp_nan>
    1798:	11 24       	eor	r1, r1
    179a:	0c 94 b1 0b 	jmp	0x1762	; 0x1762 <__fp_szero>

0000179e <__mulsf3x>:
    179e:	0e 94 8e 0b 	call	0x171c	; 0x171c <__fp_split3>
    17a2:	70 f3       	brcs	.-36     	; 0x1780 <__mulsf3+0x8>

000017a4 <__mulsf3_pse>:
    17a4:	95 9f       	mul	r25, r21
    17a6:	c1 f3       	breq	.-16     	; 0x1798 <__mulsf3+0x20>
    17a8:	95 0f       	add	r25, r21
    17aa:	50 e0       	ldi	r21, 0x00	; 0
    17ac:	55 1f       	adc	r21, r21
    17ae:	62 9f       	mul	r22, r18
    17b0:	f0 01       	movw	r30, r0
    17b2:	72 9f       	mul	r23, r18
    17b4:	bb 27       	eor	r27, r27
    17b6:	f0 0d       	add	r31, r0
    17b8:	b1 1d       	adc	r27, r1
    17ba:	63 9f       	mul	r22, r19
    17bc:	aa 27       	eor	r26, r26
    17be:	f0 0d       	add	r31, r0
    17c0:	b1 1d       	adc	r27, r1
    17c2:	aa 1f       	adc	r26, r26
    17c4:	64 9f       	mul	r22, r20
    17c6:	66 27       	eor	r22, r22
    17c8:	b0 0d       	add	r27, r0
    17ca:	a1 1d       	adc	r26, r1
    17cc:	66 1f       	adc	r22, r22
    17ce:	82 9f       	mul	r24, r18
    17d0:	22 27       	eor	r18, r18
    17d2:	b0 0d       	add	r27, r0
    17d4:	a1 1d       	adc	r26, r1
    17d6:	62 1f       	adc	r22, r18
    17d8:	73 9f       	mul	r23, r19
    17da:	b0 0d       	add	r27, r0
    17dc:	a1 1d       	adc	r26, r1
    17de:	62 1f       	adc	r22, r18
    17e0:	83 9f       	mul	r24, r19
    17e2:	a0 0d       	add	r26, r0
    17e4:	61 1d       	adc	r22, r1
    17e6:	22 1f       	adc	r18, r18
    17e8:	74 9f       	mul	r23, r20
    17ea:	33 27       	eor	r19, r19
    17ec:	a0 0d       	add	r26, r0
    17ee:	61 1d       	adc	r22, r1
    17f0:	23 1f       	adc	r18, r19
    17f2:	84 9f       	mul	r24, r20
    17f4:	60 0d       	add	r22, r0
    17f6:	21 1d       	adc	r18, r1
    17f8:	82 2f       	mov	r24, r18
    17fa:	76 2f       	mov	r23, r22
    17fc:	6a 2f       	mov	r22, r26
    17fe:	11 24       	eor	r1, r1
    1800:	9f 57       	subi	r25, 0x7F	; 127
    1802:	50 40       	sbci	r21, 0x00	; 0
    1804:	9a f0       	brmi	.+38     	; 0x182c <__mulsf3_pse+0x88>
    1806:	f1 f0       	breq	.+60     	; 0x1844 <__mulsf3_pse+0xa0>
    1808:	88 23       	and	r24, r24
    180a:	4a f0       	brmi	.+18     	; 0x181e <__mulsf3_pse+0x7a>
    180c:	ee 0f       	add	r30, r30
    180e:	ff 1f       	adc	r31, r31
    1810:	bb 1f       	adc	r27, r27
    1812:	66 1f       	adc	r22, r22
    1814:	77 1f       	adc	r23, r23
    1816:	88 1f       	adc	r24, r24
    1818:	91 50       	subi	r25, 0x01	; 1
    181a:	50 40       	sbci	r21, 0x00	; 0
    181c:	a9 f7       	brne	.-22     	; 0x1808 <__mulsf3_pse+0x64>
    181e:	9e 3f       	cpi	r25, 0xFE	; 254
    1820:	51 05       	cpc	r21, r1
    1822:	80 f0       	brcs	.+32     	; 0x1844 <__mulsf3_pse+0xa0>
    1824:	0c 94 66 0b 	jmp	0x16cc	; 0x16cc <__fp_inf>
    1828:	0c 94 b1 0b 	jmp	0x1762	; 0x1762 <__fp_szero>
    182c:	5f 3f       	cpi	r21, 0xFF	; 255
    182e:	e4 f3       	brlt	.-8      	; 0x1828 <__mulsf3_pse+0x84>
    1830:	98 3e       	cpi	r25, 0xE8	; 232
    1832:	d4 f3       	brlt	.-12     	; 0x1828 <__mulsf3_pse+0x84>
    1834:	86 95       	lsr	r24
    1836:	77 95       	ror	r23
    1838:	67 95       	ror	r22
    183a:	b7 95       	ror	r27
    183c:	f7 95       	ror	r31
    183e:	e7 95       	ror	r30
    1840:	9f 5f       	subi	r25, 0xFF	; 255
    1842:	c1 f7       	brne	.-16     	; 0x1834 <__mulsf3_pse+0x90>
    1844:	fe 2b       	or	r31, r30
    1846:	88 0f       	add	r24, r24
    1848:	91 1d       	adc	r25, r1
    184a:	96 95       	lsr	r25
    184c:	87 95       	ror	r24
    184e:	97 f9       	bld	r25, 7
    1850:	08 95       	ret

00001852 <malloc>:
    1852:	cf 93       	push	r28
    1854:	df 93       	push	r29
    1856:	82 30       	cpi	r24, 0x02	; 2
    1858:	91 05       	cpc	r25, r1
    185a:	10 f4       	brcc	.+4      	; 0x1860 <malloc+0xe>
    185c:	82 e0       	ldi	r24, 0x02	; 2
    185e:	90 e0       	ldi	r25, 0x00	; 0
    1860:	e0 91 52 01 	lds	r30, 0x0152
    1864:	f0 91 53 01 	lds	r31, 0x0153
    1868:	20 e0       	ldi	r18, 0x00	; 0
    186a:	30 e0       	ldi	r19, 0x00	; 0
    186c:	c0 e0       	ldi	r28, 0x00	; 0
    186e:	d0 e0       	ldi	r29, 0x00	; 0
    1870:	30 97       	sbiw	r30, 0x00	; 0
    1872:	11 f1       	breq	.+68     	; 0x18b8 <malloc+0x66>
    1874:	40 81       	ld	r20, Z
    1876:	51 81       	ldd	r21, Z+1	; 0x01
    1878:	48 17       	cp	r20, r24
    187a:	59 07       	cpc	r21, r25
    187c:	c0 f0       	brcs	.+48     	; 0x18ae <malloc+0x5c>
    187e:	48 17       	cp	r20, r24
    1880:	59 07       	cpc	r21, r25
    1882:	61 f4       	brne	.+24     	; 0x189c <malloc+0x4a>
    1884:	82 81       	ldd	r24, Z+2	; 0x02
    1886:	93 81       	ldd	r25, Z+3	; 0x03
    1888:	20 97       	sbiw	r28, 0x00	; 0
    188a:	19 f0       	breq	.+6      	; 0x1892 <malloc+0x40>
    188c:	9b 83       	std	Y+3, r25	; 0x03
    188e:	8a 83       	std	Y+2, r24	; 0x02
    1890:	2b c0       	rjmp	.+86     	; 0x18e8 <malloc+0x96>
    1892:	90 93 53 01 	sts	0x0153, r25
    1896:	80 93 52 01 	sts	0x0152, r24
    189a:	26 c0       	rjmp	.+76     	; 0x18e8 <malloc+0x96>
    189c:	21 15       	cp	r18, r1
    189e:	31 05       	cpc	r19, r1
    18a0:	19 f0       	breq	.+6      	; 0x18a8 <malloc+0x56>
    18a2:	42 17       	cp	r20, r18
    18a4:	53 07       	cpc	r21, r19
    18a6:	18 f4       	brcc	.+6      	; 0x18ae <malloc+0x5c>
    18a8:	9a 01       	movw	r18, r20
    18aa:	be 01       	movw	r22, r28
    18ac:	df 01       	movw	r26, r30
    18ae:	ef 01       	movw	r28, r30
    18b0:	02 80       	ldd	r0, Z+2	; 0x02
    18b2:	f3 81       	ldd	r31, Z+3	; 0x03
    18b4:	e0 2d       	mov	r30, r0
    18b6:	dc cf       	rjmp	.-72     	; 0x1870 <malloc+0x1e>
    18b8:	21 15       	cp	r18, r1
    18ba:	31 05       	cpc	r19, r1
    18bc:	09 f1       	breq	.+66     	; 0x1900 <malloc+0xae>
    18be:	28 1b       	sub	r18, r24
    18c0:	39 0b       	sbc	r19, r25
    18c2:	24 30       	cpi	r18, 0x04	; 4
    18c4:	31 05       	cpc	r19, r1
    18c6:	90 f4       	brcc	.+36     	; 0x18ec <malloc+0x9a>
    18c8:	12 96       	adiw	r26, 0x02	; 2
    18ca:	8d 91       	ld	r24, X+
    18cc:	9c 91       	ld	r25, X
    18ce:	13 97       	sbiw	r26, 0x03	; 3
    18d0:	61 15       	cp	r22, r1
    18d2:	71 05       	cpc	r23, r1
    18d4:	21 f0       	breq	.+8      	; 0x18de <malloc+0x8c>
    18d6:	fb 01       	movw	r30, r22
    18d8:	93 83       	std	Z+3, r25	; 0x03
    18da:	82 83       	std	Z+2, r24	; 0x02
    18dc:	04 c0       	rjmp	.+8      	; 0x18e6 <malloc+0x94>
    18de:	90 93 53 01 	sts	0x0153, r25
    18e2:	80 93 52 01 	sts	0x0152, r24
    18e6:	fd 01       	movw	r30, r26
    18e8:	32 96       	adiw	r30, 0x02	; 2
    18ea:	44 c0       	rjmp	.+136    	; 0x1974 <malloc+0x122>
    18ec:	fd 01       	movw	r30, r26
    18ee:	e2 0f       	add	r30, r18
    18f0:	f3 1f       	adc	r31, r19
    18f2:	81 93       	st	Z+, r24
    18f4:	91 93       	st	Z+, r25
    18f6:	22 50       	subi	r18, 0x02	; 2
    18f8:	31 09       	sbc	r19, r1
    18fa:	2d 93       	st	X+, r18
    18fc:	3c 93       	st	X, r19
    18fe:	3a c0       	rjmp	.+116    	; 0x1974 <malloc+0x122>
    1900:	20 91 50 01 	lds	r18, 0x0150
    1904:	30 91 51 01 	lds	r19, 0x0151
    1908:	23 2b       	or	r18, r19
    190a:	41 f4       	brne	.+16     	; 0x191c <malloc+0xca>
    190c:	20 91 62 00 	lds	r18, 0x0062
    1910:	30 91 63 00 	lds	r19, 0x0063
    1914:	30 93 51 01 	sts	0x0151, r19
    1918:	20 93 50 01 	sts	0x0150, r18
    191c:	20 91 60 00 	lds	r18, 0x0060
    1920:	30 91 61 00 	lds	r19, 0x0061
    1924:	21 15       	cp	r18, r1
    1926:	31 05       	cpc	r19, r1
    1928:	41 f4       	brne	.+16     	; 0x193a <malloc+0xe8>
    192a:	2d b7       	in	r18, 0x3d	; 61
    192c:	3e b7       	in	r19, 0x3e	; 62
    192e:	40 91 64 00 	lds	r20, 0x0064
    1932:	50 91 65 00 	lds	r21, 0x0065
    1936:	24 1b       	sub	r18, r20
    1938:	35 0b       	sbc	r19, r21
    193a:	e0 91 50 01 	lds	r30, 0x0150
    193e:	f0 91 51 01 	lds	r31, 0x0151
    1942:	e2 17       	cp	r30, r18
    1944:	f3 07       	cpc	r31, r19
    1946:	a0 f4       	brcc	.+40     	; 0x1970 <malloc+0x11e>
    1948:	2e 1b       	sub	r18, r30
    194a:	3f 0b       	sbc	r19, r31
    194c:	28 17       	cp	r18, r24
    194e:	39 07       	cpc	r19, r25
    1950:	78 f0       	brcs	.+30     	; 0x1970 <malloc+0x11e>
    1952:	ac 01       	movw	r20, r24
    1954:	4e 5f       	subi	r20, 0xFE	; 254
    1956:	5f 4f       	sbci	r21, 0xFF	; 255
    1958:	24 17       	cp	r18, r20
    195a:	35 07       	cpc	r19, r21
    195c:	48 f0       	brcs	.+18     	; 0x1970 <malloc+0x11e>
    195e:	4e 0f       	add	r20, r30
    1960:	5f 1f       	adc	r21, r31
    1962:	50 93 51 01 	sts	0x0151, r21
    1966:	40 93 50 01 	sts	0x0150, r20
    196a:	81 93       	st	Z+, r24
    196c:	91 93       	st	Z+, r25
    196e:	02 c0       	rjmp	.+4      	; 0x1974 <malloc+0x122>
    1970:	e0 e0       	ldi	r30, 0x00	; 0
    1972:	f0 e0       	ldi	r31, 0x00	; 0
    1974:	cf 01       	movw	r24, r30
    1976:	df 91       	pop	r29
    1978:	cf 91       	pop	r28
    197a:	08 95       	ret

0000197c <free>:
    197c:	0f 93       	push	r16
    197e:	1f 93       	push	r17
    1980:	cf 93       	push	r28
    1982:	df 93       	push	r29
    1984:	00 97       	sbiw	r24, 0x00	; 0
    1986:	09 f4       	brne	.+2      	; 0x198a <free+0xe>
    1988:	8c c0       	rjmp	.+280    	; 0x1aa2 <free+0x126>
    198a:	fc 01       	movw	r30, r24
    198c:	32 97       	sbiw	r30, 0x02	; 2
    198e:	13 82       	std	Z+3, r1	; 0x03
    1990:	12 82       	std	Z+2, r1	; 0x02
    1992:	00 91 52 01 	lds	r16, 0x0152
    1996:	10 91 53 01 	lds	r17, 0x0153
    199a:	01 15       	cp	r16, r1
    199c:	11 05       	cpc	r17, r1
    199e:	81 f4       	brne	.+32     	; 0x19c0 <free+0x44>
    19a0:	20 81       	ld	r18, Z
    19a2:	31 81       	ldd	r19, Z+1	; 0x01
    19a4:	82 0f       	add	r24, r18
    19a6:	93 1f       	adc	r25, r19
    19a8:	20 91 50 01 	lds	r18, 0x0150
    19ac:	30 91 51 01 	lds	r19, 0x0151
    19b0:	28 17       	cp	r18, r24
    19b2:	39 07       	cpc	r19, r25
    19b4:	79 f5       	brne	.+94     	; 0x1a14 <free+0x98>
    19b6:	f0 93 51 01 	sts	0x0151, r31
    19ba:	e0 93 50 01 	sts	0x0150, r30
    19be:	71 c0       	rjmp	.+226    	; 0x1aa2 <free+0x126>
    19c0:	d8 01       	movw	r26, r16
    19c2:	40 e0       	ldi	r20, 0x00	; 0
    19c4:	50 e0       	ldi	r21, 0x00	; 0
    19c6:	ae 17       	cp	r26, r30
    19c8:	bf 07       	cpc	r27, r31
    19ca:	50 f4       	brcc	.+20     	; 0x19e0 <free+0x64>
    19cc:	12 96       	adiw	r26, 0x02	; 2
    19ce:	2d 91       	ld	r18, X+
    19d0:	3c 91       	ld	r19, X
    19d2:	13 97       	sbiw	r26, 0x03	; 3
    19d4:	ad 01       	movw	r20, r26
    19d6:	21 15       	cp	r18, r1
    19d8:	31 05       	cpc	r19, r1
    19da:	09 f1       	breq	.+66     	; 0x1a1e <free+0xa2>
    19dc:	d9 01       	movw	r26, r18
    19de:	f3 cf       	rjmp	.-26     	; 0x19c6 <free+0x4a>
    19e0:	9d 01       	movw	r18, r26
    19e2:	da 01       	movw	r26, r20
    19e4:	33 83       	std	Z+3, r19	; 0x03
    19e6:	22 83       	std	Z+2, r18	; 0x02
    19e8:	60 81       	ld	r22, Z
    19ea:	71 81       	ldd	r23, Z+1	; 0x01
    19ec:	86 0f       	add	r24, r22
    19ee:	97 1f       	adc	r25, r23
    19f0:	82 17       	cp	r24, r18
    19f2:	93 07       	cpc	r25, r19
    19f4:	69 f4       	brne	.+26     	; 0x1a10 <free+0x94>
    19f6:	ec 01       	movw	r28, r24
    19f8:	28 81       	ld	r18, Y
    19fa:	39 81       	ldd	r19, Y+1	; 0x01
    19fc:	26 0f       	add	r18, r22
    19fe:	37 1f       	adc	r19, r23
    1a00:	2e 5f       	subi	r18, 0xFE	; 254
    1a02:	3f 4f       	sbci	r19, 0xFF	; 255
    1a04:	31 83       	std	Z+1, r19	; 0x01
    1a06:	20 83       	st	Z, r18
    1a08:	8a 81       	ldd	r24, Y+2	; 0x02
    1a0a:	9b 81       	ldd	r25, Y+3	; 0x03
    1a0c:	93 83       	std	Z+3, r25	; 0x03
    1a0e:	82 83       	std	Z+2, r24	; 0x02
    1a10:	45 2b       	or	r20, r21
    1a12:	29 f4       	brne	.+10     	; 0x1a1e <free+0xa2>
    1a14:	f0 93 53 01 	sts	0x0153, r31
    1a18:	e0 93 52 01 	sts	0x0152, r30
    1a1c:	42 c0       	rjmp	.+132    	; 0x1aa2 <free+0x126>
    1a1e:	13 96       	adiw	r26, 0x03	; 3
    1a20:	fc 93       	st	X, r31
    1a22:	ee 93       	st	-X, r30
    1a24:	12 97       	sbiw	r26, 0x02	; 2
    1a26:	ed 01       	movw	r28, r26
    1a28:	49 91       	ld	r20, Y+
    1a2a:	59 91       	ld	r21, Y+
    1a2c:	9e 01       	movw	r18, r28
    1a2e:	24 0f       	add	r18, r20
    1a30:	35 1f       	adc	r19, r21
    1a32:	e2 17       	cp	r30, r18
    1a34:	f3 07       	cpc	r31, r19
    1a36:	71 f4       	brne	.+28     	; 0x1a54 <free+0xd8>
    1a38:	80 81       	ld	r24, Z
    1a3a:	91 81       	ldd	r25, Z+1	; 0x01
    1a3c:	84 0f       	add	r24, r20
    1a3e:	95 1f       	adc	r25, r21
    1a40:	02 96       	adiw	r24, 0x02	; 2
    1a42:	11 96       	adiw	r26, 0x01	; 1
    1a44:	9c 93       	st	X, r25
    1a46:	8e 93       	st	-X, r24
    1a48:	82 81       	ldd	r24, Z+2	; 0x02
    1a4a:	93 81       	ldd	r25, Z+3	; 0x03
    1a4c:	13 96       	adiw	r26, 0x03	; 3
    1a4e:	9c 93       	st	X, r25
    1a50:	8e 93       	st	-X, r24
    1a52:	12 97       	sbiw	r26, 0x02	; 2
    1a54:	e0 e0       	ldi	r30, 0x00	; 0
    1a56:	f0 e0       	ldi	r31, 0x00	; 0
    1a58:	d8 01       	movw	r26, r16
    1a5a:	12 96       	adiw	r26, 0x02	; 2
    1a5c:	8d 91       	ld	r24, X+
    1a5e:	9c 91       	ld	r25, X
    1a60:	13 97       	sbiw	r26, 0x03	; 3
    1a62:	00 97       	sbiw	r24, 0x00	; 0
    1a64:	19 f0       	breq	.+6      	; 0x1a6c <free+0xf0>
    1a66:	f8 01       	movw	r30, r16
    1a68:	8c 01       	movw	r16, r24
    1a6a:	f6 cf       	rjmp	.-20     	; 0x1a58 <free+0xdc>
    1a6c:	8d 91       	ld	r24, X+
    1a6e:	9c 91       	ld	r25, X
    1a70:	98 01       	movw	r18, r16
    1a72:	2e 5f       	subi	r18, 0xFE	; 254
    1a74:	3f 4f       	sbci	r19, 0xFF	; 255
    1a76:	82 0f       	add	r24, r18
    1a78:	93 1f       	adc	r25, r19
    1a7a:	20 91 50 01 	lds	r18, 0x0150
    1a7e:	30 91 51 01 	lds	r19, 0x0151
    1a82:	28 17       	cp	r18, r24
    1a84:	39 07       	cpc	r19, r25
    1a86:	69 f4       	brne	.+26     	; 0x1aa2 <free+0x126>
    1a88:	30 97       	sbiw	r30, 0x00	; 0
    1a8a:	29 f4       	brne	.+10     	; 0x1a96 <free+0x11a>
    1a8c:	10 92 53 01 	sts	0x0153, r1
    1a90:	10 92 52 01 	sts	0x0152, r1
    1a94:	02 c0       	rjmp	.+4      	; 0x1a9a <free+0x11e>
    1a96:	13 82       	std	Z+3, r1	; 0x03
    1a98:	12 82       	std	Z+2, r1	; 0x02
    1a9a:	10 93 51 01 	sts	0x0151, r17
    1a9e:	00 93 50 01 	sts	0x0150, r16
    1aa2:	df 91       	pop	r29
    1aa4:	cf 91       	pop	r28
    1aa6:	1f 91       	pop	r17
    1aa8:	0f 91       	pop	r16
    1aaa:	08 95       	ret

00001aac <__do_global_dtors>:
    1aac:	10 e0       	ldi	r17, 0x00	; 0
    1aae:	cf e2       	ldi	r28, 0x2F	; 47
    1ab0:	d0 e0       	ldi	r29, 0x00	; 0
    1ab2:	04 c0       	rjmp	.+8      	; 0x1abc <__do_global_dtors+0x10>
    1ab4:	fe 01       	movw	r30, r28
    1ab6:	0e 94 57 0a 	call	0x14ae	; 0x14ae <__tablejump2__>
    1aba:	21 96       	adiw	r28, 0x01	; 1
    1abc:	c1 33       	cpi	r28, 0x31	; 49
    1abe:	d1 07       	cpc	r29, r17
    1ac0:	c9 f7       	brne	.-14     	; 0x1ab4 <__do_global_dtors+0x8>
    1ac2:	f8 94       	cli

00001ac4 <__stop_program>:
    1ac4:	ff cf       	rjmp	.-2      	; 0x1ac4 <__stop_program>
