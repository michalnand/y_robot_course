
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
      4c:	0c 94 b4 07 	jmp	0xf68	; 0xf68 <__vector_19>
      50:	0c 94 58 00 	jmp	0xb0	; 0xb0 <__bad_interrupt>

00000054 <__ctors_start>:
      54:	4c 01       	movw	r8, r24
      56:	15 04       	cpc	r1, r5
      58:	f8 07       	cpc	r31, r24
      5a:	8b 09       	sbc	r24, r11

0000005c <__ctors_end>:
      5c:	77 01       	movw	r14, r14
      5e:	8f 09       	sbc	r24, r15

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
      72:	ee e5       	ldi	r30, 0x5E	; 94
      74:	f7 e1       	ldi	r31, 0x17	; 23
      76:	02 c0       	rjmp	.+4      	; 0x7c <__do_copy_data+0x10>
      78:	05 90       	lpm	r0, Z+
      7a:	0d 92       	st	X+, r0
      7c:	a2 3c       	cpi	r26, 0xC2	; 194
      7e:	b1 07       	cpc	r27, r17
      80:	d9 f7       	brne	.-10     	; 0x78 <__do_copy_data+0xc>

00000082 <__do_clear_bss>:
      82:	21 e0       	ldi	r18, 0x01	; 1
      84:	a2 ec       	ldi	r26, 0xC2	; 194
      86:	b0 e0       	ldi	r27, 0x00	; 0
      88:	01 c0       	rjmp	.+2      	; 0x8c <.do_clear_bss_start>

0000008a <.do_clear_bss_loop>:
      8a:	1d 92       	st	X+, r1

0000008c <.do_clear_bss_start>:
      8c:	af 32       	cpi	r26, 0x2F	; 47
      8e:	b2 07       	cpc	r27, r18
      90:	e1 f7       	brne	.-8      	; 0x8a <.do_clear_bss_loop>

00000092 <__do_global_ctors>:
      92:	10 e0       	ldi	r17, 0x00	; 0
      94:	ce e2       	ldi	r28, 0x2E	; 46
      96:	d0 e0       	ldi	r29, 0x00	; 0
      98:	04 c0       	rjmp	.+8      	; 0xa2 <__do_global_ctors+0x10>
      9a:	21 97       	sbiw	r28, 0x01	; 1
      9c:	fe 01       	movw	r30, r28
      9e:	0e 94 60 0a 	call	0x14c0	; 0x14c0 <__tablejump2__>
      a2:	ca 32       	cpi	r28, 0x2A	; 42
      a4:	d1 07       	cpc	r29, r17
      a6:	c9 f7       	brne	.-14     	; 0x9a <__do_global_ctors+0x8>
      a8:	0e 94 fd 00 	call	0x1fa	; 0x1fa <main>
      ac:	0c 94 a2 0b 	jmp	0x1744	; 0x1744 <__do_global_dtors>

000000b0 <__bad_interrupt>:
      b0:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b4 <_ZN6CBlinkD1Ev>:
      b4:	08 95       	ret

000000b6 <_ZN6CBlinkD0Ev>:
      b6:	0c 94 59 07 	jmp	0xeb2	; 0xeb2 <_ZdlPv>

000000ba <_ZN10CLaserTaskclEv>:
      ba:	cf 92       	push	r12
      bc:	df 92       	push	r13
      be:	ef 92       	push	r14
      c0:	ff 92       	push	r15
      c2:	cf 93       	push	r28
      c4:	df 93       	push	r29
      c6:	ec 01       	movw	r28, r24
      c8:	2a 8d       	ldd	r18, Y+26	; 0x1a
      ca:	3b 8d       	ldd	r19, Y+27	; 0x1b
      cc:	4c 8d       	ldd	r20, Y+28	; 0x1c
      ce:	5d 8d       	ldd	r21, Y+29	; 0x1d
      d0:	af e1       	ldi	r26, 0x1F	; 31
      d2:	b0 e0       	ldi	r27, 0x00	; 0
      d4:	0e 94 41 0a 	call	0x1482	; 0x1482 <__muluhisi3>
      d8:	6b 01       	movw	r12, r22
      da:	7c 01       	movw	r14, r24
      dc:	ce 01       	movw	r24, r28
      de:	02 96       	adiw	r24, 0x02	; 2
      e0:	0e 94 24 04 	call	0x848	; 0x848 <_ZN8CVL53L0X4readEv>
      e4:	44 97       	sbiw	r24, 0x14	; 20
      e6:	09 2e       	mov	r0, r25
      e8:	00 0c       	add	r0, r0
      ea:	aa 0b       	sbc	r26, r26
      ec:	bb 0b       	sbc	r27, r27
      ee:	8c 0d       	add	r24, r12
      f0:	9d 1d       	adc	r25, r13
      f2:	ae 1d       	adc	r26, r14
      f4:	bf 1d       	adc	r27, r15
      f6:	35 e0       	ldi	r19, 0x05	; 5
      f8:	b6 95       	lsr	r27
      fa:	a7 95       	ror	r26
      fc:	97 95       	ror	r25
      fe:	87 95       	ror	r24
     100:	3a 95       	dec	r19
     102:	d1 f7       	brne	.-12     	; 0xf8 <_ZN10CLaserTaskclEv+0x3e>
     104:	8d 32       	cpi	r24, 0x2D	; 45
     106:	21 e0       	ldi	r18, 0x01	; 1
     108:	92 07       	cpc	r25, r18
     10a:	a1 05       	cpc	r26, r1
     10c:	b1 05       	cpc	r27, r1
     10e:	20 f0       	brcs	.+8      	; 0x118 <_ZN10CLaserTaskclEv+0x5e>
     110:	8c e2       	ldi	r24, 0x2C	; 44
     112:	91 e0       	ldi	r25, 0x01	; 1
     114:	a0 e0       	ldi	r26, 0x00	; 0
     116:	b0 e0       	ldi	r27, 0x00	; 0
     118:	8a 8f       	std	Y+26, r24	; 0x1a
     11a:	9b 8f       	std	Y+27, r25	; 0x1b
     11c:	ac 8f       	std	Y+28, r26	; 0x1c
     11e:	bd 8f       	std	Y+29, r27	; 0x1d
     120:	8d 8d       	ldd	r24, Y+29	; 0x1d
     122:	8f 93       	push	r24
     124:	8c 8d       	ldd	r24, Y+28	; 0x1c
     126:	8f 93       	push	r24
     128:	8b 8d       	ldd	r24, Y+27	; 0x1b
     12a:	8f 93       	push	r24
     12c:	8a 8d       	ldd	r24, Y+26	; 0x1a
     12e:	8f 93       	push	r24
     130:	86 e6       	ldi	r24, 0x66	; 102
     132:	90 e0       	ldi	r25, 0x00	; 0
     134:	9f 93       	push	r25
     136:	8f 93       	push	r24
     138:	8a e2       	ldi	r24, 0x2A	; 42
     13a:	91 e0       	ldi	r25, 0x01	; 1
     13c:	9f 93       	push	r25
     13e:	8f 93       	push	r24
     140:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN9CTerminal6printfEPKcz>
     144:	6a 8d       	ldd	r22, Y+26	; 0x1a
     146:	7b 8d       	ldd	r23, Y+27	; 0x1b
     148:	8c 8d       	ldd	r24, Y+28	; 0x1c
     14a:	9d 8d       	ldd	r25, Y+29	; 0x1d
     14c:	2a e0       	ldi	r18, 0x0A	; 10
     14e:	c2 2e       	mov	r12, r18
     150:	d1 2c       	mov	r13, r1
     152:	e1 2c       	mov	r14, r1
     154:	f1 2c       	mov	r15, r1
     156:	a7 01       	movw	r20, r14
     158:	96 01       	movw	r18, r12
     15a:	0e 94 00 0a 	call	0x1400	; 0x1400 <__udivmodsi4>
     15e:	62 2f       	mov	r22, r18
     160:	ce 01       	movw	r24, r28
     162:	44 96       	adiw	r24, 0x14	; 20
     164:	0e 94 c6 09 	call	0x138c	; 0x138c <_ZN11CLEDDisplay11display_decEh>
     168:	8e 8d       	ldd	r24, Y+30	; 0x1e
     16a:	9f 8d       	ldd	r25, Y+31	; 0x1f
     16c:	a8 a1       	ldd	r26, Y+32	; 0x20
     16e:	b9 a1       	ldd	r27, Y+33	; 0x21
     170:	2d b7       	in	r18, 0x3d	; 61
     172:	3e b7       	in	r19, 0x3e	; 62
     174:	28 5f       	subi	r18, 0xF8	; 248
     176:	3f 4f       	sbci	r19, 0xFF	; 255
     178:	0f b6       	in	r0, 0x3f	; 63
     17a:	f8 94       	cli
     17c:	3e bf       	out	0x3e, r19	; 62
     17e:	0f be       	out	0x3f, r0	; 63
     180:	2d bf       	out	0x3d, r18	; 61
     182:	00 97       	sbiw	r24, 0x00	; 0
     184:	a1 05       	cpc	r26, r1
     186:	b1 05       	cpc	r27, r1
     188:	41 f0       	breq	.+16     	; 0x19a <_ZN10CLaserTaskclEv+0xe0>
     18a:	01 97       	sbiw	r24, 0x01	; 1
     18c:	a1 09       	sbc	r26, r1
     18e:	b1 09       	sbc	r27, r1
     190:	8e 8f       	std	Y+30, r24	; 0x1e
     192:	9f 8f       	std	Y+31, r25	; 0x1f
     194:	a8 a3       	std	Y+32, r26	; 0x20
     196:	b9 a3       	std	Y+33, r27	; 0x21
     198:	0c c0       	rjmp	.+24     	; 0x1b2 <_ZN10CLaserTaskclEv+0xf8>
     19a:	6a 8d       	ldd	r22, Y+26	; 0x1a
     19c:	7b 8d       	ldd	r23, Y+27	; 0x1b
     19e:	8c 8d       	ldd	r24, Y+28	; 0x1c
     1a0:	9d 8d       	ldd	r25, Y+29	; 0x1d
     1a2:	a7 01       	movw	r20, r14
     1a4:	96 01       	movw	r18, r12
     1a6:	0e 94 00 0a 	call	0x1400	; 0x1400 <__udivmodsi4>
     1aa:	2e 8f       	std	Y+30, r18	; 0x1e
     1ac:	3f 8f       	std	Y+31, r19	; 0x1f
     1ae:	48 a3       	std	Y+32, r20	; 0x20
     1b0:	59 a3       	std	Y+33, r21	; 0x21
     1b2:	8e 8d       	ldd	r24, Y+30	; 0x1e
     1b4:	9f 8d       	ldd	r25, Y+31	; 0x1f
     1b6:	a8 a1       	ldd	r26, Y+32	; 0x20
     1b8:	b9 a1       	ldd	r27, Y+33	; 0x21
     1ba:	01 97       	sbiw	r24, 0x01	; 1
     1bc:	a1 05       	cpc	r26, r1
     1be:	b1 05       	cpc	r27, r1
     1c0:	11 f4       	brne	.+4      	; 0x1c6 <_ZN10CLaserTaskclEv+0x10c>
     1c2:	df 98       	cbi	0x1b, 7	; 27
     1c4:	01 c0       	rjmp	.+2      	; 0x1c8 <_ZN10CLaserTaskclEv+0x10e>
     1c6:	df 9a       	sbi	0x1b, 7	; 27
     1c8:	df 91       	pop	r29
     1ca:	cf 91       	pop	r28
     1cc:	ff 90       	pop	r15
     1ce:	ef 90       	pop	r14
     1d0:	df 90       	pop	r13
     1d2:	cf 90       	pop	r12
     1d4:	08 95       	ret

000001d6 <_ZN6CBlinkclEv>:
     1d6:	fc 01       	movw	r30, r24
     1d8:	83 81       	ldd	r24, Z+3	; 0x03
     1da:	94 81       	ldd	r25, Z+4	; 0x04
     1dc:	00 97       	sbiw	r24, 0x00	; 0
     1de:	19 f0       	breq	.+6      	; 0x1e6 <_ZN6CBlinkclEv+0x10>
     1e0:	01 97       	sbiw	r24, 0x01	; 1
     1e2:	39 f0       	breq	.+14     	; 0x1f2 <_ZN6CBlinkclEv+0x1c>
     1e4:	08 95       	ret
     1e6:	dd 9a       	sbi	0x1b, 5	; 27
     1e8:	81 e0       	ldi	r24, 0x01	; 1
     1ea:	90 e0       	ldi	r25, 0x00	; 0
     1ec:	94 83       	std	Z+4, r25	; 0x04
     1ee:	83 83       	std	Z+3, r24	; 0x03
     1f0:	08 95       	ret
     1f2:	dd 98       	cbi	0x1b, 5	; 27
     1f4:	14 82       	std	Z+4, r1	; 0x04
     1f6:	13 82       	std	Z+3, r1	; 0x03
     1f8:	08 95       	ret

000001fa <main>:
     1fa:	bb 98       	cbi	0x17, 3	; 23
     1fc:	c3 9a       	sbi	0x18, 3	; 24
     1fe:	ba 98       	cbi	0x17, 2	; 23
     200:	c2 9a       	sbi	0x18, 2	; 24
     202:	48 ec       	ldi	r20, 0xC8	; 200
     204:	50 e0       	ldi	r21, 0x00	; 0
     206:	64 ee       	ldi	r22, 0xE4	; 228
     208:	70 e0       	ldi	r23, 0x00	; 0
     20a:	8d ee       	ldi	r24, 0xED	; 237
     20c:	90 e0       	ldi	r25, 0x00	; 0
     20e:	0e 94 75 07 	call	0xeea	; 0xeea <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     212:	8a e6       	ldi	r24, 0x6A	; 106
     214:	90 e0       	ldi	r25, 0x00	; 0
     216:	9f 93       	push	r25
     218:	8f 93       	push	r24
     21a:	8a e2       	ldi	r24, 0x2A	; 42
     21c:	91 e0       	ldi	r25, 0x01	; 1
     21e:	9f 93       	push	r25
     220:	8f 93       	push	r24
     222:	0e 94 07 09 	call	0x120e	; 0x120e <_ZN9CTerminal6printfEPKcz>
     226:	0f 90       	pop	r0
     228:	0f 90       	pop	r0
     22a:	0f 90       	pop	r0
     22c:	0f 90       	pop	r0
     22e:	b3 9b       	sbis	0x16, 3	; 22
     230:	07 c0       	rjmp	.+14     	; 0x240 <main+0x46>
     232:	b2 9b       	sbis	0x16, 2	; 22
     234:	05 c0       	rjmp	.+10     	; 0x240 <main+0x46>
     236:	8d ee       	ldi	r24, 0xED	; 237
     238:	90 e0       	ldi	r25, 0x00	; 0
     23a:	0e 94 97 07 	call	0xf2e	; 0xf2e <_ZN8CRTTimer4mainEv>
     23e:	f7 cf       	rjmp	.-18     	; 0x22e <main+0x34>
     240:	60 e0       	ldi	r22, 0x00	; 0
     242:	86 ed       	ldi	r24, 0xD6	; 214
     244:	90 e0       	ldi	r25, 0x00	; 0
     246:	0e 94 c6 09 	call	0x138c	; 0x138c <_ZN11CLEDDisplay11display_decEh>
     24a:	69 ee       	ldi	r22, 0xE9	; 233
     24c:	70 e0       	ldi	r23, 0x00	; 0
     24e:	84 ec       	ldi	r24, 0xC4	; 196
     250:	90 e0       	ldi	r25, 0x00	; 0
     252:	0e 94 a6 05 	call	0xb4c	; 0xb4c <_ZN8CVL53L0X4initEP14CI2C_Interface>
     256:	88 ee       	ldi	r24, 0xE8	; 232
     258:	93 e0       	ldi	r25, 0x03	; 3
     25a:	a0 e0       	ldi	r26, 0x00	; 0
     25c:	b0 e0       	ldi	r27, 0x00	; 0
     25e:	80 93 dc 00 	sts	0x00DC, r24
     262:	90 93 dd 00 	sts	0x00DD, r25
     266:	a0 93 de 00 	sts	0x00DE, r26
     26a:	b0 93 df 00 	sts	0x00DF, r27
     26e:	10 92 e0 00 	sts	0x00E0, r1
     272:	10 92 e1 00 	sts	0x00E1, r1
     276:	10 92 e2 00 	sts	0x00E2, r1
     27a:	10 92 e3 00 	sts	0x00E3, r1
     27e:	44 e1       	ldi	r20, 0x14	; 20
     280:	50 e0       	ldi	r21, 0x00	; 0
     282:	62 ec       	ldi	r22, 0xC2	; 194
     284:	70 e0       	ldi	r23, 0x00	; 0
     286:	8d ee       	ldi	r24, 0xED	; 237
     288:	90 e0       	ldi	r25, 0x00	; 0
     28a:	0e 94 75 07 	call	0xeea	; 0xeea <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
     28e:	8d ee       	ldi	r24, 0xED	; 237
     290:	90 e0       	ldi	r25, 0x00	; 0
     292:	0e 94 97 07 	call	0xf2e	; 0xf2e <_ZN8CRTTimer4mainEv>
     296:	fb cf       	rjmp	.-10     	; 0x28e <main+0x94>

00000298 <_GLOBAL__sub_I_blink_task>:
     298:	e4 ee       	ldi	r30, 0xE4	; 228
     29a:	f0 e0       	ldi	r31, 0x00	; 0
     29c:	80 e8       	ldi	r24, 0x80	; 128
     29e:	90 e0       	ldi	r25, 0x00	; 0
     2a0:	91 83       	std	Z+1, r25	; 0x01
     2a2:	80 83       	st	Z, r24
     2a4:	d5 9a       	sbi	0x1a, 5	; 26
     2a6:	14 82       	std	Z+4, r1	; 0x04
     2a8:	13 82       	std	Z+3, r1	; 0x03
     2aa:	8a e8       	ldi	r24, 0x8A	; 138
     2ac:	90 e0       	ldi	r25, 0x00	; 0
     2ae:	90 93 c3 00 	sts	0x00C3, r25
     2b2:	80 93 c2 00 	sts	0x00C2, r24
     2b6:	84 ec       	ldi	r24, 0xC4	; 196
     2b8:	90 e0       	ldi	r25, 0x00	; 0
     2ba:	0e 94 22 04 	call	0x844	; 0x844 <_ZN8CVL53L0XC1Ev>
     2be:	86 ed       	ldi	r24, 0xD6	; 214
     2c0:	90 e0       	ldi	r25, 0x00	; 0
     2c2:	0e 94 ae 09 	call	0x135c	; 0x135c <_ZN11CLEDDisplayC1Ev>
     2c6:	d7 9a       	sbi	0x1a, 7	; 26
     2c8:	df 9a       	sbi	0x1b, 7	; 27
     2ca:	08 95       	ret

000002cc <_ZN10CLaserTaskD1Ev>:
     2cc:	cf 93       	push	r28
     2ce:	df 93       	push	r29
     2d0:	ec 01       	movw	r28, r24
     2d2:	8a e8       	ldi	r24, 0x8A	; 138
     2d4:	90 e0       	ldi	r25, 0x00	; 0
     2d6:	99 83       	std	Y+1, r25	; 0x01
     2d8:	88 83       	st	Y, r24
     2da:	ce 01       	movw	r24, r28
     2dc:	44 96       	adiw	r24, 0x14	; 20
     2de:	0e 94 93 09 	call	0x1326	; 0x1326 <_ZN11CLEDDisplayD1Ev>
     2e2:	ce 01       	movw	r24, r28
     2e4:	02 96       	adiw	r24, 0x02	; 2
     2e6:	df 91       	pop	r29
     2e8:	cf 91       	pop	r28
     2ea:	0c 94 23 04 	jmp	0x846	; 0x846 <_ZN8CVL53L0XD1Ev>

000002ee <_GLOBAL__sub_D_blink_task>:
     2ee:	82 ec       	ldi	r24, 0xC2	; 194
     2f0:	90 e0       	ldi	r25, 0x00	; 0
     2f2:	0c 94 66 01 	jmp	0x2cc	; 0x2cc <_ZN10CLaserTaskD1Ev>

000002f6 <_ZN10CLaserTaskD0Ev>:
     2f6:	cf 93       	push	r28
     2f8:	df 93       	push	r29
     2fa:	ec 01       	movw	r28, r24
     2fc:	0e 94 66 01 	call	0x2cc	; 0x2cc <_ZN10CLaserTaskD1Ev>
     300:	ce 01       	movw	r24, r28
     302:	df 91       	pop	r29
     304:	cf 91       	pop	r28
     306:	0c 94 59 07 	jmp	0xeb2	; 0xeb2 <_ZdlPv>

