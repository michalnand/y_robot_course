
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
      4c:	0c 94 62 08 	jmp	0x10c4	; 0x10c4 <__vector_19>
      50:	0c 94 59 00 	jmp	0xb2	; 0xb2 <__bad_interrupt>

00000054 <__ctors_start>:
      54:	07 02       	muls	r16, r23
      56:	5d 02       	muls	r21, r29
      58:	3d 05       	cpc	r19, r13
      5a:	cc 08       	sbc	r12, r12
      5c:	5f 0a       	sbc	r5, r31

0000005e <__ctors_end>:
      5e:	62 02       	muls	r22, r18
      60:	63 0a       	sbc	r6, r19

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
      74:	ee e0       	ldi	r30, 0x0E	; 14
      76:	f9 e1       	ldi	r31, 0x19	; 25
      78:	02 c0       	rjmp	.+4      	; 0x7e <__do_copy_data+0x10>
      7a:	05 90       	lpm	r0, Z+
      7c:	0d 92       	st	X+, r0
      7e:	a6 39       	cpi	r26, 0x96	; 150
      80:	b1 07       	cpc	r27, r17
      82:	d9 f7       	brne	.-10     	; 0x7a <__do_copy_data+0xc>

00000084 <__do_clear_bss>:
      84:	21 e0       	ldi	r18, 0x01	; 1
      86:	a6 e9       	ldi	r26, 0x96	; 150
      88:	b0 e0       	ldi	r27, 0x00	; 0
      8a:	01 c0       	rjmp	.+2      	; 0x8e <.do_clear_bss_start>

0000008c <.do_clear_bss_loop>:
      8c:	1d 92       	st	X+, r1

0000008e <.do_clear_bss_start>:
      8e:	a7 34       	cpi	r26, 0x47	; 71
      90:	b2 07       	cpc	r27, r18
      92:	e1 f7       	brne	.-8      	; 0x8c <.do_clear_bss_loop>

00000094 <__do_global_ctors>:
      94:	10 e0       	ldi	r17, 0x00	; 0
      96:	cf e2       	ldi	r28, 0x2F	; 47
      98:	d0 e0       	ldi	r29, 0x00	; 0
      9a:	04 c0       	rjmp	.+8      	; 0xa4 <__do_global_ctors+0x10>
      9c:	21 97       	sbiw	r28, 0x01	; 1
      9e:	fe 01       	movw	r30, r28
      a0:	0e 94 a8 0a 	call	0x1550	; 0x1550 <__tablejump2__>
      a4:	ca 32       	cpi	r28, 0x2A	; 42
      a6:	d1 07       	cpc	r29, r17
      a8:	c9 f7       	brne	.-14     	; 0x9c <__do_global_ctors+0x8>
      aa:	0e 94 24 02 	call	0x448	; 0x448 <main>
      ae:	0c 94 7a 0c 	jmp	0x18f4	; 0x18f4 <__do_global_dtors>

000000b2 <__bad_interrupt>:
      b2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b6 <_Z12blink_kernelv>:
      b6:	80 91 96 00 	lds	r24, 0x0096
      ba:	90 91 97 00 	lds	r25, 0x0097
      be:	00 97       	sbiw	r24, 0x00	; 0
      c0:	19 f0       	breq	.+6      	; 0xc8 <_Z12blink_kernelv+0x12>
      c2:	01 97       	sbiw	r24, 0x01	; 1
      c4:	49 f0       	breq	.+18     	; 0xd8 <_Z12blink_kernelv+0x22>
      c6:	08 95       	ret
      c8:	de 9a       	sbi	0x1b, 6	; 27
      ca:	81 e0       	ldi	r24, 0x01	; 1
      cc:	90 e0       	ldi	r25, 0x00	; 0
      ce:	90 93 97 00 	sts	0x0097, r25
      d2:	80 93 96 00 	sts	0x0096, r24
      d6:	08 95       	ret
      d8:	de 98       	cbi	0x1b, 6	; 27
      da:	10 92 97 00 	sts	0x0097, r1
      de:	10 92 96 00 	sts	0x0096, r1
      e2:	08 95       	ret

000000e4 <_ZN16CStabilityKernelC1Ev>:
      e4:	cf 93       	push	r28
      e6:	df 93       	push	r29
      e8:	ec 01       	movw	r28, r24
      ea:	88 96       	adiw	r24, 0x28	; 40
      ec:	0e 94 4a 05 	call	0xa94	; 0xa94 <_ZN5CGyroC1Ev>
      f0:	ce 01       	movw	r24, r28
      f2:	8e 59       	subi	r24, 0x9E	; 158
      f4:	9f 4f       	sbci	r25, 0xFF	; 255
      f6:	df 91       	pop	r29
      f8:	cf 91       	pop	r28
      fa:	0c 94 77 02 	jmp	0x4ee	; 0x4ee <_ZN6CMotorC1Ev>

000000fe <_ZN16CStabilityKernelD1Ev>:
      fe:	cf 93       	push	r28
     100:	df 93       	push	r29
     102:	ec 01       	movw	r28, r24
     104:	8e 59       	subi	r24, 0x9E	; 158
     106:	9f 4f       	sbci	r25, 0xFF	; 255
     108:	0e 94 83 02 	call	0x506	; 0x506 <_ZN6CMotorD1Ev>
     10c:	ce 01       	movw	r24, r28
     10e:	88 96       	adiw	r24, 0x28	; 40
     110:	df 91       	pop	r29
     112:	cf 91       	pop	r28
     114:	0c 94 4b 05 	jmp	0xa96	; 0xa96 <_ZN5CGyroD1Ev>

00000118 <_ZN16CStabilityKernel4initEb>:
     118:	8f 92       	push	r8
     11a:	9f 92       	push	r9
     11c:	af 92       	push	r10
     11e:	bf 92       	push	r11
     120:	cf 92       	push	r12
     122:	df 92       	push	r13
     124:	ef 92       	push	r14
     126:	ff 92       	push	r15
     128:	cf 93       	push	r28
     12a:	df 93       	push	r29
     12c:	ec 01       	movw	r28, r24
     12e:	f6 2e       	mov	r15, r22
     130:	6d ef       	ldi	r22, 0xFD	; 253
     132:	70 e0       	ldi	r23, 0x00	; 0
     134:	88 96       	adiw	r24, 0x28	; 40
     136:	0e 94 e2 06 	call	0xdc4	; 0xdc4 <_ZN5CGyro4initEP14CI2C_Interface>
     13a:	fe 01       	movw	r30, r28
     13c:	e8 5a       	subi	r30, 0xA8	; 168
     13e:	ff 4f       	sbci	r31, 0xFF	; 255
     140:	80 81       	ld	r24, Z
     142:	91 81       	ldd	r25, Z+1	; 0x01
     144:	a2 81       	ldd	r26, Z+2	; 0x02
     146:	b3 81       	ldd	r27, Z+3	; 0x03
     148:	89 2b       	or	r24, r25
     14a:	8a 2b       	or	r24, r26
     14c:	8b 2b       	or	r24, r27
     14e:	49 f0       	breq	.+18     	; 0x162 <_ZN16CStabilityKernel4initEb+0x4a>
     150:	20 e0       	ldi	r18, 0x00	; 0
     152:	42 e3       	ldi	r20, 0x32	; 50
     154:	50 e0       	ldi	r21, 0x00	; 0
     156:	6b e5       	ldi	r22, 0x5B	; 91
     158:	70 e0       	ldi	r23, 0x00	; 0
     15a:	85 e4       	ldi	r24, 0x45	; 69
     15c:	91 e0       	ldi	r25, 0x01	; 1
     15e:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN6CTimer8add_taskEPFvvEjb>
     162:	ff 20       	and	r15, r15
     164:	a9 f0       	breq	.+42     	; 0x190 <_ZN16CStabilityKernel4initEb+0x78>
     166:	86 e6       	ldi	r24, 0x66	; 102
     168:	96 e6       	ldi	r25, 0x66	; 102
     16a:	a6 ee       	ldi	r26, 0xE6	; 230
     16c:	bf e3       	ldi	r27, 0x3F	; 63
     16e:	88 83       	st	Y, r24
     170:	99 83       	std	Y+1, r25	; 0x01
     172:	aa 83       	std	Y+2, r26	; 0x02
     174:	bb 83       	std	Y+3, r27	; 0x03
     176:	1c 82       	std	Y+4, r1	; 0x04
     178:	1d 82       	std	Y+5, r1	; 0x05
     17a:	1e 82       	std	Y+6, r1	; 0x06
     17c:	1f 82       	std	Y+7, r1	; 0x07
     17e:	80 e0       	ldi	r24, 0x00	; 0
     180:	90 e0       	ldi	r25, 0x00	; 0
     182:	a0 e2       	ldi	r26, 0x20	; 32
     184:	b1 e4       	ldi	r27, 0x41	; 65
     186:	88 87       	std	Y+8, r24	; 0x08
     188:	99 87       	std	Y+9, r25	; 0x09
     18a:	aa 87       	std	Y+10, r26	; 0x0a
     18c:	bb 87       	std	Y+11, r27	; 0x0b
     18e:	10 c0       	rjmp	.+32     	; 0x1b0 <_ZN16CStabilityKernel4initEb+0x98>
     190:	80 e0       	ldi	r24, 0x00	; 0
     192:	90 e0       	ldi	r25, 0x00	; 0
     194:	a0 e8       	ldi	r26, 0x80	; 128
     196:	bf e3       	ldi	r27, 0x3F	; 63
     198:	88 83       	st	Y, r24
     19a:	99 83       	std	Y+1, r25	; 0x01
     19c:	aa 83       	std	Y+2, r26	; 0x02
     19e:	bb 83       	std	Y+3, r27	; 0x03
     1a0:	1c 82       	std	Y+4, r1	; 0x04
     1a2:	1d 82       	std	Y+5, r1	; 0x05
     1a4:	1e 82       	std	Y+6, r1	; 0x06
     1a6:	1f 82       	std	Y+7, r1	; 0x07
     1a8:	18 86       	std	Y+8, r1	; 0x08
     1aa:	19 86       	std	Y+9, r1	; 0x09
     1ac:	1a 86       	std	Y+10, r1	; 0x0a
     1ae:	1b 86       	std	Y+11, r1	; 0x0b
     1b0:	88 80       	ld	r8, Y
     1b2:	99 80       	ldd	r9, Y+1	; 0x01
     1b4:	aa 80       	ldd	r10, Y+2	; 0x02
     1b6:	bb 80       	ldd	r11, Y+3	; 0x03
     1b8:	c8 84       	ldd	r12, Y+8	; 0x08
     1ba:	d9 84       	ldd	r13, Y+9	; 0x09
     1bc:	ea 84       	ldd	r14, Y+10	; 0x0a
     1be:	fb 84       	ldd	r15, Y+11	; 0x0b
     1c0:	20 e0       	ldi	r18, 0x00	; 0
     1c2:	30 e0       	ldi	r19, 0x00	; 0
     1c4:	a9 01       	movw	r20, r18
     1c6:	c5 01       	movw	r24, r10
     1c8:	b4 01       	movw	r22, r8
     1ca:	0e 94 af 0a 	call	0x155e	; 0x155e <__addsf3>
     1ce:	a7 01       	movw	r20, r14
     1d0:	96 01       	movw	r18, r12
     1d2:	0e 94 af 0a 	call	0x155e	; 0x155e <__addsf3>
     1d6:	6c 87       	std	Y+12, r22	; 0x0c
     1d8:	7d 87       	std	Y+13, r23	; 0x0d
     1da:	8e 87       	std	Y+14, r24	; 0x0e
     1dc:	9f 87       	std	Y+15, r25	; 0x0f
     1de:	b7 fa       	bst	r11, 7
     1e0:	b0 94       	com	r11
     1e2:	b7 f8       	bld	r11, 7
     1e4:	b0 94       	com	r11
     1e6:	a7 01       	movw	r20, r14
     1e8:	96 01       	movw	r18, r12
     1ea:	c7 01       	movw	r24, r14
     1ec:	b6 01       	movw	r22, r12
     1ee:	0e 94 af 0a 	call	0x155e	; 0x155e <__addsf3>
     1f2:	9b 01       	movw	r18, r22
     1f4:	ac 01       	movw	r20, r24
     1f6:	c5 01       	movw	r24, r10
     1f8:	b4 01       	movw	r22, r8
     1fa:	0e 94 ae 0a 	call	0x155c	; 0x155c <__subsf3>
     1fe:	68 8b       	std	Y+16, r22	; 0x10
     200:	79 8b       	std	Y+17, r23	; 0x11
     202:	8a 8b       	std	Y+18, r24	; 0x12
     204:	9b 8b       	std	Y+19, r25	; 0x13
     206:	cc 8a       	std	Y+20, r12	; 0x14
     208:	dd 8a       	std	Y+21, r13	; 0x15
     20a:	ee 8a       	std	Y+22, r14	; 0x16
     20c:	ff 8a       	std	Y+23, r15	; 0x17
     20e:	18 8e       	std	Y+24, r1	; 0x18
     210:	19 8e       	std	Y+25, r1	; 0x19
     212:	1a 8e       	std	Y+26, r1	; 0x1a
     214:	1b 8e       	std	Y+27, r1	; 0x1b
     216:	1c 8e       	std	Y+28, r1	; 0x1c
     218:	1d 8e       	std	Y+29, r1	; 0x1d
     21a:	1e 8e       	std	Y+30, r1	; 0x1e
     21c:	1f 8e       	std	Y+31, r1	; 0x1f
     21e:	18 a2       	std	Y+32, r1	; 0x20
     220:	19 a2       	std	Y+33, r1	; 0x21
     222:	1a a2       	std	Y+34, r1	; 0x22
     224:	1b a2       	std	Y+35, r1	; 0x23
     226:	1c a2       	std	Y+36, r1	; 0x24
     228:	1d a2       	std	Y+37, r1	; 0x25
     22a:	1e a2       	std	Y+38, r1	; 0x26
     22c:	1f a2       	std	Y+39, r1	; 0x27
     22e:	df 91       	pop	r29
     230:	cf 91       	pop	r28
     232:	ff 90       	pop	r15
     234:	ef 90       	pop	r14
     236:	df 90       	pop	r13
     238:	cf 90       	pop	r12
     23a:	bf 90       	pop	r11
     23c:	af 90       	pop	r10
     23e:	9f 90       	pop	r9
     240:	8f 90       	pop	r8
     242:	08 95       	ret

00000244 <_ZN16CStabilityKernelclEv>:
     244:	4f 92       	push	r4
     246:	5f 92       	push	r5
     248:	6f 92       	push	r6
     24a:	7f 92       	push	r7
     24c:	8f 92       	push	r8
     24e:	9f 92       	push	r9
     250:	af 92       	push	r10
     252:	bf 92       	push	r11
     254:	cf 92       	push	r12
     256:	df 92       	push	r13
     258:	ef 92       	push	r14
     25a:	ff 92       	push	r15
     25c:	cf 93       	push	r28
     25e:	df 93       	push	r29
     260:	ec 01       	movw	r28, r24
     262:	60 e0       	ldi	r22, 0x00	; 0
     264:	88 96       	adiw	r24, 0x28	; 40
     266:	0e 94 4c 05 	call	0xa98	; 0xa98 <_ZN5CGyro4readEb>
     26a:	fe 01       	movw	r30, r28
     26c:	ec 5b       	subi	r30, 0xBC	; 188
     26e:	ff 4f       	sbci	r31, 0xFF	; 255
     270:	80 81       	ld	r24, Z
     272:	91 81       	ldd	r25, Z+1	; 0x01
     274:	a2 81       	ldd	r26, Z+2	; 0x02
     276:	b3 81       	ldd	r27, Z+3	; 0x03
     278:	9c 01       	movw	r18, r24
     27a:	ad 01       	movw	r20, r26
     27c:	66 27       	eor	r22, r22
     27e:	77 27       	eor	r23, r23
     280:	cb 01       	movw	r24, r22
     282:	62 1b       	sub	r22, r18
     284:	73 0b       	sbc	r23, r19
     286:	84 0b       	sbc	r24, r20
     288:	95 0b       	sbc	r25, r21
     28a:	0e 94 58 0b 	call	0x16b0	; 0x16b0 <__floatsisf>
     28e:	2d ec       	ldi	r18, 0xCD	; 205
     290:	3c ec       	ldi	r19, 0xCC	; 204
     292:	4c ec       	ldi	r20, 0xCC	; 204
     294:	5d e3       	ldi	r21, 0x3D	; 61
     296:	0e 94 0d 0c 	call	0x181a	; 0x181a <__mulsf3>
     29a:	9b 01       	movw	r18, r22
     29c:	ac 01       	movw	r20, r24
     29e:	cc 8c       	ldd	r12, Y+28	; 0x1c
     2a0:	dd 8c       	ldd	r13, Y+29	; 0x1d
     2a2:	ee 8c       	ldd	r14, Y+30	; 0x1e
     2a4:	ff 8c       	ldd	r15, Y+31	; 0x1f
     2a6:	c8 a2       	std	Y+32, r12	; 0x20
     2a8:	d9 a2       	std	Y+33, r13	; 0x21
     2aa:	ea a2       	std	Y+34, r14	; 0x22
     2ac:	fb a2       	std	Y+35, r15	; 0x23
     2ae:	88 8c       	ldd	r8, Y+24	; 0x18
     2b0:	99 8c       	ldd	r9, Y+25	; 0x19
     2b2:	aa 8c       	ldd	r10, Y+26	; 0x1a
     2b4:	bb 8c       	ldd	r11, Y+27	; 0x1b
     2b6:	8c 8e       	std	Y+28, r8	; 0x1c
     2b8:	9d 8e       	std	Y+29, r9	; 0x1d
     2ba:	ae 8e       	std	Y+30, r10	; 0x1e
     2bc:	bf 8e       	std	Y+31, r11	; 0x1f
     2be:	60 e0       	ldi	r22, 0x00	; 0
     2c0:	70 e0       	ldi	r23, 0x00	; 0
     2c2:	cb 01       	movw	r24, r22
     2c4:	0e 94 ae 0a 	call	0x155c	; 0x155c <__subsf3>
     2c8:	68 8f       	std	Y+24, r22	; 0x18
     2ca:	79 8f       	std	Y+25, r23	; 0x19
     2cc:	8a 8f       	std	Y+26, r24	; 0x1a
     2ce:	9b 8f       	std	Y+27, r25	; 0x1b
     2d0:	2c 85       	ldd	r18, Y+12	; 0x0c
     2d2:	3d 85       	ldd	r19, Y+13	; 0x0d
     2d4:	4e 85       	ldd	r20, Y+14	; 0x0e
     2d6:	5f 85       	ldd	r21, Y+15	; 0x0f
     2d8:	0e 94 0d 0c 	call	0x181a	; 0x181a <__mulsf3>
     2dc:	2b 01       	movw	r4, r22
     2de:	3c 01       	movw	r6, r24
     2e0:	28 89       	ldd	r18, Y+16	; 0x10
     2e2:	39 89       	ldd	r19, Y+17	; 0x11
     2e4:	4a 89       	ldd	r20, Y+18	; 0x12
     2e6:	5b 89       	ldd	r21, Y+19	; 0x13
     2e8:	c5 01       	movw	r24, r10
     2ea:	b4 01       	movw	r22, r8
     2ec:	0e 94 0d 0c 	call	0x181a	; 0x181a <__mulsf3>
     2f0:	9b 01       	movw	r18, r22
     2f2:	ac 01       	movw	r20, r24
     2f4:	c3 01       	movw	r24, r6
     2f6:	b2 01       	movw	r22, r4
     2f8:	0e 94 af 0a 	call	0x155e	; 0x155e <__addsf3>
     2fc:	4b 01       	movw	r8, r22
     2fe:	5c 01       	movw	r10, r24
     300:	2c 89       	ldd	r18, Y+20	; 0x14
     302:	3d 89       	ldd	r19, Y+21	; 0x15
     304:	4e 89       	ldd	r20, Y+22	; 0x16
     306:	5f 89       	ldd	r21, Y+23	; 0x17
     308:	c7 01       	movw	r24, r14
     30a:	b6 01       	movw	r22, r12
     30c:	0e 94 0d 0c 	call	0x181a	; 0x181a <__mulsf3>
     310:	9b 01       	movw	r18, r22
     312:	ac 01       	movw	r20, r24
     314:	c5 01       	movw	r24, r10
     316:	b4 01       	movw	r22, r8
     318:	0e 94 af 0a 	call	0x155e	; 0x155e <__addsf3>
     31c:	2c a1       	ldd	r18, Y+36	; 0x24
     31e:	3d a1       	ldd	r19, Y+37	; 0x25
     320:	4e a1       	ldd	r20, Y+38	; 0x26
     322:	5f a1       	ldd	r21, Y+39	; 0x27
     324:	0e 94 af 0a 	call	0x155e	; 0x155e <__addsf3>
     328:	4b 01       	movw	r8, r22
     32a:	5c 01       	movw	r10, r24
     32c:	6c a3       	std	Y+36, r22	; 0x24
     32e:	7d a3       	std	Y+37, r23	; 0x25
     330:	8e a3       	std	Y+38, r24	; 0x26
     332:	9f a3       	std	Y+39, r25	; 0x27
     334:	20 e0       	ldi	r18, 0x00	; 0
     336:	30 e0       	ldi	r19, 0x00	; 0
     338:	a9 01       	movw	r20, r18
     33a:	0e 94 af 0a 	call	0x155e	; 0x155e <__addsf3>
     33e:	6b 01       	movw	r12, r22
     340:	7c 01       	movw	r14, r24
     342:	20 e0       	ldi	r18, 0x00	; 0
     344:	30 e0       	ldi	r19, 0x00	; 0
     346:	40 e8       	ldi	r20, 0x80	; 128
     348:	53 ec       	ldi	r21, 0xC3	; 195
     34a:	0e 94 1b 0b 	call	0x1636	; 0x1636 <__cmpsf2>
     34e:	87 fd       	sbrc	r24, 7
     350:	11 c0       	rjmp	.+34     	; 0x374 <_ZN16CStabilityKernelclEv+0x130>
     352:	20 e0       	ldi	r18, 0x00	; 0
     354:	30 e0       	ldi	r19, 0x00	; 0
     356:	40 e8       	ldi	r20, 0x80	; 128
     358:	53 e4       	ldi	r21, 0x43	; 67
     35a:	c7 01       	movw	r24, r14
     35c:	b6 01       	movw	r22, r12
     35e:	0e 94 08 0c 	call	0x1810	; 0x1810 <__gesf2>
     362:	18 16       	cp	r1, r24
     364:	6c f4       	brge	.+26     	; 0x380 <_ZN16CStabilityKernelclEv+0x13c>
     366:	c1 2c       	mov	r12, r1
     368:	d1 2c       	mov	r13, r1
     36a:	30 e8       	ldi	r19, 0x80	; 128
     36c:	e3 2e       	mov	r14, r19
     36e:	33 e4       	ldi	r19, 0x43	; 67
     370:	f3 2e       	mov	r15, r19
     372:	06 c0       	rjmp	.+12     	; 0x380 <_ZN16CStabilityKernelclEv+0x13c>
     374:	c1 2c       	mov	r12, r1
     376:	d1 2c       	mov	r13, r1
     378:	20 e8       	ldi	r18, 0x80	; 128
     37a:	e2 2e       	mov	r14, r18
     37c:	23 ec       	ldi	r18, 0xC3	; 195
     37e:	f2 2e       	mov	r15, r18
     380:	c7 01       	movw	r24, r14
     382:	b6 01       	movw	r22, r12
     384:	0e 94 20 0b 	call	0x1640	; 0x1640 <__fixsfsi>
     388:	2b 01       	movw	r4, r22
     38a:	3c 01       	movw	r6, r24
     38c:	a5 01       	movw	r20, r10
     38e:	94 01       	movw	r18, r8
     390:	60 e0       	ldi	r22, 0x00	; 0
     392:	70 e0       	ldi	r23, 0x00	; 0
     394:	cb 01       	movw	r24, r22
     396:	0e 94 ae 0a 	call	0x155c	; 0x155c <__subsf3>
     39a:	6b 01       	movw	r12, r22
     39c:	7c 01       	movw	r14, r24
     39e:	20 e0       	ldi	r18, 0x00	; 0
     3a0:	30 e0       	ldi	r19, 0x00	; 0
     3a2:	40 e8       	ldi	r20, 0x80	; 128
     3a4:	53 ec       	ldi	r21, 0xC3	; 195
     3a6:	0e 94 1b 0b 	call	0x1636	; 0x1636 <__cmpsf2>
     3aa:	87 fd       	sbrc	r24, 7
     3ac:	11 c0       	rjmp	.+34     	; 0x3d0 <_ZN16CStabilityKernelclEv+0x18c>
     3ae:	20 e0       	ldi	r18, 0x00	; 0
     3b0:	30 e0       	ldi	r19, 0x00	; 0
     3b2:	40 e8       	ldi	r20, 0x80	; 128
     3b4:	53 e4       	ldi	r21, 0x43	; 67
     3b6:	c7 01       	movw	r24, r14
     3b8:	b6 01       	movw	r22, r12
     3ba:	0e 94 08 0c 	call	0x1810	; 0x1810 <__gesf2>
     3be:	18 16       	cp	r1, r24
     3c0:	6c f4       	brge	.+26     	; 0x3dc <_ZN16CStabilityKernelclEv+0x198>
     3c2:	c1 2c       	mov	r12, r1
     3c4:	d1 2c       	mov	r13, r1
     3c6:	90 e8       	ldi	r25, 0x80	; 128
     3c8:	e9 2e       	mov	r14, r25
     3ca:	93 e4       	ldi	r25, 0x43	; 67
     3cc:	f9 2e       	mov	r15, r25
     3ce:	06 c0       	rjmp	.+12     	; 0x3dc <_ZN16CStabilityKernelclEv+0x198>
     3d0:	c1 2c       	mov	r12, r1
     3d2:	d1 2c       	mov	r13, r1
     3d4:	80 e8       	ldi	r24, 0x80	; 128
     3d6:	e8 2e       	mov	r14, r24
     3d8:	83 ec       	ldi	r24, 0xC3	; 195
     3da:	f8 2e       	mov	r15, r24
     3dc:	c7 01       	movw	r24, r14
     3de:	b6 01       	movw	r22, r12
     3e0:	0e 94 20 0b 	call	0x1640	; 0x1640 <__fixsfsi>
     3e4:	ab 01       	movw	r20, r22
     3e6:	b2 01       	movw	r22, r4
     3e8:	ce 01       	movw	r24, r28
     3ea:	8e 59       	subi	r24, 0x9E	; 158
     3ec:	9f 4f       	sbci	r25, 0xFF	; 255
     3ee:	df 91       	pop	r29
     3f0:	cf 91       	pop	r28
     3f2:	ff 90       	pop	r15
     3f4:	ef 90       	pop	r14
     3f6:	df 90       	pop	r13
     3f8:	cf 90       	pop	r12
     3fa:	bf 90       	pop	r11
     3fc:	af 90       	pop	r10
     3fe:	9f 90       	pop	r9
     400:	8f 90       	pop	r8
     402:	7f 90       	pop	r7
     404:	6f 90       	pop	r6
     406:	5f 90       	pop	r5
     408:	4f 90       	pop	r4
     40a:	0c 94 84 02 	jmp	0x508	; 0x508 <_ZN6CMotor3runEii>

