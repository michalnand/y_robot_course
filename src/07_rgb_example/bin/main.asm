
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
      4c:	0c 94 51 0e 	jmp	0x1ca2	; 0x1ca2 <__vector_19>
      50:	0c 94 57 00 	jmp	0xae	; 0xae <__bad_interrupt>

00000054 <__ctors_start>:
      54:	e9 0d       	add	r30, r9
      56:	95 0e       	add	r9, r21
      58:	3c 12       	cpse	r3, r28
      5a:	8e 14       	cp	r8, r14

0000005c <__ctors_end>:
      5c:	92 14       	cp	r9, r2

0000005e <__dtors_end>:
      5e:	11 24       	eor	r1, r1
      60:	1f be       	out	0x3f, r1	; 63
      62:	cf e5       	ldi	r28, 0x5F	; 95
      64:	d4 e0       	ldi	r29, 0x04	; 4
      66:	de bf       	out	0x3e, r29	; 62
      68:	cd bf       	out	0x3d, r28	; 61

0000006a <__do_copy_data>:
      6a:	11 e0       	ldi	r17, 0x01	; 1
      6c:	a0 e6       	ldi	r26, 0x60	; 96
      6e:	b0 e0       	ldi	r27, 0x00	; 0
      70:	e2 e6       	ldi	r30, 0x62	; 98
      72:	fd e2       	ldi	r31, 0x2D	; 45
      74:	02 c0       	rjmp	.+4      	; 0x7a <__do_copy_data+0x10>
      76:	05 90       	lpm	r0, Z+
      78:	0d 92       	st	X+, r0
      7a:	a0 32       	cpi	r26, 0x20	; 32
      7c:	b1 07       	cpc	r27, r17
      7e:	d9 f7       	brne	.-10     	; 0x76 <__do_copy_data+0xc>

00000080 <__do_clear_bss>:
      80:	21 e0       	ldi	r18, 0x01	; 1
      82:	a0 e2       	ldi	r26, 0x20	; 32
      84:	b1 e0       	ldi	r27, 0x01	; 1
      86:	01 c0       	rjmp	.+2      	; 0x8a <.do_clear_bss_start>

00000088 <.do_clear_bss_loop>:
      88:	1d 92       	st	X+, r1

0000008a <.do_clear_bss_start>:
      8a:	a6 37       	cpi	r26, 0x76	; 118
      8c:	b2 07       	cpc	r27, r18
      8e:	e1 f7       	brne	.-8      	; 0x88 <.do_clear_bss_loop>

00000090 <__do_global_ctors>:
      90:	10 e0       	ldi	r17, 0x00	; 0
      92:	ce e2       	ldi	r28, 0x2E	; 46
      94:	d0 e0       	ldi	r29, 0x00	; 0
      96:	04 c0       	rjmp	.+8      	; 0xa0 <__do_global_ctors+0x10>
      98:	21 97       	sbiw	r28, 0x01	; 1
      9a:	fe 01       	movw	r30, r28
      9c:	0e 94 d7 14 	call	0x29ae	; 0x29ae <__tablejump2__>
      a0:	ca 32       	cpi	r28, 0x2A	; 42
      a2:	d1 07       	cpc	r29, r17
      a4:	c9 f7       	brne	.-14     	; 0x98 <__do_global_ctors+0x8>
      a6:	0e 94 aa 0c 	call	0x1954	; 0x1954 <main>
      aa:	0c 94 a4 16 	jmp	0x2d48	; 0x2d48 <__do_global_dtors>

000000ae <__bad_interrupt>:
      ae:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b2 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE9write_regEhhh>:
      b2:	0f 93       	push	r16
      b4:	1f 93       	push	r17
      b6:	cf 93       	push	r28
      b8:	df 93       	push	r29
      ba:	00 d0       	rcall	.+0      	; 0xbc <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE9write_regEhhh+0xa>
      bc:	1f 92       	push	r1
      be:	cd b7       	in	r28, 0x3d	; 61
      c0:	de b7       	in	r29, 0x3e	; 62
      c2:	8c 01       	movw	r16, r24
      c4:	dc 01       	movw	r26, r24
      c6:	ed 91       	ld	r30, X+
      c8:	fc 91       	ld	r31, X
      ca:	01 90       	ld	r0, Z+
      cc:	f0 81       	ld	r31, Z
      ce:	e0 2d       	mov	r30, r0
      d0:	2b 83       	std	Y+3, r18	; 0x03
      d2:	4a 83       	std	Y+2, r20	; 0x02
      d4:	69 83       	std	Y+1, r22	; 0x01
      d6:	09 95       	icall
      d8:	d8 01       	movw	r26, r16
      da:	ed 91       	ld	r30, X+
      dc:	fc 91       	ld	r31, X
      de:	04 80       	ldd	r0, Z+4	; 0x04
      e0:	f5 81       	ldd	r31, Z+5	; 0x05
      e2:	e0 2d       	mov	r30, r0
      e4:	69 81       	ldd	r22, Y+1	; 0x01
      e6:	c8 01       	movw	r24, r16
      e8:	09 95       	icall
      ea:	d8 01       	movw	r26, r16
      ec:	ed 91       	ld	r30, X+
      ee:	fc 91       	ld	r31, X
      f0:	04 80       	ldd	r0, Z+4	; 0x04
      f2:	f5 81       	ldd	r31, Z+5	; 0x05
      f4:	e0 2d       	mov	r30, r0
      f6:	4a 81       	ldd	r20, Y+2	; 0x02
      f8:	64 2f       	mov	r22, r20
      fa:	c8 01       	movw	r24, r16
      fc:	09 95       	icall
      fe:	d8 01       	movw	r26, r16
     100:	ed 91       	ld	r30, X+
     102:	fc 91       	ld	r31, X
     104:	04 80       	ldd	r0, Z+4	; 0x04
     106:	f5 81       	ldd	r31, Z+5	; 0x05
     108:	e0 2d       	mov	r30, r0
     10a:	2b 81       	ldd	r18, Y+3	; 0x03
     10c:	62 2f       	mov	r22, r18
     10e:	c8 01       	movw	r24, r16
     110:	09 95       	icall
     112:	d8 01       	movw	r26, r16
     114:	ed 91       	ld	r30, X+
     116:	fc 91       	ld	r31, X
     118:	02 80       	ldd	r0, Z+2	; 0x02
     11a:	f3 81       	ldd	r31, Z+3	; 0x03
     11c:	e0 2d       	mov	r30, r0
     11e:	c8 01       	movw	r24, r16
     120:	0f 90       	pop	r0
     122:	0f 90       	pop	r0
     124:	0f 90       	pop	r0
     126:	df 91       	pop	r29
     128:	cf 91       	pop	r28
     12a:	1f 91       	pop	r17
     12c:	0f 91       	pop	r16
     12e:	09 94       	ijmp

00000130 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE15write_reg_16bitEhhj>:
     130:	0f 93       	push	r16
     132:	1f 93       	push	r17
     134:	cf 93       	push	r28
     136:	df 93       	push	r29
     138:	00 d0       	rcall	.+0      	; 0x13a <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xa>
     13a:	00 d0       	rcall	.+0      	; 0x13c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xc>
     13c:	cd b7       	in	r28, 0x3d	; 61
     13e:	de b7       	in	r29, 0x3e	; 62
     140:	8c 01       	movw	r16, r24
     142:	dc 01       	movw	r26, r24
     144:	ed 91       	ld	r30, X+
     146:	fc 91       	ld	r31, X
     148:	01 90       	ld	r0, Z+
     14a:	f0 81       	ld	r31, Z
     14c:	e0 2d       	mov	r30, r0
     14e:	2c 83       	std	Y+4, r18	; 0x04
     150:	3b 83       	std	Y+3, r19	; 0x03
     152:	4a 83       	std	Y+2, r20	; 0x02
     154:	69 83       	std	Y+1, r22	; 0x01
     156:	09 95       	icall
     158:	d8 01       	movw	r26, r16
     15a:	ed 91       	ld	r30, X+
     15c:	fc 91       	ld	r31, X
     15e:	04 80       	ldd	r0, Z+4	; 0x04
     160:	f5 81       	ldd	r31, Z+5	; 0x05
     162:	e0 2d       	mov	r30, r0
     164:	69 81       	ldd	r22, Y+1	; 0x01
     166:	c8 01       	movw	r24, r16
     168:	09 95       	icall
     16a:	d8 01       	movw	r26, r16
     16c:	ed 91       	ld	r30, X+
     16e:	fc 91       	ld	r31, X
     170:	04 80       	ldd	r0, Z+4	; 0x04
     172:	f5 81       	ldd	r31, Z+5	; 0x05
     174:	e0 2d       	mov	r30, r0
     176:	4a 81       	ldd	r20, Y+2	; 0x02
     178:	64 2f       	mov	r22, r20
     17a:	c8 01       	movw	r24, r16
     17c:	09 95       	icall
     17e:	d8 01       	movw	r26, r16
     180:	ed 91       	ld	r30, X+
     182:	fc 91       	ld	r31, X
     184:	04 80       	ldd	r0, Z+4	; 0x04
     186:	f5 81       	ldd	r31, Z+5	; 0x05
     188:	e0 2d       	mov	r30, r0
     18a:	3b 81       	ldd	r19, Y+3	; 0x03
     18c:	63 2f       	mov	r22, r19
     18e:	c8 01       	movw	r24, r16
     190:	09 95       	icall
     192:	d8 01       	movw	r26, r16
     194:	ed 91       	ld	r30, X+
     196:	fc 91       	ld	r31, X
     198:	04 80       	ldd	r0, Z+4	; 0x04
     19a:	f5 81       	ldd	r31, Z+5	; 0x05
     19c:	e0 2d       	mov	r30, r0
     19e:	2c 81       	ldd	r18, Y+4	; 0x04
     1a0:	62 2f       	mov	r22, r18
     1a2:	c8 01       	movw	r24, r16
     1a4:	09 95       	icall
     1a6:	d8 01       	movw	r26, r16
     1a8:	ed 91       	ld	r30, X+
     1aa:	fc 91       	ld	r31, X
     1ac:	02 80       	ldd	r0, Z+2	; 0x02
     1ae:	f3 81       	ldd	r31, Z+3	; 0x03
     1b0:	e0 2d       	mov	r30, r0
     1b2:	c8 01       	movw	r24, r16
     1b4:	0f 90       	pop	r0
     1b6:	0f 90       	pop	r0
     1b8:	0f 90       	pop	r0
     1ba:	0f 90       	pop	r0
     1bc:	df 91       	pop	r29
     1be:	cf 91       	pop	r28
     1c0:	1f 91       	pop	r17
     1c2:	0f 91       	pop	r16
     1c4:	09 94       	ijmp

000001c6 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE15write_reg_multiEhhPhj>:
     1c6:	cf 92       	push	r12
     1c8:	df 92       	push	r13
     1ca:	ef 92       	push	r14
     1cc:	ff 92       	push	r15
     1ce:	0f 93       	push	r16
     1d0:	1f 93       	push	r17
     1d2:	cf 93       	push	r28
     1d4:	df 93       	push	r29
     1d6:	00 d0       	rcall	.+0      	; 0x1d8 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x12>
     1d8:	00 d0       	rcall	.+0      	; 0x1da <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x14>
     1da:	cd b7       	in	r28, 0x3d	; 61
     1dc:	de b7       	in	r29, 0x3e	; 62
     1de:	6c 01       	movw	r12, r24
     1e0:	dc 01       	movw	r26, r24
     1e2:	ed 91       	ld	r30, X+
     1e4:	fc 91       	ld	r31, X
     1e6:	01 90       	ld	r0, Z+
     1e8:	f0 81       	ld	r31, Z
     1ea:	e0 2d       	mov	r30, r0
     1ec:	2b 83       	std	Y+3, r18	; 0x03
     1ee:	3c 83       	std	Y+4, r19	; 0x04
     1f0:	4a 83       	std	Y+2, r20	; 0x02
     1f2:	69 83       	std	Y+1, r22	; 0x01
     1f4:	09 95       	icall
     1f6:	d6 01       	movw	r26, r12
     1f8:	ed 91       	ld	r30, X+
     1fa:	fc 91       	ld	r31, X
     1fc:	04 80       	ldd	r0, Z+4	; 0x04
     1fe:	f5 81       	ldd	r31, Z+5	; 0x05
     200:	e0 2d       	mov	r30, r0
     202:	69 81       	ldd	r22, Y+1	; 0x01
     204:	c6 01       	movw	r24, r12
     206:	09 95       	icall
     208:	d6 01       	movw	r26, r12
     20a:	ed 91       	ld	r30, X+
     20c:	fc 91       	ld	r31, X
     20e:	04 80       	ldd	r0, Z+4	; 0x04
     210:	f5 81       	ldd	r31, Z+5	; 0x05
     212:	e0 2d       	mov	r30, r0
     214:	4a 81       	ldd	r20, Y+2	; 0x02
     216:	64 2f       	mov	r22, r20
     218:	c6 01       	movw	r24, r12
     21a:	09 95       	icall
     21c:	2b 81       	ldd	r18, Y+3	; 0x03
     21e:	e2 2e       	mov	r14, r18
     220:	3c 81       	ldd	r19, Y+4	; 0x04
     222:	f3 2e       	mov	r15, r19
     224:	0e 0d       	add	r16, r14
     226:	1f 1d       	adc	r17, r15
     228:	d6 01       	movw	r26, r12
     22a:	ed 91       	ld	r30, X+
     22c:	fc 91       	ld	r31, X
     22e:	e0 16       	cp	r14, r16
     230:	f1 06       	cpc	r15, r17
     232:	49 f0       	breq	.+18     	; 0x246 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x80>
     234:	d7 01       	movw	r26, r14
     236:	6d 91       	ld	r22, X+
     238:	7d 01       	movw	r14, r26
     23a:	04 80       	ldd	r0, Z+4	; 0x04
     23c:	f5 81       	ldd	r31, Z+5	; 0x05
     23e:	e0 2d       	mov	r30, r0
     240:	c6 01       	movw	r24, r12
     242:	09 95       	icall
     244:	f1 cf       	rjmp	.-30     	; 0x228 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x62>
     246:	02 80       	ldd	r0, Z+2	; 0x02
     248:	f3 81       	ldd	r31, Z+3	; 0x03
     24a:	e0 2d       	mov	r30, r0
     24c:	c6 01       	movw	r24, r12
     24e:	0f 90       	pop	r0
     250:	0f 90       	pop	r0
     252:	0f 90       	pop	r0
     254:	0f 90       	pop	r0
     256:	df 91       	pop	r29
     258:	cf 91       	pop	r28
     25a:	1f 91       	pop	r17
     25c:	0f 91       	pop	r16
     25e:	ff 90       	pop	r15
     260:	ef 90       	pop	r14
     262:	df 90       	pop	r13
     264:	cf 90       	pop	r12
     266:	09 94       	ijmp

00000268 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE8read_regEhh>:
     268:	ef 92       	push	r14
     26a:	ff 92       	push	r15
     26c:	1f 93       	push	r17
     26e:	cf 93       	push	r28
     270:	df 93       	push	r29
     272:	1f 92       	push	r1
     274:	cd b7       	in	r28, 0x3d	; 61
     276:	de b7       	in	r29, 0x3e	; 62
     278:	7c 01       	movw	r14, r24
     27a:	16 2f       	mov	r17, r22
     27c:	dc 01       	movw	r26, r24
     27e:	ed 91       	ld	r30, X+
     280:	fc 91       	ld	r31, X
     282:	01 90       	ld	r0, Z+
     284:	f0 81       	ld	r31, Z
     286:	e0 2d       	mov	r30, r0
     288:	49 83       	std	Y+1, r20	; 0x01
     28a:	09 95       	icall
     28c:	d7 01       	movw	r26, r14
     28e:	ed 91       	ld	r30, X+
     290:	fc 91       	ld	r31, X
     292:	04 80       	ldd	r0, Z+4	; 0x04
     294:	f5 81       	ldd	r31, Z+5	; 0x05
     296:	e0 2d       	mov	r30, r0
     298:	61 2f       	mov	r22, r17
     29a:	c7 01       	movw	r24, r14
     29c:	09 95       	icall
     29e:	d7 01       	movw	r26, r14
     2a0:	ed 91       	ld	r30, X+
     2a2:	fc 91       	ld	r31, X
     2a4:	04 80       	ldd	r0, Z+4	; 0x04
     2a6:	f5 81       	ldd	r31, Z+5	; 0x05
     2a8:	e0 2d       	mov	r30, r0
     2aa:	49 81       	ldd	r20, Y+1	; 0x01
     2ac:	64 2f       	mov	r22, r20
     2ae:	c7 01       	movw	r24, r14
     2b0:	09 95       	icall
     2b2:	d7 01       	movw	r26, r14
     2b4:	ed 91       	ld	r30, X+
     2b6:	fc 91       	ld	r31, X
     2b8:	01 90       	ld	r0, Z+
     2ba:	f0 81       	ld	r31, Z
     2bc:	e0 2d       	mov	r30, r0
     2be:	c7 01       	movw	r24, r14
     2c0:	09 95       	icall
     2c2:	d7 01       	movw	r26, r14
     2c4:	ed 91       	ld	r30, X+
     2c6:	fc 91       	ld	r31, X
     2c8:	61 2f       	mov	r22, r17
     2ca:	61 60       	ori	r22, 0x01	; 1
     2cc:	04 80       	ldd	r0, Z+4	; 0x04
     2ce:	f5 81       	ldd	r31, Z+5	; 0x05
     2d0:	e0 2d       	mov	r30, r0
     2d2:	c7 01       	movw	r24, r14
     2d4:	09 95       	icall
     2d6:	d7 01       	movw	r26, r14
     2d8:	ed 91       	ld	r30, X+
     2da:	fc 91       	ld	r31, X
     2dc:	06 80       	ldd	r0, Z+6	; 0x06
     2de:	f7 81       	ldd	r31, Z+7	; 0x07
     2e0:	e0 2d       	mov	r30, r0
     2e2:	60 e0       	ldi	r22, 0x00	; 0
     2e4:	c7 01       	movw	r24, r14
     2e6:	09 95       	icall
     2e8:	18 2f       	mov	r17, r24
     2ea:	d7 01       	movw	r26, r14
     2ec:	ed 91       	ld	r30, X+
     2ee:	fc 91       	ld	r31, X
     2f0:	02 80       	ldd	r0, Z+2	; 0x02
     2f2:	f3 81       	ldd	r31, Z+3	; 0x03
     2f4:	e0 2d       	mov	r30, r0
     2f6:	c7 01       	movw	r24, r14
     2f8:	09 95       	icall
     2fa:	81 2f       	mov	r24, r17
     2fc:	0f 90       	pop	r0
     2fe:	df 91       	pop	r29
     300:	cf 91       	pop	r28
     302:	1f 91       	pop	r17
     304:	ff 90       	pop	r15
     306:	ef 90       	pop	r14
     308:	08 95       	ret

0000030a <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE14read_reg_16bitEhh>:
     30a:	ef 92       	push	r14
     30c:	ff 92       	push	r15
     30e:	0f 93       	push	r16
     310:	1f 93       	push	r17
     312:	cf 93       	push	r28
     314:	df 93       	push	r29
     316:	1f 92       	push	r1
     318:	cd b7       	in	r28, 0x3d	; 61
     31a:	de b7       	in	r29, 0x3e	; 62
     31c:	7c 01       	movw	r14, r24
     31e:	16 2f       	mov	r17, r22
     320:	dc 01       	movw	r26, r24
     322:	ed 91       	ld	r30, X+
     324:	fc 91       	ld	r31, X
     326:	01 90       	ld	r0, Z+
     328:	f0 81       	ld	r31, Z
     32a:	e0 2d       	mov	r30, r0
     32c:	49 83       	std	Y+1, r20	; 0x01
     32e:	09 95       	icall
     330:	d7 01       	movw	r26, r14
     332:	ed 91       	ld	r30, X+
     334:	fc 91       	ld	r31, X
     336:	04 80       	ldd	r0, Z+4	; 0x04
     338:	f5 81       	ldd	r31, Z+5	; 0x05
     33a:	e0 2d       	mov	r30, r0
     33c:	61 2f       	mov	r22, r17
     33e:	c7 01       	movw	r24, r14
     340:	09 95       	icall
     342:	d7 01       	movw	r26, r14
     344:	ed 91       	ld	r30, X+
     346:	fc 91       	ld	r31, X
     348:	04 80       	ldd	r0, Z+4	; 0x04
     34a:	f5 81       	ldd	r31, Z+5	; 0x05
     34c:	e0 2d       	mov	r30, r0
     34e:	49 81       	ldd	r20, Y+1	; 0x01
     350:	64 2f       	mov	r22, r20
     352:	c7 01       	movw	r24, r14
     354:	09 95       	icall
     356:	d7 01       	movw	r26, r14
     358:	ed 91       	ld	r30, X+
     35a:	fc 91       	ld	r31, X
     35c:	01 90       	ld	r0, Z+
     35e:	f0 81       	ld	r31, Z
     360:	e0 2d       	mov	r30, r0
     362:	c7 01       	movw	r24, r14
     364:	09 95       	icall
     366:	d7 01       	movw	r26, r14
     368:	ed 91       	ld	r30, X+
     36a:	fc 91       	ld	r31, X
     36c:	61 2f       	mov	r22, r17
     36e:	61 60       	ori	r22, 0x01	; 1
     370:	04 80       	ldd	r0, Z+4	; 0x04
     372:	f5 81       	ldd	r31, Z+5	; 0x05
     374:	e0 2d       	mov	r30, r0
     376:	c7 01       	movw	r24, r14
     378:	09 95       	icall
     37a:	d7 01       	movw	r26, r14
     37c:	ed 91       	ld	r30, X+
     37e:	fc 91       	ld	r31, X
     380:	06 80       	ldd	r0, Z+6	; 0x06
     382:	f7 81       	ldd	r31, Z+7	; 0x07
     384:	e0 2d       	mov	r30, r0
     386:	61 e0       	ldi	r22, 0x01	; 1
     388:	c7 01       	movw	r24, r14
     38a:	09 95       	icall
     38c:	08 2f       	mov	r16, r24
     38e:	10 e0       	ldi	r17, 0x00	; 0
     390:	10 2f       	mov	r17, r16
     392:	00 27       	eor	r16, r16
     394:	d7 01       	movw	r26, r14
     396:	ed 91       	ld	r30, X+
     398:	fc 91       	ld	r31, X
     39a:	06 80       	ldd	r0, Z+6	; 0x06
     39c:	f7 81       	ldd	r31, Z+7	; 0x07
     39e:	e0 2d       	mov	r30, r0
     3a0:	60 e0       	ldi	r22, 0x00	; 0
     3a2:	c7 01       	movw	r24, r14
     3a4:	09 95       	icall
     3a6:	08 2b       	or	r16, r24
     3a8:	d7 01       	movw	r26, r14
     3aa:	ed 91       	ld	r30, X+
     3ac:	fc 91       	ld	r31, X
     3ae:	02 80       	ldd	r0, Z+2	; 0x02
     3b0:	f3 81       	ldd	r31, Z+3	; 0x03
     3b2:	e0 2d       	mov	r30, r0
     3b4:	c7 01       	movw	r24, r14
     3b6:	09 95       	icall
     3b8:	c8 01       	movw	r24, r16
     3ba:	0f 90       	pop	r0
     3bc:	df 91       	pop	r29
     3be:	cf 91       	pop	r28
     3c0:	1f 91       	pop	r17
     3c2:	0f 91       	pop	r16
     3c4:	ff 90       	pop	r15
     3c6:	ef 90       	pop	r14
     3c8:	08 95       	ret

000003ca <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE14read_reg_multiEhhPhj>:
     3ca:	cf 92       	push	r12
     3cc:	df 92       	push	r13
     3ce:	ef 92       	push	r14
     3d0:	ff 92       	push	r15
     3d2:	0f 93       	push	r16
     3d4:	1f 93       	push	r17
     3d6:	cf 93       	push	r28
     3d8:	df 93       	push	r29
     3da:	00 d0       	rcall	.+0      	; 0x3dc <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x12>
     3dc:	1f 92       	push	r1
     3de:	cd b7       	in	r28, 0x3d	; 61
     3e0:	de b7       	in	r29, 0x3e	; 62
     3e2:	6c 01       	movw	r12, r24
     3e4:	f6 2e       	mov	r15, r22
     3e6:	dc 01       	movw	r26, r24
     3e8:	ed 91       	ld	r30, X+
     3ea:	fc 91       	ld	r31, X
     3ec:	01 90       	ld	r0, Z+
     3ee:	f0 81       	ld	r31, Z
     3f0:	e0 2d       	mov	r30, r0
     3f2:	2a 83       	std	Y+2, r18	; 0x02
     3f4:	3b 83       	std	Y+3, r19	; 0x03
     3f6:	49 83       	std	Y+1, r20	; 0x01
     3f8:	09 95       	icall
     3fa:	d6 01       	movw	r26, r12
     3fc:	ed 91       	ld	r30, X+
     3fe:	fc 91       	ld	r31, X
     400:	04 80       	ldd	r0, Z+4	; 0x04
     402:	f5 81       	ldd	r31, Z+5	; 0x05
     404:	e0 2d       	mov	r30, r0
     406:	6f 2d       	mov	r22, r15
     408:	c6 01       	movw	r24, r12
     40a:	09 95       	icall
     40c:	d6 01       	movw	r26, r12
     40e:	ed 91       	ld	r30, X+
     410:	fc 91       	ld	r31, X
     412:	04 80       	ldd	r0, Z+4	; 0x04
     414:	f5 81       	ldd	r31, Z+5	; 0x05
     416:	e0 2d       	mov	r30, r0
     418:	49 81       	ldd	r20, Y+1	; 0x01
     41a:	64 2f       	mov	r22, r20
     41c:	c6 01       	movw	r24, r12
     41e:	09 95       	icall
     420:	d6 01       	movw	r26, r12
     422:	ed 91       	ld	r30, X+
     424:	fc 91       	ld	r31, X
     426:	01 90       	ld	r0, Z+
     428:	f0 81       	ld	r31, Z
     42a:	e0 2d       	mov	r30, r0
     42c:	c6 01       	movw	r24, r12
     42e:	09 95       	icall
     430:	d6 01       	movw	r26, r12
     432:	ed 91       	ld	r30, X+
     434:	fc 91       	ld	r31, X
     436:	6f 2d       	mov	r22, r15
     438:	61 60       	ori	r22, 0x01	; 1
     43a:	04 80       	ldd	r0, Z+4	; 0x04
     43c:	f5 81       	ldd	r31, Z+5	; 0x05
     43e:	e0 2d       	mov	r30, r0
     440:	c6 01       	movw	r24, r12
     442:	09 95       	icall
     444:	2a 81       	ldd	r18, Y+2	; 0x02
     446:	e2 2e       	mov	r14, r18
     448:	3b 81       	ldd	r19, Y+3	; 0x03
     44a:	f3 2e       	mov	r15, r19
     44c:	0e 0d       	add	r16, r14
     44e:	1f 1d       	adc	r17, r15
     450:	d6 01       	movw	r26, r12
     452:	ed 91       	ld	r30, X+
     454:	fc 91       	ld	r31, X
     456:	e0 16       	cp	r14, r16
     458:	f1 06       	cpc	r15, r17
     45a:	51 f0       	breq	.+20     	; 0x470 <__stack+0x11>
     45c:	06 80       	ldd	r0, Z+6	; 0x06
     45e:	f7 81       	ldd	r31, Z+7	; 0x07
     460:	e0 2d       	mov	r30, r0
     462:	61 e0       	ldi	r22, 0x01	; 1
     464:	c6 01       	movw	r24, r12
     466:	09 95       	icall
     468:	f7 01       	movw	r30, r14
     46a:	81 93       	st	Z+, r24
     46c:	7f 01       	movw	r14, r30
     46e:	f0 cf       	rjmp	.-32     	; 0x450 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x86>
     470:	02 80       	ldd	r0, Z+2	; 0x02
     472:	f3 81       	ldd	r31, Z+3	; 0x03
     474:	e0 2d       	mov	r30, r0
     476:	c6 01       	movw	r24, r12
     478:	0f 90       	pop	r0
     47a:	0f 90       	pop	r0
     47c:	0f 90       	pop	r0
     47e:	df 91       	pop	r29
     480:	cf 91       	pop	r28
     482:	1f 91       	pop	r17
     484:	0f 91       	pop	r16
     486:	ff 90       	pop	r15
     488:	ef 90       	pop	r14
     48a:	df 90       	pop	r13
     48c:	cf 90       	pop	r12
     48e:	09 94       	ijmp

00000490 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE9write_regEhhh>:
     490:	0f 93       	push	r16
     492:	1f 93       	push	r17
     494:	cf 93       	push	r28
     496:	df 93       	push	r29
     498:	00 d0       	rcall	.+0      	; 0x49a <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE9write_regEhhh+0xa>
     49a:	1f 92       	push	r1
     49c:	cd b7       	in	r28, 0x3d	; 61
     49e:	de b7       	in	r29, 0x3e	; 62
     4a0:	8c 01       	movw	r16, r24
     4a2:	dc 01       	movw	r26, r24
     4a4:	ed 91       	ld	r30, X+
     4a6:	fc 91       	ld	r31, X
     4a8:	01 90       	ld	r0, Z+
     4aa:	f0 81       	ld	r31, Z
     4ac:	e0 2d       	mov	r30, r0
     4ae:	2b 83       	std	Y+3, r18	; 0x03
     4b0:	4a 83       	std	Y+2, r20	; 0x02
     4b2:	69 83       	std	Y+1, r22	; 0x01
     4b4:	09 95       	icall
     4b6:	d8 01       	movw	r26, r16
     4b8:	ed 91       	ld	r30, X+
     4ba:	fc 91       	ld	r31, X
     4bc:	04 80       	ldd	r0, Z+4	; 0x04
     4be:	f5 81       	ldd	r31, Z+5	; 0x05
     4c0:	e0 2d       	mov	r30, r0
     4c2:	69 81       	ldd	r22, Y+1	; 0x01
     4c4:	c8 01       	movw	r24, r16
     4c6:	09 95       	icall
     4c8:	d8 01       	movw	r26, r16
     4ca:	ed 91       	ld	r30, X+
     4cc:	fc 91       	ld	r31, X
     4ce:	04 80       	ldd	r0, Z+4	; 0x04
     4d0:	f5 81       	ldd	r31, Z+5	; 0x05
     4d2:	e0 2d       	mov	r30, r0
     4d4:	4a 81       	ldd	r20, Y+2	; 0x02
     4d6:	64 2f       	mov	r22, r20
     4d8:	c8 01       	movw	r24, r16
     4da:	09 95       	icall
     4dc:	d8 01       	movw	r26, r16
     4de:	ed 91       	ld	r30, X+
     4e0:	fc 91       	ld	r31, X
     4e2:	04 80       	ldd	r0, Z+4	; 0x04
     4e4:	f5 81       	ldd	r31, Z+5	; 0x05
     4e6:	e0 2d       	mov	r30, r0
     4e8:	2b 81       	ldd	r18, Y+3	; 0x03
     4ea:	62 2f       	mov	r22, r18
     4ec:	c8 01       	movw	r24, r16
     4ee:	09 95       	icall
     4f0:	d8 01       	movw	r26, r16
     4f2:	ed 91       	ld	r30, X+
     4f4:	fc 91       	ld	r31, X
     4f6:	02 80       	ldd	r0, Z+2	; 0x02
     4f8:	f3 81       	ldd	r31, Z+3	; 0x03
     4fa:	e0 2d       	mov	r30, r0
     4fc:	c8 01       	movw	r24, r16
     4fe:	0f 90       	pop	r0
     500:	0f 90       	pop	r0
     502:	0f 90       	pop	r0
     504:	df 91       	pop	r29
     506:	cf 91       	pop	r28
     508:	1f 91       	pop	r17
     50a:	0f 91       	pop	r16
     50c:	09 94       	ijmp

0000050e <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE15write_reg_16bitEhhj>:
     50e:	0f 93       	push	r16
     510:	1f 93       	push	r17
     512:	cf 93       	push	r28
     514:	df 93       	push	r29
     516:	00 d0       	rcall	.+0      	; 0x518 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xa>
     518:	00 d0       	rcall	.+0      	; 0x51a <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xc>
     51a:	cd b7       	in	r28, 0x3d	; 61
     51c:	de b7       	in	r29, 0x3e	; 62
     51e:	8c 01       	movw	r16, r24
     520:	dc 01       	movw	r26, r24
     522:	ed 91       	ld	r30, X+
     524:	fc 91       	ld	r31, X
     526:	01 90       	ld	r0, Z+
     528:	f0 81       	ld	r31, Z
     52a:	e0 2d       	mov	r30, r0
     52c:	2c 83       	std	Y+4, r18	; 0x04
     52e:	3b 83       	std	Y+3, r19	; 0x03
     530:	4a 83       	std	Y+2, r20	; 0x02
     532:	69 83       	std	Y+1, r22	; 0x01
     534:	09 95       	icall
     536:	d8 01       	movw	r26, r16
     538:	ed 91       	ld	r30, X+
     53a:	fc 91       	ld	r31, X
     53c:	04 80       	ldd	r0, Z+4	; 0x04
     53e:	f5 81       	ldd	r31, Z+5	; 0x05
     540:	e0 2d       	mov	r30, r0
     542:	69 81       	ldd	r22, Y+1	; 0x01
     544:	c8 01       	movw	r24, r16
     546:	09 95       	icall
     548:	d8 01       	movw	r26, r16
     54a:	ed 91       	ld	r30, X+
     54c:	fc 91       	ld	r31, X
     54e:	04 80       	ldd	r0, Z+4	; 0x04
     550:	f5 81       	ldd	r31, Z+5	; 0x05
     552:	e0 2d       	mov	r30, r0
     554:	4a 81       	ldd	r20, Y+2	; 0x02
     556:	64 2f       	mov	r22, r20
     558:	c8 01       	movw	r24, r16
     55a:	09 95       	icall
     55c:	d8 01       	movw	r26, r16
     55e:	ed 91       	ld	r30, X+
     560:	fc 91       	ld	r31, X
     562:	04 80       	ldd	r0, Z+4	; 0x04
     564:	f5 81       	ldd	r31, Z+5	; 0x05
     566:	e0 2d       	mov	r30, r0
     568:	3b 81       	ldd	r19, Y+3	; 0x03
     56a:	63 2f       	mov	r22, r19
     56c:	c8 01       	movw	r24, r16
     56e:	09 95       	icall
     570:	d8 01       	movw	r26, r16
     572:	ed 91       	ld	r30, X+
     574:	fc 91       	ld	r31, X
     576:	04 80       	ldd	r0, Z+4	; 0x04
     578:	f5 81       	ldd	r31, Z+5	; 0x05
     57a:	e0 2d       	mov	r30, r0
     57c:	2c 81       	ldd	r18, Y+4	; 0x04
     57e:	62 2f       	mov	r22, r18
     580:	c8 01       	movw	r24, r16
     582:	09 95       	icall
     584:	d8 01       	movw	r26, r16
     586:	ed 91       	ld	r30, X+
     588:	fc 91       	ld	r31, X
     58a:	02 80       	ldd	r0, Z+2	; 0x02
     58c:	f3 81       	ldd	r31, Z+3	; 0x03
     58e:	e0 2d       	mov	r30, r0
     590:	c8 01       	movw	r24, r16
     592:	0f 90       	pop	r0
     594:	0f 90       	pop	r0
     596:	0f 90       	pop	r0
     598:	0f 90       	pop	r0
     59a:	df 91       	pop	r29
     59c:	cf 91       	pop	r28
     59e:	1f 91       	pop	r17
     5a0:	0f 91       	pop	r16
     5a2:	09 94       	ijmp