0000030a <_ZN6CUSARTC1Ev>:
     30a:	10 bc       	out	0x20, r1	; 32
     30c:	80 e4       	ldi	r24, 0x40	; 64
     30e:	89 b9       	out	0x09, r24	; 9
     310:	80 b5       	in	r24, 0x20	; 32
     312:	86 68       	ori	r24, 0x86	; 134
     314:	80 bd       	out	0x20, r24	; 32
     316:	8a b1       	in	r24, 0x0a	; 10
     318:	88 61       	ori	r24, 0x18	; 24
     31a:	8a b9       	out	0x0a, r24	; 10
     31c:	08 95       	ret

0000031e <_ZN6CUSARTD1Ev>:
     31e:	08 95       	ret

00000320 <_ZN6CUSART7putcharEc>:
     320:	6c b9       	out	0x0c, r22	; 12
     322:	5d 99       	sbic	0x0b, 5	; 11
     324:	02 c0       	rjmp	.+4      	; 0x32a <_ZN6CUSART7putcharEc+0xa>
     326:	00 00       	nop
     328:	fc cf       	rjmp	.-8      	; 0x322 <_ZN6CUSART7putcharEc+0x2>
     32a:	08 95       	ret

0000032c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
     32c:	0f 93       	push	r16
     32e:	1f 93       	push	r17
     330:	cf 93       	push	r28
     332:	df 93       	push	r29
     334:	00 d0       	rcall	.+0      	; 0x336 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
     336:	1f 92       	push	r1
     338:	cd b7       	in	r28, 0x3d	; 61
     33a:	de b7       	in	r29, 0x3e	; 62
     33c:	8c 01       	movw	r16, r24
     33e:	dc 01       	movw	r26, r24
     340:	ed 91       	ld	r30, X+
     342:	fc 91       	ld	r31, X
     344:	01 90       	ld	r0, Z+
     346:	f0 81       	ld	r31, Z
     348:	e0 2d       	mov	r30, r0
     34a:	2b 83       	std	Y+3, r18	; 0x03
     34c:	4a 83       	std	Y+2, r20	; 0x02
     34e:	69 83       	std	Y+1, r22	; 0x01
     350:	09 95       	icall
     352:	d8 01       	movw	r26, r16
     354:	ed 91       	ld	r30, X+
     356:	fc 91       	ld	r31, X
     358:	04 80       	ldd	r0, Z+4	; 0x04
     35a:	f5 81       	ldd	r31, Z+5	; 0x05
     35c:	e0 2d       	mov	r30, r0
     35e:	69 81       	ldd	r22, Y+1	; 0x01
     360:	c8 01       	movw	r24, r16
     362:	09 95       	icall
     364:	d8 01       	movw	r26, r16
     366:	ed 91       	ld	r30, X+
     368:	fc 91       	ld	r31, X
     36a:	04 80       	ldd	r0, Z+4	; 0x04
     36c:	f5 81       	ldd	r31, Z+5	; 0x05
     36e:	e0 2d       	mov	r30, r0
     370:	4a 81       	ldd	r20, Y+2	; 0x02
     372:	64 2f       	mov	r22, r20
     374:	c8 01       	movw	r24, r16
     376:	09 95       	icall
     378:	d8 01       	movw	r26, r16
     37a:	ed 91       	ld	r30, X+
     37c:	fc 91       	ld	r31, X
     37e:	04 80       	ldd	r0, Z+4	; 0x04
     380:	f5 81       	ldd	r31, Z+5	; 0x05
     382:	e0 2d       	mov	r30, r0
     384:	2b 81       	ldd	r18, Y+3	; 0x03
     386:	62 2f       	mov	r22, r18
     388:	c8 01       	movw	r24, r16
     38a:	09 95       	icall
     38c:	d8 01       	movw	r26, r16
     38e:	ed 91       	ld	r30, X+
     390:	fc 91       	ld	r31, X
     392:	02 80       	ldd	r0, Z+2	; 0x02
     394:	f3 81       	ldd	r31, Z+3	; 0x03
     396:	e0 2d       	mov	r30, r0
     398:	c8 01       	movw	r24, r16
     39a:	0f 90       	pop	r0
     39c:	0f 90       	pop	r0
     39e:	0f 90       	pop	r0
     3a0:	df 91       	pop	r29
     3a2:	cf 91       	pop	r28
     3a4:	1f 91       	pop	r17
     3a6:	0f 91       	pop	r16
     3a8:	09 94       	ijmp

000003aa <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
     3aa:	0f 93       	push	r16
     3ac:	1f 93       	push	r17
     3ae:	cf 93       	push	r28
     3b0:	df 93       	push	r29
     3b2:	00 d0       	rcall	.+0      	; 0x3b4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
     3b4:	00 d0       	rcall	.+0      	; 0x3b6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
     3b6:	cd b7       	in	r28, 0x3d	; 61
     3b8:	de b7       	in	r29, 0x3e	; 62
     3ba:	8c 01       	movw	r16, r24
     3bc:	dc 01       	movw	r26, r24
     3be:	ed 91       	ld	r30, X+
     3c0:	fc 91       	ld	r31, X
     3c2:	01 90       	ld	r0, Z+
     3c4:	f0 81       	ld	r31, Z
     3c6:	e0 2d       	mov	r30, r0
     3c8:	2c 83       	std	Y+4, r18	; 0x04
     3ca:	3b 83       	std	Y+3, r19	; 0x03
     3cc:	4a 83       	std	Y+2, r20	; 0x02
     3ce:	69 83       	std	Y+1, r22	; 0x01
     3d0:	09 95       	icall
     3d2:	d8 01       	movw	r26, r16
     3d4:	ed 91       	ld	r30, X+
     3d6:	fc 91       	ld	r31, X
     3d8:	04 80       	ldd	r0, Z+4	; 0x04
     3da:	f5 81       	ldd	r31, Z+5	; 0x05
     3dc:	e0 2d       	mov	r30, r0
     3de:	69 81       	ldd	r22, Y+1	; 0x01
     3e0:	c8 01       	movw	r24, r16
     3e2:	09 95       	icall
     3e4:	d8 01       	movw	r26, r16
     3e6:	ed 91       	ld	r30, X+
     3e8:	fc 91       	ld	r31, X
     3ea:	04 80       	ldd	r0, Z+4	; 0x04
     3ec:	f5 81       	ldd	r31, Z+5	; 0x05
     3ee:	e0 2d       	mov	r30, r0
     3f0:	4a 81       	ldd	r20, Y+2	; 0x02
     3f2:	64 2f       	mov	r22, r20
     3f4:	c8 01       	movw	r24, r16
     3f6:	09 95       	icall
     3f8:	d8 01       	movw	r26, r16
     3fa:	ed 91       	ld	r30, X+
     3fc:	fc 91       	ld	r31, X
     3fe:	04 80       	ldd	r0, Z+4	; 0x04
     400:	f5 81       	ldd	r31, Z+5	; 0x05
     402:	e0 2d       	mov	r30, r0
     404:	3b 81       	ldd	r19, Y+3	; 0x03
     406:	63 2f       	mov	r22, r19
     408:	c8 01       	movw	r24, r16
     40a:	09 95       	icall
     40c:	d8 01       	movw	r26, r16
     40e:	ed 91       	ld	r30, X+
     410:	fc 91       	ld	r31, X
     412:	04 80       	ldd	r0, Z+4	; 0x04
     414:	f5 81       	ldd	r31, Z+5	; 0x05
     416:	e0 2d       	mov	r30, r0
     418:	2c 81       	ldd	r18, Y+4	; 0x04
     41a:	62 2f       	mov	r22, r18
     41c:	c8 01       	movw	r24, r16
     41e:	09 95       	icall
     420:	d8 01       	movw	r26, r16
     422:	ed 91       	ld	r30, X+
     424:	fc 91       	ld	r31, X
     426:	02 80       	ldd	r0, Z+2	; 0x02
     428:	f3 81       	ldd	r31, Z+3	; 0x03
     42a:	e0 2d       	mov	r30, r0
     42c:	c8 01       	movw	r24, r16
     42e:	0f 90       	pop	r0
     430:	0f 90       	pop	r0
     432:	0f 90       	pop	r0
     434:	0f 90       	pop	r0
     436:	df 91       	pop	r29
     438:	cf 91       	pop	r28
     43a:	1f 91       	pop	r17
     43c:	0f 91       	pop	r16
     43e:	09 94       	ijmp

00000440 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
     440:	cf 92       	push	r12
     442:	df 92       	push	r13
     444:	ef 92       	push	r14
     446:	ff 92       	push	r15
     448:	0f 93       	push	r16
     44a:	1f 93       	push	r17
     44c:	cf 93       	push	r28
     44e:	df 93       	push	r29
     450:	00 d0       	rcall	.+0      	; 0x452 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
     452:	00 d0       	rcall	.+0      	; 0x454 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
     454:	cd b7       	in	r28, 0x3d	; 61
     456:	de b7       	in	r29, 0x3e	; 62
     458:	6c 01       	movw	r12, r24
     45a:	dc 01       	movw	r26, r24
     45c:	ed 91       	ld	r30, X+
     45e:	fc 91       	ld	r31, X
     460:	01 90       	ld	r0, Z+
     462:	f0 81       	ld	r31, Z
     464:	e0 2d       	mov	r30, r0
     466:	2b 83       	std	Y+3, r18	; 0x03
     468:	3c 83       	std	Y+4, r19	; 0x04
     46a:	4a 83       	std	Y+2, r20	; 0x02
     46c:	69 83       	std	Y+1, r22	; 0x01
     46e:	09 95       	icall
     470:	d6 01       	movw	r26, r12
     472:	ed 91       	ld	r30, X+
     474:	fc 91       	ld	r31, X
     476:	04 80       	ldd	r0, Z+4	; 0x04
     478:	f5 81       	ldd	r31, Z+5	; 0x05
     47a:	e0 2d       	mov	r30, r0
     47c:	69 81       	ldd	r22, Y+1	; 0x01
     47e:	c6 01       	movw	r24, r12
     480:	09 95       	icall
     482:	d6 01       	movw	r26, r12
     484:	ed 91       	ld	r30, X+
     486:	fc 91       	ld	r31, X
     488:	04 80       	ldd	r0, Z+4	; 0x04
     48a:	f5 81       	ldd	r31, Z+5	; 0x05
     48c:	e0 2d       	mov	r30, r0
     48e:	4a 81       	ldd	r20, Y+2	; 0x02
     490:	64 2f       	mov	r22, r20
     492:	c6 01       	movw	r24, r12
     494:	09 95       	icall
     496:	2b 81       	ldd	r18, Y+3	; 0x03
     498:	e2 2e       	mov	r14, r18
     49a:	3c 81       	ldd	r19, Y+4	; 0x04
     49c:	f3 2e       	mov	r15, r19
     49e:	0e 0d       	add	r16, r14
     4a0:	1f 1d       	adc	r17, r15
     4a2:	d6 01       	movw	r26, r12
     4a4:	ed 91       	ld	r30, X+
     4a6:	fc 91       	ld	r31, X
     4a8:	e0 16       	cp	r14, r16
     4aa:	f1 06       	cpc	r15, r17
     4ac:	49 f0       	breq	.+18     	; 0x4c0 <__stack+0x61>
     4ae:	d7 01       	movw	r26, r14
     4b0:	6d 91       	ld	r22, X+
     4b2:	7d 01       	movw	r14, r26
     4b4:	04 80       	ldd	r0, Z+4	; 0x04
     4b6:	f5 81       	ldd	r31, Z+5	; 0x05
     4b8:	e0 2d       	mov	r30, r0
     4ba:	c6 01       	movw	r24, r12
     4bc:	09 95       	icall
     4be:	f1 cf       	rjmp	.-30     	; 0x4a2 <__stack+0x43>
     4c0:	02 80       	ldd	r0, Z+2	; 0x02
     4c2:	f3 81       	ldd	r31, Z+3	; 0x03
     4c4:	e0 2d       	mov	r30, r0
     4c6:	c6 01       	movw	r24, r12
     4c8:	0f 90       	pop	r0
     4ca:	0f 90       	pop	r0
     4cc:	0f 90       	pop	r0
     4ce:	0f 90       	pop	r0
     4d0:	df 91       	pop	r29
     4d2:	cf 91       	pop	r28
     4d4:	1f 91       	pop	r17
     4d6:	0f 91       	pop	r16
     4d8:	ff 90       	pop	r15
     4da:	ef 90       	pop	r14
     4dc:	df 90       	pop	r13
     4de:	cf 90       	pop	r12
     4e0:	09 94       	ijmp

000004e2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
     4e2:	ef 92       	push	r14
     4e4:	ff 92       	push	r15
     4e6:	1f 93       	push	r17
     4e8:	cf 93       	push	r28
     4ea:	df 93       	push	r29
     4ec:	1f 92       	push	r1
     4ee:	cd b7       	in	r28, 0x3d	; 61
     4f0:	de b7       	in	r29, 0x3e	; 62
     4f2:	7c 01       	movw	r14, r24
     4f4:	16 2f       	mov	r17, r22
     4f6:	dc 01       	movw	r26, r24
     4f8:	ed 91       	ld	r30, X+
     4fa:	fc 91       	ld	r31, X
     4fc:	01 90       	ld	r0, Z+
     4fe:	f0 81       	ld	r31, Z
     500:	e0 2d       	mov	r30, r0
     502:	49 83       	std	Y+1, r20	; 0x01
     504:	09 95       	icall
     506:	d7 01       	movw	r26, r14
     508:	ed 91       	ld	r30, X+
     50a:	fc 91       	ld	r31, X
     50c:	04 80       	ldd	r0, Z+4	; 0x04
     50e:	f5 81       	ldd	r31, Z+5	; 0x05
     510:	e0 2d       	mov	r30, r0
     512:	61 2f       	mov	r22, r17
     514:	c7 01       	movw	r24, r14
     516:	09 95       	icall
     518:	d7 01       	movw	r26, r14
     51a:	ed 91       	ld	r30, X+
     51c:	fc 91       	ld	r31, X
     51e:	04 80       	ldd	r0, Z+4	; 0x04
     520:	f5 81       	ldd	r31, Z+5	; 0x05
     522:	e0 2d       	mov	r30, r0
     524:	49 81       	ldd	r20, Y+1	; 0x01
     526:	64 2f       	mov	r22, r20
     528:	c7 01       	movw	r24, r14
     52a:	09 95       	icall
     52c:	d7 01       	movw	r26, r14
     52e:	ed 91       	ld	r30, X+
     530:	fc 91       	ld	r31, X
     532:	01 90       	ld	r0, Z+
     534:	f0 81       	ld	r31, Z
     536:	e0 2d       	mov	r30, r0
     538:	c7 01       	movw	r24, r14
     53a:	09 95       	icall
     53c:	d7 01       	movw	r26, r14
     53e:	ed 91       	ld	r30, X+
     540:	fc 91       	ld	r31, X
     542:	61 2f       	mov	r22, r17
     544:	61 60       	ori	r22, 0x01	; 1
     546:	04 80       	ldd	r0, Z+4	; 0x04
     548:	f5 81       	ldd	r31, Z+5	; 0x05
     54a:	e0 2d       	mov	r30, r0
     54c:	c7 01       	movw	r24, r14
     54e:	09 95       	icall
     550:	d7 01       	movw	r26, r14
     552:	ed 91       	ld	r30, X+
     554:	fc 91       	ld	r31, X
     556:	06 80       	ldd	r0, Z+6	; 0x06
     558:	f7 81       	ldd	r31, Z+7	; 0x07
     55a:	e0 2d       	mov	r30, r0
     55c:	60 e0       	ldi	r22, 0x00	; 0
     55e:	c7 01       	movw	r24, r14
     560:	09 95       	icall
     562:	18 2f       	mov	r17, r24
     564:	d7 01       	movw	r26, r14
     566:	ed 91       	ld	r30, X+
     568:	fc 91       	ld	r31, X
     56a:	02 80       	ldd	r0, Z+2	; 0x02
     56c:	f3 81       	ldd	r31, Z+3	; 0x03
     56e:	e0 2d       	mov	r30, r0
     570:	c7 01       	movw	r24, r14
     572:	09 95       	icall
     574:	81 2f       	mov	r24, r17
     576:	0f 90       	pop	r0
     578:	df 91       	pop	r29
     57a:	cf 91       	pop	r28
     57c:	1f 91       	pop	r17
     57e:	ff 90       	pop	r15
     580:	ef 90       	pop	r14
     582:	08 95       	ret

00000584 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
     584:	ef 92       	push	r14
     586:	ff 92       	push	r15
     588:	0f 93       	push	r16
     58a:	1f 93       	push	r17
     58c:	cf 93       	push	r28
     58e:	df 93       	push	r29
     590:	1f 92       	push	r1
     592:	cd b7       	in	r28, 0x3d	; 61
     594:	de b7       	in	r29, 0x3e	; 62
     596:	7c 01       	movw	r14, r24
     598:	16 2f       	mov	r17, r22
     59a:	dc 01       	movw	r26, r24
     59c:	ed 91       	ld	r30, X+
     59e:	fc 91       	ld	r31, X
     5a0:	01 90       	ld	r0, Z+
     5a2:	f0 81       	ld	r31, Z
     5a4:	e0 2d       	mov	r30, r0
     5a6:	49 83       	std	Y+1, r20	; 0x01
     5a8:	09 95       	icall
     5aa:	d7 01       	movw	r26, r14
     5ac:	ed 91       	ld	r30, X+
     5ae:	fc 91       	ld	r31, X
     5b0:	04 80       	ldd	r0, Z+4	; 0x04
     5b2:	f5 81       	ldd	r31, Z+5	; 0x05
     5b4:	e0 2d       	mov	r30, r0
     5b6:	61 2f       	mov	r22, r17
     5b8:	c7 01       	movw	r24, r14
     5ba:	09 95       	icall
     5bc:	d7 01       	movw	r26, r14
     5be:	ed 91       	ld	r30, X+
     5c0:	fc 91       	ld	r31, X
     5c2:	04 80       	ldd	r0, Z+4	; 0x04
     5c4:	f5 81       	ldd	r31, Z+5	; 0x05
     5c6:	e0 2d       	mov	r30, r0
     5c8:	49 81       	ldd	r20, Y+1	; 0x01
     5ca:	64 2f       	mov	r22, r20
     5cc:	c7 01       	movw	r24, r14
     5ce:	09 95       	icall
     5d0:	d7 01       	movw	r26, r14
     5d2:	ed 91       	ld	r30, X+
     5d4:	fc 91       	ld	r31, X
     5d6:	01 90       	ld	r0, Z+
     5d8:	f0 81       	ld	r31, Z
     5da:	e0 2d       	mov	r30, r0
     5dc:	c7 01       	movw	r24, r14
     5de:	09 95       	icall
     5e0:	d7 01       	movw	r26, r14
     5e2:	ed 91       	ld	r30, X+
     5e4:	fc 91       	ld	r31, X
     5e6:	61 2f       	mov	r22, r17
     5e8:	61 60       	ori	r22, 0x01	; 1
     5ea:	04 80       	ldd	r0, Z+4	; 0x04
     5ec:	f5 81       	ldd	r31, Z+5	; 0x05
     5ee:	e0 2d       	mov	r30, r0
     5f0:	c7 01       	movw	r24, r14
     5f2:	09 95       	icall
     5f4:	d7 01       	movw	r26, r14
     5f6:	ed 91       	ld	r30, X+
     5f8:	fc 91       	ld	r31, X
     5fa:	06 80       	ldd	r0, Z+6	; 0x06
     5fc:	f7 81       	ldd	r31, Z+7	; 0x07
     5fe:	e0 2d       	mov	r30, r0
     600:	61 e0       	ldi	r22, 0x01	; 1
     602:	c7 01       	movw	r24, r14
     604:	09 95       	icall
     606:	08 2f       	mov	r16, r24
     608:	10 e0       	ldi	r17, 0x00	; 0
     60a:	10 2f       	mov	r17, r16
     60c:	00 27       	eor	r16, r16
     60e:	d7 01       	movw	r26, r14
     610:	ed 91       	ld	r30, X+
     612:	fc 91       	ld	r31, X
     614:	06 80       	ldd	r0, Z+6	; 0x06
     616:	f7 81       	ldd	r31, Z+7	; 0x07
     618:	e0 2d       	mov	r30, r0
     61a:	60 e0       	ldi	r22, 0x00	; 0
     61c:	c7 01       	movw	r24, r14
     61e:	09 95       	icall
     620:	08 2b       	or	r16, r24
     622:	d7 01       	movw	r26, r14
     624:	ed 91       	ld	r30, X+
     626:	fc 91       	ld	r31, X
     628:	02 80       	ldd	r0, Z+2	; 0x02
     62a:	f3 81       	ldd	r31, Z+3	; 0x03
     62c:	e0 2d       	mov	r30, r0
     62e:	c7 01       	movw	r24, r14
     630:	09 95       	icall
     632:	c8 01       	movw	r24, r16
     634:	0f 90       	pop	r0
     636:	df 91       	pop	r29
     638:	cf 91       	pop	r28
     63a:	1f 91       	pop	r17
     63c:	0f 91       	pop	r16
     63e:	ff 90       	pop	r15
     640:	ef 90       	pop	r14
     642:	08 95       	ret

