
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
      4c:	0c 94 37 08 	jmp	0x106e	; 0x106e <__vector_19>
      50:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>

00000054 <__ctors_start>:
      54:	00 02       	muls	r16, r16
      56:	51 02       	muls	r21, r17
      58:	38 05       	cpc	r19, r8
      5a:	7b 08       	sbc	r7, r11
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
      ca:	0e 94 80 02 	call	0x500	; 0x500 <_ZN6CMotorD1Ev>
      ce:	ce 01       	movw	r24, r28
      d0:	8a 96       	adiw	r24, 0x2a	; 42
      d2:	df 91       	pop	r29
      d4:	cf 91       	pop	r28
      d6:	0c 94 48 05 	jmp	0xa90	; 0xa90 <_ZN5CGyroD1Ev>

000000da <_ZN16CStabilityKernelD0Ev>:
      da:	cf 93       	push	r28
      dc:	df 93       	push	r29
      de:	ec 01       	movw	r28, r24
      e0:	0e 94 5b 00 	call	0xb6	; 0xb6 <_ZN16CStabilityKernelD1Ev>
      e4:	ce 01       	movw	r24, r28
      e6:	df 91       	pop	r29
      e8:	cf 91       	pop	r28
      ea:	0c 94 45 05 	jmp	0xa8a	; 0xa8a <_ZdlPv>

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
     110:	0e 94 49 05 	call	0xa92	; 0xa92 <_ZN5CGyro4readEb>
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
     2b4:	0c 94 81 02 	jmp	0x502	; 0x502 <_ZN6CMotor3runEii>

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
     2ca:	0e 94 47 05 	call	0xa8e	; 0xa8e <_ZN5CGyroC1Ev>
     2ce:	ce 01       	movw	r24, r28
     2d0:	8c 59       	subi	r24, 0x9C	; 156
     2d2:	9f 4f       	sbci	r25, 0xFF	; 255
     2d4:	0e 94 74 02 	call	0x4e8	; 0x4e8 <_ZN6CMotorC1Ev>
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
     2f8:	6e e0       	ldi	r22, 0x0E	; 14
     2fa:	71 e0       	ldi	r23, 0x01	; 1
     2fc:	8a 96       	adiw	r24, 0x2a	; 42
     2fe:	0e 94 df 06 	call	0xdbe	; 0xdbe <_ZN5CGyro4initEP14CI2C_Interface>
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
     406:	0c 94 45 05 	jmp	0xa8a	; 0xa8a <_ZdlPv>

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
     452:	82 e1       	ldi	r24, 0x12	; 18
     454:	91 e0       	ldi	r25, 0x01	; 1
     456:	0e 94 f8 07 	call	0xff0	; 0xff0 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     45a:	0f 90       	pop	r0
     45c:	0f 90       	pop	r0
     45e:	0f 90       	pop	r0
     460:	0f 90       	pop	r0
     462:	b3 9b       	sbis	0x16, 3	; 22
     464:	07 c0       	rjmp	.+14     	; 0x474 <__stack+0x15>
     466:	b2 9b       	sbis	0x16, 2	; 22
     468:	05 c0       	rjmp	.+10     	; 0x474 <__stack+0x15>
     46a:	82 e1       	ldi	r24, 0x12	; 18
     46c:	91 e0       	ldi	r25, 0x01	; 1
     46e:	0e 94 1a 08 	call	0x1034	; 0x1034 <_ZN8CRTTimer4mainEv>
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
     490:	82 e1       	ldi	r24, 0x12	; 18
     492:	91 e0       	ldi	r25, 0x01	; 1
     494:	0e 94 f8 07 	call	0xff0	; 0xff0 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     498:	82 e1       	ldi	r24, 0x12	; 18
     49a:	91 e0       	ldi	r25, 0x01	; 1
     49c:	0e 94 1a 08 	call	0x1034	; 0x1034 <_ZN8CRTTimer4mainEv>
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

000004e8 <_ZN6CMotorC1Ev>:
     4e8:	80 ef       	ldi	r24, 0xF0	; 240
     4ea:	81 bb       	out	0x11, r24	; 17
     4ec:	95 98       	cbi	0x12, 5	; 18
     4ee:	81 ea       	ldi	r24, 0xA1	; 161
     4f0:	8f bd       	out	0x2f, r24	; 47
     4f2:	81 e0       	ldi	r24, 0x01	; 1
     4f4:	8e bd       	out	0x2e, r24	; 46
     4f6:	1b bc       	out	0x2b, r1	; 43
     4f8:	1a bc       	out	0x2a, r1	; 42
     4fa:	19 bc       	out	0x29, r1	; 41
     4fc:	18 bc       	out	0x28, r1	; 40
     4fe:	08 95       	ret

00000500 <_ZN6CMotorD1Ev>:
     500:	08 95       	ret

00000502 <_ZN6CMotor3runEii>:
     502:	6f 3f       	cpi	r22, 0xFF	; 255
     504:	71 05       	cpc	r23, r1
     506:	09 f0       	breq	.+2      	; 0x50a <_ZN6CMotor3runEii+0x8>
     508:	3c f4       	brge	.+14     	; 0x518 <_ZN6CMotor3runEii+0x16>
     50a:	61 30       	cpi	r22, 0x01	; 1
     50c:	8f ef       	ldi	r24, 0xFF	; 255
     50e:	78 07       	cpc	r23, r24
     510:	2c f4       	brge	.+10     	; 0x51c <_ZN6CMotor3runEii+0x1a>
     512:	61 e0       	ldi	r22, 0x01	; 1
     514:	7f ef       	ldi	r23, 0xFF	; 255
     516:	02 c0       	rjmp	.+4      	; 0x51c <_ZN6CMotor3runEii+0x1a>
     518:	6f ef       	ldi	r22, 0xFF	; 255
     51a:	70 e0       	ldi	r23, 0x00	; 0
     51c:	4f 3f       	cpi	r20, 0xFF	; 255
     51e:	51 05       	cpc	r21, r1
     520:	09 f0       	breq	.+2      	; 0x524 <_ZN6CMotor3runEii+0x22>
     522:	44 f4       	brge	.+16     	; 0x534 <_ZN6CMotor3runEii+0x32>
     524:	41 30       	cpi	r20, 0x01	; 1
     526:	8f ef       	ldi	r24, 0xFF	; 255
     528:	58 07       	cpc	r21, r24
     52a:	6c f0       	brlt	.+26     	; 0x546 <_ZN6CMotor3runEii+0x44>
     52c:	14 16       	cp	r1, r20
     52e:	15 06       	cpc	r1, r21
     530:	1c f0       	brlt	.+6      	; 0x538 <_ZN6CMotor3runEii+0x36>
     532:	05 c0       	rjmp	.+10     	; 0x53e <_ZN6CMotor3runEii+0x3c>
     534:	4f ef       	ldi	r20, 0xFF	; 255
     536:	50 e0       	ldi	r21, 0x00	; 0
     538:	4a bd       	out	0x2a, r20	; 42
     53a:	96 9a       	sbi	0x12, 6	; 18
     53c:	0b c0       	rjmp	.+22     	; 0x554 <_ZN6CMotor3runEii+0x52>
     53e:	41 15       	cp	r20, r1
     540:	51 05       	cpc	r21, r1
     542:	39 f0       	breq	.+14     	; 0x552 <_ZN6CMotor3runEii+0x50>
     544:	02 c0       	rjmp	.+4      	; 0x54a <_ZN6CMotor3runEii+0x48>
     546:	41 e0       	ldi	r20, 0x01	; 1
     548:	5f ef       	ldi	r21, 0xFF	; 255
     54a:	41 95       	neg	r20
     54c:	4a bd       	out	0x2a, r20	; 42
     54e:	96 98       	cbi	0x12, 6	; 18
     550:	01 c0       	rjmp	.+2      	; 0x554 <_ZN6CMotor3runEii+0x52>
     552:	1a bc       	out	0x2a, r1	; 42
     554:	16 16       	cp	r1, r22
     556:	17 06       	cpc	r1, r23
     558:	1c f4       	brge	.+6      	; 0x560 <_ZN6CMotor3runEii+0x5e>
     55a:	68 bd       	out	0x28, r22	; 40
     55c:	97 98       	cbi	0x12, 7	; 18
     55e:	08 95       	ret
     560:	61 15       	cp	r22, r1
     562:	71 05       	cpc	r23, r1
     564:	21 f0       	breq	.+8      	; 0x56e <_ZN6CMotor3runEii+0x6c>
     566:	61 95       	neg	r22
     568:	68 bd       	out	0x28, r22	; 40
     56a:	97 9a       	sbi	0x12, 7	; 18
     56c:	08 95       	ret
     56e:	18 bc       	out	0x28, r1	; 40
     570:	08 95       	ret

00000572 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     572:	0f 93       	push	r16
     574:	1f 93       	push	r17
     576:	cf 93       	push	r28
     578:	df 93       	push	r29
     57a:	00 d0       	rcall	.+0      	; 0x57c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     57c:	1f 92       	push	r1
     57e:	cd b7       	in	r28, 0x3d	; 61
     580:	de b7       	in	r29, 0x3e	; 62
     582:	8c 01       	movw	r16, r24
     584:	dc 01       	movw	r26, r24
     586:	ed 91       	ld	r30, X+
     588:	fc 91       	ld	r31, X
     58a:	01 90       	ld	r0, Z+
     58c:	f0 81       	ld	r31, Z
     58e:	e0 2d       	mov	r30, r0
     590:	2b 83       	std	Y+3, r18	; 0x03
     592:	4a 83       	std	Y+2, r20	; 0x02
     594:	69 83       	std	Y+1, r22	; 0x01
     596:	09 95       	icall
     598:	d8 01       	movw	r26, r16
     59a:	ed 91       	ld	r30, X+
     59c:	fc 91       	ld	r31, X
     59e:	04 80       	ldd	r0, Z+4	; 0x04
     5a0:	f5 81       	ldd	r31, Z+5	; 0x05
     5a2:	e0 2d       	mov	r30, r0
     5a4:	69 81       	ldd	r22, Y+1	; 0x01
     5a6:	c8 01       	movw	r24, r16
     5a8:	09 95       	icall
     5aa:	d8 01       	movw	r26, r16
     5ac:	ed 91       	ld	r30, X+
     5ae:	fc 91       	ld	r31, X
     5b0:	04 80       	ldd	r0, Z+4	; 0x04
     5b2:	f5 81       	ldd	r31, Z+5	; 0x05
     5b4:	e0 2d       	mov	r30, r0
     5b6:	4a 81       	ldd	r20, Y+2	; 0x02
     5b8:	64 2f       	mov	r22, r20
     5ba:	c8 01       	movw	r24, r16
     5bc:	09 95       	icall
     5be:	d8 01       	movw	r26, r16
     5c0:	ed 91       	ld	r30, X+
     5c2:	fc 91       	ld	r31, X
     5c4:	04 80       	ldd	r0, Z+4	; 0x04
     5c6:	f5 81       	ldd	r31, Z+5	; 0x05
     5c8:	e0 2d       	mov	r30, r0
     5ca:	2b 81       	ldd	r18, Y+3	; 0x03
     5cc:	62 2f       	mov	r22, r18
     5ce:	c8 01       	movw	r24, r16
     5d0:	09 95       	icall
     5d2:	d8 01       	movw	r26, r16
     5d4:	ed 91       	ld	r30, X+
     5d6:	fc 91       	ld	r31, X
     5d8:	02 80       	ldd	r0, Z+2	; 0x02
     5da:	f3 81       	ldd	r31, Z+3	; 0x03
     5dc:	e0 2d       	mov	r30, r0
     5de:	c8 01       	movw	r24, r16
     5e0:	0f 90       	pop	r0
     5e2:	0f 90       	pop	r0
     5e4:	0f 90       	pop	r0
     5e6:	df 91       	pop	r29
     5e8:	cf 91       	pop	r28
     5ea:	1f 91       	pop	r17
     5ec:	0f 91       	pop	r16
     5ee:	09 94       	ijmp