000005a4 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE15write_reg_multiEhhPhj>:
     5a4:	cf 92       	push	r12
     5a6:	df 92       	push	r13
     5a8:	ef 92       	push	r14
     5aa:	ff 92       	push	r15
     5ac:	0f 93       	push	r16
     5ae:	1f 93       	push	r17
     5b0:	cf 93       	push	r28
     5b2:	df 93       	push	r29
     5b4:	00 d0       	rcall	.+0      	; 0x5b6 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x12>
     5b6:	00 d0       	rcall	.+0      	; 0x5b8 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x14>
     5b8:	cd b7       	in	r28, 0x3d	; 61
     5ba:	de b7       	in	r29, 0x3e	; 62
     5bc:	6c 01       	movw	r12, r24
     5be:	dc 01       	movw	r26, r24
     5c0:	ed 91       	ld	r30, X+
     5c2:	fc 91       	ld	r31, X
     5c4:	01 90       	ld	r0, Z+
     5c6:	f0 81       	ld	r31, Z
     5c8:	e0 2d       	mov	r30, r0
     5ca:	2b 83       	std	Y+3, r18	; 0x03
     5cc:	3c 83       	std	Y+4, r19	; 0x04
     5ce:	4a 83       	std	Y+2, r20	; 0x02
     5d0:	69 83       	std	Y+1, r22	; 0x01
     5d2:	09 95       	icall
     5d4:	d6 01       	movw	r26, r12
     5d6:	ed 91       	ld	r30, X+
     5d8:	fc 91       	ld	r31, X
     5da:	04 80       	ldd	r0, Z+4	; 0x04
     5dc:	f5 81       	ldd	r31, Z+5	; 0x05
     5de:	e0 2d       	mov	r30, r0
     5e0:	69 81       	ldd	r22, Y+1	; 0x01
     5e2:	c6 01       	movw	r24, r12
     5e4:	09 95       	icall
     5e6:	d6 01       	movw	r26, r12
     5e8:	ed 91       	ld	r30, X+
     5ea:	fc 91       	ld	r31, X
     5ec:	04 80       	ldd	r0, Z+4	; 0x04
     5ee:	f5 81       	ldd	r31, Z+5	; 0x05
     5f0:	e0 2d       	mov	r30, r0
     5f2:	4a 81       	ldd	r20, Y+2	; 0x02
     5f4:	64 2f       	mov	r22, r20
     5f6:	c6 01       	movw	r24, r12
     5f8:	09 95       	icall
     5fa:	2b 81       	ldd	r18, Y+3	; 0x03
     5fc:	e2 2e       	mov	r14, r18
     5fe:	3c 81       	ldd	r19, Y+4	; 0x04
     600:	f3 2e       	mov	r15, r19
     602:	0e 0d       	add	r16, r14
     604:	1f 1d       	adc	r17, r15
     606:	d6 01       	movw	r26, r12
     608:	ed 91       	ld	r30, X+
     60a:	fc 91       	ld	r31, X
     60c:	e0 16       	cp	r14, r16
     60e:	f1 06       	cpc	r15, r17
     610:	49 f0       	breq	.+18     	; 0x624 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x80>
     612:	d7 01       	movw	r26, r14
     614:	6d 91       	ld	r22, X+
     616:	7d 01       	movw	r14, r26
     618:	04 80       	ldd	r0, Z+4	; 0x04
     61a:	f5 81       	ldd	r31, Z+5	; 0x05
     61c:	e0 2d       	mov	r30, r0
     61e:	c6 01       	movw	r24, r12
     620:	09 95       	icall
     622:	f1 cf       	rjmp	.-30     	; 0x606 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x62>
     624:	02 80       	ldd	r0, Z+2	; 0x02
     626:	f3 81       	ldd	r31, Z+3	; 0x03
     628:	e0 2d       	mov	r30, r0
     62a:	c6 01       	movw	r24, r12
     62c:	0f 90       	pop	r0
     62e:	0f 90       	pop	r0
     630:	0f 90       	pop	r0
     632:	0f 90       	pop	r0
     634:	df 91       	pop	r29
     636:	cf 91       	pop	r28
     638:	1f 91       	pop	r17
     63a:	0f 91       	pop	r16
     63c:	ff 90       	pop	r15
     63e:	ef 90       	pop	r14
     640:	df 90       	pop	r13
     642:	cf 90       	pop	r12
     644:	09 94       	ijmp

00000646 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE8read_regEhh>:
     646:	ef 92       	push	r14
     648:	ff 92       	push	r15
     64a:	1f 93       	push	r17
     64c:	cf 93       	push	r28
     64e:	df 93       	push	r29
     650:	1f 92       	push	r1
     652:	cd b7       	in	r28, 0x3d	; 61
     654:	de b7       	in	r29, 0x3e	; 62
     656:	7c 01       	movw	r14, r24
     658:	16 2f       	mov	r17, r22
     65a:	dc 01       	movw	r26, r24
     65c:	ed 91       	ld	r30, X+
     65e:	fc 91       	ld	r31, X
     660:	01 90       	ld	r0, Z+
     662:	f0 81       	ld	r31, Z
     664:	e0 2d       	mov	r30, r0
     666:	49 83       	std	Y+1, r20	; 0x01
     668:	09 95       	icall
     66a:	d7 01       	movw	r26, r14
     66c:	ed 91       	ld	r30, X+
     66e:	fc 91       	ld	r31, X
     670:	04 80       	ldd	r0, Z+4	; 0x04
     672:	f5 81       	ldd	r31, Z+5	; 0x05
     674:	e0 2d       	mov	r30, r0
     676:	61 2f       	mov	r22, r17
     678:	c7 01       	movw	r24, r14
     67a:	09 95       	icall
     67c:	d7 01       	movw	r26, r14
     67e:	ed 91       	ld	r30, X+
     680:	fc 91       	ld	r31, X
     682:	04 80       	ldd	r0, Z+4	; 0x04
     684:	f5 81       	ldd	r31, Z+5	; 0x05
     686:	e0 2d       	mov	r30, r0
     688:	49 81       	ldd	r20, Y+1	; 0x01
     68a:	64 2f       	mov	r22, r20
     68c:	c7 01       	movw	r24, r14
     68e:	09 95       	icall
     690:	d7 01       	movw	r26, r14
     692:	ed 91       	ld	r30, X+
     694:	fc 91       	ld	r31, X
     696:	01 90       	ld	r0, Z+
     698:	f0 81       	ld	r31, Z
     69a:	e0 2d       	mov	r30, r0
     69c:	c7 01       	movw	r24, r14
     69e:	09 95       	icall
     6a0:	d7 01       	movw	r26, r14
     6a2:	ed 91       	ld	r30, X+
     6a4:	fc 91       	ld	r31, X
     6a6:	61 2f       	mov	r22, r17
     6a8:	61 60       	ori	r22, 0x01	; 1
     6aa:	04 80       	ldd	r0, Z+4	; 0x04
     6ac:	f5 81       	ldd	r31, Z+5	; 0x05
     6ae:	e0 2d       	mov	r30, r0
     6b0:	c7 01       	movw	r24, r14
     6b2:	09 95       	icall
     6b4:	d7 01       	movw	r26, r14
     6b6:	ed 91       	ld	r30, X+
     6b8:	fc 91       	ld	r31, X
     6ba:	06 80       	ldd	r0, Z+6	; 0x06
     6bc:	f7 81       	ldd	r31, Z+7	; 0x07
     6be:	e0 2d       	mov	r30, r0
     6c0:	60 e0       	ldi	r22, 0x00	; 0
     6c2:	c7 01       	movw	r24, r14
     6c4:	09 95       	icall
     6c6:	18 2f       	mov	r17, r24
     6c8:	d7 01       	movw	r26, r14
     6ca:	ed 91       	ld	r30, X+
     6cc:	fc 91       	ld	r31, X
     6ce:	02 80       	ldd	r0, Z+2	; 0x02
     6d0:	f3 81       	ldd	r31, Z+3	; 0x03
     6d2:	e0 2d       	mov	r30, r0
     6d4:	c7 01       	movw	r24, r14
     6d6:	09 95       	icall
     6d8:	81 2f       	mov	r24, r17
     6da:	0f 90       	pop	r0
     6dc:	df 91       	pop	r29
     6de:	cf 91       	pop	r28
     6e0:	1f 91       	pop	r17
     6e2:	ff 90       	pop	r15
     6e4:	ef 90       	pop	r14
     6e6:	08 95       	ret

000006e8 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE14read_reg_16bitEhh>:
     6e8:	ef 92       	push	r14
     6ea:	ff 92       	push	r15
     6ec:	0f 93       	push	r16
     6ee:	1f 93       	push	r17
     6f0:	cf 93       	push	r28
     6f2:	df 93       	push	r29
     6f4:	1f 92       	push	r1
     6f6:	cd b7       	in	r28, 0x3d	; 61
     6f8:	de b7       	in	r29, 0x3e	; 62
     6fa:	7c 01       	movw	r14, r24
     6fc:	16 2f       	mov	r17, r22
     6fe:	dc 01       	movw	r26, r24
     700:	ed 91       	ld	r30, X+
     702:	fc 91       	ld	r31, X
     704:	01 90       	ld	r0, Z+
     706:	f0 81       	ld	r31, Z
     708:	e0 2d       	mov	r30, r0
     70a:	49 83       	std	Y+1, r20	; 0x01
     70c:	09 95       	icall
     70e:	d7 01       	movw	r26, r14
     710:	ed 91       	ld	r30, X+
     712:	fc 91       	ld	r31, X
     714:	04 80       	ldd	r0, Z+4	; 0x04
     716:	f5 81       	ldd	r31, Z+5	; 0x05
     718:	e0 2d       	mov	r30, r0
     71a:	61 2f       	mov	r22, r17
     71c:	c7 01       	movw	r24, r14
     71e:	09 95       	icall
     720:	d7 01       	movw	r26, r14
     722:	ed 91       	ld	r30, X+
     724:	fc 91       	ld	r31, X
     726:	04 80       	ldd	r0, Z+4	; 0x04
     728:	f5 81       	ldd	r31, Z+5	; 0x05
     72a:	e0 2d       	mov	r30, r0
     72c:	49 81       	ldd	r20, Y+1	; 0x01
     72e:	64 2f       	mov	r22, r20
     730:	c7 01       	movw	r24, r14
     732:	09 95       	icall
     734:	d7 01       	movw	r26, r14
     736:	ed 91       	ld	r30, X+
     738:	fc 91       	ld	r31, X
     73a:	01 90       	ld	r0, Z+
     73c:	f0 81       	ld	r31, Z
     73e:	e0 2d       	mov	r30, r0
     740:	c7 01       	movw	r24, r14
     742:	09 95       	icall
     744:	d7 01       	movw	r26, r14
     746:	ed 91       	ld	r30, X+
     748:	fc 91       	ld	r31, X
     74a:	61 2f       	mov	r22, r17
     74c:	61 60       	ori	r22, 0x01	; 1
     74e:	04 80       	ldd	r0, Z+4	; 0x04
     750:	f5 81       	ldd	r31, Z+5	; 0x05
     752:	e0 2d       	mov	r30, r0
     754:	c7 01       	movw	r24, r14
     756:	09 95       	icall
     758:	d7 01       	movw	r26, r14
     75a:	ed 91       	ld	r30, X+
     75c:	fc 91       	ld	r31, X
     75e:	06 80       	ldd	r0, Z+6	; 0x06
     760:	f7 81       	ldd	r31, Z+7	; 0x07
     762:	e0 2d       	mov	r30, r0
     764:	61 e0       	ldi	r22, 0x01	; 1
     766:	c7 01       	movw	r24, r14
     768:	09 95       	icall
     76a:	08 2f       	mov	r16, r24
     76c:	10 e0       	ldi	r17, 0x00	; 0
     76e:	10 2f       	mov	r17, r16
     770:	00 27       	eor	r16, r16
     772:	d7 01       	movw	r26, r14
     774:	ed 91       	ld	r30, X+
     776:	fc 91       	ld	r31, X
     778:	06 80       	ldd	r0, Z+6	; 0x06
     77a:	f7 81       	ldd	r31, Z+7	; 0x07
     77c:	e0 2d       	mov	r30, r0
     77e:	60 e0       	ldi	r22, 0x00	; 0
     780:	c7 01       	movw	r24, r14
     782:	09 95       	icall
     784:	08 2b       	or	r16, r24
     786:	d7 01       	movw	r26, r14
     788:	ed 91       	ld	r30, X+
     78a:	fc 91       	ld	r31, X
     78c:	02 80       	ldd	r0, Z+2	; 0x02
     78e:	f3 81       	ldd	r31, Z+3	; 0x03
     790:	e0 2d       	mov	r30, r0
     792:	c7 01       	movw	r24, r14
     794:	09 95       	icall
     796:	c8 01       	movw	r24, r16
     798:	0f 90       	pop	r0
     79a:	df 91       	pop	r29
     79c:	cf 91       	pop	r28
     79e:	1f 91       	pop	r17
     7a0:	0f 91       	pop	r16
     7a2:	ff 90       	pop	r15
     7a4:	ef 90       	pop	r14
     7a6:	08 95       	ret

000007a8 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE14read_reg_multiEhhPhj>:
     7a8:	cf 92       	push	r12
     7aa:	df 92       	push	r13
     7ac:	ef 92       	push	r14
     7ae:	ff 92       	push	r15
     7b0:	0f 93       	push	r16
     7b2:	1f 93       	push	r17
     7b4:	cf 93       	push	r28
     7b6:	df 93       	push	r29
     7b8:	00 d0       	rcall	.+0      	; 0x7ba <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x12>
     7ba:	1f 92       	push	r1
     7bc:	cd b7       	in	r28, 0x3d	; 61
     7be:	de b7       	in	r29, 0x3e	; 62
     7c0:	6c 01       	movw	r12, r24
     7c2:	f6 2e       	mov	r15, r22
     7c4:	dc 01       	movw	r26, r24
     7c6:	ed 91       	ld	r30, X+
     7c8:	fc 91       	ld	r31, X
     7ca:	01 90       	ld	r0, Z+
     7cc:	f0 81       	ld	r31, Z
     7ce:	e0 2d       	mov	r30, r0
     7d0:	2a 83       	std	Y+2, r18	; 0x02
     7d2:	3b 83       	std	Y+3, r19	; 0x03
     7d4:	49 83       	std	Y+1, r20	; 0x01
     7d6:	09 95       	icall
     7d8:	d6 01       	movw	r26, r12
     7da:	ed 91       	ld	r30, X+
     7dc:	fc 91       	ld	r31, X
     7de:	04 80       	ldd	r0, Z+4	; 0x04
     7e0:	f5 81       	ldd	r31, Z+5	; 0x05
     7e2:	e0 2d       	mov	r30, r0
     7e4:	6f 2d       	mov	r22, r15
     7e6:	c6 01       	movw	r24, r12
     7e8:	09 95       	icall
     7ea:	d6 01       	movw	r26, r12
     7ec:	ed 91       	ld	r30, X+
     7ee:	fc 91       	ld	r31, X
     7f0:	04 80       	ldd	r0, Z+4	; 0x04
     7f2:	f5 81       	ldd	r31, Z+5	; 0x05
     7f4:	e0 2d       	mov	r30, r0
     7f6:	49 81       	ldd	r20, Y+1	; 0x01
     7f8:	64 2f       	mov	r22, r20
     7fa:	c6 01       	movw	r24, r12
     7fc:	09 95       	icall
     7fe:	d6 01       	movw	r26, r12
     800:	ed 91       	ld	r30, X+
     802:	fc 91       	ld	r31, X
     804:	01 90       	ld	r0, Z+
     806:	f0 81       	ld	r31, Z
     808:	e0 2d       	mov	r30, r0
     80a:	c6 01       	movw	r24, r12
     80c:	09 95       	icall
     80e:	d6 01       	movw	r26, r12
     810:	ed 91       	ld	r30, X+
     812:	fc 91       	ld	r31, X
     814:	6f 2d       	mov	r22, r15
     816:	61 60       	ori	r22, 0x01	; 1
     818:	04 80       	ldd	r0, Z+4	; 0x04
     81a:	f5 81       	ldd	r31, Z+5	; 0x05
     81c:	e0 2d       	mov	r30, r0
     81e:	c6 01       	movw	r24, r12
     820:	09 95       	icall
     822:	2a 81       	ldd	r18, Y+2	; 0x02
     824:	e2 2e       	mov	r14, r18
     826:	3b 81       	ldd	r19, Y+3	; 0x03
     828:	f3 2e       	mov	r15, r19
     82a:	0e 0d       	add	r16, r14
     82c:	1f 1d       	adc	r17, r15
     82e:	d6 01       	movw	r26, r12
     830:	ed 91       	ld	r30, X+
     832:	fc 91       	ld	r31, X
     834:	e0 16       	cp	r14, r16
     836:	f1 06       	cpc	r15, r17
     838:	51 f0       	breq	.+20     	; 0x84e <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0xa6>
     83a:	06 80       	ldd	r0, Z+6	; 0x06
     83c:	f7 81       	ldd	r31, Z+7	; 0x07
     83e:	e0 2d       	mov	r30, r0
     840:	61 e0       	ldi	r22, 0x01	; 1
     842:	c6 01       	movw	r24, r12
     844:	09 95       	icall
     846:	f7 01       	movw	r30, r14
     848:	81 93       	st	Z+, r24
     84a:	7f 01       	movw	r14, r30
     84c:	f0 cf       	rjmp	.-32     	; 0x82e <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x86>
     84e:	02 80       	ldd	r0, Z+2	; 0x02
     850:	f3 81       	ldd	r31, Z+3	; 0x03
     852:	e0 2d       	mov	r30, r0
     854:	c6 01       	movw	r24, r12
     856:	0f 90       	pop	r0
     858:	0f 90       	pop	r0
     85a:	0f 90       	pop	r0
     85c:	df 91       	pop	r29
     85e:	cf 91       	pop	r28
     860:	1f 91       	pop	r17
     862:	0f 91       	pop	r16
     864:	ff 90       	pop	r15
     866:	ef 90       	pop	r14
     868:	df 90       	pop	r13
     86a:	cf 90       	pop	r12
     86c:	09 94       	ijmp

0000086e <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE9write_regEhhh>:
     86e:	0f 93       	push	r16
     870:	1f 93       	push	r17
     872:	cf 93       	push	r28
     874:	df 93       	push	r29
     876:	00 d0       	rcall	.+0      	; 0x878 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE9write_regEhhh+0xa>
     878:	1f 92       	push	r1
     87a:	cd b7       	in	r28, 0x3d	; 61
     87c:	de b7       	in	r29, 0x3e	; 62
     87e:	8c 01       	movw	r16, r24
     880:	dc 01       	movw	r26, r24
     882:	ed 91       	ld	r30, X+
     884:	fc 91       	ld	r31, X
     886:	01 90       	ld	r0, Z+
     888:	f0 81       	ld	r31, Z
     88a:	e0 2d       	mov	r30, r0
     88c:	2b 83       	std	Y+3, r18	; 0x03
     88e:	4a 83       	std	Y+2, r20	; 0x02
     890:	69 83       	std	Y+1, r22	; 0x01
     892:	09 95       	icall
     894:	d8 01       	movw	r26, r16
     896:	ed 91       	ld	r30, X+
     898:	fc 91       	ld	r31, X
     89a:	04 80       	ldd	r0, Z+4	; 0x04
     89c:	f5 81       	ldd	r31, Z+5	; 0x05
     89e:	e0 2d       	mov	r30, r0
     8a0:	69 81       	ldd	r22, Y+1	; 0x01
     8a2:	c8 01       	movw	r24, r16
     8a4:	09 95       	icall
     8a6:	d8 01       	movw	r26, r16
     8a8:	ed 91       	ld	r30, X+
     8aa:	fc 91       	ld	r31, X
     8ac:	04 80       	ldd	r0, Z+4	; 0x04
     8ae:	f5 81       	ldd	r31, Z+5	; 0x05
     8b0:	e0 2d       	mov	r30, r0
     8b2:	4a 81       	ldd	r20, Y+2	; 0x02
     8b4:	64 2f       	mov	r22, r20
     8b6:	c8 01       	movw	r24, r16
     8b8:	09 95       	icall
     8ba:	d8 01       	movw	r26, r16
     8bc:	ed 91       	ld	r30, X+
     8be:	fc 91       	ld	r31, X
     8c0:	04 80       	ldd	r0, Z+4	; 0x04
     8c2:	f5 81       	ldd	r31, Z+5	; 0x05
     8c4:	e0 2d       	mov	r30, r0
     8c6:	2b 81       	ldd	r18, Y+3	; 0x03
     8c8:	62 2f       	mov	r22, r18
     8ca:	c8 01       	movw	r24, r16
     8cc:	09 95       	icall
     8ce:	d8 01       	movw	r26, r16
     8d0:	ed 91       	ld	r30, X+
     8d2:	fc 91       	ld	r31, X
     8d4:	02 80       	ldd	r0, Z+2	; 0x02
     8d6:	f3 81       	ldd	r31, Z+3	; 0x03
     8d8:	e0 2d       	mov	r30, r0
     8da:	c8 01       	movw	r24, r16
     8dc:	0f 90       	pop	r0
     8de:	0f 90       	pop	r0
     8e0:	0f 90       	pop	r0
     8e2:	df 91       	pop	r29
     8e4:	cf 91       	pop	r28
     8e6:	1f 91       	pop	r17
     8e8:	0f 91       	pop	r16
     8ea:	09 94       	ijmp

000008ec <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE15write_reg_16bitEhhj>:
     8ec:	0f 93       	push	r16
     8ee:	1f 93       	push	r17
     8f0:	cf 93       	push	r28
     8f2:	df 93       	push	r29
     8f4:	00 d0       	rcall	.+0      	; 0x8f6 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xa>
     8f6:	00 d0       	rcall	.+0      	; 0x8f8 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xc>
     8f8:	cd b7       	in	r28, 0x3d	; 61
     8fa:	de b7       	in	r29, 0x3e	; 62
     8fc:	8c 01       	movw	r16, r24
     8fe:	dc 01       	movw	r26, r24
     900:	ed 91       	ld	r30, X+
     902:	fc 91       	ld	r31, X
     904:	01 90       	ld	r0, Z+
     906:	f0 81       	ld	r31, Z
     908:	e0 2d       	mov	r30, r0
     90a:	2c 83       	std	Y+4, r18	; 0x04
     90c:	3b 83       	std	Y+3, r19	; 0x03
     90e:	4a 83       	std	Y+2, r20	; 0x02
     910:	69 83       	std	Y+1, r22	; 0x01
     912:	09 95       	icall
     914:	d8 01       	movw	r26, r16
     916:	ed 91       	ld	r30, X+
     918:	fc 91       	ld	r31, X
     91a:	04 80       	ldd	r0, Z+4	; 0x04
     91c:	f5 81       	ldd	r31, Z+5	; 0x05
     91e:	e0 2d       	mov	r30, r0
     920:	69 81       	ldd	r22, Y+1	; 0x01
     922:	c8 01       	movw	r24, r16
     924:	09 95       	icall
     926:	d8 01       	movw	r26, r16
     928:	ed 91       	ld	r30, X+
     92a:	fc 91       	ld	r31, X
     92c:	04 80       	ldd	r0, Z+4	; 0x04
     92e:	f5 81       	ldd	r31, Z+5	; 0x05
     930:	e0 2d       	mov	r30, r0
     932:	4a 81       	ldd	r20, Y+2	; 0x02
     934:	64 2f       	mov	r22, r20
     936:	c8 01       	movw	r24, r16
     938:	09 95       	icall
     93a:	d8 01       	movw	r26, r16
     93c:	ed 91       	ld	r30, X+
     93e:	fc 91       	ld	r31, X
     940:	04 80       	ldd	r0, Z+4	; 0x04
     942:	f5 81       	ldd	r31, Z+5	; 0x05
     944:	e0 2d       	mov	r30, r0
     946:	3b 81       	ldd	r19, Y+3	; 0x03
     948:	63 2f       	mov	r22, r19
     94a:	c8 01       	movw	r24, r16
     94c:	09 95       	icall
     94e:	d8 01       	movw	r26, r16
     950:	ed 91       	ld	r30, X+
     952:	fc 91       	ld	r31, X
     954:	04 80       	ldd	r0, Z+4	; 0x04
     956:	f5 81       	ldd	r31, Z+5	; 0x05
     958:	e0 2d       	mov	r30, r0
     95a:	2c 81       	ldd	r18, Y+4	; 0x04
     95c:	62 2f       	mov	r22, r18
     95e:	c8 01       	movw	r24, r16
     960:	09 95       	icall
     962:	d8 01       	movw	r26, r16
     964:	ed 91       	ld	r30, X+
     966:	fc 91       	ld	r31, X
     968:	02 80       	ldd	r0, Z+2	; 0x02
     96a:	f3 81       	ldd	r31, Z+3	; 0x03
     96c:	e0 2d       	mov	r30, r0
     96e:	c8 01       	movw	r24, r16
     970:	0f 90       	pop	r0
     972:	0f 90       	pop	r0
     974:	0f 90       	pop	r0
     976:	0f 90       	pop	r0
     978:	df 91       	pop	r29
     97a:	cf 91       	pop	r28
     97c:	1f 91       	pop	r17
     97e:	0f 91       	pop	r16
     980:	09 94       	ijmp

00000982 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE15write_reg_multiEhhPhj>:
     982:	cf 92       	push	r12
     984:	df 92       	push	r13
     986:	ef 92       	push	r14
     988:	ff 92       	push	r15
     98a:	0f 93       	push	r16
     98c:	1f 93       	push	r17
     98e:	cf 93       	push	r28
     990:	df 93       	push	r29
     992:	00 d0       	rcall	.+0      	; 0x994 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x12>
     994:	00 d0       	rcall	.+0      	; 0x996 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x14>
     996:	cd b7       	in	r28, 0x3d	; 61
     998:	de b7       	in	r29, 0x3e	; 62
     99a:	6c 01       	movw	r12, r24
     99c:	dc 01       	movw	r26, r24
     99e:	ed 91       	ld	r30, X+
     9a0:	fc 91       	ld	r31, X
     9a2:	01 90       	ld	r0, Z+
     9a4:	f0 81       	ld	r31, Z
     9a6:	e0 2d       	mov	r30, r0
     9a8:	2b 83       	std	Y+3, r18	; 0x03
     9aa:	3c 83       	std	Y+4, r19	; 0x04
     9ac:	4a 83       	std	Y+2, r20	; 0x02
     9ae:	69 83       	std	Y+1, r22	; 0x01
     9b0:	09 95       	icall
     9b2:	d6 01       	movw	r26, r12
     9b4:	ed 91       	ld	r30, X+
     9b6:	fc 91       	ld	r31, X
     9b8:	04 80       	ldd	r0, Z+4	; 0x04
     9ba:	f5 81       	ldd	r31, Z+5	; 0x05
     9bc:	e0 2d       	mov	r30, r0
     9be:	69 81       	ldd	r22, Y+1	; 0x01
     9c0:	c6 01       	movw	r24, r12
     9c2:	09 95       	icall
     9c4:	d6 01       	movw	r26, r12
     9c6:	ed 91       	ld	r30, X+
     9c8:	fc 91       	ld	r31, X
     9ca:	04 80       	ldd	r0, Z+4	; 0x04
     9cc:	f5 81       	ldd	r31, Z+5	; 0x05
     9ce:	e0 2d       	mov	r30, r0
     9d0:	4a 81       	ldd	r20, Y+2	; 0x02
     9d2:	64 2f       	mov	r22, r20
     9d4:	c6 01       	movw	r24, r12
     9d6:	09 95       	icall
     9d8:	2b 81       	ldd	r18, Y+3	; 0x03
     9da:	e2 2e       	mov	r14, r18
     9dc:	3c 81       	ldd	r19, Y+4	; 0x04
     9de:	f3 2e       	mov	r15, r19
     9e0:	0e 0d       	add	r16, r14
     9e2:	1f 1d       	adc	r17, r15
     9e4:	d6 01       	movw	r26, r12
     9e6:	ed 91       	ld	r30, X+
     9e8:	fc 91       	ld	r31, X
     9ea:	e0 16       	cp	r14, r16
     9ec:	f1 06       	cpc	r15, r17
     9ee:	49 f0       	breq	.+18     	; 0xa02 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x80>
     9f0:	d7 01       	movw	r26, r14
     9f2:	6d 91       	ld	r22, X+
     9f4:	7d 01       	movw	r14, r26
     9f6:	04 80       	ldd	r0, Z+4	; 0x04
     9f8:	f5 81       	ldd	r31, Z+5	; 0x05
     9fa:	e0 2d       	mov	r30, r0
     9fc:	c6 01       	movw	r24, r12
     9fe:	09 95       	icall
     a00:	f1 cf       	rjmp	.-30     	; 0x9e4 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x62>
     a02:	02 80       	ldd	r0, Z+2	; 0x02
     a04:	f3 81       	ldd	r31, Z+3	; 0x03
     a06:	e0 2d       	mov	r30, r0
     a08:	c6 01       	movw	r24, r12
     a0a:	0f 90       	pop	r0
     a0c:	0f 90       	pop	r0
     a0e:	0f 90       	pop	r0
     a10:	0f 90       	pop	r0
     a12:	df 91       	pop	r29
     a14:	cf 91       	pop	r28
     a16:	1f 91       	pop	r17
     a18:	0f 91       	pop	r16
     a1a:	ff 90       	pop	r15
     a1c:	ef 90       	pop	r14
     a1e:	df 90       	pop	r13
     a20:	cf 90       	pop	r12
     a22:	09 94       	ijmp

00000a24 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE8read_regEhh>:
     a24:	ef 92       	push	r14
     a26:	ff 92       	push	r15
     a28:	1f 93       	push	r17
     a2a:	cf 93       	push	r28
     a2c:	df 93       	push	r29
     a2e:	1f 92       	push	r1
     a30:	cd b7       	in	r28, 0x3d	; 61
     a32:	de b7       	in	r29, 0x3e	; 62
     a34:	7c 01       	movw	r14, r24
     a36:	16 2f       	mov	r17, r22
     a38:	dc 01       	movw	r26, r24
     a3a:	ed 91       	ld	r30, X+
     a3c:	fc 91       	ld	r31, X
     a3e:	01 90       	ld	r0, Z+
     a40:	f0 81       	ld	r31, Z
     a42:	e0 2d       	mov	r30, r0
     a44:	49 83       	std	Y+1, r20	; 0x01
     a46:	09 95       	icall
     a48:	d7 01       	movw	r26, r14
     a4a:	ed 91       	ld	r30, X+
     a4c:	fc 91       	ld	r31, X
     a4e:	04 80       	ldd	r0, Z+4	; 0x04
     a50:	f5 81       	ldd	r31, Z+5	; 0x05
     a52:	e0 2d       	mov	r30, r0
     a54:	61 2f       	mov	r22, r17
     a56:	c7 01       	movw	r24, r14
     a58:	09 95       	icall
     a5a:	d7 01       	movw	r26, r14
     a5c:	ed 91       	ld	r30, X+
     a5e:	fc 91       	ld	r31, X
     a60:	04 80       	ldd	r0, Z+4	; 0x04
     a62:	f5 81       	ldd	r31, Z+5	; 0x05
     a64:	e0 2d       	mov	r30, r0
     a66:	49 81       	ldd	r20, Y+1	; 0x01
     a68:	64 2f       	mov	r22, r20
     a6a:	c7 01       	movw	r24, r14
     a6c:	09 95       	icall
     a6e:	d7 01       	movw	r26, r14
     a70:	ed 91       	ld	r30, X+
     a72:	fc 91       	ld	r31, X
     a74:	01 90       	ld	r0, Z+
     a76:	f0 81       	ld	r31, Z
     a78:	e0 2d       	mov	r30, r0
     a7a:	c7 01       	movw	r24, r14
     a7c:	09 95       	icall
     a7e:	d7 01       	movw	r26, r14
     a80:	ed 91       	ld	r30, X+
     a82:	fc 91       	ld	r31, X
     a84:	61 2f       	mov	r22, r17
     a86:	61 60       	ori	r22, 0x01	; 1
     a88:	04 80       	ldd	r0, Z+4	; 0x04
     a8a:	f5 81       	ldd	r31, Z+5	; 0x05
     a8c:	e0 2d       	mov	r30, r0
     a8e:	c7 01       	movw	r24, r14
     a90:	09 95       	icall
     a92:	d7 01       	movw	r26, r14
     a94:	ed 91       	ld	r30, X+
     a96:	fc 91       	ld	r31, X
     a98:	06 80       	ldd	r0, Z+6	; 0x06
     a9a:	f7 81       	ldd	r31, Z+7	; 0x07
     a9c:	e0 2d       	mov	r30, r0
     a9e:	60 e0       	ldi	r22, 0x00	; 0
     aa0:	c7 01       	movw	r24, r14
     aa2:	09 95       	icall
     aa4:	18 2f       	mov	r17, r24
     aa6:	d7 01       	movw	r26, r14
     aa8:	ed 91       	ld	r30, X+
     aaa:	fc 91       	ld	r31, X
     aac:	02 80       	ldd	r0, Z+2	; 0x02
     aae:	f3 81       	ldd	r31, Z+3	; 0x03
     ab0:	e0 2d       	mov	r30, r0
     ab2:	c7 01       	movw	r24, r14
     ab4:	09 95       	icall
     ab6:	81 2f       	mov	r24, r17
     ab8:	0f 90       	pop	r0
     aba:	df 91       	pop	r29
     abc:	cf 91       	pop	r28
     abe:	1f 91       	pop	r17
     ac0:	ff 90       	pop	r15
     ac2:	ef 90       	pop	r14
     ac4:	08 95       	ret

00000ac6 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE14read_reg_16bitEhh>:
     ac6:	ef 92       	push	r14
     ac8:	ff 92       	push	r15
     aca:	0f 93       	push	r16
     acc:	1f 93       	push	r17
     ace:	cf 93       	push	r28
     ad0:	df 93       	push	r29
     ad2:	1f 92       	push	r1
     ad4:	cd b7       	in	r28, 0x3d	; 61
     ad6:	de b7       	in	r29, 0x3e	; 62
     ad8:	7c 01       	movw	r14, r24
     ada:	16 2f       	mov	r17, r22
     adc:	dc 01       	movw	r26, r24
     ade:	ed 91       	ld	r30, X+
     ae0:	fc 91       	ld	r31, X
     ae2:	01 90       	ld	r0, Z+
     ae4:	f0 81       	ld	r31, Z
     ae6:	e0 2d       	mov	r30, r0
     ae8:	49 83       	std	Y+1, r20	; 0x01
     aea:	09 95       	icall
     aec:	d7 01       	movw	r26, r14
     aee:	ed 91       	ld	r30, X+
     af0:	fc 91       	ld	r31, X
     af2:	04 80       	ldd	r0, Z+4	; 0x04
     af4:	f5 81       	ldd	r31, Z+5	; 0x05
     af6:	e0 2d       	mov	r30, r0
     af8:	61 2f       	mov	r22, r17
     afa:	c7 01       	movw	r24, r14
     afc:	09 95       	icall
     afe:	d7 01       	movw	r26, r14
     b00:	ed 91       	ld	r30, X+
     b02:	fc 91       	ld	r31, X
     b04:	04 80       	ldd	r0, Z+4	; 0x04
     b06:	f5 81       	ldd	r31, Z+5	; 0x05
     b08:	e0 2d       	mov	r30, r0
     b0a:	49 81       	ldd	r20, Y+1	; 0x01
     b0c:	64 2f       	mov	r22, r20
     b0e:	c7 01       	movw	r24, r14
     b10:	09 95       	icall
     b12:	d7 01       	movw	r26, r14
     b14:	ed 91       	ld	r30, X+
     b16:	fc 91       	ld	r31, X
     b18:	01 90       	ld	r0, Z+
     b1a:	f0 81       	ld	r31, Z
     b1c:	e0 2d       	mov	r30, r0
     b1e:	c7 01       	movw	r24, r14
     b20:	09 95       	icall
     b22:	d7 01       	movw	r26, r14
     b24:	ed 91       	ld	r30, X+
     b26:	fc 91       	ld	r31, X
     b28:	61 2f       	mov	r22, r17
     b2a:	61 60       	ori	r22, 0x01	; 1
     b2c:	04 80       	ldd	r0, Z+4	; 0x04
     b2e:	f5 81       	ldd	r31, Z+5	; 0x05
     b30:	e0 2d       	mov	r30, r0
     b32:	c7 01       	movw	r24, r14
     b34:	09 95       	icall
     b36:	d7 01       	movw	r26, r14
     b38:	ed 91       	ld	r30, X+
     b3a:	fc 91       	ld	r31, X
     b3c:	06 80       	ldd	r0, Z+6	; 0x06
     b3e:	f7 81       	ldd	r31, Z+7	; 0x07
     b40:	e0 2d       	mov	r30, r0
     b42:	61 e0       	ldi	r22, 0x01	; 1
     b44:	c7 01       	movw	r24, r14
     b46:	09 95       	icall
     b48:	08 2f       	mov	r16, r24
     b4a:	10 e0       	ldi	r17, 0x00	; 0
     b4c:	10 2f       	mov	r17, r16
     b4e:	00 27       	eor	r16, r16
     b50:	d7 01       	movw	r26, r14
     b52:	ed 91       	ld	r30, X+
     b54:	fc 91       	ld	r31, X
     b56:	06 80       	ldd	r0, Z+6	; 0x06
     b58:	f7 81       	ldd	r31, Z+7	; 0x07
     b5a:	e0 2d       	mov	r30, r0
     b5c:	60 e0       	ldi	r22, 0x00	; 0
     b5e:	c7 01       	movw	r24, r14
     b60:	09 95       	icall
     b62:	08 2b       	or	r16, r24
     b64:	d7 01       	movw	r26, r14
     b66:	ed 91       	ld	r30, X+
     b68:	fc 91       	ld	r31, X
     b6a:	02 80       	ldd	r0, Z+2	; 0x02
     b6c:	f3 81       	ldd	r31, Z+3	; 0x03
     b6e:	e0 2d       	mov	r30, r0
     b70:	c7 01       	movw	r24, r14
     b72:	09 95       	icall
     b74:	c8 01       	movw	r24, r16
     b76:	0f 90       	pop	r0
     b78:	df 91       	pop	r29
     b7a:	cf 91       	pop	r28
     b7c:	1f 91       	pop	r17
     b7e:	0f 91       	pop	r16
     b80:	ff 90       	pop	r15
     b82:	ef 90       	pop	r14
     b84:	08 95       	ret