00000644 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
     644:	cf 92       	push	r12
     646:	df 92       	push	r13
     648:	ef 92       	push	r14
     64a:	ff 92       	push	r15
     64c:	0f 93       	push	r16
     64e:	1f 93       	push	r17
     650:	cf 93       	push	r28
     652:	df 93       	push	r29
     654:	00 d0       	rcall	.+0      	; 0x656 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
     656:	1f 92       	push	r1
     658:	cd b7       	in	r28, 0x3d	; 61
     65a:	de b7       	in	r29, 0x3e	; 62
     65c:	6c 01       	movw	r12, r24
     65e:	f6 2e       	mov	r15, r22
     660:	dc 01       	movw	r26, r24
     662:	ed 91       	ld	r30, X+
     664:	fc 91       	ld	r31, X
     666:	01 90       	ld	r0, Z+
     668:	f0 81       	ld	r31, Z
     66a:	e0 2d       	mov	r30, r0
     66c:	2a 83       	std	Y+2, r18	; 0x02
     66e:	3b 83       	std	Y+3, r19	; 0x03
     670:	49 83       	std	Y+1, r20	; 0x01
     672:	09 95       	icall
     674:	d6 01       	movw	r26, r12
     676:	ed 91       	ld	r30, X+
     678:	fc 91       	ld	r31, X
     67a:	04 80       	ldd	r0, Z+4	; 0x04
     67c:	f5 81       	ldd	r31, Z+5	; 0x05
     67e:	e0 2d       	mov	r30, r0
     680:	6f 2d       	mov	r22, r15
     682:	c6 01       	movw	r24, r12
     684:	09 95       	icall
     686:	d6 01       	movw	r26, r12
     688:	ed 91       	ld	r30, X+
     68a:	fc 91       	ld	r31, X
     68c:	04 80       	ldd	r0, Z+4	; 0x04
     68e:	f5 81       	ldd	r31, Z+5	; 0x05
     690:	e0 2d       	mov	r30, r0
     692:	49 81       	ldd	r20, Y+1	; 0x01
     694:	64 2f       	mov	r22, r20
     696:	c6 01       	movw	r24, r12
     698:	09 95       	icall
     69a:	d6 01       	movw	r26, r12
     69c:	ed 91       	ld	r30, X+
     69e:	fc 91       	ld	r31, X
     6a0:	01 90       	ld	r0, Z+
     6a2:	f0 81       	ld	r31, Z
     6a4:	e0 2d       	mov	r30, r0
     6a6:	c6 01       	movw	r24, r12
     6a8:	09 95       	icall
     6aa:	d6 01       	movw	r26, r12
     6ac:	ed 91       	ld	r30, X+
     6ae:	fc 91       	ld	r31, X
     6b0:	6f 2d       	mov	r22, r15
     6b2:	61 60       	ori	r22, 0x01	; 1
     6b4:	04 80       	ldd	r0, Z+4	; 0x04
     6b6:	f5 81       	ldd	r31, Z+5	; 0x05
     6b8:	e0 2d       	mov	r30, r0
     6ba:	c6 01       	movw	r24, r12
     6bc:	09 95       	icall
     6be:	2a 81       	ldd	r18, Y+2	; 0x02
     6c0:	e2 2e       	mov	r14, r18
     6c2:	3b 81       	ldd	r19, Y+3	; 0x03
     6c4:	f3 2e       	mov	r15, r19
     6c6:	0e 0d       	add	r16, r14
     6c8:	1f 1d       	adc	r17, r15
     6ca:	d6 01       	movw	r26, r12
     6cc:	ed 91       	ld	r30, X+
     6ce:	fc 91       	ld	r31, X
     6d0:	e0 16       	cp	r14, r16
     6d2:	f1 06       	cpc	r15, r17
     6d4:	51 f0       	breq	.+20     	; 0x6ea <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
     6d6:	06 80       	ldd	r0, Z+6	; 0x06
     6d8:	f7 81       	ldd	r31, Z+7	; 0x07
     6da:	e0 2d       	mov	r30, r0
     6dc:	61 e0       	ldi	r22, 0x01	; 1
     6de:	c6 01       	movw	r24, r12
     6e0:	09 95       	icall
     6e2:	f7 01       	movw	r30, r14
     6e4:	81 93       	st	Z+, r24
     6e6:	7f 01       	movw	r14, r30
     6e8:	f0 cf       	rjmp	.-32     	; 0x6ca <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
     6ea:	02 80       	ldd	r0, Z+2	; 0x02
     6ec:	f3 81       	ldd	r31, Z+3	; 0x03
     6ee:	e0 2d       	mov	r30, r0
     6f0:	c6 01       	movw	r24, r12
     6f2:	0f 90       	pop	r0
     6f4:	0f 90       	pop	r0
     6f6:	0f 90       	pop	r0
     6f8:	df 91       	pop	r29
     6fa:	cf 91       	pop	r28
     6fc:	1f 91       	pop	r17
     6fe:	0f 91       	pop	r16
     700:	ff 90       	pop	r15
     702:	ef 90       	pop	r14
     704:	df 90       	pop	r13
     706:	cf 90       	pop	r12
     708:	09 94       	ijmp

0000070a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
     70a:	88 23       	and	r24, r24
     70c:	21 f0       	breq	.+8      	; 0x716 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
     70e:	bf 98       	cbi	0x17, 7	; 23
     710:	82 30       	cpi	r24, 0x02	; 2
     712:	19 f0       	breq	.+6      	; 0x71a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
     714:	08 95       	ret
     716:	bf 9a       	sbi	0x17, 7	; 23
     718:	08 95       	ret
     71a:	c7 9a       	sbi	0x18, 7	; 24
     71c:	08 95       	ret

0000071e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
     71e:	00 00       	nop
     720:	00 00       	nop
     722:	08 95       	ret

00000724 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
     724:	1f 93       	push	r17
     726:	cf 93       	push	r28
     728:	df 93       	push	r29
     72a:	16 2f       	mov	r17, r22
     72c:	bd 98       	cbi	0x17, 5	; 23
     72e:	80 e0       	ldi	r24, 0x00	; 0
     730:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     734:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     738:	d8 e0       	ldi	r29, 0x08	; 8
     73a:	c0 e0       	ldi	r28, 0x00	; 0
     73c:	cc 0f       	add	r28, r28
     73e:	81 e0       	ldi	r24, 0x01	; 1
     740:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     744:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     748:	b5 99       	sbic	0x16, 5	; 22
     74a:	c1 60       	ori	r28, 0x01	; 1
     74c:	80 e0       	ldi	r24, 0x00	; 0
     74e:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     752:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     756:	d1 50       	subi	r29, 0x01	; 1
     758:	89 f7       	brne	.-30     	; 0x73c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
     75a:	11 23       	and	r17, r17
     75c:	11 f0       	breq	.+4      	; 0x762 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
     75e:	bd 9a       	sbi	0x17, 5	; 23
     760:	01 c0       	rjmp	.+2      	; 0x764 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
     762:	bd 98       	cbi	0x17, 5	; 23
     764:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     768:	81 e0       	ldi	r24, 0x01	; 1
     76a:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     76e:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     772:	80 e0       	ldi	r24, 0x00	; 0
     774:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     778:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     77c:	bd 98       	cbi	0x17, 5	; 23
     77e:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     782:	8c 2f       	mov	r24, r28
     784:	df 91       	pop	r29
     786:	cf 91       	pop	r28
     788:	1f 91       	pop	r17
     78a:	08 95       	ret

0000078c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
     78c:	cf 93       	push	r28
     78e:	df 93       	push	r29
     790:	d6 2f       	mov	r29, r22
     792:	c8 e0       	ldi	r28, 0x08	; 8
     794:	80 e0       	ldi	r24, 0x00	; 0
     796:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     79a:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     79e:	d7 ff       	sbrs	r29, 7
     7a0:	02 c0       	rjmp	.+4      	; 0x7a6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
     7a2:	bd 98       	cbi	0x17, 5	; 23
     7a4:	01 c0       	rjmp	.+2      	; 0x7a8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
     7a6:	bd 9a       	sbi	0x17, 5	; 23
     7a8:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7ac:	81 e0       	ldi	r24, 0x01	; 1
     7ae:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7b2:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7b6:	dd 0f       	add	r29, r29
     7b8:	c1 50       	subi	r28, 0x01	; 1
     7ba:	61 f7       	brne	.-40     	; 0x794 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
     7bc:	80 e0       	ldi	r24, 0x00	; 0
     7be:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7c2:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7c6:	bd 98       	cbi	0x17, 5	; 23
     7c8:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7cc:	81 e0       	ldi	r24, 0x01	; 1
     7ce:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7d2:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7d6:	c6 b3       	in	r28, 0x16	; 22
     7d8:	80 e0       	ldi	r24, 0x00	; 0
     7da:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7de:	0e 94 8f 03 	call	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
     7e2:	c5 fb       	bst	r28, 5
     7e4:	cc 27       	eor	r28, r28
     7e6:	c0 f9       	bld	r28, 0
     7e8:	81 e0       	ldi	r24, 0x01	; 1
     7ea:	8c 27       	eor	r24, r28
     7ec:	df 91       	pop	r29
     7ee:	cf 91       	pop	r28
     7f0:	08 95       	ret

000007f2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
     7f2:	81 e0       	ldi	r24, 0x01	; 1
     7f4:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     7f8:	bd 98       	cbi	0x17, 5	; 23
     7fa:	81 e0       	ldi	r24, 0x01	; 1
     7fc:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     800:	bd 9a       	sbi	0x17, 5	; 23
     802:	80 e0       	ldi	r24, 0x00	; 0
     804:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     808:	bd 98       	cbi	0x17, 5	; 23
     80a:	0c 94 8f 03 	jmp	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000080e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
     80e:	80 e0       	ldi	r24, 0x00	; 0
     810:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     814:	bd 9a       	sbi	0x17, 5	; 23
     816:	81 e0       	ldi	r24, 0x01	; 1
     818:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     81c:	bd 9a       	sbi	0x17, 5	; 23
     81e:	81 e0       	ldi	r24, 0x01	; 1
     820:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     824:	bd 98       	cbi	0x17, 5	; 23
     826:	0c 94 8f 03 	jmp	0x71e	; 0x71e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000082a <_GLOBAL__sub_I_i2c>:
     82a:	84 e9       	ldi	r24, 0x94	; 148
     82c:	90 e0       	ldi	r25, 0x00	; 0
     82e:	90 93 ea 00 	sts	0x00EA, r25
     832:	80 93 e9 00 	sts	0x00E9, r24
     836:	bd 98       	cbi	0x17, 5	; 23
     838:	81 e0       	ldi	r24, 0x01	; 1
     83a:	0e 94 85 03 	call	0x70a	; 0x70a <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
     83e:	c5 98       	cbi	0x18, 5	; 24
     840:	c7 98       	cbi	0x18, 7	; 24
     842:	08 95       	ret

00000844 <_ZN8CVL53L0XC1Ev>:
     844:	08 95       	ret

00000846 <_ZN8CVL53L0XD1Ev>:
     846:	08 95       	ret

00000848 <_ZN8CVL53L0X4readEv>:
     848:	0f 93       	push	r16
     84a:	1f 93       	push	r17
     84c:	cf 93       	push	r28
     84e:	df 93       	push	r29
     850:	ec 01       	movw	r28, r24
     852:	88 89       	ldd	r24, Y+16	; 0x10
     854:	99 89       	ldd	r25, Y+17	; 0x11
     856:	dc 01       	movw	r26, r24
     858:	ed 91       	ld	r30, X+
     85a:	fc 91       	ld	r31, X
     85c:	00 84       	ldd	r0, Z+8	; 0x08
     85e:	f1 85       	ldd	r31, Z+9	; 0x09
     860:	e0 2d       	mov	r30, r0
     862:	21 e0       	ldi	r18, 0x01	; 1
     864:	4b e0       	ldi	r20, 0x0B	; 11
     866:	62 e5       	ldi	r22, 0x52	; 82
     868:	09 95       	icall
     86a:	88 89       	ldd	r24, Y+16	; 0x10
     86c:	99 89       	ldd	r25, Y+17	; 0x11
     86e:	dc 01       	movw	r26, r24
     870:	ed 91       	ld	r30, X+
     872:	fc 91       	ld	r31, X
     874:	9e 01       	movw	r18, r28
     876:	2e 5f       	subi	r18, 0xFE	; 254
     878:	3f 4f       	sbci	r19, 0xFF	; 255
     87a:	02 88       	ldd	r0, Z+18	; 0x12
     87c:	f3 89       	ldd	r31, Z+19	; 0x13
     87e:	e0 2d       	mov	r30, r0
     880:	0e e0       	ldi	r16, 0x0E	; 14
     882:	10 e0       	ldi	r17, 0x00	; 0
     884:	44 e1       	ldi	r20, 0x14	; 20
     886:	62 e5       	ldi	r22, 0x52	; 82
     888:	09 95       	icall
     88a:	2c 85       	ldd	r18, Y+12	; 0x0c
     88c:	30 e0       	ldi	r19, 0x00	; 0
     88e:	32 2f       	mov	r19, r18
     890:	22 27       	eor	r18, r18
     892:	8d 85       	ldd	r24, Y+13	; 0x0d
     894:	28 2b       	or	r18, r24
     896:	c9 01       	movw	r24, r18
     898:	06 97       	sbiw	r24, 0x06	; 6
     89a:	8a 3f       	cpi	r24, 0xFA	; 250
     89c:	93 40       	sbci	r25, 0x03	; 3
     89e:	80 f4       	brcc	.+32     	; 0x8c0 <_ZN8CVL53L0X4readEv+0x78>
     8a0:	88 81       	ld	r24, Y
     8a2:	99 81       	ldd	r25, Y+1	; 0x01
     8a4:	43 e0       	ldi	r20, 0x03	; 3
     8a6:	88 0f       	add	r24, r24
     8a8:	99 1f       	adc	r25, r25
     8aa:	4a 95       	dec	r20
     8ac:	e1 f7       	brne	.-8      	; 0x8a6 <_ZN8CVL53L0X4readEv+0x5e>
     8ae:	82 0f       	add	r24, r18
     8b0:	93 1f       	adc	r25, r19
     8b2:	69 e0       	ldi	r22, 0x09	; 9
     8b4:	70 e0       	ldi	r23, 0x00	; 0
     8b6:	0e 94 ec 09 	call	0x13d8	; 0x13d8 <__divmodhi4>
     8ba:	79 83       	std	Y+1, r23	; 0x01
     8bc:	68 83       	st	Y, r22
     8be:	04 c0       	rjmp	.+8      	; 0x8c8 <_ZN8CVL53L0X4readEv+0x80>
     8c0:	80 e0       	ldi	r24, 0x00	; 0
     8c2:	94 e0       	ldi	r25, 0x04	; 4
     8c4:	99 83       	std	Y+1, r25	; 0x01
     8c6:	88 83       	st	Y, r24
     8c8:	88 81       	ld	r24, Y
     8ca:	99 81       	ldd	r25, Y+1	; 0x01
     8cc:	df 91       	pop	r29
     8ce:	cf 91       	pop	r28
     8d0:	1f 91       	pop	r17
     8d2:	0f 91       	pop	r16
     8d4:	08 95       	ret