000005f0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     5f0:	0f 93       	push	r16
     5f2:	1f 93       	push	r17
     5f4:	cf 93       	push	r28
     5f6:	df 93       	push	r29
     5f8:	00 d0       	rcall	.+0      	; 0x5fa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     5fa:	00 d0       	rcall	.+0      	; 0x5fc <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     5fc:	cd b7       	in	r28, 0x3d	; 61
     5fe:	de b7       	in	r29, 0x3e	; 62
     600:	8c 01       	movw	r16, r24
     602:	dc 01       	movw	r26, r24
     604:	ed 91       	ld	r30, X+
     606:	fc 91       	ld	r31, X
     608:	01 90       	ld	r0, Z+
     60a:	f0 81       	ld	r31, Z
     60c:	e0 2d       	mov	r30, r0
     60e:	2c 83       	std	Y+4, r18	; 0x04
     610:	3b 83       	std	Y+3, r19	; 0x03
     612:	4a 83       	std	Y+2, r20	; 0x02
     614:	69 83       	std	Y+1, r22	; 0x01
     616:	09 95       	icall
     618:	d8 01       	movw	r26, r16
     61a:	ed 91       	ld	r30, X+
     61c:	fc 91       	ld	r31, X
     61e:	04 80       	ldd	r0, Z+4	; 0x04
     620:	f5 81       	ldd	r31, Z+5	; 0x05
     622:	e0 2d       	mov	r30, r0
     624:	69 81       	ldd	r22, Y+1	; 0x01
     626:	c8 01       	movw	r24, r16
     628:	09 95       	icall
     62a:	d8 01       	movw	r26, r16
     62c:	ed 91       	ld	r30, X+
     62e:	fc 91       	ld	r31, X
     630:	04 80       	ldd	r0, Z+4	; 0x04
     632:	f5 81       	ldd	r31, Z+5	; 0x05
     634:	e0 2d       	mov	r30, r0
     636:	4a 81       	ldd	r20, Y+2	; 0x02
     638:	64 2f       	mov	r22, r20
     63a:	c8 01       	movw	r24, r16
     63c:	09 95       	icall
     63e:	d8 01       	movw	r26, r16
     640:	ed 91       	ld	r30, X+
     642:	fc 91       	ld	r31, X
     644:	04 80       	ldd	r0, Z+4	; 0x04
     646:	f5 81       	ldd	r31, Z+5	; 0x05
     648:	e0 2d       	mov	r30, r0
     64a:	3b 81       	ldd	r19, Y+3	; 0x03
     64c:	63 2f       	mov	r22, r19
     64e:	c8 01       	movw	r24, r16
     650:	09 95       	icall
     652:	d8 01       	movw	r26, r16
     654:	ed 91       	ld	r30, X+
     656:	fc 91       	ld	r31, X
     658:	04 80       	ldd	r0, Z+4	; 0x04
     65a:	f5 81       	ldd	r31, Z+5	; 0x05
     65c:	e0 2d       	mov	r30, r0
     65e:	2c 81       	ldd	r18, Y+4	; 0x04
     660:	62 2f       	mov	r22, r18
     662:	c8 01       	movw	r24, r16
     664:	09 95       	icall
     666:	d8 01       	movw	r26, r16
     668:	ed 91       	ld	r30, X+
     66a:	fc 91       	ld	r31, X
     66c:	02 80       	ldd	r0, Z+2	; 0x02
     66e:	f3 81       	ldd	r31, Z+3	; 0x03
     670:	e0 2d       	mov	r30, r0
     672:	c8 01       	movw	r24, r16
     674:	0f 90       	pop	r0
     676:	0f 90       	pop	r0
     678:	0f 90       	pop	r0
     67a:	0f 90       	pop	r0
     67c:	df 91       	pop	r29
     67e:	cf 91       	pop	r28
     680:	1f 91       	pop	r17
     682:	0f 91       	pop	r16
     684:	09 94       	ijmp

00000686 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     686:	cf 92       	push	r12
     688:	df 92       	push	r13
     68a:	ef 92       	push	r14
     68c:	ff 92       	push	r15
     68e:	0f 93       	push	r16
     690:	1f 93       	push	r17
     692:	cf 93       	push	r28
     694:	df 93       	push	r29
     696:	00 d0       	rcall	.+0      	; 0x698 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     698:	00 d0       	rcall	.+0      	; 0x69a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     69a:	cd b7       	in	r28, 0x3d	; 61
     69c:	de b7       	in	r29, 0x3e	; 62
     69e:	6c 01       	movw	r12, r24
     6a0:	dc 01       	movw	r26, r24
     6a2:	ed 91       	ld	r30, X+
     6a4:	fc 91       	ld	r31, X
     6a6:	01 90       	ld	r0, Z+
     6a8:	f0 81       	ld	r31, Z
     6aa:	e0 2d       	mov	r30, r0
     6ac:	2b 83       	std	Y+3, r18	; 0x03
     6ae:	3c 83       	std	Y+4, r19	; 0x04
     6b0:	4a 83       	std	Y+2, r20	; 0x02
     6b2:	69 83       	std	Y+1, r22	; 0x01
     6b4:	09 95       	icall
     6b6:	d6 01       	movw	r26, r12
     6b8:	ed 91       	ld	r30, X+
     6ba:	fc 91       	ld	r31, X
     6bc:	04 80       	ldd	r0, Z+4	; 0x04
     6be:	f5 81       	ldd	r31, Z+5	; 0x05
     6c0:	e0 2d       	mov	r30, r0
     6c2:	69 81       	ldd	r22, Y+1	; 0x01
     6c4:	c6 01       	movw	r24, r12
     6c6:	09 95       	icall
     6c8:	d6 01       	movw	r26, r12
     6ca:	ed 91       	ld	r30, X+
     6cc:	fc 91       	ld	r31, X
     6ce:	04 80       	ldd	r0, Z+4	; 0x04
     6d0:	f5 81       	ldd	r31, Z+5	; 0x05
     6d2:	e0 2d       	mov	r30, r0
     6d4:	4a 81       	ldd	r20, Y+2	; 0x02
     6d6:	64 2f       	mov	r22, r20
     6d8:	c6 01       	movw	r24, r12
     6da:	09 95       	icall
     6dc:	2b 81       	ldd	r18, Y+3	; 0x03
     6de:	e2 2e       	mov	r14, r18
     6e0:	3c 81       	ldd	r19, Y+4	; 0x04
     6e2:	f3 2e       	mov	r15, r19
     6e4:	0e 0d       	add	r16, r14
     6e6:	1f 1d       	adc	r17, r15
     6e8:	d6 01       	movw	r26, r12
     6ea:	ed 91       	ld	r30, X+
     6ec:	fc 91       	ld	r31, X
     6ee:	e0 16       	cp	r14, r16
     6f0:	f1 06       	cpc	r15, r17
     6f2:	49 f0       	breq	.+18     	; 0x706 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
     6f4:	d7 01       	movw	r26, r14
     6f6:	6d 91       	ld	r22, X+
     6f8:	7d 01       	movw	r14, r26
     6fa:	04 80       	ldd	r0, Z+4	; 0x04
     6fc:	f5 81       	ldd	r31, Z+5	; 0x05
     6fe:	e0 2d       	mov	r30, r0
     700:	c6 01       	movw	r24, r12
     702:	09 95       	icall
     704:	f1 cf       	rjmp	.-30     	; 0x6e8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
     706:	02 80       	ldd	r0, Z+2	; 0x02
     708:	f3 81       	ldd	r31, Z+3	; 0x03
     70a:	e0 2d       	mov	r30, r0
     70c:	c6 01       	movw	r24, r12
     70e:	0f 90       	pop	r0
     710:	0f 90       	pop	r0
     712:	0f 90       	pop	r0
     714:	0f 90       	pop	r0
     716:	df 91       	pop	r29
     718:	cf 91       	pop	r28
     71a:	1f 91       	pop	r17
     71c:	0f 91       	pop	r16
     71e:	ff 90       	pop	r15
     720:	ef 90       	pop	r14
     722:	df 90       	pop	r13
     724:	cf 90       	pop	r12
     726:	09 94       	ijmp

00000728 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     728:	ef 92       	push	r14
     72a:	ff 92       	push	r15
     72c:	1f 93       	push	r17
     72e:	cf 93       	push	r28
     730:	df 93       	push	r29
     732:	1f 92       	push	r1
     734:	cd b7       	in	r28, 0x3d	; 61
     736:	de b7       	in	r29, 0x3e	; 62
     738:	7c 01       	movw	r14, r24
     73a:	16 2f       	mov	r17, r22
     73c:	dc 01       	movw	r26, r24
     73e:	ed 91       	ld	r30, X+
     740:	fc 91       	ld	r31, X
     742:	01 90       	ld	r0, Z+
     744:	f0 81       	ld	r31, Z
     746:	e0 2d       	mov	r30, r0
     748:	49 83       	std	Y+1, r20	; 0x01
     74a:	09 95       	icall
     74c:	d7 01       	movw	r26, r14
     74e:	ed 91       	ld	r30, X+
     750:	fc 91       	ld	r31, X
     752:	04 80       	ldd	r0, Z+4	; 0x04
     754:	f5 81       	ldd	r31, Z+5	; 0x05
     756:	e0 2d       	mov	r30, r0
     758:	61 2f       	mov	r22, r17
     75a:	c7 01       	movw	r24, r14
     75c:	09 95       	icall
     75e:	d7 01       	movw	r26, r14
     760:	ed 91       	ld	r30, X+
     762:	fc 91       	ld	r31, X
     764:	04 80       	ldd	r0, Z+4	; 0x04
     766:	f5 81       	ldd	r31, Z+5	; 0x05
     768:	e0 2d       	mov	r30, r0
     76a:	49 81       	ldd	r20, Y+1	; 0x01
     76c:	64 2f       	mov	r22, r20
     76e:	c7 01       	movw	r24, r14
     770:	09 95       	icall
     772:	d7 01       	movw	r26, r14
     774:	ed 91       	ld	r30, X+
     776:	fc 91       	ld	r31, X
     778:	01 90       	ld	r0, Z+
     77a:	f0 81       	ld	r31, Z
     77c:	e0 2d       	mov	r30, r0
     77e:	c7 01       	movw	r24, r14
     780:	09 95       	icall
     782:	d7 01       	movw	r26, r14
     784:	ed 91       	ld	r30, X+
     786:	fc 91       	ld	r31, X
     788:	61 2f       	mov	r22, r17
     78a:	61 60       	ori	r22, 0x01	; 1
     78c:	04 80       	ldd	r0, Z+4	; 0x04
     78e:	f5 81       	ldd	r31, Z+5	; 0x05
     790:	e0 2d       	mov	r30, r0
     792:	c7 01       	movw	r24, r14
     794:	09 95       	icall
     796:	d7 01       	movw	r26, r14
     798:	ed 91       	ld	r30, X+
     79a:	fc 91       	ld	r31, X
     79c:	06 80       	ldd	r0, Z+6	; 0x06
     79e:	f7 81       	ldd	r31, Z+7	; 0x07
     7a0:	e0 2d       	mov	r30, r0
     7a2:	60 e0       	ldi	r22, 0x00	; 0
     7a4:	c7 01       	movw	r24, r14
     7a6:	09 95       	icall
     7a8:	18 2f       	mov	r17, r24
     7aa:	d7 01       	movw	r26, r14
     7ac:	ed 91       	ld	r30, X+
     7ae:	fc 91       	ld	r31, X
     7b0:	02 80       	ldd	r0, Z+2	; 0x02
     7b2:	f3 81       	ldd	r31, Z+3	; 0x03
     7b4:	e0 2d       	mov	r30, r0
     7b6:	c7 01       	movw	r24, r14
     7b8:	09 95       	icall
     7ba:	81 2f       	mov	r24, r17
     7bc:	0f 90       	pop	r0
     7be:	df 91       	pop	r29
     7c0:	cf 91       	pop	r28
     7c2:	1f 91       	pop	r17
     7c4:	ff 90       	pop	r15
     7c6:	ef 90       	pop	r14
     7c8:	08 95       	ret