0000040e <_GLOBAL__sub_I_led>:
     40e:	d6 9a       	sbi	0x1a, 6	; 26
     410:	08 95       	ret

00000412 <_Z21stability_kernel_taskv>:
     412:	8a e9       	ldi	r24, 0x9A	; 154
     414:	90 e0       	ldi	r25, 0x00	; 0
     416:	0c 94 22 01 	jmp	0x244	; 0x244 <_ZN16CStabilityKernelclEv>

0000041a <_Z5blinkv>:
     41a:	80 91 98 00 	lds	r24, 0x0098
     41e:	90 91 99 00 	lds	r25, 0x0099
     422:	00 97       	sbiw	r24, 0x00	; 0
     424:	19 f0       	breq	.+6      	; 0x42c <_Z5blinkv+0x12>
     426:	01 97       	sbiw	r24, 0x01	; 1
     428:	49 f0       	breq	.+18     	; 0x43c <_Z5blinkv+0x22>
     42a:	08 95       	ret
     42c:	dd 9a       	sbi	0x1b, 5	; 27
     42e:	81 e0       	ldi	r24, 0x01	; 1
     430:	90 e0       	ldi	r25, 0x00	; 0
     432:	90 93 99 00 	sts	0x0099, r25
     436:	80 93 98 00 	sts	0x0098, r24
     43a:	08 95       	ret
     43c:	dd 98       	cbi	0x1b, 5	; 27
     43e:	10 92 99 00 	sts	0x0099, r1
     442:	10 92 98 00 	sts	0x0098, r1
     446:	08 95       	ret

00000448 <main>:
     448:	bb 98       	cbi	0x17, 3	; 23
     44a:	c3 9a       	sbi	0x18, 3	; 24
     44c:	ba 98       	cbi	0x17, 2	; 23
     44e:	c2 9a       	sbi	0x18, 2	; 24
     450:	20 e0       	ldi	r18, 0x00	; 0
     452:	48 ec       	ldi	r20, 0xC8	; 200
     454:	50 e0       	ldi	r21, 0x00	; 0
     456:	6d e0       	ldi	r22, 0x0D	; 13
     458:	72 e0       	ldi	r23, 0x02	; 2
     45a:	85 e4       	ldi	r24, 0x45	; 69
     45c:	91 e0       	ldi	r25, 0x01	; 1
     45e:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN6CTimer8add_taskEPFvvEjb>
     462:	8b e6       	ldi	r24, 0x6B	; 107
     464:	90 e0       	ldi	r25, 0x00	; 0
     466:	9f 93       	push	r25
     468:	8f 93       	push	r24
     46a:	86 e4       	ldi	r24, 0x46	; 70
     46c:	91 e0       	ldi	r25, 0x01	; 1
     46e:	9f 93       	push	r25
     470:	8f 93       	push	r24
     472:	0e 94 db 09 	call	0x13b6	; 0x13b6 <_ZN9CTerminal6printfEPKcz>
     476:	0f 90       	pop	r0
     478:	0f 90       	pop	r0
     47a:	0f 90       	pop	r0
     47c:	0f 90       	pop	r0
     47e:	b3 9b       	sbis	0x16, 3	; 22
     480:	04 c0       	rjmp	.+8      	; 0x48a <__stack+0x2b>
     482:	b2 9b       	sbis	0x16, 2	; 22
     484:	02 c0       	rjmp	.+4      	; 0x48a <__stack+0x2b>
     486:	00 00       	nop
     488:	fa cf       	rjmp	.-12     	; 0x47e <__stack+0x1f>
     48a:	66 b3       	in	r22, 0x16	; 22
     48c:	63 fb       	bst	r22, 3
     48e:	66 27       	eor	r22, r22
     490:	60 f9       	bld	r22, 0
     492:	81 e0       	ldi	r24, 0x01	; 1
     494:	68 27       	eor	r22, r24
     496:	8a e9       	ldi	r24, 0x9A	; 154
     498:	90 e0       	ldi	r25, 0x00	; 0
     49a:	0e 94 8c 00 	call	0x118	; 0x118 <_ZN16CStabilityKernel4initEb>
     49e:	21 e0       	ldi	r18, 0x01	; 1
     4a0:	45 e0       	ldi	r20, 0x05	; 5
     4a2:	50 e0       	ldi	r21, 0x00	; 0
     4a4:	69 e0       	ldi	r22, 0x09	; 9
     4a6:	72 e0       	ldi	r23, 0x02	; 2
     4a8:	85 e4       	ldi	r24, 0x45	; 69
     4aa:	91 e0       	ldi	r25, 0x01	; 1
     4ac:	0e 94 0b 08 	call	0x1016	; 0x1016 <_ZN6CTimer8add_taskEPFvvEjb>
     4b0:	85 e4       	ldi	r24, 0x45	; 69
     4b2:	91 e0       	ldi	r25, 0x01	; 1
     4b4:	0e 94 42 08 	call	0x1084	; 0x1084 <_ZN6CTimer4mainEv>
     4b8:	fb cf       	rjmp	.-10     	; 0x4b0 <__stack+0x51>

000004ba <_GLOBAL__sub_I_led1>:
     4ba:	d5 9a       	sbi	0x1a, 5	; 26
     4bc:	8a e9       	ldi	r24, 0x9A	; 154
     4be:	90 e0       	ldi	r25, 0x00	; 0
     4c0:	0c 94 72 00 	jmp	0xe4	; 0xe4 <_ZN16CStabilityKernelC1Ev>

000004c4 <_GLOBAL__sub_D_led1>:
     4c4:	8a e9       	ldi	r24, 0x9A	; 154
     4c6:	90 e0       	ldi	r25, 0x00	; 0
     4c8:	0c 94 7f 00 	jmp	0xfe	; 0xfe <_ZN16CStabilityKernelD1Ev>

000004cc <_ZN6CUSARTC1Ev>:
     4cc:	10 bc       	out	0x20, r1	; 32
     4ce:	80 e4       	ldi	r24, 0x40	; 64
     4d0:	89 b9       	out	0x09, r24	; 9
     4d2:	80 b5       	in	r24, 0x20	; 32
     4d4:	86 68       	ori	r24, 0x86	; 134
     4d6:	80 bd       	out	0x20, r24	; 32
     4d8:	8a b1       	in	r24, 0x0a	; 10
     4da:	88 61       	ori	r24, 0x18	; 24
     4dc:	8a b9       	out	0x0a, r24	; 10
     4de:	08 95       	ret

000004e0 <_ZN6CUSARTD1Ev>:
     4e0:	08 95       	ret

000004e2 <_ZN6CUSART7putcharEc>:
     4e2:	6c b9       	out	0x0c, r22	; 12
     4e4:	5d 99       	sbic	0x0b, 5	; 11
     4e6:	02 c0       	rjmp	.+4      	; 0x4ec <_ZN6CUSART7putcharEc+0xa>
     4e8:	00 00       	nop
     4ea:	fc cf       	rjmp	.-8      	; 0x4e4 <_ZN6CUSART7putcharEc+0x2>
     4ec:	08 95       	ret

000004ee <_ZN6CMotorC1Ev>:
     4ee:	80 ef       	ldi	r24, 0xF0	; 240
     4f0:	81 bb       	out	0x11, r24	; 17
     4f2:	95 98       	cbi	0x12, 5	; 18
     4f4:	81 ea       	ldi	r24, 0xA1	; 161
     4f6:	8f bd       	out	0x2f, r24	; 47
     4f8:	81 e0       	ldi	r24, 0x01	; 1
     4fa:	8e bd       	out	0x2e, r24	; 46
     4fc:	1b bc       	out	0x2b, r1	; 43
     4fe:	1a bc       	out	0x2a, r1	; 42
     500:	19 bc       	out	0x29, r1	; 41
     502:	18 bc       	out	0x28, r1	; 40
     504:	08 95       	ret

00000506 <_ZN6CMotorD1Ev>:
     506:	08 95       	ret

00000508 <_ZN6CMotor3runEii>:
     508:	6f 3f       	cpi	r22, 0xFF	; 255
     50a:	71 05       	cpc	r23, r1
     50c:	09 f0       	breq	.+2      	; 0x510 <_ZN6CMotor3runEii+0x8>
     50e:	3c f4       	brge	.+14     	; 0x51e <_ZN6CMotor3runEii+0x16>
     510:	61 30       	cpi	r22, 0x01	; 1
     512:	8f ef       	ldi	r24, 0xFF	; 255
     514:	78 07       	cpc	r23, r24
     516:	2c f4       	brge	.+10     	; 0x522 <_ZN6CMotor3runEii+0x1a>
     518:	61 e0       	ldi	r22, 0x01	; 1
     51a:	7f ef       	ldi	r23, 0xFF	; 255
     51c:	02 c0       	rjmp	.+4      	; 0x522 <_ZN6CMotor3runEii+0x1a>
     51e:	6f ef       	ldi	r22, 0xFF	; 255
     520:	70 e0       	ldi	r23, 0x00	; 0
     522:	4f 3f       	cpi	r20, 0xFF	; 255
     524:	51 05       	cpc	r21, r1
     526:	09 f0       	breq	.+2      	; 0x52a <_ZN6CMotor3runEii+0x22>
     528:	44 f4       	brge	.+16     	; 0x53a <_ZN6CMotor3runEii+0x32>
     52a:	41 30       	cpi	r20, 0x01	; 1
     52c:	8f ef       	ldi	r24, 0xFF	; 255
     52e:	58 07       	cpc	r21, r24
     530:	6c f0       	brlt	.+26     	; 0x54c <_ZN6CMotor3runEii+0x44>
     532:	14 16       	cp	r1, r20
     534:	15 06       	cpc	r1, r21
     536:	1c f0       	brlt	.+6      	; 0x53e <_ZN6CMotor3runEii+0x36>
     538:	05 c0       	rjmp	.+10     	; 0x544 <_ZN6CMotor3runEii+0x3c>
     53a:	4f ef       	ldi	r20, 0xFF	; 255
     53c:	50 e0       	ldi	r21, 0x00	; 0
     53e:	4a bd       	out	0x2a, r20	; 42
     540:	96 9a       	sbi	0x12, 6	; 18
     542:	0b c0       	rjmp	.+22     	; 0x55a <_ZN6CMotor3runEii+0x52>
     544:	41 15       	cp	r20, r1
     546:	51 05       	cpc	r21, r1
     548:	39 f0       	breq	.+14     	; 0x558 <_ZN6CMotor3runEii+0x50>
     54a:	02 c0       	rjmp	.+4      	; 0x550 <_ZN6CMotor3runEii+0x48>
     54c:	41 e0       	ldi	r20, 0x01	; 1
     54e:	5f ef       	ldi	r21, 0xFF	; 255
     550:	41 95       	neg	r20
     552:	4a bd       	out	0x2a, r20	; 42
     554:	96 98       	cbi	0x12, 6	; 18
     556:	01 c0       	rjmp	.+2      	; 0x55a <_ZN6CMotor3runEii+0x52>
     558:	1a bc       	out	0x2a, r1	; 42
     55a:	16 16       	cp	r1, r22
     55c:	17 06       	cpc	r1, r23
     55e:	1c f4       	brge	.+6      	; 0x566 <_ZN6CMotor3runEii+0x5e>
     560:	68 bd       	out	0x28, r22	; 40
     562:	97 98       	cbi	0x12, 7	; 18
     564:	08 95       	ret
     566:	61 15       	cp	r22, r1
     568:	71 05       	cpc	r23, r1
     56a:	21 f0       	breq	.+8      	; 0x574 <_ZN6CMotor3runEii+0x6c>
     56c:	61 95       	neg	r22
     56e:	68 bd       	out	0x28, r22	; 40
     570:	97 9a       	sbi	0x12, 7	; 18
     572:	08 95       	ret
     574:	18 bc       	out	0x28, r1	; 40
     576:	08 95       	ret

00000578 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
     578:	0f 93       	push	r16
     57a:	1f 93       	push	r17
     57c:	cf 93       	push	r28
     57e:	df 93       	push	r29
     580:	00 d0       	rcall	.+0      	; 0x582 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
     582:	1f 92       	push	r1
     584:	cd b7       	in	r28, 0x3d	; 61
     586:	de b7       	in	r29, 0x3e	; 62
     588:	8c 01       	movw	r16, r24
     58a:	dc 01       	movw	r26, r24
     58c:	ed 91       	ld	r30, X+
     58e:	fc 91       	ld	r31, X
     590:	01 90       	ld	r0, Z+
     592:	f0 81       	ld	r31, Z
     594:	e0 2d       	mov	r30, r0
     596:	2b 83       	std	Y+3, r18	; 0x03
     598:	4a 83       	std	Y+2, r20	; 0x02
     59a:	69 83       	std	Y+1, r22	; 0x01
     59c:	09 95       	icall
     59e:	d8 01       	movw	r26, r16
     5a0:	ed 91       	ld	r30, X+
     5a2:	fc 91       	ld	r31, X
     5a4:	04 80       	ldd	r0, Z+4	; 0x04
     5a6:	f5 81       	ldd	r31, Z+5	; 0x05
     5a8:	e0 2d       	mov	r30, r0
     5aa:	69 81       	ldd	r22, Y+1	; 0x01
     5ac:	c8 01       	movw	r24, r16
     5ae:	09 95       	icall
     5b0:	d8 01       	movw	r26, r16
     5b2:	ed 91       	ld	r30, X+
     5b4:	fc 91       	ld	r31, X
     5b6:	04 80       	ldd	r0, Z+4	; 0x04
     5b8:	f5 81       	ldd	r31, Z+5	; 0x05
     5ba:	e0 2d       	mov	r30, r0
     5bc:	4a 81       	ldd	r20, Y+2	; 0x02
     5be:	64 2f       	mov	r22, r20
     5c0:	c8 01       	movw	r24, r16
     5c2:	09 95       	icall
     5c4:	d8 01       	movw	r26, r16
     5c6:	ed 91       	ld	r30, X+
     5c8:	fc 91       	ld	r31, X
     5ca:	04 80       	ldd	r0, Z+4	; 0x04
     5cc:	f5 81       	ldd	r31, Z+5	; 0x05
     5ce:	e0 2d       	mov	r30, r0
     5d0:	2b 81       	ldd	r18, Y+3	; 0x03
     5d2:	62 2f       	mov	r22, r18
     5d4:	c8 01       	movw	r24, r16
     5d6:	09 95       	icall
     5d8:	d8 01       	movw	r26, r16
     5da:	ed 91       	ld	r30, X+
     5dc:	fc 91       	ld	r31, X
     5de:	02 80       	ldd	r0, Z+2	; 0x02
     5e0:	f3 81       	ldd	r31, Z+3	; 0x03
     5e2:	e0 2d       	mov	r30, r0
     5e4:	c8 01       	movw	r24, r16
     5e6:	0f 90       	pop	r0
     5e8:	0f 90       	pop	r0
     5ea:	0f 90       	pop	r0
     5ec:	df 91       	pop	r29
     5ee:	cf 91       	pop	r28
     5f0:	1f 91       	pop	r17
     5f2:	0f 91       	pop	r16
     5f4:	09 94       	ijmp

000005f6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
     5f6:	0f 93       	push	r16
     5f8:	1f 93       	push	r17
     5fa:	cf 93       	push	r28
     5fc:	df 93       	push	r29
     5fe:	00 d0       	rcall	.+0      	; 0x600 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
     600:	00 d0       	rcall	.+0      	; 0x602 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
     602:	cd b7       	in	r28, 0x3d	; 61
     604:	de b7       	in	r29, 0x3e	; 62
     606:	8c 01       	movw	r16, r24
     608:	dc 01       	movw	r26, r24
     60a:	ed 91       	ld	r30, X+
     60c:	fc 91       	ld	r31, X
     60e:	01 90       	ld	r0, Z+
     610:	f0 81       	ld	r31, Z
     612:	e0 2d       	mov	r30, r0
     614:	2c 83       	std	Y+4, r18	; 0x04
     616:	3b 83       	std	Y+3, r19	; 0x03
     618:	4a 83       	std	Y+2, r20	; 0x02
     61a:	69 83       	std	Y+1, r22	; 0x01
     61c:	09 95       	icall
     61e:	d8 01       	movw	r26, r16
     620:	ed 91       	ld	r30, X+
     622:	fc 91       	ld	r31, X
     624:	04 80       	ldd	r0, Z+4	; 0x04
     626:	f5 81       	ldd	r31, Z+5	; 0x05
     628:	e0 2d       	mov	r30, r0
     62a:	69 81       	ldd	r22, Y+1	; 0x01
     62c:	c8 01       	movw	r24, r16
     62e:	09 95       	icall
     630:	d8 01       	movw	r26, r16
     632:	ed 91       	ld	r30, X+
     634:	fc 91       	ld	r31, X
     636:	04 80       	ldd	r0, Z+4	; 0x04
     638:	f5 81       	ldd	r31, Z+5	; 0x05
     63a:	e0 2d       	mov	r30, r0
     63c:	4a 81       	ldd	r20, Y+2	; 0x02
     63e:	64 2f       	mov	r22, r20
     640:	c8 01       	movw	r24, r16
     642:	09 95       	icall
     644:	d8 01       	movw	r26, r16
     646:	ed 91       	ld	r30, X+
     648:	fc 91       	ld	r31, X
     64a:	04 80       	ldd	r0, Z+4	; 0x04
     64c:	f5 81       	ldd	r31, Z+5	; 0x05
     64e:	e0 2d       	mov	r30, r0
     650:	3b 81       	ldd	r19, Y+3	; 0x03
     652:	63 2f       	mov	r22, r19
     654:	c8 01       	movw	r24, r16
     656:	09 95       	icall
     658:	d8 01       	movw	r26, r16
     65a:	ed 91       	ld	r30, X+
     65c:	fc 91       	ld	r31, X
     65e:	04 80       	ldd	r0, Z+4	; 0x04
     660:	f5 81       	ldd	r31, Z+5	; 0x05
     662:	e0 2d       	mov	r30, r0
     664:	2c 81       	ldd	r18, Y+4	; 0x04
     666:	62 2f       	mov	r22, r18
     668:	c8 01       	movw	r24, r16
     66a:	09 95       	icall
     66c:	d8 01       	movw	r26, r16
     66e:	ed 91       	ld	r30, X+
     670:	fc 91       	ld	r31, X
     672:	02 80       	ldd	r0, Z+2	; 0x02
     674:	f3 81       	ldd	r31, Z+3	; 0x03
     676:	e0 2d       	mov	r30, r0
     678:	c8 01       	movw	r24, r16
     67a:	0f 90       	pop	r0
     67c:	0f 90       	pop	r0
     67e:	0f 90       	pop	r0
     680:	0f 90       	pop	r0
     682:	df 91       	pop	r29
     684:	cf 91       	pop	r28
     686:	1f 91       	pop	r17
     688:	0f 91       	pop	r16
     68a:	09 94       	ijmp