000008d6 <_ZN8CVL53L0X11getSPADinfoEPhPb>:
     8d6:	af 92       	push	r10
     8d8:	bf 92       	push	r11
     8da:	cf 92       	push	r12
     8dc:	df 92       	push	r13
     8de:	ef 92       	push	r14
     8e0:	ff 92       	push	r15
     8e2:	0f 93       	push	r16
     8e4:	1f 93       	push	r17
     8e6:	cf 93       	push	r28
     8e8:	df 93       	push	r29
     8ea:	ec 01       	movw	r28, r24
     8ec:	8b 01       	movw	r16, r22
     8ee:	5a 01       	movw	r10, r20
     8f0:	db 01       	movw	r26, r22
     8f2:	1c 92       	st	X, r1
     8f4:	88 89       	ldd	r24, Y+16	; 0x10
     8f6:	99 89       	ldd	r25, Y+17	; 0x11
     8f8:	dc 01       	movw	r26, r24
     8fa:	ed 91       	ld	r30, X+
     8fc:	fc 91       	ld	r31, X
     8fe:	00 84       	ldd	r0, Z+8	; 0x08
     900:	f1 85       	ldd	r31, Z+9	; 0x09
     902:	e0 2d       	mov	r30, r0
     904:	21 e0       	ldi	r18, 0x01	; 1
     906:	40 e8       	ldi	r20, 0x80	; 128
     908:	62 e5       	ldi	r22, 0x52	; 82
     90a:	09 95       	icall
     90c:	88 89       	ldd	r24, Y+16	; 0x10
     90e:	99 89       	ldd	r25, Y+17	; 0x11
     910:	dc 01       	movw	r26, r24
     912:	ed 91       	ld	r30, X+
     914:	fc 91       	ld	r31, X
     916:	00 84       	ldd	r0, Z+8	; 0x08
     918:	f1 85       	ldd	r31, Z+9	; 0x09
     91a:	e0 2d       	mov	r30, r0
     91c:	21 e0       	ldi	r18, 0x01	; 1
     91e:	4f ef       	ldi	r20, 0xFF	; 255
     920:	62 e5       	ldi	r22, 0x52	; 82
     922:	09 95       	icall
     924:	88 89       	ldd	r24, Y+16	; 0x10
     926:	99 89       	ldd	r25, Y+17	; 0x11
     928:	dc 01       	movw	r26, r24
     92a:	ed 91       	ld	r30, X+
     92c:	fc 91       	ld	r31, X
     92e:	00 84       	ldd	r0, Z+8	; 0x08
     930:	f1 85       	ldd	r31, Z+9	; 0x09
     932:	e0 2d       	mov	r30, r0
     934:	20 e0       	ldi	r18, 0x00	; 0
     936:	40 e0       	ldi	r20, 0x00	; 0
     938:	62 e5       	ldi	r22, 0x52	; 82
     93a:	09 95       	icall
     93c:	88 89       	ldd	r24, Y+16	; 0x10
     93e:	99 89       	ldd	r25, Y+17	; 0x11
     940:	dc 01       	movw	r26, r24
     942:	ed 91       	ld	r30, X+
     944:	fc 91       	ld	r31, X
     946:	00 84       	ldd	r0, Z+8	; 0x08
     948:	f1 85       	ldd	r31, Z+9	; 0x09
     94a:	e0 2d       	mov	r30, r0
     94c:	26 e0       	ldi	r18, 0x06	; 6
     94e:	4f ef       	ldi	r20, 0xFF	; 255
     950:	62 e5       	ldi	r22, 0x52	; 82
     952:	09 95       	icall
     954:	88 89       	ldd	r24, Y+16	; 0x10
     956:	99 89       	ldd	r25, Y+17	; 0x11
     958:	fc 01       	movw	r30, r24
     95a:	a0 81       	ld	r26, Z
     95c:	b1 81       	ldd	r27, Z+1	; 0x01
     95e:	18 96       	adiw	r26, 0x08	; 8
     960:	ed 90       	ld	r14, X+
     962:	fc 90       	ld	r15, X
     964:	19 97       	sbiw	r26, 0x09	; 9
     966:	1e 96       	adiw	r26, 0x0e	; 14
     968:	ed 91       	ld	r30, X+
     96a:	fc 91       	ld	r31, X
     96c:	1f 97       	sbiw	r26, 0x0f	; 15
     96e:	43 e8       	ldi	r20, 0x83	; 131
     970:	62 e5       	ldi	r22, 0x52	; 82
     972:	09 95       	icall
     974:	28 2f       	mov	r18, r24
     976:	24 60       	ori	r18, 0x04	; 4
     978:	43 e8       	ldi	r20, 0x83	; 131
     97a:	62 e5       	ldi	r22, 0x52	; 82
     97c:	88 89       	ldd	r24, Y+16	; 0x10
     97e:	99 89       	ldd	r25, Y+17	; 0x11
     980:	f7 01       	movw	r30, r14
     982:	09 95       	icall
     984:	88 89       	ldd	r24, Y+16	; 0x10
     986:	99 89       	ldd	r25, Y+17	; 0x11
     988:	dc 01       	movw	r26, r24
     98a:	ed 91       	ld	r30, X+
     98c:	fc 91       	ld	r31, X
     98e:	00 84       	ldd	r0, Z+8	; 0x08
     990:	f1 85       	ldd	r31, Z+9	; 0x09
     992:	e0 2d       	mov	r30, r0
     994:	27 e0       	ldi	r18, 0x07	; 7
     996:	4f ef       	ldi	r20, 0xFF	; 255
     998:	62 e5       	ldi	r22, 0x52	; 82
     99a:	09 95       	icall
     99c:	88 89       	ldd	r24, Y+16	; 0x10
     99e:	99 89       	ldd	r25, Y+17	; 0x11
     9a0:	dc 01       	movw	r26, r24
     9a2:	ed 91       	ld	r30, X+
     9a4:	fc 91       	ld	r31, X
     9a6:	00 84       	ldd	r0, Z+8	; 0x08
     9a8:	f1 85       	ldd	r31, Z+9	; 0x09
     9aa:	e0 2d       	mov	r30, r0
     9ac:	21 e0       	ldi	r18, 0x01	; 1
     9ae:	41 e8       	ldi	r20, 0x81	; 129
     9b0:	62 e5       	ldi	r22, 0x52	; 82
     9b2:	09 95       	icall
     9b4:	88 89       	ldd	r24, Y+16	; 0x10
     9b6:	99 89       	ldd	r25, Y+17	; 0x11
     9b8:	dc 01       	movw	r26, r24
     9ba:	ed 91       	ld	r30, X+
     9bc:	fc 91       	ld	r31, X
     9be:	00 84       	ldd	r0, Z+8	; 0x08
     9c0:	f1 85       	ldd	r31, Z+9	; 0x09
     9c2:	e0 2d       	mov	r30, r0
     9c4:	21 e0       	ldi	r18, 0x01	; 1
     9c6:	40 e8       	ldi	r20, 0x80	; 128
     9c8:	62 e5       	ldi	r22, 0x52	; 82
     9ca:	09 95       	icall
     9cc:	88 89       	ldd	r24, Y+16	; 0x10
     9ce:	99 89       	ldd	r25, Y+17	; 0x11
     9d0:	dc 01       	movw	r26, r24
     9d2:	ed 91       	ld	r30, X+
     9d4:	fc 91       	ld	r31, X
     9d6:	00 84       	ldd	r0, Z+8	; 0x08
     9d8:	f1 85       	ldd	r31, Z+9	; 0x09
     9da:	e0 2d       	mov	r30, r0
     9dc:	2b e6       	ldi	r18, 0x6B	; 107
     9de:	44 e9       	ldi	r20, 0x94	; 148
     9e0:	62 e5       	ldi	r22, 0x52	; 82
     9e2:	09 95       	icall
     9e4:	88 89       	ldd	r24, Y+16	; 0x10
     9e6:	99 89       	ldd	r25, Y+17	; 0x11
     9e8:	dc 01       	movw	r26, r24
     9ea:	ed 91       	ld	r30, X+
     9ec:	fc 91       	ld	r31, X
     9ee:	00 84       	ldd	r0, Z+8	; 0x08
     9f0:	f1 85       	ldd	r31, Z+9	; 0x09
     9f2:	e0 2d       	mov	r30, r0
     9f4:	20 e0       	ldi	r18, 0x00	; 0
     9f6:	43 e8       	ldi	r20, 0x83	; 131
     9f8:	62 e5       	ldi	r22, 0x52	; 82
     9fa:	09 95       	icall
     9fc:	81 e4       	ldi	r24, 0x41	; 65
     9fe:	c8 2e       	mov	r12, r24
     a00:	82 e4       	ldi	r24, 0x42	; 66
     a02:	d8 2e       	mov	r13, r24
     a04:	8f e0       	ldi	r24, 0x0F	; 15
     a06:	e8 2e       	mov	r14, r24
     a08:	f1 2c       	mov	r15, r1
     a0a:	88 89       	ldd	r24, Y+16	; 0x10
     a0c:	99 89       	ldd	r25, Y+17	; 0x11
     a0e:	dc 01       	movw	r26, r24
     a10:	ed 91       	ld	r30, X+
     a12:	fc 91       	ld	r31, X
     a14:	06 84       	ldd	r0, Z+14	; 0x0e
     a16:	f7 85       	ldd	r31, Z+15	; 0x0f
     a18:	e0 2d       	mov	r30, r0
     a1a:	43 e8       	ldi	r20, 0x83	; 131
     a1c:	62 e5       	ldi	r22, 0x52	; 82
     a1e:	09 95       	icall
     a20:	81 11       	cpse	r24, r1
     a22:	08 c0       	rjmp	.+16     	; 0xa34 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x15e>
     a24:	b1 e0       	ldi	r27, 0x01	; 1
     a26:	cb 1a       	sub	r12, r27
     a28:	d1 08       	sbc	r13, r1
     a2a:	e1 08       	sbc	r14, r1
     a2c:	f1 08       	sbc	r15, r1
     a2e:	69 f7       	brne	.-38     	; 0xa0a <_ZN8CVL53L0X11getSPADinfoEPhPb+0x134>
     a30:	80 e0       	ldi	r24, 0x00	; 0
     a32:	81 c0       	rjmp	.+258    	; 0xb36 <_ZN8CVL53L0X11getSPADinfoEPhPb+0x260>
     a34:	88 89       	ldd	r24, Y+16	; 0x10
     a36:	99 89       	ldd	r25, Y+17	; 0x11
     a38:	dc 01       	movw	r26, r24
     a3a:	ed 91       	ld	r30, X+
     a3c:	fc 91       	ld	r31, X
     a3e:	00 84       	ldd	r0, Z+8	; 0x08
     a40:	f1 85       	ldd	r31, Z+9	; 0x09
     a42:	e0 2d       	mov	r30, r0
     a44:	21 e0       	ldi	r18, 0x01	; 1
     a46:	43 e8       	ldi	r20, 0x83	; 131
     a48:	62 e5       	ldi	r22, 0x52	; 82
     a4a:	09 95       	icall
     a4c:	88 89       	ldd	r24, Y+16	; 0x10
     a4e:	99 89       	ldd	r25, Y+17	; 0x11
     a50:	dc 01       	movw	r26, r24
     a52:	ed 91       	ld	r30, X+
     a54:	fc 91       	ld	r31, X
     a56:	06 84       	ldd	r0, Z+14	; 0x0e
     a58:	f7 85       	ldd	r31, Z+15	; 0x0f
     a5a:	e0 2d       	mov	r30, r0
     a5c:	42 e9       	ldi	r20, 0x92	; 146
     a5e:	62 e5       	ldi	r22, 0x52	; 82
     a60:	09 95       	icall
     a62:	98 2f       	mov	r25, r24
     a64:	9f 77       	andi	r25, 0x7F	; 127
     a66:	f8 01       	movw	r30, r16
     a68:	90 83       	st	Z, r25
     a6a:	98 2f       	mov	r25, r24
     a6c:	99 1f       	adc	r25, r25
     a6e:	99 27       	eor	r25, r25
     a70:	99 1f       	adc	r25, r25
     a72:	d5 01       	movw	r26, r10
     a74:	9c 93       	st	X, r25
     a76:	88 89       	ldd	r24, Y+16	; 0x10
     a78:	99 89       	ldd	r25, Y+17	; 0x11
     a7a:	dc 01       	movw	r26, r24
     a7c:	ed 91       	ld	r30, X+
     a7e:	fc 91       	ld	r31, X
     a80:	00 84       	ldd	r0, Z+8	; 0x08
     a82:	f1 85       	ldd	r31, Z+9	; 0x09
     a84:	e0 2d       	mov	r30, r0
     a86:	20 e0       	ldi	r18, 0x00	; 0
     a88:	41 e8       	ldi	r20, 0x81	; 129
     a8a:	62 e5       	ldi	r22, 0x52	; 82
     a8c:	09 95       	icall
     a8e:	88 89       	ldd	r24, Y+16	; 0x10
     a90:	99 89       	ldd	r25, Y+17	; 0x11
     a92:	dc 01       	movw	r26, r24
     a94:	ed 91       	ld	r30, X+
     a96:	fc 91       	ld	r31, X
     a98:	00 84       	ldd	r0, Z+8	; 0x08
     a9a:	f1 85       	ldd	r31, Z+9	; 0x09
     a9c:	e0 2d       	mov	r30, r0
     a9e:	26 e0       	ldi	r18, 0x06	; 6
     aa0:	4f ef       	ldi	r20, 0xFF	; 255
     aa2:	62 e5       	ldi	r22, 0x52	; 82
     aa4:	09 95       	icall
     aa6:	88 89       	ldd	r24, Y+16	; 0x10
     aa8:	99 89       	ldd	r25, Y+17	; 0x11
     aaa:	fc 01       	movw	r30, r24
     aac:	a0 81       	ld	r26, Z
     aae:	b1 81       	ldd	r27, Z+1	; 0x01
     ab0:	18 96       	adiw	r26, 0x08	; 8
     ab2:	0d 91       	ld	r16, X+
     ab4:	1c 91       	ld	r17, X
     ab6:	19 97       	sbiw	r26, 0x09	; 9
     ab8:	1e 96       	adiw	r26, 0x0e	; 14
     aba:	ed 91       	ld	r30, X+
     abc:	fc 91       	ld	r31, X
     abe:	1f 97       	sbiw	r26, 0x0f	; 15
     ac0:	43 e8       	ldi	r20, 0x83	; 131
     ac2:	62 e5       	ldi	r22, 0x52	; 82
     ac4:	09 95       	icall
     ac6:	28 2f       	mov	r18, r24
     ac8:	43 e8       	ldi	r20, 0x83	; 131
     aca:	62 e5       	ldi	r22, 0x52	; 82
     acc:	88 89       	ldd	r24, Y+16	; 0x10
     ace:	99 89       	ldd	r25, Y+17	; 0x11
     ad0:	f8 01       	movw	r30, r16
     ad2:	09 95       	icall
     ad4:	88 89       	ldd	r24, Y+16	; 0x10
     ad6:	99 89       	ldd	r25, Y+17	; 0x11
     ad8:	dc 01       	movw	r26, r24
     ada:	ed 91       	ld	r30, X+
     adc:	fc 91       	ld	r31, X
     ade:	00 84       	ldd	r0, Z+8	; 0x08
     ae0:	f1 85       	ldd	r31, Z+9	; 0x09
     ae2:	e0 2d       	mov	r30, r0
     ae4:	21 e0       	ldi	r18, 0x01	; 1
     ae6:	4f ef       	ldi	r20, 0xFF	; 255
     ae8:	62 e5       	ldi	r22, 0x52	; 82
     aea:	09 95       	icall
     aec:	88 89       	ldd	r24, Y+16	; 0x10
     aee:	99 89       	ldd	r25, Y+17	; 0x11
     af0:	dc 01       	movw	r26, r24
     af2:	ed 91       	ld	r30, X+
     af4:	fc 91       	ld	r31, X
     af6:	00 84       	ldd	r0, Z+8	; 0x08
     af8:	f1 85       	ldd	r31, Z+9	; 0x09
     afa:	e0 2d       	mov	r30, r0
     afc:	21 e0       	ldi	r18, 0x01	; 1
     afe:	40 e0       	ldi	r20, 0x00	; 0
     b00:	62 e5       	ldi	r22, 0x52	; 82
     b02:	09 95       	icall
     b04:	88 89       	ldd	r24, Y+16	; 0x10
     b06:	99 89       	ldd	r25, Y+17	; 0x11
     b08:	dc 01       	movw	r26, r24
     b0a:	ed 91       	ld	r30, X+
     b0c:	fc 91       	ld	r31, X
     b0e:	00 84       	ldd	r0, Z+8	; 0x08
     b10:	f1 85       	ldd	r31, Z+9	; 0x09
     b12:	e0 2d       	mov	r30, r0
     b14:	20 e0       	ldi	r18, 0x00	; 0
     b16:	4f ef       	ldi	r20, 0xFF	; 255
     b18:	62 e5       	ldi	r22, 0x52	; 82
     b1a:	09 95       	icall
     b1c:	88 89       	ldd	r24, Y+16	; 0x10
     b1e:	99 89       	ldd	r25, Y+17	; 0x11
     b20:	dc 01       	movw	r26, r24
     b22:	ed 91       	ld	r30, X+
     b24:	fc 91       	ld	r31, X
     b26:	00 84       	ldd	r0, Z+8	; 0x08
     b28:	f1 85       	ldd	r31, Z+9	; 0x09
     b2a:	e0 2d       	mov	r30, r0
     b2c:	20 e0       	ldi	r18, 0x00	; 0
     b2e:	40 e8       	ldi	r20, 0x80	; 128
     b30:	62 e5       	ldi	r22, 0x52	; 82
     b32:	09 95       	icall
     b34:	81 e0       	ldi	r24, 0x01	; 1
     b36:	df 91       	pop	r29
     b38:	cf 91       	pop	r28
     b3a:	1f 91       	pop	r17
     b3c:	0f 91       	pop	r16
     b3e:	ff 90       	pop	r15
     b40:	ef 90       	pop	r14
     b42:	df 90       	pop	r13
     b44:	cf 90       	pop	r12
     b46:	bf 90       	pop	r11
     b48:	af 90       	pop	r10
     b4a:	08 95       	ret