000007ca <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     7ca:	ef 92       	push	r14
     7cc:	ff 92       	push	r15
     7ce:	0f 93       	push	r16
     7d0:	1f 93       	push	r17
     7d2:	cf 93       	push	r28
     7d4:	df 93       	push	r29
     7d6:	1f 92       	push	r1
     7d8:	cd b7       	in	r28, 0x3d	; 61
     7da:	de b7       	in	r29, 0x3e	; 62
     7dc:	7c 01       	movw	r14, r24
     7de:	16 2f       	mov	r17, r22
     7e0:	dc 01       	movw	r26, r24
     7e2:	ed 91       	ld	r30, X+
     7e4:	fc 91       	ld	r31, X
     7e6:	01 90       	ld	r0, Z+
     7e8:	f0 81       	ld	r31, Z
     7ea:	e0 2d       	mov	r30, r0
     7ec:	49 83       	std	Y+1, r20	; 0x01
     7ee:	09 95       	icall
     7f0:	d7 01       	movw	r26, r14
     7f2:	ed 91       	ld	r30, X+
     7f4:	fc 91       	ld	r31, X
     7f6:	04 80       	ldd	r0, Z+4	; 0x04
     7f8:	f5 81       	ldd	r31, Z+5	; 0x05
     7fa:	e0 2d       	mov	r30, r0
     7fc:	61 2f       	mov	r22, r17
     7fe:	c7 01       	movw	r24, r14
     800:	09 95       	icall
     802:	d7 01       	movw	r26, r14
     804:	ed 91       	ld	r30, X+
     806:	fc 91       	ld	r31, X
     808:	04 80       	ldd	r0, Z+4	; 0x04
     80a:	f5 81       	ldd	r31, Z+5	; 0x05
     80c:	e0 2d       	mov	r30, r0
     80e:	49 81       	ldd	r20, Y+1	; 0x01
     810:	64 2f       	mov	r22, r20
     812:	c7 01       	movw	r24, r14
     814:	09 95       	icall
     816:	d7 01       	movw	r26, r14
     818:	ed 91       	ld	r30, X+
     81a:	fc 91       	ld	r31, X
     81c:	01 90       	ld	r0, Z+
     81e:	f0 81       	ld	r31, Z
     820:	e0 2d       	mov	r30, r0
     822:	c7 01       	movw	r24, r14
     824:	09 95       	icall
     826:	d7 01       	movw	r26, r14
     828:	ed 91       	ld	r30, X+
     82a:	fc 91       	ld	r31, X
     82c:	61 2f       	mov	r22, r17
     82e:	61 60       	ori	r22, 0x01	; 1
     830:	04 80       	ldd	r0, Z+4	; 0x04
     832:	f5 81       	ldd	r31, Z+5	; 0x05
     834:	e0 2d       	mov	r30, r0
     836:	c7 01       	movw	r24, r14
     838:	09 95       	icall
     83a:	d7 01       	movw	r26, r14
     83c:	ed 91       	ld	r30, X+
     83e:	fc 91       	ld	r31, X
     840:	06 80       	ldd	r0, Z+6	; 0x06
     842:	f7 81       	ldd	r31, Z+7	; 0x07
     844:	e0 2d       	mov	r30, r0
     846:	61 e0       	ldi	r22, 0x01	; 1
     848:	c7 01       	movw	r24, r14
     84a:	09 95       	icall
     84c:	08 2f       	mov	r16, r24
     84e:	10 e0       	ldi	r17, 0x00	; 0
     850:	10 2f       	mov	r17, r16
     852:	00 27       	eor	r16, r16
     854:	d7 01       	movw	r26, r14
     856:	ed 91       	ld	r30, X+
     858:	fc 91       	ld	r31, X
     85a:	06 80       	ldd	r0, Z+6	; 0x06
     85c:	f7 81       	ldd	r31, Z+7	; 0x07
     85e:	e0 2d       	mov	r30, r0
     860:	60 e0       	ldi	r22, 0x00	; 0
     862:	c7 01       	movw	r24, r14
     864:	09 95       	icall
     866:	08 2b       	or	r16, r24
     868:	d7 01       	movw	r26, r14
     86a:	ed 91       	ld	r30, X+
     86c:	fc 91       	ld	r31, X
     86e:	02 80       	ldd	r0, Z+2	; 0x02
     870:	f3 81       	ldd	r31, Z+3	; 0x03
     872:	e0 2d       	mov	r30, r0
     874:	c7 01       	movw	r24, r14
     876:	09 95       	icall
     878:	c8 01       	movw	r24, r16
     87a:	0f 90       	pop	r0
     87c:	df 91       	pop	r29
     87e:	cf 91       	pop	r28
     880:	1f 91       	pop	r17
     882:	0f 91       	pop	r16
     884:	ff 90       	pop	r15
     886:	ef 90       	pop	r14
     888:	08 95       	ret

0000088a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     88a:	cf 92       	push	r12
     88c:	df 92       	push	r13
     88e:	ef 92       	push	r14
     890:	ff 92       	push	r15
     892:	0f 93       	push	r16
     894:	1f 93       	push	r17
     896:	cf 93       	push	r28
     898:	df 93       	push	r29
     89a:	00 d0       	rcall	.+0      	; 0x89c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     89c:	1f 92       	push	r1
     89e:	cd b7       	in	r28, 0x3d	; 61
     8a0:	de b7       	in	r29, 0x3e	; 62
     8a2:	6c 01       	movw	r12, r24
     8a4:	f6 2e       	mov	r15, r22
     8a6:	dc 01       	movw	r26, r24
     8a8:	ed 91       	ld	r30, X+
     8aa:	fc 91       	ld	r31, X
     8ac:	01 90       	ld	r0, Z+
     8ae:	f0 81       	ld	r31, Z
     8b0:	e0 2d       	mov	r30, r0
     8b2:	2a 83       	std	Y+2, r18	; 0x02
     8b4:	3b 83       	std	Y+3, r19	; 0x03
     8b6:	49 83       	std	Y+1, r20	; 0x01
     8b8:	09 95       	icall
     8ba:	d6 01       	movw	r26, r12
     8bc:	ed 91       	ld	r30, X+
     8be:	fc 91       	ld	r31, X
     8c0:	04 80       	ldd	r0, Z+4	; 0x04
     8c2:	f5 81       	ldd	r31, Z+5	; 0x05
     8c4:	e0 2d       	mov	r30, r0
     8c6:	6f 2d       	mov	r22, r15
     8c8:	c6 01       	movw	r24, r12
     8ca:	09 95       	icall
     8cc:	d6 01       	movw	r26, r12
     8ce:	ed 91       	ld	r30, X+
     8d0:	fc 91       	ld	r31, X
     8d2:	04 80       	ldd	r0, Z+4	; 0x04
     8d4:	f5 81       	ldd	r31, Z+5	; 0x05
     8d6:	e0 2d       	mov	r30, r0
     8d8:	49 81       	ldd	r20, Y+1	; 0x01
     8da:	64 2f       	mov	r22, r20
     8dc:	c6 01       	movw	r24, r12
     8de:	09 95       	icall
     8e0:	d6 01       	movw	r26, r12
     8e2:	ed 91       	ld	r30, X+
     8e4:	fc 91       	ld	r31, X
     8e6:	01 90       	ld	r0, Z+
     8e8:	f0 81       	ld	r31, Z
     8ea:	e0 2d       	mov	r30, r0
     8ec:	c6 01       	movw	r24, r12
     8ee:	09 95       	icall
     8f0:	d6 01       	movw	r26, r12
     8f2:	ed 91       	ld	r30, X+
     8f4:	fc 91       	ld	r31, X
     8f6:	6f 2d       	mov	r22, r15
     8f8:	61 60       	ori	r22, 0x01	; 1
     8fa:	04 80       	ldd	r0, Z+4	; 0x04
     8fc:	f5 81       	ldd	r31, Z+5	; 0x05
     8fe:	e0 2d       	mov	r30, r0
     900:	c6 01       	movw	r24, r12
     902:	09 95       	icall
     904:	2a 81       	ldd	r18, Y+2	; 0x02
     906:	e2 2e       	mov	r14, r18
     908:	3b 81       	ldd	r19, Y+3	; 0x03
     90a:	f3 2e       	mov	r15, r19
     90c:	0e 0d       	add	r16, r14
     90e:	1f 1d       	adc	r17, r15
     910:	d6 01       	movw	r26, r12
     912:	ed 91       	ld	r30, X+
     914:	fc 91       	ld	r31, X
     916:	e0 16       	cp	r14, r16
     918:	f1 06       	cpc	r15, r17
     91a:	51 f0       	breq	.+20     	; 0x930 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     91c:	06 80       	ldd	r0, Z+6	; 0x06
     91e:	f7 81       	ldd	r31, Z+7	; 0x07
     920:	e0 2d       	mov	r30, r0
     922:	61 e0       	ldi	r22, 0x01	; 1
     924:	c6 01       	movw	r24, r12
     926:	09 95       	icall
     928:	f7 01       	movw	r30, r14
     92a:	81 93       	st	Z+, r24
     92c:	7f 01       	movw	r14, r30
     92e:	f0 cf       	rjmp	.-32     	; 0x910 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     930:	02 80       	ldd	r0, Z+2	; 0x02
     932:	f3 81       	ldd	r31, Z+3	; 0x03
     934:	e0 2d       	mov	r30, r0
     936:	c6 01       	movw	r24, r12
     938:	0f 90       	pop	r0
     93a:	0f 90       	pop	r0
     93c:	0f 90       	pop	r0
     93e:	df 91       	pop	r29
     940:	cf 91       	pop	r28
     942:	1f 91       	pop	r17
     944:	0f 91       	pop	r16
     946:	ff 90       	pop	r15
     948:	ef 90       	pop	r14
     94a:	df 90       	pop	r13
     94c:	cf 90       	pop	r12
     94e:	09 94       	ijmp