0000068c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
     68c:	cf 92       	push	r12
     68e:	df 92       	push	r13
     690:	ef 92       	push	r14
     692:	ff 92       	push	r15
     694:	0f 93       	push	r16
     696:	1f 93       	push	r17
     698:	cf 93       	push	r28
     69a:	df 93       	push	r29
     69c:	00 d0       	rcall	.+0      	; 0x69e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
     69e:	00 d0       	rcall	.+0      	; 0x6a0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
     6a0:	cd b7       	in	r28, 0x3d	; 61
     6a2:	de b7       	in	r29, 0x3e	; 62
     6a4:	6c 01       	movw	r12, r24
     6a6:	dc 01       	movw	r26, r24
     6a8:	ed 91       	ld	r30, X+
     6aa:	fc 91       	ld	r31, X
     6ac:	01 90       	ld	r0, Z+
     6ae:	f0 81       	ld	r31, Z
     6b0:	e0 2d       	mov	r30, r0
     6b2:	2b 83       	std	Y+3, r18	; 0x03
     6b4:	3c 83       	std	Y+4, r19	; 0x04
     6b6:	4a 83       	std	Y+2, r20	; 0x02
     6b8:	69 83       	std	Y+1, r22	; 0x01
     6ba:	09 95       	icall
     6bc:	d6 01       	movw	r26, r12
     6be:	ed 91       	ld	r30, X+
     6c0:	fc 91       	ld	r31, X
     6c2:	04 80       	ldd	r0, Z+4	; 0x04
     6c4:	f5 81       	ldd	r31, Z+5	; 0x05
     6c6:	e0 2d       	mov	r30, r0
     6c8:	69 81       	ldd	r22, Y+1	; 0x01
     6ca:	c6 01       	movw	r24, r12
     6cc:	09 95       	icall
     6ce:	d6 01       	movw	r26, r12
     6d0:	ed 91       	ld	r30, X+
     6d2:	fc 91       	ld	r31, X
     6d4:	04 80       	ldd	r0, Z+4	; 0x04
     6d6:	f5 81       	ldd	r31, Z+5	; 0x05
     6d8:	e0 2d       	mov	r30, r0
     6da:	4a 81       	ldd	r20, Y+2	; 0x02
     6dc:	64 2f       	mov	r22, r20
     6de:	c6 01       	movw	r24, r12
     6e0:	09 95       	icall
     6e2:	2b 81       	ldd	r18, Y+3	; 0x03
     6e4:	e2 2e       	mov	r14, r18
     6e6:	3c 81       	ldd	r19, Y+4	; 0x04
     6e8:	f3 2e       	mov	r15, r19
     6ea:	0e 0d       	add	r16, r14
     6ec:	1f 1d       	adc	r17, r15
     6ee:	d6 01       	movw	r26, r12
     6f0:	ed 91       	ld	r30, X+
     6f2:	fc 91       	ld	r31, X
     6f4:	e0 16       	cp	r14, r16
     6f6:	f1 06       	cpc	r15, r17
     6f8:	49 f0       	breq	.+18     	; 0x70c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
     6fa:	d7 01       	movw	r26, r14
     6fc:	6d 91       	ld	r22, X+
     6fe:	7d 01       	movw	r14, r26
     700:	04 80       	ldd	r0, Z+4	; 0x04
     702:	f5 81       	ldd	r31, Z+5	; 0x05
     704:	e0 2d       	mov	r30, r0
     706:	c6 01       	movw	r24, r12
     708:	09 95       	icall
     70a:	f1 cf       	rjmp	.-30     	; 0x6ee <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
     70c:	02 80       	ldd	r0, Z+2	; 0x02
     70e:	f3 81       	ldd	r31, Z+3	; 0x03
     710:	e0 2d       	mov	r30, r0
     712:	c6 01       	movw	r24, r12
     714:	0f 90       	pop	r0
     716:	0f 90       	pop	r0
     718:	0f 90       	pop	r0
     71a:	0f 90       	pop	r0
     71c:	df 91       	pop	r29
     71e:	cf 91       	pop	r28
     720:	1f 91       	pop	r17
     722:	0f 91       	pop	r16
     724:	ff 90       	pop	r15
     726:	ef 90       	pop	r14
     728:	df 90       	pop	r13
     72a:	cf 90       	pop	r12
     72c:	09 94       	ijmp

0000072e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
     72e:	ef 92       	push	r14
     730:	ff 92       	push	r15
     732:	1f 93       	push	r17
     734:	cf 93       	push	r28
     736:	df 93       	push	r29
     738:	1f 92       	push	r1
     73a:	cd b7       	in	r28, 0x3d	; 61
     73c:	de b7       	in	r29, 0x3e	; 62
     73e:	7c 01       	movw	r14, r24
     740:	16 2f       	mov	r17, r22
     742:	dc 01       	movw	r26, r24
     744:	ed 91       	ld	r30, X+
     746:	fc 91       	ld	r31, X
     748:	01 90       	ld	r0, Z+
     74a:	f0 81       	ld	r31, Z
     74c:	e0 2d       	mov	r30, r0
     74e:	49 83       	std	Y+1, r20	; 0x01
     750:	09 95       	icall
     752:	d7 01       	movw	r26, r14
     754:	ed 91       	ld	r30, X+
     756:	fc 91       	ld	r31, X
     758:	04 80       	ldd	r0, Z+4	; 0x04
     75a:	f5 81       	ldd	r31, Z+5	; 0x05
     75c:	e0 2d       	mov	r30, r0
     75e:	61 2f       	mov	r22, r17
     760:	c7 01       	movw	r24, r14
     762:	09 95       	icall
     764:	d7 01       	movw	r26, r14
     766:	ed 91       	ld	r30, X+
     768:	fc 91       	ld	r31, X
     76a:	04 80       	ldd	r0, Z+4	; 0x04
     76c:	f5 81       	ldd	r31, Z+5	; 0x05
     76e:	e0 2d       	mov	r30, r0
     770:	49 81       	ldd	r20, Y+1	; 0x01
     772:	64 2f       	mov	r22, r20
     774:	c7 01       	movw	r24, r14
     776:	09 95       	icall
     778:	d7 01       	movw	r26, r14
     77a:	ed 91       	ld	r30, X+
     77c:	fc 91       	ld	r31, X
     77e:	01 90       	ld	r0, Z+
     780:	f0 81       	ld	r31, Z
     782:	e0 2d       	mov	r30, r0
     784:	c7 01       	movw	r24, r14
     786:	09 95       	icall
     788:	d7 01       	movw	r26, r14
     78a:	ed 91       	ld	r30, X+
     78c:	fc 91       	ld	r31, X
     78e:	61 2f       	mov	r22, r17
     790:	61 60       	ori	r22, 0x01	; 1
     792:	04 80       	ldd	r0, Z+4	; 0x04
     794:	f5 81       	ldd	r31, Z+5	; 0x05
     796:	e0 2d       	mov	r30, r0
     798:	c7 01       	movw	r24, r14
     79a:	09 95       	icall
     79c:	d7 01       	movw	r26, r14
     79e:	ed 91       	ld	r30, X+
     7a0:	fc 91       	ld	r31, X
     7a2:	06 80       	ldd	r0, Z+6	; 0x06
     7a4:	f7 81       	ldd	r31, Z+7	; 0x07
     7a6:	e0 2d       	mov	r30, r0
     7a8:	60 e0       	ldi	r22, 0x00	; 0
     7aa:	c7 01       	movw	r24, r14
     7ac:	09 95       	icall
     7ae:	18 2f       	mov	r17, r24
     7b0:	d7 01       	movw	r26, r14
     7b2:	ed 91       	ld	r30, X+
     7b4:	fc 91       	ld	r31, X
     7b6:	02 80       	ldd	r0, Z+2	; 0x02
     7b8:	f3 81       	ldd	r31, Z+3	; 0x03
     7ba:	e0 2d       	mov	r30, r0
     7bc:	c7 01       	movw	r24, r14
     7be:	09 95       	icall
     7c0:	81 2f       	mov	r24, r17
     7c2:	0f 90       	pop	r0
     7c4:	df 91       	pop	r29
     7c6:	cf 91       	pop	r28
     7c8:	1f 91       	pop	r17
     7ca:	ff 90       	pop	r15
     7cc:	ef 90       	pop	r14
     7ce:	08 95       	ret

000007d0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
     7d0:	ef 92       	push	r14
     7d2:	ff 92       	push	r15
     7d4:	0f 93       	push	r16
     7d6:	1f 93       	push	r17
     7d8:	cf 93       	push	r28
     7da:	df 93       	push	r29
     7dc:	1f 92       	push	r1
     7de:	cd b7       	in	r28, 0x3d	; 61
     7e0:	de b7       	in	r29, 0x3e	; 62
     7e2:	7c 01       	movw	r14, r24
     7e4:	16 2f       	mov	r17, r22
     7e6:	dc 01       	movw	r26, r24
     7e8:	ed 91       	ld	r30, X+
     7ea:	fc 91       	ld	r31, X
     7ec:	01 90       	ld	r0, Z+
     7ee:	f0 81       	ld	r31, Z
     7f0:	e0 2d       	mov	r30, r0
     7f2:	49 83       	std	Y+1, r20	; 0x01
     7f4:	09 95       	icall
     7f6:	d7 01       	movw	r26, r14
     7f8:	ed 91       	ld	r30, X+
     7fa:	fc 91       	ld	r31, X
     7fc:	04 80       	ldd	r0, Z+4	; 0x04
     7fe:	f5 81       	ldd	r31, Z+5	; 0x05
     800:	e0 2d       	mov	r30, r0
     802:	61 2f       	mov	r22, r17
     804:	c7 01       	movw	r24, r14
     806:	09 95       	icall
     808:	d7 01       	movw	r26, r14
     80a:	ed 91       	ld	r30, X+
     80c:	fc 91       	ld	r31, X
     80e:	04 80       	ldd	r0, Z+4	; 0x04
     810:	f5 81       	ldd	r31, Z+5	; 0x05
     812:	e0 2d       	mov	r30, r0
     814:	49 81       	ldd	r20, Y+1	; 0x01
     816:	64 2f       	mov	r22, r20
     818:	c7 01       	movw	r24, r14
     81a:	09 95       	icall
     81c:	d7 01       	movw	r26, r14
     81e:	ed 91       	ld	r30, X+
     820:	fc 91       	ld	r31, X
     822:	01 90       	ld	r0, Z+
     824:	f0 81       	ld	r31, Z
     826:	e0 2d       	mov	r30, r0
     828:	c7 01       	movw	r24, r14
     82a:	09 95       	icall
     82c:	d7 01       	movw	r26, r14
     82e:	ed 91       	ld	r30, X+
     830:	fc 91       	ld	r31, X
     832:	61 2f       	mov	r22, r17
     834:	61 60       	ori	r22, 0x01	; 1
     836:	04 80       	ldd	r0, Z+4	; 0x04
     838:	f5 81       	ldd	r31, Z+5	; 0x05
     83a:	e0 2d       	mov	r30, r0
     83c:	c7 01       	movw	r24, r14
     83e:	09 95       	icall
     840:	d7 01       	movw	r26, r14
     842:	ed 91       	ld	r30, X+
     844:	fc 91       	ld	r31, X
     846:	06 80       	ldd	r0, Z+6	; 0x06
     848:	f7 81       	ldd	r31, Z+7	; 0x07
     84a:	e0 2d       	mov	r30, r0
     84c:	61 e0       	ldi	r22, 0x01	; 1
     84e:	c7 01       	movw	r24, r14
     850:	09 95       	icall
     852:	08 2f       	mov	r16, r24
     854:	10 e0       	ldi	r17, 0x00	; 0
     856:	10 2f       	mov	r17, r16
     858:	00 27       	eor	r16, r16
     85a:	d7 01       	movw	r26, r14
     85c:	ed 91       	ld	r30, X+
     85e:	fc 91       	ld	r31, X
     860:	06 80       	ldd	r0, Z+6	; 0x06
     862:	f7 81       	ldd	r31, Z+7	; 0x07
     864:	e0 2d       	mov	r30, r0
     866:	60 e0       	ldi	r22, 0x00	; 0
     868:	c7 01       	movw	r24, r14
     86a:	09 95       	icall
     86c:	08 2b       	or	r16, r24
     86e:	d7 01       	movw	r26, r14
     870:	ed 91       	ld	r30, X+
     872:	fc 91       	ld	r31, X
     874:	02 80       	ldd	r0, Z+2	; 0x02
     876:	f3 81       	ldd	r31, Z+3	; 0x03
     878:	e0 2d       	mov	r30, r0
     87a:	c7 01       	movw	r24, r14
     87c:	09 95       	icall
     87e:	c8 01       	movw	r24, r16
     880:	0f 90       	pop	r0
     882:	df 91       	pop	r29
     884:	cf 91       	pop	r28
     886:	1f 91       	pop	r17
     888:	0f 91       	pop	r16
     88a:	ff 90       	pop	r15
     88c:	ef 90       	pop	r14
     88e:	08 95       	ret

00000890 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
     890:	cf 92       	push	r12
     892:	df 92       	push	r13
     894:	ef 92       	push	r14
     896:	ff 92       	push	r15
     898:	0f 93       	push	r16
     89a:	1f 93       	push	r17
     89c:	cf 93       	push	r28
     89e:	df 93       	push	r29
     8a0:	00 d0       	rcall	.+0      	; 0x8a2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
     8a2:	1f 92       	push	r1
     8a4:	cd b7       	in	r28, 0x3d	; 61
     8a6:	de b7       	in	r29, 0x3e	; 62
     8a8:	6c 01       	movw	r12, r24
     8aa:	f6 2e       	mov	r15, r22
     8ac:	dc 01       	movw	r26, r24
     8ae:	ed 91       	ld	r30, X+
     8b0:	fc 91       	ld	r31, X
     8b2:	01 90       	ld	r0, Z+
     8b4:	f0 81       	ld	r31, Z
     8b6:	e0 2d       	mov	r30, r0
     8b8:	2a 83       	std	Y+2, r18	; 0x02
     8ba:	3b 83       	std	Y+3, r19	; 0x03
     8bc:	49 83       	std	Y+1, r20	; 0x01
     8be:	09 95       	icall
     8c0:	d6 01       	movw	r26, r12
     8c2:	ed 91       	ld	r30, X+
     8c4:	fc 91       	ld	r31, X
     8c6:	04 80       	ldd	r0, Z+4	; 0x04
     8c8:	f5 81       	ldd	r31, Z+5	; 0x05
     8ca:	e0 2d       	mov	r30, r0
     8cc:	6f 2d       	mov	r22, r15
     8ce:	c6 01       	movw	r24, r12
     8d0:	09 95       	icall
     8d2:	d6 01       	movw	r26, r12
     8d4:	ed 91       	ld	r30, X+
     8d6:	fc 91       	ld	r31, X
     8d8:	04 80       	ldd	r0, Z+4	; 0x04
     8da:	f5 81       	ldd	r31, Z+5	; 0x05
     8dc:	e0 2d       	mov	r30, r0
     8de:	49 81       	ldd	r20, Y+1	; 0x01
     8e0:	64 2f       	mov	r22, r20
     8e2:	c6 01       	movw	r24, r12
     8e4:	09 95       	icall
     8e6:	d6 01       	movw	r26, r12
     8e8:	ed 91       	ld	r30, X+
     8ea:	fc 91       	ld	r31, X
     8ec:	01 90       	ld	r0, Z+
     8ee:	f0 81       	ld	r31, Z
     8f0:	e0 2d       	mov	r30, r0
     8f2:	c6 01       	movw	r24, r12
     8f4:	09 95       	icall
     8f6:	d6 01       	movw	r26, r12
     8f8:	ed 91       	ld	r30, X+
     8fa:	fc 91       	ld	r31, X
     8fc:	6f 2d       	mov	r22, r15
     8fe:	61 60       	ori	r22, 0x01	; 1
     900:	04 80       	ldd	r0, Z+4	; 0x04
     902:	f5 81       	ldd	r31, Z+5	; 0x05
     904:	e0 2d       	mov	r30, r0
     906:	c6 01       	movw	r24, r12
     908:	09 95       	icall
     90a:	2a 81       	ldd	r18, Y+2	; 0x02
     90c:	e2 2e       	mov	r14, r18
     90e:	3b 81       	ldd	r19, Y+3	; 0x03
     910:	f3 2e       	mov	r15, r19
     912:	0e 0d       	add	r16, r14
     914:	1f 1d       	adc	r17, r15
     916:	d6 01       	movw	r26, r12
     918:	ed 91       	ld	r30, X+
     91a:	fc 91       	ld	r31, X
     91c:	e0 16       	cp	r14, r16
     91e:	f1 06       	cpc	r15, r17
     920:	51 f0       	breq	.+20     	; 0x936 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0xa6>
     922:	06 80       	ldd	r0, Z+6	; 0x06
     924:	f7 81       	ldd	r31, Z+7	; 0x07
     926:	e0 2d       	mov	r30, r0
     928:	61 e0       	ldi	r22, 0x01	; 1
     92a:	c6 01       	movw	r24, r12
     92c:	09 95       	icall
     92e:	f7 01       	movw	r30, r14
     930:	81 93       	st	Z+, r24
     932:	7f 01       	movw	r14, r30
     934:	f0 cf       	rjmp	.-32     	; 0x916 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x86>
     936:	02 80       	ldd	r0, Z+2	; 0x02
     938:	f3 81       	ldd	r31, Z+3	; 0x03
     93a:	e0 2d       	mov	r30, r0
     93c:	c6 01       	movw	r24, r12
     93e:	0f 90       	pop	r0
     940:	0f 90       	pop	r0
     942:	0f 90       	pop	r0
     944:	df 91       	pop	r29
     946:	cf 91       	pop	r28
     948:	1f 91       	pop	r17
     94a:	0f 91       	pop	r16
     94c:	ff 90       	pop	r15
     94e:	ef 90       	pop	r14
     950:	df 90       	pop	r13
     952:	cf 90       	pop	r12
     954:	09 94       	ijmp

00000956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     956:	88 23       	and	r24, r24
     958:	21 f0       	breq	.+8      	; 0x962 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     95a:	bf 98       	cbi	0x17, 7	; 23
     95c:	82 30       	cpi	r24, 0x02	; 2
     95e:	19 f0       	breq	.+6      	; 0x966 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     960:	08 95       	ret
     962:	bf 9a       	sbi	0x17, 7	; 23
     964:	08 95       	ret
     966:	c7 9a       	sbi	0x18, 7	; 24
     968:	08 95       	ret

0000096a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
     96a:	8a e0       	ldi	r24, 0x0A	; 10
     96c:	00 00       	nop
     96e:	81 50       	subi	r24, 0x01	; 1
     970:	e9 f7       	brne	.-6      	; 0x96c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
     972:	08 95       	ret

00000974 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
     974:	1f 93       	push	r17
     976:	cf 93       	push	r28
     978:	df 93       	push	r29
     97a:	16 2f       	mov	r17, r22
     97c:	bd 98       	cbi	0x17, 5	; 23
     97e:	80 e0       	ldi	r24, 0x00	; 0
     980:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     984:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     988:	d8 e0       	ldi	r29, 0x08	; 8
     98a:	c0 e0       	ldi	r28, 0x00	; 0
     98c:	cc 0f       	add	r28, r28
     98e:	81 e0       	ldi	r24, 0x01	; 1
     990:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     994:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     998:	b5 99       	sbic	0x16, 5	; 22
     99a:	c1 60       	ori	r28, 0x01	; 1
     99c:	80 e0       	ldi	r24, 0x00	; 0
     99e:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9a2:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     9a6:	d1 50       	subi	r29, 0x01	; 1
     9a8:	89 f7       	brne	.-30     	; 0x98c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
     9aa:	11 23       	and	r17, r17
     9ac:	11 f0       	breq	.+4      	; 0x9b2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
     9ae:	bd 9a       	sbi	0x17, 5	; 23
     9b0:	01 c0       	rjmp	.+2      	; 0x9b4 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
     9b2:	bd 98       	cbi	0x17, 5	; 23
     9b4:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     9b8:	81 e0       	ldi	r24, 0x01	; 1
     9ba:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9be:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     9c2:	80 e0       	ldi	r24, 0x00	; 0
     9c4:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9c8:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     9cc:	bd 98       	cbi	0x17, 5	; 23
     9ce:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     9d2:	8c 2f       	mov	r24, r28
     9d4:	df 91       	pop	r29
     9d6:	cf 91       	pop	r28
     9d8:	1f 91       	pop	r17
     9da:	08 95       	ret

000009dc <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
     9dc:	cf 93       	push	r28
     9de:	df 93       	push	r29
     9e0:	d6 2f       	mov	r29, r22
     9e2:	c8 e0       	ldi	r28, 0x08	; 8
     9e4:	80 e0       	ldi	r24, 0x00	; 0
     9e6:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     9ea:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     9ee:	d7 ff       	sbrs	r29, 7
     9f0:	02 c0       	rjmp	.+4      	; 0x9f6 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
     9f2:	bd 98       	cbi	0x17, 5	; 23
     9f4:	01 c0       	rjmp	.+2      	; 0x9f8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
     9f6:	bd 9a       	sbi	0x17, 5	; 23
     9f8:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     9fc:	81 e0       	ldi	r24, 0x01	; 1
     9fe:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a02:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     a06:	dd 0f       	add	r29, r29
     a08:	c1 50       	subi	r28, 0x01	; 1
     a0a:	61 f7       	brne	.-40     	; 0x9e4 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
     a0c:	80 e0       	ldi	r24, 0x00	; 0
     a0e:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a12:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     a16:	bd 98       	cbi	0x17, 5	; 23
     a18:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     a1c:	81 e0       	ldi	r24, 0x01	; 1
     a1e:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a22:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     a26:	c6 b3       	in	r28, 0x16	; 22
     a28:	80 e0       	ldi	r24, 0x00	; 0
     a2a:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a2e:	0e 94 b5 04 	call	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
     a32:	c5 fb       	bst	r28, 5
     a34:	cc 27       	eor	r28, r28
     a36:	c0 f9       	bld	r28, 0
     a38:	81 e0       	ldi	r24, 0x01	; 1
     a3a:	8c 27       	eor	r24, r28
     a3c:	df 91       	pop	r29
     a3e:	cf 91       	pop	r28
     a40:	08 95       	ret