00000b86 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE14read_reg_multiEhhPhj>:
     b86:	cf 92       	push	r12
     b88:	df 92       	push	r13
     b8a:	ef 92       	push	r14
     b8c:	ff 92       	push	r15
     b8e:	0f 93       	push	r16
     b90:	1f 93       	push	r17
     b92:	cf 93       	push	r28
     b94:	df 93       	push	r29
     b96:	00 d0       	rcall	.+0      	; 0xb98 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x12>
     b98:	1f 92       	push	r1
     b9a:	cd b7       	in	r28, 0x3d	; 61
     b9c:	de b7       	in	r29, 0x3e	; 62
     b9e:	6c 01       	movw	r12, r24
     ba0:	f6 2e       	mov	r15, r22
     ba2:	dc 01       	movw	r26, r24
     ba4:	ed 91       	ld	r30, X+
     ba6:	fc 91       	ld	r31, X
     ba8:	01 90       	ld	r0, Z+
     baa:	f0 81       	ld	r31, Z
     bac:	e0 2d       	mov	r30, r0
     bae:	2a 83       	std	Y+2, r18	; 0x02
     bb0:	3b 83       	std	Y+3, r19	; 0x03
     bb2:	49 83       	std	Y+1, r20	; 0x01
     bb4:	09 95       	icall
     bb6:	d6 01       	movw	r26, r12
     bb8:	ed 91       	ld	r30, X+
     bba:	fc 91       	ld	r31, X
     bbc:	04 80       	ldd	r0, Z+4	; 0x04
     bbe:	f5 81       	ldd	r31, Z+5	; 0x05
     bc0:	e0 2d       	mov	r30, r0
     bc2:	6f 2d       	mov	r22, r15
     bc4:	c6 01       	movw	r24, r12
     bc6:	09 95       	icall
     bc8:	d6 01       	movw	r26, r12
     bca:	ed 91       	ld	r30, X+
     bcc:	fc 91       	ld	r31, X
     bce:	04 80       	ldd	r0, Z+4	; 0x04
     bd0:	f5 81       	ldd	r31, Z+5	; 0x05
     bd2:	e0 2d       	mov	r30, r0
     bd4:	49 81       	ldd	r20, Y+1	; 0x01
     bd6:	64 2f       	mov	r22, r20
     bd8:	c6 01       	movw	r24, r12
     bda:	09 95       	icall
     bdc:	d6 01       	movw	r26, r12
     bde:	ed 91       	ld	r30, X+
     be0:	fc 91       	ld	r31, X
     be2:	01 90       	ld	r0, Z+
     be4:	f0 81       	ld	r31, Z
     be6:	e0 2d       	mov	r30, r0
     be8:	c6 01       	movw	r24, r12
     bea:	09 95       	icall
     bec:	d6 01       	movw	r26, r12
     bee:	ed 91       	ld	r30, X+
     bf0:	fc 91       	ld	r31, X
     bf2:	6f 2d       	mov	r22, r15
     bf4:	61 60       	ori	r22, 0x01	; 1
     bf6:	04 80       	ldd	r0, Z+4	; 0x04
     bf8:	f5 81       	ldd	r31, Z+5	; 0x05
     bfa:	e0 2d       	mov	r30, r0
     bfc:	c6 01       	movw	r24, r12
     bfe:	09 95       	icall
     c00:	2a 81       	ldd	r18, Y+2	; 0x02
     c02:	e2 2e       	mov	r14, r18
     c04:	3b 81       	ldd	r19, Y+3	; 0x03
     c06:	f3 2e       	mov	r15, r19
     c08:	0e 0d       	add	r16, r14
     c0a:	1f 1d       	adc	r17, r15
     c0c:	d6 01       	movw	r26, r12
     c0e:	ed 91       	ld	r30, X+
     c10:	fc 91       	ld	r31, X
     c12:	e0 16       	cp	r14, r16
     c14:	f1 06       	cpc	r15, r17
     c16:	51 f0       	breq	.+20     	; 0xc2c <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0xa6>
     c18:	06 80       	ldd	r0, Z+6	; 0x06
     c1a:	f7 81       	ldd	r31, Z+7	; 0x07
     c1c:	e0 2d       	mov	r30, r0
     c1e:	61 e0       	ldi	r22, 0x01	; 1
     c20:	c6 01       	movw	r24, r12
     c22:	09 95       	icall
     c24:	f7 01       	movw	r30, r14
     c26:	81 93       	st	Z+, r24
     c28:	7f 01       	movw	r14, r30
     c2a:	f0 cf       	rjmp	.-32     	; 0xc0c <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x86>
     c2c:	02 80       	ldd	r0, Z+2	; 0x02
     c2e:	f3 81       	ldd	r31, Z+3	; 0x03
     c30:	e0 2d       	mov	r30, r0
     c32:	c6 01       	movw	r24, r12
     c34:	0f 90       	pop	r0
     c36:	0f 90       	pop	r0
     c38:	0f 90       	pop	r0
     c3a:	df 91       	pop	r29
     c3c:	cf 91       	pop	r28
     c3e:	1f 91       	pop	r17
     c40:	0f 91       	pop	r16
     c42:	ff 90       	pop	r15
     c44:	ef 90       	pop	r14
     c46:	df 90       	pop	r13
     c48:	cf 90       	pop	r12
     c4a:	09 94       	ijmp

00000c4c <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE9write_regEhhh>:
     c4c:	0f 93       	push	r16
     c4e:	1f 93       	push	r17
     c50:	cf 93       	push	r28
     c52:	df 93       	push	r29
     c54:	00 d0       	rcall	.+0      	; 0xc56 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE9write_regEhhh+0xa>
     c56:	1f 92       	push	r1
     c58:	cd b7       	in	r28, 0x3d	; 61
     c5a:	de b7       	in	r29, 0x3e	; 62
     c5c:	8c 01       	movw	r16, r24
     c5e:	dc 01       	movw	r26, r24
     c60:	ed 91       	ld	r30, X+
     c62:	fc 91       	ld	r31, X
     c64:	01 90       	ld	r0, Z+
     c66:	f0 81       	ld	r31, Z
     c68:	e0 2d       	mov	r30, r0
     c6a:	2b 83       	std	Y+3, r18	; 0x03
     c6c:	4a 83       	std	Y+2, r20	; 0x02
     c6e:	69 83       	std	Y+1, r22	; 0x01
     c70:	09 95       	icall
     c72:	d8 01       	movw	r26, r16
     c74:	ed 91       	ld	r30, X+
     c76:	fc 91       	ld	r31, X
     c78:	04 80       	ldd	r0, Z+4	; 0x04
     c7a:	f5 81       	ldd	r31, Z+5	; 0x05
     c7c:	e0 2d       	mov	r30, r0
     c7e:	69 81       	ldd	r22, Y+1	; 0x01
     c80:	c8 01       	movw	r24, r16
     c82:	09 95       	icall
     c84:	d8 01       	movw	r26, r16
     c86:	ed 91       	ld	r30, X+
     c88:	fc 91       	ld	r31, X
     c8a:	04 80       	ldd	r0, Z+4	; 0x04
     c8c:	f5 81       	ldd	r31, Z+5	; 0x05
     c8e:	e0 2d       	mov	r30, r0
     c90:	4a 81       	ldd	r20, Y+2	; 0x02
     c92:	64 2f       	mov	r22, r20
     c94:	c8 01       	movw	r24, r16
     c96:	09 95       	icall
     c98:	d8 01       	movw	r26, r16
     c9a:	ed 91       	ld	r30, X+
     c9c:	fc 91       	ld	r31, X
     c9e:	04 80       	ldd	r0, Z+4	; 0x04
     ca0:	f5 81       	ldd	r31, Z+5	; 0x05
     ca2:	e0 2d       	mov	r30, r0
     ca4:	2b 81       	ldd	r18, Y+3	; 0x03
     ca6:	62 2f       	mov	r22, r18
     ca8:	c8 01       	movw	r24, r16
     caa:	09 95       	icall
     cac:	d8 01       	movw	r26, r16
     cae:	ed 91       	ld	r30, X+
     cb0:	fc 91       	ld	r31, X
     cb2:	02 80       	ldd	r0, Z+2	; 0x02
     cb4:	f3 81       	ldd	r31, Z+3	; 0x03
     cb6:	e0 2d       	mov	r30, r0
     cb8:	c8 01       	movw	r24, r16
     cba:	0f 90       	pop	r0
     cbc:	0f 90       	pop	r0
     cbe:	0f 90       	pop	r0
     cc0:	df 91       	pop	r29
     cc2:	cf 91       	pop	r28
     cc4:	1f 91       	pop	r17
     cc6:	0f 91       	pop	r16
     cc8:	09 94       	ijmp

00000cca <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE15write_reg_16bitEhhj>:
     cca:	0f 93       	push	r16
     ccc:	1f 93       	push	r17
     cce:	cf 93       	push	r28
     cd0:	df 93       	push	r29
     cd2:	00 d0       	rcall	.+0      	; 0xcd4 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xa>
     cd4:	00 d0       	rcall	.+0      	; 0xcd6 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xc>
     cd6:	cd b7       	in	r28, 0x3d	; 61
     cd8:	de b7       	in	r29, 0x3e	; 62
     cda:	8c 01       	movw	r16, r24
     cdc:	dc 01       	movw	r26, r24
     cde:	ed 91       	ld	r30, X+
     ce0:	fc 91       	ld	r31, X
     ce2:	01 90       	ld	r0, Z+
     ce4:	f0 81       	ld	r31, Z
     ce6:	e0 2d       	mov	r30, r0
     ce8:	2c 83       	std	Y+4, r18	; 0x04
     cea:	3b 83       	std	Y+3, r19	; 0x03
     cec:	4a 83       	std	Y+2, r20	; 0x02
     cee:	69 83       	std	Y+1, r22	; 0x01
     cf0:	09 95       	icall
     cf2:	d8 01       	movw	r26, r16
     cf4:	ed 91       	ld	r30, X+
     cf6:	fc 91       	ld	r31, X
     cf8:	04 80       	ldd	r0, Z+4	; 0x04
     cfa:	f5 81       	ldd	r31, Z+5	; 0x05
     cfc:	e0 2d       	mov	r30, r0
     cfe:	69 81       	ldd	r22, Y+1	; 0x01
     d00:	c8 01       	movw	r24, r16
     d02:	09 95       	icall
     d04:	d8 01       	movw	r26, r16
     d06:	ed 91       	ld	r30, X+
     d08:	fc 91       	ld	r31, X
     d0a:	04 80       	ldd	r0, Z+4	; 0x04
     d0c:	f5 81       	ldd	r31, Z+5	; 0x05
     d0e:	e0 2d       	mov	r30, r0
     d10:	4a 81       	ldd	r20, Y+2	; 0x02
     d12:	64 2f       	mov	r22, r20
     d14:	c8 01       	movw	r24, r16
     d16:	09 95       	icall
     d18:	d8 01       	movw	r26, r16
     d1a:	ed 91       	ld	r30, X+
     d1c:	fc 91       	ld	r31, X
     d1e:	04 80       	ldd	r0, Z+4	; 0x04
     d20:	f5 81       	ldd	r31, Z+5	; 0x05
     d22:	e0 2d       	mov	r30, r0
     d24:	3b 81       	ldd	r19, Y+3	; 0x03
     d26:	63 2f       	mov	r22, r19
     d28:	c8 01       	movw	r24, r16
     d2a:	09 95       	icall
     d2c:	d8 01       	movw	r26, r16
     d2e:	ed 91       	ld	r30, X+
     d30:	fc 91       	ld	r31, X
     d32:	04 80       	ldd	r0, Z+4	; 0x04
     d34:	f5 81       	ldd	r31, Z+5	; 0x05
     d36:	e0 2d       	mov	r30, r0
     d38:	2c 81       	ldd	r18, Y+4	; 0x04
     d3a:	62 2f       	mov	r22, r18
     d3c:	c8 01       	movw	r24, r16
     d3e:	09 95       	icall
     d40:	d8 01       	movw	r26, r16
     d42:	ed 91       	ld	r30, X+
     d44:	fc 91       	ld	r31, X
     d46:	02 80       	ldd	r0, Z+2	; 0x02
     d48:	f3 81       	ldd	r31, Z+3	; 0x03
     d4a:	e0 2d       	mov	r30, r0
     d4c:	c8 01       	movw	r24, r16
     d4e:	0f 90       	pop	r0
     d50:	0f 90       	pop	r0
     d52:	0f 90       	pop	r0
     d54:	0f 90       	pop	r0
     d56:	df 91       	pop	r29
     d58:	cf 91       	pop	r28
     d5a:	1f 91       	pop	r17
     d5c:	0f 91       	pop	r16
     d5e:	09 94       	ijmp

00000d60 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE15write_reg_multiEhhPhj>:
     d60:	cf 92       	push	r12
     d62:	df 92       	push	r13
     d64:	ef 92       	push	r14
     d66:	ff 92       	push	r15
     d68:	0f 93       	push	r16
     d6a:	1f 93       	push	r17
     d6c:	cf 93       	push	r28
     d6e:	df 93       	push	r29
     d70:	00 d0       	rcall	.+0      	; 0xd72 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x12>
     d72:	00 d0       	rcall	.+0      	; 0xd74 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x14>
     d74:	cd b7       	in	r28, 0x3d	; 61
     d76:	de b7       	in	r29, 0x3e	; 62
     d78:	6c 01       	movw	r12, r24
     d7a:	dc 01       	movw	r26, r24
     d7c:	ed 91       	ld	r30, X+
     d7e:	fc 91       	ld	r31, X
     d80:	01 90       	ld	r0, Z+
     d82:	f0 81       	ld	r31, Z
     d84:	e0 2d       	mov	r30, r0
     d86:	2b 83       	std	Y+3, r18	; 0x03
     d88:	3c 83       	std	Y+4, r19	; 0x04
     d8a:	4a 83       	std	Y+2, r20	; 0x02
     d8c:	69 83       	std	Y+1, r22	; 0x01
     d8e:	09 95       	icall
     d90:	d6 01       	movw	r26, r12
     d92:	ed 91       	ld	r30, X+
     d94:	fc 91       	ld	r31, X
     d96:	04 80       	ldd	r0, Z+4	; 0x04
     d98:	f5 81       	ldd	r31, Z+5	; 0x05
     d9a:	e0 2d       	mov	r30, r0
     d9c:	69 81       	ldd	r22, Y+1	; 0x01
     d9e:	c6 01       	movw	r24, r12
     da0:	09 95       	icall
     da2:	d6 01       	movw	r26, r12
     da4:	ed 91       	ld	r30, X+
     da6:	fc 91       	ld	r31, X
     da8:	04 80       	ldd	r0, Z+4	; 0x04
     daa:	f5 81       	ldd	r31, Z+5	; 0x05
     dac:	e0 2d       	mov	r30, r0
     dae:	4a 81       	ldd	r20, Y+2	; 0x02
     db0:	64 2f       	mov	r22, r20
     db2:	c6 01       	movw	r24, r12
     db4:	09 95       	icall
     db6:	2b 81       	ldd	r18, Y+3	; 0x03
     db8:	e2 2e       	mov	r14, r18
     dba:	3c 81       	ldd	r19, Y+4	; 0x04
     dbc:	f3 2e       	mov	r15, r19
     dbe:	0e 0d       	add	r16, r14
     dc0:	1f 1d       	adc	r17, r15
     dc2:	d6 01       	movw	r26, r12
     dc4:	ed 91       	ld	r30, X+
     dc6:	fc 91       	ld	r31, X
     dc8:	e0 16       	cp	r14, r16
     dca:	f1 06       	cpc	r15, r17
     dcc:	49 f0       	breq	.+18     	; 0xde0 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x80>
     dce:	d7 01       	movw	r26, r14
     dd0:	6d 91       	ld	r22, X+
     dd2:	7d 01       	movw	r14, r26
     dd4:	04 80       	ldd	r0, Z+4	; 0x04
     dd6:	f5 81       	ldd	r31, Z+5	; 0x05
     dd8:	e0 2d       	mov	r30, r0
     dda:	c6 01       	movw	r24, r12
     ddc:	09 95       	icall
     dde:	f1 cf       	rjmp	.-30     	; 0xdc2 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x62>
     de0:	02 80       	ldd	r0, Z+2	; 0x02
     de2:	f3 81       	ldd	r31, Z+3	; 0x03
     de4:	e0 2d       	mov	r30, r0
     de6:	c6 01       	movw	r24, r12
     de8:	0f 90       	pop	r0
     dea:	0f 90       	pop	r0
     dec:	0f 90       	pop	r0
     dee:	0f 90       	pop	r0
     df0:	df 91       	pop	r29
     df2:	cf 91       	pop	r28
     df4:	1f 91       	pop	r17
     df6:	0f 91       	pop	r16
     df8:	ff 90       	pop	r15
     dfa:	ef 90       	pop	r14
     dfc:	df 90       	pop	r13
     dfe:	cf 90       	pop	r12
     e00:	09 94       	ijmp

00000e02 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE8read_regEhh>:
     e02:	ef 92       	push	r14
     e04:	ff 92       	push	r15
     e06:	1f 93       	push	r17
     e08:	cf 93       	push	r28
     e0a:	df 93       	push	r29
     e0c:	1f 92       	push	r1
     e0e:	cd b7       	in	r28, 0x3d	; 61
     e10:	de b7       	in	r29, 0x3e	; 62
     e12:	7c 01       	movw	r14, r24
     e14:	16 2f       	mov	r17, r22
     e16:	dc 01       	movw	r26, r24
     e18:	ed 91       	ld	r30, X+
     e1a:	fc 91       	ld	r31, X
     e1c:	01 90       	ld	r0, Z+
     e1e:	f0 81       	ld	r31, Z
     e20:	e0 2d       	mov	r30, r0
     e22:	49 83       	std	Y+1, r20	; 0x01
     e24:	09 95       	icall
     e26:	d7 01       	movw	r26, r14
     e28:	ed 91       	ld	r30, X+
     e2a:	fc 91       	ld	r31, X
     e2c:	04 80       	ldd	r0, Z+4	; 0x04
     e2e:	f5 81       	ldd	r31, Z+5	; 0x05
     e30:	e0 2d       	mov	r30, r0
     e32:	61 2f       	mov	r22, r17
     e34:	c7 01       	movw	r24, r14
     e36:	09 95       	icall
     e38:	d7 01       	movw	r26, r14
     e3a:	ed 91       	ld	r30, X+
     e3c:	fc 91       	ld	r31, X
     e3e:	04 80       	ldd	r0, Z+4	; 0x04
     e40:	f5 81       	ldd	r31, Z+5	; 0x05
     e42:	e0 2d       	mov	r30, r0
     e44:	49 81       	ldd	r20, Y+1	; 0x01
     e46:	64 2f       	mov	r22, r20
     e48:	c7 01       	movw	r24, r14
     e4a:	09 95       	icall
     e4c:	d7 01       	movw	r26, r14
     e4e:	ed 91       	ld	r30, X+
     e50:	fc 91       	ld	r31, X
     e52:	01 90       	ld	r0, Z+
     e54:	f0 81       	ld	r31, Z
     e56:	e0 2d       	mov	r30, r0
     e58:	c7 01       	movw	r24, r14
     e5a:	09 95       	icall
     e5c:	d7 01       	movw	r26, r14
     e5e:	ed 91       	ld	r30, X+
     e60:	fc 91       	ld	r31, X
     e62:	61 2f       	mov	r22, r17
     e64:	61 60       	ori	r22, 0x01	; 1
     e66:	04 80       	ldd	r0, Z+4	; 0x04
     e68:	f5 81       	ldd	r31, Z+5	; 0x05
     e6a:	e0 2d       	mov	r30, r0
     e6c:	c7 01       	movw	r24, r14
     e6e:	09 95       	icall
     e70:	d7 01       	movw	r26, r14
     e72:	ed 91       	ld	r30, X+
     e74:	fc 91       	ld	r31, X
     e76:	06 80       	ldd	r0, Z+6	; 0x06
     e78:	f7 81       	ldd	r31, Z+7	; 0x07
     e7a:	e0 2d       	mov	r30, r0
     e7c:	60 e0       	ldi	r22, 0x00	; 0
     e7e:	c7 01       	movw	r24, r14
     e80:	09 95       	icall
     e82:	18 2f       	mov	r17, r24
     e84:	d7 01       	movw	r26, r14
     e86:	ed 91       	ld	r30, X+
     e88:	fc 91       	ld	r31, X
     e8a:	02 80       	ldd	r0, Z+2	; 0x02
     e8c:	f3 81       	ldd	r31, Z+3	; 0x03
     e8e:	e0 2d       	mov	r30, r0
     e90:	c7 01       	movw	r24, r14
     e92:	09 95       	icall
     e94:	81 2f       	mov	r24, r17
     e96:	0f 90       	pop	r0
     e98:	df 91       	pop	r29
     e9a:	cf 91       	pop	r28
     e9c:	1f 91       	pop	r17
     e9e:	ff 90       	pop	r15
     ea0:	ef 90       	pop	r14
     ea2:	08 95       	ret

00000ea4 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE14read_reg_16bitEhh>:
     ea4:	ef 92       	push	r14
     ea6:	ff 92       	push	r15
     ea8:	0f 93       	push	r16
     eaa:	1f 93       	push	r17
     eac:	cf 93       	push	r28
     eae:	df 93       	push	r29
     eb0:	1f 92       	push	r1
     eb2:	cd b7       	in	r28, 0x3d	; 61
     eb4:	de b7       	in	r29, 0x3e	; 62
     eb6:	7c 01       	movw	r14, r24
     eb8:	16 2f       	mov	r17, r22
     eba:	dc 01       	movw	r26, r24
     ebc:	ed 91       	ld	r30, X+
     ebe:	fc 91       	ld	r31, X
     ec0:	01 90       	ld	r0, Z+
     ec2:	f0 81       	ld	r31, Z
     ec4:	e0 2d       	mov	r30, r0
     ec6:	49 83       	std	Y+1, r20	; 0x01
     ec8:	09 95       	icall
     eca:	d7 01       	movw	r26, r14
     ecc:	ed 91       	ld	r30, X+
     ece:	fc 91       	ld	r31, X
     ed0:	04 80       	ldd	r0, Z+4	; 0x04
     ed2:	f5 81       	ldd	r31, Z+5	; 0x05
     ed4:	e0 2d       	mov	r30, r0
     ed6:	61 2f       	mov	r22, r17
     ed8:	c7 01       	movw	r24, r14
     eda:	09 95       	icall
     edc:	d7 01       	movw	r26, r14
     ede:	ed 91       	ld	r30, X+
     ee0:	fc 91       	ld	r31, X
     ee2:	04 80       	ldd	r0, Z+4	; 0x04
     ee4:	f5 81       	ldd	r31, Z+5	; 0x05
     ee6:	e0 2d       	mov	r30, r0
     ee8:	49 81       	ldd	r20, Y+1	; 0x01
     eea:	64 2f       	mov	r22, r20
     eec:	c7 01       	movw	r24, r14
     eee:	09 95       	icall
     ef0:	d7 01       	movw	r26, r14
     ef2:	ed 91       	ld	r30, X+
     ef4:	fc 91       	ld	r31, X
     ef6:	01 90       	ld	r0, Z+
     ef8:	f0 81       	ld	r31, Z
     efa:	e0 2d       	mov	r30, r0
     efc:	c7 01       	movw	r24, r14
     efe:	09 95       	icall
     f00:	d7 01       	movw	r26, r14
     f02:	ed 91       	ld	r30, X+
     f04:	fc 91       	ld	r31, X
     f06:	61 2f       	mov	r22, r17
     f08:	61 60       	ori	r22, 0x01	; 1
     f0a:	04 80       	ldd	r0, Z+4	; 0x04
     f0c:	f5 81       	ldd	r31, Z+5	; 0x05
     f0e:	e0 2d       	mov	r30, r0
     f10:	c7 01       	movw	r24, r14
     f12:	09 95       	icall
     f14:	d7 01       	movw	r26, r14
     f16:	ed 91       	ld	r30, X+
     f18:	fc 91       	ld	r31, X
     f1a:	06 80       	ldd	r0, Z+6	; 0x06
     f1c:	f7 81       	ldd	r31, Z+7	; 0x07
     f1e:	e0 2d       	mov	r30, r0
     f20:	61 e0       	ldi	r22, 0x01	; 1
     f22:	c7 01       	movw	r24, r14
     f24:	09 95       	icall
     f26:	08 2f       	mov	r16, r24
     f28:	10 e0       	ldi	r17, 0x00	; 0
     f2a:	10 2f       	mov	r17, r16
     f2c:	00 27       	eor	r16, r16
     f2e:	d7 01       	movw	r26, r14
     f30:	ed 91       	ld	r30, X+
     f32:	fc 91       	ld	r31, X
     f34:	06 80       	ldd	r0, Z+6	; 0x06
     f36:	f7 81       	ldd	r31, Z+7	; 0x07
     f38:	e0 2d       	mov	r30, r0
     f3a:	60 e0       	ldi	r22, 0x00	; 0
     f3c:	c7 01       	movw	r24, r14
     f3e:	09 95       	icall
     f40:	08 2b       	or	r16, r24
     f42:	d7 01       	movw	r26, r14
     f44:	ed 91       	ld	r30, X+
     f46:	fc 91       	ld	r31, X
     f48:	02 80       	ldd	r0, Z+2	; 0x02
     f4a:	f3 81       	ldd	r31, Z+3	; 0x03
     f4c:	e0 2d       	mov	r30, r0
     f4e:	c7 01       	movw	r24, r14
     f50:	09 95       	icall
     f52:	c8 01       	movw	r24, r16
     f54:	0f 90       	pop	r0
     f56:	df 91       	pop	r29
     f58:	cf 91       	pop	r28
     f5a:	1f 91       	pop	r17
     f5c:	0f 91       	pop	r16
     f5e:	ff 90       	pop	r15
     f60:	ef 90       	pop	r14
     f62:	08 95       	ret

00000f64 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE14read_reg_multiEhhPhj>:
     f64:	cf 92       	push	r12
     f66:	df 92       	push	r13
     f68:	ef 92       	push	r14
     f6a:	ff 92       	push	r15
     f6c:	0f 93       	push	r16
     f6e:	1f 93       	push	r17
     f70:	cf 93       	push	r28
     f72:	df 93       	push	r29
     f74:	00 d0       	rcall	.+0      	; 0xf76 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x12>
     f76:	1f 92       	push	r1
     f78:	cd b7       	in	r28, 0x3d	; 61
     f7a:	de b7       	in	r29, 0x3e	; 62
     f7c:	6c 01       	movw	r12, r24
     f7e:	f6 2e       	mov	r15, r22
     f80:	dc 01       	movw	r26, r24
     f82:	ed 91       	ld	r30, X+
     f84:	fc 91       	ld	r31, X
     f86:	01 90       	ld	r0, Z+
     f88:	f0 81       	ld	r31, Z
     f8a:	e0 2d       	mov	r30, r0
     f8c:	2a 83       	std	Y+2, r18	; 0x02
     f8e:	3b 83       	std	Y+3, r19	; 0x03
     f90:	49 83       	std	Y+1, r20	; 0x01
     f92:	09 95       	icall
     f94:	d6 01       	movw	r26, r12
     f96:	ed 91       	ld	r30, X+
     f98:	fc 91       	ld	r31, X
     f9a:	04 80       	ldd	r0, Z+4	; 0x04
     f9c:	f5 81       	ldd	r31, Z+5	; 0x05
     f9e:	e0 2d       	mov	r30, r0
     fa0:	6f 2d       	mov	r22, r15
     fa2:	c6 01       	movw	r24, r12
     fa4:	09 95       	icall
     fa6:	d6 01       	movw	r26, r12
     fa8:	ed 91       	ld	r30, X+
     faa:	fc 91       	ld	r31, X
     fac:	04 80       	ldd	r0, Z+4	; 0x04
     fae:	f5 81       	ldd	r31, Z+5	; 0x05
     fb0:	e0 2d       	mov	r30, r0
     fb2:	49 81       	ldd	r20, Y+1	; 0x01
     fb4:	64 2f       	mov	r22, r20
     fb6:	c6 01       	movw	r24, r12
     fb8:	09 95       	icall
     fba:	d6 01       	movw	r26, r12
     fbc:	ed 91       	ld	r30, X+
     fbe:	fc 91       	ld	r31, X
     fc0:	01 90       	ld	r0, Z+
     fc2:	f0 81       	ld	r31, Z
     fc4:	e0 2d       	mov	r30, r0
     fc6:	c6 01       	movw	r24, r12
     fc8:	09 95       	icall
     fca:	d6 01       	movw	r26, r12
     fcc:	ed 91       	ld	r30, X+
     fce:	fc 91       	ld	r31, X
     fd0:	6f 2d       	mov	r22, r15
     fd2:	61 60       	ori	r22, 0x01	; 1
     fd4:	04 80       	ldd	r0, Z+4	; 0x04
     fd6:	f5 81       	ldd	r31, Z+5	; 0x05
     fd8:	e0 2d       	mov	r30, r0
     fda:	c6 01       	movw	r24, r12
     fdc:	09 95       	icall
     fde:	2a 81       	ldd	r18, Y+2	; 0x02
     fe0:	e2 2e       	mov	r14, r18
     fe2:	3b 81       	ldd	r19, Y+3	; 0x03
     fe4:	f3 2e       	mov	r15, r19
     fe6:	0e 0d       	add	r16, r14
     fe8:	1f 1d       	adc	r17, r15
     fea:	d6 01       	movw	r26, r12
     fec:	ed 91       	ld	r30, X+
     fee:	fc 91       	ld	r31, X
     ff0:	e0 16       	cp	r14, r16
     ff2:	f1 06       	cpc	r15, r17
     ff4:	51 f0       	breq	.+20     	; 0x100a <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0xa6>
     ff6:	06 80       	ldd	r0, Z+6	; 0x06
     ff8:	f7 81       	ldd	r31, Z+7	; 0x07
     ffa:	e0 2d       	mov	r30, r0
     ffc:	61 e0       	ldi	r22, 0x01	; 1
     ffe:	c6 01       	movw	r24, r12
    1000:	09 95       	icall
    1002:	f7 01       	movw	r30, r14
    1004:	81 93       	st	Z+, r24
    1006:	7f 01       	movw	r14, r30
    1008:	f0 cf       	rjmp	.-32     	; 0xfea <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x86>
    100a:	02 80       	ldd	r0, Z+2	; 0x02
    100c:	f3 81       	ldd	r31, Z+3	; 0x03
    100e:	e0 2d       	mov	r30, r0
    1010:	c6 01       	movw	r24, r12
    1012:	0f 90       	pop	r0
    1014:	0f 90       	pop	r0
    1016:	0f 90       	pop	r0
    1018:	df 91       	pop	r29
    101a:	cf 91       	pop	r28
    101c:	1f 91       	pop	r17
    101e:	0f 91       	pop	r16
    1020:	ff 90       	pop	r15
    1022:	ef 90       	pop	r14
    1024:	df 90       	pop	r13
    1026:	cf 90       	pop	r12
    1028:	09 94       	ijmp

0000102a <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE9write_regEhhh>:
    102a:	0f 93       	push	r16
    102c:	1f 93       	push	r17
    102e:	cf 93       	push	r28
    1030:	df 93       	push	r29
    1032:	00 d0       	rcall	.+0      	; 0x1034 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE9write_regEhhh+0xa>
    1034:	1f 92       	push	r1
    1036:	cd b7       	in	r28, 0x3d	; 61
    1038:	de b7       	in	r29, 0x3e	; 62
    103a:	8c 01       	movw	r16, r24
    103c:	dc 01       	movw	r26, r24
    103e:	ed 91       	ld	r30, X+
    1040:	fc 91       	ld	r31, X
    1042:	01 90       	ld	r0, Z+
    1044:	f0 81       	ld	r31, Z
    1046:	e0 2d       	mov	r30, r0
    1048:	2b 83       	std	Y+3, r18	; 0x03
    104a:	4a 83       	std	Y+2, r20	; 0x02
    104c:	69 83       	std	Y+1, r22	; 0x01
    104e:	09 95       	icall
    1050:	d8 01       	movw	r26, r16
    1052:	ed 91       	ld	r30, X+
    1054:	fc 91       	ld	r31, X
    1056:	04 80       	ldd	r0, Z+4	; 0x04
    1058:	f5 81       	ldd	r31, Z+5	; 0x05
    105a:	e0 2d       	mov	r30, r0
    105c:	69 81       	ldd	r22, Y+1	; 0x01
    105e:	c8 01       	movw	r24, r16
    1060:	09 95       	icall
    1062:	d8 01       	movw	r26, r16
    1064:	ed 91       	ld	r30, X+
    1066:	fc 91       	ld	r31, X
    1068:	04 80       	ldd	r0, Z+4	; 0x04
    106a:	f5 81       	ldd	r31, Z+5	; 0x05
    106c:	e0 2d       	mov	r30, r0
    106e:	4a 81       	ldd	r20, Y+2	; 0x02
    1070:	64 2f       	mov	r22, r20
    1072:	c8 01       	movw	r24, r16
    1074:	09 95       	icall
    1076:	d8 01       	movw	r26, r16
    1078:	ed 91       	ld	r30, X+
    107a:	fc 91       	ld	r31, X
    107c:	04 80       	ldd	r0, Z+4	; 0x04
    107e:	f5 81       	ldd	r31, Z+5	; 0x05
    1080:	e0 2d       	mov	r30, r0
    1082:	2b 81       	ldd	r18, Y+3	; 0x03
    1084:	62 2f       	mov	r22, r18
    1086:	c8 01       	movw	r24, r16
    1088:	09 95       	icall
    108a:	d8 01       	movw	r26, r16
    108c:	ed 91       	ld	r30, X+
    108e:	fc 91       	ld	r31, X
    1090:	02 80       	ldd	r0, Z+2	; 0x02
    1092:	f3 81       	ldd	r31, Z+3	; 0x03
    1094:	e0 2d       	mov	r30, r0
    1096:	c8 01       	movw	r24, r16
    1098:	0f 90       	pop	r0
    109a:	0f 90       	pop	r0
    109c:	0f 90       	pop	r0
    109e:	df 91       	pop	r29
    10a0:	cf 91       	pop	r28
    10a2:	1f 91       	pop	r17
    10a4:	0f 91       	pop	r16
    10a6:	09 94       	ijmp

000010a8 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE15write_reg_16bitEhhj>:
    10a8:	0f 93       	push	r16
    10aa:	1f 93       	push	r17
    10ac:	cf 93       	push	r28
    10ae:	df 93       	push	r29
    10b0:	00 d0       	rcall	.+0      	; 0x10b2 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xa>
    10b2:	00 d0       	rcall	.+0      	; 0x10b4 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE15write_reg_16bitEhhj+0xc>
    10b4:	cd b7       	in	r28, 0x3d	; 61
    10b6:	de b7       	in	r29, 0x3e	; 62
    10b8:	8c 01       	movw	r16, r24
    10ba:	dc 01       	movw	r26, r24
    10bc:	ed 91       	ld	r30, X+
    10be:	fc 91       	ld	r31, X
    10c0:	01 90       	ld	r0, Z+
    10c2:	f0 81       	ld	r31, Z
    10c4:	e0 2d       	mov	r30, r0
    10c6:	2c 83       	std	Y+4, r18	; 0x04
    10c8:	3b 83       	std	Y+3, r19	; 0x03
    10ca:	4a 83       	std	Y+2, r20	; 0x02
    10cc:	69 83       	std	Y+1, r22	; 0x01
    10ce:	09 95       	icall
    10d0:	d8 01       	movw	r26, r16
    10d2:	ed 91       	ld	r30, X+
    10d4:	fc 91       	ld	r31, X
    10d6:	04 80       	ldd	r0, Z+4	; 0x04
    10d8:	f5 81       	ldd	r31, Z+5	; 0x05
    10da:	e0 2d       	mov	r30, r0
    10dc:	69 81       	ldd	r22, Y+1	; 0x01
    10de:	c8 01       	movw	r24, r16
    10e0:	09 95       	icall
    10e2:	d8 01       	movw	r26, r16
    10e4:	ed 91       	ld	r30, X+
    10e6:	fc 91       	ld	r31, X
    10e8:	04 80       	ldd	r0, Z+4	; 0x04
    10ea:	f5 81       	ldd	r31, Z+5	; 0x05
    10ec:	e0 2d       	mov	r30, r0
    10ee:	4a 81       	ldd	r20, Y+2	; 0x02
    10f0:	64 2f       	mov	r22, r20
    10f2:	c8 01       	movw	r24, r16
    10f4:	09 95       	icall
    10f6:	d8 01       	movw	r26, r16
    10f8:	ed 91       	ld	r30, X+
    10fa:	fc 91       	ld	r31, X
    10fc:	04 80       	ldd	r0, Z+4	; 0x04
    10fe:	f5 81       	ldd	r31, Z+5	; 0x05
    1100:	e0 2d       	mov	r30, r0
    1102:	3b 81       	ldd	r19, Y+3	; 0x03
    1104:	63 2f       	mov	r22, r19
    1106:	c8 01       	movw	r24, r16
    1108:	09 95       	icall
    110a:	d8 01       	movw	r26, r16
    110c:	ed 91       	ld	r30, X+
    110e:	fc 91       	ld	r31, X
    1110:	04 80       	ldd	r0, Z+4	; 0x04
    1112:	f5 81       	ldd	r31, Z+5	; 0x05
    1114:	e0 2d       	mov	r30, r0
    1116:	2c 81       	ldd	r18, Y+4	; 0x04
    1118:	62 2f       	mov	r22, r18
    111a:	c8 01       	movw	r24, r16
    111c:	09 95       	icall
    111e:	d8 01       	movw	r26, r16
    1120:	ed 91       	ld	r30, X+
    1122:	fc 91       	ld	r31, X
    1124:	02 80       	ldd	r0, Z+2	; 0x02
    1126:	f3 81       	ldd	r31, Z+3	; 0x03
    1128:	e0 2d       	mov	r30, r0
    112a:	c8 01       	movw	r24, r16
    112c:	0f 90       	pop	r0
    112e:	0f 90       	pop	r0
    1130:	0f 90       	pop	r0
    1132:	0f 90       	pop	r0
    1134:	df 91       	pop	r29
    1136:	cf 91       	pop	r28
    1138:	1f 91       	pop	r17
    113a:	0f 91       	pop	r16
    113c:	09 94       	ijmp