00000950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     950:	88 23       	and	r24, r24
     952:	21 f0       	breq	.+8      	; 0x95c <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     954:	bf 98       	cbi	0x17, 7	; 23
     956:	82 30       	cpi	r24, 0x02	; 2
     958:	19 f0       	breq	.+6      	; 0x960 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     95a:	08 95       	ret
     95c:	bf 9a       	sbi	0x17, 7	; 23
     95e:	08 95       	ret
     960:	c7 9a       	sbi	0x18, 7	; 24
     962:	08 95       	ret

00000964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     964:	00 00       	nop
     966:	00 00       	nop
     968:	08 95       	ret

0000096a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     96a:	1f 93       	push	r17
     96c:	cf 93       	push	r28
     96e:	df 93       	push	r29
     970:	16 2f       	mov	r17, r22
     972:	bd 98       	cbi	0x17, 5	; 23
     974:	80 e0       	ldi	r24, 0x00	; 0
     976:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     97a:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     97e:	d8 e0       	ldi	r29, 0x08	; 8
     980:	c0 e0       	ldi	r28, 0x00	; 0
     982:	cc 0f       	add	r28, r28
     984:	81 e0       	ldi	r24, 0x01	; 1
     986:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     98a:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     98e:	b5 99       	sbic	0x16, 5	; 22
     990:	c1 60       	ori	r28, 0x01	; 1
     992:	80 e0       	ldi	r24, 0x00	; 0
     994:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     998:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     99c:	d1 50       	subi	r29, 0x01	; 1
     99e:	89 f7       	brne	.-30     	; 0x982 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
     9a0:	11 23       	and	r17, r17
     9a2:	11 f0       	breq	.+4      	; 0x9a8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
     9a4:	bd 9a       	sbi	0x17, 5	; 23
     9a6:	01 c0       	rjmp	.+2      	; 0x9aa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
     9a8:	bd 98       	cbi	0x17, 5	; 23
     9aa:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9ae:	81 e0       	ldi	r24, 0x01	; 1
     9b0:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9b4:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9b8:	80 e0       	ldi	r24, 0x00	; 0
     9ba:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9be:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9c2:	bd 98       	cbi	0x17, 5	; 23
     9c4:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9c8:	8c 2f       	mov	r24, r28
     9ca:	df 91       	pop	r29
     9cc:	cf 91       	pop	r28
     9ce:	1f 91       	pop	r17
     9d0:	08 95       	ret

000009d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
     9d2:	cf 93       	push	r28
     9d4:	df 93       	push	r29
     9d6:	d6 2f       	mov	r29, r22
     9d8:	c8 e0       	ldi	r28, 0x08	; 8
     9da:	80 e0       	ldi	r24, 0x00	; 0
     9dc:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9e0:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9e4:	d7 ff       	sbrs	r29, 7
     9e6:	02 c0       	rjmp	.+4      	; 0x9ec <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
     9e8:	bd 98       	cbi	0x17, 5	; 23
     9ea:	01 c0       	rjmp	.+2      	; 0x9ee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
     9ec:	bd 9a       	sbi	0x17, 5	; 23
     9ee:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9f2:	81 e0       	ldi	r24, 0x01	; 1
     9f4:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9f8:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     9fc:	dd 0f       	add	r29, r29
     9fe:	c1 50       	subi	r28, 0x01	; 1
     a00:	61 f7       	brne	.-40     	; 0x9da <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
     a02:	80 e0       	ldi	r24, 0x00	; 0
     a04:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a08:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a0c:	bd 98       	cbi	0x17, 5	; 23
     a0e:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a12:	81 e0       	ldi	r24, 0x01	; 1
     a14:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a18:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a1c:	c6 b3       	in	r28, 0x16	; 22
     a1e:	80 e0       	ldi	r24, 0x00	; 0
     a20:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a24:	0e 94 b2 04 	call	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     a28:	c5 fb       	bst	r28, 5
     a2a:	cc 27       	eor	r28, r28
     a2c:	c0 f9       	bld	r28, 0
     a2e:	81 e0       	ldi	r24, 0x01	; 1
     a30:	8c 27       	eor	r24, r28
     a32:	df 91       	pop	r29
     a34:	cf 91       	pop	r28
     a36:	08 95       	ret

00000a38 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
     a38:	81 e0       	ldi	r24, 0x01	; 1
     a3a:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a3e:	bd 98       	cbi	0x17, 5	; 23
     a40:	81 e0       	ldi	r24, 0x01	; 1
     a42:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a46:	bd 9a       	sbi	0x17, 5	; 23
     a48:	80 e0       	ldi	r24, 0x00	; 0
     a4a:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a4e:	bd 98       	cbi	0x17, 5	; 23
     a50:	0c 94 b2 04 	jmp	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000a54 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
     a54:	80 e0       	ldi	r24, 0x00	; 0
     a56:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a5a:	bd 9a       	sbi	0x17, 5	; 23
     a5c:	81 e0       	ldi	r24, 0x01	; 1
     a5e:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a62:	bd 9a       	sbi	0x17, 5	; 23
     a64:	81 e0       	ldi	r24, 0x01	; 1
     a66:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a6a:	bd 98       	cbi	0x17, 5	; 23
     a6c:	0c 94 b2 04 	jmp	0x964	; 0x964 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000a70 <_GLOBAL__sub_I_i2c>:
     a70:	80 e9       	ldi	r24, 0x90	; 144
     a72:	90 e0       	ldi	r25, 0x00	; 0
     a74:	90 93 0f 01 	sts	0x010F, r25
     a78:	80 93 0e 01 	sts	0x010E, r24
     a7c:	bd 98       	cbi	0x17, 5	; 23
     a7e:	81 e0       	ldi	r24, 0x01	; 1
     a80:	0e 94 a8 04 	call	0x950	; 0x950 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a84:	c5 98       	cbi	0x18, 5	; 24
     a86:	c7 98       	cbi	0x18, 7	; 24
     a88:	08 95       	ret

00000a8a <_ZdlPv>:
     a8a:	0c 94 be 0c 	jmp	0x197c	; 0x197c <free>

00000a8e <_ZN5CGyroC1Ev>:
     a8e:	08 95       	ret

00000a90 <_ZN5CGyroD1Ev>:
     a90:	08 95       	ret