00000a42 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
     a42:	81 e0       	ldi	r24, 0x01	; 1
     a44:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a48:	bd 98       	cbi	0x17, 5	; 23
     a4a:	81 e0       	ldi	r24, 0x01	; 1
     a4c:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a50:	bd 9a       	sbi	0x17, 5	; 23
     a52:	80 e0       	ldi	r24, 0x00	; 0
     a54:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a58:	bd 98       	cbi	0x17, 5	; 23
     a5a:	0c 94 b5 04 	jmp	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

00000a5e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
     a5e:	80 e0       	ldi	r24, 0x00	; 0
     a60:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a64:	bd 9a       	sbi	0x17, 5	; 23
     a66:	81 e0       	ldi	r24, 0x01	; 1
     a68:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a6c:	bd 9a       	sbi	0x17, 5	; 23
     a6e:	81 e0       	ldi	r24, 0x01	; 1
     a70:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a74:	bd 98       	cbi	0x17, 5	; 23
     a76:	0c 94 b5 04 	jmp	0x96a	; 0x96a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

00000a7a <_GLOBAL__sub_I_i2c>:
     a7a:	81 e8       	ldi	r24, 0x81	; 129
     a7c:	90 e0       	ldi	r25, 0x00	; 0
     a7e:	90 93 fe 00 	sts	0x00FE, r25
     a82:	80 93 fd 00 	sts	0x00FD, r24
     a86:	bd 98       	cbi	0x17, 5	; 23
     a88:	81 e0       	ldi	r24, 0x01	; 1
     a8a:	0e 94 ab 04 	call	0x956	; 0x956 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     a8e:	c5 98       	cbi	0x18, 5	; 24
     a90:	c7 98       	cbi	0x18, 7	; 24
     a92:	08 95       	ret

00000a94 <_ZN5CGyroC1Ev>:
     a94:	08 95       	ret

00000a96 <_ZN5CGyroD1Ev>:
     a96:	08 95       	ret

00000a98 <_ZN5CGyro4readEb>:
     a98:	4f 92       	push	r4
     a9a:	5f 92       	push	r5
     a9c:	6f 92       	push	r6
     a9e:	7f 92       	push	r7
     aa0:	8f 92       	push	r8
     aa2:	9f 92       	push	r9
     aa4:	af 92       	push	r10
     aa6:	bf 92       	push	r11
     aa8:	cf 92       	push	r12
     aaa:	df 92       	push	r13
     aac:	ef 92       	push	r14
     aae:	ff 92       	push	r15
     ab0:	0f 93       	push	r16
     ab2:	1f 93       	push	r17
     ab4:	cf 93       	push	r28
     ab6:	df 93       	push	r29
     ab8:	ec 01       	movw	r28, r24
     aba:	f6 2e       	mov	r15, r22
     abc:	88 ad       	ldd	r24, Y+56	; 0x38
     abe:	99 ad       	ldd	r25, Y+57	; 0x39
     ac0:	dc 01       	movw	r26, r24
     ac2:	ed 91       	ld	r30, X+
     ac4:	fc 91       	ld	r31, X
     ac6:	06 84       	ldd	r0, Z+14	; 0x0e
     ac8:	f7 85       	ldd	r31, Z+15	; 0x0f
     aca:	e0 2d       	mov	r30, r0
     acc:	4f e0       	ldi	r20, 0x0F	; 15
     ace:	66 ed       	ldi	r22, 0xD6	; 214
     ad0:	09 95       	icall
     ad2:	88 36       	cpi	r24, 0x68	; 104
     ad4:	49 f4       	brne	.+18     	; 0xae8 <_ZN5CGyro4readEb+0x50>
     ad6:	81 e0       	ldi	r24, 0x01	; 1
     ad8:	90 e0       	ldi	r25, 0x00	; 0
     ada:	a0 e0       	ldi	r26, 0x00	; 0
     adc:	b0 e0       	ldi	r27, 0x00	; 0
     ade:	88 ab       	std	Y+48, r24	; 0x30
     ae0:	99 ab       	std	Y+49, r25	; 0x31
     ae2:	aa ab       	std	Y+50, r26	; 0x32
     ae4:	bb ab       	std	Y+51, r27	; 0x33
     ae6:	04 c0       	rjmp	.+8      	; 0xaf0 <_ZN5CGyro4readEb+0x58>
     ae8:	18 aa       	std	Y+48, r1	; 0x30
     aea:	19 aa       	std	Y+49, r1	; 0x31
     aec:	1a aa       	std	Y+50, r1	; 0x32
     aee:	1b aa       	std	Y+51, r1	; 0x33
     af0:	88 ad       	ldd	r24, Y+56	; 0x38
     af2:	99 ad       	ldd	r25, Y+57	; 0x39
     af4:	dc 01       	movw	r26, r24
     af6:	ed 91       	ld	r30, X+
     af8:	fc 91       	ld	r31, X
     afa:	06 84       	ldd	r0, Z+14	; 0x0e
     afc:	f7 85       	ldd	r31, Z+15	; 0x0f
     afe:	e0 2d       	mov	r30, r0
     b00:	49 e1       	ldi	r20, 0x19	; 25
     b02:	66 ed       	ldi	r22, 0xD6	; 214
     b04:	09 95       	icall
     b06:	a8 2e       	mov	r10, r24
     b08:	b1 2c       	mov	r11, r1
     b0a:	ba 2c       	mov	r11, r10
     b0c:	aa 24       	eor	r10, r10
     b0e:	88 ad       	ldd	r24, Y+56	; 0x38
     b10:	99 ad       	ldd	r25, Y+57	; 0x39
     b12:	dc 01       	movw	r26, r24
     b14:	ed 91       	ld	r30, X+
     b16:	fc 91       	ld	r31, X
     b18:	06 84       	ldd	r0, Z+14	; 0x0e
     b1a:	f7 85       	ldd	r31, Z+15	; 0x0f
     b1c:	e0 2d       	mov	r30, r0
     b1e:	48 e1       	ldi	r20, 0x18	; 24
     b20:	66 ed       	ldi	r22, 0xD6	; 214
     b22:	09 95       	icall
     b24:	a8 2a       	or	r10, r24
     b26:	88 ad       	ldd	r24, Y+56	; 0x38
     b28:	99 ad       	ldd	r25, Y+57	; 0x39
     b2a:	dc 01       	movw	r26, r24
     b2c:	ed 91       	ld	r30, X+
     b2e:	fc 91       	ld	r31, X
     b30:	06 84       	ldd	r0, Z+14	; 0x0e
     b32:	f7 85       	ldd	r31, Z+15	; 0x0f
     b34:	e0 2d       	mov	r30, r0
     b36:	4b e1       	ldi	r20, 0x1B	; 27
     b38:	66 ed       	ldi	r22, 0xD6	; 214
     b3a:	09 95       	icall
     b3c:	08 2f       	mov	r16, r24
     b3e:	10 e0       	ldi	r17, 0x00	; 0
     b40:	10 2f       	mov	r17, r16
     b42:	00 27       	eor	r16, r16
     b44:	88 ad       	ldd	r24, Y+56	; 0x38
     b46:	99 ad       	ldd	r25, Y+57	; 0x39
     b48:	dc 01       	movw	r26, r24
     b4a:	ed 91       	ld	r30, X+
     b4c:	fc 91       	ld	r31, X
     b4e:	06 84       	ldd	r0, Z+14	; 0x0e
     b50:	f7 85       	ldd	r31, Z+15	; 0x0f
     b52:	e0 2d       	mov	r30, r0
     b54:	4a e1       	ldi	r20, 0x1A	; 26
     b56:	66 ed       	ldi	r22, 0xD6	; 214
     b58:	09 95       	icall
     b5a:	08 2b       	or	r16, r24
     b5c:	88 ad       	ldd	r24, Y+56	; 0x38
     b5e:	99 ad       	ldd	r25, Y+57	; 0x39
     b60:	dc 01       	movw	r26, r24
     b62:	ed 91       	ld	r30, X+
     b64:	fc 91       	ld	r31, X
     b66:	06 84       	ldd	r0, Z+14	; 0x0e
     b68:	f7 85       	ldd	r31, Z+15	; 0x0f
     b6a:	e0 2d       	mov	r30, r0
     b6c:	4d e1       	ldi	r20, 0x1D	; 29
     b6e:	66 ed       	ldi	r22, 0xD6	; 214
     b70:	09 95       	icall
     b72:	c8 2e       	mov	r12, r24
     b74:	d1 2c       	mov	r13, r1
     b76:	dc 2c       	mov	r13, r12
     b78:	cc 24       	eor	r12, r12
     b7a:	88 ad       	ldd	r24, Y+56	; 0x38
     b7c:	99 ad       	ldd	r25, Y+57	; 0x39
     b7e:	dc 01       	movw	r26, r24
     b80:	ed 91       	ld	r30, X+
     b82:	fc 91       	ld	r31, X
     b84:	06 84       	ldd	r0, Z+14	; 0x0e
     b86:	f7 85       	ldd	r31, Z+15	; 0x0f
     b88:	e0 2d       	mov	r30, r0
     b8a:	4c e1       	ldi	r20, 0x1C	; 28
     b8c:	66 ed       	ldi	r22, 0xD6	; 214
     b8e:	09 95       	icall
     b90:	c8 2a       	or	r12, r24
     b92:	c5 01       	movw	r24, r10
     b94:	bb 0c       	add	r11, r11
     b96:	aa 0b       	sbc	r26, r26
     b98:	bb 0b       	sbc	r27, r27
     b9a:	01 2e       	mov	r0, r17
     b9c:	00 0c       	add	r0, r0
     b9e:	22 0b       	sbc	r18, r18
     ba0:	33 0b       	sbc	r19, r19
     ba2:	46 01       	movw	r8, r12
     ba4:	dd 0c       	add	r13, r13
     ba6:	aa 08       	sbc	r10, r10
     ba8:	bb 08       	sbc	r11, r11
     baa:	ff 20       	and	r15, r15
     bac:	21 f1       	breq	.+72     	; 0xbf6 <_ZN5CGyro4readEb+0x15e>
     bae:	cc a0       	ldd	r12, Y+36	; 0x24
     bb0:	dd a0       	ldd	r13, Y+37	; 0x25
     bb2:	ee a0       	ldd	r14, Y+38	; 0x26
     bb4:	ff a0       	ldd	r15, Y+39	; 0x27
     bb6:	c8 0e       	add	r12, r24
     bb8:	d9 1e       	adc	r13, r25
     bba:	ea 1e       	adc	r14, r26
     bbc:	fb 1e       	adc	r15, r27
     bbe:	cc a2       	std	Y+36, r12	; 0x24
     bc0:	dd a2       	std	Y+37, r13	; 0x25
     bc2:	ee a2       	std	Y+38, r14	; 0x26
     bc4:	ff a2       	std	Y+39, r15	; 0x27
     bc6:	c8 a4       	ldd	r12, Y+40	; 0x28
     bc8:	d9 a4       	ldd	r13, Y+41	; 0x29
     bca:	ea a4       	ldd	r14, Y+42	; 0x2a
     bcc:	fb a4       	ldd	r15, Y+43	; 0x2b
     bce:	c0 0e       	add	r12, r16
     bd0:	d1 1e       	adc	r13, r17
     bd2:	e2 1e       	adc	r14, r18
     bd4:	f3 1e       	adc	r15, r19
     bd6:	c8 a6       	std	Y+40, r12	; 0x28
     bd8:	d9 a6       	std	Y+41, r13	; 0x29
     bda:	ea a6       	std	Y+42, r14	; 0x2a
     bdc:	fb a6       	std	Y+43, r15	; 0x2b
     bde:	cc a4       	ldd	r12, Y+44	; 0x2c
     be0:	dd a4       	ldd	r13, Y+45	; 0x2d
     be2:	ee a4       	ldd	r14, Y+46	; 0x2e
     be4:	ff a4       	ldd	r15, Y+47	; 0x2f
     be6:	c8 0c       	add	r12, r8
     be8:	d9 1c       	adc	r13, r9
     bea:	ea 1c       	adc	r14, r10
     bec:	fb 1c       	adc	r15, r11
     bee:	cc a6       	std	Y+44, r12	; 0x2c
     bf0:	dd a6       	std	Y+45, r13	; 0x2d
     bf2:	ee a6       	std	Y+46, r14	; 0x2e
     bf4:	ff a6       	std	Y+47, r15	; 0x2f
     bf6:	cc a0       	ldd	r12, Y+36	; 0x24
     bf8:	dd a0       	ldd	r13, Y+37	; 0x25
     bfa:	ee a0       	ldd	r14, Y+38	; 0x26
     bfc:	ff a0       	ldd	r15, Y+39	; 0x27
     bfe:	bc 01       	movw	r22, r24
     c00:	cd 01       	movw	r24, r26
     c02:	6c 19       	sub	r22, r12
     c04:	7d 09       	sbc	r23, r13
     c06:	8e 09       	sbc	r24, r14
     c08:	9f 09       	sbc	r25, r15
     c0a:	6c 87       	std	Y+12, r22	; 0x0c
     c0c:	7d 87       	std	Y+13, r23	; 0x0d
     c0e:	8e 87       	std	Y+14, r24	; 0x0e
     c10:	9f 87       	std	Y+15, r25	; 0x0f
     c12:	c8 a4       	ldd	r12, Y+40	; 0x28
     c14:	d9 a4       	ldd	r13, Y+41	; 0x29
     c16:	ea a4       	ldd	r14, Y+42	; 0x2a
     c18:	fb a4       	ldd	r15, Y+43	; 0x2b
     c1a:	28 01       	movw	r4, r16
     c1c:	39 01       	movw	r6, r18
     c1e:	4c 18       	sub	r4, r12
     c20:	5d 08       	sbc	r5, r13
     c22:	6e 08       	sbc	r6, r14
     c24:	7f 08       	sbc	r7, r15
     c26:	48 8a       	std	Y+16, r4	; 0x10
     c28:	59 8a       	std	Y+17, r5	; 0x11
     c2a:	6a 8a       	std	Y+18, r6	; 0x12
     c2c:	7b 8a       	std	Y+19, r7	; 0x13
     c2e:	0c a5       	ldd	r16, Y+44	; 0x2c
     c30:	1d a5       	ldd	r17, Y+45	; 0x2d
     c32:	2e a5       	ldd	r18, Y+46	; 0x2e
     c34:	3f a5       	ldd	r19, Y+47	; 0x2f
     c36:	75 01       	movw	r14, r10
     c38:	64 01       	movw	r12, r8
     c3a:	c0 1a       	sub	r12, r16
     c3c:	d1 0a       	sbc	r13, r17
     c3e:	e2 0a       	sbc	r14, r18
     c40:	f3 0a       	sbc	r15, r19
     c42:	cc 8a       	std	Y+20, r12	; 0x14
     c44:	dd 8a       	std	Y+21, r13	; 0x15
     c46:	ee 8a       	std	Y+22, r14	; 0x16
     c48:	ff 8a       	std	Y+23, r15	; 0x17
     c4a:	22 e3       	ldi	r18, 0x32	; 50
     c4c:	82 2e       	mov	r8, r18
     c4e:	91 2c       	mov	r9, r1
     c50:	a1 2c       	mov	r10, r1
     c52:	b1 2c       	mov	r11, r1
     c54:	a5 01       	movw	r20, r10
     c56:	94 01       	movw	r18, r8
     c58:	0e 94 89 0a 	call	0x1512	; 0x1512 <__divmodsi4>
     c5c:	88 8d       	ldd	r24, Y+24	; 0x18
     c5e:	99 8d       	ldd	r25, Y+25	; 0x19
     c60:	aa 8d       	ldd	r26, Y+26	; 0x1a
     c62:	bb 8d       	ldd	r27, Y+27	; 0x1b
     c64:	82 0f       	add	r24, r18
     c66:	93 1f       	adc	r25, r19
     c68:	a4 1f       	adc	r26, r20
     c6a:	b5 1f       	adc	r27, r21
     c6c:	88 8f       	std	Y+24, r24	; 0x18
     c6e:	99 8f       	std	Y+25, r25	; 0x19
     c70:	aa 8f       	std	Y+26, r26	; 0x1a
     c72:	bb 8f       	std	Y+27, r27	; 0x1b
     c74:	c3 01       	movw	r24, r6
     c76:	b2 01       	movw	r22, r4
     c78:	a5 01       	movw	r20, r10
     c7a:	94 01       	movw	r18, r8
     c7c:	0e 94 89 0a 	call	0x1512	; 0x1512 <__divmodsi4>
     c80:	8c 8d       	ldd	r24, Y+28	; 0x1c
     c82:	9d 8d       	ldd	r25, Y+29	; 0x1d
     c84:	ae 8d       	ldd	r26, Y+30	; 0x1e
     c86:	bf 8d       	ldd	r27, Y+31	; 0x1f
     c88:	82 0f       	add	r24, r18
     c8a:	93 1f       	adc	r25, r19
     c8c:	a4 1f       	adc	r26, r20
     c8e:	b5 1f       	adc	r27, r21
     c90:	8c 8f       	std	Y+28, r24	; 0x1c
     c92:	9d 8f       	std	Y+29, r25	; 0x1d
     c94:	ae 8f       	std	Y+30, r26	; 0x1e
     c96:	bf 8f       	std	Y+31, r27	; 0x1f
     c98:	c7 01       	movw	r24, r14
     c9a:	b6 01       	movw	r22, r12
     c9c:	a5 01       	movw	r20, r10
     c9e:	94 01       	movw	r18, r8
     ca0:	0e 94 89 0a 	call	0x1512	; 0x1512 <__divmodsi4>
     ca4:	88 a1       	ldd	r24, Y+32	; 0x20
     ca6:	99 a1       	ldd	r25, Y+33	; 0x21
     ca8:	aa a1       	ldd	r26, Y+34	; 0x22
     caa:	bb a1       	ldd	r27, Y+35	; 0x23
     cac:	82 0f       	add	r24, r18
     cae:	93 1f       	adc	r25, r19
     cb0:	a4 1f       	adc	r26, r20
     cb2:	b5 1f       	adc	r27, r21
     cb4:	88 a3       	std	Y+32, r24	; 0x20
     cb6:	99 a3       	std	Y+33, r25	; 0x21
     cb8:	aa a3       	std	Y+34, r26	; 0x22
     cba:	bb a3       	std	Y+35, r27	; 0x23
     cbc:	88 ad       	ldd	r24, Y+56	; 0x38
     cbe:	99 ad       	ldd	r25, Y+57	; 0x39
     cc0:	dc 01       	movw	r26, r24
     cc2:	ed 91       	ld	r30, X+
     cc4:	fc 91       	ld	r31, X
     cc6:	06 84       	ldd	r0, Z+14	; 0x0e
     cc8:	f7 85       	ldd	r31, Z+15	; 0x0f
     cca:	e0 2d       	mov	r30, r0
     ccc:	49 e2       	ldi	r20, 0x29	; 41
     cce:	66 ed       	ldi	r22, 0xD6	; 214
     cd0:	09 95       	icall
     cd2:	08 2f       	mov	r16, r24
     cd4:	10 e0       	ldi	r17, 0x00	; 0
     cd6:	10 2f       	mov	r17, r16
     cd8:	00 27       	eor	r16, r16
     cda:	88 ad       	ldd	r24, Y+56	; 0x38
     cdc:	99 ad       	ldd	r25, Y+57	; 0x39
     cde:	dc 01       	movw	r26, r24
     ce0:	ed 91       	ld	r30, X+
     ce2:	fc 91       	ld	r31, X
     ce4:	06 84       	ldd	r0, Z+14	; 0x0e
     ce6:	f7 85       	ldd	r31, Z+15	; 0x0f
     ce8:	e0 2d       	mov	r30, r0
     cea:	48 e2       	ldi	r20, 0x28	; 40
     cec:	66 ed       	ldi	r22, 0xD6	; 214
     cee:	09 95       	icall
     cf0:	68 01       	movw	r12, r16
     cf2:	c8 2a       	or	r12, r24
     cf4:	88 ad       	ldd	r24, Y+56	; 0x38
     cf6:	99 ad       	ldd	r25, Y+57	; 0x39
     cf8:	dc 01       	movw	r26, r24
     cfa:	ed 91       	ld	r30, X+
     cfc:	fc 91       	ld	r31, X
     cfe:	06 84       	ldd	r0, Z+14	; 0x0e
     d00:	f7 85       	ldd	r31, Z+15	; 0x0f
     d02:	e0 2d       	mov	r30, r0
     d04:	4b e2       	ldi	r20, 0x2B	; 43
     d06:	66 ed       	ldi	r22, 0xD6	; 214
     d08:	09 95       	icall
     d0a:	08 2f       	mov	r16, r24
     d0c:	10 e0       	ldi	r17, 0x00	; 0
     d0e:	10 2f       	mov	r17, r16
     d10:	00 27       	eor	r16, r16
     d12:	88 ad       	ldd	r24, Y+56	; 0x38
     d14:	99 ad       	ldd	r25, Y+57	; 0x39
     d16:	dc 01       	movw	r26, r24
     d18:	ed 91       	ld	r30, X+
     d1a:	fc 91       	ld	r31, X
     d1c:	06 84       	ldd	r0, Z+14	; 0x0e
     d1e:	f7 85       	ldd	r31, Z+15	; 0x0f
     d20:	e0 2d       	mov	r30, r0
     d22:	4a e2       	ldi	r20, 0x2A	; 42
     d24:	66 ed       	ldi	r22, 0xD6	; 214
     d26:	09 95       	icall
     d28:	08 2b       	or	r16, r24
     d2a:	88 ad       	ldd	r24, Y+56	; 0x38
     d2c:	99 ad       	ldd	r25, Y+57	; 0x39
     d2e:	dc 01       	movw	r26, r24
     d30:	ed 91       	ld	r30, X+
     d32:	fc 91       	ld	r31, X
     d34:	06 84       	ldd	r0, Z+14	; 0x0e
     d36:	f7 85       	ldd	r31, Z+15	; 0x0f
     d38:	e0 2d       	mov	r30, r0
     d3a:	4d e2       	ldi	r20, 0x2D	; 45
     d3c:	66 ed       	ldi	r22, 0xD6	; 214
     d3e:	09 95       	icall
     d40:	90 e0       	ldi	r25, 0x00	; 0
     d42:	f8 2e       	mov	r15, r24
     d44:	ee 24       	eor	r14, r14
     d46:	88 ad       	ldd	r24, Y+56	; 0x38
     d48:	99 ad       	ldd	r25, Y+57	; 0x39
     d4a:	dc 01       	movw	r26, r24
     d4c:	ed 91       	ld	r30, X+
     d4e:	fc 91       	ld	r31, X
     d50:	06 84       	ldd	r0, Z+14	; 0x0e
     d52:	f7 85       	ldd	r31, Z+15	; 0x0f
     d54:	e0 2d       	mov	r30, r0
     d56:	4c e2       	ldi	r20, 0x2C	; 44
     d58:	66 ed       	ldi	r22, 0xD6	; 214
     d5a:	09 95       	icall
     d5c:	a6 01       	movw	r20, r12
     d5e:	dd 0c       	add	r13, r13
     d60:	66 0b       	sbc	r22, r22
     d62:	77 0b       	sbc	r23, r23
     d64:	48 83       	st	Y, r20
     d66:	59 83       	std	Y+1, r21	; 0x01
     d68:	6a 83       	std	Y+2, r22	; 0x02
     d6a:	7b 83       	std	Y+3, r23	; 0x03
     d6c:	01 2e       	mov	r0, r17
     d6e:	00 0c       	add	r0, r0
     d70:	22 0b       	sbc	r18, r18
     d72:	33 0b       	sbc	r19, r19
     d74:	0c 83       	std	Y+4, r16	; 0x04
     d76:	1d 83       	std	Y+5, r17	; 0x05
     d78:	2e 83       	std	Y+6, r18	; 0x06
     d7a:	3f 83       	std	Y+7, r19	; 0x07
     d7c:	97 01       	movw	r18, r14
     d7e:	28 2b       	or	r18, r24
     d80:	c9 01       	movw	r24, r18
     d82:	09 2e       	mov	r0, r25
     d84:	00 0c       	add	r0, r0
     d86:	aa 0b       	sbc	r26, r26
     d88:	bb 0b       	sbc	r27, r27
     d8a:	88 87       	std	Y+8, r24	; 0x08
     d8c:	99 87       	std	Y+9, r25	; 0x09
     d8e:	aa 87       	std	Y+10, r26	; 0x0a
     d90:	bb 87       	std	Y+11, r27	; 0x0b
     d92:	df 91       	pop	r29
     d94:	cf 91       	pop	r28
     d96:	1f 91       	pop	r17
     d98:	0f 91       	pop	r16
     d9a:	ff 90       	pop	r15
     d9c:	ef 90       	pop	r14
     d9e:	df 90       	pop	r13
     da0:	cf 90       	pop	r12
     da2:	bf 90       	pop	r11
     da4:	af 90       	pop	r10
     da6:	9f 90       	pop	r9
     da8:	8f 90       	pop	r8
     daa:	7f 90       	pop	r7
     dac:	6f 90       	pop	r6
     dae:	5f 90       	pop	r5
     db0:	4f 90       	pop	r4
     db2:	08 95       	ret