0000113e <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE15write_reg_multiEhhPhj>:
    113e:	cf 92       	push	r12
    1140:	df 92       	push	r13
    1142:	ef 92       	push	r14
    1144:	ff 92       	push	r15
    1146:	0f 93       	push	r16
    1148:	1f 93       	push	r17
    114a:	cf 93       	push	r28
    114c:	df 93       	push	r29
    114e:	00 d0       	rcall	.+0      	; 0x1150 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x12>
    1150:	00 d0       	rcall	.+0      	; 0x1152 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x14>
    1152:	cd b7       	in	r28, 0x3d	; 61
    1154:	de b7       	in	r29, 0x3e	; 62
    1156:	6c 01       	movw	r12, r24
    1158:	dc 01       	movw	r26, r24
    115a:	ed 91       	ld	r30, X+
    115c:	fc 91       	ld	r31, X
    115e:	01 90       	ld	r0, Z+
    1160:	f0 81       	ld	r31, Z
    1162:	e0 2d       	mov	r30, r0
    1164:	2b 83       	std	Y+3, r18	; 0x03
    1166:	3c 83       	std	Y+4, r19	; 0x04
    1168:	4a 83       	std	Y+2, r20	; 0x02
    116a:	69 83       	std	Y+1, r22	; 0x01
    116c:	09 95       	icall
    116e:	d6 01       	movw	r26, r12
    1170:	ed 91       	ld	r30, X+
    1172:	fc 91       	ld	r31, X
    1174:	04 80       	ldd	r0, Z+4	; 0x04
    1176:	f5 81       	ldd	r31, Z+5	; 0x05
    1178:	e0 2d       	mov	r30, r0
    117a:	69 81       	ldd	r22, Y+1	; 0x01
    117c:	c6 01       	movw	r24, r12
    117e:	09 95       	icall
    1180:	d6 01       	movw	r26, r12
    1182:	ed 91       	ld	r30, X+
    1184:	fc 91       	ld	r31, X
    1186:	04 80       	ldd	r0, Z+4	; 0x04
    1188:	f5 81       	ldd	r31, Z+5	; 0x05
    118a:	e0 2d       	mov	r30, r0
    118c:	4a 81       	ldd	r20, Y+2	; 0x02
    118e:	64 2f       	mov	r22, r20
    1190:	c6 01       	movw	r24, r12
    1192:	09 95       	icall
    1194:	2b 81       	ldd	r18, Y+3	; 0x03
    1196:	e2 2e       	mov	r14, r18
    1198:	3c 81       	ldd	r19, Y+4	; 0x04
    119a:	f3 2e       	mov	r15, r19
    119c:	0e 0d       	add	r16, r14
    119e:	1f 1d       	adc	r17, r15
    11a0:	d6 01       	movw	r26, r12
    11a2:	ed 91       	ld	r30, X+
    11a4:	fc 91       	ld	r31, X
    11a6:	e0 16       	cp	r14, r16
    11a8:	f1 06       	cpc	r15, r17
    11aa:	49 f0       	breq	.+18     	; 0x11be <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x80>
    11ac:	d7 01       	movw	r26, r14
    11ae:	6d 91       	ld	r22, X+
    11b0:	7d 01       	movw	r14, r26
    11b2:	04 80       	ldd	r0, Z+4	; 0x04
    11b4:	f5 81       	ldd	r31, Z+5	; 0x05
    11b6:	e0 2d       	mov	r30, r0
    11b8:	c6 01       	movw	r24, r12
    11ba:	09 95       	icall
    11bc:	f1 cf       	rjmp	.-30     	; 0x11a0 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE15write_reg_multiEhhPhj+0x62>
    11be:	02 80       	ldd	r0, Z+2	; 0x02
    11c0:	f3 81       	ldd	r31, Z+3	; 0x03
    11c2:	e0 2d       	mov	r30, r0
    11c4:	c6 01       	movw	r24, r12
    11c6:	0f 90       	pop	r0
    11c8:	0f 90       	pop	r0
    11ca:	0f 90       	pop	r0
    11cc:	0f 90       	pop	r0
    11ce:	df 91       	pop	r29
    11d0:	cf 91       	pop	r28
    11d2:	1f 91       	pop	r17
    11d4:	0f 91       	pop	r16
    11d6:	ff 90       	pop	r15
    11d8:	ef 90       	pop	r14
    11da:	df 90       	pop	r13
    11dc:	cf 90       	pop	r12
    11de:	09 94       	ijmp

000011e0 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE8read_regEhh>:
    11e0:	ef 92       	push	r14
    11e2:	ff 92       	push	r15
    11e4:	1f 93       	push	r17
    11e6:	cf 93       	push	r28
    11e8:	df 93       	push	r29
    11ea:	1f 92       	push	r1
    11ec:	cd b7       	in	r28, 0x3d	; 61
    11ee:	de b7       	in	r29, 0x3e	; 62
    11f0:	7c 01       	movw	r14, r24
    11f2:	16 2f       	mov	r17, r22
    11f4:	dc 01       	movw	r26, r24
    11f6:	ed 91       	ld	r30, X+
    11f8:	fc 91       	ld	r31, X
    11fa:	01 90       	ld	r0, Z+
    11fc:	f0 81       	ld	r31, Z
    11fe:	e0 2d       	mov	r30, r0
    1200:	49 83       	std	Y+1, r20	; 0x01
    1202:	09 95       	icall
    1204:	d7 01       	movw	r26, r14
    1206:	ed 91       	ld	r30, X+
    1208:	fc 91       	ld	r31, X
    120a:	04 80       	ldd	r0, Z+4	; 0x04
    120c:	f5 81       	ldd	r31, Z+5	; 0x05
    120e:	e0 2d       	mov	r30, r0
    1210:	61 2f       	mov	r22, r17
    1212:	c7 01       	movw	r24, r14
    1214:	09 95       	icall
    1216:	d7 01       	movw	r26, r14
    1218:	ed 91       	ld	r30, X+
    121a:	fc 91       	ld	r31, X
    121c:	04 80       	ldd	r0, Z+4	; 0x04
    121e:	f5 81       	ldd	r31, Z+5	; 0x05
    1220:	e0 2d       	mov	r30, r0
    1222:	49 81       	ldd	r20, Y+1	; 0x01
    1224:	64 2f       	mov	r22, r20
    1226:	c7 01       	movw	r24, r14
    1228:	09 95       	icall
    122a:	d7 01       	movw	r26, r14
    122c:	ed 91       	ld	r30, X+
    122e:	fc 91       	ld	r31, X
    1230:	01 90       	ld	r0, Z+
    1232:	f0 81       	ld	r31, Z
    1234:	e0 2d       	mov	r30, r0
    1236:	c7 01       	movw	r24, r14
    1238:	09 95       	icall
    123a:	d7 01       	movw	r26, r14
    123c:	ed 91       	ld	r30, X+
    123e:	fc 91       	ld	r31, X
    1240:	61 2f       	mov	r22, r17
    1242:	61 60       	ori	r22, 0x01	; 1
    1244:	04 80       	ldd	r0, Z+4	; 0x04
    1246:	f5 81       	ldd	r31, Z+5	; 0x05
    1248:	e0 2d       	mov	r30, r0
    124a:	c7 01       	movw	r24, r14
    124c:	09 95       	icall
    124e:	d7 01       	movw	r26, r14
    1250:	ed 91       	ld	r30, X+
    1252:	fc 91       	ld	r31, X
    1254:	06 80       	ldd	r0, Z+6	; 0x06
    1256:	f7 81       	ldd	r31, Z+7	; 0x07
    1258:	e0 2d       	mov	r30, r0
    125a:	60 e0       	ldi	r22, 0x00	; 0
    125c:	c7 01       	movw	r24, r14
    125e:	09 95       	icall
    1260:	18 2f       	mov	r17, r24
    1262:	d7 01       	movw	r26, r14
    1264:	ed 91       	ld	r30, X+
    1266:	fc 91       	ld	r31, X
    1268:	02 80       	ldd	r0, Z+2	; 0x02
    126a:	f3 81       	ldd	r31, Z+3	; 0x03
    126c:	e0 2d       	mov	r30, r0
    126e:	c7 01       	movw	r24, r14
    1270:	09 95       	icall
    1272:	81 2f       	mov	r24, r17
    1274:	0f 90       	pop	r0
    1276:	df 91       	pop	r29
    1278:	cf 91       	pop	r28
    127a:	1f 91       	pop	r17
    127c:	ff 90       	pop	r15
    127e:	ef 90       	pop	r14
    1280:	08 95       	ret

00001282 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE14read_reg_16bitEhh>:
    1282:	ef 92       	push	r14
    1284:	ff 92       	push	r15
    1286:	0f 93       	push	r16
    1288:	1f 93       	push	r17
    128a:	cf 93       	push	r28
    128c:	df 93       	push	r29
    128e:	1f 92       	push	r1
    1290:	cd b7       	in	r28, 0x3d	; 61
    1292:	de b7       	in	r29, 0x3e	; 62
    1294:	7c 01       	movw	r14, r24
    1296:	16 2f       	mov	r17, r22
    1298:	dc 01       	movw	r26, r24
    129a:	ed 91       	ld	r30, X+
    129c:	fc 91       	ld	r31, X
    129e:	01 90       	ld	r0, Z+
    12a0:	f0 81       	ld	r31, Z
    12a2:	e0 2d       	mov	r30, r0
    12a4:	49 83       	std	Y+1, r20	; 0x01
    12a6:	09 95       	icall
    12a8:	d7 01       	movw	r26, r14
    12aa:	ed 91       	ld	r30, X+
    12ac:	fc 91       	ld	r31, X
    12ae:	04 80       	ldd	r0, Z+4	; 0x04
    12b0:	f5 81       	ldd	r31, Z+5	; 0x05
    12b2:	e0 2d       	mov	r30, r0
    12b4:	61 2f       	mov	r22, r17
    12b6:	c7 01       	movw	r24, r14
    12b8:	09 95       	icall
    12ba:	d7 01       	movw	r26, r14
    12bc:	ed 91       	ld	r30, X+
    12be:	fc 91       	ld	r31, X
    12c0:	04 80       	ldd	r0, Z+4	; 0x04
    12c2:	f5 81       	ldd	r31, Z+5	; 0x05
    12c4:	e0 2d       	mov	r30, r0
    12c6:	49 81       	ldd	r20, Y+1	; 0x01
    12c8:	64 2f       	mov	r22, r20
    12ca:	c7 01       	movw	r24, r14
    12cc:	09 95       	icall
    12ce:	d7 01       	movw	r26, r14
    12d0:	ed 91       	ld	r30, X+
    12d2:	fc 91       	ld	r31, X
    12d4:	01 90       	ld	r0, Z+
    12d6:	f0 81       	ld	r31, Z
    12d8:	e0 2d       	mov	r30, r0
    12da:	c7 01       	movw	r24, r14
    12dc:	09 95       	icall
    12de:	d7 01       	movw	r26, r14
    12e0:	ed 91       	ld	r30, X+
    12e2:	fc 91       	ld	r31, X
    12e4:	61 2f       	mov	r22, r17
    12e6:	61 60       	ori	r22, 0x01	; 1
    12e8:	04 80       	ldd	r0, Z+4	; 0x04
    12ea:	f5 81       	ldd	r31, Z+5	; 0x05
    12ec:	e0 2d       	mov	r30, r0
    12ee:	c7 01       	movw	r24, r14
    12f0:	09 95       	icall
    12f2:	d7 01       	movw	r26, r14
    12f4:	ed 91       	ld	r30, X+
    12f6:	fc 91       	ld	r31, X
    12f8:	06 80       	ldd	r0, Z+6	; 0x06
    12fa:	f7 81       	ldd	r31, Z+7	; 0x07
    12fc:	e0 2d       	mov	r30, r0
    12fe:	61 e0       	ldi	r22, 0x01	; 1
    1300:	c7 01       	movw	r24, r14
    1302:	09 95       	icall
    1304:	08 2f       	mov	r16, r24
    1306:	10 e0       	ldi	r17, 0x00	; 0
    1308:	10 2f       	mov	r17, r16
    130a:	00 27       	eor	r16, r16
    130c:	d7 01       	movw	r26, r14
    130e:	ed 91       	ld	r30, X+
    1310:	fc 91       	ld	r31, X
    1312:	06 80       	ldd	r0, Z+6	; 0x06
    1314:	f7 81       	ldd	r31, Z+7	; 0x07
    1316:	e0 2d       	mov	r30, r0
    1318:	60 e0       	ldi	r22, 0x00	; 0
    131a:	c7 01       	movw	r24, r14
    131c:	09 95       	icall
    131e:	08 2b       	or	r16, r24
    1320:	d7 01       	movw	r26, r14
    1322:	ed 91       	ld	r30, X+
    1324:	fc 91       	ld	r31, X
    1326:	02 80       	ldd	r0, Z+2	; 0x02
    1328:	f3 81       	ldd	r31, Z+3	; 0x03
    132a:	e0 2d       	mov	r30, r0
    132c:	c7 01       	movw	r24, r14
    132e:	09 95       	icall
    1330:	c8 01       	movw	r24, r16
    1332:	0f 90       	pop	r0
    1334:	df 91       	pop	r29
    1336:	cf 91       	pop	r28
    1338:	1f 91       	pop	r17
    133a:	0f 91       	pop	r16
    133c:	ff 90       	pop	r15
    133e:	ef 90       	pop	r14
    1340:	08 95       	ret

00001342 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE14read_reg_multiEhhPhj>:
    1342:	cf 92       	push	r12
    1344:	df 92       	push	r13
    1346:	ef 92       	push	r14
    1348:	ff 92       	push	r15
    134a:	0f 93       	push	r16
    134c:	1f 93       	push	r17
    134e:	cf 93       	push	r28
    1350:	df 93       	push	r29
    1352:	00 d0       	rcall	.+0      	; 0x1354 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x12>
    1354:	1f 92       	push	r1
    1356:	cd b7       	in	r28, 0x3d	; 61
    1358:	de b7       	in	r29, 0x3e	; 62
    135a:	6c 01       	movw	r12, r24
    135c:	f6 2e       	mov	r15, r22
    135e:	dc 01       	movw	r26, r24
    1360:	ed 91       	ld	r30, X+
    1362:	fc 91       	ld	r31, X
    1364:	01 90       	ld	r0, Z+
    1366:	f0 81       	ld	r31, Z
    1368:	e0 2d       	mov	r30, r0
    136a:	2a 83       	std	Y+2, r18	; 0x02
    136c:	3b 83       	std	Y+3, r19	; 0x03
    136e:	49 83       	std	Y+1, r20	; 0x01
    1370:	09 95       	icall
    1372:	d6 01       	movw	r26, r12
    1374:	ed 91       	ld	r30, X+
    1376:	fc 91       	ld	r31, X
    1378:	04 80       	ldd	r0, Z+4	; 0x04
    137a:	f5 81       	ldd	r31, Z+5	; 0x05
    137c:	e0 2d       	mov	r30, r0
    137e:	6f 2d       	mov	r22, r15
    1380:	c6 01       	movw	r24, r12
    1382:	09 95       	icall
    1384:	d6 01       	movw	r26, r12
    1386:	ed 91       	ld	r30, X+
    1388:	fc 91       	ld	r31, X
    138a:	04 80       	ldd	r0, Z+4	; 0x04
    138c:	f5 81       	ldd	r31, Z+5	; 0x05
    138e:	e0 2d       	mov	r30, r0
    1390:	49 81       	ldd	r20, Y+1	; 0x01
    1392:	64 2f       	mov	r22, r20
    1394:	c6 01       	movw	r24, r12
    1396:	09 95       	icall
    1398:	d6 01       	movw	r26, r12
    139a:	ed 91       	ld	r30, X+
    139c:	fc 91       	ld	r31, X
    139e:	01 90       	ld	r0, Z+
    13a0:	f0 81       	ld	r31, Z
    13a2:	e0 2d       	mov	r30, r0
    13a4:	c6 01       	movw	r24, r12
    13a6:	09 95       	icall
    13a8:	d6 01       	movw	r26, r12
    13aa:	ed 91       	ld	r30, X+
    13ac:	fc 91       	ld	r31, X
    13ae:	6f 2d       	mov	r22, r15
    13b0:	61 60       	ori	r22, 0x01	; 1
    13b2:	04 80       	ldd	r0, Z+4	; 0x04
    13b4:	f5 81       	ldd	r31, Z+5	; 0x05
    13b6:	e0 2d       	mov	r30, r0
    13b8:	c6 01       	movw	r24, r12
    13ba:	09 95       	icall
    13bc:	2a 81       	ldd	r18, Y+2	; 0x02
    13be:	e2 2e       	mov	r14, r18
    13c0:	3b 81       	ldd	r19, Y+3	; 0x03
    13c2:	f3 2e       	mov	r15, r19
    13c4:	0e 0d       	add	r16, r14
    13c6:	1f 1d       	adc	r17, r15
    13c8:	d6 01       	movw	r26, r12
    13ca:	ed 91       	ld	r30, X+
    13cc:	fc 91       	ld	r31, X
    13ce:	e0 16       	cp	r14, r16
    13d0:	f1 06       	cpc	r15, r17
    13d2:	51 f0       	breq	.+20     	; 0x13e8 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0xa6>
    13d4:	06 80       	ldd	r0, Z+6	; 0x06
    13d6:	f7 81       	ldd	r31, Z+7	; 0x07
    13d8:	e0 2d       	mov	r30, r0
    13da:	61 e0       	ldi	r22, 0x01	; 1
    13dc:	c6 01       	movw	r24, r12
    13de:	09 95       	icall
    13e0:	f7 01       	movw	r30, r14
    13e2:	81 93       	st	Z+, r24
    13e4:	7f 01       	movw	r14, r30
    13e6:	f0 cf       	rjmp	.-32     	; 0x13c8 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE14read_reg_multiEhhPhj+0x86>
    13e8:	02 80       	ldd	r0, Z+2	; 0x02
    13ea:	f3 81       	ldd	r31, Z+3	; 0x03
    13ec:	e0 2d       	mov	r30, r0
    13ee:	c6 01       	movw	r24, r12
    13f0:	0f 90       	pop	r0
    13f2:	0f 90       	pop	r0
    13f4:	0f 90       	pop	r0
    13f6:	df 91       	pop	r29
    13f8:	cf 91       	pop	r28
    13fa:	1f 91       	pop	r17
    13fc:	0f 91       	pop	r16
    13fe:	ff 90       	pop	r15
    1400:	ef 90       	pop	r14
    1402:	df 90       	pop	r13
    1404:	cf 90       	pop	r12
    1406:	09 94       	ijmp

00001408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>:
    1408:	88 23       	and	r24, r24
    140a:	21 f0       	breq	.+8      	; 0x1414 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2+0xc>
    140c:	a0 98       	cbi	0x14, 0	; 20
    140e:	82 30       	cpi	r24, 0x02	; 2
    1410:	19 f0       	breq	.+6      	; 0x1418 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2+0x10>
    1412:	08 95       	ret
    1414:	a0 9a       	sbi	0x14, 0	; 20
    1416:	08 95       	ret
    1418:	a8 9a       	sbi	0x15, 0	; 21
    141a:	08 95       	ret

0000141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>:
    141c:	00 00       	nop
    141e:	00 00       	nop
    1420:	08 95       	ret

00001422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>:
    1422:	00 00       	nop
    1424:	00 00       	nop
    1426:	08 95       	ret

00001428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>:
    1428:	00 00       	nop
    142a:	00 00       	nop
    142c:	08 95       	ret

0000142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>:
    142e:	00 00       	nop
    1430:	00 00       	nop
    1432:	08 95       	ret

00001434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>:
    1434:	00 00       	nop
    1436:	00 00       	nop
    1438:	08 95       	ret

0000143a <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE4readEh>:
    143a:	1f 93       	push	r17
    143c:	cf 93       	push	r28
    143e:	df 93       	push	r29
    1440:	16 2f       	mov	r17, r22
    1442:	a3 98       	cbi	0x14, 3	; 20
    1444:	80 e0       	ldi	r24, 0x00	; 0
    1446:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    144a:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    144e:	d8 e0       	ldi	r29, 0x08	; 8
    1450:	c0 e0       	ldi	r28, 0x00	; 0
    1452:	cc 0f       	add	r28, r28
    1454:	81 e0       	ldi	r24, 0x01	; 1
    1456:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    145a:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    145e:	9b 99       	sbic	0x13, 3	; 19
    1460:	c1 60       	ori	r28, 0x01	; 1
    1462:	80 e0       	ldi	r24, 0x00	; 0
    1464:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1468:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    146c:	d1 50       	subi	r29, 0x01	; 1
    146e:	89 f7       	brne	.-30     	; 0x1452 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE4readEh+0x18>
    1470:	11 23       	and	r17, r17
    1472:	11 f0       	breq	.+4      	; 0x1478 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE4readEh+0x3e>
    1474:	a3 9a       	sbi	0x14, 3	; 20
    1476:	01 c0       	rjmp	.+2      	; 0x147a <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE4readEh+0x40>
    1478:	a3 98       	cbi	0x14, 3	; 20
    147a:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    147e:	81 e0       	ldi	r24, 0x01	; 1
    1480:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1484:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    1488:	80 e0       	ldi	r24, 0x00	; 0
    148a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    148e:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    1492:	a3 98       	cbi	0x14, 3	; 20
    1494:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    1498:	8c 2f       	mov	r24, r28
    149a:	df 91       	pop	r29
    149c:	cf 91       	pop	r28
    149e:	1f 91       	pop	r17
    14a0:	08 95       	ret

000014a2 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE4readEh>:
    14a2:	1f 93       	push	r17
    14a4:	cf 93       	push	r28
    14a6:	df 93       	push	r29
    14a8:	16 2f       	mov	r17, r22
    14aa:	a4 98       	cbi	0x14, 4	; 20
    14ac:	80 e0       	ldi	r24, 0x00	; 0
    14ae:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    14b2:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    14b6:	d8 e0       	ldi	r29, 0x08	; 8
    14b8:	c0 e0       	ldi	r28, 0x00	; 0
    14ba:	cc 0f       	add	r28, r28
    14bc:	81 e0       	ldi	r24, 0x01	; 1
    14be:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    14c2:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    14c6:	9c 99       	sbic	0x13, 4	; 19
    14c8:	c1 60       	ori	r28, 0x01	; 1
    14ca:	80 e0       	ldi	r24, 0x00	; 0
    14cc:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    14d0:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    14d4:	d1 50       	subi	r29, 0x01	; 1
    14d6:	89 f7       	brne	.-30     	; 0x14ba <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE4readEh+0x18>
    14d8:	11 23       	and	r17, r17
    14da:	11 f0       	breq	.+4      	; 0x14e0 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE4readEh+0x3e>
    14dc:	a4 9a       	sbi	0x14, 4	; 20
    14de:	01 c0       	rjmp	.+2      	; 0x14e2 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE4readEh+0x40>
    14e0:	a4 98       	cbi	0x14, 4	; 20
    14e2:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    14e6:	81 e0       	ldi	r24, 0x01	; 1
    14e8:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    14ec:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    14f0:	80 e0       	ldi	r24, 0x00	; 0
    14f2:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    14f6:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    14fa:	a4 98       	cbi	0x14, 4	; 20
    14fc:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    1500:	8c 2f       	mov	r24, r28
    1502:	df 91       	pop	r29
    1504:	cf 91       	pop	r28
    1506:	1f 91       	pop	r17
    1508:	08 95       	ret

0000150a <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE4readEh>:
    150a:	1f 93       	push	r17
    150c:	cf 93       	push	r28
    150e:	df 93       	push	r29
    1510:	16 2f       	mov	r17, r22
    1512:	a1 98       	cbi	0x14, 1	; 20
    1514:	80 e0       	ldi	r24, 0x00	; 0
    1516:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    151a:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    151e:	d8 e0       	ldi	r29, 0x08	; 8
    1520:	c0 e0       	ldi	r28, 0x00	; 0
    1522:	cc 0f       	add	r28, r28
    1524:	81 e0       	ldi	r24, 0x01	; 1
    1526:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    152a:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    152e:	99 99       	sbic	0x13, 1	; 19
    1530:	c1 60       	ori	r28, 0x01	; 1
    1532:	80 e0       	ldi	r24, 0x00	; 0
    1534:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1538:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    153c:	d1 50       	subi	r29, 0x01	; 1
    153e:	89 f7       	brne	.-30     	; 0x1522 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE4readEh+0x18>
    1540:	11 23       	and	r17, r17
    1542:	11 f0       	breq	.+4      	; 0x1548 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE4readEh+0x3e>
    1544:	a1 9a       	sbi	0x14, 1	; 20
    1546:	01 c0       	rjmp	.+2      	; 0x154a <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE4readEh+0x40>
    1548:	a1 98       	cbi	0x14, 1	; 20
    154a:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    154e:	81 e0       	ldi	r24, 0x01	; 1
    1550:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1554:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    1558:	80 e0       	ldi	r24, 0x00	; 0
    155a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    155e:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    1562:	a1 98       	cbi	0x14, 1	; 20
    1564:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    1568:	8c 2f       	mov	r24, r28
    156a:	df 91       	pop	r29
    156c:	cf 91       	pop	r28
    156e:	1f 91       	pop	r17
    1570:	08 95       	ret

00001572 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE4readEh>:
    1572:	1f 93       	push	r17
    1574:	cf 93       	push	r28
    1576:	df 93       	push	r29
    1578:	16 2f       	mov	r17, r22
    157a:	a2 98       	cbi	0x14, 2	; 20
    157c:	80 e0       	ldi	r24, 0x00	; 0
    157e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1582:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    1586:	d8 e0       	ldi	r29, 0x08	; 8
    1588:	c0 e0       	ldi	r28, 0x00	; 0
    158a:	cc 0f       	add	r28, r28
    158c:	81 e0       	ldi	r24, 0x01	; 1
    158e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1592:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    1596:	9a 99       	sbic	0x13, 2	; 19
    1598:	c1 60       	ori	r28, 0x01	; 1
    159a:	80 e0       	ldi	r24, 0x00	; 0
    159c:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    15a0:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    15a4:	d1 50       	subi	r29, 0x01	; 1
    15a6:	89 f7       	brne	.-30     	; 0x158a <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE4readEh+0x18>
    15a8:	11 23       	and	r17, r17
    15aa:	11 f0       	breq	.+4      	; 0x15b0 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE4readEh+0x3e>
    15ac:	a2 9a       	sbi	0x14, 2	; 20
    15ae:	01 c0       	rjmp	.+2      	; 0x15b2 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE4readEh+0x40>
    15b0:	a2 98       	cbi	0x14, 2	; 20
    15b2:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    15b6:	81 e0       	ldi	r24, 0x01	; 1
    15b8:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    15bc:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    15c0:	80 e0       	ldi	r24, 0x00	; 0
    15c2:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    15c6:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    15ca:	a2 98       	cbi	0x14, 2	; 20
    15cc:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    15d0:	8c 2f       	mov	r24, r28
    15d2:	df 91       	pop	r29
    15d4:	cf 91       	pop	r28
    15d6:	1f 91       	pop	r17
    15d8:	08 95       	ret

000015da <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE4readEh>:
    15da:	1f 93       	push	r17
    15dc:	cf 93       	push	r28
    15de:	df 93       	push	r29
    15e0:	16 2f       	mov	r17, r22
    15e2:	a5 98       	cbi	0x14, 5	; 20
    15e4:	80 e0       	ldi	r24, 0x00	; 0
    15e6:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    15ea:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    15ee:	d8 e0       	ldi	r29, 0x08	; 8
    15f0:	c0 e0       	ldi	r28, 0x00	; 0
    15f2:	cc 0f       	add	r28, r28
    15f4:	81 e0       	ldi	r24, 0x01	; 1
    15f6:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    15fa:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    15fe:	9d 99       	sbic	0x13, 5	; 19
    1600:	c1 60       	ori	r28, 0x01	; 1
    1602:	80 e0       	ldi	r24, 0x00	; 0
    1604:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1608:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    160c:	d1 50       	subi	r29, 0x01	; 1
    160e:	89 f7       	brne	.-30     	; 0x15f2 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE4readEh+0x18>
    1610:	11 23       	and	r17, r17
    1612:	11 f0       	breq	.+4      	; 0x1618 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE4readEh+0x3e>
    1614:	a5 9a       	sbi	0x14, 5	; 20
    1616:	01 c0       	rjmp	.+2      	; 0x161a <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE4readEh+0x40>
    1618:	a5 98       	cbi	0x14, 5	; 20
    161a:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    161e:	81 e0       	ldi	r24, 0x01	; 1
    1620:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1624:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    1628:	80 e0       	ldi	r24, 0x00	; 0
    162a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    162e:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    1632:	a5 98       	cbi	0x14, 5	; 20
    1634:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    1638:	8c 2f       	mov	r24, r28
    163a:	df 91       	pop	r29
    163c:	cf 91       	pop	r28
    163e:	1f 91       	pop	r17
    1640:	08 95       	ret

00001642 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5writeEh>:
    1642:	cf 93       	push	r28
    1644:	df 93       	push	r29
    1646:	d6 2f       	mov	r29, r22
    1648:	c8 e0       	ldi	r28, 0x08	; 8
    164a:	80 e0       	ldi	r24, 0x00	; 0
    164c:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1650:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    1654:	d7 ff       	sbrs	r29, 7
    1656:	02 c0       	rjmp	.+4      	; 0x165c <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5writeEh+0x1a>
    1658:	a2 98       	cbi	0x14, 2	; 20
    165a:	01 c0       	rjmp	.+2      	; 0x165e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5writeEh+0x1c>
    165c:	a2 9a       	sbi	0x14, 2	; 20
    165e:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    1662:	81 e0       	ldi	r24, 0x01	; 1
    1664:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1668:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    166c:	dd 0f       	add	r29, r29
    166e:	c1 50       	subi	r28, 0x01	; 1
    1670:	61 f7       	brne	.-40     	; 0x164a <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5writeEh+0x8>
    1672:	80 e0       	ldi	r24, 0x00	; 0
    1674:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1678:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    167c:	a2 98       	cbi	0x14, 2	; 20
    167e:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    1682:	81 e0       	ldi	r24, 0x01	; 1
    1684:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1688:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    168c:	c3 b3       	in	r28, 0x13	; 19
    168e:	80 e0       	ldi	r24, 0x00	; 0
    1690:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1694:	0e 94 17 0a 	call	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>
    1698:	c2 fb       	bst	r28, 2
    169a:	cc 27       	eor	r28, r28
    169c:	c0 f9       	bld	r28, 0
    169e:	81 e0       	ldi	r24, 0x01	; 1
    16a0:	8c 27       	eor	r24, r28
    16a2:	df 91       	pop	r29
    16a4:	cf 91       	pop	r28
    16a6:	08 95       	ret

000016a8 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5writeEh>:
    16a8:	cf 93       	push	r28
    16aa:	df 93       	push	r29
    16ac:	d6 2f       	mov	r29, r22
    16ae:	c8 e0       	ldi	r28, 0x08	; 8
    16b0:	80 e0       	ldi	r24, 0x00	; 0
    16b2:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    16b6:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    16ba:	d7 ff       	sbrs	r29, 7
    16bc:	02 c0       	rjmp	.+4      	; 0x16c2 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5writeEh+0x1a>
    16be:	a1 98       	cbi	0x14, 1	; 20
    16c0:	01 c0       	rjmp	.+2      	; 0x16c4 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5writeEh+0x1c>
    16c2:	a1 9a       	sbi	0x14, 1	; 20
    16c4:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    16c8:	81 e0       	ldi	r24, 0x01	; 1
    16ca:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    16ce:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    16d2:	dd 0f       	add	r29, r29
    16d4:	c1 50       	subi	r28, 0x01	; 1
    16d6:	61 f7       	brne	.-40     	; 0x16b0 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5writeEh+0x8>
    16d8:	80 e0       	ldi	r24, 0x00	; 0
    16da:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    16de:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    16e2:	a1 98       	cbi	0x14, 1	; 20
    16e4:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    16e8:	81 e0       	ldi	r24, 0x01	; 1
    16ea:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    16ee:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    16f2:	c3 b3       	in	r28, 0x13	; 19
    16f4:	80 e0       	ldi	r24, 0x00	; 0
    16f6:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    16fa:	0e 94 1a 0a 	call	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>
    16fe:	c6 95       	lsr	r28
    1700:	c1 70       	andi	r28, 0x01	; 1
    1702:	81 e0       	ldi	r24, 0x01	; 1
    1704:	8c 27       	eor	r24, r28
    1706:	df 91       	pop	r29
    1708:	cf 91       	pop	r28
    170a:	08 95       	ret

0000170c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5writeEh>:
    170c:	cf 93       	push	r28
    170e:	df 93       	push	r29
    1710:	d6 2f       	mov	r29, r22
    1712:	c8 e0       	ldi	r28, 0x08	; 8
    1714:	80 e0       	ldi	r24, 0x00	; 0
    1716:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    171a:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    171e:	d7 ff       	sbrs	r29, 7
    1720:	02 c0       	rjmp	.+4      	; 0x1726 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5writeEh+0x1a>
    1722:	a5 98       	cbi	0x14, 5	; 20
    1724:	01 c0       	rjmp	.+2      	; 0x1728 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5writeEh+0x1c>
    1726:	a5 9a       	sbi	0x14, 5	; 20
    1728:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    172c:	81 e0       	ldi	r24, 0x01	; 1
    172e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1732:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    1736:	dd 0f       	add	r29, r29
    1738:	c1 50       	subi	r28, 0x01	; 1
    173a:	61 f7       	brne	.-40     	; 0x1714 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5writeEh+0x8>
    173c:	80 e0       	ldi	r24, 0x00	; 0
    173e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1742:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    1746:	a5 98       	cbi	0x14, 5	; 20
    1748:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    174c:	81 e0       	ldi	r24, 0x01	; 1
    174e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1752:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    1756:	c3 b3       	in	r28, 0x13	; 19
    1758:	80 e0       	ldi	r24, 0x00	; 0
    175a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    175e:	0e 94 0e 0a 	call	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>
    1762:	c5 fb       	bst	r28, 5
    1764:	cc 27       	eor	r28, r28
    1766:	c0 f9       	bld	r28, 0
    1768:	81 e0       	ldi	r24, 0x01	; 1
    176a:	8c 27       	eor	r24, r28
    176c:	df 91       	pop	r29
    176e:	cf 91       	pop	r28
    1770:	08 95       	ret

00001772 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5writeEh>:
    1772:	cf 93       	push	r28
    1774:	df 93       	push	r29
    1776:	d6 2f       	mov	r29, r22
    1778:	c8 e0       	ldi	r28, 0x08	; 8
    177a:	80 e0       	ldi	r24, 0x00	; 0
    177c:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1780:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    1784:	d7 ff       	sbrs	r29, 7
    1786:	02 c0       	rjmp	.+4      	; 0x178c <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5writeEh+0x1a>
    1788:	a3 98       	cbi	0x14, 3	; 20
    178a:	01 c0       	rjmp	.+2      	; 0x178e <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5writeEh+0x1c>
    178c:	a3 9a       	sbi	0x14, 3	; 20
    178e:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    1792:	81 e0       	ldi	r24, 0x01	; 1
    1794:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1798:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    179c:	dd 0f       	add	r29, r29
    179e:	c1 50       	subi	r28, 0x01	; 1
    17a0:	61 f7       	brne	.-40     	; 0x177a <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5writeEh+0x8>
    17a2:	80 e0       	ldi	r24, 0x00	; 0
    17a4:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    17a8:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    17ac:	a3 98       	cbi	0x14, 3	; 20
    17ae:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    17b2:	81 e0       	ldi	r24, 0x01	; 1
    17b4:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    17b8:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    17bc:	c3 b3       	in	r28, 0x13	; 19
    17be:	80 e0       	ldi	r24, 0x00	; 0
    17c0:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    17c4:	0e 94 14 0a 	call	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>
    17c8:	c3 fb       	bst	r28, 3
    17ca:	cc 27       	eor	r28, r28
    17cc:	c0 f9       	bld	r28, 0
    17ce:	81 e0       	ldi	r24, 0x01	; 1
    17d0:	8c 27       	eor	r24, r28
    17d2:	df 91       	pop	r29
    17d4:	cf 91       	pop	r28
    17d6:	08 95       	ret

000017d8 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5writeEh>:
    17d8:	cf 93       	push	r28
    17da:	df 93       	push	r29
    17dc:	d6 2f       	mov	r29, r22
    17de:	c8 e0       	ldi	r28, 0x08	; 8
    17e0:	80 e0       	ldi	r24, 0x00	; 0
    17e2:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    17e6:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    17ea:	d7 ff       	sbrs	r29, 7
    17ec:	02 c0       	rjmp	.+4      	; 0x17f2 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5writeEh+0x1a>
    17ee:	a4 98       	cbi	0x14, 4	; 20
    17f0:	01 c0       	rjmp	.+2      	; 0x17f4 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5writeEh+0x1c>
    17f2:	a4 9a       	sbi	0x14, 4	; 20
    17f4:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    17f8:	81 e0       	ldi	r24, 0x01	; 1
    17fa:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    17fe:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    1802:	dd 0f       	add	r29, r29
    1804:	c1 50       	subi	r28, 0x01	; 1
    1806:	61 f7       	brne	.-40     	; 0x17e0 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5writeEh+0x8>
    1808:	80 e0       	ldi	r24, 0x00	; 0
    180a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    180e:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    1812:	a4 98       	cbi	0x14, 4	; 20
    1814:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    1818:	81 e0       	ldi	r24, 0x01	; 1
    181a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    181e:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    1822:	c3 b3       	in	r28, 0x13	; 19
    1824:	80 e0       	ldi	r24, 0x00	; 0
    1826:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    182a:	0e 94 11 0a 	call	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>
    182e:	c2 95       	swap	r28
    1830:	c1 70       	andi	r28, 0x01	; 1
    1832:	81 e0       	ldi	r24, 0x01	; 1
    1834:	8c 27       	eor	r24, r28
    1836:	df 91       	pop	r29
    1838:	cf 91       	pop	r28
    183a:	08 95       	ret