00000a92 <_ZN5CGyro4readEb>:
     a92:	4f 92       	push	r4
     a94:	5f 92       	push	r5
     a96:	6f 92       	push	r6
     a98:	7f 92       	push	r7
     a9a:	8f 92       	push	r8
     a9c:	9f 92       	push	r9
     a9e:	af 92       	push	r10
     aa0:	bf 92       	push	r11
     aa2:	cf 92       	push	r12
     aa4:	df 92       	push	r13
     aa6:	ef 92       	push	r14
     aa8:	ff 92       	push	r15
     aaa:	0f 93       	push	r16
     aac:	1f 93       	push	r17
     aae:	cf 93       	push	r28
     ab0:	df 93       	push	r29
     ab2:	ec 01       	movw	r28, r24
     ab4:	f6 2e       	mov	r15, r22
     ab6:	88 ad       	ldd	r24, Y+56	; 0x38
     ab8:	99 ad       	ldd	r25, Y+57	; 0x39
     aba:	dc 01       	movw	r26, r24
     abc:	ed 91       	ld	r30, X+
     abe:	fc 91       	ld	r31, X
     ac0:	06 84       	ldd	r0, Z+14	; 0x0e
     ac2:	f7 85       	ldd	r31, Z+15	; 0x0f
     ac4:	e0 2d       	mov	r30, r0
     ac6:	4f e0       	ldi	r20, 0x0F	; 15
     ac8:	66 ed       	ldi	r22, 0xD6	; 214
     aca:	09 95       	icall
     acc:	88 36       	cpi	r24, 0x68	; 104
     ace:	49 f4       	brne	.+18     	; 0xae2 <_ZN5CGyro4readEb+0x50>
     ad0:	81 e0       	ldi	r24, 0x01	; 1
     ad2:	90 e0       	ldi	r25, 0x00	; 0
     ad4:	a0 e0       	ldi	r26, 0x00	; 0
     ad6:	b0 e0       	ldi	r27, 0x00	; 0
     ad8:	88 ab       	std	Y+48, r24	; 0x30
     ada:	99 ab       	std	Y+49, r25	; 0x31
     adc:	aa ab       	std	Y+50, r26	; 0x32
     ade:	bb ab       	std	Y+51, r27	; 0x33
     ae0:	04 c0       	rjmp	.+8      	; 0xaea <_ZN5CGyro4readEb+0x58>
     ae2:	18 aa       	std	Y+48, r1	; 0x30
     ae4:	19 aa       	std	Y+49, r1	; 0x31
     ae6:	1a aa       	std	Y+50, r1	; 0x32
     ae8:	1b aa       	std	Y+51, r1	; 0x33
     aea:	88 ad       	ldd	r24, Y+56	; 0x38
     aec:	99 ad       	ldd	r25, Y+57	; 0x39
     aee:	dc 01       	movw	r26, r24
     af0:	ed 91       	ld	r30, X+
     af2:	fc 91       	ld	r31, X
     af4:	06 84       	ldd	r0, Z+14	; 0x0e
     af6:	f7 85       	ldd	r31, Z+15	; 0x0f
     af8:	e0 2d       	mov	r30, r0
     afa:	49 e1       	ldi	r20, 0x19	; 25
     afc:	66 ed       	ldi	r22, 0xD6	; 214
     afe:	09 95       	icall
     b00:	a8 2e       	mov	r10, r24
     b02:	b1 2c       	mov	r11, r1
     b04:	ba 2c       	mov	r11, r10
     b06:	aa 24       	eor	r10, r10
     b08:	88 ad       	ldd	r24, Y+56	; 0x38
     b0a:	99 ad       	ldd	r25, Y+57	; 0x39
     b0c:	dc 01       	movw	r26, r24
     b0e:	ed 91       	ld	r30, X+
     b10:	fc 91       	ld	r31, X
     b12:	06 84       	ldd	r0, Z+14	; 0x0e
     b14:	f7 85       	ldd	r31, Z+15	; 0x0f
     b16:	e0 2d       	mov	r30, r0
     b18:	48 e1       	ldi	r20, 0x18	; 24
     b1a:	66 ed       	ldi	r22, 0xD6	; 214
     b1c:	09 95       	icall
     b1e:	a8 2a       	or	r10, r24
     b20:	88 ad       	ldd	r24, Y+56	; 0x38
     b22:	99 ad       	ldd	r25, Y+57	; 0x39
     b24:	dc 01       	movw	r26, r24
     b26:	ed 91       	ld	r30, X+
     b28:	fc 91       	ld	r31, X
     b2a:	06 84       	ldd	r0, Z+14	; 0x0e
     b2c:	f7 85       	ldd	r31, Z+15	; 0x0f
     b2e:	e0 2d       	mov	r30, r0
     b30:	4b e1       	ldi	r20, 0x1B	; 27
     b32:	66 ed       	ldi	r22, 0xD6	; 214
     b34:	09 95       	icall
     b36:	08 2f       	mov	r16, r24
     b38:	10 e0       	ldi	r17, 0x00	; 0
     b3a:	10 2f       	mov	r17, r16
     b3c:	00 27       	eor	r16, r16
     b3e:	88 ad       	ldd	r24, Y+56	; 0x38
     b40:	99 ad       	ldd	r25, Y+57	; 0x39
     b42:	dc 01       	movw	r26, r24
     b44:	ed 91       	ld	r30, X+
     b46:	fc 91       	ld	r31, X
     b48:	06 84       	ldd	r0, Z+14	; 0x0e
     b4a:	f7 85       	ldd	r31, Z+15	; 0x0f
     b4c:	e0 2d       	mov	r30, r0
     b4e:	4a e1       	ldi	r20, 0x1A	; 26
     b50:	66 ed       	ldi	r22, 0xD6	; 214
     b52:	09 95       	icall
     b54:	08 2b       	or	r16, r24
     b56:	88 ad       	ldd	r24, Y+56	; 0x38
     b58:	99 ad       	ldd	r25, Y+57	; 0x39
     b5a:	dc 01       	movw	r26, r24
     b5c:	ed 91       	ld	r30, X+
     b5e:	fc 91       	ld	r31, X
     b60:	06 84       	ldd	r0, Z+14	; 0x0e
     b62:	f7 85       	ldd	r31, Z+15	; 0x0f
     b64:	e0 2d       	mov	r30, r0
     b66:	4d e1       	ldi	r20, 0x1D	; 29
     b68:	66 ed       	ldi	r22, 0xD6	; 214
     b6a:	09 95       	icall
     b6c:	c8 2e       	mov	r12, r24
     b6e:	d1 2c       	mov	r13, r1
     b70:	dc 2c       	mov	r13, r12
     b72:	cc 24       	eor	r12, r12
     b74:	88 ad       	ldd	r24, Y+56	; 0x38
     b76:	99 ad       	ldd	r25, Y+57	; 0x39
     b78:	dc 01       	movw	r26, r24
     b7a:	ed 91       	ld	r30, X+
     b7c:	fc 91       	ld	r31, X
     b7e:	06 84       	ldd	r0, Z+14	; 0x0e
     b80:	f7 85       	ldd	r31, Z+15	; 0x0f
     b82:	e0 2d       	mov	r30, r0
     b84:	4c e1       	ldi	r20, 0x1C	; 28
     b86:	66 ed       	ldi	r22, 0xD6	; 214
     b88:	09 95       	icall
     b8a:	c8 2a       	or	r12, r24
     b8c:	c5 01       	movw	r24, r10
     b8e:	bb 0c       	add	r11, r11
     b90:	aa 0b       	sbc	r26, r26
     b92:	bb 0b       	sbc	r27, r27
     b94:	01 2e       	mov	r0, r17
     b96:	00 0c       	add	r0, r0
     b98:	22 0b       	sbc	r18, r18
     b9a:	33 0b       	sbc	r19, r19
     b9c:	46 01       	movw	r8, r12
     b9e:	dd 0c       	add	r13, r13
     ba0:	aa 08       	sbc	r10, r10
     ba2:	bb 08       	sbc	r11, r11
     ba4:	ff 20       	and	r15, r15
     ba6:	21 f1       	breq	.+72     	; 0xbf0 <_ZN5CGyro4readEb+0x15e>
     ba8:	cc a0       	ldd	r12, Y+36	; 0x24
     baa:	dd a0       	ldd	r13, Y+37	; 0x25
     bac:	ee a0       	ldd	r14, Y+38	; 0x26
     bae:	ff a0       	ldd	r15, Y+39	; 0x27
     bb0:	c8 0e       	add	r12, r24
     bb2:	d9 1e       	adc	r13, r25
     bb4:	ea 1e       	adc	r14, r26
     bb6:	fb 1e       	adc	r15, r27
     bb8:	cc a2       	std	Y+36, r12	; 0x24
     bba:	dd a2       	std	Y+37, r13	; 0x25
     bbc:	ee a2       	std	Y+38, r14	; 0x26
     bbe:	ff a2       	std	Y+39, r15	; 0x27
     bc0:	c8 a4       	ldd	r12, Y+40	; 0x28
     bc2:	d9 a4       	ldd	r13, Y+41	; 0x29
     bc4:	ea a4       	ldd	r14, Y+42	; 0x2a
     bc6:	fb a4       	ldd	r15, Y+43	; 0x2b
     bc8:	c0 0e       	add	r12, r16
     bca:	d1 1e       	adc	r13, r17
     bcc:	e2 1e       	adc	r14, r18
     bce:	f3 1e       	adc	r15, r19
     bd0:	c8 a6       	std	Y+40, r12	; 0x28
     bd2:	d9 a6       	std	Y+41, r13	; 0x29
     bd4:	ea a6       	std	Y+42, r14	; 0x2a
     bd6:	fb a6       	std	Y+43, r15	; 0x2b
     bd8:	cc a4       	ldd	r12, Y+44	; 0x2c
     bda:	dd a4       	ldd	r13, Y+45	; 0x2d
     bdc:	ee a4       	ldd	r14, Y+46	; 0x2e
     bde:	ff a4       	ldd	r15, Y+47	; 0x2f
     be0:	c8 0c       	add	r12, r8
     be2:	d9 1c       	adc	r13, r9
     be4:	ea 1c       	adc	r14, r10
     be6:	fb 1c       	adc	r15, r11
     be8:	cc a6       	std	Y+44, r12	; 0x2c
     bea:	dd a6       	std	Y+45, r13	; 0x2d
     bec:	ee a6       	std	Y+46, r14	; 0x2e
     bee:	ff a6       	std	Y+47, r15	; 0x2f
     bf0:	cc a0       	ldd	r12, Y+36	; 0x24
     bf2:	dd a0       	ldd	r13, Y+37	; 0x25
     bf4:	ee a0       	ldd	r14, Y+38	; 0x26
     bf6:	ff a0       	ldd	r15, Y+39	; 0x27
     bf8:	bc 01       	movw	r22, r24
     bfa:	cd 01       	movw	r24, r26
     bfc:	6c 19       	sub	r22, r12
     bfe:	7d 09       	sbc	r23, r13
     c00:	8e 09       	sbc	r24, r14
     c02:	9f 09       	sbc	r25, r15
     c04:	6c 87       	std	Y+12, r22	; 0x0c
     c06:	7d 87       	std	Y+13, r23	; 0x0d
     c08:	8e 87       	std	Y+14, r24	; 0x0e
     c0a:	9f 87       	std	Y+15, r25	; 0x0f
     c0c:	c8 a4       	ldd	r12, Y+40	; 0x28
     c0e:	d9 a4       	ldd	r13, Y+41	; 0x29
     c10:	ea a4       	ldd	r14, Y+42	; 0x2a
     c12:	fb a4       	ldd	r15, Y+43	; 0x2b
     c14:	28 01       	movw	r4, r16
     c16:	39 01       	movw	r6, r18
     c18:	4c 18       	sub	r4, r12
     c1a:	5d 08       	sbc	r5, r13
     c1c:	6e 08       	sbc	r6, r14
     c1e:	7f 08       	sbc	r7, r15
     c20:	48 8a       	std	Y+16, r4	; 0x10
     c22:	59 8a       	std	Y+17, r5	; 0x11
     c24:	6a 8a       	std	Y+18, r6	; 0x12
     c26:	7b 8a       	std	Y+19, r7	; 0x13
     c28:	0c a5       	ldd	r16, Y+44	; 0x2c
     c2a:	1d a5       	ldd	r17, Y+45	; 0x2d
     c2c:	2e a5       	ldd	r18, Y+46	; 0x2e
     c2e:	3f a5       	ldd	r19, Y+47	; 0x2f
     c30:	75 01       	movw	r14, r10
     c32:	64 01       	movw	r12, r8
     c34:	c0 1a       	sub	r12, r16
     c36:	d1 0a       	sbc	r13, r17
     c38:	e2 0a       	sbc	r14, r18
     c3a:	f3 0a       	sbc	r15, r19
     c3c:	cc 8a       	std	Y+20, r12	; 0x14
     c3e:	dd 8a       	std	Y+21, r13	; 0x15
     c40:	ee 8a       	std	Y+22, r14	; 0x16
     c42:	ff 8a       	std	Y+23, r15	; 0x17
     c44:	29 e1       	ldi	r18, 0x19	; 25
     c46:	82 2e       	mov	r8, r18
     c48:	91 2c       	mov	r9, r1
     c4a:	a1 2c       	mov	r10, r1
     c4c:	b1 2c       	mov	r11, r1
     c4e:	a5 01       	movw	r20, r10
     c50:	94 01       	movw	r18, r8
     c52:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     c56:	88 8d       	ldd	r24, Y+24	; 0x18
     c58:	99 8d       	ldd	r25, Y+25	; 0x19
     c5a:	aa 8d       	ldd	r26, Y+26	; 0x1a
     c5c:	bb 8d       	ldd	r27, Y+27	; 0x1b
     c5e:	82 0f       	add	r24, r18
     c60:	93 1f       	adc	r25, r19
     c62:	a4 1f       	adc	r26, r20
     c64:	b5 1f       	adc	r27, r21
     c66:	88 8f       	std	Y+24, r24	; 0x18
     c68:	99 8f       	std	Y+25, r25	; 0x19
     c6a:	aa 8f       	std	Y+26, r26	; 0x1a
     c6c:	bb 8f       	std	Y+27, r27	; 0x1b
     c6e:	c3 01       	movw	r24, r6
     c70:	b2 01       	movw	r22, r4
     c72:	a5 01       	movw	r20, r10
     c74:	94 01       	movw	r18, r8
     c76:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     c7a:	8c 8d       	ldd	r24, Y+28	; 0x1c
     c7c:	9d 8d       	ldd	r25, Y+29	; 0x1d
     c7e:	ae 8d       	ldd	r26, Y+30	; 0x1e
     c80:	bf 8d       	ldd	r27, Y+31	; 0x1f
     c82:	82 0f       	add	r24, r18
     c84:	93 1f       	adc	r25, r19
     c86:	a4 1f       	adc	r26, r20
     c88:	b5 1f       	adc	r27, r21
     c8a:	8c 8f       	std	Y+28, r24	; 0x1c
     c8c:	9d 8f       	std	Y+29, r25	; 0x1d
     c8e:	ae 8f       	std	Y+30, r26	; 0x1e
     c90:	bf 8f       	std	Y+31, r27	; 0x1f
     c92:	c7 01       	movw	r24, r14
     c94:	b6 01       	movw	r22, r12
     c96:	a5 01       	movw	r20, r10
     c98:	94 01       	movw	r18, r8
     c9a:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     c9e:	88 a1       	ldd	r24, Y+32	; 0x20
     ca0:	99 a1       	ldd	r25, Y+33	; 0x21
     ca2:	aa a1       	ldd	r26, Y+34	; 0x22
     ca4:	bb a1       	ldd	r27, Y+35	; 0x23
     ca6:	82 0f       	add	r24, r18
     ca8:	93 1f       	adc	r25, r19
     caa:	a4 1f       	adc	r26, r20
     cac:	b5 1f       	adc	r27, r21
     cae:	88 a3       	std	Y+32, r24	; 0x20
     cb0:	99 a3       	std	Y+33, r25	; 0x21
     cb2:	aa a3       	std	Y+34, r26	; 0x22
     cb4:	bb a3       	std	Y+35, r27	; 0x23
     cb6:	88 ad       	ldd	r24, Y+56	; 0x38
     cb8:	99 ad       	ldd	r25, Y+57	; 0x39
     cba:	dc 01       	movw	r26, r24
     cbc:	ed 91       	ld	r30, X+
     cbe:	fc 91       	ld	r31, X
     cc0:	06 84       	ldd	r0, Z+14	; 0x0e
     cc2:	f7 85       	ldd	r31, Z+15	; 0x0f
     cc4:	e0 2d       	mov	r30, r0
     cc6:	49 e2       	ldi	r20, 0x29	; 41
     cc8:	66 ed       	ldi	r22, 0xD6	; 214
     cca:	09 95       	icall
     ccc:	08 2f       	mov	r16, r24
     cce:	10 e0       	ldi	r17, 0x00	; 0
     cd0:	10 2f       	mov	r17, r16
     cd2:	00 27       	eor	r16, r16
     cd4:	88 ad       	ldd	r24, Y+56	; 0x38
     cd6:	99 ad       	ldd	r25, Y+57	; 0x39
     cd8:	dc 01       	movw	r26, r24
     cda:	ed 91       	ld	r30, X+
     cdc:	fc 91       	ld	r31, X
     cde:	06 84       	ldd	r0, Z+14	; 0x0e
     ce0:	f7 85       	ldd	r31, Z+15	; 0x0f
     ce2:	e0 2d       	mov	r30, r0
     ce4:	48 e2       	ldi	r20, 0x28	; 40
     ce6:	66 ed       	ldi	r22, 0xD6	; 214
     ce8:	09 95       	icall
     cea:	68 01       	movw	r12, r16
     cec:	c8 2a       	or	r12, r24
     cee:	88 ad       	ldd	r24, Y+56	; 0x38
     cf0:	99 ad       	ldd	r25, Y+57	; 0x39
     cf2:	dc 01       	movw	r26, r24
     cf4:	ed 91       	ld	r30, X+
     cf6:	fc 91       	ld	r31, X
     cf8:	06 84       	ldd	r0, Z+14	; 0x0e
     cfa:	f7 85       	ldd	r31, Z+15	; 0x0f
     cfc:	e0 2d       	mov	r30, r0
     cfe:	4b e2       	ldi	r20, 0x2B	; 43
     d00:	66 ed       	ldi	r22, 0xD6	; 214
     d02:	09 95       	icall
     d04:	08 2f       	mov	r16, r24
     d06:	10 e0       	ldi	r17, 0x00	; 0
     d08:	10 2f       	mov	r17, r16
     d0a:	00 27       	eor	r16, r16
     d0c:	88 ad       	ldd	r24, Y+56	; 0x38
     d0e:	99 ad       	ldd	r25, Y+57	; 0x39
     d10:	dc 01       	movw	r26, r24
     d12:	ed 91       	ld	r30, X+
     d14:	fc 91       	ld	r31, X
     d16:	06 84       	ldd	r0, Z+14	; 0x0e
     d18:	f7 85       	ldd	r31, Z+15	; 0x0f
     d1a:	e0 2d       	mov	r30, r0
     d1c:	4a e2       	ldi	r20, 0x2A	; 42
     d1e:	66 ed       	ldi	r22, 0xD6	; 214
     d20:	09 95       	icall
     d22:	08 2b       	or	r16, r24
     d24:	88 ad       	ldd	r24, Y+56	; 0x38
     d26:	99 ad       	ldd	r25, Y+57	; 0x39
     d28:	dc 01       	movw	r26, r24
     d2a:	ed 91       	ld	r30, X+
     d2c:	fc 91       	ld	r31, X
     d2e:	06 84       	ldd	r0, Z+14	; 0x0e
     d30:	f7 85       	ldd	r31, Z+15	; 0x0f
     d32:	e0 2d       	mov	r30, r0
     d34:	4d e2       	ldi	r20, 0x2D	; 45
     d36:	66 ed       	ldi	r22, 0xD6	; 214
     d38:	09 95       	icall
     d3a:	90 e0       	ldi	r25, 0x00	; 0
     d3c:	f8 2e       	mov	r15, r24
     d3e:	ee 24       	eor	r14, r14
     d40:	88 ad       	ldd	r24, Y+56	; 0x38
     d42:	99 ad       	ldd	r25, Y+57	; 0x39
     d44:	dc 01       	movw	r26, r24
     d46:	ed 91       	ld	r30, X+
     d48:	fc 91       	ld	r31, X
     d4a:	06 84       	ldd	r0, Z+14	; 0x0e
     d4c:	f7 85       	ldd	r31, Z+15	; 0x0f
     d4e:	e0 2d       	mov	r30, r0
     d50:	4c e2       	ldi	r20, 0x2C	; 44
     d52:	66 ed       	ldi	r22, 0xD6	; 214
     d54:	09 95       	icall
     d56:	a6 01       	movw	r20, r12
     d58:	dd 0c       	add	r13, r13
     d5a:	66 0b       	sbc	r22, r22
     d5c:	77 0b       	sbc	r23, r23
     d5e:	48 83       	st	Y, r20
     d60:	59 83       	std	Y+1, r21	; 0x01
     d62:	6a 83       	std	Y+2, r22	; 0x02
     d64:	7b 83       	std	Y+3, r23	; 0x03
     d66:	01 2e       	mov	r0, r17
     d68:	00 0c       	add	r0, r0
     d6a:	22 0b       	sbc	r18, r18
     d6c:	33 0b       	sbc	r19, r19
     d6e:	0c 83       	std	Y+4, r16	; 0x04
     d70:	1d 83       	std	Y+5, r17	; 0x05
     d72:	2e 83       	std	Y+6, r18	; 0x06
     d74:	3f 83       	std	Y+7, r19	; 0x07
     d76:	97 01       	movw	r18, r14
     d78:	28 2b       	or	r18, r24
     d7a:	c9 01       	movw	r24, r18
     d7c:	09 2e       	mov	r0, r25
     d7e:	00 0c       	add	r0, r0
     d80:	aa 0b       	sbc	r26, r26
     d82:	bb 0b       	sbc	r27, r27
     d84:	88 87       	std	Y+8, r24	; 0x08
     d86:	99 87       	std	Y+9, r25	; 0x09
     d88:	aa 87       	std	Y+10, r26	; 0x0a
     d8a:	bb 87       	std	Y+11, r27	; 0x0b
     d8c:	df 91       	pop	r29
     d8e:	cf 91       	pop	r28
     d90:	1f 91       	pop	r17
     d92:	0f 91       	pop	r16
     d94:	ff 90       	pop	r15
     d96:	ef 90       	pop	r14
     d98:	df 90       	pop	r13
     d9a:	cf 90       	pop	r12
     d9c:	bf 90       	pop	r11
     d9e:	af 90       	pop	r10
     da0:	9f 90       	pop	r9
     da2:	8f 90       	pop	r8
     da4:	7f 90       	pop	r7
     da6:	6f 90       	pop	r6
     da8:	5f 90       	pop	r5
     daa:	4f 90       	pop	r4
     dac:	08 95       	ret