00000b4c <_ZN8CVL53L0X4initEP14CI2C_Interface>:
     b4c:	ef 92       	push	r14
     b4e:	ff 92       	push	r15
     b50:	0f 93       	push	r16
     b52:	1f 93       	push	r17
     b54:	cf 93       	push	r28
     b56:	df 93       	push	r29
     b58:	cd b7       	in	r28, 0x3d	; 61
     b5a:	de b7       	in	r29, 0x3e	; 62
     b5c:	28 97       	sbiw	r28, 0x08	; 8
     b5e:	0f b6       	in	r0, 0x3f	; 63
     b60:	f8 94       	cli
     b62:	de bf       	out	0x3e, r29	; 62
     b64:	0f be       	out	0x3f, r0	; 63
     b66:	cd bf       	out	0x3d, r28	; 61
     b68:	7c 01       	movw	r14, r24
     b6a:	cb 01       	movw	r24, r22
     b6c:	d7 01       	movw	r26, r14
     b6e:	51 96       	adiw	r26, 0x11	; 17
     b70:	7c 93       	st	X, r23
     b72:	6e 93       	st	-X, r22
     b74:	50 97       	sbiw	r26, 0x10	; 16
     b76:	20 e0       	ldi	r18, 0x00	; 0
     b78:	30 e2       	ldi	r19, 0x20	; 32
     b7a:	2d 93       	st	X+, r18
     b7c:	3c 93       	st	X, r19
     b7e:	fb 01       	movw	r30, r22
     b80:	a0 81       	ld	r26, Z
     b82:	b1 81       	ldd	r27, Z+1	; 0x01
     b84:	18 96       	adiw	r26, 0x08	; 8
     b86:	0d 91       	ld	r16, X+
     b88:	1c 91       	ld	r17, X
     b8a:	19 97       	sbiw	r26, 0x09	; 9
     b8c:	1e 96       	adiw	r26, 0x0e	; 14
     b8e:	ed 91       	ld	r30, X+
     b90:	fc 91       	ld	r31, X
     b92:	1f 97       	sbiw	r26, 0x0f	; 15
     b94:	49 e8       	ldi	r20, 0x89	; 137
     b96:	62 e5       	ldi	r22, 0x52	; 82
     b98:	09 95       	icall
     b9a:	28 2f       	mov	r18, r24
     b9c:	21 60       	ori	r18, 0x01	; 1
     b9e:	49 e8       	ldi	r20, 0x89	; 137
     ba0:	62 e5       	ldi	r22, 0x52	; 82
     ba2:	d7 01       	movw	r26, r14
     ba4:	50 96       	adiw	r26, 0x10	; 16
     ba6:	8d 91       	ld	r24, X+
     ba8:	9c 91       	ld	r25, X
     baa:	51 97       	sbiw	r26, 0x11	; 17
     bac:	f8 01       	movw	r30, r16
     bae:	09 95       	icall
     bb0:	d7 01       	movw	r26, r14
     bb2:	50 96       	adiw	r26, 0x10	; 16
     bb4:	8d 91       	ld	r24, X+
     bb6:	9c 91       	ld	r25, X
     bb8:	51 97       	sbiw	r26, 0x11	; 17
     bba:	dc 01       	movw	r26, r24
     bbc:	ed 91       	ld	r30, X+
     bbe:	fc 91       	ld	r31, X
     bc0:	06 84       	ldd	r0, Z+14	; 0x0e
     bc2:	f7 85       	ldd	r31, Z+15	; 0x0f
     bc4:	e0 2d       	mov	r30, r0
     bc6:	40 ec       	ldi	r20, 0xC0	; 192
     bc8:	62 e5       	ldi	r22, 0x52	; 82
     bca:	09 95       	icall
     bcc:	8e 3e       	cpi	r24, 0xEE	; 238
     bce:	09 f0       	breq	.+2      	; 0xbd2 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x86>
     bd0:	61 c1       	rjmp	.+706    	; 0xe94 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x348>
     bd2:	f7 01       	movw	r30, r14
     bd4:	80 89       	ldd	r24, Z+16	; 0x10
     bd6:	91 89       	ldd	r25, Z+17	; 0x11
     bd8:	dc 01       	movw	r26, r24
     bda:	ed 91       	ld	r30, X+
     bdc:	fc 91       	ld	r31, X
     bde:	00 84       	ldd	r0, Z+8	; 0x08
     be0:	f1 85       	ldd	r31, Z+9	; 0x09
     be2:	e0 2d       	mov	r30, r0
     be4:	21 e0       	ldi	r18, 0x01	; 1
     be6:	4f eb       	ldi	r20, 0xBF	; 191
     be8:	62 e5       	ldi	r22, 0x52	; 82
     bea:	09 95       	icall
     bec:	81 ea       	ldi	r24, 0xA1	; 161
     bee:	96 e8       	ldi	r25, 0x86	; 134
     bf0:	a1 e0       	ldi	r26, 0x01	; 1
     bf2:	b0 e0       	ldi	r27, 0x00	; 0
     bf4:	01 97       	sbiw	r24, 0x01	; 1
     bf6:	a1 09       	sbc	r26, r1
     bf8:	b1 09       	sbc	r27, r1
     bfa:	11 f0       	breq	.+4      	; 0xc00 <_ZN8CVL53L0X4initEP14CI2C_Interface+0xb4>
     bfc:	00 00       	nop
     bfe:	fa cf       	rjmp	.-12     	; 0xbf4 <_ZN8CVL53L0X4initEP14CI2C_Interface+0xa8>
     c00:	f7 01       	movw	r30, r14
     c02:	80 89       	ldd	r24, Z+16	; 0x10
     c04:	91 89       	ldd	r25, Z+17	; 0x11
     c06:	dc 01       	movw	r26, r24
     c08:	ed 91       	ld	r30, X+
     c0a:	fc 91       	ld	r31, X
     c0c:	00 84       	ldd	r0, Z+8	; 0x08
     c0e:	f1 85       	ldd	r31, Z+9	; 0x09
     c10:	e0 2d       	mov	r30, r0
     c12:	20 e0       	ldi	r18, 0x00	; 0
     c14:	48 e8       	ldi	r20, 0x88	; 136
     c16:	62 e5       	ldi	r22, 0x52	; 82
     c18:	09 95       	icall
     c1a:	f7 01       	movw	r30, r14
     c1c:	80 89       	ldd	r24, Z+16	; 0x10
     c1e:	91 89       	ldd	r25, Z+17	; 0x11
     c20:	dc 01       	movw	r26, r24
     c22:	ed 91       	ld	r30, X+
     c24:	fc 91       	ld	r31, X
     c26:	00 84       	ldd	r0, Z+8	; 0x08
     c28:	f1 85       	ldd	r31, Z+9	; 0x09
     c2a:	e0 2d       	mov	r30, r0
     c2c:	21 e0       	ldi	r18, 0x01	; 1
     c2e:	40 e8       	ldi	r20, 0x80	; 128
     c30:	62 e5       	ldi	r22, 0x52	; 82
     c32:	09 95       	icall
     c34:	f7 01       	movw	r30, r14
     c36:	80 89       	ldd	r24, Z+16	; 0x10
     c38:	91 89       	ldd	r25, Z+17	; 0x11
     c3a:	dc 01       	movw	r26, r24
     c3c:	ed 91       	ld	r30, X+
     c3e:	fc 91       	ld	r31, X
     c40:	00 84       	ldd	r0, Z+8	; 0x08
     c42:	f1 85       	ldd	r31, Z+9	; 0x09
     c44:	e0 2d       	mov	r30, r0
     c46:	21 e0       	ldi	r18, 0x01	; 1
     c48:	4f ef       	ldi	r20, 0xFF	; 255
     c4a:	62 e5       	ldi	r22, 0x52	; 82
     c4c:	09 95       	icall
     c4e:	f7 01       	movw	r30, r14
     c50:	80 89       	ldd	r24, Z+16	; 0x10
     c52:	91 89       	ldd	r25, Z+17	; 0x11
     c54:	dc 01       	movw	r26, r24
     c56:	ed 91       	ld	r30, X+
     c58:	fc 91       	ld	r31, X
     c5a:	00 84       	ldd	r0, Z+8	; 0x08
     c5c:	f1 85       	ldd	r31, Z+9	; 0x09
     c5e:	e0 2d       	mov	r30, r0
     c60:	20 e0       	ldi	r18, 0x00	; 0
     c62:	40 e0       	ldi	r20, 0x00	; 0
     c64:	62 e5       	ldi	r22, 0x52	; 82
     c66:	09 95       	icall
     c68:	f7 01       	movw	r30, r14
     c6a:	80 89       	ldd	r24, Z+16	; 0x10
     c6c:	91 89       	ldd	r25, Z+17	; 0x11
     c6e:	dc 01       	movw	r26, r24
     c70:	ed 91       	ld	r30, X+
     c72:	fc 91       	ld	r31, X
     c74:	06 84       	ldd	r0, Z+14	; 0x0e
     c76:	f7 85       	ldd	r31, Z+15	; 0x0f
     c78:	e0 2d       	mov	r30, r0
     c7a:	41 e9       	ldi	r20, 0x91	; 145
     c7c:	62 e5       	ldi	r22, 0x52	; 82
     c7e:	09 95       	icall
     c80:	f7 01       	movw	r30, r14
     c82:	80 89       	ldd	r24, Z+16	; 0x10
     c84:	91 89       	ldd	r25, Z+17	; 0x11
     c86:	dc 01       	movw	r26, r24
     c88:	ed 91       	ld	r30, X+
     c8a:	fc 91       	ld	r31, X
     c8c:	00 84       	ldd	r0, Z+8	; 0x08
     c8e:	f1 85       	ldd	r31, Z+9	; 0x09
     c90:	e0 2d       	mov	r30, r0
     c92:	21 e0       	ldi	r18, 0x01	; 1
     c94:	40 e0       	ldi	r20, 0x00	; 0
     c96:	62 e5       	ldi	r22, 0x52	; 82
     c98:	09 95       	icall
     c9a:	f7 01       	movw	r30, r14
     c9c:	80 89       	ldd	r24, Z+16	; 0x10
     c9e:	91 89       	ldd	r25, Z+17	; 0x11
     ca0:	dc 01       	movw	r26, r24
     ca2:	ed 91       	ld	r30, X+
     ca4:	fc 91       	ld	r31, X
     ca6:	00 84       	ldd	r0, Z+8	; 0x08
     ca8:	f1 85       	ldd	r31, Z+9	; 0x09
     caa:	e0 2d       	mov	r30, r0
     cac:	20 e0       	ldi	r18, 0x00	; 0
     cae:	4f ef       	ldi	r20, 0xFF	; 255
     cb0:	62 e5       	ldi	r22, 0x52	; 82
     cb2:	09 95       	icall
     cb4:	f7 01       	movw	r30, r14
     cb6:	80 89       	ldd	r24, Z+16	; 0x10
     cb8:	91 89       	ldd	r25, Z+17	; 0x11
     cba:	dc 01       	movw	r26, r24
     cbc:	ed 91       	ld	r30, X+
     cbe:	fc 91       	ld	r31, X
     cc0:	00 84       	ldd	r0, Z+8	; 0x08
     cc2:	f1 85       	ldd	r31, Z+9	; 0x09
     cc4:	e0 2d       	mov	r30, r0
     cc6:	20 e0       	ldi	r18, 0x00	; 0
     cc8:	40 e8       	ldi	r20, 0x80	; 128
     cca:	62 e5       	ldi	r22, 0x52	; 82
     ccc:	09 95       	icall
     cce:	18 86       	std	Y+8, r1	; 0x08
     cd0:	ae 01       	movw	r20, r28
     cd2:	49 5f       	subi	r20, 0xF9	; 249
     cd4:	5f 4f       	sbci	r21, 0xFF	; 255
     cd6:	be 01       	movw	r22, r28
     cd8:	68 5f       	subi	r22, 0xF8	; 248
     cda:	7f 4f       	sbci	r23, 0xFF	; 255
     cdc:	c7 01       	movw	r24, r14
     cde:	0e 94 6b 04 	call	0x8d6	; 0x8d6 <_ZN8CVL53L0X11getSPADinfoEPhPb>
     ce2:	f7 01       	movw	r30, r14
     ce4:	80 89       	ldd	r24, Z+16	; 0x10
     ce6:	91 89       	ldd	r25, Z+17	; 0x11
     ce8:	dc 01       	movw	r26, r24
     cea:	ed 91       	ld	r30, X+
     cec:	fc 91       	ld	r31, X
     cee:	02 88       	ldd	r0, Z+18	; 0x12
     cf0:	f3 89       	ldd	r31, Z+19	; 0x13
     cf2:	e0 2d       	mov	r30, r0
     cf4:	06 e0       	ldi	r16, 0x06	; 6
     cf6:	10 e0       	ldi	r17, 0x00	; 0
     cf8:	9e 01       	movw	r18, r28
     cfa:	2f 5f       	subi	r18, 0xFF	; 255
     cfc:	3f 4f       	sbci	r19, 0xFF	; 255
     cfe:	40 eb       	ldi	r20, 0xB0	; 176
     d00:	62 e5       	ldi	r22, 0x52	; 82
     d02:	09 95       	icall
     d04:	f7 01       	movw	r30, r14
     d06:	80 89       	ldd	r24, Z+16	; 0x10
     d08:	91 89       	ldd	r25, Z+17	; 0x11
     d0a:	dc 01       	movw	r26, r24
     d0c:	ed 91       	ld	r30, X+
     d0e:	fc 91       	ld	r31, X
     d10:	00 84       	ldd	r0, Z+8	; 0x08
     d12:	f1 85       	ldd	r31, Z+9	; 0x09
     d14:	e0 2d       	mov	r30, r0
     d16:	21 e0       	ldi	r18, 0x01	; 1
     d18:	4f ef       	ldi	r20, 0xFF	; 255
     d1a:	62 e5       	ldi	r22, 0x52	; 82
     d1c:	09 95       	icall
     d1e:	f7 01       	movw	r30, r14
     d20:	80 89       	ldd	r24, Z+16	; 0x10
     d22:	91 89       	ldd	r25, Z+17	; 0x11
     d24:	dc 01       	movw	r26, r24
     d26:	ed 91       	ld	r30, X+
     d28:	fc 91       	ld	r31, X
     d2a:	00 84       	ldd	r0, Z+8	; 0x08
     d2c:	f1 85       	ldd	r31, Z+9	; 0x09
     d2e:	e0 2d       	mov	r30, r0
     d30:	20 e0       	ldi	r18, 0x00	; 0
     d32:	4f e4       	ldi	r20, 0x4F	; 79
     d34:	62 e5       	ldi	r22, 0x52	; 82
     d36:	09 95       	icall
     d38:	f7 01       	movw	r30, r14
     d3a:	80 89       	ldd	r24, Z+16	; 0x10
     d3c:	91 89       	ldd	r25, Z+17	; 0x11
     d3e:	dc 01       	movw	r26, r24
     d40:	ed 91       	ld	r30, X+
     d42:	fc 91       	ld	r31, X
     d44:	00 84       	ldd	r0, Z+8	; 0x08
     d46:	f1 85       	ldd	r31, Z+9	; 0x09
     d48:	e0 2d       	mov	r30, r0
     d4a:	2c e2       	ldi	r18, 0x2C	; 44
     d4c:	4e e4       	ldi	r20, 0x4E	; 78
     d4e:	62 e5       	ldi	r22, 0x52	; 82
     d50:	09 95       	icall
     d52:	f7 01       	movw	r30, r14
     d54:	80 89       	ldd	r24, Z+16	; 0x10
     d56:	91 89       	ldd	r25, Z+17	; 0x11
     d58:	dc 01       	movw	r26, r24
     d5a:	ed 91       	ld	r30, X+
     d5c:	fc 91       	ld	r31, X
     d5e:	00 84       	ldd	r0, Z+8	; 0x08
     d60:	f1 85       	ldd	r31, Z+9	; 0x09
     d62:	e0 2d       	mov	r30, r0
     d64:	20 e0       	ldi	r18, 0x00	; 0
     d66:	4f ef       	ldi	r20, 0xFF	; 255
     d68:	62 e5       	ldi	r22, 0x52	; 82
     d6a:	09 95       	icall
     d6c:	f7 01       	movw	r30, r14
     d6e:	80 89       	ldd	r24, Z+16	; 0x10
     d70:	91 89       	ldd	r25, Z+17	; 0x11
     d72:	dc 01       	movw	r26, r24
     d74:	ed 91       	ld	r30, X+
     d76:	fc 91       	ld	r31, X
     d78:	00 84       	ldd	r0, Z+8	; 0x08
     d7a:	f1 85       	ldd	r31, Z+9	; 0x09
     d7c:	e0 2d       	mov	r30, r0
     d7e:	24 eb       	ldi	r18, 0xB4	; 180
     d80:	46 eb       	ldi	r20, 0xB6	; 182
     d82:	62 e5       	ldi	r22, 0x52	; 82
     d84:	09 95       	icall
     d86:	8f 81       	ldd	r24, Y+7	; 0x07
     d88:	81 11       	cpse	r24, r1
     d8a:	02 c0       	rjmp	.+4      	; 0xd90 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x244>
     d8c:	40 e0       	ldi	r20, 0x00	; 0
     d8e:	01 c0       	rjmp	.+2      	; 0xd92 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x246>
     d90:	4c e0       	ldi	r20, 0x0C	; 12
     d92:	a8 85       	ldd	r26, Y+8	; 0x08
     d94:	80 e0       	ldi	r24, 0x00	; 0
     d96:	90 e0       	ldi	r25, 0x00	; 0
     d98:	61 e0       	ldi	r22, 0x01	; 1
     d9a:	70 e0       	ldi	r23, 0x00	; 0
     d9c:	28 2f       	mov	r18, r24
     d9e:	26 95       	lsr	r18
     da0:	26 95       	lsr	r18
     da2:	26 95       	lsr	r18
     da4:	58 2f       	mov	r21, r24
     da6:	57 70       	andi	r21, 0x07	; 7
     da8:	e1 e0       	ldi	r30, 0x01	; 1
     daa:	f0 e0       	ldi	r31, 0x00	; 0
     dac:	ec 0f       	add	r30, r28
     dae:	fd 1f       	adc	r31, r29
     db0:	e2 0f       	add	r30, r18
     db2:	f1 1d       	adc	r31, r1
     db4:	84 17       	cp	r24, r20
     db6:	10 f0       	brcs	.+4      	; 0xdbc <_ZN8CVL53L0X4initEP14CI2C_Interface+0x270>
     db8:	9a 13       	cpse	r25, r26
     dba:	0a c0       	rjmp	.+20     	; 0xdd0 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x284>
     dbc:	9b 01       	movw	r18, r22
     dbe:	01 c0       	rjmp	.+2      	; 0xdc2 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x276>
     dc0:	22 0f       	add	r18, r18
     dc2:	5a 95       	dec	r21
     dc4:	ea f7       	brpl	.-6      	; 0xdc0 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x274>
     dc6:	20 95       	com	r18
     dc8:	30 81       	ld	r19, Z
     dca:	23 23       	and	r18, r19
     dcc:	20 83       	st	Z, r18
     dce:	09 c0       	rjmp	.+18     	; 0xde2 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x296>
     dd0:	20 81       	ld	r18, Z
     dd2:	30 e0       	ldi	r19, 0x00	; 0
     dd4:	02 c0       	rjmp	.+4      	; 0xdda <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28e>
     dd6:	35 95       	asr	r19
     dd8:	27 95       	ror	r18
     dda:	5a 95       	dec	r21
     ddc:	e2 f7       	brpl	.-8      	; 0xdd6 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x28a>
     dde:	20 fd       	sbrc	r18, 0
     de0:	9f 5f       	subi	r25, 0xFF	; 255
     de2:	8f 5f       	subi	r24, 0xFF	; 255
     de4:	80 33       	cpi	r24, 0x30	; 48
     de6:	d1 f6       	brne	.-76     	; 0xd9c <_ZN8CVL53L0X4initEP14CI2C_Interface+0x250>
     de8:	f7 01       	movw	r30, r14
     dea:	80 89       	ldd	r24, Z+16	; 0x10
     dec:	91 89       	ldd	r25, Z+17	; 0x11
     dee:	dc 01       	movw	r26, r24
     df0:	ed 91       	ld	r30, X+
     df2:	fc 91       	ld	r31, X
     df4:	04 84       	ldd	r0, Z+12	; 0x0c
     df6:	f5 85       	ldd	r31, Z+13	; 0x0d
     df8:	e0 2d       	mov	r30, r0
     dfa:	06 e0       	ldi	r16, 0x06	; 6
     dfc:	10 e0       	ldi	r17, 0x00	; 0
     dfe:	9e 01       	movw	r18, r28
     e00:	2f 5f       	subi	r18, 0xFF	; 255
     e02:	3f 4f       	sbci	r19, 0xFF	; 255
     e04:	40 eb       	ldi	r20, 0xB0	; 176
     e06:	62 e5       	ldi	r22, 0x52	; 82
     e08:	09 95       	icall
     e0a:	f7 01       	movw	r30, r14
     e0c:	80 89       	ldd	r24, Z+16	; 0x10
     e0e:	91 89       	ldd	r25, Z+17	; 0x11
     e10:	dc 01       	movw	r26, r24
     e12:	ed 91       	ld	r30, X+
     e14:	fc 91       	ld	r31, X
     e16:	06 84       	ldd	r0, Z+14	; 0x0e
     e18:	f7 85       	ldd	r31, Z+15	; 0x0f
     e1a:	e0 2d       	mov	r30, r0
     e1c:	44 e8       	ldi	r20, 0x84	; 132
     e1e:	62 e5       	ldi	r22, 0x52	; 82
     e20:	09 95       	icall
     e22:	18 2f       	mov	r17, r24
     e24:	f7 01       	movw	r30, r14
     e26:	80 89       	ldd	r24, Z+16	; 0x10
     e28:	91 89       	ldd	r25, Z+17	; 0x11
     e2a:	dc 01       	movw	r26, r24
     e2c:	ed 91       	ld	r30, X+
     e2e:	fc 91       	ld	r31, X
     e30:	00 84       	ldd	r0, Z+8	; 0x08
     e32:	f1 85       	ldd	r31, Z+9	; 0x09
     e34:	e0 2d       	mov	r30, r0
     e36:	24 e0       	ldi	r18, 0x04	; 4
     e38:	4a e0       	ldi	r20, 0x0A	; 10
     e3a:	62 e5       	ldi	r22, 0x52	; 82
     e3c:	09 95       	icall
     e3e:	f7 01       	movw	r30, r14
     e40:	80 89       	ldd	r24, Z+16	; 0x10
     e42:	91 89       	ldd	r25, Z+17	; 0x11
     e44:	dc 01       	movw	r26, r24
     e46:	ed 91       	ld	r30, X+
     e48:	fc 91       	ld	r31, X
     e4a:	21 2f       	mov	r18, r17
     e4c:	2f 7e       	andi	r18, 0xEF	; 239
     e4e:	00 84       	ldd	r0, Z+8	; 0x08
     e50:	f1 85       	ldd	r31, Z+9	; 0x09
     e52:	e0 2d       	mov	r30, r0
     e54:	44 e8       	ldi	r20, 0x84	; 132
     e56:	62 e5       	ldi	r22, 0x52	; 82
     e58:	09 95       	icall
     e5a:	f7 01       	movw	r30, r14
     e5c:	80 89       	ldd	r24, Z+16	; 0x10
     e5e:	91 89       	ldd	r25, Z+17	; 0x11
     e60:	dc 01       	movw	r26, r24
     e62:	ed 91       	ld	r30, X+
     e64:	fc 91       	ld	r31, X
     e66:	00 84       	ldd	r0, Z+8	; 0x08
     e68:	f1 85       	ldd	r31, Z+9	; 0x09
     e6a:	e0 2d       	mov	r30, r0
     e6c:	21 e0       	ldi	r18, 0x01	; 1
     e6e:	4b e0       	ldi	r20, 0x0B	; 11
     e70:	62 e5       	ldi	r22, 0x52	; 82
     e72:	09 95       	icall
     e74:	f7 01       	movw	r30, r14
     e76:	80 89       	ldd	r24, Z+16	; 0x10
     e78:	91 89       	ldd	r25, Z+17	; 0x11
     e7a:	dc 01       	movw	r26, r24
     e7c:	ed 91       	ld	r30, X+
     e7e:	fc 91       	ld	r31, X
     e80:	00 84       	ldd	r0, Z+8	; 0x08
     e82:	f1 85       	ldd	r31, Z+9	; 0x09
     e84:	e0 2d       	mov	r30, r0
     e86:	22 e0       	ldi	r18, 0x02	; 2
     e88:	40 e0       	ldi	r20, 0x00	; 0
     e8a:	62 e5       	ldi	r22, 0x52	; 82
     e8c:	09 95       	icall
     e8e:	80 e0       	ldi	r24, 0x00	; 0
     e90:	90 e0       	ldi	r25, 0x00	; 0
     e92:	02 c0       	rjmp	.+4      	; 0xe98 <_ZN8CVL53L0X4initEP14CI2C_Interface+0x34c>
     e94:	8e ef       	ldi	r24, 0xFE	; 254
     e96:	9f ef       	ldi	r25, 0xFF	; 255
     e98:	28 96       	adiw	r28, 0x08	; 8
     e9a:	0f b6       	in	r0, 0x3f	; 63
     e9c:	f8 94       	cli
     e9e:	de bf       	out	0x3e, r29	; 62
     ea0:	0f be       	out	0x3f, r0	; 63
     ea2:	cd bf       	out	0x3d, r28	; 61
     ea4:	df 91       	pop	r29
     ea6:	cf 91       	pop	r28
     ea8:	1f 91       	pop	r17
     eaa:	0f 91       	pop	r16
     eac:	ff 90       	pop	r15
     eae:	ef 90       	pop	r14
     eb0:	08 95       	ret

00000eb2 <_ZdlPv>:
     eb2:	0c 94 0a 0b 	jmp	0x1614	; 0x1614 <free>

00000eb6 <_ZN8CRTTimerC1Ev>:
     eb6:	ee ee       	ldi	r30, 0xEE	; 238
     eb8:	f0 e0       	ldi	r31, 0x00	; 0
     eba:	11 82       	std	Z+1, r1	; 0x01
     ebc:	10 82       	st	Z, r1
     ebe:	13 82       	std	Z+3, r1	; 0x03
     ec0:	12 82       	std	Z+2, r1	; 0x02
     ec2:	15 82       	std	Z+5, r1	; 0x05
     ec4:	14 82       	std	Z+4, r1	; 0x04
     ec6:	16 82       	std	Z+6, r1	; 0x06
     ec8:	37 96       	adiw	r30, 0x07	; 7
     eca:	81 e0       	ldi	r24, 0x01	; 1
     ecc:	e6 32       	cpi	r30, 0x26	; 38
     ece:	f8 07       	cpc	r31, r24
     ed0:	a1 f7       	brne	.-24     	; 0xeba <_ZN8CRTTimerC1Ev+0x4>
     ed2:	83 b7       	in	r24, 0x33	; 51
     ed4:	88 60       	ori	r24, 0x08	; 8
     ed6:	83 bf       	out	0x33, r24	; 51
     ed8:	8b e9       	ldi	r24, 0x9B	; 155
     eda:	8c bf       	out	0x3c, r24	; 60
     edc:	83 e0       	ldi	r24, 0x03	; 3
     ede:	83 bf       	out	0x33, r24	; 51
     ee0:	89 b7       	in	r24, 0x39	; 57
     ee2:	82 60       	ori	r24, 0x02	; 2
     ee4:	89 bf       	out	0x39, r24	; 57
     ee6:	78 94       	sei
     ee8:	08 95       	ret