0000183c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5startEv>:
    183c:	81 e0       	ldi	r24, 0x01	; 1
    183e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1842:	a5 98       	cbi	0x14, 5	; 20
    1844:	81 e0       	ldi	r24, 0x01	; 1
    1846:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    184a:	a5 9a       	sbi	0x14, 5	; 20
    184c:	80 e0       	ldi	r24, 0x00	; 0
    184e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1852:	a5 98       	cbi	0x14, 5	; 20
    1854:	0c 94 0e 0a 	jmp	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>

00001858 <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE4stopEv>:
    1858:	80 e0       	ldi	r24, 0x00	; 0
    185a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    185e:	a5 9a       	sbi	0x14, 5	; 20
    1860:	81 e0       	ldi	r24, 0x01	; 1
    1862:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1866:	a5 9a       	sbi	0x14, 5	; 20
    1868:	81 e0       	ldi	r24, 0x01	; 1
    186a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    186e:	a5 98       	cbi	0x14, 5	; 20
    1870:	0c 94 0e 0a 	jmp	0x141c	; 0x141c <_ZN4TI2CILh2ELh5ELh0ELh2ELh2EE5delayEv.isra.18>

00001874 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5startEv>:
    1874:	81 e0       	ldi	r24, 0x01	; 1
    1876:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    187a:	a3 98       	cbi	0x14, 3	; 20
    187c:	81 e0       	ldi	r24, 0x01	; 1
    187e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1882:	a3 9a       	sbi	0x14, 3	; 20
    1884:	80 e0       	ldi	r24, 0x00	; 0
    1886:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    188a:	a3 98       	cbi	0x14, 3	; 20
    188c:	0c 94 14 0a 	jmp	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>

00001890 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE4stopEv>:
    1890:	80 e0       	ldi	r24, 0x00	; 0
    1892:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1896:	a3 9a       	sbi	0x14, 3	; 20
    1898:	81 e0       	ldi	r24, 0x01	; 1
    189a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    189e:	a3 9a       	sbi	0x14, 3	; 20
    18a0:	81 e0       	ldi	r24, 0x01	; 1
    18a2:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18a6:	a3 98       	cbi	0x14, 3	; 20
    18a8:	0c 94 14 0a 	jmp	0x1428	; 0x1428 <_ZN4TI2CILh2ELh3ELh0ELh2ELh2EE5delayEv.isra.20>

000018ac <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5startEv>:
    18ac:	81 e0       	ldi	r24, 0x01	; 1
    18ae:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18b2:	a4 98       	cbi	0x14, 4	; 20
    18b4:	81 e0       	ldi	r24, 0x01	; 1
    18b6:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18ba:	a4 9a       	sbi	0x14, 4	; 20
    18bc:	80 e0       	ldi	r24, 0x00	; 0
    18be:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18c2:	a4 98       	cbi	0x14, 4	; 20
    18c4:	0c 94 11 0a 	jmp	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>

000018c8 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE4stopEv>:
    18c8:	80 e0       	ldi	r24, 0x00	; 0
    18ca:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18ce:	a4 9a       	sbi	0x14, 4	; 20
    18d0:	81 e0       	ldi	r24, 0x01	; 1
    18d2:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18d6:	a4 9a       	sbi	0x14, 4	; 20
    18d8:	81 e0       	ldi	r24, 0x01	; 1
    18da:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18de:	a4 98       	cbi	0x14, 4	; 20
    18e0:	0c 94 11 0a 	jmp	0x1422	; 0x1422 <_ZN4TI2CILh2ELh4ELh0ELh2ELh2EE5delayEv.isra.19>

000018e4 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5startEv>:
    18e4:	81 e0       	ldi	r24, 0x01	; 1
    18e6:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18ea:	a1 98       	cbi	0x14, 1	; 20
    18ec:	81 e0       	ldi	r24, 0x01	; 1
    18ee:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18f2:	a1 9a       	sbi	0x14, 1	; 20
    18f4:	80 e0       	ldi	r24, 0x00	; 0
    18f6:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    18fa:	a1 98       	cbi	0x14, 1	; 20
    18fc:	0c 94 1a 0a 	jmp	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>

00001900 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE4stopEv>:
    1900:	80 e0       	ldi	r24, 0x00	; 0
    1902:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1906:	a1 9a       	sbi	0x14, 1	; 20
    1908:	81 e0       	ldi	r24, 0x01	; 1
    190a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    190e:	a1 9a       	sbi	0x14, 1	; 20
    1910:	81 e0       	ldi	r24, 0x01	; 1
    1912:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1916:	a1 98       	cbi	0x14, 1	; 20
    1918:	0c 94 1a 0a 	jmp	0x1434	; 0x1434 <_ZN4TI2CILh2ELh1ELh0ELh2ELh2EE5delayEv.isra.22>

0000191c <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5startEv>:
    191c:	81 e0       	ldi	r24, 0x01	; 1
    191e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1922:	a2 98       	cbi	0x14, 2	; 20
    1924:	81 e0       	ldi	r24, 0x01	; 1
    1926:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    192a:	a2 9a       	sbi	0x14, 2	; 20
    192c:	80 e0       	ldi	r24, 0x00	; 0
    192e:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1932:	a2 98       	cbi	0x14, 2	; 20
    1934:	0c 94 17 0a 	jmp	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>

00001938 <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE4stopEv>:
    1938:	80 e0       	ldi	r24, 0x00	; 0
    193a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    193e:	a2 9a       	sbi	0x14, 2	; 20
    1940:	81 e0       	ldi	r24, 0x01	; 1
    1942:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1946:	a2 9a       	sbi	0x14, 2	; 20
    1948:	81 e0       	ldi	r24, 0x01	; 1
    194a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    194e:	a2 98       	cbi	0x14, 2	; 20
    1950:	0c 94 17 0a 	jmp	0x142e	; 0x142e <_ZN4TI2CILh2ELh2ELh0ELh2ELh2EE5delayEv.isra.21>

00001954 <main>:
    1954:	cf 93       	push	r28
    1956:	df 93       	push	r29
    1958:	cd b7       	in	r28, 0x3d	; 61
    195a:	de b7       	in	r29, 0x3e	; 62
    195c:	ec 97       	sbiw	r28, 0x3c	; 60
    195e:	0f b6       	in	r0, 0x3f	; 63
    1960:	f8 94       	cli
    1962:	de bf       	out	0x3e, r29	; 62
    1964:	0f be       	out	0x3f, r0	; 63
    1966:	cd bf       	out	0x3d, r28	; 61
    1968:	80 e6       	ldi	r24, 0x60	; 96
    196a:	90 e0       	ldi	r25, 0x00	; 0
    196c:	9f 93       	push	r25
    196e:	8f 93       	push	r24
    1970:	05 e7       	ldi	r16, 0x75	; 117
    1972:	11 e0       	ldi	r17, 0x01	; 1
    1974:	1f 93       	push	r17
    1976:	0f 93       	push	r16
    1978:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    197c:	ce 01       	movw	r24, r28
    197e:	c1 96       	adiw	r24, 0x31	; 49
    1980:	0e 94 99 0e 	call	0x1d32	; 0x1d32 <_ZN8APDS9950C1Ev>
    1984:	ce 01       	movw	r24, r28
    1986:	85 96       	adiw	r24, 0x25	; 37
    1988:	0e 94 99 0e 	call	0x1d32	; 0x1d32 <_ZN8APDS9950C1Ev>
    198c:	ce 01       	movw	r24, r28
    198e:	49 96       	adiw	r24, 0x19	; 25
    1990:	0e 94 99 0e 	call	0x1d32	; 0x1d32 <_ZN8APDS9950C1Ev>
    1994:	ce 01       	movw	r24, r28
    1996:	0d 96       	adiw	r24, 0x0d	; 13
    1998:	0e 94 99 0e 	call	0x1d32	; 0x1d32 <_ZN8APDS9950C1Ev>
    199c:	ce 01       	movw	r24, r28
    199e:	01 96       	adiw	r24, 0x01	; 1
    19a0:	0e 94 99 0e 	call	0x1d32	; 0x1d32 <_ZN8APDS9950C1Ev>
    19a4:	60 e3       	ldi	r22, 0x30	; 48
    19a6:	71 e0       	ldi	r23, 0x01	; 1
    19a8:	ce 01       	movw	r24, r28
    19aa:	c1 96       	adiw	r24, 0x31	; 49
    19ac:	0e 94 a7 0e 	call	0x1d4e	; 0x1d4e <_ZN8APDS99504initEP13I2C_Interface>
    19b0:	9f 93       	push	r25
    19b2:	8f 93       	push	r24
    19b4:	82 e7       	ldi	r24, 0x72	; 114
    19b6:	e8 2e       	mov	r14, r24
    19b8:	80 e0       	ldi	r24, 0x00	; 0
    19ba:	f8 2e       	mov	r15, r24
    19bc:	ff 92       	push	r15
    19be:	ef 92       	push	r14
    19c0:	1f 93       	push	r17
    19c2:	0f 93       	push	r16
    19c4:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    19c8:	6c e2       	ldi	r22, 0x2C	; 44
    19ca:	71 e0       	ldi	r23, 0x01	; 1
    19cc:	ce 01       	movw	r24, r28
    19ce:	85 96       	adiw	r24, 0x25	; 37
    19d0:	0e 94 a7 0e 	call	0x1d4e	; 0x1d4e <_ZN8APDS99504initEP13I2C_Interface>
    19d4:	9f 93       	push	r25
    19d6:	8f 93       	push	r24
    19d8:	ff 92       	push	r15
    19da:	ef 92       	push	r14
    19dc:	1f 93       	push	r17
    19de:	0f 93       	push	r16
    19e0:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    19e4:	68 e2       	ldi	r22, 0x28	; 40
    19e6:	71 e0       	ldi	r23, 0x01	; 1
    19e8:	ce 01       	movw	r24, r28
    19ea:	49 96       	adiw	r24, 0x19	; 25
    19ec:	0e 94 a7 0e 	call	0x1d4e	; 0x1d4e <_ZN8APDS99504initEP13I2C_Interface>
    19f0:	9f 93       	push	r25
    19f2:	8f 93       	push	r24
    19f4:	ff 92       	push	r15
    19f6:	ef 92       	push	r14
    19f8:	1f 93       	push	r17
    19fa:	0f 93       	push	r16
    19fc:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    1a00:	64 e2       	ldi	r22, 0x24	; 36
    1a02:	71 e0       	ldi	r23, 0x01	; 1
    1a04:	ce 01       	movw	r24, r28
    1a06:	0d 96       	adiw	r24, 0x0d	; 13
    1a08:	0e 94 a7 0e 	call	0x1d4e	; 0x1d4e <_ZN8APDS99504initEP13I2C_Interface>
    1a0c:	9f 93       	push	r25
    1a0e:	8f 93       	push	r24
    1a10:	ff 92       	push	r15
    1a12:	ef 92       	push	r14
    1a14:	1f 93       	push	r17
    1a16:	0f 93       	push	r16
    1a18:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    1a1c:	60 e2       	ldi	r22, 0x20	; 32
    1a1e:	71 e0       	ldi	r23, 0x01	; 1
    1a20:	ce 01       	movw	r24, r28
    1a22:	01 96       	adiw	r24, 0x01	; 1
    1a24:	0e 94 a7 0e 	call	0x1d4e	; 0x1d4e <_ZN8APDS99504initEP13I2C_Interface>
    1a28:	9f 93       	push	r25
    1a2a:	8f 93       	push	r24
    1a2c:	ff 92       	push	r15
    1a2e:	ef 92       	push	r14
    1a30:	1f 93       	push	r17
    1a32:	0f 93       	push	r16
    1a34:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    1a38:	0f b6       	in	r0, 0x3f	; 63
    1a3a:	f8 94       	cli
    1a3c:	de bf       	out	0x3e, r29	; 62
    1a3e:	0f be       	out	0x3f, r0	; 63
    1a40:	cd bf       	out	0x3d, r28	; 61
    1a42:	9f e7       	ldi	r25, 0x7F	; 127
    1a44:	e9 2e       	mov	r14, r25
    1a46:	90 e0       	ldi	r25, 0x00	; 0
    1a48:	f9 2e       	mov	r15, r25
    1a4a:	2c e8       	ldi	r18, 0x8C	; 140
    1a4c:	c2 2e       	mov	r12, r18
    1a4e:	20 e0       	ldi	r18, 0x00	; 0
    1a50:	d2 2e       	mov	r13, r18
    1a52:	ce 01       	movw	r24, r28
    1a54:	c1 96       	adiw	r24, 0x31	; 49
    1a56:	0e 94 f5 0e 	call	0x1dea	; 0x1dea <_ZN8APDS99504readEv>
    1a5a:	ce 01       	movw	r24, r28
    1a5c:	85 96       	adiw	r24, 0x25	; 37
    1a5e:	0e 94 f5 0e 	call	0x1dea	; 0x1dea <_ZN8APDS99504readEv>
    1a62:	ce 01       	movw	r24, r28
    1a64:	49 96       	adiw	r24, 0x19	; 25
    1a66:	0e 94 f5 0e 	call	0x1dea	; 0x1dea <_ZN8APDS99504readEv>
    1a6a:	ce 01       	movw	r24, r28
    1a6c:	0d 96       	adiw	r24, 0x0d	; 13
    1a6e:	0e 94 f5 0e 	call	0x1dea	; 0x1dea <_ZN8APDS99504readEv>
    1a72:	ce 01       	movw	r24, r28
    1a74:	01 96       	adiw	r24, 0x01	; 1
    1a76:	0e 94 f5 0e 	call	0x1dea	; 0x1dea <_ZN8APDS99504readEv>
    1a7a:	89 ad       	ldd	r24, Y+57	; 0x39
    1a7c:	9a ad       	ldd	r25, Y+58	; 0x3a
    1a7e:	1f 92       	push	r1
    1a80:	1f 92       	push	r1
    1a82:	9f 93       	push	r25
    1a84:	8f 93       	push	r24
    1a86:	8f a9       	ldd	r24, Y+55	; 0x37
    1a88:	98 ad       	ldd	r25, Y+56	; 0x38
    1a8a:	1f 92       	push	r1
    1a8c:	1f 92       	push	r1
    1a8e:	9f 93       	push	r25
    1a90:	8f 93       	push	r24
    1a92:	8d a9       	ldd	r24, Y+53	; 0x35
    1a94:	9e a9       	ldd	r25, Y+54	; 0x36
    1a96:	1f 92       	push	r1
    1a98:	1f 92       	push	r1
    1a9a:	9f 93       	push	r25
    1a9c:	8f 93       	push	r24
    1a9e:	8b a9       	ldd	r24, Y+51	; 0x33
    1aa0:	9c a9       	ldd	r25, Y+52	; 0x34
    1aa2:	1f 92       	push	r1
    1aa4:	1f 92       	push	r1
    1aa6:	9f 93       	push	r25
    1aa8:	8f 93       	push	r24
    1aaa:	ff 92       	push	r15
    1aac:	ef 92       	push	r14
    1aae:	1f 93       	push	r17
    1ab0:	0f 93       	push	r16
    1ab2:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    1ab6:	8d a5       	ldd	r24, Y+45	; 0x2d
    1ab8:	9e a5       	ldd	r25, Y+46	; 0x2e
    1aba:	1f 92       	push	r1
    1abc:	1f 92       	push	r1
    1abe:	9f 93       	push	r25
    1ac0:	8f 93       	push	r24
    1ac2:	8b a5       	ldd	r24, Y+43	; 0x2b
    1ac4:	9c a5       	ldd	r25, Y+44	; 0x2c
    1ac6:	1f 92       	push	r1
    1ac8:	1f 92       	push	r1
    1aca:	9f 93       	push	r25
    1acc:	8f 93       	push	r24
    1ace:	89 a5       	ldd	r24, Y+41	; 0x29
    1ad0:	9a a5       	ldd	r25, Y+42	; 0x2a
    1ad2:	1f 92       	push	r1
    1ad4:	1f 92       	push	r1
    1ad6:	9f 93       	push	r25
    1ad8:	8f 93       	push	r24
    1ada:	8f a1       	ldd	r24, Y+39	; 0x27
    1adc:	98 a5       	ldd	r25, Y+40	; 0x28
    1ade:	1f 92       	push	r1
    1ae0:	1f 92       	push	r1
    1ae2:	9f 93       	push	r25
    1ae4:	8f 93       	push	r24
    1ae6:	ff 92       	push	r15
    1ae8:	ef 92       	push	r14
    1aea:	1f 93       	push	r17
    1aec:	0f 93       	push	r16
    1aee:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    1af2:	0f b6       	in	r0, 0x3f	; 63
    1af4:	f8 94       	cli
    1af6:	de bf       	out	0x3e, r29	; 62
    1af8:	0f be       	out	0x3f, r0	; 63
    1afa:	cd bf       	out	0x3d, r28	; 61
    1afc:	89 a1       	ldd	r24, Y+33	; 0x21
    1afe:	9a a1       	ldd	r25, Y+34	; 0x22
    1b00:	1f 92       	push	r1
    1b02:	1f 92       	push	r1
    1b04:	9f 93       	push	r25
    1b06:	8f 93       	push	r24
    1b08:	8f 8d       	ldd	r24, Y+31	; 0x1f
    1b0a:	98 a1       	ldd	r25, Y+32	; 0x20
    1b0c:	1f 92       	push	r1
    1b0e:	1f 92       	push	r1
    1b10:	9f 93       	push	r25
    1b12:	8f 93       	push	r24
    1b14:	8d 8d       	ldd	r24, Y+29	; 0x1d
    1b16:	9e 8d       	ldd	r25, Y+30	; 0x1e
    1b18:	1f 92       	push	r1
    1b1a:	1f 92       	push	r1
    1b1c:	9f 93       	push	r25
    1b1e:	8f 93       	push	r24
    1b20:	8b 8d       	ldd	r24, Y+27	; 0x1b
    1b22:	9c 8d       	ldd	r25, Y+28	; 0x1c
    1b24:	1f 92       	push	r1
    1b26:	1f 92       	push	r1
    1b28:	9f 93       	push	r25
    1b2a:	8f 93       	push	r24
    1b2c:	ff 92       	push	r15
    1b2e:	ef 92       	push	r14
    1b30:	1f 93       	push	r17
    1b32:	0f 93       	push	r16
    1b34:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    1b38:	8d 89       	ldd	r24, Y+21	; 0x15
    1b3a:	9e 89       	ldd	r25, Y+22	; 0x16
    1b3c:	1f 92       	push	r1
    1b3e:	1f 92       	push	r1
    1b40:	9f 93       	push	r25
    1b42:	8f 93       	push	r24
    1b44:	8b 89       	ldd	r24, Y+19	; 0x13
    1b46:	9c 89       	ldd	r25, Y+20	; 0x14
    1b48:	1f 92       	push	r1
    1b4a:	1f 92       	push	r1
    1b4c:	9f 93       	push	r25
    1b4e:	8f 93       	push	r24
    1b50:	89 89       	ldd	r24, Y+17	; 0x11
    1b52:	9a 89       	ldd	r25, Y+18	; 0x12
    1b54:	1f 92       	push	r1
    1b56:	1f 92       	push	r1
    1b58:	9f 93       	push	r25
    1b5a:	8f 93       	push	r24
    1b5c:	8f 85       	ldd	r24, Y+15	; 0x0f
    1b5e:	98 89       	ldd	r25, Y+16	; 0x10
    1b60:	1f 92       	push	r1
    1b62:	1f 92       	push	r1
    1b64:	9f 93       	push	r25
    1b66:	8f 93       	push	r24
    1b68:	ff 92       	push	r15
    1b6a:	ef 92       	push	r14
    1b6c:	1f 93       	push	r17
    1b6e:	0f 93       	push	r16
    1b70:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    1b74:	0f b6       	in	r0, 0x3f	; 63
    1b76:	f8 94       	cli
    1b78:	de bf       	out	0x3e, r29	; 62
    1b7a:	0f be       	out	0x3f, r0	; 63
    1b7c:	cd bf       	out	0x3d, r28	; 61
    1b7e:	89 85       	ldd	r24, Y+9	; 0x09
    1b80:	9a 85       	ldd	r25, Y+10	; 0x0a
    1b82:	1f 92       	push	r1
    1b84:	1f 92       	push	r1
    1b86:	9f 93       	push	r25
    1b88:	8f 93       	push	r24
    1b8a:	8f 81       	ldd	r24, Y+7	; 0x07
    1b8c:	98 85       	ldd	r25, Y+8	; 0x08
    1b8e:	1f 92       	push	r1
    1b90:	1f 92       	push	r1
    1b92:	9f 93       	push	r25
    1b94:	8f 93       	push	r24
    1b96:	8d 81       	ldd	r24, Y+5	; 0x05
    1b98:	9e 81       	ldd	r25, Y+6	; 0x06
    1b9a:	1f 92       	push	r1
    1b9c:	1f 92       	push	r1
    1b9e:	9f 93       	push	r25
    1ba0:	8f 93       	push	r24
    1ba2:	8b 81       	ldd	r24, Y+3	; 0x03
    1ba4:	9c 81       	ldd	r25, Y+4	; 0x04
    1ba6:	1f 92       	push	r1
    1ba8:	1f 92       	push	r1
    1baa:	9f 93       	push	r25
    1bac:	8f 93       	push	r24
    1bae:	ff 92       	push	r15
    1bb0:	ef 92       	push	r14
    1bb2:	1f 93       	push	r17
    1bb4:	0f 93       	push	r16
    1bb6:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    1bba:	df 92       	push	r13
    1bbc:	cf 92       	push	r12
    1bbe:	1f 93       	push	r17
    1bc0:	0f 93       	push	r16
    1bc2:	0e 94 f8 13 	call	0x27f0	; 0x27f0 <_ZN8Terminal6printfEPKcz>
    1bc6:	0f b6       	in	r0, 0x3f	; 63
    1bc8:	f8 94       	cli
    1bca:	de bf       	out	0x3e, r29	; 62
    1bcc:	0f be       	out	0x3f, r0	; 63
    1bce:	cd bf       	out	0x3d, r28	; 61
    1bd0:	40 cf       	rjmp	.-384    	; 0x1a52 <main+0xfe>

00001bd2 <_GLOBAL__sub_I_i2c_0>:
    1bd2:	84 e9       	ldi	r24, 0x94	; 148
    1bd4:	90 e0       	ldi	r25, 0x00	; 0
    1bd6:	90 93 31 01 	sts	0x0131, r25
    1bda:	80 93 30 01 	sts	0x0130, r24
    1bde:	a1 98       	cbi	0x14, 1	; 20
    1be0:	81 e0       	ldi	r24, 0x01	; 1
    1be2:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1be6:	a9 98       	cbi	0x15, 1	; 21
    1be8:	a8 98       	cbi	0x15, 0	; 21
    1bea:	8c ea       	ldi	r24, 0xAC	; 172
    1bec:	90 e0       	ldi	r25, 0x00	; 0
    1bee:	90 93 2d 01 	sts	0x012D, r25
    1bf2:	80 93 2c 01 	sts	0x012C, r24
    1bf6:	a2 98       	cbi	0x14, 2	; 20
    1bf8:	81 e0       	ldi	r24, 0x01	; 1
    1bfa:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1bfe:	aa 98       	cbi	0x15, 2	; 21
    1c00:	a8 98       	cbi	0x15, 0	; 21
    1c02:	84 ec       	ldi	r24, 0xC4	; 196
    1c04:	90 e0       	ldi	r25, 0x00	; 0
    1c06:	90 93 29 01 	sts	0x0129, r25
    1c0a:	80 93 28 01 	sts	0x0128, r24
    1c0e:	a3 98       	cbi	0x14, 3	; 20
    1c10:	81 e0       	ldi	r24, 0x01	; 1
    1c12:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1c16:	ab 98       	cbi	0x15, 3	; 21
    1c18:	a8 98       	cbi	0x15, 0	; 21
    1c1a:	8c ed       	ldi	r24, 0xDC	; 220
    1c1c:	90 e0       	ldi	r25, 0x00	; 0
    1c1e:	90 93 25 01 	sts	0x0125, r25
    1c22:	80 93 24 01 	sts	0x0124, r24
    1c26:	a4 98       	cbi	0x14, 4	; 20
    1c28:	81 e0       	ldi	r24, 0x01	; 1
    1c2a:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1c2e:	ac 98       	cbi	0x15, 4	; 21
    1c30:	a8 98       	cbi	0x15, 0	; 21
    1c32:	84 ef       	ldi	r24, 0xF4	; 244
    1c34:	90 e0       	ldi	r25, 0x00	; 0
    1c36:	90 93 21 01 	sts	0x0121, r25
    1c3a:	80 93 20 01 	sts	0x0120, r24
    1c3e:	a5 98       	cbi	0x14, 5	; 20
    1c40:	81 e0       	ldi	r24, 0x01	; 1
    1c42:	0e 94 04 0a 	call	0x1408	; 0x1408 <_ZN5TGpioILh2ELh0ELh1EE8set_modeEh.isra.2>
    1c46:	ad 98       	cbi	0x15, 5	; 21
    1c48:	a8 98       	cbi	0x15, 0	; 21
    1c4a:	08 95       	ret

00001c4c <_ZN5USARTC1Ev>:
    1c4c:	10 bc       	out	0x20, r1	; 32
    1c4e:	80 e4       	ldi	r24, 0x40	; 64
    1c50:	89 b9       	out	0x09, r24	; 9
    1c52:	80 b5       	in	r24, 0x20	; 32
    1c54:	86 68       	ori	r24, 0x86	; 134
    1c56:	80 bd       	out	0x20, r24	; 32
    1c58:	8a b1       	in	r24, 0x0a	; 10
    1c5a:	88 61       	ori	r24, 0x18	; 24
    1c5c:	8a b9       	out	0x0a, r24	; 10
    1c5e:	08 95       	ret

00001c60 <_ZN5USARTD1Ev>:
    1c60:	08 95       	ret

00001c62 <_ZN5USART7putcharEc>:
    1c62:	6c b9       	out	0x0c, r22	; 12
    1c64:	5d 99       	sbic	0x0b, 5	; 11
    1c66:	02 c0       	rjmp	.+4      	; 0x1c6c <_ZN5USART7putcharEc+0xa>
    1c68:	00 00       	nop
    1c6a:	fc cf       	rjmp	.-8      	; 0x1c64 <_ZN5USART7putcharEc+0x2>
    1c6c:	08 95       	ret

00001c6e <_ZN5TimerC1Ev>:
    1c6e:	e5 e3       	ldi	r30, 0x35	; 53
    1c70:	f1 e0       	ldi	r31, 0x01	; 1
    1c72:	11 82       	std	Z+1, r1	; 0x01
    1c74:	10 82       	st	Z, r1
    1c76:	13 82       	std	Z+3, r1	; 0x03
    1c78:	12 82       	std	Z+2, r1	; 0x02
    1c7a:	15 82       	std	Z+5, r1	; 0x05
    1c7c:	14 82       	std	Z+4, r1	; 0x04
    1c7e:	16 82       	std	Z+6, r1	; 0x06
    1c80:	37 96       	adiw	r30, 0x07	; 7
    1c82:	81 e0       	ldi	r24, 0x01	; 1
    1c84:	ed 36       	cpi	r30, 0x6D	; 109
    1c86:	f8 07       	cpc	r31, r24
    1c88:	a1 f7       	brne	.-24     	; 0x1c72 <_ZN5TimerC1Ev+0x4>
    1c8a:	83 b7       	in	r24, 0x33	; 51
    1c8c:	88 60       	ori	r24, 0x08	; 8
    1c8e:	83 bf       	out	0x33, r24	; 51
    1c90:	8b e9       	ldi	r24, 0x9B	; 155
    1c92:	8c bf       	out	0x3c, r24	; 60
    1c94:	83 e0       	ldi	r24, 0x03	; 3
    1c96:	83 bf       	out	0x33, r24	; 51
    1c98:	89 b7       	in	r24, 0x39	; 57
    1c9a:	82 60       	ori	r24, 0x02	; 2
    1c9c:	89 bf       	out	0x39, r24	; 57
    1c9e:	78 94       	sei
    1ca0:	08 95       	ret

00001ca2 <__vector_19>:
    1ca2:	1f 92       	push	r1
    1ca4:	0f 92       	push	r0
    1ca6:	0f b6       	in	r0, 0x3f	; 63
    1ca8:	0f 92       	push	r0
    1caa:	11 24       	eor	r1, r1
    1cac:	8f 93       	push	r24
    1cae:	9f 93       	push	r25
    1cb0:	af 93       	push	r26
    1cb2:	bf 93       	push	r27
    1cb4:	ef 93       	push	r30
    1cb6:	ff 93       	push	r31
    1cb8:	e5 e3       	ldi	r30, 0x35	; 53
    1cba:	f1 e0       	ldi	r31, 0x01	; 1
    1cbc:	ab e3       	ldi	r26, 0x3B	; 59
    1cbe:	b1 e0       	ldi	r27, 0x01	; 1
    1cc0:	84 81       	ldd	r24, Z+4	; 0x04
    1cc2:	95 81       	ldd	r25, Z+5	; 0x05
    1cc4:	00 97       	sbiw	r24, 0x00	; 0
    1cc6:	21 f0       	breq	.+8      	; 0x1cd0 <__vector_19+0x2e>
    1cc8:	01 97       	sbiw	r24, 0x01	; 1
    1cca:	95 83       	std	Z+5, r25	; 0x05
    1ccc:	84 83       	std	Z+4, r24	; 0x04
    1cce:	09 c0       	rjmp	.+18     	; 0x1ce2 <__vector_19+0x40>
    1cd0:	82 81       	ldd	r24, Z+2	; 0x02
    1cd2:	93 81       	ldd	r25, Z+3	; 0x03
    1cd4:	95 83       	std	Z+5, r25	; 0x05
    1cd6:	84 83       	std	Z+4, r24	; 0x04
    1cd8:	8c 91       	ld	r24, X
    1cda:	8f 3f       	cpi	r24, 0xFF	; 255
    1cdc:	11 f0       	breq	.+4      	; 0x1ce2 <__vector_19+0x40>
    1cde:	8f 5f       	subi	r24, 0xFF	; 255
    1ce0:	8c 93       	st	X, r24
    1ce2:	37 96       	adiw	r30, 0x07	; 7
    1ce4:	17 96       	adiw	r26, 0x07	; 7
    1ce6:	81 e0       	ldi	r24, 0x01	; 1
    1ce8:	ed 36       	cpi	r30, 0x6D	; 109
    1cea:	f8 07       	cpc	r31, r24
    1cec:	49 f7       	brne	.-46     	; 0x1cc0 <__vector_19+0x1e>
    1cee:	80 91 6d 01 	lds	r24, 0x016D
    1cf2:	90 91 6e 01 	lds	r25, 0x016E
    1cf6:	a0 91 6f 01 	lds	r26, 0x016F
    1cfa:	b0 91 70 01 	lds	r27, 0x0170
    1cfe:	01 96       	adiw	r24, 0x01	; 1
    1d00:	a1 1d       	adc	r26, r1
    1d02:	b1 1d       	adc	r27, r1
    1d04:	80 93 6d 01 	sts	0x016D, r24
    1d08:	90 93 6e 01 	sts	0x016E, r25
    1d0c:	a0 93 6f 01 	sts	0x016F, r26
    1d10:	b0 93 70 01 	sts	0x0170, r27
    1d14:	ff 91       	pop	r31
    1d16:	ef 91       	pop	r30
    1d18:	bf 91       	pop	r27
    1d1a:	af 91       	pop	r26
    1d1c:	9f 91       	pop	r25
    1d1e:	8f 91       	pop	r24
    1d20:	0f 90       	pop	r0
    1d22:	0f be       	out	0x3f, r0	; 63
    1d24:	0f 90       	pop	r0
    1d26:	1f 90       	pop	r1
    1d28:	18 95       	reti

00001d2a <_GLOBAL__sub_I_g_rt_time>:
    1d2a:	84 e3       	ldi	r24, 0x34	; 52
    1d2c:	91 e0       	ldi	r25, 0x01	; 1
    1d2e:	0c 94 37 0e 	jmp	0x1c6e	; 0x1c6e <_ZN5TimerC1Ev>

00001d32 <_ZN8APDS9950C1Ev>:
    1d32:	fc 01       	movw	r30, r24
    1d34:	13 82       	std	Z+3, r1	; 0x03
    1d36:	12 82       	std	Z+2, r1	; 0x02
    1d38:	15 82       	std	Z+5, r1	; 0x05
    1d3a:	14 82       	std	Z+4, r1	; 0x04
    1d3c:	17 82       	std	Z+7, r1	; 0x07
    1d3e:	16 82       	std	Z+6, r1	; 0x06
    1d40:	11 86       	std	Z+9, r1	; 0x09
    1d42:	10 86       	std	Z+8, r1	; 0x08
    1d44:	13 86       	std	Z+11, r1	; 0x0b
    1d46:	12 86       	std	Z+10, r1	; 0x0a
    1d48:	11 82       	std	Z+1, r1	; 0x01
    1d4a:	10 82       	st	Z, r1
    1d4c:	08 95       	ret

00001d4e <_ZN8APDS99504initEP13I2C_Interface>:
    1d4e:	cf 93       	push	r28
    1d50:	df 93       	push	r29
    1d52:	eb 01       	movw	r28, r22
    1d54:	fc 01       	movw	r30, r24
    1d56:	71 83       	std	Z+1, r23	; 0x01
    1d58:	60 83       	st	Z, r22
    1d5a:	e8 81       	ld	r30, Y
    1d5c:	f9 81       	ldd	r31, Y+1	; 0x01
    1d5e:	00 84       	ldd	r0, Z+8	; 0x08
    1d60:	f1 85       	ldd	r31, Z+9	; 0x09
    1d62:	e0 2d       	mov	r30, r0
    1d64:	2f ef       	ldi	r18, 0xFF	; 255
    1d66:	41 e8       	ldi	r20, 0x81	; 129
    1d68:	62 e7       	ldi	r22, 0x72	; 114
    1d6a:	ce 01       	movw	r24, r28
    1d6c:	09 95       	icall
    1d6e:	e8 81       	ld	r30, Y
    1d70:	f9 81       	ldd	r31, Y+1	; 0x01
    1d72:	00 84       	ldd	r0, Z+8	; 0x08
    1d74:	f1 85       	ldd	r31, Z+9	; 0x09
    1d76:	e0 2d       	mov	r30, r0
    1d78:	2f ef       	ldi	r18, 0xFF	; 255
    1d7a:	43 e8       	ldi	r20, 0x83	; 131
    1d7c:	62 e7       	ldi	r22, 0x72	; 114
    1d7e:	ce 01       	movw	r24, r28
    1d80:	09 95       	icall
    1d82:	e8 81       	ld	r30, Y
    1d84:	f9 81       	ldd	r31, Y+1	; 0x01
    1d86:	00 84       	ldd	r0, Z+8	; 0x08
    1d88:	f1 85       	ldd	r31, Z+9	; 0x09
    1d8a:	e0 2d       	mov	r30, r0
    1d8c:	20 e0       	ldi	r18, 0x00	; 0
    1d8e:	4d e8       	ldi	r20, 0x8D	; 141
    1d90:	62 e7       	ldi	r22, 0x72	; 114
    1d92:	ce 01       	movw	r24, r28
    1d94:	09 95       	icall
    1d96:	e8 81       	ld	r30, Y
    1d98:	f9 81       	ldd	r31, Y+1	; 0x01
    1d9a:	00 84       	ldd	r0, Z+8	; 0x08
    1d9c:	f1 85       	ldd	r31, Z+9	; 0x09
    1d9e:	e0 2d       	mov	r30, r0
    1da0:	23 e0       	ldi	r18, 0x03	; 3
    1da2:	40 e8       	ldi	r20, 0x80	; 128
    1da4:	62 e7       	ldi	r22, 0x72	; 114
    1da6:	ce 01       	movw	r24, r28
    1da8:	09 95       	icall
    1daa:	e8 81       	ld	r30, Y
    1dac:	f9 81       	ldd	r31, Y+1	; 0x01
    1dae:	00 84       	ldd	r0, Z+8	; 0x08
    1db0:	f1 85       	ldd	r31, Z+9	; 0x09
    1db2:	e0 2d       	mov	r30, r0
    1db4:	23 e2       	ldi	r18, 0x23	; 35
    1db6:	4f e8       	ldi	r20, 0x8F	; 143
    1db8:	62 e7       	ldi	r22, 0x72	; 114
    1dba:	ce 01       	movw	r24, r28
    1dbc:	09 95       	icall
    1dbe:	e8 81       	ld	r30, Y
    1dc0:	f9 81       	ldd	r31, Y+1	; 0x01
    1dc2:	06 84       	ldd	r0, Z+14	; 0x0e
    1dc4:	f7 85       	ldd	r31, Z+15	; 0x0f
    1dc6:	e0 2d       	mov	r30, r0
    1dc8:	42 e9       	ldi	r20, 0x92	; 146
    1dca:	62 e7       	ldi	r22, 0x72	; 114
    1dcc:	ce 01       	movw	r24, r28
    1dce:	09 95       	icall
    1dd0:	21 e0       	ldi	r18, 0x01	; 1
    1dd2:	30 e0       	ldi	r19, 0x00	; 0
    1dd4:	89 36       	cpi	r24, 0x69	; 105
    1dd6:	11 f4       	brne	.+4      	; 0x1ddc <_ZN8APDS99504initEP13I2C_Interface+0x8e>
    1dd8:	20 e0       	ldi	r18, 0x00	; 0
    1dda:	30 e0       	ldi	r19, 0x00	; 0
    1ddc:	88 27       	eor	r24, r24
    1dde:	99 27       	eor	r25, r25
    1de0:	82 1b       	sub	r24, r18
    1de2:	93 0b       	sbc	r25, r19
    1de4:	df 91       	pop	r29
    1de6:	cf 91       	pop	r28
    1de8:	08 95       	ret