00000dae <_ZN5CGyro11delay_loopsEm>:
     dae:	41 50       	subi	r20, 0x01	; 1
     db0:	51 09       	sbc	r21, r1
     db2:	61 09       	sbc	r22, r1
     db4:	71 09       	sbc	r23, r1
     db6:	10 f0       	brcs	.+4      	; 0xdbc <_ZN5CGyro11delay_loopsEm+0xe>
     db8:	00 00       	nop
     dba:	f9 cf       	rjmp	.-14     	; 0xdae <_ZN5CGyro11delay_loopsEm>
     dbc:	08 95       	ret

00000dbe <_ZN5CGyro4initEP14CI2C_Interface>:
     dbe:	cf 92       	push	r12
     dc0:	df 92       	push	r13
     dc2:	ef 92       	push	r14
     dc4:	ff 92       	push	r15
     dc6:	cf 93       	push	r28
     dc8:	df 93       	push	r29
     dca:	ec 01       	movw	r28, r24
     dcc:	79 af       	std	Y+57, r23	; 0x39
     dce:	68 af       	std	Y+56, r22	; 0x38
     dd0:	1c 86       	std	Y+12, r1	; 0x0c
     dd2:	1d 86       	std	Y+13, r1	; 0x0d
     dd4:	1e 86       	std	Y+14, r1	; 0x0e
     dd6:	1f 86       	std	Y+15, r1	; 0x0f
     dd8:	18 8a       	std	Y+16, r1	; 0x10
     dda:	19 8a       	std	Y+17, r1	; 0x11
     ddc:	1a 8a       	std	Y+18, r1	; 0x12
     dde:	1b 8a       	std	Y+19, r1	; 0x13
     de0:	1c 8a       	std	Y+20, r1	; 0x14
     de2:	1d 8a       	std	Y+21, r1	; 0x15
     de4:	1e 8a       	std	Y+22, r1	; 0x16
     de6:	1f 8a       	std	Y+23, r1	; 0x17
     de8:	1c a2       	std	Y+36, r1	; 0x24
     dea:	1d a2       	std	Y+37, r1	; 0x25
     dec:	1e a2       	std	Y+38, r1	; 0x26
     dee:	1f a2       	std	Y+39, r1	; 0x27
     df0:	18 a6       	std	Y+40, r1	; 0x28
     df2:	19 a6       	std	Y+41, r1	; 0x29
     df4:	1a a6       	std	Y+42, r1	; 0x2a
     df6:	1b a6       	std	Y+43, r1	; 0x2b
     df8:	1c a6       	std	Y+44, r1	; 0x2c
     dfa:	1d a6       	std	Y+45, r1	; 0x2d
     dfc:	1e a6       	std	Y+46, r1	; 0x2e
     dfe:	1f a6       	std	Y+47, r1	; 0x2f
     e00:	18 8e       	std	Y+24, r1	; 0x18
     e02:	19 8e       	std	Y+25, r1	; 0x19
     e04:	1a 8e       	std	Y+26, r1	; 0x1a
     e06:	1b 8e       	std	Y+27, r1	; 0x1b
     e08:	1c 8e       	std	Y+28, r1	; 0x1c
     e0a:	1d 8e       	std	Y+29, r1	; 0x1d
     e0c:	1e 8e       	std	Y+30, r1	; 0x1e
     e0e:	1f 8e       	std	Y+31, r1	; 0x1f
     e10:	18 a2       	std	Y+32, r1	; 0x20
     e12:	19 a2       	std	Y+33, r1	; 0x21
     e14:	1a a2       	std	Y+34, r1	; 0x22
     e16:	1b a2       	std	Y+35, r1	; 0x23
     e18:	40 e1       	ldi	r20, 0x10	; 16
     e1a:	57 e2       	ldi	r21, 0x27	; 39
     e1c:	60 e0       	ldi	r22, 0x00	; 0
     e1e:	70 e0       	ldi	r23, 0x00	; 0
     e20:	0e 94 d7 06 	call	0xdae	; 0xdae <_ZN5CGyro11delay_loopsEm>
     e24:	18 aa       	std	Y+48, r1	; 0x30
     e26:	19 aa       	std	Y+49, r1	; 0x31
     e28:	1a aa       	std	Y+50, r1	; 0x32
     e2a:	1b aa       	std	Y+51, r1	; 0x33
     e2c:	88 ad       	ldd	r24, Y+56	; 0x38
     e2e:	99 ad       	ldd	r25, Y+57	; 0x39
     e30:	dc 01       	movw	r26, r24
     e32:	ed 91       	ld	r30, X+
     e34:	fc 91       	ld	r31, X
     e36:	06 84       	ldd	r0, Z+14	; 0x0e
     e38:	f7 85       	ldd	r31, Z+15	; 0x0f
     e3a:	e0 2d       	mov	r30, r0
     e3c:	4f e0       	ldi	r20, 0x0F	; 15
     e3e:	66 ed       	ldi	r22, 0xD6	; 214
     e40:	09 95       	icall
     e42:	88 36       	cpi	r24, 0x68	; 104
     e44:	41 f4       	brne	.+16     	; 0xe56 <_ZN5CGyro4initEP14CI2C_Interface+0x98>
     e46:	81 e0       	ldi	r24, 0x01	; 1
     e48:	90 e0       	ldi	r25, 0x00	; 0
     e4a:	a0 e0       	ldi	r26, 0x00	; 0
     e4c:	b0 e0       	ldi	r27, 0x00	; 0
     e4e:	88 ab       	std	Y+48, r24	; 0x30
     e50:	99 ab       	std	Y+49, r25	; 0x31
     e52:	aa ab       	std	Y+50, r26	; 0x32
     e54:	bb ab       	std	Y+51, r27	; 0x33
     e56:	88 ad       	ldd	r24, Y+56	; 0x38
     e58:	99 ad       	ldd	r25, Y+57	; 0x39
     e5a:	dc 01       	movw	r26, r24
     e5c:	ed 91       	ld	r30, X+
     e5e:	fc 91       	ld	r31, X
     e60:	00 84       	ldd	r0, Z+8	; 0x08
     e62:	f1 85       	ldd	r31, Z+9	; 0x09
     e64:	e0 2d       	mov	r30, r0
     e66:	28 ea       	ldi	r18, 0xA8	; 168
     e68:	40 e1       	ldi	r20, 0x10	; 16
     e6a:	66 ed       	ldi	r22, 0xD6	; 214
     e6c:	09 95       	icall
     e6e:	88 ad       	ldd	r24, Y+56	; 0x38
     e70:	99 ad       	ldd	r25, Y+57	; 0x39
     e72:	dc 01       	movw	r26, r24
     e74:	ed 91       	ld	r30, X+
     e76:	fc 91       	ld	r31, X
     e78:	00 84       	ldd	r0, Z+8	; 0x08
     e7a:	f1 85       	ldd	r31, Z+9	; 0x09
     e7c:	e0 2d       	mov	r30, r0
     e7e:	28 e3       	ldi	r18, 0x38	; 56
     e80:	4e e1       	ldi	r20, 0x1E	; 30
     e82:	66 ed       	ldi	r22, 0xD6	; 214
     e84:	09 95       	icall
     e86:	88 ad       	ldd	r24, Y+56	; 0x38
     e88:	99 ad       	ldd	r25, Y+57	; 0x39
     e8a:	dc 01       	movw	r26, r24
     e8c:	ed 91       	ld	r30, X+
     e8e:	fc 91       	ld	r31, X
     e90:	00 84       	ldd	r0, Z+8	; 0x08
     e92:	f1 85       	ldd	r31, Z+9	; 0x09
     e94:	e0 2d       	mov	r30, r0
     e96:	20 e0       	ldi	r18, 0x00	; 0
     e98:	4e e2       	ldi	r20, 0x2E	; 46
     e9a:	66 ed       	ldi	r22, 0xD6	; 214
     e9c:	09 95       	icall
     e9e:	88 ad       	ldd	r24, Y+56	; 0x38
     ea0:	99 ad       	ldd	r25, Y+57	; 0x39
     ea2:	dc 01       	movw	r26, r24
     ea4:	ed 91       	ld	r30, X+
     ea6:	fc 91       	ld	r31, X
     ea8:	00 84       	ldd	r0, Z+8	; 0x08
     eaa:	f1 85       	ldd	r31, Z+9	; 0x09
     eac:	e0 2d       	mov	r30, r0
     eae:	20 e0       	ldi	r18, 0x00	; 0
     eb0:	42 e1       	ldi	r20, 0x12	; 18
     eb2:	66 ed       	ldi	r22, 0xD6	; 214
     eb4:	09 95       	icall
     eb6:	88 ad       	ldd	r24, Y+56	; 0x38
     eb8:	99 ad       	ldd	r25, Y+57	; 0x39
     eba:	dc 01       	movw	r26, r24
     ebc:	ed 91       	ld	r30, X+
     ebe:	fc 91       	ld	r31, X
     ec0:	00 84       	ldd	r0, Z+8	; 0x08
     ec2:	f1 85       	ldd	r31, Z+9	; 0x09
     ec4:	e0 2d       	mov	r30, r0
     ec6:	20 e6       	ldi	r18, 0x60	; 96
     ec8:	40 e2       	ldi	r20, 0x20	; 32
     eca:	66 ed       	ldi	r22, 0xD6	; 214
     ecc:	09 95       	icall
     ece:	88 ad       	ldd	r24, Y+56	; 0x38
     ed0:	99 ad       	ldd	r25, Y+57	; 0x39
     ed2:	dc 01       	movw	r26, r24
     ed4:	ed 91       	ld	r30, X+
     ed6:	fc 91       	ld	r31, X
     ed8:	00 84       	ldd	r0, Z+8	; 0x08
     eda:	f1 85       	ldd	r31, Z+9	; 0x09
     edc:	e0 2d       	mov	r30, r0
     ede:	28 e3       	ldi	r18, 0x38	; 56
     ee0:	4f e1       	ldi	r20, 0x1F	; 31
     ee2:	66 ed       	ldi	r22, 0xD6	; 214
     ee4:	09 95       	icall
     ee6:	40 e1       	ldi	r20, 0x10	; 16
     ee8:	57 e2       	ldi	r21, 0x27	; 39
     eea:	60 e0       	ldi	r22, 0x00	; 0
     eec:	70 e0       	ldi	r23, 0x00	; 0
     eee:	ce 01       	movw	r24, r28
     ef0:	0e 94 d7 06 	call	0xdae	; 0xdae <_ZN5CGyro11delay_loopsEm>
     ef4:	60 e0       	ldi	r22, 0x00	; 0
     ef6:	ce 01       	movw	r24, r28
     ef8:	0e 94 49 05 	call	0xa92	; 0xa92 <_ZN5CGyro4readEb>
     efc:	1c aa       	std	Y+52, r1	; 0x34
     efe:	1d aa       	std	Y+53, r1	; 0x35
     f00:	1e aa       	std	Y+54, r1	; 0x36
     f02:	1f aa       	std	Y+55, r1	; 0x37
     f04:	e1 2c       	mov	r14, r1
     f06:	f1 2c       	mov	r15, r1
     f08:	61 e0       	ldi	r22, 0x01	; 1
     f0a:	ce 01       	movw	r24, r28
     f0c:	0e 94 49 05 	call	0xa92	; 0xa92 <_ZN5CGyro4readEb>
     f10:	48 ee       	ldi	r20, 0xE8	; 232
     f12:	53 e0       	ldi	r21, 0x03	; 3
     f14:	60 e0       	ldi	r22, 0x00	; 0
     f16:	70 e0       	ldi	r23, 0x00	; 0
     f18:	ce 01       	movw	r24, r28
     f1a:	0e 94 d7 06 	call	0xdae	; 0xdae <_ZN5CGyro11delay_loopsEm>
     f1e:	bf ef       	ldi	r27, 0xFF	; 255
     f20:	eb 1a       	sub	r14, r27
     f22:	fb 0a       	sbc	r15, r27
     f24:	88 ec       	ldi	r24, 0xC8	; 200
     f26:	e8 16       	cp	r14, r24
     f28:	f1 04       	cpc	r15, r1
     f2a:	71 f7       	brne	.-36     	; 0xf08 <_ZN5CGyro4initEP14CI2C_Interface+0x14a>
     f2c:	6c a1       	ldd	r22, Y+36	; 0x24
     f2e:	7d a1       	ldd	r23, Y+37	; 0x25
     f30:	8e a1       	ldd	r24, Y+38	; 0x26
     f32:	9f a1       	ldd	r25, Y+39	; 0x27
     f34:	28 ec       	ldi	r18, 0xC8	; 200
     f36:	c2 2e       	mov	r12, r18
     f38:	d1 2c       	mov	r13, r1
     f3a:	e1 2c       	mov	r14, r1
     f3c:	f1 2c       	mov	r15, r1
     f3e:	a7 01       	movw	r20, r14
     f40:	96 01       	movw	r18, r12
     f42:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     f46:	2c a3       	std	Y+36, r18	; 0x24
     f48:	3d a3       	std	Y+37, r19	; 0x25
     f4a:	4e a3       	std	Y+38, r20	; 0x26
     f4c:	5f a3       	std	Y+39, r21	; 0x27
     f4e:	68 a5       	ldd	r22, Y+40	; 0x28
     f50:	79 a5       	ldd	r23, Y+41	; 0x29
     f52:	8a a5       	ldd	r24, Y+42	; 0x2a
     f54:	9b a5       	ldd	r25, Y+43	; 0x2b
     f56:	a7 01       	movw	r20, r14
     f58:	96 01       	movw	r18, r12
     f5a:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     f5e:	28 a7       	std	Y+40, r18	; 0x28
     f60:	39 a7       	std	Y+41, r19	; 0x29
     f62:	4a a7       	std	Y+42, r20	; 0x2a
     f64:	5b a7       	std	Y+43, r21	; 0x2b
     f66:	6c a5       	ldd	r22, Y+44	; 0x2c
     f68:	7d a5       	ldd	r23, Y+45	; 0x2d
     f6a:	8e a5       	ldd	r24, Y+46	; 0x2e
     f6c:	9f a5       	ldd	r25, Y+47	; 0x2f
     f6e:	a7 01       	movw	r20, r14
     f70:	96 01       	movw	r18, r12
     f72:	0e 94 38 0a 	call	0x1470	; 0x1470 <__divmodsi4>
     f76:	2c a7       	std	Y+44, r18	; 0x2c
     f78:	3d a7       	std	Y+45, r19	; 0x2d
     f7a:	4e a7       	std	Y+46, r20	; 0x2e
     f7c:	5f a7       	std	Y+47, r21	; 0x2f
     f7e:	18 8e       	std	Y+24, r1	; 0x18
     f80:	19 8e       	std	Y+25, r1	; 0x19
     f82:	1a 8e       	std	Y+26, r1	; 0x1a
     f84:	1b 8e       	std	Y+27, r1	; 0x1b
     f86:	1c 8e       	std	Y+28, r1	; 0x1c
     f88:	1d 8e       	std	Y+29, r1	; 0x1d
     f8a:	1e 8e       	std	Y+30, r1	; 0x1e
     f8c:	1f 8e       	std	Y+31, r1	; 0x1f
     f8e:	18 a2       	std	Y+32, r1	; 0x20
     f90:	19 a2       	std	Y+33, r1	; 0x21
     f92:	1a a2       	std	Y+34, r1	; 0x22
     f94:	1b a2       	std	Y+35, r1	; 0x23
     f96:	18 82       	st	Y, r1
     f98:	19 82       	std	Y+1, r1	; 0x01
     f9a:	1a 82       	std	Y+2, r1	; 0x02
     f9c:	1b 82       	std	Y+3, r1	; 0x03
     f9e:	1c 82       	std	Y+4, r1	; 0x04
     fa0:	1d 82       	std	Y+5, r1	; 0x05
     fa2:	1e 82       	std	Y+6, r1	; 0x06
     fa4:	1f 82       	std	Y+7, r1	; 0x07
     fa6:	18 86       	std	Y+8, r1	; 0x08
     fa8:	19 86       	std	Y+9, r1	; 0x09
     faa:	1a 86       	std	Y+10, r1	; 0x0a
     fac:	1b 86       	std	Y+11, r1	; 0x0b
     fae:	df 91       	pop	r29
     fb0:	cf 91       	pop	r28
     fb2:	ff 90       	pop	r15
     fb4:	ef 90       	pop	r14
     fb6:	df 90       	pop	r13
     fb8:	cf 90       	pop	r12
     fba:	08 95       	ret