00000db4 <_ZN5CGyro11delay_loopsEm>:
     db4:	41 50       	subi	r20, 0x01	; 1
     db6:	51 09       	sbc	r21, r1
     db8:	61 09       	sbc	r22, r1
     dba:	71 09       	sbc	r23, r1
     dbc:	10 f0       	brcs	.+4      	; 0xdc2 <_ZN5CGyro11delay_loopsEm+0xe>
     dbe:	00 00       	nop
     dc0:	f9 cf       	rjmp	.-14     	; 0xdb4 <_ZN5CGyro11delay_loopsEm>
     dc2:	08 95       	ret

00000dc4 <_ZN5CGyro4initEP14CI2C_Interface>:
     dc4:	cf 92       	push	r12
     dc6:	df 92       	push	r13
     dc8:	ef 92       	push	r14
     dca:	ff 92       	push	r15
     dcc:	cf 93       	push	r28
     dce:	df 93       	push	r29
     dd0:	ec 01       	movw	r28, r24
     dd2:	79 af       	std	Y+57, r23	; 0x39
     dd4:	68 af       	std	Y+56, r22	; 0x38
     dd6:	1c 86       	std	Y+12, r1	; 0x0c
     dd8:	1d 86       	std	Y+13, r1	; 0x0d
     dda:	1e 86       	std	Y+14, r1	; 0x0e
     ddc:	1f 86       	std	Y+15, r1	; 0x0f
     dde:	18 8a       	std	Y+16, r1	; 0x10
     de0:	19 8a       	std	Y+17, r1	; 0x11
     de2:	1a 8a       	std	Y+18, r1	; 0x12
     de4:	1b 8a       	std	Y+19, r1	; 0x13
     de6:	1c 8a       	std	Y+20, r1	; 0x14
     de8:	1d 8a       	std	Y+21, r1	; 0x15
     dea:	1e 8a       	std	Y+22, r1	; 0x16
     dec:	1f 8a       	std	Y+23, r1	; 0x17
     dee:	1c a2       	std	Y+36, r1	; 0x24
     df0:	1d a2       	std	Y+37, r1	; 0x25
     df2:	1e a2       	std	Y+38, r1	; 0x26
     df4:	1f a2       	std	Y+39, r1	; 0x27
     df6:	18 a6       	std	Y+40, r1	; 0x28
     df8:	19 a6       	std	Y+41, r1	; 0x29
     dfa:	1a a6       	std	Y+42, r1	; 0x2a
     dfc:	1b a6       	std	Y+43, r1	; 0x2b
     dfe:	1c a6       	std	Y+44, r1	; 0x2c
     e00:	1d a6       	std	Y+45, r1	; 0x2d
     e02:	1e a6       	std	Y+46, r1	; 0x2e
     e04:	1f a6       	std	Y+47, r1	; 0x2f
     e06:	18 8e       	std	Y+24, r1	; 0x18
     e08:	19 8e       	std	Y+25, r1	; 0x19
     e0a:	1a 8e       	std	Y+26, r1	; 0x1a
     e0c:	1b 8e       	std	Y+27, r1	; 0x1b
     e0e:	1c 8e       	std	Y+28, r1	; 0x1c
     e10:	1d 8e       	std	Y+29, r1	; 0x1d
     e12:	1e 8e       	std	Y+30, r1	; 0x1e
     e14:	1f 8e       	std	Y+31, r1	; 0x1f
     e16:	18 a2       	std	Y+32, r1	; 0x20
     e18:	19 a2       	std	Y+33, r1	; 0x21
     e1a:	1a a2       	std	Y+34, r1	; 0x22
     e1c:	1b a2       	std	Y+35, r1	; 0x23
     e1e:	40 e1       	ldi	r20, 0x10	; 16
     e20:	57 e2       	ldi	r21, 0x27	; 39
     e22:	60 e0       	ldi	r22, 0x00	; 0
     e24:	70 e0       	ldi	r23, 0x00	; 0
     e26:	0e 94 da 06 	call	0xdb4	; 0xdb4 <_ZN5CGyro11delay_loopsEm>
     e2a:	18 aa       	std	Y+48, r1	; 0x30
     e2c:	19 aa       	std	Y+49, r1	; 0x31
     e2e:	1a aa       	std	Y+50, r1	; 0x32
     e30:	1b aa       	std	Y+51, r1	; 0x33
     e32:	88 ad       	ldd	r24, Y+56	; 0x38
     e34:	99 ad       	ldd	r25, Y+57	; 0x39
     e36:	dc 01       	movw	r26, r24
     e38:	ed 91       	ld	r30, X+
     e3a:	fc 91       	ld	r31, X
     e3c:	06 84       	ldd	r0, Z+14	; 0x0e
     e3e:	f7 85       	ldd	r31, Z+15	; 0x0f
     e40:	e0 2d       	mov	r30, r0
     e42:	4f e0       	ldi	r20, 0x0F	; 15
     e44:	66 ed       	ldi	r22, 0xD6	; 214
     e46:	09 95       	icall
     e48:	88 36       	cpi	r24, 0x68	; 104
     e4a:	41 f4       	brne	.+16     	; 0xe5c <_ZN5CGyro4initEP14CI2C_Interface+0x98>
     e4c:	81 e0       	ldi	r24, 0x01	; 1
     e4e:	90 e0       	ldi	r25, 0x00	; 0
     e50:	a0 e0       	ldi	r26, 0x00	; 0
     e52:	b0 e0       	ldi	r27, 0x00	; 0
     e54:	88 ab       	std	Y+48, r24	; 0x30
     e56:	99 ab       	std	Y+49, r25	; 0x31
     e58:	aa ab       	std	Y+50, r26	; 0x32
     e5a:	bb ab       	std	Y+51, r27	; 0x33
     e5c:	88 ad       	ldd	r24, Y+56	; 0x38
     e5e:	99 ad       	ldd	r25, Y+57	; 0x39
     e60:	dc 01       	movw	r26, r24
     e62:	ed 91       	ld	r30, X+
     e64:	fc 91       	ld	r31, X
     e66:	00 84       	ldd	r0, Z+8	; 0x08
     e68:	f1 85       	ldd	r31, Z+9	; 0x09
     e6a:	e0 2d       	mov	r30, r0
     e6c:	28 ea       	ldi	r18, 0xA8	; 168
     e6e:	40 e1       	ldi	r20, 0x10	; 16
     e70:	66 ed       	ldi	r22, 0xD6	; 214
     e72:	09 95       	icall
     e74:	88 ad       	ldd	r24, Y+56	; 0x38
     e76:	99 ad       	ldd	r25, Y+57	; 0x39
     e78:	dc 01       	movw	r26, r24
     e7a:	ed 91       	ld	r30, X+
     e7c:	fc 91       	ld	r31, X
     e7e:	00 84       	ldd	r0, Z+8	; 0x08
     e80:	f1 85       	ldd	r31, Z+9	; 0x09
     e82:	e0 2d       	mov	r30, r0
     e84:	28 e3       	ldi	r18, 0x38	; 56
     e86:	4e e1       	ldi	r20, 0x1E	; 30
     e88:	66 ed       	ldi	r22, 0xD6	; 214
     e8a:	09 95       	icall
     e8c:	88 ad       	ldd	r24, Y+56	; 0x38
     e8e:	99 ad       	ldd	r25, Y+57	; 0x39
     e90:	dc 01       	movw	r26, r24
     e92:	ed 91       	ld	r30, X+
     e94:	fc 91       	ld	r31, X
     e96:	00 84       	ldd	r0, Z+8	; 0x08
     e98:	f1 85       	ldd	r31, Z+9	; 0x09
     e9a:	e0 2d       	mov	r30, r0
     e9c:	20 e0       	ldi	r18, 0x00	; 0
     e9e:	4e e2       	ldi	r20, 0x2E	; 46
     ea0:	66 ed       	ldi	r22, 0xD6	; 214
     ea2:	09 95       	icall
     ea4:	88 ad       	ldd	r24, Y+56	; 0x38
     ea6:	99 ad       	ldd	r25, Y+57	; 0x39
     ea8:	dc 01       	movw	r26, r24
     eaa:	ed 91       	ld	r30, X+
     eac:	fc 91       	ld	r31, X
     eae:	00 84       	ldd	r0, Z+8	; 0x08
     eb0:	f1 85       	ldd	r31, Z+9	; 0x09
     eb2:	e0 2d       	mov	r30, r0
     eb4:	20 e0       	ldi	r18, 0x00	; 0
     eb6:	42 e1       	ldi	r20, 0x12	; 18
     eb8:	66 ed       	ldi	r22, 0xD6	; 214
     eba:	09 95       	icall
     ebc:	88 ad       	ldd	r24, Y+56	; 0x38
     ebe:	99 ad       	ldd	r25, Y+57	; 0x39
     ec0:	dc 01       	movw	r26, r24
     ec2:	ed 91       	ld	r30, X+
     ec4:	fc 91       	ld	r31, X
     ec6:	00 84       	ldd	r0, Z+8	; 0x08
     ec8:	f1 85       	ldd	r31, Z+9	; 0x09
     eca:	e0 2d       	mov	r30, r0
     ecc:	20 e6       	ldi	r18, 0x60	; 96
     ece:	40 e2       	ldi	r20, 0x20	; 32
     ed0:	66 ed       	ldi	r22, 0xD6	; 214
     ed2:	09 95       	icall
     ed4:	88 ad       	ldd	r24, Y+56	; 0x38
     ed6:	99 ad       	ldd	r25, Y+57	; 0x39
     ed8:	dc 01       	movw	r26, r24
     eda:	ed 91       	ld	r30, X+
     edc:	fc 91       	ld	r31, X
     ede:	00 84       	ldd	r0, Z+8	; 0x08
     ee0:	f1 85       	ldd	r31, Z+9	; 0x09
     ee2:	e0 2d       	mov	r30, r0
     ee4:	28 e3       	ldi	r18, 0x38	; 56
     ee6:	4f e1       	ldi	r20, 0x1F	; 31
     ee8:	66 ed       	ldi	r22, 0xD6	; 214
     eea:	09 95       	icall
     eec:	40 e1       	ldi	r20, 0x10	; 16
     eee:	57 e2       	ldi	r21, 0x27	; 39
     ef0:	60 e0       	ldi	r22, 0x00	; 0
     ef2:	70 e0       	ldi	r23, 0x00	; 0
     ef4:	ce 01       	movw	r24, r28
     ef6:	0e 94 da 06 	call	0xdb4	; 0xdb4 <_ZN5CGyro11delay_loopsEm>
     efa:	60 e0       	ldi	r22, 0x00	; 0
     efc:	ce 01       	movw	r24, r28
     efe:	0e 94 4c 05 	call	0xa98	; 0xa98 <_ZN5CGyro4readEb>
     f02:	1c aa       	std	Y+52, r1	; 0x34
     f04:	1d aa       	std	Y+53, r1	; 0x35
     f06:	1e aa       	std	Y+54, r1	; 0x36
     f08:	1f aa       	std	Y+55, r1	; 0x37
     f0a:	e1 2c       	mov	r14, r1
     f0c:	f1 2c       	mov	r15, r1
     f0e:	61 e0       	ldi	r22, 0x01	; 1
     f10:	ce 01       	movw	r24, r28
     f12:	0e 94 4c 05 	call	0xa98	; 0xa98 <_ZN5CGyro4readEb>
     f16:	48 ee       	ldi	r20, 0xE8	; 232
     f18:	53 e0       	ldi	r21, 0x03	; 3
     f1a:	60 e0       	ldi	r22, 0x00	; 0
     f1c:	70 e0       	ldi	r23, 0x00	; 0
     f1e:	ce 01       	movw	r24, r28
     f20:	0e 94 da 06 	call	0xdb4	; 0xdb4 <_ZN5CGyro11delay_loopsEm>
     f24:	bf ef       	ldi	r27, 0xFF	; 255
     f26:	eb 1a       	sub	r14, r27
     f28:	fb 0a       	sbc	r15, r27
     f2a:	88 ec       	ldi	r24, 0xC8	; 200
     f2c:	e8 16       	cp	r14, r24
     f2e:	f1 04       	cpc	r15, r1
     f30:	71 f7       	brne	.-36     	; 0xf0e <_ZN5CGyro4initEP14CI2C_Interface+0x14a>
     f32:	6c a1       	ldd	r22, Y+36	; 0x24
     f34:	7d a1       	ldd	r23, Y+37	; 0x25
     f36:	8e a1       	ldd	r24, Y+38	; 0x26
     f38:	9f a1       	ldd	r25, Y+39	; 0x27
     f3a:	28 ec       	ldi	r18, 0xC8	; 200
     f3c:	c2 2e       	mov	r12, r18
     f3e:	d1 2c       	mov	r13, r1
     f40:	e1 2c       	mov	r14, r1
     f42:	f1 2c       	mov	r15, r1
     f44:	a7 01       	movw	r20, r14
     f46:	96 01       	movw	r18, r12
     f48:	0e 94 89 0a 	call	0x1512	; 0x1512 <__divmodsi4>
     f4c:	2c a3       	std	Y+36, r18	; 0x24
     f4e:	3d a3       	std	Y+37, r19	; 0x25
     f50:	4e a3       	std	Y+38, r20	; 0x26
     f52:	5f a3       	std	Y+39, r21	; 0x27
     f54:	68 a5       	ldd	r22, Y+40	; 0x28
     f56:	79 a5       	ldd	r23, Y+41	; 0x29
     f58:	8a a5       	ldd	r24, Y+42	; 0x2a
     f5a:	9b a5       	ldd	r25, Y+43	; 0x2b
     f5c:	a7 01       	movw	r20, r14
     f5e:	96 01       	movw	r18, r12
     f60:	0e 94 89 0a 	call	0x1512	; 0x1512 <__divmodsi4>
     f64:	28 a7       	std	Y+40, r18	; 0x28
     f66:	39 a7       	std	Y+41, r19	; 0x29
     f68:	4a a7       	std	Y+42, r20	; 0x2a
     f6a:	5b a7       	std	Y+43, r21	; 0x2b
     f6c:	6c a5       	ldd	r22, Y+44	; 0x2c
     f6e:	7d a5       	ldd	r23, Y+45	; 0x2d
     f70:	8e a5       	ldd	r24, Y+46	; 0x2e
     f72:	9f a5       	ldd	r25, Y+47	; 0x2f
     f74:	a7 01       	movw	r20, r14
     f76:	96 01       	movw	r18, r12
     f78:	0e 94 89 0a 	call	0x1512	; 0x1512 <__divmodsi4>
     f7c:	2c a7       	std	Y+44, r18	; 0x2c
     f7e:	3d a7       	std	Y+45, r19	; 0x2d
     f80:	4e a7       	std	Y+46, r20	; 0x2e
     f82:	5f a7       	std	Y+47, r21	; 0x2f
     f84:	18 8e       	std	Y+24, r1	; 0x18
     f86:	19 8e       	std	Y+25, r1	; 0x19
     f88:	1a 8e       	std	Y+26, r1	; 0x1a
     f8a:	1b 8e       	std	Y+27, r1	; 0x1b
     f8c:	1c 8e       	std	Y+28, r1	; 0x1c
     f8e:	1d 8e       	std	Y+29, r1	; 0x1d
     f90:	1e 8e       	std	Y+30, r1	; 0x1e
     f92:	1f 8e       	std	Y+31, r1	; 0x1f
     f94:	18 a2       	std	Y+32, r1	; 0x20
     f96:	19 a2       	std	Y+33, r1	; 0x21
     f98:	1a a2       	std	Y+34, r1	; 0x22
     f9a:	1b a2       	std	Y+35, r1	; 0x23
     f9c:	18 82       	st	Y, r1
     f9e:	19 82       	std	Y+1, r1	; 0x01
     fa0:	1a 82       	std	Y+2, r1	; 0x02
     fa2:	1b 82       	std	Y+3, r1	; 0x03
     fa4:	1c 82       	std	Y+4, r1	; 0x04
     fa6:	1d 82       	std	Y+5, r1	; 0x05
     fa8:	1e 82       	std	Y+6, r1	; 0x06
     faa:	1f 82       	std	Y+7, r1	; 0x07
     fac:	18 86       	std	Y+8, r1	; 0x08
     fae:	19 86       	std	Y+9, r1	; 0x09
     fb0:	1a 86       	std	Y+10, r1	; 0x0a
     fb2:	1b 86       	std	Y+11, r1	; 0x0b
     fb4:	df 91       	pop	r29
     fb6:	cf 91       	pop	r28
     fb8:	ff 90       	pop	r15
     fba:	ef 90       	pop	r14
     fbc:	df 90       	pop	r13
     fbe:	cf 90       	pop	r12
     fc0:	08 95       	ret

00000fc2 <_ZN6CTimerC1Ev>:
     fc2:	80 e0       	ldi	r24, 0x00	; 0
     fc4:	90 e0       	ldi	r25, 0x00	; 0
     fc6:	fc 01       	movw	r30, r24
     fc8:	23 e0       	ldi	r18, 0x03	; 3
     fca:	ee 0f       	add	r30, r30
     fcc:	ff 1f       	adc	r31, r31
     fce:	2a 95       	dec	r18
     fd0:	e1 f7       	brne	.-8      	; 0xfca <_ZN6CTimerC1Ev+0x8>
     fd2:	ef 5f       	subi	r30, 0xFF	; 255
     fd4:	fe 4f       	sbci	r31, 0xFE	; 254
     fd6:	11 82       	std	Z+1, r1	; 0x01
     fd8:	10 82       	st	Z, r1
     fda:	13 82       	std	Z+3, r1	; 0x03
     fdc:	12 82       	std	Z+2, r1	; 0x02
     fde:	15 82       	std	Z+5, r1	; 0x05
     fe0:	14 82       	std	Z+4, r1	; 0x04
     fe2:	16 82       	std	Z+6, r1	; 0x06
     fe4:	17 82       	std	Z+7, r1	; 0x07
     fe6:	01 96       	adiw	r24, 0x01	; 1
     fe8:	88 30       	cpi	r24, 0x08	; 8
     fea:	91 05       	cpc	r25, r1
     fec:	61 f7       	brne	.-40     	; 0xfc6 <_ZN6CTimerC1Ev+0x4>
     fee:	10 92 41 01 	sts	0x0141, r1
     ff2:	10 92 42 01 	sts	0x0142, r1
     ff6:	10 92 43 01 	sts	0x0143, r1
     ffa:	10 92 44 01 	sts	0x0144, r1
     ffe:	83 b7       	in	r24, 0x33	; 51
    1000:	88 60       	ori	r24, 0x08	; 8
    1002:	83 bf       	out	0x33, r24	; 51
    1004:	8b e9       	ldi	r24, 0x9B	; 155
    1006:	8c bf       	out	0x3c, r24	; 60
    1008:	83 e0       	ldi	r24, 0x03	; 3
    100a:	83 bf       	out	0x33, r24	; 51
    100c:	89 b7       	in	r24, 0x39	; 57
    100e:	82 60       	ori	r24, 0x02	; 2
    1010:	89 bf       	out	0x39, r24	; 57
    1012:	78 94       	sei
    1014:	08 95       	ret