00001dea <_ZN8APDS99504readEv>:
    1dea:	0f 93       	push	r16
    1dec:	1f 93       	push	r17
    1dee:	cf 93       	push	r28
    1df0:	df 93       	push	r29
    1df2:	ec 01       	movw	r28, r24
    1df4:	88 81       	ld	r24, Y
    1df6:	99 81       	ldd	r25, Y+1	; 0x01
    1df8:	dc 01       	movw	r26, r24
    1dfa:	ed 91       	ld	r30, X+
    1dfc:	fc 91       	ld	r31, X
    1dfe:	01 90       	ld	r0, Z+
    1e00:	f0 81       	ld	r31, Z
    1e02:	e0 2d       	mov	r30, r0
    1e04:	09 95       	icall
    1e06:	88 81       	ld	r24, Y
    1e08:	99 81       	ldd	r25, Y+1	; 0x01
    1e0a:	dc 01       	movw	r26, r24
    1e0c:	ed 91       	ld	r30, X+
    1e0e:	fc 91       	ld	r31, X
    1e10:	04 80       	ldd	r0, Z+4	; 0x04
    1e12:	f5 81       	ldd	r31, Z+5	; 0x05
    1e14:	e0 2d       	mov	r30, r0
    1e16:	62 e7       	ldi	r22, 0x72	; 114
    1e18:	09 95       	icall
    1e1a:	88 81       	ld	r24, Y
    1e1c:	99 81       	ldd	r25, Y+1	; 0x01
    1e1e:	dc 01       	movw	r26, r24
    1e20:	ed 91       	ld	r30, X+
    1e22:	fc 91       	ld	r31, X
    1e24:	04 80       	ldd	r0, Z+4	; 0x04
    1e26:	f5 81       	ldd	r31, Z+5	; 0x05
    1e28:	e0 2d       	mov	r30, r0
    1e2a:	64 eb       	ldi	r22, 0xB4	; 180
    1e2c:	09 95       	icall
    1e2e:	88 81       	ld	r24, Y
    1e30:	99 81       	ldd	r25, Y+1	; 0x01
    1e32:	dc 01       	movw	r26, r24
    1e34:	ed 91       	ld	r30, X+
    1e36:	fc 91       	ld	r31, X
    1e38:	02 80       	ldd	r0, Z+2	; 0x02
    1e3a:	f3 81       	ldd	r31, Z+3	; 0x03
    1e3c:	e0 2d       	mov	r30, r0
    1e3e:	09 95       	icall
    1e40:	88 81       	ld	r24, Y
    1e42:	99 81       	ldd	r25, Y+1	; 0x01
    1e44:	dc 01       	movw	r26, r24
    1e46:	ed 91       	ld	r30, X+
    1e48:	fc 91       	ld	r31, X
    1e4a:	01 90       	ld	r0, Z+
    1e4c:	f0 81       	ld	r31, Z
    1e4e:	e0 2d       	mov	r30, r0
    1e50:	09 95       	icall
    1e52:	88 81       	ld	r24, Y
    1e54:	99 81       	ldd	r25, Y+1	; 0x01
    1e56:	dc 01       	movw	r26, r24
    1e58:	ed 91       	ld	r30, X+
    1e5a:	fc 91       	ld	r31, X
    1e5c:	04 80       	ldd	r0, Z+4	; 0x04
    1e5e:	f5 81       	ldd	r31, Z+5	; 0x05
    1e60:	e0 2d       	mov	r30, r0
    1e62:	63 e7       	ldi	r22, 0x73	; 115
    1e64:	09 95       	icall
    1e66:	88 81       	ld	r24, Y
    1e68:	99 81       	ldd	r25, Y+1	; 0x01
    1e6a:	dc 01       	movw	r26, r24
    1e6c:	ed 91       	ld	r30, X+
    1e6e:	fc 91       	ld	r31, X
    1e70:	06 80       	ldd	r0, Z+6	; 0x06
    1e72:	f7 81       	ldd	r31, Z+7	; 0x07
    1e74:	e0 2d       	mov	r30, r0
    1e76:	61 e0       	ldi	r22, 0x01	; 1
    1e78:	09 95       	icall
    1e7a:	08 2f       	mov	r16, r24
    1e7c:	10 e0       	ldi	r17, 0x00	; 0
    1e7e:	88 81       	ld	r24, Y
    1e80:	99 81       	ldd	r25, Y+1	; 0x01
    1e82:	dc 01       	movw	r26, r24
    1e84:	ed 91       	ld	r30, X+
    1e86:	fc 91       	ld	r31, X
    1e88:	06 80       	ldd	r0, Z+6	; 0x06
    1e8a:	f7 81       	ldd	r31, Z+7	; 0x07
    1e8c:	e0 2d       	mov	r30, r0
    1e8e:	61 e0       	ldi	r22, 0x01	; 1
    1e90:	09 95       	icall
    1e92:	18 2b       	or	r17, r24
    1e94:	19 87       	std	Y+9, r17	; 0x09
    1e96:	08 87       	std	Y+8, r16	; 0x08
    1e98:	88 81       	ld	r24, Y
    1e9a:	99 81       	ldd	r25, Y+1	; 0x01
    1e9c:	dc 01       	movw	r26, r24
    1e9e:	ed 91       	ld	r30, X+
    1ea0:	fc 91       	ld	r31, X
    1ea2:	06 80       	ldd	r0, Z+6	; 0x06
    1ea4:	f7 81       	ldd	r31, Z+7	; 0x07
    1ea6:	e0 2d       	mov	r30, r0
    1ea8:	61 e0       	ldi	r22, 0x01	; 1
    1eaa:	09 95       	icall
    1eac:	08 2f       	mov	r16, r24
    1eae:	10 e0       	ldi	r17, 0x00	; 0
    1eb0:	88 81       	ld	r24, Y
    1eb2:	99 81       	ldd	r25, Y+1	; 0x01
    1eb4:	dc 01       	movw	r26, r24
    1eb6:	ed 91       	ld	r30, X+
    1eb8:	fc 91       	ld	r31, X
    1eba:	06 80       	ldd	r0, Z+6	; 0x06
    1ebc:	f7 81       	ldd	r31, Z+7	; 0x07
    1ebe:	e0 2d       	mov	r30, r0
    1ec0:	61 e0       	ldi	r22, 0x01	; 1
    1ec2:	09 95       	icall
    1ec4:	18 2b       	or	r17, r24
    1ec6:	1b 83       	std	Y+3, r17	; 0x03
    1ec8:	0a 83       	std	Y+2, r16	; 0x02
    1eca:	88 81       	ld	r24, Y
    1ecc:	99 81       	ldd	r25, Y+1	; 0x01
    1ece:	dc 01       	movw	r26, r24
    1ed0:	ed 91       	ld	r30, X+
    1ed2:	fc 91       	ld	r31, X
    1ed4:	06 80       	ldd	r0, Z+6	; 0x06
    1ed6:	f7 81       	ldd	r31, Z+7	; 0x07
    1ed8:	e0 2d       	mov	r30, r0
    1eda:	61 e0       	ldi	r22, 0x01	; 1
    1edc:	09 95       	icall
    1ede:	08 2f       	mov	r16, r24
    1ee0:	10 e0       	ldi	r17, 0x00	; 0
    1ee2:	88 81       	ld	r24, Y
    1ee4:	99 81       	ldd	r25, Y+1	; 0x01
    1ee6:	dc 01       	movw	r26, r24
    1ee8:	ed 91       	ld	r30, X+
    1eea:	fc 91       	ld	r31, X
    1eec:	06 80       	ldd	r0, Z+6	; 0x06
    1eee:	f7 81       	ldd	r31, Z+7	; 0x07
    1ef0:	e0 2d       	mov	r30, r0
    1ef2:	61 e0       	ldi	r22, 0x01	; 1
    1ef4:	09 95       	icall
    1ef6:	18 2b       	or	r17, r24
    1ef8:	1d 83       	std	Y+5, r17	; 0x05
    1efa:	0c 83       	std	Y+4, r16	; 0x04
    1efc:	88 81       	ld	r24, Y
    1efe:	99 81       	ldd	r25, Y+1	; 0x01
    1f00:	dc 01       	movw	r26, r24
    1f02:	ed 91       	ld	r30, X+
    1f04:	fc 91       	ld	r31, X
    1f06:	06 80       	ldd	r0, Z+6	; 0x06
    1f08:	f7 81       	ldd	r31, Z+7	; 0x07
    1f0a:	e0 2d       	mov	r30, r0
    1f0c:	61 e0       	ldi	r22, 0x01	; 1
    1f0e:	09 95       	icall
    1f10:	08 2f       	mov	r16, r24
    1f12:	10 e0       	ldi	r17, 0x00	; 0
    1f14:	88 81       	ld	r24, Y
    1f16:	99 81       	ldd	r25, Y+1	; 0x01
    1f18:	dc 01       	movw	r26, r24
    1f1a:	ed 91       	ld	r30, X+
    1f1c:	fc 91       	ld	r31, X
    1f1e:	06 80       	ldd	r0, Z+6	; 0x06
    1f20:	f7 81       	ldd	r31, Z+7	; 0x07
    1f22:	e0 2d       	mov	r30, r0
    1f24:	61 e0       	ldi	r22, 0x01	; 1
    1f26:	09 95       	icall
    1f28:	18 2b       	or	r17, r24
    1f2a:	1f 83       	std	Y+7, r17	; 0x07
    1f2c:	0e 83       	std	Y+6, r16	; 0x06
    1f2e:	88 81       	ld	r24, Y
    1f30:	99 81       	ldd	r25, Y+1	; 0x01
    1f32:	dc 01       	movw	r26, r24
    1f34:	ed 91       	ld	r30, X+
    1f36:	fc 91       	ld	r31, X
    1f38:	06 80       	ldd	r0, Z+6	; 0x06
    1f3a:	f7 81       	ldd	r31, Z+7	; 0x07
    1f3c:	e0 2d       	mov	r30, r0
    1f3e:	61 e0       	ldi	r22, 0x01	; 1
    1f40:	09 95       	icall
    1f42:	08 2f       	mov	r16, r24
    1f44:	10 e0       	ldi	r17, 0x00	; 0
    1f46:	88 81       	ld	r24, Y
    1f48:	99 81       	ldd	r25, Y+1	; 0x01
    1f4a:	dc 01       	movw	r26, r24
    1f4c:	ed 91       	ld	r30, X+
    1f4e:	fc 91       	ld	r31, X
    1f50:	06 80       	ldd	r0, Z+6	; 0x06
    1f52:	f7 81       	ldd	r31, Z+7	; 0x07
    1f54:	e0 2d       	mov	r30, r0
    1f56:	60 e0       	ldi	r22, 0x00	; 0
    1f58:	09 95       	icall
    1f5a:	18 2b       	or	r17, r24
    1f5c:	1b 87       	std	Y+11, r17	; 0x0b
    1f5e:	0a 87       	std	Y+10, r16	; 0x0a
    1f60:	88 81       	ld	r24, Y
    1f62:	99 81       	ldd	r25, Y+1	; 0x01
    1f64:	dc 01       	movw	r26, r24
    1f66:	ed 91       	ld	r30, X+
    1f68:	fc 91       	ld	r31, X
    1f6a:	02 80       	ldd	r0, Z+2	; 0x02
    1f6c:	f3 81       	ldd	r31, Z+3	; 0x03
    1f6e:	e0 2d       	mov	r30, r0
    1f70:	df 91       	pop	r29
    1f72:	cf 91       	pop	r28
    1f74:	1f 91       	pop	r17
    1f76:	0f 91       	pop	r16
    1f78:	09 94       	ijmp

00001f7a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
    1f7a:	0f 93       	push	r16
    1f7c:	1f 93       	push	r17
    1f7e:	cf 93       	push	r28
    1f80:	df 93       	push	r29
    1f82:	00 d0       	rcall	.+0      	; 0x1f84 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
    1f84:	1f 92       	push	r1
    1f86:	cd b7       	in	r28, 0x3d	; 61
    1f88:	de b7       	in	r29, 0x3e	; 62
    1f8a:	8c 01       	movw	r16, r24
    1f8c:	dc 01       	movw	r26, r24
    1f8e:	ed 91       	ld	r30, X+
    1f90:	fc 91       	ld	r31, X
    1f92:	01 90       	ld	r0, Z+
    1f94:	f0 81       	ld	r31, Z
    1f96:	e0 2d       	mov	r30, r0
    1f98:	2b 83       	std	Y+3, r18	; 0x03
    1f9a:	4a 83       	std	Y+2, r20	; 0x02
    1f9c:	69 83       	std	Y+1, r22	; 0x01
    1f9e:	09 95       	icall
    1fa0:	d8 01       	movw	r26, r16
    1fa2:	ed 91       	ld	r30, X+
    1fa4:	fc 91       	ld	r31, X
    1fa6:	04 80       	ldd	r0, Z+4	; 0x04
    1fa8:	f5 81       	ldd	r31, Z+5	; 0x05
    1faa:	e0 2d       	mov	r30, r0
    1fac:	69 81       	ldd	r22, Y+1	; 0x01
    1fae:	c8 01       	movw	r24, r16
    1fb0:	09 95       	icall
    1fb2:	d8 01       	movw	r26, r16
    1fb4:	ed 91       	ld	r30, X+
    1fb6:	fc 91       	ld	r31, X
    1fb8:	04 80       	ldd	r0, Z+4	; 0x04
    1fba:	f5 81       	ldd	r31, Z+5	; 0x05
    1fbc:	e0 2d       	mov	r30, r0
    1fbe:	4a 81       	ldd	r20, Y+2	; 0x02
    1fc0:	64 2f       	mov	r22, r20
    1fc2:	c8 01       	movw	r24, r16
    1fc4:	09 95       	icall
    1fc6:	d8 01       	movw	r26, r16
    1fc8:	ed 91       	ld	r30, X+
    1fca:	fc 91       	ld	r31, X
    1fcc:	04 80       	ldd	r0, Z+4	; 0x04
    1fce:	f5 81       	ldd	r31, Z+5	; 0x05
    1fd0:	e0 2d       	mov	r30, r0
    1fd2:	2b 81       	ldd	r18, Y+3	; 0x03
    1fd4:	62 2f       	mov	r22, r18
    1fd6:	c8 01       	movw	r24, r16
    1fd8:	09 95       	icall
    1fda:	d8 01       	movw	r26, r16
    1fdc:	ed 91       	ld	r30, X+
    1fde:	fc 91       	ld	r31, X
    1fe0:	02 80       	ldd	r0, Z+2	; 0x02
    1fe2:	f3 81       	ldd	r31, Z+3	; 0x03
    1fe4:	e0 2d       	mov	r30, r0
    1fe6:	c8 01       	movw	r24, r16
    1fe8:	0f 90       	pop	r0
    1fea:	0f 90       	pop	r0
    1fec:	0f 90       	pop	r0
    1fee:	df 91       	pop	r29
    1ff0:	cf 91       	pop	r28
    1ff2:	1f 91       	pop	r17
    1ff4:	0f 91       	pop	r16
    1ff6:	09 94       	ijmp

00001ff8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
    1ff8:	0f 93       	push	r16
    1ffa:	1f 93       	push	r17
    1ffc:	cf 93       	push	r28
    1ffe:	df 93       	push	r29
    2000:	00 d0       	rcall	.+0      	; 0x2002 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
    2002:	00 d0       	rcall	.+0      	; 0x2004 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
    2004:	cd b7       	in	r28, 0x3d	; 61
    2006:	de b7       	in	r29, 0x3e	; 62
    2008:	8c 01       	movw	r16, r24
    200a:	dc 01       	movw	r26, r24
    200c:	ed 91       	ld	r30, X+
    200e:	fc 91       	ld	r31, X
    2010:	01 90       	ld	r0, Z+
    2012:	f0 81       	ld	r31, Z
    2014:	e0 2d       	mov	r30, r0
    2016:	2c 83       	std	Y+4, r18	; 0x04
    2018:	3b 83       	std	Y+3, r19	; 0x03
    201a:	4a 83       	std	Y+2, r20	; 0x02
    201c:	69 83       	std	Y+1, r22	; 0x01
    201e:	09 95       	icall
    2020:	d8 01       	movw	r26, r16
    2022:	ed 91       	ld	r30, X+
    2024:	fc 91       	ld	r31, X
    2026:	04 80       	ldd	r0, Z+4	; 0x04
    2028:	f5 81       	ldd	r31, Z+5	; 0x05
    202a:	e0 2d       	mov	r30, r0
    202c:	69 81       	ldd	r22, Y+1	; 0x01
    202e:	c8 01       	movw	r24, r16
    2030:	09 95       	icall
    2032:	d8 01       	movw	r26, r16
    2034:	ed 91       	ld	r30, X+
    2036:	fc 91       	ld	r31, X
    2038:	04 80       	ldd	r0, Z+4	; 0x04
    203a:	f5 81       	ldd	r31, Z+5	; 0x05
    203c:	e0 2d       	mov	r30, r0
    203e:	4a 81       	ldd	r20, Y+2	; 0x02
    2040:	64 2f       	mov	r22, r20
    2042:	c8 01       	movw	r24, r16
    2044:	09 95       	icall
    2046:	d8 01       	movw	r26, r16
    2048:	ed 91       	ld	r30, X+
    204a:	fc 91       	ld	r31, X
    204c:	04 80       	ldd	r0, Z+4	; 0x04
    204e:	f5 81       	ldd	r31, Z+5	; 0x05
    2050:	e0 2d       	mov	r30, r0
    2052:	3b 81       	ldd	r19, Y+3	; 0x03
    2054:	63 2f       	mov	r22, r19
    2056:	c8 01       	movw	r24, r16
    2058:	09 95       	icall
    205a:	d8 01       	movw	r26, r16
    205c:	ed 91       	ld	r30, X+
    205e:	fc 91       	ld	r31, X
    2060:	04 80       	ldd	r0, Z+4	; 0x04
    2062:	f5 81       	ldd	r31, Z+5	; 0x05
    2064:	e0 2d       	mov	r30, r0
    2066:	2c 81       	ldd	r18, Y+4	; 0x04
    2068:	62 2f       	mov	r22, r18
    206a:	c8 01       	movw	r24, r16
    206c:	09 95       	icall
    206e:	d8 01       	movw	r26, r16
    2070:	ed 91       	ld	r30, X+
    2072:	fc 91       	ld	r31, X
    2074:	02 80       	ldd	r0, Z+2	; 0x02
    2076:	f3 81       	ldd	r31, Z+3	; 0x03
    2078:	e0 2d       	mov	r30, r0
    207a:	c8 01       	movw	r24, r16
    207c:	0f 90       	pop	r0
    207e:	0f 90       	pop	r0
    2080:	0f 90       	pop	r0
    2082:	0f 90       	pop	r0
    2084:	df 91       	pop	r29
    2086:	cf 91       	pop	r28
    2088:	1f 91       	pop	r17
    208a:	0f 91       	pop	r16
    208c:	09 94       	ijmp

0000208e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
    208e:	cf 92       	push	r12
    2090:	df 92       	push	r13
    2092:	ef 92       	push	r14
    2094:	ff 92       	push	r15
    2096:	0f 93       	push	r16
    2098:	1f 93       	push	r17
    209a:	cf 93       	push	r28
    209c:	df 93       	push	r29
    209e:	00 d0       	rcall	.+0      	; 0x20a0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
    20a0:	00 d0       	rcall	.+0      	; 0x20a2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
    20a2:	cd b7       	in	r28, 0x3d	; 61
    20a4:	de b7       	in	r29, 0x3e	; 62
    20a6:	6c 01       	movw	r12, r24
    20a8:	dc 01       	movw	r26, r24
    20aa:	ed 91       	ld	r30, X+
    20ac:	fc 91       	ld	r31, X
    20ae:	01 90       	ld	r0, Z+
    20b0:	f0 81       	ld	r31, Z
    20b2:	e0 2d       	mov	r30, r0
    20b4:	2b 83       	std	Y+3, r18	; 0x03
    20b6:	3c 83       	std	Y+4, r19	; 0x04
    20b8:	4a 83       	std	Y+2, r20	; 0x02
    20ba:	69 83       	std	Y+1, r22	; 0x01
    20bc:	09 95       	icall
    20be:	d6 01       	movw	r26, r12
    20c0:	ed 91       	ld	r30, X+
    20c2:	fc 91       	ld	r31, X
    20c4:	04 80       	ldd	r0, Z+4	; 0x04
    20c6:	f5 81       	ldd	r31, Z+5	; 0x05
    20c8:	e0 2d       	mov	r30, r0
    20ca:	69 81       	ldd	r22, Y+1	; 0x01
    20cc:	c6 01       	movw	r24, r12
    20ce:	09 95       	icall
    20d0:	d6 01       	movw	r26, r12
    20d2:	ed 91       	ld	r30, X+
    20d4:	fc 91       	ld	r31, X
    20d6:	04 80       	ldd	r0, Z+4	; 0x04
    20d8:	f5 81       	ldd	r31, Z+5	; 0x05
    20da:	e0 2d       	mov	r30, r0
    20dc:	4a 81       	ldd	r20, Y+2	; 0x02
    20de:	64 2f       	mov	r22, r20
    20e0:	c6 01       	movw	r24, r12
    20e2:	09 95       	icall
    20e4:	2b 81       	ldd	r18, Y+3	; 0x03
    20e6:	e2 2e       	mov	r14, r18
    20e8:	3c 81       	ldd	r19, Y+4	; 0x04
    20ea:	f3 2e       	mov	r15, r19
    20ec:	0e 0d       	add	r16, r14
    20ee:	1f 1d       	adc	r17, r15
    20f0:	d6 01       	movw	r26, r12
    20f2:	ed 91       	ld	r30, X+
    20f4:	fc 91       	ld	r31, X
    20f6:	e0 16       	cp	r14, r16
    20f8:	f1 06       	cpc	r15, r17
    20fa:	49 f0       	breq	.+18     	; 0x210e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
    20fc:	d7 01       	movw	r26, r14
    20fe:	6d 91       	ld	r22, X+
    2100:	7d 01       	movw	r14, r26
    2102:	04 80       	ldd	r0, Z+4	; 0x04
    2104:	f5 81       	ldd	r31, Z+5	; 0x05
    2106:	e0 2d       	mov	r30, r0
    2108:	c6 01       	movw	r24, r12
    210a:	09 95       	icall
    210c:	f1 cf       	rjmp	.-30     	; 0x20f0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
    210e:	02 80       	ldd	r0, Z+2	; 0x02
    2110:	f3 81       	ldd	r31, Z+3	; 0x03
    2112:	e0 2d       	mov	r30, r0
    2114:	c6 01       	movw	r24, r12
    2116:	0f 90       	pop	r0
    2118:	0f 90       	pop	r0
    211a:	0f 90       	pop	r0
    211c:	0f 90       	pop	r0
    211e:	df 91       	pop	r29
    2120:	cf 91       	pop	r28
    2122:	1f 91       	pop	r17
    2124:	0f 91       	pop	r16
    2126:	ff 90       	pop	r15
    2128:	ef 90       	pop	r14
    212a:	df 90       	pop	r13
    212c:	cf 90       	pop	r12
    212e:	09 94       	ijmp

00002130 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
    2130:	ef 92       	push	r14
    2132:	ff 92       	push	r15
    2134:	1f 93       	push	r17
    2136:	cf 93       	push	r28
    2138:	df 93       	push	r29
    213a:	1f 92       	push	r1
    213c:	cd b7       	in	r28, 0x3d	; 61
    213e:	de b7       	in	r29, 0x3e	; 62
    2140:	7c 01       	movw	r14, r24
    2142:	16 2f       	mov	r17, r22
    2144:	dc 01       	movw	r26, r24
    2146:	ed 91       	ld	r30, X+
    2148:	fc 91       	ld	r31, X
    214a:	01 90       	ld	r0, Z+
    214c:	f0 81       	ld	r31, Z
    214e:	e0 2d       	mov	r30, r0
    2150:	49 83       	std	Y+1, r20	; 0x01
    2152:	09 95       	icall
    2154:	d7 01       	movw	r26, r14
    2156:	ed 91       	ld	r30, X+
    2158:	fc 91       	ld	r31, X
    215a:	04 80       	ldd	r0, Z+4	; 0x04
    215c:	f5 81       	ldd	r31, Z+5	; 0x05
    215e:	e0 2d       	mov	r30, r0
    2160:	61 2f       	mov	r22, r17
    2162:	c7 01       	movw	r24, r14
    2164:	09 95       	icall
    2166:	d7 01       	movw	r26, r14
    2168:	ed 91       	ld	r30, X+
    216a:	fc 91       	ld	r31, X
    216c:	04 80       	ldd	r0, Z+4	; 0x04
    216e:	f5 81       	ldd	r31, Z+5	; 0x05
    2170:	e0 2d       	mov	r30, r0
    2172:	49 81       	ldd	r20, Y+1	; 0x01
    2174:	64 2f       	mov	r22, r20
    2176:	c7 01       	movw	r24, r14
    2178:	09 95       	icall
    217a:	d7 01       	movw	r26, r14
    217c:	ed 91       	ld	r30, X+
    217e:	fc 91       	ld	r31, X
    2180:	01 90       	ld	r0, Z+
    2182:	f0 81       	ld	r31, Z
    2184:	e0 2d       	mov	r30, r0
    2186:	c7 01       	movw	r24, r14
    2188:	09 95       	icall
    218a:	d7 01       	movw	r26, r14
    218c:	ed 91       	ld	r30, X+
    218e:	fc 91       	ld	r31, X
    2190:	61 2f       	mov	r22, r17
    2192:	61 60       	ori	r22, 0x01	; 1
    2194:	04 80       	ldd	r0, Z+4	; 0x04
    2196:	f5 81       	ldd	r31, Z+5	; 0x05
    2198:	e0 2d       	mov	r30, r0
    219a:	c7 01       	movw	r24, r14
    219c:	09 95       	icall
    219e:	d7 01       	movw	r26, r14
    21a0:	ed 91       	ld	r30, X+
    21a2:	fc 91       	ld	r31, X
    21a4:	06 80       	ldd	r0, Z+6	; 0x06
    21a6:	f7 81       	ldd	r31, Z+7	; 0x07
    21a8:	e0 2d       	mov	r30, r0
    21aa:	60 e0       	ldi	r22, 0x00	; 0
    21ac:	c7 01       	movw	r24, r14
    21ae:	09 95       	icall
    21b0:	18 2f       	mov	r17, r24
    21b2:	d7 01       	movw	r26, r14
    21b4:	ed 91       	ld	r30, X+
    21b6:	fc 91       	ld	r31, X
    21b8:	02 80       	ldd	r0, Z+2	; 0x02
    21ba:	f3 81       	ldd	r31, Z+3	; 0x03
    21bc:	e0 2d       	mov	r30, r0
    21be:	c7 01       	movw	r24, r14
    21c0:	09 95       	icall
    21c2:	81 2f       	mov	r24, r17
    21c4:	0f 90       	pop	r0
    21c6:	df 91       	pop	r29
    21c8:	cf 91       	pop	r28
    21ca:	1f 91       	pop	r17
    21cc:	ff 90       	pop	r15
    21ce:	ef 90       	pop	r14
    21d0:	08 95       	ret

000021d2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
    21d2:	ef 92       	push	r14
    21d4:	ff 92       	push	r15
    21d6:	0f 93       	push	r16
    21d8:	1f 93       	push	r17
    21da:	cf 93       	push	r28
    21dc:	df 93       	push	r29
    21de:	1f 92       	push	r1
    21e0:	cd b7       	in	r28, 0x3d	; 61
    21e2:	de b7       	in	r29, 0x3e	; 62
    21e4:	7c 01       	movw	r14, r24
    21e6:	16 2f       	mov	r17, r22
    21e8:	dc 01       	movw	r26, r24
    21ea:	ed 91       	ld	r30, X+
    21ec:	fc 91       	ld	r31, X
    21ee:	01 90       	ld	r0, Z+
    21f0:	f0 81       	ld	r31, Z
    21f2:	e0 2d       	mov	r30, r0
    21f4:	49 83       	std	Y+1, r20	; 0x01
    21f6:	09 95       	icall
    21f8:	d7 01       	movw	r26, r14
    21fa:	ed 91       	ld	r30, X+
    21fc:	fc 91       	ld	r31, X
    21fe:	04 80       	ldd	r0, Z+4	; 0x04
    2200:	f5 81       	ldd	r31, Z+5	; 0x05
    2202:	e0 2d       	mov	r30, r0
    2204:	61 2f       	mov	r22, r17
    2206:	c7 01       	movw	r24, r14
    2208:	09 95       	icall
    220a:	d7 01       	movw	r26, r14
    220c:	ed 91       	ld	r30, X+
    220e:	fc 91       	ld	r31, X
    2210:	04 80       	ldd	r0, Z+4	; 0x04
    2212:	f5 81       	ldd	r31, Z+5	; 0x05
    2214:	e0 2d       	mov	r30, r0
    2216:	49 81       	ldd	r20, Y+1	; 0x01
    2218:	64 2f       	mov	r22, r20
    221a:	c7 01       	movw	r24, r14
    221c:	09 95       	icall
    221e:	d7 01       	movw	r26, r14
    2220:	ed 91       	ld	r30, X+
    2222:	fc 91       	ld	r31, X
    2224:	01 90       	ld	r0, Z+
    2226:	f0 81       	ld	r31, Z
    2228:	e0 2d       	mov	r30, r0
    222a:	c7 01       	movw	r24, r14
    222c:	09 95       	icall
    222e:	d7 01       	movw	r26, r14
    2230:	ed 91       	ld	r30, X+
    2232:	fc 91       	ld	r31, X
    2234:	61 2f       	mov	r22, r17
    2236:	61 60       	ori	r22, 0x01	; 1
    2238:	04 80       	ldd	r0, Z+4	; 0x04
    223a:	f5 81       	ldd	r31, Z+5	; 0x05
    223c:	e0 2d       	mov	r30, r0
    223e:	c7 01       	movw	r24, r14
    2240:	09 95       	icall
    2242:	d7 01       	movw	r26, r14
    2244:	ed 91       	ld	r30, X+
    2246:	fc 91       	ld	r31, X
    2248:	06 80       	ldd	r0, Z+6	; 0x06
    224a:	f7 81       	ldd	r31, Z+7	; 0x07
    224c:	e0 2d       	mov	r30, r0
    224e:	61 e0       	ldi	r22, 0x01	; 1
    2250:	c7 01       	movw	r24, r14
    2252:	09 95       	icall
    2254:	08 2f       	mov	r16, r24
    2256:	10 e0       	ldi	r17, 0x00	; 0
    2258:	10 2f       	mov	r17, r16
    225a:	00 27       	eor	r16, r16
    225c:	d7 01       	movw	r26, r14
    225e:	ed 91       	ld	r30, X+
    2260:	fc 91       	ld	r31, X
    2262:	06 80       	ldd	r0, Z+6	; 0x06
    2264:	f7 81       	ldd	r31, Z+7	; 0x07
    2266:	e0 2d       	mov	r30, r0
    2268:	60 e0       	ldi	r22, 0x00	; 0
    226a:	c7 01       	movw	r24, r14
    226c:	09 95       	icall
    226e:	08 2b       	or	r16, r24
    2270:	d7 01       	movw	r26, r14
    2272:	ed 91       	ld	r30, X+
    2274:	fc 91       	ld	r31, X
    2276:	02 80       	ldd	r0, Z+2	; 0x02
    2278:	f3 81       	ldd	r31, Z+3	; 0x03
    227a:	e0 2d       	mov	r30, r0
    227c:	c7 01       	movw	r24, r14
    227e:	09 95       	icall
    2280:	c8 01       	movw	r24, r16
    2282:	0f 90       	pop	r0
    2284:	df 91       	pop	r29
    2286:	cf 91       	pop	r28
    2288:	1f 91       	pop	r17
    228a:	0f 91       	pop	r16
    228c:	ff 90       	pop	r15
    228e:	ef 90       	pop	r14
    2290:	08 95       	ret

00002292 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
    2292:	cf 92       	push	r12
    2294:	df 92       	push	r13
    2296:	ef 92       	push	r14
    2298:	ff 92       	push	r15
    229a:	0f 93       	push	r16
    229c:	1f 93       	push	r17
    229e:	cf 93       	push	r28
    22a0:	df 93       	push	r29
    22a2:	00 d0       	rcall	.+0      	; 0x22a4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
    22a4:	1f 92       	push	r1
    22a6:	cd b7       	in	r28, 0x3d	; 61
    22a8:	de b7       	in	r29, 0x3e	; 62
    22aa:	6c 01       	movw	r12, r24
    22ac:	f6 2e       	mov	r15, r22
    22ae:	dc 01       	movw	r26, r24
    22b0:	ed 91       	ld	r30, X+
    22b2:	fc 91       	ld	r31, X
    22b4:	01 90       	ld	r0, Z+
    22b6:	f0 81       	ld	r31, Z
    22b8:	e0 2d       	mov	r30, r0
    22ba:	2a 83       	std	Y+2, r18	; 0x02
    22bc:	3b 83       	std	Y+3, r19	; 0x03
    22be:	49 83       	std	Y+1, r20	; 0x01
    22c0:	09 95       	icall
    22c2:	d6 01       	movw	r26, r12
    22c4:	ed 91       	ld	r30, X+
    22c6:	fc 91       	ld	r31, X
    22c8:	04 80       	ldd	r0, Z+4	; 0x04
    22ca:	f5 81       	ldd	r31, Z+5	; 0x05
    22cc:	e0 2d       	mov	r30, r0
    22ce:	6f 2d       	mov	r22, r15
    22d0:	c6 01       	movw	r24, r12
    22d2:	09 95       	icall
    22d4:	d6 01       	movw	r26, r12
    22d6:	ed 91       	ld	r30, X+
    22d8:	fc 91       	ld	r31, X
    22da:	04 80       	ldd	r0, Z+4	; 0x04
    22dc:	f5 81       	ldd	r31, Z+5	; 0x05
    22de:	e0 2d       	mov	r30, r0
    22e0:	49 81       	ldd	r20, Y+1	; 0x01
    22e2:	64 2f       	mov	r22, r20
    22e4:	c6 01       	movw	r24, r12
    22e6:	09 95       	icall
    22e8:	d6 01       	movw	r26, r12
    22ea:	ed 91       	ld	r30, X+
    22ec:	fc 91       	ld	r31, X
    22ee:	01 90       	ld	r0, Z+
    22f0:	f0 81       	ld	r31, Z
    22f2:	e0 2d       	mov	r30, r0
    22f4:	c6 01       	movw	r24, r12
    22f6:	09 95       	icall
    22f8:	d6 01       	movw	r26, r12
    22fa:	ed 91       	ld	r30, X+
    22fc:	fc 91       	ld	r31, X
    22fe:	6f 2d       	mov	r22, r15
    2300:	61 60       	ori	r22, 0x01	; 1
    2302:	04 80       	ldd	r0, Z+4	; 0x04
    2304:	f5 81       	ldd	r31, Z+5	; 0x05
    2306:	e0 2d       	mov	r30, r0
    2308:	c6 01       	movw	r24, r12
    230a:	09 95       	icall
    230c:	2a 81       	ldd	r18, Y+2	; 0x02
    230e:	e2 2e       	mov	r14, r18
    2310:	3b 81       	ldd	r19, Y+3	; 0x03
    2312:	f3 2e       	mov	r15, r19
    2314:	0e 0d       	add	r16, r14
    2316:	1f 1d       	adc	r17, r15
    2318:	d6 01       	movw	r26, r12
    231a:	ed 91       	ld	r30, X+
    231c:	fc 91       	ld	r31, X
    231e:	e0 16       	cp	r14, r16
    2320:	f1 06       	cpc	r15, r17
    2322:	51 f0       	breq	.+20     	; 0x2338 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
    2324:	06 80       	ldd	r0, Z+6	; 0x06
    2326:	f7 81       	ldd	r31, Z+7	; 0x07
    2328:	e0 2d       	mov	r30, r0
    232a:	61 e0       	ldi	r22, 0x01	; 1
    232c:	c6 01       	movw	r24, r12
    232e:	09 95       	icall
    2330:	f7 01       	movw	r30, r14
    2332:	81 93       	st	Z+, r24
    2334:	7f 01       	movw	r14, r30
    2336:	f0 cf       	rjmp	.-32     	; 0x2318 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
    2338:	02 80       	ldd	r0, Z+2	; 0x02
    233a:	f3 81       	ldd	r31, Z+3	; 0x03
    233c:	e0 2d       	mov	r30, r0
    233e:	c6 01       	movw	r24, r12
    2340:	0f 90       	pop	r0
    2342:	0f 90       	pop	r0
    2344:	0f 90       	pop	r0
    2346:	df 91       	pop	r29
    2348:	cf 91       	pop	r28
    234a:	1f 91       	pop	r17
    234c:	0f 91       	pop	r16
    234e:	ff 90       	pop	r15
    2350:	ef 90       	pop	r14
    2352:	df 90       	pop	r13
    2354:	cf 90       	pop	r12
    2356:	09 94       	ijmp