00000fbc <_ZN8CRTTimerC1Ev>:
     fbc:	e3 e1       	ldi	r30, 0x13	; 19
     fbe:	f1 e0       	ldi	r31, 0x01	; 1
     fc0:	11 82       	std	Z+1, r1	; 0x01
     fc2:	10 82       	st	Z, r1
     fc4:	13 82       	std	Z+3, r1	; 0x03
     fc6:	12 82       	std	Z+2, r1	; 0x02
     fc8:	15 82       	std	Z+5, r1	; 0x05
     fca:	14 82       	std	Z+4, r1	; 0x04
     fcc:	16 82       	std	Z+6, r1	; 0x06
     fce:	37 96       	adiw	r30, 0x07	; 7
     fd0:	81 e0       	ldi	r24, 0x01	; 1
     fd2:	eb 34       	cpi	r30, 0x4B	; 75
     fd4:	f8 07       	cpc	r31, r24
     fd6:	a1 f7       	brne	.-24     	; 0xfc0 <_ZN8CRTTimerC1Ev+0x4>
     fd8:	83 b7       	in	r24, 0x33	; 51
     fda:	88 60       	ori	r24, 0x08	; 8
     fdc:	83 bf       	out	0x33, r24	; 51
     fde:	8b e9       	ldi	r24, 0x9B	; 155
     fe0:	8c bf       	out	0x3c, r24	; 60
     fe2:	83 e0       	ldi	r24, 0x03	; 3
     fe4:	83 bf       	out	0x33, r24	; 51
     fe6:	89 b7       	in	r24, 0x39	; 57
     fe8:	82 60       	ori	r24, 0x02	; 2
     fea:	89 bf       	out	0x39, r24	; 57
     fec:	78 94       	sei
     fee:	08 95       	ret