00000eea <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>:
     eea:	f8 94       	cli
     eec:	ee ee       	ldi	r30, 0xEE	; 238
     eee:	f0 e0       	ldi	r31, 0x00	; 0
     ef0:	80 e0       	ldi	r24, 0x00	; 0
     ef2:	90 e0       	ldi	r25, 0x00	; 0
     ef4:	20 81       	ld	r18, Z
     ef6:	31 81       	ldd	r19, Z+1	; 0x01
     ef8:	23 2b       	or	r18, r19
     efa:	81 f4       	brne	.+32     	; 0xf1c <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x32>
     efc:	27 e0       	ldi	r18, 0x07	; 7
     efe:	28 9f       	mul	r18, r24
     f00:	f0 01       	movw	r30, r0
     f02:	29 9f       	mul	r18, r25
     f04:	f0 0d       	add	r31, r0
     f06:	11 24       	eor	r1, r1
     f08:	e2 51       	subi	r30, 0x12	; 18
     f0a:	ff 4f       	sbci	r31, 0xFF	; 255
     f0c:	71 83       	std	Z+1, r23	; 0x01
     f0e:	60 83       	st	Z, r22
     f10:	53 83       	std	Z+3, r21	; 0x03
     f12:	42 83       	std	Z+2, r20	; 0x02
     f14:	55 83       	std	Z+5, r21	; 0x05
     f16:	44 83       	std	Z+4, r20	; 0x04
     f18:	16 82       	std	Z+6, r1	; 0x06
     f1a:	07 c0       	rjmp	.+14     	; 0xf2a <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x40>
     f1c:	01 96       	adiw	r24, 0x01	; 1
     f1e:	37 96       	adiw	r30, 0x07	; 7
     f20:	88 30       	cpi	r24, 0x08	; 8
     f22:	91 05       	cpc	r25, r1
     f24:	39 f7       	brne	.-50     	; 0xef4 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0xa>
     f26:	8f ef       	ldi	r24, 0xFF	; 255
     f28:	9f ef       	ldi	r25, 0xFF	; 255
     f2a:	78 94       	sei
     f2c:	08 95       	ret

00000f2e <_ZN8CRTTimer4mainEv>:
     f2e:	cf 93       	push	r28
     f30:	df 93       	push	r29
     f32:	c4 ef       	ldi	r28, 0xF4	; 244
     f34:	d0 e0       	ldi	r29, 0x00	; 0
     f36:	fe 01       	movw	r30, r28
     f38:	36 97       	sbiw	r30, 0x06	; 6
     f3a:	80 81       	ld	r24, Z
     f3c:	91 81       	ldd	r25, Z+1	; 0x01
     f3e:	00 97       	sbiw	r24, 0x00	; 0
     f40:	59 f0       	breq	.+22     	; 0xf58 <_ZN8CRTTimer4mainEv+0x2a>
     f42:	28 81       	ld	r18, Y
     f44:	22 23       	and	r18, r18
     f46:	41 f0       	breq	.+16     	; 0xf58 <_ZN8CRTTimer4mainEv+0x2a>
     f48:	18 82       	st	Y, r1
     f4a:	dc 01       	movw	r26, r24
     f4c:	ed 91       	ld	r30, X+
     f4e:	fc 91       	ld	r31, X
     f50:	04 80       	ldd	r0, Z+4	; 0x04
     f52:	f5 81       	ldd	r31, Z+5	; 0x05
     f54:	e0 2d       	mov	r30, r0
     f56:	09 95       	icall
     f58:	27 96       	adiw	r28, 0x07	; 7
     f5a:	b1 e0       	ldi	r27, 0x01	; 1
     f5c:	cc 32       	cpi	r28, 0x2C	; 44
     f5e:	db 07       	cpc	r29, r27
     f60:	51 f7       	brne	.-44     	; 0xf36 <_ZN8CRTTimer4mainEv+0x8>
     f62:	df 91       	pop	r29
     f64:	cf 91       	pop	r28
     f66:	08 95       	ret

00000f68 <__vector_19>:
     f68:	1f 92       	push	r1
     f6a:	0f 92       	push	r0
     f6c:	0f b6       	in	r0, 0x3f	; 63
     f6e:	0f 92       	push	r0
     f70:	11 24       	eor	r1, r1
     f72:	8f 93       	push	r24
     f74:	9f 93       	push	r25
     f76:	af 93       	push	r26
     f78:	bf 93       	push	r27
     f7a:	ef 93       	push	r30
     f7c:	ff 93       	push	r31
     f7e:	ee ee       	ldi	r30, 0xEE	; 238
     f80:	f0 e0       	ldi	r31, 0x00	; 0
     f82:	a4 ef       	ldi	r26, 0xF4	; 244
     f84:	b0 e0       	ldi	r27, 0x00	; 0
     f86:	84 81       	ldd	r24, Z+4	; 0x04
     f88:	95 81       	ldd	r25, Z+5	; 0x05
     f8a:	00 97       	sbiw	r24, 0x00	; 0
     f8c:	21 f0       	breq	.+8      	; 0xf96 <__vector_19+0x2e>
     f8e:	01 97       	sbiw	r24, 0x01	; 1
     f90:	95 83       	std	Z+5, r25	; 0x05
     f92:	84 83       	std	Z+4, r24	; 0x04
     f94:	09 c0       	rjmp	.+18     	; 0xfa8 <__vector_19+0x40>
     f96:	82 81       	ldd	r24, Z+2	; 0x02
     f98:	93 81       	ldd	r25, Z+3	; 0x03
     f9a:	95 83       	std	Z+5, r25	; 0x05
     f9c:	84 83       	std	Z+4, r24	; 0x04
     f9e:	8c 91       	ld	r24, X
     fa0:	8f 3f       	cpi	r24, 0xFF	; 255
     fa2:	11 f0       	breq	.+4      	; 0xfa8 <__vector_19+0x40>
     fa4:	8f 5f       	subi	r24, 0xFF	; 255
     fa6:	8c 93       	st	X, r24
     fa8:	37 96       	adiw	r30, 0x07	; 7
     faa:	17 96       	adiw	r26, 0x07	; 7
     fac:	81 e0       	ldi	r24, 0x01	; 1
     fae:	e6 32       	cpi	r30, 0x26	; 38
     fb0:	f8 07       	cpc	r31, r24
     fb2:	49 f7       	brne	.-46     	; 0xf86 <__vector_19+0x1e>
     fb4:	80 91 26 01 	lds	r24, 0x0126
     fb8:	90 91 27 01 	lds	r25, 0x0127
     fbc:	a0 91 28 01 	lds	r26, 0x0128
     fc0:	b0 91 29 01 	lds	r27, 0x0129
     fc4:	01 96       	adiw	r24, 0x01	; 1
     fc6:	a1 1d       	adc	r26, r1
     fc8:	b1 1d       	adc	r27, r1
     fca:	80 93 26 01 	sts	0x0126, r24
     fce:	90 93 27 01 	sts	0x0127, r25
     fd2:	a0 93 28 01 	sts	0x0128, r26
     fd6:	b0 93 29 01 	sts	0x0129, r27
     fda:	ff 91       	pop	r31
     fdc:	ef 91       	pop	r30
     fde:	bf 91       	pop	r27
     fe0:	af 91       	pop	r26
     fe2:	9f 91       	pop	r25
     fe4:	8f 91       	pop	r24
     fe6:	0f 90       	pop	r0
     fe8:	0f be       	out	0x3f, r0	; 63
     fea:	0f 90       	pop	r0
     fec:	1f 90       	pop	r1
     fee:	18 95       	reti

00000ff0 <_GLOBAL__sub_I_g_rt_time>:
     ff0:	8d ee       	ldi	r24, 0xED	; 237
     ff2:	90 e0       	ldi	r25, 0x00	; 0
     ff4:	0c 94 5b 07 	jmp	0xeb6	; 0xeb6 <_ZN8CRTTimerC1Ev>

00000ff8 <_ZN9CTerminal4putsEPc>:
     ff8:	0f 93       	push	r16
     ffa:	1f 93       	push	r17
     ffc:	cf 93       	push	r28
     ffe:	df 93       	push	r29
    1000:	8c 01       	movw	r16, r24
    1002:	eb 01       	movw	r28, r22
    1004:	69 91       	ld	r22, Y+
    1006:	66 23       	and	r22, r22
    1008:	21 f0       	breq	.+8      	; 0x1012 <_ZN9CTerminal4putsEPc+0x1a>
    100a:	c8 01       	movw	r24, r16
    100c:	0e 94 90 01 	call	0x320	; 0x320 <_ZN6CUSART7putcharEc>
    1010:	f9 cf       	rjmp	.-14     	; 0x1004 <_ZN9CTerminal4putsEPc+0xc>
    1012:	df 91       	pop	r29
    1014:	cf 91       	pop	r28
    1016:	1f 91       	pop	r17
    1018:	0f 91       	pop	r16
    101a:	08 95       	ret

0000101c <_ZN9CTerminal4putiEl>:
    101c:	8f 92       	push	r8
    101e:	9f 92       	push	r9
    1020:	af 92       	push	r10
    1022:	bf 92       	push	r11
    1024:	cf 92       	push	r12
    1026:	df 92       	push	r13
    1028:	ef 92       	push	r14
    102a:	ff 92       	push	r15
    102c:	0f 93       	push	r16
    102e:	1f 93       	push	r17
    1030:	cf 93       	push	r28
    1032:	df 93       	push	r29
    1034:	cd b7       	in	r28, 0x3d	; 61
    1036:	de b7       	in	r29, 0x3e	; 62
    1038:	2c 97       	sbiw	r28, 0x0c	; 12
    103a:	0f b6       	in	r0, 0x3f	; 63
    103c:	f8 94       	cli
    103e:	de bf       	out	0x3e, r29	; 62
    1040:	0f be       	out	0x3f, r0	; 63
    1042:	cd bf       	out	0x3d, r28	; 61
    1044:	7c 01       	movw	r14, r24
    1046:	77 ff       	sbrs	r23, 7
    1048:	09 c0       	rjmp	.+18     	; 0x105c <_ZN9CTerminal4putiEl+0x40>
    104a:	70 95       	com	r23
    104c:	60 95       	com	r22
    104e:	50 95       	com	r21
    1050:	41 95       	neg	r20
    1052:	5f 4f       	sbci	r21, 0xFF	; 255
    1054:	6f 4f       	sbci	r22, 0xFF	; 255
    1056:	7f 4f       	sbci	r23, 0xFF	; 255
    1058:	01 e0       	ldi	r16, 0x01	; 1
    105a:	01 c0       	rjmp	.+2      	; 0x105e <_ZN9CTerminal4putiEl+0x42>
    105c:	00 e0       	ldi	r16, 0x00	; 0
    105e:	1c 86       	std	Y+12, r1	; 0x0c
    1060:	1a e0       	ldi	r17, 0x0A	; 10
    1062:	9a e0       	ldi	r25, 0x0A	; 10
    1064:	89 2e       	mov	r8, r25
    1066:	91 2c       	mov	r9, r1
    1068:	a1 2c       	mov	r10, r1
    106a:	b1 2c       	mov	r11, r1
    106c:	cc 24       	eor	r12, r12
    106e:	c3 94       	inc	r12
    1070:	d1 2c       	mov	r13, r1
    1072:	cc 0e       	add	r12, r28
    1074:	dd 1e       	adc	r13, r29
    1076:	c1 0e       	add	r12, r17
    1078:	d1 1c       	adc	r13, r1
    107a:	cb 01       	movw	r24, r22
    107c:	ba 01       	movw	r22, r20
    107e:	a5 01       	movw	r20, r10
    1080:	94 01       	movw	r18, r8
    1082:	0e 94 22 0a 	call	0x1444	; 0x1444 <__divmodsi4>
    1086:	94 2f       	mov	r25, r20
    1088:	85 2f       	mov	r24, r21
    108a:	60 5d       	subi	r22, 0xD0	; 208
    108c:	f6 01       	movw	r30, r12
    108e:	60 83       	st	Z, r22
    1090:	a9 01       	movw	r20, r18
    1092:	69 2f       	mov	r22, r25
    1094:	78 2f       	mov	r23, r24
    1096:	8f ef       	ldi	r24, 0xFF	; 255
    1098:	81 0f       	add	r24, r17
    109a:	41 15       	cp	r20, r1
    109c:	51 05       	cpc	r21, r1
    109e:	61 05       	cpc	r22, r1
    10a0:	71 05       	cpc	r23, r1
    10a2:	11 f0       	breq	.+4      	; 0x10a8 <_ZN9CTerminal4putiEl+0x8c>
    10a4:	18 2f       	mov	r17, r24
    10a6:	e2 cf       	rjmp	.-60     	; 0x106c <_ZN9CTerminal4putiEl+0x50>
    10a8:	00 23       	and	r16, r16
    10aa:	49 f0       	breq	.+18     	; 0x10be <_ZN9CTerminal4putiEl+0xa2>
    10ac:	e1 e0       	ldi	r30, 0x01	; 1
    10ae:	f0 e0       	ldi	r31, 0x00	; 0
    10b0:	ec 0f       	add	r30, r28
    10b2:	fd 1f       	adc	r31, r29
    10b4:	e8 0f       	add	r30, r24
    10b6:	f1 1d       	adc	r31, r1
    10b8:	9d e2       	ldi	r25, 0x2D	; 45
    10ba:	90 83       	st	Z, r25
    10bc:	18 2f       	mov	r17, r24
    10be:	61 e0       	ldi	r22, 0x01	; 1
    10c0:	70 e0       	ldi	r23, 0x00	; 0
    10c2:	6c 0f       	add	r22, r28
    10c4:	7d 1f       	adc	r23, r29
    10c6:	61 0f       	add	r22, r17
    10c8:	71 1d       	adc	r23, r1
    10ca:	c7 01       	movw	r24, r14
    10cc:	0e 94 fc 07 	call	0xff8	; 0xff8 <_ZN9CTerminal4putsEPc>
    10d0:	2c 96       	adiw	r28, 0x0c	; 12
    10d2:	0f b6       	in	r0, 0x3f	; 63
    10d4:	f8 94       	cli
    10d6:	de bf       	out	0x3e, r29	; 62
    10d8:	0f be       	out	0x3f, r0	; 63
    10da:	cd bf       	out	0x3d, r28	; 61
    10dc:	df 91       	pop	r29
    10de:	cf 91       	pop	r28
    10e0:	1f 91       	pop	r17
    10e2:	0f 91       	pop	r16
    10e4:	ff 90       	pop	r15
    10e6:	ef 90       	pop	r14
    10e8:	df 90       	pop	r13
    10ea:	cf 90       	pop	r12
    10ec:	bf 90       	pop	r11
    10ee:	af 90       	pop	r10
    10f0:	9f 90       	pop	r9
    10f2:	8f 90       	pop	r8
    10f4:	08 95       	ret

000010f6 <_ZN9CTerminal5putuiEm>:
    10f6:	8f 92       	push	r8
    10f8:	9f 92       	push	r9
    10fa:	af 92       	push	r10
    10fc:	bf 92       	push	r11
    10fe:	cf 92       	push	r12
    1100:	df 92       	push	r13
    1102:	ef 92       	push	r14
    1104:	ff 92       	push	r15
    1106:	1f 93       	push	r17
    1108:	cf 93       	push	r28
    110a:	df 93       	push	r29
    110c:	cd b7       	in	r28, 0x3d	; 61
    110e:	de b7       	in	r29, 0x3e	; 62
    1110:	2c 97       	sbiw	r28, 0x0c	; 12
    1112:	0f b6       	in	r0, 0x3f	; 63
    1114:	f8 94       	cli
    1116:	de bf       	out	0x3e, r29	; 62
    1118:	0f be       	out	0x3f, r0	; 63
    111a:	cd bf       	out	0x3d, r28	; 61
    111c:	6c 01       	movw	r12, r24
    111e:	1c 86       	std	Y+12, r1	; 0x0c
    1120:	1a e0       	ldi	r17, 0x0A	; 10
    1122:	9a e0       	ldi	r25, 0x0A	; 10
    1124:	89 2e       	mov	r8, r25
    1126:	91 2c       	mov	r9, r1
    1128:	a1 2c       	mov	r10, r1
    112a:	b1 2c       	mov	r11, r1
    112c:	ee 24       	eor	r14, r14
    112e:	e3 94       	inc	r14
    1130:	f1 2c       	mov	r15, r1
    1132:	ec 0e       	add	r14, r28
    1134:	fd 1e       	adc	r15, r29
    1136:	e1 0e       	add	r14, r17
    1138:	f1 1c       	adc	r15, r1
    113a:	cb 01       	movw	r24, r22
    113c:	ba 01       	movw	r22, r20
    113e:	a5 01       	movw	r20, r10
    1140:	94 01       	movw	r18, r8
    1142:	0e 94 00 0a 	call	0x1400	; 0x1400 <__udivmodsi4>
    1146:	94 2f       	mov	r25, r20
    1148:	85 2f       	mov	r24, r21
    114a:	60 5d       	subi	r22, 0xD0	; 208
    114c:	f7 01       	movw	r30, r14
    114e:	60 83       	st	Z, r22
    1150:	a9 01       	movw	r20, r18
    1152:	69 2f       	mov	r22, r25
    1154:	78 2f       	mov	r23, r24
    1156:	11 50       	subi	r17, 0x01	; 1
    1158:	41 15       	cp	r20, r1
    115a:	51 05       	cpc	r21, r1
    115c:	61 05       	cpc	r22, r1
    115e:	71 05       	cpc	r23, r1
    1160:	29 f7       	brne	.-54     	; 0x112c <_ZN9CTerminal5putuiEm+0x36>
    1162:	b7 01       	movw	r22, r14
    1164:	c6 01       	movw	r24, r12
    1166:	0e 94 fc 07 	call	0xff8	; 0xff8 <_ZN9CTerminal4putsEPc>
    116a:	2c 96       	adiw	r28, 0x0c	; 12
    116c:	0f b6       	in	r0, 0x3f	; 63
    116e:	f8 94       	cli
    1170:	de bf       	out	0x3e, r29	; 62
    1172:	0f be       	out	0x3f, r0	; 63
    1174:	cd bf       	out	0x3d, r28	; 61
    1176:	df 91       	pop	r29
    1178:	cf 91       	pop	r28
    117a:	1f 91       	pop	r17
    117c:	ff 90       	pop	r15
    117e:	ef 90       	pop	r14
    1180:	df 90       	pop	r13
    1182:	cf 90       	pop	r12
    1184:	bf 90       	pop	r11
    1186:	af 90       	pop	r10
    1188:	9f 90       	pop	r9
    118a:	8f 90       	pop	r8
    118c:	08 95       	ret

0000118e <_ZN9CTerminal4putxEm>:
    118e:	ef 92       	push	r14
    1190:	ff 92       	push	r15
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
    11a6:	fc 01       	movw	r30, r24
    11a8:	1c 86       	std	Y+12, r1	; 0x0c
    11aa:	2a e0       	ldi	r18, 0x0A	; 10
    11ac:	94 2f       	mov	r25, r20
    11ae:	9f 70       	andi	r25, 0x0F	; 15
    11b0:	e2 2e       	mov	r14, r18
    11b2:	f1 2c       	mov	r15, r1
    11b4:	a1 e0       	ldi	r26, 0x01	; 1
    11b6:	b0 e0       	ldi	r27, 0x00	; 0
    11b8:	ac 0f       	add	r26, r28
    11ba:	bd 1f       	adc	r27, r29
    11bc:	ae 0d       	add	r26, r14
    11be:	bf 1d       	adc	r27, r15
    11c0:	9a 30       	cpi	r25, 0x0A	; 10
    11c2:	14 f4       	brge	.+4      	; 0x11c8 <_ZN9CTerminal4putxEm+0x3a>
    11c4:	90 5d       	subi	r25, 0xD0	; 208
    11c6:	01 c0       	rjmp	.+2      	; 0x11ca <_ZN9CTerminal4putxEm+0x3c>
    11c8:	99 5a       	subi	r25, 0xA9	; 169
    11ca:	9c 93       	st	X, r25
    11cc:	84 e0       	ldi	r24, 0x04	; 4
    11ce:	76 95       	lsr	r23
    11d0:	67 95       	ror	r22
    11d2:	57 95       	ror	r21
    11d4:	47 95       	ror	r20
    11d6:	8a 95       	dec	r24
    11d8:	d1 f7       	brne	.-12     	; 0x11ce <_ZN9CTerminal4putxEm+0x40>
    11da:	21 50       	subi	r18, 0x01	; 1
    11dc:	41 15       	cp	r20, r1
    11de:	51 05       	cpc	r21, r1
    11e0:	61 05       	cpc	r22, r1
    11e2:	71 05       	cpc	r23, r1
    11e4:	19 f7       	brne	.-58     	; 0x11ac <_ZN9CTerminal4putxEm+0x1e>
    11e6:	61 e0       	ldi	r22, 0x01	; 1
    11e8:	70 e0       	ldi	r23, 0x00	; 0
    11ea:	6c 0f       	add	r22, r28
    11ec:	7d 1f       	adc	r23, r29
    11ee:	6e 0d       	add	r22, r14
    11f0:	7f 1d       	adc	r23, r15
    11f2:	cf 01       	movw	r24, r30
    11f4:	0e 94 fc 07 	call	0xff8	; 0xff8 <_ZN9CTerminal4putsEPc>
    11f8:	2c 96       	adiw	r28, 0x0c	; 12
    11fa:	0f b6       	in	r0, 0x3f	; 63
    11fc:	f8 94       	cli
    11fe:	de bf       	out	0x3e, r29	; 62
    1200:	0f be       	out	0x3f, r0	; 63
    1202:	cd bf       	out	0x3d, r28	; 61
    1204:	df 91       	pop	r29
    1206:	cf 91       	pop	r28
    1208:	ff 90       	pop	r15
    120a:	ef 90       	pop	r14
    120c:	08 95       	ret