00002358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
    2358:	88 23       	and	r24, r24
    235a:	21 f0       	breq	.+8      	; 0x2364 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
    235c:	bf 98       	cbi	0x17, 7	; 23
    235e:	82 30       	cpi	r24, 0x02	; 2
    2360:	19 f0       	breq	.+6      	; 0x2368 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
    2362:	08 95       	ret
    2364:	bf 9a       	sbi	0x17, 7	; 23
    2366:	08 95       	ret
    2368:	c7 9a       	sbi	0x18, 7	; 24
    236a:	08 95       	ret

0000236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
    236c:	00 00       	nop
    236e:	00 00       	nop
    2370:	08 95       	ret

00002372 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
    2372:	1f 93       	push	r17
    2374:	cf 93       	push	r28
    2376:	df 93       	push	r29
    2378:	16 2f       	mov	r17, r22
    237a:	bd 98       	cbi	0x17, 5	; 23
    237c:	80 e0       	ldi	r24, 0x00	; 0
    237e:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    2382:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    2386:	d8 e0       	ldi	r29, 0x08	; 8
    2388:	c0 e0       	ldi	r28, 0x00	; 0
    238a:	cc 0f       	add	r28, r28
    238c:	81 e0       	ldi	r24, 0x01	; 1
    238e:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    2392:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    2396:	b5 99       	sbic	0x16, 5	; 22
    2398:	c1 60       	ori	r28, 0x01	; 1
    239a:	80 e0       	ldi	r24, 0x00	; 0
    239c:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    23a0:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    23a4:	d1 50       	subi	r29, 0x01	; 1
    23a6:	89 f7       	brne	.-30     	; 0x238a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
    23a8:	11 23       	and	r17, r17
    23aa:	11 f0       	breq	.+4      	; 0x23b0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
    23ac:	bd 9a       	sbi	0x17, 5	; 23
    23ae:	01 c0       	rjmp	.+2      	; 0x23b2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
    23b0:	bd 98       	cbi	0x17, 5	; 23
    23b2:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    23b6:	81 e0       	ldi	r24, 0x01	; 1
    23b8:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    23bc:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    23c0:	80 e0       	ldi	r24, 0x00	; 0
    23c2:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    23c6:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    23ca:	bd 98       	cbi	0x17, 5	; 23
    23cc:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    23d0:	8c 2f       	mov	r24, r28
    23d2:	df 91       	pop	r29
    23d4:	cf 91       	pop	r28
    23d6:	1f 91       	pop	r17
    23d8:	08 95       	ret

000023da <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
    23da:	cf 93       	push	r28
    23dc:	df 93       	push	r29
    23de:	d6 2f       	mov	r29, r22
    23e0:	c8 e0       	ldi	r28, 0x08	; 8
    23e2:	80 e0       	ldi	r24, 0x00	; 0
    23e4:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    23e8:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    23ec:	d7 ff       	sbrs	r29, 7
    23ee:	02 c0       	rjmp	.+4      	; 0x23f4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
    23f0:	bd 98       	cbi	0x17, 5	; 23
    23f2:	01 c0       	rjmp	.+2      	; 0x23f6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
    23f4:	bd 9a       	sbi	0x17, 5	; 23
    23f6:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    23fa:	81 e0       	ldi	r24, 0x01	; 1
    23fc:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    2400:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    2404:	dd 0f       	add	r29, r29
    2406:	c1 50       	subi	r28, 0x01	; 1
    2408:	61 f7       	brne	.-40     	; 0x23e2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
    240a:	80 e0       	ldi	r24, 0x00	; 0
    240c:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    2410:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    2414:	bd 98       	cbi	0x17, 5	; 23
    2416:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    241a:	81 e0       	ldi	r24, 0x01	; 1
    241c:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    2420:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    2424:	c6 b3       	in	r28, 0x16	; 22
    2426:	80 e0       	ldi	r24, 0x00	; 0
    2428:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    242c:	0e 94 b6 11 	call	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
    2430:	c5 fb       	bst	r28, 5
    2432:	cc 27       	eor	r28, r28
    2434:	c0 f9       	bld	r28, 0
    2436:	81 e0       	ldi	r24, 0x01	; 1
    2438:	8c 27       	eor	r24, r28
    243a:	df 91       	pop	r29
    243c:	cf 91       	pop	r28
    243e:	08 95       	ret

00002440 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
    2440:	81 e0       	ldi	r24, 0x01	; 1
    2442:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    2446:	bd 98       	cbi	0x17, 5	; 23
    2448:	81 e0       	ldi	r24, 0x01	; 1
    244a:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    244e:	bd 9a       	sbi	0x17, 5	; 23
    2450:	80 e0       	ldi	r24, 0x00	; 0
    2452:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    2456:	bd 98       	cbi	0x17, 5	; 23
    2458:	0c 94 b6 11 	jmp	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000245c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
    245c:	80 e0       	ldi	r24, 0x00	; 0
    245e:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    2462:	bd 9a       	sbi	0x17, 5	; 23
    2464:	81 e0       	ldi	r24, 0x01	; 1
    2466:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    246a:	bd 9a       	sbi	0x17, 5	; 23
    246c:	81 e0       	ldi	r24, 0x01	; 1
    246e:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    2472:	bd 98       	cbi	0x17, 5	; 23
    2474:	0c 94 b6 11 	jmp	0x236c	; 0x236c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00002478 <_GLOBAL__sub_I_i2c>:
    2478:	8c e0       	ldi	r24, 0x0C	; 12
    247a:	91 e0       	ldi	r25, 0x01	; 1
    247c:	90 93 72 01 	sts	0x0172, r25
    2480:	80 93 71 01 	sts	0x0171, r24
    2484:	bd 98       	cbi	0x17, 5	; 23
    2486:	81 e0       	ldi	r24, 0x01	; 1
    2488:	0e 94 ac 11 	call	0x2358	; 0x2358 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
    248c:	c5 98       	cbi	0x18, 5	; 24
    248e:	c7 98       	cbi	0x18, 7	; 24
    2490:	08 95       	ret

00002492 <_ZN8Terminal4putsEPc>:
    2492:	0f 93       	push	r16
    2494:	1f 93       	push	r17
    2496:	cf 93       	push	r28
    2498:	df 93       	push	r29
    249a:	8c 01       	movw	r16, r24
    249c:	eb 01       	movw	r28, r22
    249e:	69 91       	ld	r22, Y+
    24a0:	66 23       	and	r22, r22
    24a2:	21 f0       	breq	.+8      	; 0x24ac <_ZN8Terminal4putsEPc+0x1a>
    24a4:	c8 01       	movw	r24, r16
    24a6:	0e 94 31 0e 	call	0x1c62	; 0x1c62 <_ZN5USART7putcharEc>
    24aa:	f9 cf       	rjmp	.-14     	; 0x249e <_ZN8Terminal4putsEPc+0xc>
    24ac:	df 91       	pop	r29
    24ae:	cf 91       	pop	r28
    24b0:	1f 91       	pop	r17
    24b2:	0f 91       	pop	r16
    24b4:	08 95       	ret

000024b6 <_ZN8Terminal4putiEl>:
    24b6:	8f 92       	push	r8
    24b8:	9f 92       	push	r9
    24ba:	af 92       	push	r10
    24bc:	bf 92       	push	r11
    24be:	cf 92       	push	r12
    24c0:	df 92       	push	r13
    24c2:	ef 92       	push	r14
    24c4:	ff 92       	push	r15
    24c6:	0f 93       	push	r16
    24c8:	1f 93       	push	r17
    24ca:	cf 93       	push	r28
    24cc:	df 93       	push	r29
    24ce:	cd b7       	in	r28, 0x3d	; 61
    24d0:	de b7       	in	r29, 0x3e	; 62
    24d2:	2c 97       	sbiw	r28, 0x0c	; 12
    24d4:	0f b6       	in	r0, 0x3f	; 63
    24d6:	f8 94       	cli
    24d8:	de bf       	out	0x3e, r29	; 62
    24da:	0f be       	out	0x3f, r0	; 63
    24dc:	cd bf       	out	0x3d, r28	; 61
    24de:	7c 01       	movw	r14, r24
    24e0:	77 ff       	sbrs	r23, 7
    24e2:	09 c0       	rjmp	.+18     	; 0x24f6 <_ZN8Terminal4putiEl+0x40>
    24e4:	70 95       	com	r23
    24e6:	60 95       	com	r22
    24e8:	50 95       	com	r21
    24ea:	41 95       	neg	r20
    24ec:	5f 4f       	sbci	r21, 0xFF	; 255
    24ee:	6f 4f       	sbci	r22, 0xFF	; 255
    24f0:	7f 4f       	sbci	r23, 0xFF	; 255
    24f2:	01 e0       	ldi	r16, 0x01	; 1
    24f4:	01 c0       	rjmp	.+2      	; 0x24f8 <_ZN8Terminal4putiEl+0x42>
    24f6:	00 e0       	ldi	r16, 0x00	; 0
    24f8:	1c 86       	std	Y+12, r1	; 0x0c
    24fa:	1a e0       	ldi	r17, 0x0A	; 10
    24fc:	9a e0       	ldi	r25, 0x0A	; 10
    24fe:	89 2e       	mov	r8, r25
    2500:	91 2c       	mov	r9, r1
    2502:	a1 2c       	mov	r10, r1
    2504:	b1 2c       	mov	r11, r1
    2506:	cc 24       	eor	r12, r12
    2508:	c3 94       	inc	r12
    250a:	d1 2c       	mov	r13, r1
    250c:	cc 0e       	add	r12, r28
    250e:	dd 1e       	adc	r13, r29
    2510:	c1 0e       	add	r12, r17
    2512:	d1 1c       	adc	r13, r1
    2514:	cb 01       	movw	r24, r22
    2516:	ba 01       	movw	r22, r20
    2518:	a5 01       	movw	r20, r10
    251a:	94 01       	movw	r18, r8
    251c:	0e 94 b8 14 	call	0x2970	; 0x2970 <__divmodsi4>
    2520:	94 2f       	mov	r25, r20
    2522:	85 2f       	mov	r24, r21
    2524:	60 5d       	subi	r22, 0xD0	; 208
    2526:	f6 01       	movw	r30, r12
    2528:	60 83       	st	Z, r22
    252a:	a9 01       	movw	r20, r18
    252c:	69 2f       	mov	r22, r25
    252e:	78 2f       	mov	r23, r24
    2530:	8f ef       	ldi	r24, 0xFF	; 255
    2532:	81 0f       	add	r24, r17
    2534:	41 15       	cp	r20, r1
    2536:	51 05       	cpc	r21, r1
    2538:	61 05       	cpc	r22, r1
    253a:	71 05       	cpc	r23, r1
    253c:	11 f0       	breq	.+4      	; 0x2542 <_ZN8Terminal4putiEl+0x8c>
    253e:	18 2f       	mov	r17, r24
    2540:	e2 cf       	rjmp	.-60     	; 0x2506 <_ZN8Terminal4putiEl+0x50>
    2542:	00 23       	and	r16, r16
    2544:	49 f0       	breq	.+18     	; 0x2558 <_ZN8Terminal4putiEl+0xa2>
    2546:	e1 e0       	ldi	r30, 0x01	; 1
    2548:	f0 e0       	ldi	r31, 0x00	; 0
    254a:	ec 0f       	add	r30, r28
    254c:	fd 1f       	adc	r31, r29
    254e:	e8 0f       	add	r30, r24
    2550:	f1 1d       	adc	r31, r1
    2552:	9d e2       	ldi	r25, 0x2D	; 45
    2554:	90 83       	st	Z, r25
    2556:	18 2f       	mov	r17, r24
    2558:	61 e0       	ldi	r22, 0x01	; 1
    255a:	70 e0       	ldi	r23, 0x00	; 0
    255c:	6c 0f       	add	r22, r28
    255e:	7d 1f       	adc	r23, r29
    2560:	61 0f       	add	r22, r17
    2562:	71 1d       	adc	r23, r1
    2564:	c7 01       	movw	r24, r14
    2566:	0e 94 49 12 	call	0x2492	; 0x2492 <_ZN8Terminal4putsEPc>
    256a:	2c 96       	adiw	r28, 0x0c	; 12
    256c:	0f b6       	in	r0, 0x3f	; 63
    256e:	f8 94       	cli
    2570:	de bf       	out	0x3e, r29	; 62
    2572:	0f be       	out	0x3f, r0	; 63
    2574:	cd bf       	out	0x3d, r28	; 61
    2576:	df 91       	pop	r29
    2578:	cf 91       	pop	r28
    257a:	1f 91       	pop	r17
    257c:	0f 91       	pop	r16
    257e:	ff 90       	pop	r15
    2580:	ef 90       	pop	r14
    2582:	df 90       	pop	r13
    2584:	cf 90       	pop	r12
    2586:	bf 90       	pop	r11
    2588:	af 90       	pop	r10
    258a:	9f 90       	pop	r9
    258c:	8f 90       	pop	r8
    258e:	08 95       	ret

00002590 <_ZN8Terminal5putuiEm>:
    2590:	8f 92       	push	r8
    2592:	9f 92       	push	r9
    2594:	af 92       	push	r10
    2596:	bf 92       	push	r11
    2598:	cf 92       	push	r12
    259a:	df 92       	push	r13
    259c:	ef 92       	push	r14
    259e:	ff 92       	push	r15
    25a0:	1f 93       	push	r17
    25a2:	cf 93       	push	r28
    25a4:	df 93       	push	r29
    25a6:	cd b7       	in	r28, 0x3d	; 61
    25a8:	de b7       	in	r29, 0x3e	; 62
    25aa:	2c 97       	sbiw	r28, 0x0c	; 12
    25ac:	0f b6       	in	r0, 0x3f	; 63
    25ae:	f8 94       	cli
    25b0:	de bf       	out	0x3e, r29	; 62
    25b2:	0f be       	out	0x3f, r0	; 63
    25b4:	cd bf       	out	0x3d, r28	; 61
    25b6:	6c 01       	movw	r12, r24
    25b8:	1c 86       	std	Y+12, r1	; 0x0c
    25ba:	1a e0       	ldi	r17, 0x0A	; 10
    25bc:	9a e0       	ldi	r25, 0x0A	; 10
    25be:	89 2e       	mov	r8, r25
    25c0:	91 2c       	mov	r9, r1
    25c2:	a1 2c       	mov	r10, r1
    25c4:	b1 2c       	mov	r11, r1
    25c6:	ee 24       	eor	r14, r14
    25c8:	e3 94       	inc	r14
    25ca:	f1 2c       	mov	r15, r1
    25cc:	ec 0e       	add	r14, r28
    25ce:	fd 1e       	adc	r15, r29
    25d0:	e1 0e       	add	r14, r17
    25d2:	f1 1c       	adc	r15, r1
    25d4:	cb 01       	movw	r24, r22
    25d6:	ba 01       	movw	r22, r20
    25d8:	a5 01       	movw	r20, r10
    25da:	94 01       	movw	r18, r8
    25dc:	0e 94 96 14 	call	0x292c	; 0x292c <__udivmodsi4>
    25e0:	94 2f       	mov	r25, r20
    25e2:	85 2f       	mov	r24, r21
    25e4:	60 5d       	subi	r22, 0xD0	; 208
    25e6:	f7 01       	movw	r30, r14
    25e8:	60 83       	st	Z, r22
    25ea:	a9 01       	movw	r20, r18
    25ec:	69 2f       	mov	r22, r25
    25ee:	78 2f       	mov	r23, r24
    25f0:	11 50       	subi	r17, 0x01	; 1
    25f2:	41 15       	cp	r20, r1
    25f4:	51 05       	cpc	r21, r1
    25f6:	61 05       	cpc	r22, r1
    25f8:	71 05       	cpc	r23, r1
    25fa:	29 f7       	brne	.-54     	; 0x25c6 <_ZN8Terminal5putuiEm+0x36>
    25fc:	b7 01       	movw	r22, r14
    25fe:	c6 01       	movw	r24, r12
    2600:	0e 94 49 12 	call	0x2492	; 0x2492 <_ZN8Terminal4putsEPc>
    2604:	2c 96       	adiw	r28, 0x0c	; 12
    2606:	0f b6       	in	r0, 0x3f	; 63
    2608:	f8 94       	cli
    260a:	de bf       	out	0x3e, r29	; 62
    260c:	0f be       	out	0x3f, r0	; 63
    260e:	cd bf       	out	0x3d, r28	; 61
    2610:	df 91       	pop	r29
    2612:	cf 91       	pop	r28
    2614:	1f 91       	pop	r17
    2616:	ff 90       	pop	r15
    2618:	ef 90       	pop	r14
    261a:	df 90       	pop	r13
    261c:	cf 90       	pop	r12
    261e:	bf 90       	pop	r11
    2620:	af 90       	pop	r10
    2622:	9f 90       	pop	r9
    2624:	8f 90       	pop	r8
    2626:	08 95       	ret

00002628 <_ZN8Terminal4putxEm>:
    2628:	ef 92       	push	r14
    262a:	ff 92       	push	r15
    262c:	cf 93       	push	r28
    262e:	df 93       	push	r29
    2630:	cd b7       	in	r28, 0x3d	; 61
    2632:	de b7       	in	r29, 0x3e	; 62
    2634:	2c 97       	sbiw	r28, 0x0c	; 12
    2636:	0f b6       	in	r0, 0x3f	; 63
    2638:	f8 94       	cli
    263a:	de bf       	out	0x3e, r29	; 62
    263c:	0f be       	out	0x3f, r0	; 63
    263e:	cd bf       	out	0x3d, r28	; 61
    2640:	fc 01       	movw	r30, r24
    2642:	1c 86       	std	Y+12, r1	; 0x0c
    2644:	2a e0       	ldi	r18, 0x0A	; 10
    2646:	94 2f       	mov	r25, r20
    2648:	9f 70       	andi	r25, 0x0F	; 15
    264a:	e2 2e       	mov	r14, r18
    264c:	f1 2c       	mov	r15, r1
    264e:	a1 e0       	ldi	r26, 0x01	; 1
    2650:	b0 e0       	ldi	r27, 0x00	; 0
    2652:	ac 0f       	add	r26, r28
    2654:	bd 1f       	adc	r27, r29
    2656:	ae 0d       	add	r26, r14
    2658:	bf 1d       	adc	r27, r15
    265a:	9a 30       	cpi	r25, 0x0A	; 10
    265c:	14 f4       	brge	.+4      	; 0x2662 <_ZN8Terminal4putxEm+0x3a>
    265e:	90 5d       	subi	r25, 0xD0	; 208
    2660:	01 c0       	rjmp	.+2      	; 0x2664 <_ZN8Terminal4putxEm+0x3c>
    2662:	99 5a       	subi	r25, 0xA9	; 169
    2664:	9c 93       	st	X, r25
    2666:	84 e0       	ldi	r24, 0x04	; 4
    2668:	76 95       	lsr	r23
    266a:	67 95       	ror	r22
    266c:	57 95       	ror	r21
    266e:	47 95       	ror	r20
    2670:	8a 95       	dec	r24
    2672:	d1 f7       	brne	.-12     	; 0x2668 <_ZN8Terminal4putxEm+0x40>
    2674:	21 50       	subi	r18, 0x01	; 1
    2676:	41 15       	cp	r20, r1
    2678:	51 05       	cpc	r21, r1
    267a:	61 05       	cpc	r22, r1
    267c:	71 05       	cpc	r23, r1
    267e:	19 f7       	brne	.-58     	; 0x2646 <_ZN8Terminal4putxEm+0x1e>
    2680:	61 e0       	ldi	r22, 0x01	; 1
    2682:	70 e0       	ldi	r23, 0x00	; 0
    2684:	6c 0f       	add	r22, r28
    2686:	7d 1f       	adc	r23, r29
    2688:	6e 0d       	add	r22, r14
    268a:	7f 1d       	adc	r23, r15
    268c:	cf 01       	movw	r24, r30
    268e:	0e 94 49 12 	call	0x2492	; 0x2492 <_ZN8Terminal4putsEPc>
    2692:	2c 96       	adiw	r28, 0x0c	; 12
    2694:	0f b6       	in	r0, 0x3f	; 63
    2696:	f8 94       	cli
    2698:	de bf       	out	0x3e, r29	; 62
    269a:	0f be       	out	0x3f, r0	; 63
    269c:	cd bf       	out	0x3d, r28	; 61
    269e:	df 91       	pop	r29
    26a0:	cf 91       	pop	r28
    26a2:	ff 90       	pop	r15
    26a4:	ef 90       	pop	r14
    26a6:	08 95       	ret

000026a8 <_ZN8Terminal4putfEfh>:
    26a8:	4f 92       	push	r4
    26aa:	5f 92       	push	r5
    26ac:	6f 92       	push	r6
    26ae:	7f 92       	push	r7
    26b0:	8f 92       	push	r8
    26b2:	9f 92       	push	r9
    26b4:	af 92       	push	r10
    26b6:	bf 92       	push	r11
    26b8:	cf 92       	push	r12
    26ba:	df 92       	push	r13
    26bc:	ef 92       	push	r14
    26be:	ff 92       	push	r15
    26c0:	0f 93       	push	r16
    26c2:	1f 93       	push	r17
    26c4:	cf 93       	push	r28
    26c6:	df 93       	push	r29
    26c8:	8c 01       	movw	r16, r24
    26ca:	2a 01       	movw	r4, r20
    26cc:	3b 01       	movw	r6, r22
    26ce:	c2 2f       	mov	r28, r18
    26d0:	20 e0       	ldi	r18, 0x00	; 0
    26d2:	30 e0       	ldi	r19, 0x00	; 0
    26d4:	a9 01       	movw	r20, r18
    26d6:	c3 01       	movw	r24, r6
    26d8:	b2 01       	movw	r22, r4
    26da:	0e 94 4a 15 	call	0x2a94	; 0x2a94 <__cmpsf2>
    26de:	87 ff       	sbrs	r24, 7
    26e0:	06 c0       	rjmp	.+12     	; 0x26ee <_ZN8Terminal4putfEfh+0x46>
    26e2:	77 fa       	bst	r7, 7
    26e4:	70 94       	com	r7
    26e6:	77 f8       	bld	r7, 7
    26e8:	70 94       	com	r7
    26ea:	dd e2       	ldi	r29, 0x2D	; 45
    26ec:	01 c0       	rjmp	.+2      	; 0x26f0 <_ZN8Terminal4putfEfh+0x48>
    26ee:	d0 e2       	ldi	r29, 0x20	; 32
    26f0:	ee 24       	eor	r14, r14
    26f2:	e3 94       	inc	r14
    26f4:	f1 2c       	mov	r15, r1
    26f6:	80 e0       	ldi	r24, 0x00	; 0
    26f8:	90 e0       	ldi	r25, 0x00	; 0
    26fa:	2c 2f       	mov	r18, r28
    26fc:	30 e0       	ldi	r19, 0x00	; 0
    26fe:	4a e0       	ldi	r20, 0x0A	; 10
    2700:	82 17       	cp	r24, r18
    2702:	93 07       	cpc	r25, r19
    2704:	40 f4       	brcc	.+16     	; 0x2716 <_ZN8Terminal4putfEfh+0x6e>
    2706:	b7 01       	movw	r22, r14
    2708:	46 9f       	mul	r20, r22
    270a:	70 01       	movw	r14, r0
    270c:	47 9f       	mul	r20, r23
    270e:	f0 0c       	add	r15, r0
    2710:	11 24       	eor	r1, r1
    2712:	01 96       	adiw	r24, 0x01	; 1
    2714:	f5 cf       	rjmp	.-22     	; 0x2700 <_ZN8Terminal4putfEfh+0x58>
    2716:	c3 01       	movw	r24, r6
    2718:	b2 01       	movw	r22, r4
    271a:	0e 94 4f 15 	call	0x2a9e	; 0x2a9e <__fixsfsi>
    271e:	4b 01       	movw	r8, r22
    2720:	5c 01       	movw	r10, r24
    2722:	0e 94 87 15 	call	0x2b0e	; 0x2b0e <__floatsisf>
    2726:	9b 01       	movw	r18, r22
    2728:	ac 01       	movw	r20, r24
    272a:	c3 01       	movw	r24, r6
    272c:	b2 01       	movw	r22, r4
    272e:	0e 94 dd 14 	call	0x29ba	; 0x29ba <__subsf3>
    2732:	2b 01       	movw	r4, r22
    2734:	3c 01       	movw	r6, r24
    2736:	b7 01       	movw	r22, r14
    2738:	80 e0       	ldi	r24, 0x00	; 0
    273a:	90 e0       	ldi	r25, 0x00	; 0
    273c:	0e 94 85 15 	call	0x2b0a	; 0x2b0a <__floatunsisf>
    2740:	9b 01       	movw	r18, r22
    2742:	ac 01       	movw	r20, r24
    2744:	c3 01       	movw	r24, r6
    2746:	b2 01       	movw	r22, r4
    2748:	0e 94 37 16 	call	0x2c6e	; 0x2c6e <__mulsf3>
    274c:	0e 94 4f 15 	call	0x2a9e	; 0x2a9e <__fixsfsi>
    2750:	6b 01       	movw	r12, r22
    2752:	7c 01       	movw	r14, r24
    2754:	97 ff       	sbrs	r25, 7
    2756:	08 c0       	rjmp	.+16     	; 0x2768 <_ZN8Terminal4putfEfh+0xc0>
    2758:	f0 94       	com	r15
    275a:	e0 94       	com	r14
    275c:	d0 94       	com	r13
    275e:	c0 94       	com	r12
    2760:	c1 1c       	adc	r12, r1
    2762:	d1 1c       	adc	r13, r1
    2764:	e1 1c       	adc	r14, r1
    2766:	f1 1c       	adc	r15, r1
    2768:	6d 2f       	mov	r22, r29
    276a:	c8 01       	movw	r24, r16
    276c:	0e 94 31 0e 	call	0x1c62	; 0x1c62 <_ZN5USART7putcharEc>
    2770:	b5 01       	movw	r22, r10
    2772:	a4 01       	movw	r20, r8
    2774:	c8 01       	movw	r24, r16
    2776:	0e 94 5b 12 	call	0x24b6	; 0x24b6 <_ZN8Terminal4putiEl>
    277a:	6e e2       	ldi	r22, 0x2E	; 46
    277c:	c8 01       	movw	r24, r16
    277e:	0e 94 31 0e 	call	0x1c62	; 0x1c62 <_ZN5USART7putcharEc>
    2782:	80 e0       	ldi	r24, 0x00	; 0
    2784:	21 e0       	ldi	r18, 0x01	; 1
    2786:	30 e0       	ldi	r19, 0x00	; 0
    2788:	9a e0       	ldi	r25, 0x0A	; 10
    278a:	a9 01       	movw	r20, r18
    278c:	94 9f       	mul	r25, r20
    278e:	90 01       	movw	r18, r0
    2790:	95 9f       	mul	r25, r21
    2792:	30 0d       	add	r19, r0
    2794:	11 24       	eor	r1, r1
    2796:	8f 5f       	subi	r24, 0xFF	; 255
    2798:	a9 01       	movw	r20, r18
    279a:	60 e0       	ldi	r22, 0x00	; 0
    279c:	70 e0       	ldi	r23, 0x00	; 0
    279e:	4c 15       	cp	r20, r12
    27a0:	5d 05       	cpc	r21, r13
    27a2:	6e 05       	cpc	r22, r14
    27a4:	7f 05       	cpc	r23, r15
    27a6:	8c f3       	brlt	.-30     	; 0x278a <_ZN8Terminal4putfEfh+0xe2>
    27a8:	c8 1b       	sub	r28, r24
    27aa:	a1 2c       	mov	r10, r1
    27ac:	b1 2c       	mov	r11, r1
    27ae:	d0 e0       	ldi	r29, 0x00	; 0
    27b0:	ac 16       	cp	r10, r28
    27b2:	bd 06       	cpc	r11, r29
    27b4:	40 f4       	brcc	.+16     	; 0x27c6 <_ZN8Terminal4putfEfh+0x11e>
    27b6:	60 e3       	ldi	r22, 0x30	; 48
    27b8:	c8 01       	movw	r24, r16
    27ba:	0e 94 31 0e 	call	0x1c62	; 0x1c62 <_ZN5USART7putcharEc>
    27be:	5f ef       	ldi	r21, 0xFF	; 255
    27c0:	a5 1a       	sub	r10, r21
    27c2:	b5 0a       	sbc	r11, r21
    27c4:	f5 cf       	rjmp	.-22     	; 0x27b0 <_ZN8Terminal4putfEfh+0x108>
    27c6:	b7 01       	movw	r22, r14
    27c8:	a6 01       	movw	r20, r12
    27ca:	c8 01       	movw	r24, r16
    27cc:	df 91       	pop	r29
    27ce:	cf 91       	pop	r28
    27d0:	1f 91       	pop	r17
    27d2:	0f 91       	pop	r16
    27d4:	ff 90       	pop	r15
    27d6:	ef 90       	pop	r14
    27d8:	df 90       	pop	r13
    27da:	cf 90       	pop	r12
    27dc:	bf 90       	pop	r11
    27de:	af 90       	pop	r10
    27e0:	9f 90       	pop	r9
    27e2:	8f 90       	pop	r8
    27e4:	7f 90       	pop	r7
    27e6:	6f 90       	pop	r6
    27e8:	5f 90       	pop	r5
    27ea:	4f 90       	pop	r4
    27ec:	0c 94 5b 12 	jmp	0x24b6	; 0x24b6 <_ZN8Terminal4putiEl>

000027f0 <_ZN8Terminal6printfEPKcz>:
    27f0:	af 92       	push	r10
    27f2:	bf 92       	push	r11
    27f4:	cf 92       	push	r12
    27f6:	df 92       	push	r13
    27f8:	ef 92       	push	r14
    27fa:	ff 92       	push	r15
    27fc:	0f 93       	push	r16
    27fe:	1f 93       	push	r17
    2800:	cf 93       	push	r28
    2802:	df 93       	push	r29
    2804:	cd b7       	in	r28, 0x3d	; 61
    2806:	de b7       	in	r29, 0x3e	; 62
    2808:	ed 84       	ldd	r14, Y+13	; 0x0d
    280a:	fe 84       	ldd	r15, Y+14	; 0x0e
    280c:	8e 01       	movw	r16, r28
    280e:	0f 5e       	subi	r16, 0xEF	; 239
    2810:	1f 4f       	sbci	r17, 0xFF	; 255
    2812:	c1 2c       	mov	r12, r1
    2814:	d1 2c       	mov	r13, r1
    2816:	ef 85       	ldd	r30, Y+15	; 0x0f
    2818:	f8 89       	ldd	r31, Y+16	; 0x10
    281a:	ec 0d       	add	r30, r12
    281c:	fd 1d       	adc	r31, r13
    281e:	60 81       	ld	r22, Z
    2820:	66 23       	and	r22, r22
    2822:	09 f4       	brne	.+2      	; 0x2826 <_ZN8Terminal6printfEPKcz+0x36>
    2824:	70 c0       	rjmp	.+224    	; 0x2906 <_ZN8Terminal6printfEPKcz+0x116>
    2826:	65 32       	cpi	r22, 0x25	; 37
    2828:	39 f0       	breq	.+14     	; 0x2838 <_ZN8Terminal6printfEPKcz+0x48>
    282a:	c7 01       	movw	r24, r14
    282c:	0e 94 31 0e 	call	0x1c62	; 0x1c62 <_ZN5USART7putcharEc>
    2830:	8f ef       	ldi	r24, 0xFF	; 255
    2832:	c8 1a       	sub	r12, r24
    2834:	d8 0a       	sbc	r13, r24
    2836:	ef cf       	rjmp	.-34     	; 0x2816 <_ZN8Terminal6printfEPKcz+0x26>
    2838:	81 81       	ldd	r24, Z+1	; 0x01
    283a:	89 36       	cpi	r24, 0x69	; 105
    283c:	09 f1       	breq	.+66     	; 0x2880 <_ZN8Terminal6printfEPKcz+0x90>
    283e:	74 f4       	brge	.+28     	; 0x285c <_ZN8Terminal6printfEPKcz+0x6c>
    2840:	83 36       	cpi	r24, 0x63	; 99
    2842:	09 f4       	brne	.+2      	; 0x2846 <_ZN8Terminal6printfEPKcz+0x56>
    2844:	44 c0       	rjmp	.+136    	; 0x28ce <_ZN8Terminal6printfEPKcz+0xde>
    2846:	86 36       	cpi	r24, 0x66	; 102
    2848:	09 f4       	brne	.+2      	; 0x284c <_ZN8Terminal6printfEPKcz+0x5c>
    284a:	4b c0       	rjmp	.+150    	; 0x28e2 <_ZN8Terminal6printfEPKcz+0xf2>
    284c:	85 32       	cpi	r24, 0x25	; 37
    284e:	09 f0       	breq	.+2      	; 0x2852 <_ZN8Terminal6printfEPKcz+0x62>
    2850:	56 c0       	rjmp	.+172    	; 0x28fe <_ZN8Terminal6printfEPKcz+0x10e>
    2852:	65 e2       	ldi	r22, 0x25	; 37
    2854:	c7 01       	movw	r24, r14
    2856:	0e 94 31 0e 	call	0x1c62	; 0x1c62 <_ZN5USART7putcharEc>
    285a:	51 c0       	rjmp	.+162    	; 0x28fe <_ZN8Terminal6printfEPKcz+0x10e>
    285c:	85 37       	cpi	r24, 0x75	; 117
    285e:	e9 f0       	breq	.+58     	; 0x289a <_ZN8Terminal6printfEPKcz+0xaa>
    2860:	88 37       	cpi	r24, 0x78	; 120
    2862:	41 f1       	breq	.+80     	; 0x28b4 <_ZN8Terminal6printfEPKcz+0xc4>
    2864:	83 37       	cpi	r24, 0x73	; 115
    2866:	09 f0       	breq	.+2      	; 0x286a <_ZN8Terminal6printfEPKcz+0x7a>
    2868:	4a c0       	rjmp	.+148    	; 0x28fe <_ZN8Terminal6printfEPKcz+0x10e>
    286a:	58 01       	movw	r10, r16
    286c:	f2 e0       	ldi	r31, 0x02	; 2
    286e:	af 0e       	add	r10, r31
    2870:	b1 1c       	adc	r11, r1
    2872:	f8 01       	movw	r30, r16
    2874:	60 81       	ld	r22, Z
    2876:	71 81       	ldd	r23, Z+1	; 0x01
    2878:	c7 01       	movw	r24, r14
    287a:	0e 94 49 12 	call	0x2492	; 0x2492 <_ZN8Terminal4putsEPc>
    287e:	3e c0       	rjmp	.+124    	; 0x28fc <_ZN8Terminal6printfEPKcz+0x10c>
    2880:	58 01       	movw	r10, r16
    2882:	94 e0       	ldi	r25, 0x04	; 4
    2884:	a9 0e       	add	r10, r25
    2886:	b1 1c       	adc	r11, r1
    2888:	f8 01       	movw	r30, r16
    288a:	40 81       	ld	r20, Z
    288c:	51 81       	ldd	r21, Z+1	; 0x01
    288e:	62 81       	ldd	r22, Z+2	; 0x02
    2890:	73 81       	ldd	r23, Z+3	; 0x03
    2892:	c7 01       	movw	r24, r14
    2894:	0e 94 5b 12 	call	0x24b6	; 0x24b6 <_ZN8Terminal4putiEl>
    2898:	31 c0       	rjmp	.+98     	; 0x28fc <_ZN8Terminal6printfEPKcz+0x10c>
    289a:	58 01       	movw	r10, r16
    289c:	f4 e0       	ldi	r31, 0x04	; 4
    289e:	af 0e       	add	r10, r31
    28a0:	b1 1c       	adc	r11, r1
    28a2:	f8 01       	movw	r30, r16
    28a4:	40 81       	ld	r20, Z
    28a6:	51 81       	ldd	r21, Z+1	; 0x01
    28a8:	62 81       	ldd	r22, Z+2	; 0x02
    28aa:	73 81       	ldd	r23, Z+3	; 0x03
    28ac:	c7 01       	movw	r24, r14
    28ae:	0e 94 c8 12 	call	0x2590	; 0x2590 <_ZN8Terminal5putuiEm>
    28b2:	24 c0       	rjmp	.+72     	; 0x28fc <_ZN8Terminal6printfEPKcz+0x10c>
    28b4:	58 01       	movw	r10, r16
    28b6:	f4 e0       	ldi	r31, 0x04	; 4
    28b8:	af 0e       	add	r10, r31
    28ba:	b1 1c       	adc	r11, r1
    28bc:	f8 01       	movw	r30, r16
    28be:	40 81       	ld	r20, Z
    28c0:	51 81       	ldd	r21, Z+1	; 0x01
    28c2:	62 81       	ldd	r22, Z+2	; 0x02
    28c4:	73 81       	ldd	r23, Z+3	; 0x03
    28c6:	c7 01       	movw	r24, r14
    28c8:	0e 94 14 13 	call	0x2628	; 0x2628 <_ZN8Terminal4putxEm>
    28cc:	17 c0       	rjmp	.+46     	; 0x28fc <_ZN8Terminal6printfEPKcz+0x10c>
    28ce:	58 01       	movw	r10, r16
    28d0:	f2 e0       	ldi	r31, 0x02	; 2
    28d2:	af 0e       	add	r10, r31
    28d4:	b1 1c       	adc	r11, r1
    28d6:	f8 01       	movw	r30, r16
    28d8:	60 81       	ld	r22, Z
    28da:	c7 01       	movw	r24, r14
    28dc:	0e 94 31 0e 	call	0x1c62	; 0x1c62 <_ZN5USART7putcharEc>
    28e0:	0d c0       	rjmp	.+26     	; 0x28fc <_ZN8Terminal6printfEPKcz+0x10c>
    28e2:	58 01       	movw	r10, r16
    28e4:	f4 e0       	ldi	r31, 0x04	; 4
    28e6:	af 0e       	add	r10, r31
    28e8:	b1 1c       	adc	r11, r1
    28ea:	f8 01       	movw	r30, r16
    28ec:	40 81       	ld	r20, Z
    28ee:	51 81       	ldd	r21, Z+1	; 0x01
    28f0:	62 81       	ldd	r22, Z+2	; 0x02
    28f2:	73 81       	ldd	r23, Z+3	; 0x03
    28f4:	23 e0       	ldi	r18, 0x03	; 3
    28f6:	c7 01       	movw	r24, r14
    28f8:	0e 94 54 13 	call	0x26a8	; 0x26a8 <_ZN8Terminal4putfEfh>
    28fc:	85 01       	movw	r16, r10
    28fe:	f2 e0       	ldi	r31, 0x02	; 2
    2900:	cf 0e       	add	r12, r31
    2902:	d1 1c       	adc	r13, r1
    2904:	88 cf       	rjmp	.-240    	; 0x2816 <_ZN8Terminal6printfEPKcz+0x26>
    2906:	df 91       	pop	r29
    2908:	cf 91       	pop	r28
    290a:	1f 91       	pop	r17
    290c:	0f 91       	pop	r16
    290e:	ff 90       	pop	r15
    2910:	ef 90       	pop	r14
    2912:	df 90       	pop	r13
    2914:	cf 90       	pop	r12
    2916:	bf 90       	pop	r11
    2918:	af 90       	pop	r10
    291a:	08 95       	ret