00001016 <_ZN6CTimer8add_taskEPFvvEjb>:
    1016:	80 e0       	ldi	r24, 0x00	; 0
    1018:	90 e0       	ldi	r25, 0x00	; 0
    101a:	ef ef       	ldi	r30, 0xFF	; 255
    101c:	dc 01       	movw	r26, r24
    101e:	33 e0       	ldi	r19, 0x03	; 3
    1020:	aa 0f       	add	r26, r26
    1022:	bb 1f       	adc	r27, r27
    1024:	3a 95       	dec	r19
    1026:	e1 f7       	brne	.-8      	; 0x1020 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
    1028:	af 5f       	subi	r26, 0xFF	; 255
    102a:	be 4f       	sbci	r27, 0xFE	; 254
    102c:	0d 90       	ld	r0, X+
    102e:	bc 91       	ld	r27, X
    1030:	a0 2d       	mov	r26, r0
    1032:	ab 2b       	or	r26, r27
    1034:	09 f4       	brne	.+2      	; 0x1038 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
    1036:	e8 2f       	mov	r30, r24
    1038:	01 96       	adiw	r24, 0x01	; 1
    103a:	88 30       	cpi	r24, 0x08	; 8
    103c:	91 05       	cpc	r25, r1
    103e:	71 f7       	brne	.-36     	; 0x101c <_ZN6CTimer8add_taskEPFvvEjb+0x6>
    1040:	ef 3f       	cpi	r30, 0xFF	; 255
    1042:	71 f0       	breq	.+28     	; 0x1060 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
    1044:	88 e0       	ldi	r24, 0x08	; 8
    1046:	e8 02       	muls	r30, r24
    1048:	f0 01       	movw	r30, r0
    104a:	11 24       	eor	r1, r1
    104c:	ef 5f       	subi	r30, 0xFF	; 255
    104e:	fe 4f       	sbci	r31, 0xFE	; 254
    1050:	71 83       	std	Z+1, r23	; 0x01
    1052:	60 83       	st	Z, r22
    1054:	53 83       	std	Z+3, r21	; 0x03
    1056:	42 83       	std	Z+2, r20	; 0x02
    1058:	55 83       	std	Z+5, r21	; 0x05
    105a:	44 83       	std	Z+4, r20	; 0x04
    105c:	16 82       	std	Z+6, r1	; 0x06
    105e:	27 83       	std	Z+7, r18	; 0x07
    1060:	08 95       	ret

00001062 <_ZN6CTimer14test_and_clearEh>:
    1062:	f8 94       	cli
    1064:	88 e0       	ldi	r24, 0x08	; 8
    1066:	68 9f       	mul	r22, r24
    1068:	f0 01       	movw	r30, r0
    106a:	11 24       	eor	r1, r1
    106c:	ef 5f       	subi	r30, 0xFF	; 255
    106e:	fe 4f       	sbci	r31, 0xFE	; 254
    1070:	86 81       	ldd	r24, Z+6	; 0x06
    1072:	88 23       	and	r24, r24
    1074:	19 f0       	breq	.+6      	; 0x107c <_ZN6CTimer14test_and_clearEh+0x1a>
    1076:	86 81       	ldd	r24, Z+6	; 0x06
    1078:	16 82       	std	Z+6, r1	; 0x06
    107a:	01 c0       	rjmp	.+2      	; 0x107e <_ZN6CTimer14test_and_clearEh+0x1c>
    107c:	80 e0       	ldi	r24, 0x00	; 0
    107e:	78 94       	sei
    1080:	90 e0       	ldi	r25, 0x00	; 0
    1082:	08 95       	ret

00001084 <_ZN6CTimer4mainEv>:
    1084:	7c 01       	movw	r14, r24
    1086:	c0 e0       	ldi	r28, 0x00	; 0
    1088:	88 e0       	ldi	r24, 0x08	; 8
    108a:	c8 9f       	mul	r28, r24
    108c:	80 01       	movw	r16, r0
    108e:	11 24       	eor	r1, r1
    1090:	0f 5f       	subi	r16, 0xFF	; 255
    1092:	1e 4f       	sbci	r17, 0xFE	; 254
    1094:	d8 01       	movw	r26, r16
    1096:	17 96       	adiw	r26, 0x07	; 7
    1098:	8c 91       	ld	r24, X
    109a:	88 23       	and	r24, r24
    109c:	79 f0       	breq	.+30     	; 0x10bc <_ZN6CTimer4mainEv+0x38>
    109e:	6c 2f       	mov	r22, r28
    10a0:	c7 01       	movw	r24, r14
    10a2:	0e 94 31 08 	call	0x1062	; 0x1062 <_ZN6CTimer14test_and_clearEh>
    10a6:	89 2b       	or	r24, r25
    10a8:	49 f0       	breq	.+18     	; 0x10bc <_ZN6CTimer4mainEv+0x38>
    10aa:	f8 01       	movw	r30, r16
    10ac:	80 81       	ld	r24, Z
    10ae:	91 81       	ldd	r25, Z+1	; 0x01
    10b0:	89 2b       	or	r24, r25
    10b2:	21 f0       	breq	.+8      	; 0x10bc <_ZN6CTimer4mainEv+0x38>
    10b4:	01 90       	ld	r0, Z+
    10b6:	f0 81       	ld	r31, Z
    10b8:	e0 2d       	mov	r30, r0
    10ba:	09 95       	icall
    10bc:	cf 5f       	subi	r28, 0xFF	; 255
    10be:	c8 30       	cpi	r28, 0x08	; 8
    10c0:	18 f3       	brcs	.-58     	; 0x1088 <_ZN6CTimer4mainEv+0x4>
    10c2:	e1 cf       	rjmp	.-62     	; 0x1086 <_ZN6CTimer4mainEv+0x2>

000010c4 <__vector_19>:
    10c4:	1f 92       	push	r1
    10c6:	0f 92       	push	r0
    10c8:	0f b6       	in	r0, 0x3f	; 63
    10ca:	0f 92       	push	r0
    10cc:	11 24       	eor	r1, r1
    10ce:	2f 93       	push	r18
    10d0:	3f 93       	push	r19
    10d2:	4f 93       	push	r20
    10d4:	5f 93       	push	r21
    10d6:	6f 93       	push	r22
    10d8:	7f 93       	push	r23
    10da:	8f 93       	push	r24
    10dc:	9f 93       	push	r25
    10de:	af 93       	push	r26
    10e0:	bf 93       	push	r27
    10e2:	cf 93       	push	r28
    10e4:	df 93       	push	r29
    10e6:	ef 93       	push	r30
    10e8:	ff 93       	push	r31
    10ea:	c0 e0       	ldi	r28, 0x00	; 0
    10ec:	d0 e0       	ldi	r29, 0x00	; 0
    10ee:	ce 01       	movw	r24, r28
    10f0:	23 e0       	ldi	r18, 0x03	; 3
    10f2:	88 0f       	add	r24, r24
    10f4:	99 1f       	adc	r25, r25
    10f6:	2a 95       	dec	r18
    10f8:	e1 f7       	brne	.-8      	; 0x10f2 <__vector_19+0x2e>
    10fa:	fc 01       	movw	r30, r24
    10fc:	ef 5f       	subi	r30, 0xFF	; 255
    10fe:	fe 4f       	sbci	r31, 0xFE	; 254
    1100:	24 81       	ldd	r18, Z+4	; 0x04
    1102:	35 81       	ldd	r19, Z+5	; 0x05
    1104:	23 2b       	or	r18, r19
    1106:	31 f0       	breq	.+12     	; 0x1114 <__vector_19+0x50>
    1108:	84 81       	ldd	r24, Z+4	; 0x04
    110a:	95 81       	ldd	r25, Z+5	; 0x05
    110c:	01 97       	sbiw	r24, 0x01	; 1
    110e:	95 83       	std	Z+5, r25	; 0x05
    1110:	84 83       	std	Z+4, r24	; 0x04
    1112:	18 c0       	rjmp	.+48     	; 0x1144 <__vector_19+0x80>
    1114:	22 81       	ldd	r18, Z+2	; 0x02
    1116:	33 81       	ldd	r19, Z+3	; 0x03
    1118:	35 83       	std	Z+5, r19	; 0x05
    111a:	24 83       	std	Z+4, r18	; 0x04
    111c:	26 81       	ldd	r18, Z+6	; 0x06
    111e:	2f 3f       	cpi	r18, 0xFF	; 255
    1120:	19 f0       	breq	.+6      	; 0x1128 <__vector_19+0x64>
    1122:	26 81       	ldd	r18, Z+6	; 0x06
    1124:	2f 5f       	subi	r18, 0xFF	; 255
    1126:	26 83       	std	Z+6, r18	; 0x06
    1128:	fc 01       	movw	r30, r24
    112a:	ef 5f       	subi	r30, 0xFF	; 255
    112c:	fe 4f       	sbci	r31, 0xFE	; 254
    112e:	87 81       	ldd	r24, Z+7	; 0x07
    1130:	81 11       	cpse	r24, r1
    1132:	08 c0       	rjmp	.+16     	; 0x1144 <__vector_19+0x80>
    1134:	80 81       	ld	r24, Z
    1136:	91 81       	ldd	r25, Z+1	; 0x01
    1138:	89 2b       	or	r24, r25
    113a:	21 f0       	breq	.+8      	; 0x1144 <__vector_19+0x80>
    113c:	01 90       	ld	r0, Z+
    113e:	f0 81       	ld	r31, Z
    1140:	e0 2d       	mov	r30, r0
    1142:	09 95       	icall
    1144:	21 96       	adiw	r28, 0x01	; 1
    1146:	c8 30       	cpi	r28, 0x08	; 8
    1148:	d1 05       	cpc	r29, r1
    114a:	89 f6       	brne	.-94     	; 0x10ee <__vector_19+0x2a>
    114c:	80 91 41 01 	lds	r24, 0x0141
    1150:	90 91 42 01 	lds	r25, 0x0142
    1154:	a0 91 43 01 	lds	r26, 0x0143
    1158:	b0 91 44 01 	lds	r27, 0x0144
    115c:	01 96       	adiw	r24, 0x01	; 1
    115e:	a1 1d       	adc	r26, r1
    1160:	b1 1d       	adc	r27, r1
    1162:	80 93 41 01 	sts	0x0141, r24
    1166:	90 93 42 01 	sts	0x0142, r25
    116a:	a0 93 43 01 	sts	0x0143, r26
    116e:	b0 93 44 01 	sts	0x0144, r27
    1172:	ff 91       	pop	r31
    1174:	ef 91       	pop	r30
    1176:	df 91       	pop	r29
    1178:	cf 91       	pop	r28
    117a:	bf 91       	pop	r27
    117c:	af 91       	pop	r26
    117e:	9f 91       	pop	r25
    1180:	8f 91       	pop	r24
    1182:	7f 91       	pop	r23
    1184:	6f 91       	pop	r22
    1186:	5f 91       	pop	r21
    1188:	4f 91       	pop	r20
    118a:	3f 91       	pop	r19
    118c:	2f 91       	pop	r18
    118e:	0f 90       	pop	r0
    1190:	0f be       	out	0x3f, r0	; 63
    1192:	0f 90       	pop	r0
    1194:	1f 90       	pop	r1
    1196:	18 95       	reti

00001198 <_GLOBAL__sub_I_timer>:
    1198:	85 e4       	ldi	r24, 0x45	; 69
    119a:	91 e0       	ldi	r25, 0x01	; 1
    119c:	0c 94 e1 07 	jmp	0xfc2	; 0xfc2 <_ZN6CTimerC1Ev>

000011a0 <_ZN9CTerminal4putsEPc>:
    11a0:	0f 93       	push	r16
    11a2:	1f 93       	push	r17
    11a4:	cf 93       	push	r28
    11a6:	df 93       	push	r29
    11a8:	8c 01       	movw	r16, r24
    11aa:	eb 01       	movw	r28, r22
    11ac:	69 91       	ld	r22, Y+
    11ae:	66 23       	and	r22, r22
    11b0:	21 f0       	breq	.+8      	; 0x11ba <_ZN9CTerminal4putsEPc+0x1a>
    11b2:	c8 01       	movw	r24, r16
    11b4:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN6CUSART7putcharEc>
    11b8:	f9 cf       	rjmp	.-14     	; 0x11ac <_ZN9CTerminal4putsEPc+0xc>
    11ba:	df 91       	pop	r29
    11bc:	cf 91       	pop	r28
    11be:	1f 91       	pop	r17
    11c0:	0f 91       	pop	r16
    11c2:	08 95       	ret

000011c4 <_ZN9CTerminal4putiEl>:
    11c4:	8f 92       	push	r8
    11c6:	9f 92       	push	r9
    11c8:	af 92       	push	r10
    11ca:	bf 92       	push	r11
    11cc:	cf 92       	push	r12
    11ce:	df 92       	push	r13
    11d0:	ef 92       	push	r14
    11d2:	ff 92       	push	r15
    11d4:	0f 93       	push	r16
    11d6:	1f 93       	push	r17
    11d8:	cf 93       	push	r28
    11da:	df 93       	push	r29
    11dc:	cd b7       	in	r28, 0x3d	; 61
    11de:	de b7       	in	r29, 0x3e	; 62
    11e0:	2c 97       	sbiw	r28, 0x0c	; 12
    11e2:	0f b6       	in	r0, 0x3f	; 63
    11e4:	f8 94       	cli
    11e6:	de bf       	out	0x3e, r29	; 62
    11e8:	0f be       	out	0x3f, r0	; 63
    11ea:	cd bf       	out	0x3d, r28	; 61
    11ec:	7c 01       	movw	r14, r24
    11ee:	77 ff       	sbrs	r23, 7
    11f0:	09 c0       	rjmp	.+18     	; 0x1204 <_ZN9CTerminal4putiEl+0x40>
    11f2:	70 95       	com	r23
    11f4:	60 95       	com	r22
    11f6:	50 95       	com	r21
    11f8:	41 95       	neg	r20
    11fa:	5f 4f       	sbci	r21, 0xFF	; 255
    11fc:	6f 4f       	sbci	r22, 0xFF	; 255
    11fe:	7f 4f       	sbci	r23, 0xFF	; 255
    1200:	01 e0       	ldi	r16, 0x01	; 1
    1202:	01 c0       	rjmp	.+2      	; 0x1206 <_ZN9CTerminal4putiEl+0x42>
    1204:	00 e0       	ldi	r16, 0x00	; 0
    1206:	1c 86       	std	Y+12, r1	; 0x0c
    1208:	1a e0       	ldi	r17, 0x0A	; 10
    120a:	9a e0       	ldi	r25, 0x0A	; 10
    120c:	89 2e       	mov	r8, r25
    120e:	91 2c       	mov	r9, r1
    1210:	a1 2c       	mov	r10, r1
    1212:	b1 2c       	mov	r11, r1
    1214:	cc 24       	eor	r12, r12
    1216:	c3 94       	inc	r12
    1218:	d1 2c       	mov	r13, r1
    121a:	cc 0e       	add	r12, r28
    121c:	dd 1e       	adc	r13, r29
    121e:	c1 0e       	add	r12, r17
    1220:	d1 1c       	adc	r13, r1
    1222:	cb 01       	movw	r24, r22
    1224:	ba 01       	movw	r22, r20
    1226:	a5 01       	movw	r20, r10
    1228:	94 01       	movw	r18, r8
    122a:	0e 94 89 0a 	call	0x1512	; 0x1512 <__divmodsi4>
    122e:	94 2f       	mov	r25, r20
    1230:	85 2f       	mov	r24, r21
    1232:	60 5d       	subi	r22, 0xD0	; 208
    1234:	f6 01       	movw	r30, r12
    1236:	60 83       	st	Z, r22
    1238:	a9 01       	movw	r20, r18
    123a:	69 2f       	mov	r22, r25
    123c:	78 2f       	mov	r23, r24
    123e:	8f ef       	ldi	r24, 0xFF	; 255
    1240:	81 0f       	add	r24, r17
    1242:	41 15       	cp	r20, r1
    1244:	51 05       	cpc	r21, r1
    1246:	61 05       	cpc	r22, r1
    1248:	71 05       	cpc	r23, r1
    124a:	11 f0       	breq	.+4      	; 0x1250 <_ZN9CTerminal4putiEl+0x8c>
    124c:	18 2f       	mov	r17, r24
    124e:	e2 cf       	rjmp	.-60     	; 0x1214 <_ZN9CTerminal4putiEl+0x50>
    1250:	00 23       	and	r16, r16
    1252:	49 f0       	breq	.+18     	; 0x1266 <_ZN9CTerminal4putiEl+0xa2>
    1254:	e1 e0       	ldi	r30, 0x01	; 1
    1256:	f0 e0       	ldi	r31, 0x00	; 0
    1258:	ec 0f       	add	r30, r28
    125a:	fd 1f       	adc	r31, r29
    125c:	e8 0f       	add	r30, r24
    125e:	f1 1d       	adc	r31, r1
    1260:	9d e2       	ldi	r25, 0x2D	; 45
    1262:	90 83       	st	Z, r25
    1264:	18 2f       	mov	r17, r24
    1266:	61 e0       	ldi	r22, 0x01	; 1
    1268:	70 e0       	ldi	r23, 0x00	; 0
    126a:	6c 0f       	add	r22, r28
    126c:	7d 1f       	adc	r23, r29
    126e:	61 0f       	add	r22, r17
    1270:	71 1d       	adc	r23, r1
    1272:	c7 01       	movw	r24, r14
    1274:	0e 94 d0 08 	call	0x11a0	; 0x11a0 <_ZN9CTerminal4putsEPc>
    1278:	2c 96       	adiw	r28, 0x0c	; 12
    127a:	0f b6       	in	r0, 0x3f	; 63
    127c:	f8 94       	cli
    127e:	de bf       	out	0x3e, r29	; 62
    1280:	0f be       	out	0x3f, r0	; 63
    1282:	cd bf       	out	0x3d, r28	; 61
    1284:	df 91       	pop	r29
    1286:	cf 91       	pop	r28
    1288:	1f 91       	pop	r17
    128a:	0f 91       	pop	r16
    128c:	ff 90       	pop	r15
    128e:	ef 90       	pop	r14
    1290:	df 90       	pop	r13
    1292:	cf 90       	pop	r12
    1294:	bf 90       	pop	r11
    1296:	af 90       	pop	r10
    1298:	9f 90       	pop	r9
    129a:	8f 90       	pop	r8
    129c:	08 95       	ret

0000129e <_ZN9CTerminal5putuiEm>:
    129e:	8f 92       	push	r8
    12a0:	9f 92       	push	r9
    12a2:	af 92       	push	r10
    12a4:	bf 92       	push	r11
    12a6:	cf 92       	push	r12
    12a8:	df 92       	push	r13
    12aa:	ef 92       	push	r14
    12ac:	ff 92       	push	r15
    12ae:	1f 93       	push	r17
    12b0:	cf 93       	push	r28
    12b2:	df 93       	push	r29
    12b4:	cd b7       	in	r28, 0x3d	; 61
    12b6:	de b7       	in	r29, 0x3e	; 62
    12b8:	2c 97       	sbiw	r28, 0x0c	; 12
    12ba:	0f b6       	in	r0, 0x3f	; 63
    12bc:	f8 94       	cli
    12be:	de bf       	out	0x3e, r29	; 62
    12c0:	0f be       	out	0x3f, r0	; 63
    12c2:	cd bf       	out	0x3d, r28	; 61
    12c4:	6c 01       	movw	r12, r24
    12c6:	1c 86       	std	Y+12, r1	; 0x0c
    12c8:	1a e0       	ldi	r17, 0x0A	; 10
    12ca:	9a e0       	ldi	r25, 0x0A	; 10
    12cc:	89 2e       	mov	r8, r25
    12ce:	91 2c       	mov	r9, r1
    12d0:	a1 2c       	mov	r10, r1
    12d2:	b1 2c       	mov	r11, r1
    12d4:	ee 24       	eor	r14, r14
    12d6:	e3 94       	inc	r14
    12d8:	f1 2c       	mov	r15, r1
    12da:	ec 0e       	add	r14, r28
    12dc:	fd 1e       	adc	r15, r29
    12de:	e1 0e       	add	r14, r17
    12e0:	f1 1c       	adc	r15, r1
    12e2:	cb 01       	movw	r24, r22
    12e4:	ba 01       	movw	r22, r20
    12e6:	a5 01       	movw	r20, r10
    12e8:	94 01       	movw	r18, r8
    12ea:	0e 94 67 0a 	call	0x14ce	; 0x14ce <__udivmodsi4>
    12ee:	94 2f       	mov	r25, r20
    12f0:	85 2f       	mov	r24, r21
    12f2:	60 5d       	subi	r22, 0xD0	; 208
    12f4:	f7 01       	movw	r30, r14
    12f6:	60 83       	st	Z, r22
    12f8:	a9 01       	movw	r20, r18
    12fa:	69 2f       	mov	r22, r25
    12fc:	78 2f       	mov	r23, r24
    12fe:	11 50       	subi	r17, 0x01	; 1
    1300:	41 15       	cp	r20, r1
    1302:	51 05       	cpc	r21, r1
    1304:	61 05       	cpc	r22, r1
    1306:	71 05       	cpc	r23, r1
    1308:	29 f7       	brne	.-54     	; 0x12d4 <_ZN9CTerminal5putuiEm+0x36>
    130a:	b7 01       	movw	r22, r14
    130c:	c6 01       	movw	r24, r12
    130e:	0e 94 d0 08 	call	0x11a0	; 0x11a0 <_ZN9CTerminal4putsEPc>
    1312:	2c 96       	adiw	r28, 0x0c	; 12
    1314:	0f b6       	in	r0, 0x3f	; 63
    1316:	f8 94       	cli
    1318:	de bf       	out	0x3e, r29	; 62
    131a:	0f be       	out	0x3f, r0	; 63
    131c:	cd bf       	out	0x3d, r28	; 61
    131e:	df 91       	pop	r29
    1320:	cf 91       	pop	r28
    1322:	1f 91       	pop	r17
    1324:	ff 90       	pop	r15
    1326:	ef 90       	pop	r14
    1328:	df 90       	pop	r13
    132a:	cf 90       	pop	r12
    132c:	bf 90       	pop	r11
    132e:	af 90       	pop	r10
    1330:	9f 90       	pop	r9
    1332:	8f 90       	pop	r8
    1334:	08 95       	ret