0000120e <_ZN9CTerminal6printfEPKcz>:
    120e:	af 92       	push	r10
    1210:	bf 92       	push	r11
    1212:	cf 92       	push	r12
    1214:	df 92       	push	r13
    1216:	ef 92       	push	r14
    1218:	ff 92       	push	r15
    121a:	0f 93       	push	r16
    121c:	1f 93       	push	r17
    121e:	cf 93       	push	r28
    1220:	df 93       	push	r29
    1222:	cd b7       	in	r28, 0x3d	; 61
    1224:	de b7       	in	r29, 0x3e	; 62
    1226:	ed 84       	ldd	r14, Y+13	; 0x0d
    1228:	fe 84       	ldd	r15, Y+14	; 0x0e
    122a:	8e 01       	movw	r16, r28
    122c:	0f 5e       	subi	r16, 0xEF	; 239
    122e:	1f 4f       	sbci	r17, 0xFF	; 255
    1230:	c1 2c       	mov	r12, r1
    1232:	d1 2c       	mov	r13, r1
    1234:	ef 85       	ldd	r30, Y+15	; 0x0f
    1236:	f8 89       	ldd	r31, Y+16	; 0x10
    1238:	ec 0d       	add	r30, r12
    123a:	fd 1d       	adc	r31, r13
    123c:	60 81       	ld	r22, Z
    123e:	66 23       	and	r22, r22
    1240:	09 f4       	brne	.+2      	; 0x1244 <_ZN9CTerminal6printfEPKcz+0x36>
    1242:	5e c0       	rjmp	.+188    	; 0x1300 <_ZN9CTerminal6printfEPKcz+0xf2>
    1244:	65 32       	cpi	r22, 0x25	; 37
    1246:	39 f0       	breq	.+14     	; 0x1256 <_ZN9CTerminal6printfEPKcz+0x48>
    1248:	c7 01       	movw	r24, r14
    124a:	0e 94 90 01 	call	0x320	; 0x320 <_ZN6CUSART7putcharEc>
    124e:	8f ef       	ldi	r24, 0xFF	; 255
    1250:	c8 1a       	sub	r12, r24
    1252:	d8 0a       	sbc	r13, r24
    1254:	ef cf       	rjmp	.-34     	; 0x1234 <_ZN9CTerminal6printfEPKcz+0x26>
    1256:	81 81       	ldd	r24, Z+1	; 0x01
    1258:	89 36       	cpi	r24, 0x69	; 105
    125a:	11 f1       	breq	.+68     	; 0x12a0 <_ZN9CTerminal6printfEPKcz+0x92>
    125c:	84 f4       	brge	.+32     	; 0x127e <_ZN9CTerminal6printfEPKcz+0x70>
    125e:	85 32       	cpi	r24, 0x25	; 37
    1260:	09 f4       	brne	.+2      	; 0x1264 <_ZN9CTerminal6printfEPKcz+0x56>
    1262:	46 c0       	rjmp	.+140    	; 0x12f0 <_ZN9CTerminal6printfEPKcz+0xe2>
    1264:	83 36       	cpi	r24, 0x63	; 99
    1266:	09 f0       	breq	.+2      	; 0x126a <_ZN9CTerminal6printfEPKcz+0x5c>
    1268:	47 c0       	rjmp	.+142    	; 0x12f8 <_ZN9CTerminal6printfEPKcz+0xea>
    126a:	58 01       	movw	r10, r16
    126c:	f2 e0       	ldi	r31, 0x02	; 2
    126e:	af 0e       	add	r10, r31
    1270:	b1 1c       	adc	r11, r1
    1272:	f8 01       	movw	r30, r16
    1274:	60 81       	ld	r22, Z
    1276:	c7 01       	movw	r24, r14
    1278:	0e 94 90 01 	call	0x320	; 0x320 <_ZN6CUSART7putcharEc>
    127c:	2a c0       	rjmp	.+84     	; 0x12d2 <_ZN9CTerminal6printfEPKcz+0xc4>
    127e:	85 37       	cpi	r24, 0x75	; 117
    1280:	e1 f0       	breq	.+56     	; 0x12ba <_ZN9CTerminal6printfEPKcz+0xac>
    1282:	88 37       	cpi	r24, 0x78	; 120
    1284:	41 f1       	breq	.+80     	; 0x12d6 <_ZN9CTerminal6printfEPKcz+0xc8>
    1286:	83 37       	cpi	r24, 0x73	; 115
    1288:	b9 f5       	brne	.+110    	; 0x12f8 <_ZN9CTerminal6printfEPKcz+0xea>
    128a:	58 01       	movw	r10, r16
    128c:	f2 e0       	ldi	r31, 0x02	; 2
    128e:	af 0e       	add	r10, r31
    1290:	b1 1c       	adc	r11, r1
    1292:	f8 01       	movw	r30, r16
    1294:	60 81       	ld	r22, Z
    1296:	71 81       	ldd	r23, Z+1	; 0x01
    1298:	c7 01       	movw	r24, r14
    129a:	0e 94 fc 07 	call	0xff8	; 0xff8 <_ZN9CTerminal4putsEPc>
    129e:	19 c0       	rjmp	.+50     	; 0x12d2 <_ZN9CTerminal6printfEPKcz+0xc4>
    12a0:	58 01       	movw	r10, r16
    12a2:	94 e0       	ldi	r25, 0x04	; 4
    12a4:	a9 0e       	add	r10, r25
    12a6:	b1 1c       	adc	r11, r1
    12a8:	f8 01       	movw	r30, r16
    12aa:	40 81       	ld	r20, Z
    12ac:	51 81       	ldd	r21, Z+1	; 0x01
    12ae:	62 81       	ldd	r22, Z+2	; 0x02
    12b0:	73 81       	ldd	r23, Z+3	; 0x03
    12b2:	c7 01       	movw	r24, r14
    12b4:	0e 94 0e 08 	call	0x101c	; 0x101c <_ZN9CTerminal4putiEl>
    12b8:	0c c0       	rjmp	.+24     	; 0x12d2 <_ZN9CTerminal6printfEPKcz+0xc4>
    12ba:	58 01       	movw	r10, r16
    12bc:	f4 e0       	ldi	r31, 0x04	; 4
    12be:	af 0e       	add	r10, r31
    12c0:	b1 1c       	adc	r11, r1
    12c2:	f8 01       	movw	r30, r16
    12c4:	40 81       	ld	r20, Z
    12c6:	51 81       	ldd	r21, Z+1	; 0x01
    12c8:	62 81       	ldd	r22, Z+2	; 0x02
    12ca:	73 81       	ldd	r23, Z+3	; 0x03
    12cc:	c7 01       	movw	r24, r14
    12ce:	0e 94 7b 08 	call	0x10f6	; 0x10f6 <_ZN9CTerminal5putuiEm>
    12d2:	85 01       	movw	r16, r10
    12d4:	11 c0       	rjmp	.+34     	; 0x12f8 <_ZN9CTerminal6printfEPKcz+0xea>
    12d6:	58 01       	movw	r10, r16
    12d8:	f4 e0       	ldi	r31, 0x04	; 4
    12da:	af 0e       	add	r10, r31
    12dc:	b1 1c       	adc	r11, r1
    12de:	f8 01       	movw	r30, r16
    12e0:	40 81       	ld	r20, Z
    12e2:	51 81       	ldd	r21, Z+1	; 0x01
    12e4:	62 81       	ldd	r22, Z+2	; 0x02
    12e6:	73 81       	ldd	r23, Z+3	; 0x03
    12e8:	c7 01       	movw	r24, r14
    12ea:	0e 94 c7 08 	call	0x118e	; 0x118e <_ZN9CTerminal4putxEm>
    12ee:	f1 cf       	rjmp	.-30     	; 0x12d2 <_ZN9CTerminal6printfEPKcz+0xc4>
    12f0:	65 e2       	ldi	r22, 0x25	; 37
    12f2:	c7 01       	movw	r24, r14
    12f4:	0e 94 90 01 	call	0x320	; 0x320 <_ZN6CUSART7putcharEc>
    12f8:	f2 e0       	ldi	r31, 0x02	; 2
    12fa:	cf 0e       	add	r12, r31
    12fc:	d1 1c       	adc	r13, r1
    12fe:	9a cf       	rjmp	.-204    	; 0x1234 <_ZN9CTerminal6printfEPKcz+0x26>
    1300:	df 91       	pop	r29
    1302:	cf 91       	pop	r28
    1304:	1f 91       	pop	r17
    1306:	0f 91       	pop	r16
    1308:	ff 90       	pop	r15
    130a:	ef 90       	pop	r14
    130c:	df 90       	pop	r13
    130e:	cf 90       	pop	r12
    1310:	bf 90       	pop	r11
    1312:	af 90       	pop	r10
    1314:	08 95       	ret

00001316 <_GLOBAL__sub_I_terminal>:
    1316:	8a e2       	ldi	r24, 0x2A	; 42
    1318:	91 e0       	ldi	r25, 0x01	; 1
    131a:	0c 94 85 01 	jmp	0x30a	; 0x30a <_ZN6CUSARTC1Ev>

0000131e <_GLOBAL__sub_D_terminal>:
    131e:	8a e2       	ldi	r24, 0x2A	; 42
    1320:	91 e0       	ldi	r25, 0x01	; 1
    1322:	0c 94 8f 01 	jmp	0x31e	; 0x31e <_ZN6CUSARTD1Ev>

00001326 <_ZN11CLEDDisplayD1Ev>:
    1326:	08 95       	ret

00001328 <_ZN11CLEDDisplayD0Ev>:
    1328:	0c 94 59 07 	jmp	0xeb2	; 0xeb2 <_ZdlPv>

0000132c <_ZN11CLEDDisplayclEv>:
    132c:	fc 01       	movw	r30, r24
    132e:	82 81       	ldd	r24, Z+2	; 0x02
    1330:	88 23       	and	r24, r24
    1332:	19 f0       	breq	.+6      	; 0x133a <_ZN11CLEDDisplayclEv+0xe>
    1334:	81 30       	cpi	r24, 0x01	; 1
    1336:	51 f0       	breq	.+20     	; 0x134c <_ZN11CLEDDisplayclEv+0x20>
    1338:	08 95       	ret
    133a:	88 b3       	in	r24, 0x18	; 24
    133c:	83 60       	ori	r24, 0x03	; 3
    133e:	88 bb       	out	0x18, r24	; 24
    1340:	83 81       	ldd	r24, Z+3	; 0x03
    1342:	85 bb       	out	0x15, r24	; 21
    1344:	c0 98       	cbi	0x18, 0	; 24
    1346:	81 e0       	ldi	r24, 0x01	; 1
    1348:	82 83       	std	Z+2, r24	; 0x02
    134a:	08 95       	ret
    134c:	88 b3       	in	r24, 0x18	; 24
    134e:	83 60       	ori	r24, 0x03	; 3
    1350:	88 bb       	out	0x18, r24	; 24
    1352:	84 81       	ldd	r24, Z+4	; 0x04
    1354:	85 bb       	out	0x15, r24	; 21
    1356:	c1 98       	cbi	0x18, 1	; 24
    1358:	12 82       	std	Z+2, r1	; 0x02
    135a:	08 95       	ret

0000135c <_ZN11CLEDDisplayC1Ev>:
    135c:	fc 01       	movw	r30, r24
    135e:	8c eb       	ldi	r24, 0xBC	; 188
    1360:	90 e0       	ldi	r25, 0x00	; 0
    1362:	91 83       	std	Z+1, r25	; 0x01
    1364:	80 83       	st	Z, r24
    1366:	12 82       	std	Z+2, r1	; 0x02
    1368:	8f ef       	ldi	r24, 0xFF	; 255
    136a:	83 83       	std	Z+3, r24	; 0x03
    136c:	84 83       	std	Z+4, r24	; 0x04
    136e:	97 b3       	in	r25, 0x17	; 23
    1370:	93 60       	ori	r25, 0x03	; 3
    1372:	97 bb       	out	0x17, r25	; 23
    1374:	98 b3       	in	r25, 0x18	; 24
    1376:	93 60       	ori	r25, 0x03	; 3
    1378:	98 bb       	out	0x18, r25	; 24
    137a:	85 bb       	out	0x15, r24	; 21
    137c:	84 bb       	out	0x14, r24	; 20
    137e:	45 e0       	ldi	r20, 0x05	; 5
    1380:	50 e0       	ldi	r21, 0x00	; 0
    1382:	bf 01       	movw	r22, r30
    1384:	8d ee       	ldi	r24, 0xED	; 237
    1386:	90 e0       	ldi	r25, 0x00	; 0
    1388:	0c 94 75 07 	jmp	0xeea	; 0xeea <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>

0000138c <_ZN11CLEDDisplay11display_decEh>:
    138c:	dc 01       	movw	r26, r24
    138e:	86 2f       	mov	r24, r22
    1390:	64 36       	cpi	r22, 0x64	; 100
    1392:	08 f0       	brcs	.+2      	; 0x1396 <_ZN11CLEDDisplay11display_decEh+0xa>
    1394:	83 e6       	ldi	r24, 0x63	; 99
    1396:	6a e0       	ldi	r22, 0x0A	; 10
    1398:	0e 94 e0 09 	call	0x13c0	; 0x13c0 <__udivmodqi4>
    139c:	e8 2f       	mov	r30, r24
    139e:	f0 e0       	ldi	r31, 0x00	; 0
    13a0:	e8 55       	subi	r30, 0x58	; 88
    13a2:	ff 4f       	sbci	r31, 0xFF	; 255
    13a4:	20 81       	ld	r18, Z
    13a6:	20 95       	com	r18
    13a8:	13 96       	adiw	r26, 0x03	; 3
    13aa:	2c 93       	st	X, r18
    13ac:	13 97       	sbiw	r26, 0x03	; 3
    13ae:	e9 2f       	mov	r30, r25
    13b0:	f0 e0       	ldi	r31, 0x00	; 0
    13b2:	e8 55       	subi	r30, 0x58	; 88
    13b4:	ff 4f       	sbci	r31, 0xFF	; 255
    13b6:	90 81       	ld	r25, Z
    13b8:	90 95       	com	r25
    13ba:	14 96       	adiw	r26, 0x04	; 4
    13bc:	9c 93       	st	X, r25
    13be:	08 95       	ret

000013c0 <__udivmodqi4>:
    13c0:	99 1b       	sub	r25, r25
    13c2:	79 e0       	ldi	r23, 0x09	; 9
    13c4:	04 c0       	rjmp	.+8      	; 0x13ce <__udivmodqi4_ep>

000013c6 <__udivmodqi4_loop>:
    13c6:	99 1f       	adc	r25, r25
    13c8:	96 17       	cp	r25, r22
    13ca:	08 f0       	brcs	.+2      	; 0x13ce <__udivmodqi4_ep>
    13cc:	96 1b       	sub	r25, r22

000013ce <__udivmodqi4_ep>:
    13ce:	88 1f       	adc	r24, r24
    13d0:	7a 95       	dec	r23
    13d2:	c9 f7       	brne	.-14     	; 0x13c6 <__udivmodqi4_loop>
    13d4:	80 95       	com	r24
    13d6:	08 95       	ret

000013d8 <__divmodhi4>:
    13d8:	97 fb       	bst	r25, 7
    13da:	07 2e       	mov	r0, r23
    13dc:	16 f4       	brtc	.+4      	; 0x13e2 <__divmodhi4+0xa>
    13de:	00 94       	com	r0
    13e0:	07 d0       	rcall	.+14     	; 0x13f0 <__divmodhi4_neg1>
    13e2:	77 fd       	sbrc	r23, 7
    13e4:	09 d0       	rcall	.+18     	; 0x13f8 <__divmodhi4_neg2>
    13e6:	0e 94 4c 0a 	call	0x1498	; 0x1498 <__udivmodhi4>
    13ea:	07 fc       	sbrc	r0, 7
    13ec:	05 d0       	rcall	.+10     	; 0x13f8 <__divmodhi4_neg2>
    13ee:	3e f4       	brtc	.+14     	; 0x13fe <__divmodhi4_exit>

000013f0 <__divmodhi4_neg1>:
    13f0:	90 95       	com	r25
    13f2:	81 95       	neg	r24
    13f4:	9f 4f       	sbci	r25, 0xFF	; 255
    13f6:	08 95       	ret

000013f8 <__divmodhi4_neg2>:
    13f8:	70 95       	com	r23
    13fa:	61 95       	neg	r22
    13fc:	7f 4f       	sbci	r23, 0xFF	; 255

000013fe <__divmodhi4_exit>:
    13fe:	08 95       	ret

00001400 <__udivmodsi4>:
    1400:	a1 e2       	ldi	r26, 0x21	; 33
    1402:	1a 2e       	mov	r1, r26
    1404:	aa 1b       	sub	r26, r26
    1406:	bb 1b       	sub	r27, r27
    1408:	fd 01       	movw	r30, r26
    140a:	0d c0       	rjmp	.+26     	; 0x1426 <__udivmodsi4_ep>

0000140c <__udivmodsi4_loop>:
    140c:	aa 1f       	adc	r26, r26
    140e:	bb 1f       	adc	r27, r27
    1410:	ee 1f       	adc	r30, r30
    1412:	ff 1f       	adc	r31, r31
    1414:	a2 17       	cp	r26, r18
    1416:	b3 07       	cpc	r27, r19
    1418:	e4 07       	cpc	r30, r20
    141a:	f5 07       	cpc	r31, r21
    141c:	20 f0       	brcs	.+8      	; 0x1426 <__udivmodsi4_ep>
    141e:	a2 1b       	sub	r26, r18
    1420:	b3 0b       	sbc	r27, r19
    1422:	e4 0b       	sbc	r30, r20
    1424:	f5 0b       	sbc	r31, r21

00001426 <__udivmodsi4_ep>:
    1426:	66 1f       	adc	r22, r22
    1428:	77 1f       	adc	r23, r23
    142a:	88 1f       	adc	r24, r24
    142c:	99 1f       	adc	r25, r25
    142e:	1a 94       	dec	r1
    1430:	69 f7       	brne	.-38     	; 0x140c <__udivmodsi4_loop>
    1432:	60 95       	com	r22
    1434:	70 95       	com	r23
    1436:	80 95       	com	r24
    1438:	90 95       	com	r25
    143a:	9b 01       	movw	r18, r22
    143c:	ac 01       	movw	r20, r24
    143e:	bd 01       	movw	r22, r26
    1440:	cf 01       	movw	r24, r30
    1442:	08 95       	ret

00001444 <__divmodsi4>:
    1444:	05 2e       	mov	r0, r21
    1446:	97 fb       	bst	r25, 7
    1448:	1e f4       	brtc	.+6      	; 0x1450 <__divmodsi4+0xc>
    144a:	00 94       	com	r0
    144c:	0e 94 39 0a 	call	0x1472	; 0x1472 <__negsi2>
    1450:	57 fd       	sbrc	r21, 7
    1452:	07 d0       	rcall	.+14     	; 0x1462 <__divmodsi4_neg2>
    1454:	0e 94 00 0a 	call	0x1400	; 0x1400 <__udivmodsi4>
    1458:	07 fc       	sbrc	r0, 7
    145a:	03 d0       	rcall	.+6      	; 0x1462 <__divmodsi4_neg2>
    145c:	4e f4       	brtc	.+18     	; 0x1470 <__divmodsi4_exit>
    145e:	0c 94 39 0a 	jmp	0x1472	; 0x1472 <__negsi2>

00001462 <__divmodsi4_neg2>:
    1462:	50 95       	com	r21
    1464:	40 95       	com	r20
    1466:	30 95       	com	r19
    1468:	21 95       	neg	r18
    146a:	3f 4f       	sbci	r19, 0xFF	; 255
    146c:	4f 4f       	sbci	r20, 0xFF	; 255
    146e:	5f 4f       	sbci	r21, 0xFF	; 255