0000291c <_GLOBAL__sub_I_terminal>:
    291c:	85 e7       	ldi	r24, 0x75	; 117
    291e:	91 e0       	ldi	r25, 0x01	; 1
    2920:	0c 94 26 0e 	jmp	0x1c4c	; 0x1c4c <_ZN5USARTC1Ev>

00002924 <_GLOBAL__sub_D_terminal>:
    2924:	85 e7       	ldi	r24, 0x75	; 117
    2926:	91 e0       	ldi	r25, 0x01	; 1
    2928:	0c 94 30 0e 	jmp	0x1c60	; 0x1c60 <_ZN5USARTD1Ev>

0000292c <__udivmodsi4>:
    292c:	a1 e2       	ldi	r26, 0x21	; 33
    292e:	1a 2e       	mov	r1, r26
    2930:	aa 1b       	sub	r26, r26
    2932:	bb 1b       	sub	r27, r27
    2934:	fd 01       	movw	r30, r26
    2936:	0d c0       	rjmp	.+26     	; 0x2952 <__udivmodsi4_ep>

00002938 <__udivmodsi4_loop>:
    2938:	aa 1f       	adc	r26, r26
    293a:	bb 1f       	adc	r27, r27
    293c:	ee 1f       	adc	r30, r30
    293e:	ff 1f       	adc	r31, r31
    2940:	a2 17       	cp	r26, r18
    2942:	b3 07       	cpc	r27, r19
    2944:	e4 07       	cpc	r30, r20
    2946:	f5 07       	cpc	r31, r21
    2948:	20 f0       	brcs	.+8      	; 0x2952 <__udivmodsi4_ep>
    294a:	a2 1b       	sub	r26, r18
    294c:	b3 0b       	sbc	r27, r19
    294e:	e4 0b       	sbc	r30, r20
    2950:	f5 0b       	sbc	r31, r21

00002952 <__udivmodsi4_ep>:
    2952:	66 1f       	adc	r22, r22
    2954:	77 1f       	adc	r23, r23
    2956:	88 1f       	adc	r24, r24
    2958:	99 1f       	adc	r25, r25
    295a:	1a 94       	dec	r1
    295c:	69 f7       	brne	.-38     	; 0x2938 <__udivmodsi4_loop>
    295e:	60 95       	com	r22
    2960:	70 95       	com	r23
    2962:	80 95       	com	r24
    2964:	90 95       	com	r25
    2966:	9b 01       	movw	r18, r22
    2968:	ac 01       	movw	r20, r24
    296a:	bd 01       	movw	r22, r26
    296c:	cf 01       	movw	r24, r30
    296e:	08 95       	ret

00002970 <__divmodsi4>:
    2970:	05 2e       	mov	r0, r21
    2972:	97 fb       	bst	r25, 7
    2974:	1e f4       	brtc	.+6      	; 0x297c <__divmodsi4+0xc>
    2976:	00 94       	com	r0
    2978:	0e 94 cf 14 	call	0x299e	; 0x299e <__negsi2>
    297c:	57 fd       	sbrc	r21, 7
    297e:	07 d0       	rcall	.+14     	; 0x298e <__divmodsi4_neg2>
    2980:	0e 94 96 14 	call	0x292c	; 0x292c <__udivmodsi4>
    2984:	07 fc       	sbrc	r0, 7
    2986:	03 d0       	rcall	.+6      	; 0x298e <__divmodsi4_neg2>
    2988:	4e f4       	brtc	.+18     	; 0x299c <__divmodsi4_exit>
    298a:	0c 94 cf 14 	jmp	0x299e	; 0x299e <__negsi2>

0000298e <__divmodsi4_neg2>:
    298e:	50 95       	com	r21
    2990:	40 95       	com	r20
    2992:	30 95       	com	r19
    2994:	21 95       	neg	r18
    2996:	3f 4f       	sbci	r19, 0xFF	; 255
    2998:	4f 4f       	sbci	r20, 0xFF	; 255
    299a:	5f 4f       	sbci	r21, 0xFF	; 255

0000299c <__divmodsi4_exit>:
    299c:	08 95       	ret

0000299e <__negsi2>:
    299e:	90 95       	com	r25
    29a0:	80 95       	com	r24
    29a2:	70 95       	com	r23
    29a4:	61 95       	neg	r22
    29a6:	7f 4f       	sbci	r23, 0xFF	; 255
    29a8:	8f 4f       	sbci	r24, 0xFF	; 255
    29aa:	9f 4f       	sbci	r25, 0xFF	; 255
    29ac:	08 95       	ret

000029ae <__tablejump2__>:
    29ae:	ee 0f       	add	r30, r30
    29b0:	ff 1f       	adc	r31, r31
    29b2:	05 90       	lpm	r0, Z+
    29b4:	f4 91       	lpm	r31, Z
    29b6:	e0 2d       	mov	r30, r0
    29b8:	09 94       	ijmp

000029ba <__subsf3>:
    29ba:	50 58       	subi	r21, 0x80	; 128

000029bc <__addsf3>:
    29bc:	bb 27       	eor	r27, r27
    29be:	aa 27       	eor	r26, r26
    29c0:	0e 94 f5 14 	call	0x29ea	; 0x29ea <__addsf3x>
    29c4:	0c 94 fd 15 	jmp	0x2bfa	; 0x2bfa <__fp_round>
    29c8:	0e 94 ef 15 	call	0x2bde	; 0x2bde <__fp_pscA>
    29cc:	38 f0       	brcs	.+14     	; 0x29dc <__addsf3+0x20>
    29ce:	0e 94 f6 15 	call	0x2bec	; 0x2bec <__fp_pscB>
    29d2:	20 f0       	brcs	.+8      	; 0x29dc <__addsf3+0x20>
    29d4:	39 f4       	brne	.+14     	; 0x29e4 <__addsf3+0x28>
    29d6:	9f 3f       	cpi	r25, 0xFF	; 255
    29d8:	19 f4       	brne	.+6      	; 0x29e0 <__addsf3+0x24>
    29da:	26 f4       	brtc	.+8      	; 0x29e4 <__addsf3+0x28>
    29dc:	0c 94 ec 15 	jmp	0x2bd8	; 0x2bd8 <__fp_nan>
    29e0:	0e f4       	brtc	.+2      	; 0x29e4 <__addsf3+0x28>
    29e2:	e0 95       	com	r30
    29e4:	e7 fb       	bst	r30, 7
    29e6:	0c 94 e6 15 	jmp	0x2bcc	; 0x2bcc <__fp_inf>

000029ea <__addsf3x>:
    29ea:	e9 2f       	mov	r30, r25
    29ec:	0e 94 0e 16 	call	0x2c1c	; 0x2c1c <__fp_split3>
    29f0:	58 f3       	brcs	.-42     	; 0x29c8 <__addsf3+0xc>
    29f2:	ba 17       	cp	r27, r26
    29f4:	62 07       	cpc	r22, r18
    29f6:	73 07       	cpc	r23, r19
    29f8:	84 07       	cpc	r24, r20
    29fa:	95 07       	cpc	r25, r21
    29fc:	20 f0       	brcs	.+8      	; 0x2a06 <__addsf3x+0x1c>
    29fe:	79 f4       	brne	.+30     	; 0x2a1e <__addsf3x+0x34>
    2a00:	a6 f5       	brtc	.+104    	; 0x2a6a <__addsf3x+0x80>
    2a02:	0c 94 30 16 	jmp	0x2c60	; 0x2c60 <__fp_zero>
    2a06:	0e f4       	brtc	.+2      	; 0x2a0a <__addsf3x+0x20>
    2a08:	e0 95       	com	r30
    2a0a:	0b 2e       	mov	r0, r27
    2a0c:	ba 2f       	mov	r27, r26
    2a0e:	a0 2d       	mov	r26, r0
    2a10:	0b 01       	movw	r0, r22
    2a12:	b9 01       	movw	r22, r18
    2a14:	90 01       	movw	r18, r0
    2a16:	0c 01       	movw	r0, r24
    2a18:	ca 01       	movw	r24, r20
    2a1a:	a0 01       	movw	r20, r0
    2a1c:	11 24       	eor	r1, r1
    2a1e:	ff 27       	eor	r31, r31
    2a20:	59 1b       	sub	r21, r25
    2a22:	99 f0       	breq	.+38     	; 0x2a4a <__addsf3x+0x60>
    2a24:	59 3f       	cpi	r21, 0xF9	; 249
    2a26:	50 f4       	brcc	.+20     	; 0x2a3c <__addsf3x+0x52>
    2a28:	50 3e       	cpi	r21, 0xE0	; 224
    2a2a:	68 f1       	brcs	.+90     	; 0x2a86 <__addsf3x+0x9c>
    2a2c:	1a 16       	cp	r1, r26
    2a2e:	f0 40       	sbci	r31, 0x00	; 0
    2a30:	a2 2f       	mov	r26, r18
    2a32:	23 2f       	mov	r18, r19
    2a34:	34 2f       	mov	r19, r20
    2a36:	44 27       	eor	r20, r20
    2a38:	58 5f       	subi	r21, 0xF8	; 248
    2a3a:	f3 cf       	rjmp	.-26     	; 0x2a22 <__addsf3x+0x38>
    2a3c:	46 95       	lsr	r20
    2a3e:	37 95       	ror	r19
    2a40:	27 95       	ror	r18
    2a42:	a7 95       	ror	r26
    2a44:	f0 40       	sbci	r31, 0x00	; 0
    2a46:	53 95       	inc	r21
    2a48:	c9 f7       	brne	.-14     	; 0x2a3c <__addsf3x+0x52>
    2a4a:	7e f4       	brtc	.+30     	; 0x2a6a <__addsf3x+0x80>
    2a4c:	1f 16       	cp	r1, r31
    2a4e:	ba 0b       	sbc	r27, r26
    2a50:	62 0b       	sbc	r22, r18
    2a52:	73 0b       	sbc	r23, r19
    2a54:	84 0b       	sbc	r24, r20
    2a56:	ba f0       	brmi	.+46     	; 0x2a86 <__addsf3x+0x9c>
    2a58:	91 50       	subi	r25, 0x01	; 1
    2a5a:	a1 f0       	breq	.+40     	; 0x2a84 <__addsf3x+0x9a>
    2a5c:	ff 0f       	add	r31, r31
    2a5e:	bb 1f       	adc	r27, r27
    2a60:	66 1f       	adc	r22, r22
    2a62:	77 1f       	adc	r23, r23
    2a64:	88 1f       	adc	r24, r24
    2a66:	c2 f7       	brpl	.-16     	; 0x2a58 <__addsf3x+0x6e>
    2a68:	0e c0       	rjmp	.+28     	; 0x2a86 <__addsf3x+0x9c>
    2a6a:	ba 0f       	add	r27, r26
    2a6c:	62 1f       	adc	r22, r18
    2a6e:	73 1f       	adc	r23, r19
    2a70:	84 1f       	adc	r24, r20
    2a72:	48 f4       	brcc	.+18     	; 0x2a86 <__addsf3x+0x9c>
    2a74:	87 95       	ror	r24
    2a76:	77 95       	ror	r23
    2a78:	67 95       	ror	r22
    2a7a:	b7 95       	ror	r27
    2a7c:	f7 95       	ror	r31
    2a7e:	9e 3f       	cpi	r25, 0xFE	; 254
    2a80:	08 f0       	brcs	.+2      	; 0x2a84 <__addsf3x+0x9a>
    2a82:	b0 cf       	rjmp	.-160    	; 0x29e4 <__addsf3+0x28>
    2a84:	93 95       	inc	r25
    2a86:	88 0f       	add	r24, r24
    2a88:	08 f0       	brcs	.+2      	; 0x2a8c <__addsf3x+0xa2>
    2a8a:	99 27       	eor	r25, r25
    2a8c:	ee 0f       	add	r30, r30
    2a8e:	97 95       	ror	r25
    2a90:	87 95       	ror	r24
    2a92:	08 95       	ret

00002a94 <__cmpsf2>:
    2a94:	0e 94 c2 15 	call	0x2b84	; 0x2b84 <__fp_cmp>
    2a98:	08 f4       	brcc	.+2      	; 0x2a9c <__cmpsf2+0x8>
    2a9a:	81 e0       	ldi	r24, 0x01	; 1
    2a9c:	08 95       	ret

00002a9e <__fixsfsi>:
    2a9e:	0e 94 56 15 	call	0x2aac	; 0x2aac <__fixunssfsi>
    2aa2:	68 94       	set
    2aa4:	b1 11       	cpse	r27, r1
    2aa6:	0c 94 31 16 	jmp	0x2c62	; 0x2c62 <__fp_szero>
    2aaa:	08 95       	ret

00002aac <__fixunssfsi>:
    2aac:	0e 94 16 16 	call	0x2c2c	; 0x2c2c <__fp_splitA>
    2ab0:	88 f0       	brcs	.+34     	; 0x2ad4 <__fixunssfsi+0x28>
    2ab2:	9f 57       	subi	r25, 0x7F	; 127
    2ab4:	98 f0       	brcs	.+38     	; 0x2adc <__fixunssfsi+0x30>
    2ab6:	b9 2f       	mov	r27, r25
    2ab8:	99 27       	eor	r25, r25
    2aba:	b7 51       	subi	r27, 0x17	; 23
    2abc:	b0 f0       	brcs	.+44     	; 0x2aea <__fixunssfsi+0x3e>
    2abe:	e1 f0       	breq	.+56     	; 0x2af8 <__fixunssfsi+0x4c>
    2ac0:	66 0f       	add	r22, r22
    2ac2:	77 1f       	adc	r23, r23
    2ac4:	88 1f       	adc	r24, r24
    2ac6:	99 1f       	adc	r25, r25
    2ac8:	1a f0       	brmi	.+6      	; 0x2ad0 <__fixunssfsi+0x24>
    2aca:	ba 95       	dec	r27
    2acc:	c9 f7       	brne	.-14     	; 0x2ac0 <__fixunssfsi+0x14>
    2ace:	14 c0       	rjmp	.+40     	; 0x2af8 <__fixunssfsi+0x4c>
    2ad0:	b1 30       	cpi	r27, 0x01	; 1
    2ad2:	91 f0       	breq	.+36     	; 0x2af8 <__fixunssfsi+0x4c>
    2ad4:	0e 94 30 16 	call	0x2c60	; 0x2c60 <__fp_zero>
    2ad8:	b1 e0       	ldi	r27, 0x01	; 1
    2ada:	08 95       	ret
    2adc:	0c 94 30 16 	jmp	0x2c60	; 0x2c60 <__fp_zero>
    2ae0:	67 2f       	mov	r22, r23
    2ae2:	78 2f       	mov	r23, r24
    2ae4:	88 27       	eor	r24, r24
    2ae6:	b8 5f       	subi	r27, 0xF8	; 248
    2ae8:	39 f0       	breq	.+14     	; 0x2af8 <__fixunssfsi+0x4c>
    2aea:	b9 3f       	cpi	r27, 0xF9	; 249
    2aec:	cc f3       	brlt	.-14     	; 0x2ae0 <__fixunssfsi+0x34>
    2aee:	86 95       	lsr	r24
    2af0:	77 95       	ror	r23
    2af2:	67 95       	ror	r22
    2af4:	b3 95       	inc	r27
    2af6:	d9 f7       	brne	.-10     	; 0x2aee <__fixunssfsi+0x42>
    2af8:	3e f4       	brtc	.+14     	; 0x2b08 <__fixunssfsi+0x5c>
    2afa:	90 95       	com	r25
    2afc:	80 95       	com	r24
    2afe:	70 95       	com	r23
    2b00:	61 95       	neg	r22
    2b02:	7f 4f       	sbci	r23, 0xFF	; 255
    2b04:	8f 4f       	sbci	r24, 0xFF	; 255
    2b06:	9f 4f       	sbci	r25, 0xFF	; 255
    2b08:	08 95       	ret

00002b0a <__floatunsisf>:
    2b0a:	e8 94       	clt
    2b0c:	09 c0       	rjmp	.+18     	; 0x2b20 <__floatsisf+0x12>

00002b0e <__floatsisf>:
    2b0e:	97 fb       	bst	r25, 7
    2b10:	3e f4       	brtc	.+14     	; 0x2b20 <__floatsisf+0x12>
    2b12:	90 95       	com	r25
    2b14:	80 95       	com	r24
    2b16:	70 95       	com	r23
    2b18:	61 95       	neg	r22
    2b1a:	7f 4f       	sbci	r23, 0xFF	; 255
    2b1c:	8f 4f       	sbci	r24, 0xFF	; 255
    2b1e:	9f 4f       	sbci	r25, 0xFF	; 255
    2b20:	99 23       	and	r25, r25
    2b22:	a9 f0       	breq	.+42     	; 0x2b4e <__floatsisf+0x40>
    2b24:	f9 2f       	mov	r31, r25
    2b26:	96 e9       	ldi	r25, 0x96	; 150
    2b28:	bb 27       	eor	r27, r27
    2b2a:	93 95       	inc	r25
    2b2c:	f6 95       	lsr	r31
    2b2e:	87 95       	ror	r24
    2b30:	77 95       	ror	r23
    2b32:	67 95       	ror	r22
    2b34:	b7 95       	ror	r27
    2b36:	f1 11       	cpse	r31, r1
    2b38:	f8 cf       	rjmp	.-16     	; 0x2b2a <__floatsisf+0x1c>
    2b3a:	fa f4       	brpl	.+62     	; 0x2b7a <__floatsisf+0x6c>
    2b3c:	bb 0f       	add	r27, r27
    2b3e:	11 f4       	brne	.+4      	; 0x2b44 <__floatsisf+0x36>
    2b40:	60 ff       	sbrs	r22, 0
    2b42:	1b c0       	rjmp	.+54     	; 0x2b7a <__floatsisf+0x6c>
    2b44:	6f 5f       	subi	r22, 0xFF	; 255
    2b46:	7f 4f       	sbci	r23, 0xFF	; 255
    2b48:	8f 4f       	sbci	r24, 0xFF	; 255
    2b4a:	9f 4f       	sbci	r25, 0xFF	; 255
    2b4c:	16 c0       	rjmp	.+44     	; 0x2b7a <__floatsisf+0x6c>
    2b4e:	88 23       	and	r24, r24
    2b50:	11 f0       	breq	.+4      	; 0x2b56 <__floatsisf+0x48>
    2b52:	96 e9       	ldi	r25, 0x96	; 150
    2b54:	11 c0       	rjmp	.+34     	; 0x2b78 <__floatsisf+0x6a>
    2b56:	77 23       	and	r23, r23
    2b58:	21 f0       	breq	.+8      	; 0x2b62 <__floatsisf+0x54>
    2b5a:	9e e8       	ldi	r25, 0x8E	; 142
    2b5c:	87 2f       	mov	r24, r23
    2b5e:	76 2f       	mov	r23, r22
    2b60:	05 c0       	rjmp	.+10     	; 0x2b6c <__floatsisf+0x5e>
    2b62:	66 23       	and	r22, r22
    2b64:	71 f0       	breq	.+28     	; 0x2b82 <__floatsisf+0x74>
    2b66:	96 e8       	ldi	r25, 0x86	; 134
    2b68:	86 2f       	mov	r24, r22
    2b6a:	70 e0       	ldi	r23, 0x00	; 0
    2b6c:	60 e0       	ldi	r22, 0x00	; 0
    2b6e:	2a f0       	brmi	.+10     	; 0x2b7a <__floatsisf+0x6c>
    2b70:	9a 95       	dec	r25
    2b72:	66 0f       	add	r22, r22
    2b74:	77 1f       	adc	r23, r23
    2b76:	88 1f       	adc	r24, r24
    2b78:	da f7       	brpl	.-10     	; 0x2b70 <__floatsisf+0x62>
    2b7a:	88 0f       	add	r24, r24
    2b7c:	96 95       	lsr	r25
    2b7e:	87 95       	ror	r24
    2b80:	97 f9       	bld	r25, 7
    2b82:	08 95       	ret

00002b84 <__fp_cmp>:
    2b84:	99 0f       	add	r25, r25
    2b86:	00 08       	sbc	r0, r0
    2b88:	55 0f       	add	r21, r21
    2b8a:	aa 0b       	sbc	r26, r26
    2b8c:	e0 e8       	ldi	r30, 0x80	; 128
    2b8e:	fe ef       	ldi	r31, 0xFE	; 254
    2b90:	16 16       	cp	r1, r22
    2b92:	17 06       	cpc	r1, r23
    2b94:	e8 07       	cpc	r30, r24
    2b96:	f9 07       	cpc	r31, r25
    2b98:	c0 f0       	brcs	.+48     	; 0x2bca <__fp_cmp+0x46>
    2b9a:	12 16       	cp	r1, r18
    2b9c:	13 06       	cpc	r1, r19
    2b9e:	e4 07       	cpc	r30, r20
    2ba0:	f5 07       	cpc	r31, r21
    2ba2:	98 f0       	brcs	.+38     	; 0x2bca <__fp_cmp+0x46>
    2ba4:	62 1b       	sub	r22, r18
    2ba6:	73 0b       	sbc	r23, r19
    2ba8:	84 0b       	sbc	r24, r20
    2baa:	95 0b       	sbc	r25, r21
    2bac:	39 f4       	brne	.+14     	; 0x2bbc <__fp_cmp+0x38>
    2bae:	0a 26       	eor	r0, r26
    2bb0:	61 f0       	breq	.+24     	; 0x2bca <__fp_cmp+0x46>
    2bb2:	23 2b       	or	r18, r19
    2bb4:	24 2b       	or	r18, r20
    2bb6:	25 2b       	or	r18, r21
    2bb8:	21 f4       	brne	.+8      	; 0x2bc2 <__fp_cmp+0x3e>
    2bba:	08 95       	ret
    2bbc:	0a 26       	eor	r0, r26
    2bbe:	09 f4       	brne	.+2      	; 0x2bc2 <__fp_cmp+0x3e>
    2bc0:	a1 40       	sbci	r26, 0x01	; 1
    2bc2:	a6 95       	lsr	r26
    2bc4:	8f ef       	ldi	r24, 0xFF	; 255
    2bc6:	81 1d       	adc	r24, r1
    2bc8:	81 1d       	adc	r24, r1
    2bca:	08 95       	ret

00002bcc <__fp_inf>:
    2bcc:	97 f9       	bld	r25, 7
    2bce:	9f 67       	ori	r25, 0x7F	; 127
    2bd0:	80 e8       	ldi	r24, 0x80	; 128
    2bd2:	70 e0       	ldi	r23, 0x00	; 0
    2bd4:	60 e0       	ldi	r22, 0x00	; 0
    2bd6:	08 95       	ret

00002bd8 <__fp_nan>:
    2bd8:	9f ef       	ldi	r25, 0xFF	; 255
    2bda:	80 ec       	ldi	r24, 0xC0	; 192
    2bdc:	08 95       	ret

00002bde <__fp_pscA>:
    2bde:	00 24       	eor	r0, r0
    2be0:	0a 94       	dec	r0
    2be2:	16 16       	cp	r1, r22
    2be4:	17 06       	cpc	r1, r23
    2be6:	18 06       	cpc	r1, r24
    2be8:	09 06       	cpc	r0, r25
    2bea:	08 95       	ret

00002bec <__fp_pscB>:
    2bec:	00 24       	eor	r0, r0
    2bee:	0a 94       	dec	r0
    2bf0:	12 16       	cp	r1, r18
    2bf2:	13 06       	cpc	r1, r19
    2bf4:	14 06       	cpc	r1, r20
    2bf6:	05 06       	cpc	r0, r21
    2bf8:	08 95       	ret

00002bfa <__fp_round>:
    2bfa:	09 2e       	mov	r0, r25
    2bfc:	03 94       	inc	r0
    2bfe:	00 0c       	add	r0, r0
    2c00:	11 f4       	brne	.+4      	; 0x2c06 <__fp_round+0xc>
    2c02:	88 23       	and	r24, r24
    2c04:	52 f0       	brmi	.+20     	; 0x2c1a <__fp_round+0x20>
    2c06:	bb 0f       	add	r27, r27
    2c08:	40 f4       	brcc	.+16     	; 0x2c1a <__fp_round+0x20>
    2c0a:	bf 2b       	or	r27, r31
    2c0c:	11 f4       	brne	.+4      	; 0x2c12 <__fp_round+0x18>
    2c0e:	60 ff       	sbrs	r22, 0
    2c10:	04 c0       	rjmp	.+8      	; 0x2c1a <__fp_round+0x20>
    2c12:	6f 5f       	subi	r22, 0xFF	; 255
    2c14:	7f 4f       	sbci	r23, 0xFF	; 255
    2c16:	8f 4f       	sbci	r24, 0xFF	; 255
    2c18:	9f 4f       	sbci	r25, 0xFF	; 255
    2c1a:	08 95       	ret

00002c1c <__fp_split3>:
    2c1c:	57 fd       	sbrc	r21, 7
    2c1e:	90 58       	subi	r25, 0x80	; 128
    2c20:	44 0f       	add	r20, r20
    2c22:	55 1f       	adc	r21, r21
    2c24:	59 f0       	breq	.+22     	; 0x2c3c <__fp_splitA+0x10>
    2c26:	5f 3f       	cpi	r21, 0xFF	; 255
    2c28:	71 f0       	breq	.+28     	; 0x2c46 <__fp_splitA+0x1a>
    2c2a:	47 95       	ror	r20

00002c2c <__fp_splitA>:
    2c2c:	88 0f       	add	r24, r24
    2c2e:	97 fb       	bst	r25, 7
    2c30:	99 1f       	adc	r25, r25
    2c32:	61 f0       	breq	.+24     	; 0x2c4c <__fp_splitA+0x20>
    2c34:	9f 3f       	cpi	r25, 0xFF	; 255
    2c36:	79 f0       	breq	.+30     	; 0x2c56 <__fp_splitA+0x2a>
    2c38:	87 95       	ror	r24
    2c3a:	08 95       	ret
    2c3c:	12 16       	cp	r1, r18
    2c3e:	13 06       	cpc	r1, r19
    2c40:	14 06       	cpc	r1, r20
    2c42:	55 1f       	adc	r21, r21
    2c44:	f2 cf       	rjmp	.-28     	; 0x2c2a <__fp_split3+0xe>
    2c46:	46 95       	lsr	r20
    2c48:	f1 df       	rcall	.-30     	; 0x2c2c <__fp_splitA>
    2c4a:	08 c0       	rjmp	.+16     	; 0x2c5c <__fp_splitA+0x30>
    2c4c:	16 16       	cp	r1, r22
    2c4e:	17 06       	cpc	r1, r23
    2c50:	18 06       	cpc	r1, r24
    2c52:	99 1f       	adc	r25, r25
    2c54:	f1 cf       	rjmp	.-30     	; 0x2c38 <__fp_splitA+0xc>
    2c56:	86 95       	lsr	r24
    2c58:	71 05       	cpc	r23, r1
    2c5a:	61 05       	cpc	r22, r1
    2c5c:	08 94       	sec
    2c5e:	08 95       	ret

00002c60 <__fp_zero>:
    2c60:	e8 94       	clt

00002c62 <__fp_szero>:
    2c62:	bb 27       	eor	r27, r27
    2c64:	66 27       	eor	r22, r22
    2c66:	77 27       	eor	r23, r23
    2c68:	cb 01       	movw	r24, r22
    2c6a:	97 f9       	bld	r25, 7
    2c6c:	08 95       	ret

00002c6e <__mulsf3>:
    2c6e:	0e 94 4a 16 	call	0x2c94	; 0x2c94 <__mulsf3x>
    2c72:	0c 94 fd 15 	jmp	0x2bfa	; 0x2bfa <__fp_round>
    2c76:	0e 94 ef 15 	call	0x2bde	; 0x2bde <__fp_pscA>
    2c7a:	38 f0       	brcs	.+14     	; 0x2c8a <__mulsf3+0x1c>
    2c7c:	0e 94 f6 15 	call	0x2bec	; 0x2bec <__fp_pscB>
    2c80:	20 f0       	brcs	.+8      	; 0x2c8a <__mulsf3+0x1c>
    2c82:	95 23       	and	r25, r21
    2c84:	11 f0       	breq	.+4      	; 0x2c8a <__mulsf3+0x1c>
    2c86:	0c 94 e6 15 	jmp	0x2bcc	; 0x2bcc <__fp_inf>
    2c8a:	0c 94 ec 15 	jmp	0x2bd8	; 0x2bd8 <__fp_nan>
    2c8e:	11 24       	eor	r1, r1
    2c90:	0c 94 31 16 	jmp	0x2c62	; 0x2c62 <__fp_szero>

00002c94 <__mulsf3x>:
    2c94:	0e 94 0e 16 	call	0x2c1c	; 0x2c1c <__fp_split3>
    2c98:	70 f3       	brcs	.-36     	; 0x2c76 <__mulsf3+0x8>

00002c9a <__mulsf3_pse>:
    2c9a:	95 9f       	mul	r25, r21
    2c9c:	c1 f3       	breq	.-16     	; 0x2c8e <__mulsf3+0x20>
    2c9e:	95 0f       	add	r25, r21
    2ca0:	50 e0       	ldi	r21, 0x00	; 0
    2ca2:	55 1f       	adc	r21, r21
    2ca4:	62 9f       	mul	r22, r18
    2ca6:	f0 01       	movw	r30, r0
    2ca8:	72 9f       	mul	r23, r18
    2caa:	bb 27       	eor	r27, r27
    2cac:	f0 0d       	add	r31, r0
    2cae:	b1 1d       	adc	r27, r1
    2cb0:	63 9f       	mul	r22, r19
    2cb2:	aa 27       	eor	r26, r26
    2cb4:	f0 0d       	add	r31, r0
    2cb6:	b1 1d       	adc	r27, r1
    2cb8:	aa 1f       	adc	r26, r26
    2cba:	64 9f       	mul	r22, r20
    2cbc:	66 27       	eor	r22, r22
    2cbe:	b0 0d       	add	r27, r0
    2cc0:	a1 1d       	adc	r26, r1
    2cc2:	66 1f       	adc	r22, r22
    2cc4:	82 9f       	mul	r24, r18
    2cc6:	22 27       	eor	r18, r18
    2cc8:	b0 0d       	add	r27, r0
    2cca:	a1 1d       	adc	r26, r1
    2ccc:	62 1f       	adc	r22, r18
    2cce:	73 9f       	mul	r23, r19
    2cd0:	b0 0d       	add	r27, r0
    2cd2:	a1 1d       	adc	r26, r1
    2cd4:	62 1f       	adc	r22, r18
    2cd6:	83 9f       	mul	r24, r19
    2cd8:	a0 0d       	add	r26, r0
    2cda:	61 1d       	adc	r22, r1
    2cdc:	22 1f       	adc	r18, r18
    2cde:	74 9f       	mul	r23, r20
    2ce0:	33 27       	eor	r19, r19
    2ce2:	a0 0d       	add	r26, r0
    2ce4:	61 1d       	adc	r22, r1
    2ce6:	23 1f       	adc	r18, r19
    2ce8:	84 9f       	mul	r24, r20
    2cea:	60 0d       	add	r22, r0
    2cec:	21 1d       	adc	r18, r1
    2cee:	82 2f       	mov	r24, r18
    2cf0:	76 2f       	mov	r23, r22
    2cf2:	6a 2f       	mov	r22, r26
    2cf4:	11 24       	eor	r1, r1
    2cf6:	9f 57       	subi	r25, 0x7F	; 127
    2cf8:	50 40       	sbci	r21, 0x00	; 0
    2cfa:	9a f0       	brmi	.+38     	; 0x2d22 <__mulsf3_pse+0x88>
    2cfc:	f1 f0       	breq	.+60     	; 0x2d3a <__mulsf3_pse+0xa0>
    2cfe:	88 23       	and	r24, r24
    2d00:	4a f0       	brmi	.+18     	; 0x2d14 <__mulsf3_pse+0x7a>
    2d02:	ee 0f       	add	r30, r30
    2d04:	ff 1f       	adc	r31, r31
    2d06:	bb 1f       	adc	r27, r27
    2d08:	66 1f       	adc	r22, r22
    2d0a:	77 1f       	adc	r23, r23
    2d0c:	88 1f       	adc	r24, r24
    2d0e:	91 50       	subi	r25, 0x01	; 1
    2d10:	50 40       	sbci	r21, 0x00	; 0
    2d12:	a9 f7       	brne	.-22     	; 0x2cfe <__mulsf3_pse+0x64>
    2d14:	9e 3f       	cpi	r25, 0xFE	; 254
    2d16:	51 05       	cpc	r21, r1
    2d18:	80 f0       	brcs	.+32     	; 0x2d3a <__mulsf3_pse+0xa0>
    2d1a:	0c 94 e6 15 	jmp	0x2bcc	; 0x2bcc <__fp_inf>
    2d1e:	0c 94 31 16 	jmp	0x2c62	; 0x2c62 <__fp_szero>
    2d22:	5f 3f       	cpi	r21, 0xFF	; 255
    2d24:	e4 f3       	brlt	.-8      	; 0x2d1e <__mulsf3_pse+0x84>
    2d26:	98 3e       	cpi	r25, 0xE8	; 232
    2d28:	d4 f3       	brlt	.-12     	; 0x2d1e <__mulsf3_pse+0x84>
    2d2a:	86 95       	lsr	r24
    2d2c:	77 95       	ror	r23
    2d2e:	67 95       	ror	r22
    2d30:	b7 95       	ror	r27
    2d32:	f7 95       	ror	r31
    2d34:	e7 95       	ror	r30
    2d36:	9f 5f       	subi	r25, 0xFF	; 255
    2d38:	c1 f7       	brne	.-16     	; 0x2d2a <__mulsf3_pse+0x90>
    2d3a:	fe 2b       	or	r31, r30
    2d3c:	88 0f       	add	r24, r24
    2d3e:	91 1d       	adc	r25, r1
    2d40:	96 95       	lsr	r25
    2d42:	87 95       	ror	r24
    2d44:	97 f9       	bld	r25, 7
    2d46:	08 95       	ret

00002d48 <__do_global_dtors>:
    2d48:	10 e0       	ldi	r17, 0x00	; 0
    2d4a:	ce e2       	ldi	r28, 0x2E	; 46
    2d4c:	d0 e0       	ldi	r29, 0x00	; 0
    2d4e:	04 c0       	rjmp	.+8      	; 0x2d58 <__do_global_dtors+0x10>
    2d50:	fe 01       	movw	r30, r28
    2d52:	0e 94 d7 14 	call	0x29ae	; 0x29ae <__tablejump2__>
    2d56:	21 96       	adiw	r28, 0x01	; 1
    2d58:	cf 32       	cpi	r28, 0x2F	; 47
    2d5a:	d1 07       	cpc	r29, r17
    2d5c:	c9 f7       	brne	.-14     	; 0x2d50 <__do_global_dtors+0x8>
    2d5e:	f8 94       	cli

00002d60 <__stop_program>:
    2d60:	ff cf       	rjmp	.-2      	; 0x2d60 <__stop_program>