00000ff0 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>:
     ff0:	f8 94       	cli
     ff2:	e3 e1       	ldi	r30, 0x13	; 19
     ff4:	f1 e0       	ldi	r31, 0x01	; 1
     ff6:	80 e0       	ldi	r24, 0x00	; 0
     ff8:	90 e0       	ldi	r25, 0x00	; 0
     ffa:	20 81       	ld	r18, Z
     ffc:	31 81       	ldd	r19, Z+1	; 0x01
     ffe:	23 2b       	or	r18, r19
    1000:	81 f4       	brne	.+32     	; 0x1022 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x32>
    1002:	27 e0       	ldi	r18, 0x07	; 7
    1004:	28 9f       	mul	r18, r24
    1006:	f0 01       	movw	r30, r0
    1008:	29 9f       	mul	r18, r25
    100a:	f0 0d       	add	r31, r0
    100c:	11 24       	eor	r1, r1
    100e:	ed 5e       	subi	r30, 0xED	; 237
    1010:	fe 4f       	sbci	r31, 0xFE	; 254
    1012:	71 83       	std	Z+1, r23	; 0x01
    1014:	60 83       	st	Z, r22
    1016:	53 83       	std	Z+3, r21	; 0x03
    1018:	42 83       	std	Z+2, r20	; 0x02
    101a:	55 83       	std	Z+5, r21	; 0x05
    101c:	44 83       	std	Z+4, r20	; 0x04
    101e:	16 82       	std	Z+6, r1	; 0x06
    1020:	07 c0       	rjmp	.+14     	; 0x1030 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x40>
    1022:	01 96       	adiw	r24, 0x01	; 1
    1024:	37 96       	adiw	r30, 0x07	; 7
    1026:	88 30       	cpi	r24, 0x08	; 8
    1028:	91 05       	cpc	r25, r1
    102a:	39 f7       	brne	.-50     	; 0xffa <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0xa>
    102c:	8f ef       	ldi	r24, 0xFF	; 255
    102e:	9f ef       	ldi	r25, 0xFF	; 255
    1030:	78 94       	sei
    1032:	08 95       	ret

00001034 <_ZN8CRTTimer4mainEv>:
    1034:	cf 93       	push	r28
    1036:	df 93       	push	r29
    1038:	c9 e1       	ldi	r28, 0x19	; 25
    103a:	d1 e0       	ldi	r29, 0x01	; 1
    103c:	fe 01       	movw	r30, r28
    103e:	36 97       	sbiw	r30, 0x06	; 6
    1040:	80 81       	ld	r24, Z
    1042:	91 81       	ldd	r25, Z+1	; 0x01
    1044:	00 97       	sbiw	r24, 0x00	; 0
    1046:	59 f0       	breq	.+22     	; 0x105e <_ZN8CRTTimer4mainEv+0x2a>
    1048:	28 81       	ld	r18, Y
    104a:	22 23       	and	r18, r18
    104c:	41 f0       	breq	.+16     	; 0x105e <_ZN8CRTTimer4mainEv+0x2a>
    104e:	18 82       	st	Y, r1
    1050:	dc 01       	movw	r26, r24
    1052:	ed 91       	ld	r30, X+
    1054:	fc 91       	ld	r31, X
    1056:	04 80       	ldd	r0, Z+4	; 0x04
    1058:	f5 81       	ldd	r31, Z+5	; 0x05
    105a:	e0 2d       	mov	r30, r0
    105c:	09 95       	icall
    105e:	27 96       	adiw	r28, 0x07	; 7
    1060:	b1 e0       	ldi	r27, 0x01	; 1
    1062:	c1 35       	cpi	r28, 0x51	; 81
    1064:	db 07       	cpc	r29, r27
    1066:	51 f7       	brne	.-44     	; 0x103c <_ZN8CRTTimer4mainEv+0x8>
    1068:	df 91       	pop	r29
    106a:	cf 91       	pop	r28
    106c:	08 95       	ret

0000106e <__vector_19>:
    106e:	1f 92       	push	r1
    1070:	0f 92       	push	r0
    1072:	0f b6       	in	r0, 0x3f	; 63
    1074:	0f 92       	push	r0
    1076:	11 24       	eor	r1, r1
    1078:	8f 93       	push	r24
    107a:	9f 93       	push	r25
    107c:	af 93       	push	r26
    107e:	bf 93       	push	r27
    1080:	ef 93       	push	r30
    1082:	ff 93       	push	r31
    1084:	e3 e1       	ldi	r30, 0x13	; 19
    1086:	f1 e0       	ldi	r31, 0x01	; 1
    1088:	a9 e1       	ldi	r26, 0x19	; 25
    108a:	b1 e0       	ldi	r27, 0x01	; 1
    108c:	84 81       	ldd	r24, Z+4	; 0x04
    108e:	95 81       	ldd	r25, Z+5	; 0x05
    1090:	00 97       	sbiw	r24, 0x00	; 0
    1092:	21 f0       	breq	.+8      	; 0x109c <__vector_19+0x2e>
    1094:	01 97       	sbiw	r24, 0x01	; 1
    1096:	95 83       	std	Z+5, r25	; 0x05
    1098:	84 83       	std	Z+4, r24	; 0x04
    109a:	09 c0       	rjmp	.+18     	; 0x10ae <__vector_19+0x40>
    109c:	82 81       	ldd	r24, Z+2	; 0x02
    109e:	93 81       	ldd	r25, Z+3	; 0x03
    10a0:	95 83       	std	Z+5, r25	; 0x05
    10a2:	84 83       	std	Z+4, r24	; 0x04
    10a4:	8c 91       	ld	r24, X
    10a6:	8f 3f       	cpi	r24, 0xFF	; 255
    10a8:	11 f0       	breq	.+4      	; 0x10ae <__vector_19+0x40>
    10aa:	8f 5f       	subi	r24, 0xFF	; 255
    10ac:	8c 93       	st	X, r24
    10ae:	37 96       	adiw	r30, 0x07	; 7
    10b0:	17 96       	adiw	r26, 0x07	; 7
    10b2:	81 e0       	ldi	r24, 0x01	; 1
    10b4:	eb 34       	cpi	r30, 0x4B	; 75
    10b6:	f8 07       	cpc	r31, r24
    10b8:	49 f7       	brne	.-46     	; 0x108c <__vector_19+0x1e>
    10ba:	80 91 4b 01 	lds	r24, 0x014B
    10be:	90 91 4c 01 	lds	r25, 0x014C
    10c2:	a0 91 4d 01 	lds	r26, 0x014D
    10c6:	b0 91 4e 01 	lds	r27, 0x014E
    10ca:	01 96       	adiw	r24, 0x01	; 1
    10cc:	a1 1d       	adc	r26, r1
    10ce:	b1 1d       	adc	r27, r1
    10d0:	80 93 4b 01 	sts	0x014B, r24
    10d4:	90 93 4c 01 	sts	0x014C, r25
    10d8:	a0 93 4d 01 	sts	0x014D, r26
    10dc:	b0 93 4e 01 	sts	0x014E, r27
    10e0:	ff 91       	pop	r31
    10e2:	ef 91       	pop	r30
    10e4:	bf 91       	pop	r27
    10e6:	af 91       	pop	r26
    10e8:	9f 91       	pop	r25
    10ea:	8f 91       	pop	r24
    10ec:	0f 90       	pop	r0
    10ee:	0f be       	out	0x3f, r0	; 63
    10f0:	0f 90       	pop	r0
    10f2:	1f 90       	pop	r1
    10f4:	18 95       	reti

000010f6 <_GLOBAL__sub_I_g_rt_time>:
    10f6:	82 e1       	ldi	r24, 0x12	; 18
    10f8:	91 e0       	ldi	r25, 0x01	; 1
    10fa:	0c 94 de 07 	jmp	0xfbc	; 0xfbc <_ZN8CRTTimerC1Ev>

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