00001470 <__divmodsi4_exit>:
    1470:	08 95       	ret

00001472 <__negsi2>:
    1472:	90 95       	com	r25
    1474:	80 95       	com	r24
    1476:	70 95       	com	r23
    1478:	61 95       	neg	r22
    147a:	7f 4f       	sbci	r23, 0xFF	; 255
    147c:	8f 4f       	sbci	r24, 0xFF	; 255
    147e:	9f 4f       	sbci	r25, 0xFF	; 255
    1480:	08 95       	ret

00001482 <__muluhisi3>:
    1482:	0e 94 66 0a 	call	0x14cc	; 0x14cc <__umulhisi3>
    1486:	a5 9f       	mul	r26, r21
    1488:	90 0d       	add	r25, r0
    148a:	b4 9f       	mul	r27, r20
    148c:	90 0d       	add	r25, r0
    148e:	a4 9f       	mul	r26, r20
    1490:	80 0d       	add	r24, r0
    1492:	91 1d       	adc	r25, r1
    1494:	11 24       	eor	r1, r1
    1496:	08 95       	ret

00001498 <__udivmodhi4>:
    1498:	aa 1b       	sub	r26, r26
    149a:	bb 1b       	sub	r27, r27
    149c:	51 e1       	ldi	r21, 0x11	; 17
    149e:	07 c0       	rjmp	.+14     	; 0x14ae <__udivmodhi4_ep>

000014a0 <__udivmodhi4_loop>:
    14a0:	aa 1f       	adc	r26, r26
    14a2:	bb 1f       	adc	r27, r27
    14a4:	a6 17       	cp	r26, r22
    14a6:	b7 07       	cpc	r27, r23
    14a8:	10 f0       	brcs	.+4      	; 0x14ae <__udivmodhi4_ep>
    14aa:	a6 1b       	sub	r26, r22
    14ac:	b7 0b       	sbc	r27, r23

000014ae <__udivmodhi4_ep>:
    14ae:	88 1f       	adc	r24, r24
    14b0:	99 1f       	adc	r25, r25
    14b2:	5a 95       	dec	r21
    14b4:	a9 f7       	brne	.-22     	; 0x14a0 <__udivmodhi4_loop>
    14b6:	80 95       	com	r24
    14b8:	90 95       	com	r25
    14ba:	bc 01       	movw	r22, r24
    14bc:	cd 01       	movw	r24, r26
    14be:	08 95       	ret

000014c0 <__tablejump2__>:
    14c0:	ee 0f       	add	r30, r30
    14c2:	ff 1f       	adc	r31, r31
    14c4:	05 90       	lpm	r0, Z+
    14c6:	f4 91       	lpm	r31, Z
    14c8:	e0 2d       	mov	r30, r0
    14ca:	09 94       	ijmp

000014cc <__umulhisi3>:
    14cc:	a2 9f       	mul	r26, r18
    14ce:	b0 01       	movw	r22, r0
    14d0:	b3 9f       	mul	r27, r19
    14d2:	c0 01       	movw	r24, r0
    14d4:	a3 9f       	mul	r26, r19
    14d6:	70 0d       	add	r23, r0
    14d8:	81 1d       	adc	r24, r1
    14da:	11 24       	eor	r1, r1
    14dc:	91 1d       	adc	r25, r1
    14de:	b2 9f       	mul	r27, r18
    14e0:	70 0d       	add	r23, r0
    14e2:	81 1d       	adc	r24, r1
    14e4:	11 24       	eor	r1, r1
    14e6:	91 1d       	adc	r25, r1
    14e8:	08 95       	ret

000014ea <malloc>:
    14ea:	cf 93       	push	r28
    14ec:	df 93       	push	r29
    14ee:	82 30       	cpi	r24, 0x02	; 2
    14f0:	91 05       	cpc	r25, r1
    14f2:	10 f4       	brcc	.+4      	; 0x14f8 <malloc+0xe>
    14f4:	82 e0       	ldi	r24, 0x02	; 2
    14f6:	90 e0       	ldi	r25, 0x00	; 0
    14f8:	e0 91 2d 01 	lds	r30, 0x012D
    14fc:	f0 91 2e 01 	lds	r31, 0x012E
    1500:	20 e0       	ldi	r18, 0x00	; 0
    1502:	30 e0       	ldi	r19, 0x00	; 0
    1504:	c0 e0       	ldi	r28, 0x00	; 0
    1506:	d0 e0       	ldi	r29, 0x00	; 0
    1508:	30 97       	sbiw	r30, 0x00	; 0
    150a:	11 f1       	breq	.+68     	; 0x1550 <malloc+0x66>
    150c:	40 81       	ld	r20, Z
    150e:	51 81       	ldd	r21, Z+1	; 0x01
    1510:	48 17       	cp	r20, r24
    1512:	59 07       	cpc	r21, r25
    1514:	c0 f0       	brcs	.+48     	; 0x1546 <malloc+0x5c>
    1516:	48 17       	cp	r20, r24
    1518:	59 07       	cpc	r21, r25
    151a:	61 f4       	brne	.+24     	; 0x1534 <malloc+0x4a>
    151c:	82 81       	ldd	r24, Z+2	; 0x02
    151e:	93 81       	ldd	r25, Z+3	; 0x03
    1520:	20 97       	sbiw	r28, 0x00	; 0
    1522:	19 f0       	breq	.+6      	; 0x152a <malloc+0x40>
    1524:	9b 83       	std	Y+3, r25	; 0x03
    1526:	8a 83       	std	Y+2, r24	; 0x02
    1528:	2b c0       	rjmp	.+86     	; 0x1580 <malloc+0x96>
    152a:	90 93 2e 01 	sts	0x012E, r25
    152e:	80 93 2d 01 	sts	0x012D, r24
    1532:	26 c0       	rjmp	.+76     	; 0x1580 <malloc+0x96>
    1534:	21 15       	cp	r18, r1
    1536:	31 05       	cpc	r19, r1
    1538:	19 f0       	breq	.+6      	; 0x1540 <malloc+0x56>
    153a:	42 17       	cp	r20, r18
    153c:	53 07       	cpc	r21, r19
    153e:	18 f4       	brcc	.+6      	; 0x1546 <malloc+0x5c>
    1540:	9a 01       	movw	r18, r20
    1542:	be 01       	movw	r22, r28
    1544:	df 01       	movw	r26, r30
    1546:	ef 01       	movw	r28, r30
    1548:	02 80       	ldd	r0, Z+2	; 0x02
    154a:	f3 81       	ldd	r31, Z+3	; 0x03
    154c:	e0 2d       	mov	r30, r0
    154e:	dc cf       	rjmp	.-72     	; 0x1508 <malloc+0x1e>
    1550:	21 15       	cp	r18, r1
    1552:	31 05       	cpc	r19, r1
    1554:	09 f1       	breq	.+66     	; 0x1598 <malloc+0xae>
    1556:	28 1b       	sub	r18, r24
    1558:	39 0b       	sbc	r19, r25
    155a:	24 30       	cpi	r18, 0x04	; 4
    155c:	31 05       	cpc	r19, r1
    155e:	90 f4       	brcc	.+36     	; 0x1584 <malloc+0x9a>
    1560:	12 96       	adiw	r26, 0x02	; 2
    1562:	8d 91       	ld	r24, X+
    1564:	9c 91       	ld	r25, X
    1566:	13 97       	sbiw	r26, 0x03	; 3
    1568:	61 15       	cp	r22, r1
    156a:	71 05       	cpc	r23, r1
    156c:	21 f0       	breq	.+8      	; 0x1576 <malloc+0x8c>
    156e:	fb 01       	movw	r30, r22
    1570:	93 83       	std	Z+3, r25	; 0x03
    1572:	82 83       	std	Z+2, r24	; 0x02
    1574:	04 c0       	rjmp	.+8      	; 0x157e <malloc+0x94>
    1576:	90 93 2e 01 	sts	0x012E, r25
    157a:	80 93 2d 01 	sts	0x012D, r24
    157e:	fd 01       	movw	r30, r26
    1580:	32 96       	adiw	r30, 0x02	; 2
    1582:	44 c0       	rjmp	.+136    	; 0x160c <malloc+0x122>
    1584:	fd 01       	movw	r30, r26
    1586:	e2 0f       	add	r30, r18
    1588:	f3 1f       	adc	r31, r19
    158a:	81 93       	st	Z+, r24
    158c:	91 93       	st	Z+, r25
    158e:	22 50       	subi	r18, 0x02	; 2
    1590:	31 09       	sbc	r19, r1
    1592:	2d 93       	st	X+, r18
    1594:	3c 93       	st	X, r19
    1596:	3a c0       	rjmp	.+116    	; 0x160c <malloc+0x122>
    1598:	20 91 2b 01 	lds	r18, 0x012B
    159c:	30 91 2c 01 	lds	r19, 0x012C
    15a0:	23 2b       	or	r18, r19
    15a2:	41 f4       	brne	.+16     	; 0x15b4 <malloc+0xca>
    15a4:	20 91 62 00 	lds	r18, 0x0062
    15a8:	30 91 63 00 	lds	r19, 0x0063
    15ac:	30 93 2c 01 	sts	0x012C, r19
    15b0:	20 93 2b 01 	sts	0x012B, r18
    15b4:	20 91 60 00 	lds	r18, 0x0060
    15b8:	30 91 61 00 	lds	r19, 0x0061
    15bc:	21 15       	cp	r18, r1
    15be:	31 05       	cpc	r19, r1
    15c0:	41 f4       	brne	.+16     	; 0x15d2 <malloc+0xe8>
    15c2:	2d b7       	in	r18, 0x3d	; 61
    15c4:	3e b7       	in	r19, 0x3e	; 62
    15c6:	40 91 64 00 	lds	r20, 0x0064
    15ca:	50 91 65 00 	lds	r21, 0x0065
    15ce:	24 1b       	sub	r18, r20
    15d0:	35 0b       	sbc	r19, r21
    15d2:	e0 91 2b 01 	lds	r30, 0x012B
    15d6:	f0 91 2c 01 	lds	r31, 0x012C
    15da:	e2 17       	cp	r30, r18
    15dc:	f3 07       	cpc	r31, r19
    15de:	a0 f4       	brcc	.+40     	; 0x1608 <malloc+0x11e>
    15e0:	2e 1b       	sub	r18, r30
    15e2:	3f 0b       	sbc	r19, r31
    15e4:	28 17       	cp	r18, r24
    15e6:	39 07       	cpc	r19, r25
    15e8:	78 f0       	brcs	.+30     	; 0x1608 <malloc+0x11e>
    15ea:	ac 01       	movw	r20, r24
    15ec:	4e 5f       	subi	r20, 0xFE	; 254
    15ee:	5f 4f       	sbci	r21, 0xFF	; 255
    15f0:	24 17       	cp	r18, r20
    15f2:	35 07       	cpc	r19, r21
    15f4:	48 f0       	brcs	.+18     	; 0x1608 <malloc+0x11e>
    15f6:	4e 0f       	add	r20, r30
    15f8:	5f 1f       	adc	r21, r31
    15fa:	50 93 2c 01 	sts	0x012C, r21
    15fe:	40 93 2b 01 	sts	0x012B, r20
    1602:	81 93       	st	Z+, r24
    1604:	91 93       	st	Z+, r25
    1606:	02 c0       	rjmp	.+4      	; 0x160c <malloc+0x122>
    1608:	e0 e0       	ldi	r30, 0x00	; 0
    160a:	f0 e0       	ldi	r31, 0x00	; 0
    160c:	cf 01       	movw	r24, r30
    160e:	df 91       	pop	r29
    1610:	cf 91       	pop	r28
    1612:	08 95       	ret

00001614 <free>:
    1614:	0f 93       	push	r16
    1616:	1f 93       	push	r17
    1618:	cf 93       	push	r28
    161a:	df 93       	push	r29
    161c:	00 97       	sbiw	r24, 0x00	; 0
    161e:	09 f4       	brne	.+2      	; 0x1622 <free+0xe>
    1620:	8c c0       	rjmp	.+280    	; 0x173a <free+0x126>
    1622:	fc 01       	movw	r30, r24
    1624:	32 97       	sbiw	r30, 0x02	; 2
    1626:	13 82       	std	Z+3, r1	; 0x03
    1628:	12 82       	std	Z+2, r1	; 0x02
    162a:	00 91 2d 01 	lds	r16, 0x012D
    162e:	10 91 2e 01 	lds	r17, 0x012E
    1632:	01 15       	cp	r16, r1
    1634:	11 05       	cpc	r17, r1
    1636:	81 f4       	brne	.+32     	; 0x1658 <free+0x44>
    1638:	20 81       	ld	r18, Z
    163a:	31 81       	ldd	r19, Z+1	; 0x01
    163c:	82 0f       	add	r24, r18
    163e:	93 1f       	adc	r25, r19
    1640:	20 91 2b 01 	lds	r18, 0x012B
    1644:	30 91 2c 01 	lds	r19, 0x012C
    1648:	28 17       	cp	r18, r24
    164a:	39 07       	cpc	r19, r25
    164c:	79 f5       	brne	.+94     	; 0x16ac <free+0x98>
    164e:	f0 93 2c 01 	sts	0x012C, r31
    1652:	e0 93 2b 01 	sts	0x012B, r30
    1656:	71 c0       	rjmp	.+226    	; 0x173a <free+0x126>
    1658:	d8 01       	movw	r26, r16
    165a:	40 e0       	ldi	r20, 0x00	; 0
    165c:	50 e0       	ldi	r21, 0x00	; 0
    165e:	ae 17       	cp	r26, r30
    1660:	bf 07       	cpc	r27, r31
    1662:	50 f4       	brcc	.+20     	; 0x1678 <free+0x64>
    1664:	12 96       	adiw	r26, 0x02	; 2
    1666:	2d 91       	ld	r18, X+
    1668:	3c 91       	ld	r19, X
    166a:	13 97       	sbiw	r26, 0x03	; 3
    166c:	ad 01       	movw	r20, r26
    166e:	21 15       	cp	r18, r1
    1670:	31 05       	cpc	r19, r1
    1672:	09 f1       	breq	.+66     	; 0x16b6 <free+0xa2>
    1674:	d9 01       	movw	r26, r18
    1676:	f3 cf       	rjmp	.-26     	; 0x165e <free+0x4a>
    1678:	9d 01       	movw	r18, r26
    167a:	da 01       	movw	r26, r20
    167c:	33 83       	std	Z+3, r19	; 0x03
    167e:	22 83       	std	Z+2, r18	; 0x02
    1680:	60 81       	ld	r22, Z
    1682:	71 81       	ldd	r23, Z+1	; 0x01
    1684:	86 0f       	add	r24, r22
    1686:	97 1f       	adc	r25, r23
    1688:	82 17       	cp	r24, r18
    168a:	93 07       	cpc	r25, r19
    168c:	69 f4       	brne	.+26     	; 0x16a8 <free+0x94>
    168e:	ec 01       	movw	r28, r24
    1690:	28 81       	ld	r18, Y
    1692:	39 81       	ldd	r19, Y+1	; 0x01
    1694:	26 0f       	add	r18, r22
    1696:	37 1f       	adc	r19, r23
    1698:	2e 5f       	subi	r18, 0xFE	; 254
    169a:	3f 4f       	sbci	r19, 0xFF	; 255
    169c:	31 83       	std	Z+1, r19	; 0x01
    169e:	20 83       	st	Z, r18
    16a0:	8a 81       	ldd	r24, Y+2	; 0x02
    16a2:	9b 81       	ldd	r25, Y+3	; 0x03
    16a4:	93 83       	std	Z+3, r25	; 0x03
    16a6:	82 83       	std	Z+2, r24	; 0x02
    16a8:	45 2b       	or	r20, r21
    16aa:	29 f4       	brne	.+10     	; 0x16b6 <free+0xa2>
    16ac:	f0 93 2e 01 	sts	0x012E, r31
    16b0:	e0 93 2d 01 	sts	0x012D, r30
    16b4:	42 c0       	rjmp	.+132    	; 0x173a <free+0x126>
    16b6:	13 96       	adiw	r26, 0x03	; 3
    16b8:	fc 93       	st	X, r31
    16ba:	ee 93       	st	-X, r30
    16bc:	12 97       	sbiw	r26, 0x02	; 2
    16be:	ed 01       	movw	r28, r26
    16c0:	49 91       	ld	r20, Y+
    16c2:	59 91       	ld	r21, Y+
    16c4:	9e 01       	movw	r18, r28
    16c6:	24 0f       	add	r18, r20
    16c8:	35 1f       	adc	r19, r21
    16ca:	e2 17       	cp	r30, r18
    16cc:	f3 07       	cpc	r31, r19
    16ce:	71 f4       	brne	.+28     	; 0x16ec <free+0xd8>
    16d0:	80 81       	ld	r24, Z
    16d2:	91 81       	ldd	r25, Z+1	; 0x01
    16d4:	84 0f       	add	r24, r20
    16d6:	95 1f       	adc	r25, r21
    16d8:	02 96       	adiw	r24, 0x02	; 2
    16da:	11 96       	adiw	r26, 0x01	; 1
    16dc:	9c 93       	st	X, r25
    16de:	8e 93       	st	-X, r24
    16e0:	82 81       	ldd	r24, Z+2	; 0x02
    16e2:	93 81       	ldd	r25, Z+3	; 0x03
    16e4:	13 96       	adiw	r26, 0x03	; 3
    16e6:	9c 93       	st	X, r25
    16e8:	8e 93       	st	-X, r24
    16ea:	12 97       	sbiw	r26, 0x02	; 2
    16ec:	e0 e0       	ldi	r30, 0x00	; 0
    16ee:	f0 e0       	ldi	r31, 0x00	; 0
    16f0:	d8 01       	movw	r26, r16
    16f2:	12 96       	adiw	r26, 0x02	; 2
    16f4:	8d 91       	ld	r24, X+
    16f6:	9c 91       	ld	r25, X
    16f8:	13 97       	sbiw	r26, 0x03	; 3
    16fa:	00 97       	sbiw	r24, 0x00	; 0
    16fc:	19 f0       	breq	.+6      	; 0x1704 <free+0xf0>
    16fe:	f8 01       	movw	r30, r16
    1700:	8c 01       	movw	r16, r24
    1702:	f6 cf       	rjmp	.-20     	; 0x16f0 <free+0xdc>
    1704:	8d 91       	ld	r24, X+
    1706:	9c 91       	ld	r25, X
    1708:	98 01       	movw	r18, r16
    170a:	2e 5f       	subi	r18, 0xFE	; 254
    170c:	3f 4f       	sbci	r19, 0xFF	; 255
    170e:	82 0f       	add	r24, r18
    1710:	93 1f       	adc	r25, r19
    1712:	20 91 2b 01 	lds	r18, 0x012B
    1716:	30 91 2c 01 	lds	r19, 0x012C
    171a:	28 17       	cp	r18, r24
    171c:	39 07       	cpc	r19, r25
    171e:	69 f4       	brne	.+26     	; 0x173a <free+0x126>
    1720:	30 97       	sbiw	r30, 0x00	; 0
    1722:	29 f4       	brne	.+10     	; 0x172e <free+0x11a>
    1724:	10 92 2e 01 	sts	0x012E, r1
    1728:	10 92 2d 01 	sts	0x012D, r1
    172c:	02 c0       	rjmp	.+4      	; 0x1732 <free+0x11e>
    172e:	13 82       	std	Z+3, r1	; 0x03
    1730:	12 82       	std	Z+2, r1	; 0x02
    1732:	10 93 2c 01 	sts	0x012C, r17
    1736:	00 93 2b 01 	sts	0x012B, r16
    173a:	df 91       	pop	r29
    173c:	cf 91       	pop	r28
    173e:	1f 91       	pop	r17
    1740:	0f 91       	pop	r16
    1742:	08 95       	ret

00001744 <__do_global_dtors>:
    1744:	10 e0       	ldi	r17, 0x00	; 0
    1746:	ce e2       	ldi	r28, 0x2E	; 46
    1748:	d0 e0       	ldi	r29, 0x00	; 0
    174a:	04 c0       	rjmp	.+8      	; 0x1754 <__do_global_dtors+0x10>
    174c:	fe 01       	movw	r30, r28
    174e:	0e 94 60 0a 	call	0x14c0	; 0x14c0 <__tablejump2__>
    1752:	21 96       	adiw	r28, 0x01	; 1
    1754:	c0 33       	cpi	r28, 0x30	; 48
    1756:	d1 07       	cpc	r29, r17
    1758:	c9 f7       	brne	.-14     	; 0x174c <__do_global_dtors+0x8>
    175a:	f8 94       	cli

0000175c <__stop_program>:
    175c:	ff cf       	rjmp	.-2      	; 0x175c <__stop_program>