00001336 <_ZN9CTerminal4putxEm>:
    1336:	ef 92       	push	r14
    1338:	ff 92       	push	r15
    133a:	cf 93       	push	r28
    133c:	df 93       	push	r29
    133e:	cd b7       	in	r28, 0x3d	; 61
    1340:	de b7       	in	r29, 0x3e	; 62
    1342:	2c 97       	sbiw	r28, 0x0c	; 12
    1344:	0f b6       	in	r0, 0x3f	; 63
    1346:	f8 94       	cli
    1348:	de bf       	out	0x3e, r29	; 62
    134a:	0f be       	out	0x3f, r0	; 63
    134c:	cd bf       	out	0x3d, r28	; 61
    134e:	fc 01       	movw	r30, r24
    1350:	1c 86       	std	Y+12, r1	; 0x0c
    1352:	2a e0       	ldi	r18, 0x0A	; 10
    1354:	94 2f       	mov	r25, r20
    1356:	9f 70       	andi	r25, 0x0F	; 15
    1358:	e2 2e       	mov	r14, r18
    135a:	f1 2c       	mov	r15, r1
    135c:	a1 e0       	ldi	r26, 0x01	; 1
    135e:	b0 e0       	ldi	r27, 0x00	; 0
    1360:	ac 0f       	add	r26, r28
    1362:	bd 1f       	adc	r27, r29
    1364:	ae 0d       	add	r26, r14
    1366:	bf 1d       	adc	r27, r15
    1368:	9a 30       	cpi	r25, 0x0A	; 10
    136a:	14 f4       	brge	.+4      	; 0x1370 <_ZN9CTerminal4putxEm+0x3a>
    136c:	90 5d       	subi	r25, 0xD0	; 208
    136e:	01 c0       	rjmp	.+2      	; 0x1372 <_ZN9CTerminal4putxEm+0x3c>
    1370:	99 5a       	subi	r25, 0xA9	; 169
    1372:	9c 93       	st	X, r25
    1374:	84 e0       	ldi	r24, 0x04	; 4
    1376:	76 95       	lsr	r23
    1378:	67 95       	ror	r22
    137a:	57 95       	ror	r21
    137c:	47 95       	ror	r20
    137e:	8a 95       	dec	r24
    1380:	d1 f7       	brne	.-12     	; 0x1376 <_ZN9CTerminal4putxEm+0x40>
    1382:	21 50       	subi	r18, 0x01	; 1
    1384:	41 15       	cp	r20, r1
    1386:	51 05       	cpc	r21, r1
    1388:	61 05       	cpc	r22, r1
    138a:	71 05       	cpc	r23, r1
    138c:	19 f7       	brne	.-58     	; 0x1354 <_ZN9CTerminal4putxEm+0x1e>
    138e:	61 e0       	ldi	r22, 0x01	; 1
    1390:	70 e0       	ldi	r23, 0x00	; 0
    1392:	6c 0f       	add	r22, r28
    1394:	7d 1f       	adc	r23, r29
    1396:	6e 0d       	add	r22, r14
    1398:	7f 1d       	adc	r23, r15
    139a:	cf 01       	movw	r24, r30
    139c:	0e 94 d0 08 	call	0x11a0	; 0x11a0 <_ZN9CTerminal4putsEPc>
    13a0:	2c 96       	adiw	r28, 0x0c	; 12
    13a2:	0f b6       	in	r0, 0x3f	; 63
    13a4:	f8 94       	cli
    13a6:	de bf       	out	0x3e, r29	; 62
    13a8:	0f be       	out	0x3f, r0	; 63
    13aa:	cd bf       	out	0x3d, r28	; 61
    13ac:	df 91       	pop	r29
    13ae:	cf 91       	pop	r28
    13b0:	ff 90       	pop	r15
    13b2:	ef 90       	pop	r14
    13b4:	08 95       	ret

000013b6 <_ZN9CTerminal6printfEPKcz>:
    13b6:	af 92       	push	r10
    13b8:	bf 92       	push	r11
    13ba:	cf 92       	push	r12
    13bc:	df 92       	push	r13
    13be:	ef 92       	push	r14
    13c0:	ff 92       	push	r15
    13c2:	0f 93       	push	r16
    13c4:	1f 93       	push	r17
    13c6:	cf 93       	push	r28
    13c8:	df 93       	push	r29
    13ca:	cd b7       	in	r28, 0x3d	; 61
    13cc:	de b7       	in	r29, 0x3e	; 62
    13ce:	ed 84       	ldd	r14, Y+13	; 0x0d
    13d0:	fe 84       	ldd	r15, Y+14	; 0x0e
    13d2:	8e 01       	movw	r16, r28
    13d4:	0f 5e       	subi	r16, 0xEF	; 239
    13d6:	1f 4f       	sbci	r17, 0xFF	; 255
    13d8:	c1 2c       	mov	r12, r1
    13da:	d1 2c       	mov	r13, r1
    13dc:	ef 85       	ldd	r30, Y+15	; 0x0f
    13de:	f8 89       	ldd	r31, Y+16	; 0x10
    13e0:	ec 0d       	add	r30, r12
    13e2:	fd 1d       	adc	r31, r13
    13e4:	60 81       	ld	r22, Z
    13e6:	66 23       	and	r22, r22
    13e8:	09 f4       	brne	.+2      	; 0x13ec <_ZN9CTerminal6printfEPKcz+0x36>
    13ea:	5e c0       	rjmp	.+188    	; 0x14a8 <_ZN9CTerminal6printfEPKcz+0xf2>
    13ec:	65 32       	cpi	r22, 0x25	; 37
    13ee:	39 f0       	breq	.+14     	; 0x13fe <_ZN9CTerminal6printfEPKcz+0x48>
    13f0:	c7 01       	movw	r24, r14
    13f2:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN6CUSART7putcharEc>
    13f6:	8f ef       	ldi	r24, 0xFF	; 255
    13f8:	c8 1a       	sub	r12, r24
    13fa:	d8 0a       	sbc	r13, r24
    13fc:	ef cf       	rjmp	.-34     	; 0x13dc <_ZN9CTerminal6printfEPKcz+0x26>
    13fe:	81 81       	ldd	r24, Z+1	; 0x01
    1400:	89 36       	cpi	r24, 0x69	; 105
    1402:	11 f1       	breq	.+68     	; 0x1448 <_ZN9CTerminal6printfEPKcz+0x92>
    1404:	84 f4       	brge	.+32     	; 0x1426 <_ZN9CTerminal6printfEPKcz+0x70>
    1406:	85 32       	cpi	r24, 0x25	; 37
    1408:	09 f4       	brne	.+2      	; 0x140c <_ZN9CTerminal6printfEPKcz+0x56>
    140a:	46 c0       	rjmp	.+140    	; 0x1498 <_ZN9CTerminal6printfEPKcz+0xe2>
    140c:	83 36       	cpi	r24, 0x63	; 99
    140e:	09 f0       	breq	.+2      	; 0x1412 <_ZN9CTerminal6printfEPKcz+0x5c>
    1410:	47 c0       	rjmp	.+142    	; 0x14a0 <_ZN9CTerminal6printfEPKcz+0xea>
    1412:	58 01       	movw	r10, r16
    1414:	f2 e0       	ldi	r31, 0x02	; 2
    1416:	af 0e       	add	r10, r31
    1418:	b1 1c       	adc	r11, r1
    141a:	f8 01       	movw	r30, r16
    141c:	60 81       	ld	r22, Z
    141e:	c7 01       	movw	r24, r14
    1420:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN6CUSART7putcharEc>
    1424:	2a c0       	rjmp	.+84     	; 0x147a <_ZN9CTerminal6printfEPKcz+0xc4>
    1426:	85 37       	cpi	r24, 0x75	; 117
    1428:	e1 f0       	breq	.+56     	; 0x1462 <_ZN9CTerminal6printfEPKcz+0xac>
    142a:	88 37       	cpi	r24, 0x78	; 120
    142c:	41 f1       	breq	.+80     	; 0x147e <_ZN9CTerminal6printfEPKcz+0xc8>
    142e:	83 37       	cpi	r24, 0x73	; 115
    1430:	b9 f5       	brne	.+110    	; 0x14a0 <_ZN9CTerminal6printfEPKcz+0xea>
    1432:	58 01       	movw	r10, r16
    1434:	f2 e0       	ldi	r31, 0x02	; 2
    1436:	af 0e       	add	r10, r31
    1438:	b1 1c       	adc	r11, r1
    143a:	f8 01       	movw	r30, r16
    143c:	60 81       	ld	r22, Z
    143e:	71 81       	ldd	r23, Z+1	; 0x01
    1440:	c7 01       	movw	r24, r14
    1442:	0e 94 d0 08 	call	0x11a0	; 0x11a0 <_ZN9CTerminal4putsEPc>
    1446:	19 c0       	rjmp	.+50     	; 0x147a <_ZN9CTerminal6printfEPKcz+0xc4>
    1448:	58 01       	movw	r10, r16
    144a:	94 e0       	ldi	r25, 0x04	; 4
    144c:	a9 0e       	add	r10, r25
    144e:	b1 1c       	adc	r11, r1
    1450:	f8 01       	movw	r30, r16
    1452:	40 81       	ld	r20, Z
    1454:	51 81       	ldd	r21, Z+1	; 0x01
    1456:	62 81       	ldd	r22, Z+2	; 0x02
    1458:	73 81       	ldd	r23, Z+3	; 0x03
    145a:	c7 01       	movw	r24, r14
    145c:	0e 94 e2 08 	call	0x11c4	; 0x11c4 <_ZN9CTerminal4putiEl>
    1460:	0c c0       	rjmp	.+24     	; 0x147a <_ZN9CTerminal6printfEPKcz+0xc4>
    1462:	58 01       	movw	r10, r16
    1464:	f4 e0       	ldi	r31, 0x04	; 4
    1466:	af 0e       	add	r10, r31
    1468:	b1 1c       	adc	r11, r1
    146a:	f8 01       	movw	r30, r16
    146c:	40 81       	ld	r20, Z
    146e:	51 81       	ldd	r21, Z+1	; 0x01
    1470:	62 81       	ldd	r22, Z+2	; 0x02
    1472:	73 81       	ldd	r23, Z+3	; 0x03
    1474:	c7 01       	movw	r24, r14
    1476:	0e 94 4f 09 	call	0x129e	; 0x129e <_ZN9CTerminal5putuiEm>
    147a:	85 01       	movw	r16, r10
    147c:	11 c0       	rjmp	.+34     	; 0x14a0 <_ZN9CTerminal6printfEPKcz+0xea>
    147e:	58 01       	movw	r10, r16
    1480:	f4 e0       	ldi	r31, 0x04	; 4
    1482:	af 0e       	add	r10, r31
    1484:	b1 1c       	adc	r11, r1
    1486:	f8 01       	movw	r30, r16
    1488:	40 81       	ld	r20, Z
    148a:	51 81       	ldd	r21, Z+1	; 0x01
    148c:	62 81       	ldd	r22, Z+2	; 0x02
    148e:	73 81       	ldd	r23, Z+3	; 0x03
    1490:	c7 01       	movw	r24, r14
    1492:	0e 94 9b 09 	call	0x1336	; 0x1336 <_ZN9CTerminal4putxEm>
    1496:	f1 cf       	rjmp	.-30     	; 0x147a <_ZN9CTerminal6printfEPKcz+0xc4>
    1498:	65 e2       	ldi	r22, 0x25	; 37
    149a:	c7 01       	movw	r24, r14
    149c:	0e 94 71 02 	call	0x4e2	; 0x4e2 <_ZN6CUSART7putcharEc>
    14a0:	f2 e0       	ldi	r31, 0x02	; 2
    14a2:	cf 0e       	add	r12, r31
    14a4:	d1 1c       	adc	r13, r1
    14a6:	9a cf       	rjmp	.-204    	; 0x13dc <_ZN9CTerminal6printfEPKcz+0x26>
    14a8:	df 91       	pop	r29
    14aa:	cf 91       	pop	r28
    14ac:	1f 91       	pop	r17
    14ae:	0f 91       	pop	r16
    14b0:	ff 90       	pop	r15
    14b2:	ef 90       	pop	r14
    14b4:	df 90       	pop	r13
    14b6:	cf 90       	pop	r12
    14b8:	bf 90       	pop	r11
    14ba:	af 90       	pop	r10
    14bc:	08 95       	ret

000014be <_GLOBAL__sub_I_terminal>:
    14be:	86 e4       	ldi	r24, 0x46	; 70
    14c0:	91 e0       	ldi	r25, 0x01	; 1
    14c2:	0c 94 66 02 	jmp	0x4cc	; 0x4cc <_ZN6CUSARTC1Ev>

000014c6 <_GLOBAL__sub_D_terminal>:
    14c6:	86 e4       	ldi	r24, 0x46	; 70
    14c8:	91 e0       	ldi	r25, 0x01	; 1
    14ca:	0c 94 70 02 	jmp	0x4e0	; 0x4e0 <_ZN6CUSARTD1Ev>

000014ce <__udivmodsi4>:
    14ce:	a1 e2       	ldi	r26, 0x21	; 33
    14d0:	1a 2e       	mov	r1, r26
    14d2:	aa 1b       	sub	r26, r26
    14d4:	bb 1b       	sub	r27, r27
    14d6:	fd 01       	movw	r30, r26
    14d8:	0d c0       	rjmp	.+26     	; 0x14f4 <__udivmodsi4_ep>

000014da <__udivmodsi4_loop>:
    14da:	aa 1f       	adc	r26, r26
    14dc:	bb 1f       	adc	r27, r27
    14de:	ee 1f       	adc	r30, r30
    14e0:	ff 1f       	adc	r31, r31
    14e2:	a2 17       	cp	r26, r18
    14e4:	b3 07       	cpc	r27, r19
    14e6:	e4 07       	cpc	r30, r20
    14e8:	f5 07       	cpc	r31, r21
    14ea:	20 f0       	brcs	.+8      	; 0x14f4 <__udivmodsi4_ep>
    14ec:	a2 1b       	sub	r26, r18
    14ee:	b3 0b       	sbc	r27, r19
    14f0:	e4 0b       	sbc	r30, r20
    14f2:	f5 0b       	sbc	r31, r21

000014f4 <__udivmodsi4_ep>:
    14f4:	66 1f       	adc	r22, r22
    14f6:	77 1f       	adc	r23, r23
    14f8:	88 1f       	adc	r24, r24
    14fa:	99 1f       	adc	r25, r25
    14fc:	1a 94       	dec	r1
    14fe:	69 f7       	brne	.-38     	; 0x14da <__udivmodsi4_loop>
    1500:	60 95       	com	r22
    1502:	70 95       	com	r23
    1504:	80 95       	com	r24
    1506:	90 95       	com	r25
    1508:	9b 01       	movw	r18, r22
    150a:	ac 01       	movw	r20, r24
    150c:	bd 01       	movw	r22, r26
    150e:	cf 01       	movw	r24, r30
    1510:	08 95       	ret

00001512 <__divmodsi4>:
    1512:	05 2e       	mov	r0, r21
    1514:	97 fb       	bst	r25, 7
    1516:	1e f4       	brtc	.+6      	; 0x151e <__divmodsi4+0xc>
    1518:	00 94       	com	r0
    151a:	0e 94 a0 0a 	call	0x1540	; 0x1540 <__negsi2>
    151e:	57 fd       	sbrc	r21, 7
    1520:	07 d0       	rcall	.+14     	; 0x1530 <__divmodsi4_neg2>
    1522:	0e 94 67 0a 	call	0x14ce	; 0x14ce <__udivmodsi4>
    1526:	07 fc       	sbrc	r0, 7
    1528:	03 d0       	rcall	.+6      	; 0x1530 <__divmodsi4_neg2>
    152a:	4e f4       	brtc	.+18     	; 0x153e <__divmodsi4_exit>
    152c:	0c 94 a0 0a 	jmp	0x1540	; 0x1540 <__negsi2>

00001530 <__divmodsi4_neg2>:
    1530:	50 95       	com	r21
    1532:	40 95       	com	r20
    1534:	30 95       	com	r19
    1536:	21 95       	neg	r18
    1538:	3f 4f       	sbci	r19, 0xFF	; 255
    153a:	4f 4f       	sbci	r20, 0xFF	; 255
    153c:	5f 4f       	sbci	r21, 0xFF	; 255

0000153e <__divmodsi4_exit>:
    153e:	08 95       	ret

00001540 <__negsi2>:
    1540:	90 95       	com	r25
    1542:	80 95       	com	r24
    1544:	70 95       	com	r23
    1546:	61 95       	neg	r22
    1548:	7f 4f       	sbci	r23, 0xFF	; 255
    154a:	8f 4f       	sbci	r24, 0xFF	; 255
    154c:	9f 4f       	sbci	r25, 0xFF	; 255
    154e:	08 95       	ret

00001550 <__tablejump2__>:
    1550:	ee 0f       	add	r30, r30
    1552:	ff 1f       	adc	r31, r31
    1554:	05 90       	lpm	r0, Z+
    1556:	f4 91       	lpm	r31, Z
    1558:	e0 2d       	mov	r30, r0
    155a:	09 94       	ijmp

0000155c <__subsf3>:
    155c:	50 58       	subi	r21, 0x80	; 128

0000155e <__addsf3>:
    155e:	bb 27       	eor	r27, r27
    1560:	aa 27       	eor	r26, r26
    1562:	0e 94 c6 0a 	call	0x158c	; 0x158c <__addsf3x>
    1566:	0c 94 ce 0b 	jmp	0x179c	; 0x179c <__fp_round>
    156a:	0e 94 c0 0b 	call	0x1780	; 0x1780 <__fp_pscA>
    156e:	38 f0       	brcs	.+14     	; 0x157e <__addsf3+0x20>
    1570:	0e 94 c7 0b 	call	0x178e	; 0x178e <__fp_pscB>
    1574:	20 f0       	brcs	.+8      	; 0x157e <__addsf3+0x20>
    1576:	39 f4       	brne	.+14     	; 0x1586 <__addsf3+0x28>
    1578:	9f 3f       	cpi	r25, 0xFF	; 255
    157a:	19 f4       	brne	.+6      	; 0x1582 <__addsf3+0x24>
    157c:	26 f4       	brtc	.+8      	; 0x1586 <__addsf3+0x28>
    157e:	0c 94 bd 0b 	jmp	0x177a	; 0x177a <__fp_nan>
    1582:	0e f4       	brtc	.+2      	; 0x1586 <__addsf3+0x28>
    1584:	e0 95       	com	r30
    1586:	e7 fb       	bst	r30, 7
    1588:	0c 94 b7 0b 	jmp	0x176e	; 0x176e <__fp_inf>

0000158c <__addsf3x>:
    158c:	e9 2f       	mov	r30, r25
    158e:	0e 94 df 0b 	call	0x17be	; 0x17be <__fp_split3>
    1592:	58 f3       	brcs	.-42     	; 0x156a <__addsf3+0xc>
    1594:	ba 17       	cp	r27, r26
    1596:	62 07       	cpc	r22, r18
    1598:	73 07       	cpc	r23, r19
    159a:	84 07       	cpc	r24, r20
    159c:	95 07       	cpc	r25, r21
    159e:	20 f0       	brcs	.+8      	; 0x15a8 <__addsf3x+0x1c>
    15a0:	79 f4       	brne	.+30     	; 0x15c0 <__addsf3x+0x34>
    15a2:	a6 f5       	brtc	.+104    	; 0x160c <__addsf3x+0x80>
    15a4:	0c 94 01 0c 	jmp	0x1802	; 0x1802 <__fp_zero>
    15a8:	0e f4       	brtc	.+2      	; 0x15ac <__addsf3x+0x20>
    15aa:	e0 95       	com	r30
    15ac:	0b 2e       	mov	r0, r27
    15ae:	ba 2f       	mov	r27, r26
    15b0:	a0 2d       	mov	r26, r0
    15b2:	0b 01       	movw	r0, r22
    15b4:	b9 01       	movw	r22, r18
    15b6:	90 01       	movw	r18, r0
    15b8:	0c 01       	movw	r0, r24
    15ba:	ca 01       	movw	r24, r20
    15bc:	a0 01       	movw	r20, r0
    15be:	11 24       	eor	r1, r1
    15c0:	ff 27       	eor	r31, r31
    15c2:	59 1b       	sub	r21, r25
    15c4:	99 f0       	breq	.+38     	; 0x15ec <__addsf3x+0x60>
    15c6:	59 3f       	cpi	r21, 0xF9	; 249
    15c8:	50 f4       	brcc	.+20     	; 0x15de <__addsf3x+0x52>
    15ca:	50 3e       	cpi	r21, 0xE0	; 224
    15cc:	68 f1       	brcs	.+90     	; 0x1628 <__addsf3x+0x9c>
    15ce:	1a 16       	cp	r1, r26
    15d0:	f0 40       	sbci	r31, 0x00	; 0
    15d2:	a2 2f       	mov	r26, r18
    15d4:	23 2f       	mov	r18, r19
    15d6:	34 2f       	mov	r19, r20
    15d8:	44 27       	eor	r20, r20
    15da:	58 5f       	subi	r21, 0xF8	; 248
    15dc:	f3 cf       	rjmp	.-26     	; 0x15c4 <__addsf3x+0x38>
    15de:	46 95       	lsr	r20
    15e0:	37 95       	ror	r19
    15e2:	27 95       	ror	r18
    15e4:	a7 95       	ror	r26
    15e6:	f0 40       	sbci	r31, 0x00	; 0
    15e8:	53 95       	inc	r21
    15ea:	c9 f7       	brne	.-14     	; 0x15de <__addsf3x+0x52>
    15ec:	7e f4       	brtc	.+30     	; 0x160c <__addsf3x+0x80>
    15ee:	1f 16       	cp	r1, r31
    15f0:	ba 0b       	sbc	r27, r26
    15f2:	62 0b       	sbc	r22, r18
    15f4:	73 0b       	sbc	r23, r19
    15f6:	84 0b       	sbc	r24, r20
    15f8:	ba f0       	brmi	.+46     	; 0x1628 <__addsf3x+0x9c>
    15fa:	91 50       	subi	r25, 0x01	; 1
    15fc:	a1 f0       	breq	.+40     	; 0x1626 <__addsf3x+0x9a>
    15fe:	ff 0f       	add	r31, r31
    1600:	bb 1f       	adc	r27, r27
    1602:	66 1f       	adc	r22, r22
    1604:	77 1f       	adc	r23, r23
    1606:	88 1f       	adc	r24, r24
    1608:	c2 f7       	brpl	.-16     	; 0x15fa <__addsf3x+0x6e>
    160a:	0e c0       	rjmp	.+28     	; 0x1628 <__addsf3x+0x9c>
    160c:	ba 0f       	add	r27, r26
    160e:	62 1f       	adc	r22, r18
    1610:	73 1f       	adc	r23, r19
    1612:	84 1f       	adc	r24, r20
    1614:	48 f4       	brcc	.+18     	; 0x1628 <__addsf3x+0x9c>
    1616:	87 95       	ror	r24
    1618:	77 95       	ror	r23
    161a:	67 95       	ror	r22
    161c:	b7 95       	ror	r27
    161e:	f7 95       	ror	r31
    1620:	9e 3f       	cpi	r25, 0xFE	; 254
    1622:	08 f0       	brcs	.+2      	; 0x1626 <__addsf3x+0x9a>
    1624:	b0 cf       	rjmp	.-160    	; 0x1586 <__addsf3+0x28>
    1626:	93 95       	inc	r25
    1628:	88 0f       	add	r24, r24
    162a:	08 f0       	brcs	.+2      	; 0x162e <__addsf3x+0xa2>
    162c:	99 27       	eor	r25, r25
    162e:	ee 0f       	add	r30, r30
    1630:	97 95       	ror	r25
    1632:	87 95       	ror	r24
    1634:	08 95       	ret

00001636 <__cmpsf2>:
    1636:	0e 94 93 0b 	call	0x1726	; 0x1726 <__fp_cmp>
    163a:	08 f4       	brcc	.+2      	; 0x163e <__cmpsf2+0x8>
    163c:	81 e0       	ldi	r24, 0x01	; 1
    163e:	08 95       	ret

00001640 <__fixsfsi>:
    1640:	0e 94 27 0b 	call	0x164e	; 0x164e <__fixunssfsi>
    1644:	68 94       	set
    1646:	b1 11       	cpse	r27, r1
    1648:	0c 94 02 0c 	jmp	0x1804	; 0x1804 <__fp_szero>
    164c:	08 95       	ret

0000164e <__fixunssfsi>:
    164e:	0e 94 e7 0b 	call	0x17ce	; 0x17ce <__fp_splitA>
    1652:	88 f0       	brcs	.+34     	; 0x1676 <__fixunssfsi+0x28>
    1654:	9f 57       	subi	r25, 0x7F	; 127
    1656:	98 f0       	brcs	.+38     	; 0x167e <__fixunssfsi+0x30>
    1658:	b9 2f       	mov	r27, r25
    165a:	99 27       	eor	r25, r25
    165c:	b7 51       	subi	r27, 0x17	; 23
    165e:	b0 f0       	brcs	.+44     	; 0x168c <__fixunssfsi+0x3e>
    1660:	e1 f0       	breq	.+56     	; 0x169a <__fixunssfsi+0x4c>
    1662:	66 0f       	add	r22, r22
    1664:	77 1f       	adc	r23, r23
    1666:	88 1f       	adc	r24, r24
    1668:	99 1f       	adc	r25, r25
    166a:	1a f0       	brmi	.+6      	; 0x1672 <__fixunssfsi+0x24>
    166c:	ba 95       	dec	r27
    166e:	c9 f7       	brne	.-14     	; 0x1662 <__fixunssfsi+0x14>
    1670:	14 c0       	rjmp	.+40     	; 0x169a <__fixunssfsi+0x4c>
    1672:	b1 30       	cpi	r27, 0x01	; 1
    1674:	91 f0       	breq	.+36     	; 0x169a <__fixunssfsi+0x4c>
    1676:	0e 94 01 0c 	call	0x1802	; 0x1802 <__fp_zero>
    167a:	b1 e0       	ldi	r27, 0x01	; 1
    167c:	08 95       	ret
    167e:	0c 94 01 0c 	jmp	0x1802	; 0x1802 <__fp_zero>
    1682:	67 2f       	mov	r22, r23
    1684:	78 2f       	mov	r23, r24
    1686:	88 27       	eor	r24, r24
    1688:	b8 5f       	subi	r27, 0xF8	; 248
    168a:	39 f0       	breq	.+14     	; 0x169a <__fixunssfsi+0x4c>
    168c:	b9 3f       	cpi	r27, 0xF9	; 249
    168e:	cc f3       	brlt	.-14     	; 0x1682 <__fixunssfsi+0x34>
    1690:	86 95       	lsr	r24
    1692:	77 95       	ror	r23
    1694:	67 95       	ror	r22
    1696:	b3 95       	inc	r27
    1698:	d9 f7       	brne	.-10     	; 0x1690 <__fixunssfsi+0x42>
    169a:	3e f4       	brtc	.+14     	; 0x16aa <__fixunssfsi+0x5c>
    169c:	90 95       	com	r25
    169e:	80 95       	com	r24
    16a0:	70 95       	com	r23
    16a2:	61 95       	neg	r22
    16a4:	7f 4f       	sbci	r23, 0xFF	; 255
    16a6:	8f 4f       	sbci	r24, 0xFF	; 255
    16a8:	9f 4f       	sbci	r25, 0xFF	; 255
    16aa:	08 95       	ret

000016ac <__floatunsisf>:
    16ac:	e8 94       	clt
    16ae:	09 c0       	rjmp	.+18     	; 0x16c2 <__floatsisf+0x12>

000016b0 <__floatsisf>:
    16b0:	97 fb       	bst	r25, 7
    16b2:	3e f4       	brtc	.+14     	; 0x16c2 <__floatsisf+0x12>
    16b4:	90 95       	com	r25
    16b6:	80 95       	com	r24
    16b8:	70 95       	com	r23
    16ba:	61 95       	neg	r22
    16bc:	7f 4f       	sbci	r23, 0xFF	; 255
    16be:	8f 4f       	sbci	r24, 0xFF	; 255
    16c0:	9f 4f       	sbci	r25, 0xFF	; 255
    16c2:	99 23       	and	r25, r25
    16c4:	a9 f0       	breq	.+42     	; 0x16f0 <__floatsisf+0x40>
    16c6:	f9 2f       	mov	r31, r25
    16c8:	96 e9       	ldi	r25, 0x96	; 150
    16ca:	bb 27       	eor	r27, r27
    16cc:	93 95       	inc	r25
    16ce:	f6 95       	lsr	r31
    16d0:	87 95       	ror	r24
    16d2:	77 95       	ror	r23
    16d4:	67 95       	ror	r22
    16d6:	b7 95       	ror	r27
    16d8:	f1 11       	cpse	r31, r1
    16da:	f8 cf       	rjmp	.-16     	; 0x16cc <__floatsisf+0x1c>
    16dc:	fa f4       	brpl	.+62     	; 0x171c <__floatsisf+0x6c>
    16de:	bb 0f       	add	r27, r27
    16e0:	11 f4       	brne	.+4      	; 0x16e6 <__floatsisf+0x36>
    16e2:	60 ff       	sbrs	r22, 0
    16e4:	1b c0       	rjmp	.+54     	; 0x171c <__floatsisf+0x6c>
    16e6:	6f 5f       	subi	r22, 0xFF	; 255
    16e8:	7f 4f       	sbci	r23, 0xFF	; 255
    16ea:	8f 4f       	sbci	r24, 0xFF	; 255
    16ec:	9f 4f       	sbci	r25, 0xFF	; 255
    16ee:	16 c0       	rjmp	.+44     	; 0x171c <__floatsisf+0x6c>
    16f0:	88 23       	and	r24, r24
    16f2:	11 f0       	breq	.+4      	; 0x16f8 <__floatsisf+0x48>
    16f4:	96 e9       	ldi	r25, 0x96	; 150
    16f6:	11 c0       	rjmp	.+34     	; 0x171a <__floatsisf+0x6a>
    16f8:	77 23       	and	r23, r23
    16fa:	21 f0       	breq	.+8      	; 0x1704 <__floatsisf+0x54>
    16fc:	9e e8       	ldi	r25, 0x8E	; 142
    16fe:	87 2f       	mov	r24, r23
    1700:	76 2f       	mov	r23, r22
    1702:	05 c0       	rjmp	.+10     	; 0x170e <__floatsisf+0x5e>
    1704:	66 23       	and	r22, r22
    1706:	71 f0       	breq	.+28     	; 0x1724 <__floatsisf+0x74>
    1708:	96 e8       	ldi	r25, 0x86	; 134
    170a:	86 2f       	mov	r24, r22
    170c:	70 e0       	ldi	r23, 0x00	; 0
    170e:	60 e0       	ldi	r22, 0x00	; 0
    1710:	2a f0       	brmi	.+10     	; 0x171c <__floatsisf+0x6c>
    1712:	9a 95       	dec	r25
    1714:	66 0f       	add	r22, r22
    1716:	77 1f       	adc	r23, r23
    1718:	88 1f       	adc	r24, r24
    171a:	da f7       	brpl	.-10     	; 0x1712 <__floatsisf+0x62>
    171c:	88 0f       	add	r24, r24
    171e:	96 95       	lsr	r25
    1720:	87 95       	ror	r24
    1722:	97 f9       	bld	r25, 7
    1724:	08 95       	ret

00001726 <__fp_cmp>:
    1726:	99 0f       	add	r25, r25
    1728:	00 08       	sbc	r0, r0
    172a:	55 0f       	add	r21, r21
    172c:	aa 0b       	sbc	r26, r26
    172e:	e0 e8       	ldi	r30, 0x80	; 128
    1730:	fe ef       	ldi	r31, 0xFE	; 254
    1732:	16 16       	cp	r1, r22
    1734:	17 06       	cpc	r1, r23
    1736:	e8 07       	cpc	r30, r24
    1738:	f9 07       	cpc	r31, r25
    173a:	c0 f0       	brcs	.+48     	; 0x176c <__fp_cmp+0x46>
    173c:	12 16       	cp	r1, r18
    173e:	13 06       	cpc	r1, r19
    1740:	e4 07       	cpc	r30, r20
    1742:	f5 07       	cpc	r31, r21
    1744:	98 f0       	brcs	.+38     	; 0x176c <__fp_cmp+0x46>
    1746:	62 1b       	sub	r22, r18
    1748:	73 0b       	sbc	r23, r19
    174a:	84 0b       	sbc	r24, r20
    174c:	95 0b       	sbc	r25, r21
    174e:	39 f4       	brne	.+14     	; 0x175e <__fp_cmp+0x38>
    1750:	0a 26       	eor	r0, r26
    1752:	61 f0       	breq	.+24     	; 0x176c <__fp_cmp+0x46>
    1754:	23 2b       	or	r18, r19
    1756:	24 2b       	or	r18, r20
    1758:	25 2b       	or	r18, r21
    175a:	21 f4       	brne	.+8      	; 0x1764 <__fp_cmp+0x3e>
    175c:	08 95       	ret
    175e:	0a 26       	eor	r0, r26
    1760:	09 f4       	brne	.+2      	; 0x1764 <__fp_cmp+0x3e>
    1762:	a1 40       	sbci	r26, 0x01	; 1
    1764:	a6 95       	lsr	r26
    1766:	8f ef       	ldi	r24, 0xFF	; 255
    1768:	81 1d       	adc	r24, r1
    176a:	81 1d       	adc	r24, r1
    176c:	08 95       	ret

0000176e <__fp_inf>:
    176e:	97 f9       	bld	r25, 7
    1770:	9f 67       	ori	r25, 0x7F	; 127
    1772:	80 e8       	ldi	r24, 0x80	; 128
    1774:	70 e0       	ldi	r23, 0x00	; 0
    1776:	60 e0       	ldi	r22, 0x00	; 0
    1778:	08 95       	ret

0000177a <__fp_nan>:
    177a:	9f ef       	ldi	r25, 0xFF	; 255
    177c:	80 ec       	ldi	r24, 0xC0	; 192
    177e:	08 95       	ret

00001780 <__fp_pscA>:
    1780:	00 24       	eor	r0, r0
    1782:	0a 94       	dec	r0
    1784:	16 16       	cp	r1, r22
    1786:	17 06       	cpc	r1, r23
    1788:	18 06       	cpc	r1, r24
    178a:	09 06       	cpc	r0, r25
    178c:	08 95       	ret

0000178e <__fp_pscB>:
    178e:	00 24       	eor	r0, r0
    1790:	0a 94       	dec	r0
    1792:	12 16       	cp	r1, r18
    1794:	13 06       	cpc	r1, r19
    1796:	14 06       	cpc	r1, r20
    1798:	05 06       	cpc	r0, r21
    179a:	08 95       	ret

0000179c <__fp_round>:
    179c:	09 2e       	mov	r0, r25
    179e:	03 94       	inc	r0
    17a0:	00 0c       	add	r0, r0
    17a2:	11 f4       	brne	.+4      	; 0x17a8 <__fp_round+0xc>
    17a4:	88 23       	and	r24, r24
    17a6:	52 f0       	brmi	.+20     	; 0x17bc <__fp_round+0x20>
    17a8:	bb 0f       	add	r27, r27
    17aa:	40 f4       	brcc	.+16     	; 0x17bc <__fp_round+0x20>
    17ac:	bf 2b       	or	r27, r31
    17ae:	11 f4       	brne	.+4      	; 0x17b4 <__fp_round+0x18>
    17b0:	60 ff       	sbrs	r22, 0
    17b2:	04 c0       	rjmp	.+8      	; 0x17bc <__fp_round+0x20>
    17b4:	6f 5f       	subi	r22, 0xFF	; 255
    17b6:	7f 4f       	sbci	r23, 0xFF	; 255
    17b8:	8f 4f       	sbci	r24, 0xFF	; 255
    17ba:	9f 4f       	sbci	r25, 0xFF	; 255
    17bc:	08 95       	ret

000017be <__fp_split3>:
    17be:	57 fd       	sbrc	r21, 7
    17c0:	90 58       	subi	r25, 0x80	; 128
    17c2:	44 0f       	add	r20, r20
    17c4:	55 1f       	adc	r21, r21
    17c6:	59 f0       	breq	.+22     	; 0x17de <__fp_splitA+0x10>
    17c8:	5f 3f       	cpi	r21, 0xFF	; 255
    17ca:	71 f0       	breq	.+28     	; 0x17e8 <__fp_splitA+0x1a>
    17cc:	47 95       	ror	r20

000017ce <__fp_splitA>:
    17ce:	88 0f       	add	r24, r24
    17d0:	97 fb       	bst	r25, 7
    17d2:	99 1f       	adc	r25, r25
    17d4:	61 f0       	breq	.+24     	; 0x17ee <__fp_splitA+0x20>
    17d6:	9f 3f       	cpi	r25, 0xFF	; 255
    17d8:	79 f0       	breq	.+30     	; 0x17f8 <__fp_splitA+0x2a>
    17da:	87 95       	ror	r24
    17dc:	08 95       	ret
    17de:	12 16       	cp	r1, r18
    17e0:	13 06       	cpc	r1, r19
    17e2:	14 06       	cpc	r1, r20
    17e4:	55 1f       	adc	r21, r21
    17e6:	f2 cf       	rjmp	.-28     	; 0x17cc <__fp_split3+0xe>
    17e8:	46 95       	lsr	r20
    17ea:	f1 df       	rcall	.-30     	; 0x17ce <__fp_splitA>
    17ec:	08 c0       	rjmp	.+16     	; 0x17fe <__fp_splitA+0x30>
    17ee:	16 16       	cp	r1, r22
    17f0:	17 06       	cpc	r1, r23
    17f2:	18 06       	cpc	r1, r24
    17f4:	99 1f       	adc	r25, r25
    17f6:	f1 cf       	rjmp	.-30     	; 0x17da <__fp_splitA+0xc>
    17f8:	86 95       	lsr	r24
    17fa:	71 05       	cpc	r23, r1
    17fc:	61 05       	cpc	r22, r1
    17fe:	08 94       	sec
    1800:	08 95       	ret

00001802 <__fp_zero>:
    1802:	e8 94       	clt

00001804 <__fp_szero>:
    1804:	bb 27       	eor	r27, r27
    1806:	66 27       	eor	r22, r22
    1808:	77 27       	eor	r23, r23
    180a:	cb 01       	movw	r24, r22
    180c:	97 f9       	bld	r25, 7
    180e:	08 95       	ret

00001810 <__gesf2>:
    1810:	0e 94 93 0b 	call	0x1726	; 0x1726 <__fp_cmp>
    1814:	08 f4       	brcc	.+2      	; 0x1818 <__gesf2+0x8>
    1816:	8f ef       	ldi	r24, 0xFF	; 255
    1818:	08 95       	ret

0000181a <__mulsf3>:
    181a:	0e 94 20 0c 	call	0x1840	; 0x1840 <__mulsf3x>
    181e:	0c 94 ce 0b 	jmp	0x179c	; 0x179c <__fp_round>
    1822:	0e 94 c0 0b 	call	0x1780	; 0x1780 <__fp_pscA>
    1826:	38 f0       	brcs	.+14     	; 0x1836 <__mulsf3+0x1c>
    1828:	0e 94 c7 0b 	call	0x178e	; 0x178e <__fp_pscB>
    182c:	20 f0       	brcs	.+8      	; 0x1836 <__mulsf3+0x1c>
    182e:	95 23       	and	r25, r21
    1830:	11 f0       	breq	.+4      	; 0x1836 <__mulsf3+0x1c>
    1832:	0c 94 b7 0b 	jmp	0x176e	; 0x176e <__fp_inf>
    1836:	0c 94 bd 0b 	jmp	0x177a	; 0x177a <__fp_nan>
    183a:	11 24       	eor	r1, r1
    183c:	0c 94 02 0c 	jmp	0x1804	; 0x1804 <__fp_szero>

00001840 <__mulsf3x>:
    1840:	0e 94 df 0b 	call	0x17be	; 0x17be <__fp_split3>
    1844:	70 f3       	brcs	.-36     	; 0x1822 <__mulsf3+0x8>

00001846 <__mulsf3_pse>:
    1846:	95 9f       	mul	r25, r21
    1848:	c1 f3       	breq	.-16     	; 0x183a <__mulsf3+0x20>
    184a:	95 0f       	add	r25, r21
    184c:	50 e0       	ldi	r21, 0x00	; 0
    184e:	55 1f       	adc	r21, r21
    1850:	62 9f       	mul	r22, r18
    1852:	f0 01       	movw	r30, r0
    1854:	72 9f       	mul	r23, r18
    1856:	bb 27       	eor	r27, r27
    1858:	f0 0d       	add	r31, r0
    185a:	b1 1d       	adc	r27, r1
    185c:	63 9f       	mul	r22, r19
    185e:	aa 27       	eor	r26, r26
    1860:	f0 0d       	add	r31, r0
    1862:	b1 1d       	adc	r27, r1
    1864:	aa 1f       	adc	r26, r26
    1866:	64 9f       	mul	r22, r20
    1868:	66 27       	eor	r22, r22
    186a:	b0 0d       	add	r27, r0
    186c:	a1 1d       	adc	r26, r1
    186e:	66 1f       	adc	r22, r22
    1870:	82 9f       	mul	r24, r18
    1872:	22 27       	eor	r18, r18
    1874:	b0 0d       	add	r27, r0
    1876:	a1 1d       	adc	r26, r1
    1878:	62 1f       	adc	r22, r18
    187a:	73 9f       	mul	r23, r19
    187c:	b0 0d       	add	r27, r0
    187e:	a1 1d       	adc	r26, r1
    1880:	62 1f       	adc	r22, r18
    1882:	83 9f       	mul	r24, r19
    1884:	a0 0d       	add	r26, r0
    1886:	61 1d       	adc	r22, r1
    1888:	22 1f       	adc	r18, r18
    188a:	74 9f       	mul	r23, r20
    188c:	33 27       	eor	r19, r19
    188e:	a0 0d       	add	r26, r0
    1890:	61 1d       	adc	r22, r1
    1892:	23 1f       	adc	r18, r19
    1894:	84 9f       	mul	r24, r20
    1896:	60 0d       	add	r22, r0
    1898:	21 1d       	adc	r18, r1
    189a:	82 2f       	mov	r24, r18
    189c:	76 2f       	mov	r23, r22
    189e:	6a 2f       	mov	r22, r26
    18a0:	11 24       	eor	r1, r1
    18a2:	9f 57       	subi	r25, 0x7F	; 127
    18a4:	50 40       	sbci	r21, 0x00	; 0
    18a6:	9a f0       	brmi	.+38     	; 0x18ce <__mulsf3_pse+0x88>
    18a8:	f1 f0       	breq	.+60     	; 0x18e6 <__mulsf3_pse+0xa0>
    18aa:	88 23       	and	r24, r24
    18ac:	4a f0       	brmi	.+18     	; 0x18c0 <__mulsf3_pse+0x7a>
    18ae:	ee 0f       	add	r30, r30
    18b0:	ff 1f       	adc	r31, r31
    18b2:	bb 1f       	adc	r27, r27
    18b4:	66 1f       	adc	r22, r22
    18b6:	77 1f       	adc	r23, r23
    18b8:	88 1f       	adc	r24, r24
    18ba:	91 50       	subi	r25, 0x01	; 1
    18bc:	50 40       	sbci	r21, 0x00	; 0
    18be:	a9 f7       	brne	.-22     	; 0x18aa <__mulsf3_pse+0x64>
    18c0:	9e 3f       	cpi	r25, 0xFE	; 254
    18c2:	51 05       	cpc	r21, r1
    18c4:	80 f0       	brcs	.+32     	; 0x18e6 <__mulsf3_pse+0xa0>
    18c6:	0c 94 b7 0b 	jmp	0x176e	; 0x176e <__fp_inf>
    18ca:	0c 94 02 0c 	jmp	0x1804	; 0x1804 <__fp_szero>
    18ce:	5f 3f       	cpi	r21, 0xFF	; 255
    18d0:	e4 f3       	brlt	.-8      	; 0x18ca <__mulsf3_pse+0x84>
    18d2:	98 3e       	cpi	r25, 0xE8	; 232
    18d4:	d4 f3       	brlt	.-12     	; 0x18ca <__mulsf3_pse+0x84>
    18d6:	86 95       	lsr	r24
    18d8:	77 95       	ror	r23
    18da:	67 95       	ror	r22
    18dc:	b7 95       	ror	r27
    18de:	f7 95       	ror	r31
    18e0:	e7 95       	ror	r30
    18e2:	9f 5f       	subi	r25, 0xFF	; 255
    18e4:	c1 f7       	brne	.-16     	; 0x18d6 <__mulsf3_pse+0x90>
    18e6:	fe 2b       	or	r31, r30
    18e8:	88 0f       	add	r24, r24
    18ea:	91 1d       	adc	r25, r1
    18ec:	96 95       	lsr	r25
    18ee:	87 95       	ror	r24
    18f0:	97 f9       	bld	r25, 7
    18f2:	08 95       	ret

000018f4 <__do_global_dtors>:
    18f4:	10 e0       	ldi	r17, 0x00	; 0
    18f6:	cf e2       	ldi	r28, 0x2F	; 47
    18f8:	d0 e0       	ldi	r29, 0x00	; 0
    18fa:	04 c0       	rjmp	.+8      	; 0x1904 <__do_global_dtors+0x10>
    18fc:	fe 01       	movw	r30, r28
    18fe:	0e 94 a8 0a 	call	0x1550	; 0x1550 <__tablejump2__>
    1902:	21 96       	adiw	r28, 0x01	; 1
    1904:	c1 33       	cpi	r28, 0x31	; 49
    1906:	d1 07       	cpc	r29, r17
    1908:	c9 f7       	brne	.-14     	; 0x18fc <__do_global_dtors+0x8>
    190a:	f8 94       	cli

0000190c <__stop_program>:
    190c:	ff cf       	rjmp	.-2      	; 0x190c <__stop_program>
