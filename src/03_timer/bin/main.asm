
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
  4c:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	1b 03       	fmul	r17, r19
  56:	8c 03       	fmulsu	r16, r20
  58:	90 03       	fmuls	r17, r16

0000005a <__ctors_end>:
  5a:	94 03       	fmuls	r17, r20

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
  6e:	e4 eb       	ldi	r30, 0xB4	; 180
  70:	f9 e0       	ldi	r31, 0x09	; 9
  72:	02 c0       	rjmp	.+4      	; 0x78 <__do_copy_data+0x10>
  74:	05 90       	lpm	r0, Z+
  76:	0d 92       	st	X+, r0
  78:	a8 38       	cpi	r26, 0x88	; 136
  7a:	b1 07       	cpc	r27, r17
  7c:	d9 f7       	brne	.-10     	; 0x74 <__do_copy_data+0xc>

0000007e <__do_clear_bss>:
  7e:	20 e0       	ldi	r18, 0x00	; 0
  80:	a8 e8       	ldi	r26, 0x88	; 136
  82:	b0 e0       	ldi	r27, 0x00	; 0
  84:	01 c0       	rjmp	.+2      	; 0x88 <.do_clear_bss_start>

00000086 <.do_clear_bss_loop>:
  86:	1d 92       	st	X+, r1

00000088 <.do_clear_bss_start>:
  88:	aa 3c       	cpi	r26, 0xCA	; 202
  8a:	b2 07       	cpc	r27, r18
  8c:	e1 f7       	brne	.-8      	; 0x86 <.do_clear_bss_loop>

0000008e <__do_global_ctors>:
  8e:	10 e0       	ldi	r17, 0x00	; 0
  90:	cd e2       	ldi	r28, 0x2D	; 45
  92:	d0 e0       	ldi	r29, 0x00	; 0
  94:	04 c0       	rjmp	.+8      	; 0x9e <__do_global_ctors+0x10>
  96:	21 97       	sbiw	r28, 0x01	; 1
  98:	fe 01       	movw	r30, r28
  9a:	0e 94 9a 03 	call	0x734	; 0x734 <__tablejump2__>
  9e:	ca 32       	cpi	r28, 0x2A	; 42
  a0:	d1 07       	cpc	r29, r17
  a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
  a4:	0e 94 6d 00 	call	0xda	; 0xda <main>
  a8:	0c 94 cd 04 	jmp	0x99a	; 0x99a <__do_global_dtors>

000000ac <__bad_interrupt>:
  ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN6CTaskAD1Ev>:
  b0:	08 95       	ret

000000b2 <_ZN6CTaskAD0Ev>:
  b2:	0c 94 98 03 	jmp	0x730	; 0x730 <_ZdlPv>

000000b6 <_ZN6CTaskAclEv>:
  b6:	fc 01       	movw	r30, r24
  b8:	83 81       	ldd	r24, Z+3	; 0x03
  ba:	94 81       	ldd	r25, Z+4	; 0x04
  bc:	00 97       	sbiw	r24, 0x00	; 0
  be:	19 f0       	breq	.+6      	; 0xc6 <_ZN6CTaskAclEv+0x10>
  c0:	01 97       	sbiw	r24, 0x01	; 1
  c2:	39 f0       	breq	.+14     	; 0xd2 <_ZN6CTaskAclEv+0x1c>
  c4:	08 95       	ret
  c6:	dd 9a       	sbi	0x1b, 5	; 27
  c8:	81 e0       	ldi	r24, 0x01	; 1
  ca:	90 e0       	ldi	r25, 0x00	; 0
  cc:	94 83       	std	Z+4, r25	; 0x04
  ce:	83 83       	std	Z+3, r24	; 0x03
  d0:	08 95       	ret
  d2:	dd 98       	cbi	0x1b, 5	; 27
  d4:	14 82       	std	Z+4, r1	; 0x04
  d6:	13 82       	std	Z+3, r1	; 0x03
  d8:	08 95       	ret

000000da <main>:
  da:	cf 93       	push	r28
  dc:	df 93       	push	r29
  de:	cd b7       	in	r28, 0x3d	; 61
  e0:	de b7       	in	r29, 0x3e	; 62
  e2:	2a 97       	sbiw	r28, 0x0a	; 10
  e4:	0f b6       	in	r0, 0x3f	; 63
  e6:	f8 94       	cli
  e8:	de bf       	out	0x3e, r29	; 62
  ea:	0f be       	out	0x3f, r0	; 63
  ec:	cd bf       	out	0x3d, r28	; 61
  ee:	8a e6       	ldi	r24, 0x6A	; 106
  f0:	90 e0       	ldi	r25, 0x00	; 0
  f2:	9f 83       	std	Y+7, r25	; 0x07
  f4:	8e 83       	std	Y+6, r24	; 0x06
  f6:	d5 9a       	sbi	0x1a, 5	; 26
  f8:	1a 86       	std	Y+10, r1	; 0x0a
  fa:	19 86       	std	Y+9, r1	; 0x09
  fc:	9a 83       	std	Y+2, r25	; 0x02
  fe:	89 83       	std	Y+1, r24	; 0x01
 100:	d5 9a       	sbi	0x1a, 5	; 26
 102:	1d 82       	std	Y+5, r1	; 0x05
 104:	1c 82       	std	Y+4, r1	; 0x04
 106:	44 e6       	ldi	r20, 0x64	; 100
 108:	50 e0       	ldi	r21, 0x00	; 0
 10a:	be 01       	movw	r22, r28
 10c:	6a 5f       	subi	r22, 0xFA	; 250
 10e:	7f 4f       	sbci	r23, 0xFF	; 255
 110:	8c e8       	ldi	r24, 0x8C	; 140
 112:	90 e0       	ldi	r25, 0x00	; 0
 114:	0e 94 4d 03 	call	0x69a	; 0x69a <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
 118:	44 ef       	ldi	r20, 0xF4	; 244
 11a:	51 e0       	ldi	r21, 0x01	; 1
 11c:	be 01       	movw	r22, r28
 11e:	6f 5f       	subi	r22, 0xFF	; 255
 120:	7f 4f       	sbci	r23, 0xFF	; 255
 122:	8c e8       	ldi	r24, 0x8C	; 140
 124:	90 e0       	ldi	r25, 0x00	; 0
 126:	0e 94 4d 03 	call	0x69a	; 0x69a <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>
 12a:	8c e8       	ldi	r24, 0x8C	; 140
 12c:	90 e0       	ldi	r25, 0x00	; 0
 12e:	0e 94 6f 03 	call	0x6de	; 0x6de <_ZN8CRTTimer4mainEv>
 132:	fb cf       	rjmp	.-10     	; 0x12a <main+0x50>

00000134 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh>:
 134:	0f 93       	push	r16
 136:	1f 93       	push	r17
 138:	cf 93       	push	r28
 13a:	df 93       	push	r29
 13c:	00 d0       	rcall	.+0      	; 0x13e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE9write_regEhhh+0xa>
 13e:	1f 92       	push	r1
 140:	cd b7       	in	r28, 0x3d	; 61
 142:	de b7       	in	r29, 0x3e	; 62
 144:	8c 01       	movw	r16, r24
 146:	dc 01       	movw	r26, r24
 148:	ed 91       	ld	r30, X+
 14a:	fc 91       	ld	r31, X
 14c:	01 90       	ld	r0, Z+
 14e:	f0 81       	ld	r31, Z
 150:	e0 2d       	mov	r30, r0
 152:	2b 83       	std	Y+3, r18	; 0x03
 154:	4a 83       	std	Y+2, r20	; 0x02
 156:	69 83       	std	Y+1, r22	; 0x01
 158:	09 95       	icall
 15a:	d8 01       	movw	r26, r16
 15c:	ed 91       	ld	r30, X+
 15e:	fc 91       	ld	r31, X
 160:	04 80       	ldd	r0, Z+4	; 0x04
 162:	f5 81       	ldd	r31, Z+5	; 0x05
 164:	e0 2d       	mov	r30, r0
 166:	69 81       	ldd	r22, Y+1	; 0x01
 168:	c8 01       	movw	r24, r16
 16a:	09 95       	icall
 16c:	d8 01       	movw	r26, r16
 16e:	ed 91       	ld	r30, X+
 170:	fc 91       	ld	r31, X
 172:	04 80       	ldd	r0, Z+4	; 0x04
 174:	f5 81       	ldd	r31, Z+5	; 0x05
 176:	e0 2d       	mov	r30, r0
 178:	4a 81       	ldd	r20, Y+2	; 0x02
 17a:	64 2f       	mov	r22, r20
 17c:	c8 01       	movw	r24, r16
 17e:	09 95       	icall
 180:	d8 01       	movw	r26, r16
 182:	ed 91       	ld	r30, X+
 184:	fc 91       	ld	r31, X
 186:	04 80       	ldd	r0, Z+4	; 0x04
 188:	f5 81       	ldd	r31, Z+5	; 0x05
 18a:	e0 2d       	mov	r30, r0
 18c:	2b 81       	ldd	r18, Y+3	; 0x03
 18e:	62 2f       	mov	r22, r18
 190:	c8 01       	movw	r24, r16
 192:	09 95       	icall
 194:	d8 01       	movw	r26, r16
 196:	ed 91       	ld	r30, X+
 198:	fc 91       	ld	r31, X
 19a:	02 80       	ldd	r0, Z+2	; 0x02
 19c:	f3 81       	ldd	r31, Z+3	; 0x03
 19e:	e0 2d       	mov	r30, r0
 1a0:	c8 01       	movw	r24, r16
 1a2:	0f 90       	pop	r0
 1a4:	0f 90       	pop	r0
 1a6:	0f 90       	pop	r0
 1a8:	df 91       	pop	r29
 1aa:	cf 91       	pop	r28
 1ac:	1f 91       	pop	r17
 1ae:	0f 91       	pop	r16
 1b0:	09 94       	ijmp

000001b2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj>:
 1b2:	0f 93       	push	r16
 1b4:	1f 93       	push	r17
 1b6:	cf 93       	push	r28
 1b8:	df 93       	push	r29
 1ba:	00 d0       	rcall	.+0      	; 0x1bc <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xa>
 1bc:	00 d0       	rcall	.+0      	; 0x1be <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_16bitEhhj+0xc>
 1be:	cd b7       	in	r28, 0x3d	; 61
 1c0:	de b7       	in	r29, 0x3e	; 62
 1c2:	8c 01       	movw	r16, r24
 1c4:	dc 01       	movw	r26, r24
 1c6:	ed 91       	ld	r30, X+
 1c8:	fc 91       	ld	r31, X
 1ca:	01 90       	ld	r0, Z+
 1cc:	f0 81       	ld	r31, Z
 1ce:	e0 2d       	mov	r30, r0
 1d0:	2c 83       	std	Y+4, r18	; 0x04
 1d2:	3b 83       	std	Y+3, r19	; 0x03
 1d4:	4a 83       	std	Y+2, r20	; 0x02
 1d6:	69 83       	std	Y+1, r22	; 0x01
 1d8:	09 95       	icall
 1da:	d8 01       	movw	r26, r16
 1dc:	ed 91       	ld	r30, X+
 1de:	fc 91       	ld	r31, X
 1e0:	04 80       	ldd	r0, Z+4	; 0x04
 1e2:	f5 81       	ldd	r31, Z+5	; 0x05
 1e4:	e0 2d       	mov	r30, r0
 1e6:	69 81       	ldd	r22, Y+1	; 0x01
 1e8:	c8 01       	movw	r24, r16
 1ea:	09 95       	icall
 1ec:	d8 01       	movw	r26, r16
 1ee:	ed 91       	ld	r30, X+
 1f0:	fc 91       	ld	r31, X
 1f2:	04 80       	ldd	r0, Z+4	; 0x04
 1f4:	f5 81       	ldd	r31, Z+5	; 0x05
 1f6:	e0 2d       	mov	r30, r0
 1f8:	4a 81       	ldd	r20, Y+2	; 0x02
 1fa:	64 2f       	mov	r22, r20
 1fc:	c8 01       	movw	r24, r16
 1fe:	09 95       	icall
 200:	d8 01       	movw	r26, r16
 202:	ed 91       	ld	r30, X+
 204:	fc 91       	ld	r31, X
 206:	04 80       	ldd	r0, Z+4	; 0x04
 208:	f5 81       	ldd	r31, Z+5	; 0x05
 20a:	e0 2d       	mov	r30, r0
 20c:	3b 81       	ldd	r19, Y+3	; 0x03
 20e:	63 2f       	mov	r22, r19
 210:	c8 01       	movw	r24, r16
 212:	09 95       	icall
 214:	d8 01       	movw	r26, r16
 216:	ed 91       	ld	r30, X+
 218:	fc 91       	ld	r31, X
 21a:	04 80       	ldd	r0, Z+4	; 0x04
 21c:	f5 81       	ldd	r31, Z+5	; 0x05
 21e:	e0 2d       	mov	r30, r0
 220:	2c 81       	ldd	r18, Y+4	; 0x04
 222:	62 2f       	mov	r22, r18
 224:	c8 01       	movw	r24, r16
 226:	09 95       	icall
 228:	d8 01       	movw	r26, r16
 22a:	ed 91       	ld	r30, X+
 22c:	fc 91       	ld	r31, X
 22e:	02 80       	ldd	r0, Z+2	; 0x02
 230:	f3 81       	ldd	r31, Z+3	; 0x03
 232:	e0 2d       	mov	r30, r0
 234:	c8 01       	movw	r24, r16
 236:	0f 90       	pop	r0
 238:	0f 90       	pop	r0
 23a:	0f 90       	pop	r0
 23c:	0f 90       	pop	r0
 23e:	df 91       	pop	r29
 240:	cf 91       	pop	r28
 242:	1f 91       	pop	r17
 244:	0f 91       	pop	r16
 246:	09 94       	ijmp

00000248 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj>:
 248:	cf 92       	push	r12
 24a:	df 92       	push	r13
 24c:	ef 92       	push	r14
 24e:	ff 92       	push	r15
 250:	0f 93       	push	r16
 252:	1f 93       	push	r17
 254:	cf 93       	push	r28
 256:	df 93       	push	r29
 258:	00 d0       	rcall	.+0      	; 0x25a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x12>
 25a:	00 d0       	rcall	.+0      	; 0x25c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x14>
 25c:	cd b7       	in	r28, 0x3d	; 61
 25e:	de b7       	in	r29, 0x3e	; 62
 260:	6c 01       	movw	r12, r24
 262:	dc 01       	movw	r26, r24
 264:	ed 91       	ld	r30, X+
 266:	fc 91       	ld	r31, X
 268:	01 90       	ld	r0, Z+
 26a:	f0 81       	ld	r31, Z
 26c:	e0 2d       	mov	r30, r0
 26e:	2b 83       	std	Y+3, r18	; 0x03
 270:	3c 83       	std	Y+4, r19	; 0x04
 272:	4a 83       	std	Y+2, r20	; 0x02
 274:	69 83       	std	Y+1, r22	; 0x01
 276:	09 95       	icall
 278:	d6 01       	movw	r26, r12
 27a:	ed 91       	ld	r30, X+
 27c:	fc 91       	ld	r31, X
 27e:	04 80       	ldd	r0, Z+4	; 0x04
 280:	f5 81       	ldd	r31, Z+5	; 0x05
 282:	e0 2d       	mov	r30, r0
 284:	69 81       	ldd	r22, Y+1	; 0x01
 286:	c6 01       	movw	r24, r12
 288:	09 95       	icall
 28a:	d6 01       	movw	r26, r12
 28c:	ed 91       	ld	r30, X+
 28e:	fc 91       	ld	r31, X
 290:	04 80       	ldd	r0, Z+4	; 0x04
 292:	f5 81       	ldd	r31, Z+5	; 0x05
 294:	e0 2d       	mov	r30, r0
 296:	4a 81       	ldd	r20, Y+2	; 0x02
 298:	64 2f       	mov	r22, r20
 29a:	c6 01       	movw	r24, r12
 29c:	09 95       	icall
 29e:	2b 81       	ldd	r18, Y+3	; 0x03
 2a0:	e2 2e       	mov	r14, r18
 2a2:	3c 81       	ldd	r19, Y+4	; 0x04
 2a4:	f3 2e       	mov	r15, r19
 2a6:	0e 0d       	add	r16, r14
 2a8:	1f 1d       	adc	r17, r15
 2aa:	d6 01       	movw	r26, r12
 2ac:	ed 91       	ld	r30, X+
 2ae:	fc 91       	ld	r31, X
 2b0:	e0 16       	cp	r14, r16
 2b2:	f1 06       	cpc	r15, r17
 2b4:	49 f0       	breq	.+18     	; 0x2c8 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x80>
 2b6:	d7 01       	movw	r26, r14
 2b8:	6d 91       	ld	r22, X+
 2ba:	7d 01       	movw	r14, r26
 2bc:	04 80       	ldd	r0, Z+4	; 0x04
 2be:	f5 81       	ldd	r31, Z+5	; 0x05
 2c0:	e0 2d       	mov	r30, r0
 2c2:	c6 01       	movw	r24, r12
 2c4:	09 95       	icall
 2c6:	f1 cf       	rjmp	.-30     	; 0x2aa <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE15write_reg_multiEhhPhj+0x62>
 2c8:	02 80       	ldd	r0, Z+2	; 0x02
 2ca:	f3 81       	ldd	r31, Z+3	; 0x03
 2cc:	e0 2d       	mov	r30, r0
 2ce:	c6 01       	movw	r24, r12
 2d0:	0f 90       	pop	r0
 2d2:	0f 90       	pop	r0
 2d4:	0f 90       	pop	r0
 2d6:	0f 90       	pop	r0
 2d8:	df 91       	pop	r29
 2da:	cf 91       	pop	r28
 2dc:	1f 91       	pop	r17
 2de:	0f 91       	pop	r16
 2e0:	ff 90       	pop	r15
 2e2:	ef 90       	pop	r14
 2e4:	df 90       	pop	r13
 2e6:	cf 90       	pop	r12
 2e8:	09 94       	ijmp

000002ea <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE8read_regEhh>:
 2ea:	ef 92       	push	r14
 2ec:	ff 92       	push	r15
 2ee:	1f 93       	push	r17
 2f0:	cf 93       	push	r28
 2f2:	df 93       	push	r29
 2f4:	1f 92       	push	r1
 2f6:	cd b7       	in	r28, 0x3d	; 61
 2f8:	de b7       	in	r29, 0x3e	; 62
 2fa:	7c 01       	movw	r14, r24
 2fc:	16 2f       	mov	r17, r22
 2fe:	dc 01       	movw	r26, r24
 300:	ed 91       	ld	r30, X+
 302:	fc 91       	ld	r31, X
 304:	01 90       	ld	r0, Z+
 306:	f0 81       	ld	r31, Z
 308:	e0 2d       	mov	r30, r0
 30a:	49 83       	std	Y+1, r20	; 0x01
 30c:	09 95       	icall
 30e:	d7 01       	movw	r26, r14
 310:	ed 91       	ld	r30, X+
 312:	fc 91       	ld	r31, X
 314:	04 80       	ldd	r0, Z+4	; 0x04
 316:	f5 81       	ldd	r31, Z+5	; 0x05
 318:	e0 2d       	mov	r30, r0
 31a:	61 2f       	mov	r22, r17
 31c:	c7 01       	movw	r24, r14
 31e:	09 95       	icall
 320:	d7 01       	movw	r26, r14
 322:	ed 91       	ld	r30, X+
 324:	fc 91       	ld	r31, X
 326:	04 80       	ldd	r0, Z+4	; 0x04
 328:	f5 81       	ldd	r31, Z+5	; 0x05
 32a:	e0 2d       	mov	r30, r0
 32c:	49 81       	ldd	r20, Y+1	; 0x01
 32e:	64 2f       	mov	r22, r20
 330:	c7 01       	movw	r24, r14
 332:	09 95       	icall
 334:	d7 01       	movw	r26, r14
 336:	ed 91       	ld	r30, X+
 338:	fc 91       	ld	r31, X
 33a:	01 90       	ld	r0, Z+
 33c:	f0 81       	ld	r31, Z
 33e:	e0 2d       	mov	r30, r0
 340:	c7 01       	movw	r24, r14
 342:	09 95       	icall
 344:	d7 01       	movw	r26, r14
 346:	ed 91       	ld	r30, X+
 348:	fc 91       	ld	r31, X
 34a:	61 2f       	mov	r22, r17
 34c:	61 60       	ori	r22, 0x01	; 1
 34e:	04 80       	ldd	r0, Z+4	; 0x04
 350:	f5 81       	ldd	r31, Z+5	; 0x05
 352:	e0 2d       	mov	r30, r0
 354:	c7 01       	movw	r24, r14
 356:	09 95       	icall
 358:	d7 01       	movw	r26, r14
 35a:	ed 91       	ld	r30, X+
 35c:	fc 91       	ld	r31, X
 35e:	06 80       	ldd	r0, Z+6	; 0x06
 360:	f7 81       	ldd	r31, Z+7	; 0x07
 362:	e0 2d       	mov	r30, r0
 364:	60 e0       	ldi	r22, 0x00	; 0
 366:	c7 01       	movw	r24, r14
 368:	09 95       	icall
 36a:	18 2f       	mov	r17, r24
 36c:	d7 01       	movw	r26, r14
 36e:	ed 91       	ld	r30, X+
 370:	fc 91       	ld	r31, X
 372:	02 80       	ldd	r0, Z+2	; 0x02
 374:	f3 81       	ldd	r31, Z+3	; 0x03
 376:	e0 2d       	mov	r30, r0
 378:	c7 01       	movw	r24, r14
 37a:	09 95       	icall
 37c:	81 2f       	mov	r24, r17
 37e:	0f 90       	pop	r0
 380:	df 91       	pop	r29
 382:	cf 91       	pop	r28
 384:	1f 91       	pop	r17
 386:	ff 90       	pop	r15
 388:	ef 90       	pop	r14
 38a:	08 95       	ret

0000038c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_16bitEhh>:
 38c:	ef 92       	push	r14
 38e:	ff 92       	push	r15
 390:	0f 93       	push	r16
 392:	1f 93       	push	r17
 394:	cf 93       	push	r28
 396:	df 93       	push	r29
 398:	1f 92       	push	r1
 39a:	cd b7       	in	r28, 0x3d	; 61
 39c:	de b7       	in	r29, 0x3e	; 62
 39e:	7c 01       	movw	r14, r24
 3a0:	16 2f       	mov	r17, r22
 3a2:	dc 01       	movw	r26, r24
 3a4:	ed 91       	ld	r30, X+
 3a6:	fc 91       	ld	r31, X
 3a8:	01 90       	ld	r0, Z+
 3aa:	f0 81       	ld	r31, Z
 3ac:	e0 2d       	mov	r30, r0
 3ae:	49 83       	std	Y+1, r20	; 0x01
 3b0:	09 95       	icall
 3b2:	d7 01       	movw	r26, r14
 3b4:	ed 91       	ld	r30, X+
 3b6:	fc 91       	ld	r31, X
 3b8:	04 80       	ldd	r0, Z+4	; 0x04
 3ba:	f5 81       	ldd	r31, Z+5	; 0x05
 3bc:	e0 2d       	mov	r30, r0
 3be:	61 2f       	mov	r22, r17
 3c0:	c7 01       	movw	r24, r14
 3c2:	09 95       	icall
 3c4:	d7 01       	movw	r26, r14
 3c6:	ed 91       	ld	r30, X+
 3c8:	fc 91       	ld	r31, X
 3ca:	04 80       	ldd	r0, Z+4	; 0x04
 3cc:	f5 81       	ldd	r31, Z+5	; 0x05
 3ce:	e0 2d       	mov	r30, r0
 3d0:	49 81       	ldd	r20, Y+1	; 0x01
 3d2:	64 2f       	mov	r22, r20
 3d4:	c7 01       	movw	r24, r14
 3d6:	09 95       	icall
 3d8:	d7 01       	movw	r26, r14
 3da:	ed 91       	ld	r30, X+
 3dc:	fc 91       	ld	r31, X
 3de:	01 90       	ld	r0, Z+
 3e0:	f0 81       	ld	r31, Z
 3e2:	e0 2d       	mov	r30, r0
 3e4:	c7 01       	movw	r24, r14
 3e6:	09 95       	icall
 3e8:	d7 01       	movw	r26, r14
 3ea:	ed 91       	ld	r30, X+
 3ec:	fc 91       	ld	r31, X
 3ee:	61 2f       	mov	r22, r17
 3f0:	61 60       	ori	r22, 0x01	; 1
 3f2:	04 80       	ldd	r0, Z+4	; 0x04
 3f4:	f5 81       	ldd	r31, Z+5	; 0x05
 3f6:	e0 2d       	mov	r30, r0
 3f8:	c7 01       	movw	r24, r14
 3fa:	09 95       	icall
 3fc:	d7 01       	movw	r26, r14
 3fe:	ed 91       	ld	r30, X+
 400:	fc 91       	ld	r31, X
 402:	06 80       	ldd	r0, Z+6	; 0x06
 404:	f7 81       	ldd	r31, Z+7	; 0x07
 406:	e0 2d       	mov	r30, r0
 408:	61 e0       	ldi	r22, 0x01	; 1
 40a:	c7 01       	movw	r24, r14
 40c:	09 95       	icall
 40e:	08 2f       	mov	r16, r24
 410:	10 e0       	ldi	r17, 0x00	; 0
 412:	10 2f       	mov	r17, r16
 414:	00 27       	eor	r16, r16
 416:	d7 01       	movw	r26, r14
 418:	ed 91       	ld	r30, X+
 41a:	fc 91       	ld	r31, X
 41c:	06 80       	ldd	r0, Z+6	; 0x06
 41e:	f7 81       	ldd	r31, Z+7	; 0x07
 420:	e0 2d       	mov	r30, r0
 422:	60 e0       	ldi	r22, 0x00	; 0
 424:	c7 01       	movw	r24, r14
 426:	09 95       	icall
 428:	08 2b       	or	r16, r24
 42a:	d7 01       	movw	r26, r14
 42c:	ed 91       	ld	r30, X+
 42e:	fc 91       	ld	r31, X
 430:	02 80       	ldd	r0, Z+2	; 0x02
 432:	f3 81       	ldd	r31, Z+3	; 0x03
 434:	e0 2d       	mov	r30, r0
 436:	c7 01       	movw	r24, r14
 438:	09 95       	icall
 43a:	c8 01       	movw	r24, r16
 43c:	0f 90       	pop	r0
 43e:	df 91       	pop	r29
 440:	cf 91       	pop	r28
 442:	1f 91       	pop	r17
 444:	0f 91       	pop	r16
 446:	ff 90       	pop	r15
 448:	ef 90       	pop	r14
 44a:	08 95       	ret

0000044c <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj>:
 44c:	cf 92       	push	r12
 44e:	df 92       	push	r13
 450:	ef 92       	push	r14
 452:	ff 92       	push	r15
 454:	0f 93       	push	r16
 456:	1f 93       	push	r17
 458:	cf 93       	push	r28
 45a:	df 93       	push	r29
 45c:	00 d0       	rcall	.+0      	; 0x45e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE14read_reg_multiEhhPhj+0x12>
 45e:	1f 92       	push	r1
 460:	cd b7       	in	r28, 0x3d	; 61
 462:	de b7       	in	r29, 0x3e	; 62
 464:	6c 01       	movw	r12, r24
 466:	f6 2e       	mov	r15, r22
 468:	dc 01       	movw	r26, r24
 46a:	ed 91       	ld	r30, X+
 46c:	fc 91       	ld	r31, X
 46e:	01 90       	ld	r0, Z+
 470:	f0 81       	ld	r31, Z
 472:	e0 2d       	mov	r30, r0
 474:	2a 83       	std	Y+2, r18	; 0x02
 476:	3b 83       	std	Y+3, r19	; 0x03
 478:	49 83       	std	Y+1, r20	; 0x01
 47a:	09 95       	icall
 47c:	d6 01       	movw	r26, r12
 47e:	ed 91       	ld	r30, X+
 480:	fc 91       	ld	r31, X
 482:	04 80       	ldd	r0, Z+4	; 0x04
 484:	f5 81       	ldd	r31, Z+5	; 0x05
 486:	e0 2d       	mov	r30, r0
 488:	6f 2d       	mov	r22, r15
 48a:	c6 01       	movw	r24, r12
 48c:	09 95       	icall
 48e:	d6 01       	movw	r26, r12
 490:	ed 91       	ld	r30, X+
 492:	fc 91       	ld	r31, X
 494:	04 80       	ldd	r0, Z+4	; 0x04
 496:	f5 81       	ldd	r31, Z+5	; 0x05
 498:	e0 2d       	mov	r30, r0
 49a:	49 81       	ldd	r20, Y+1	; 0x01
 49c:	64 2f       	mov	r22, r20
 49e:	c6 01       	movw	r24, r12
 4a0:	09 95       	icall
 4a2:	d6 01       	movw	r26, r12
 4a4:	ed 91       	ld	r30, X+
 4a6:	fc 91       	ld	r31, X
 4a8:	01 90       	ld	r0, Z+
 4aa:	f0 81       	ld	r31, Z
 4ac:	e0 2d       	mov	r30, r0
 4ae:	c6 01       	movw	r24, r12
 4b0:	09 95       	icall
 4b2:	d6 01       	movw	r26, r12
 4b4:	ed 91       	ld	r30, X+
 4b6:	fc 91       	ld	r31, X
 4b8:	6f 2d       	mov	r22, r15
 4ba:	61 60       	ori	r22, 0x01	; 1
 4bc:	04 80       	ldd	r0, Z+4	; 0x04
 4be:	f5 81       	ldd	r31, Z+5	; 0x05
 4c0:	e0 2d       	mov	r30, r0
 4c2:	c6 01       	movw	r24, r12
 4c4:	09 95       	icall
 4c6:	2a 81       	ldd	r18, Y+2	; 0x02
 4c8:	e2 2e       	mov	r14, r18
 4ca:	3b 81       	ldd	r19, Y+3	; 0x03
 4cc:	f3 2e       	mov	r15, r19
 4ce:	0e 0d       	add	r16, r14
 4d0:	1f 1d       	adc	r17, r15
 4d2:	d6 01       	movw	r26, r12
 4d4:	ed 91       	ld	r30, X+
 4d6:	fc 91       	ld	r31, X
 4d8:	e0 16       	cp	r14, r16
 4da:	f1 06       	cpc	r15, r17
 4dc:	51 f0       	breq	.+20     	; 0x4f2 <__stack+0x93>
 4de:	06 80       	ldd	r0, Z+6	; 0x06
 4e0:	f7 81       	ldd	r31, Z+7	; 0x07
 4e2:	e0 2d       	mov	r30, r0
 4e4:	61 e0       	ldi	r22, 0x01	; 1
 4e6:	c6 01       	movw	r24, r12
 4e8:	09 95       	icall
 4ea:	f7 01       	movw	r30, r14
 4ec:	81 93       	st	Z+, r24
 4ee:	7f 01       	movw	r14, r30
 4f0:	f0 cf       	rjmp	.-32     	; 0x4d2 <__stack+0x73>
 4f2:	02 80       	ldd	r0, Z+2	; 0x02
 4f4:	f3 81       	ldd	r31, Z+3	; 0x03
 4f6:	e0 2d       	mov	r30, r0
 4f8:	c6 01       	movw	r24, r12
 4fa:	0f 90       	pop	r0
 4fc:	0f 90       	pop	r0
 4fe:	0f 90       	pop	r0
 500:	df 91       	pop	r29
 502:	cf 91       	pop	r28
 504:	1f 91       	pop	r17
 506:	0f 91       	pop	r16
 508:	ff 90       	pop	r15
 50a:	ef 90       	pop	r14
 50c:	df 90       	pop	r13
 50e:	cf 90       	pop	r12
 510:	09 94       	ijmp

00000512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 512:	88 23       	and	r24, r24
 514:	21 f0       	breq	.+8      	; 0x51e <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 516:	bf 98       	cbi	0x17, 7	; 23
 518:	82 30       	cpi	r24, 0x02	; 2
 51a:	19 f0       	breq	.+6      	; 0x522 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 51c:	08 95       	ret
 51e:	bf 9a       	sbi	0x17, 7	; 23
 520:	08 95       	ret
 522:	c7 9a       	sbi	0x18, 7	; 24
 524:	08 95       	ret

00000526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>:
 526:	8a e0       	ldi	r24, 0x0A	; 10
 528:	00 00       	nop
 52a:	81 50       	subi	r24, 0x01	; 1
 52c:	e9 f7       	brne	.-6      	; 0x528 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6+0x2>
 52e:	08 95       	ret

00000530 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh>:
 530:	1f 93       	push	r17
 532:	cf 93       	push	r28
 534:	df 93       	push	r29
 536:	16 2f       	mov	r17, r22
 538:	bd 98       	cbi	0x17, 5	; 23
 53a:	80 e0       	ldi	r24, 0x00	; 0
 53c:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 540:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 544:	d8 e0       	ldi	r29, 0x08	; 8
 546:	c0 e0       	ldi	r28, 0x00	; 0
 548:	cc 0f       	add	r28, r28
 54a:	81 e0       	ldi	r24, 0x01	; 1
 54c:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 550:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 554:	b5 99       	sbic	0x16, 5	; 22
 556:	c1 60       	ori	r28, 0x01	; 1
 558:	80 e0       	ldi	r24, 0x00	; 0
 55a:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 55e:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 562:	d1 50       	subi	r29, 0x01	; 1
 564:	89 f7       	brne	.-30     	; 0x548 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x18>
 566:	11 23       	and	r17, r17
 568:	11 f0       	breq	.+4      	; 0x56e <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x3e>
 56a:	bd 9a       	sbi	0x17, 5	; 23
 56c:	01 c0       	rjmp	.+2      	; 0x570 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4readEh+0x40>
 56e:	bd 98       	cbi	0x17, 5	; 23
 570:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 574:	81 e0       	ldi	r24, 0x01	; 1
 576:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 57a:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 57e:	80 e0       	ldi	r24, 0x00	; 0
 580:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 584:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 588:	bd 98       	cbi	0x17, 5	; 23
 58a:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 58e:	8c 2f       	mov	r24, r28
 590:	df 91       	pop	r29
 592:	cf 91       	pop	r28
 594:	1f 91       	pop	r17
 596:	08 95       	ret

00000598 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh>:
 598:	cf 93       	push	r28
 59a:	df 93       	push	r29
 59c:	d6 2f       	mov	r29, r22
 59e:	c8 e0       	ldi	r28, 0x08	; 8
 5a0:	80 e0       	ldi	r24, 0x00	; 0
 5a2:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5a6:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5aa:	d7 ff       	sbrs	r29, 7
 5ac:	02 c0       	rjmp	.+4      	; 0x5b2 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1a>
 5ae:	bd 98       	cbi	0x17, 5	; 23
 5b0:	01 c0       	rjmp	.+2      	; 0x5b4 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x1c>
 5b2:	bd 9a       	sbi	0x17, 5	; 23
 5b4:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5b8:	81 e0       	ldi	r24, 0x01	; 1
 5ba:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5be:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5c2:	dd 0f       	add	r29, r29
 5c4:	c1 50       	subi	r28, 0x01	; 1
 5c6:	61 f7       	brne	.-40     	; 0x5a0 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5writeEh+0x8>
 5c8:	80 e0       	ldi	r24, 0x00	; 0
 5ca:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5ce:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5d2:	bd 98       	cbi	0x17, 5	; 23
 5d4:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5d8:	81 e0       	ldi	r24, 0x01	; 1
 5da:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5de:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5e2:	c6 b3       	in	r28, 0x16	; 22
 5e4:	80 e0       	ldi	r24, 0x00	; 0
 5e6:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5ea:	0e 94 93 02 	call	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>
 5ee:	c5 fb       	bst	r28, 5
 5f0:	cc 27       	eor	r28, r28
 5f2:	c0 f9       	bld	r28, 0
 5f4:	81 e0       	ldi	r24, 0x01	; 1
 5f6:	8c 27       	eor	r24, r28
 5f8:	df 91       	pop	r29
 5fa:	cf 91       	pop	r28
 5fc:	08 95       	ret

000005fe <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5startEv>:
 5fe:	81 e0       	ldi	r24, 0x01	; 1
 600:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 604:	bd 98       	cbi	0x17, 5	; 23
 606:	81 e0       	ldi	r24, 0x01	; 1
 608:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 60c:	bd 9a       	sbi	0x17, 5	; 23
 60e:	80 e0       	ldi	r24, 0x00	; 0
 610:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 614:	bd 98       	cbi	0x17, 5	; 23
 616:	0c 94 93 02 	jmp	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

0000061a <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE4stopEv>:
 61a:	80 e0       	ldi	r24, 0x00	; 0
 61c:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 620:	bd 9a       	sbi	0x17, 5	; 23
 622:	81 e0       	ldi	r24, 0x01	; 1
 624:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 628:	bd 9a       	sbi	0x17, 5	; 23
 62a:	81 e0       	ldi	r24, 0x01	; 1
 62c:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 630:	bd 98       	cbi	0x17, 5	; 23
 632:	0c 94 93 02 	jmp	0x526	; 0x526 <_ZN4TI2CILh1ELh5ELh7ELh10ELh1EE5delayEv.isra.6>

00000636 <_GLOBAL__sub_I_i2c>:
 636:	84 e7       	ldi	r24, 0x74	; 116
 638:	90 e0       	ldi	r25, 0x00	; 0
 63a:	90 93 89 00 	sts	0x0089, r25
 63e:	80 93 88 00 	sts	0x0088, r24
 642:	bd 98       	cbi	0x17, 5	; 23
 644:	81 e0       	ldi	r24, 0x01	; 1
 646:	0e 94 89 02 	call	0x512	; 0x512 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 64a:	c5 98       	cbi	0x18, 5	; 24
 64c:	c7 98       	cbi	0x18, 7	; 24
 64e:	08 95       	ret

00000650 <_ZN6CUSARTC1Ev>:
 650:	10 bc       	out	0x20, r1	; 32
 652:	80 e4       	ldi	r24, 0x40	; 64
 654:	89 b9       	out	0x09, r24	; 9
 656:	80 b5       	in	r24, 0x20	; 32
 658:	86 68       	ori	r24, 0x86	; 134
 65a:	80 bd       	out	0x20, r24	; 32
 65c:	8a b1       	in	r24, 0x0a	; 10
 65e:	88 61       	ori	r24, 0x18	; 24
 660:	8a b9       	out	0x0a, r24	; 10
 662:	08 95       	ret

00000664 <_ZN6CUSARTD1Ev>:
 664:	08 95       	ret

00000666 <_ZN8CRTTimerC1Ev>:
 666:	ed e8       	ldi	r30, 0x8D	; 141
 668:	f0 e0       	ldi	r31, 0x00	; 0
 66a:	11 82       	std	Z+1, r1	; 0x01
 66c:	10 82       	st	Z, r1
 66e:	13 82       	std	Z+3, r1	; 0x03
 670:	12 82       	std	Z+2, r1	; 0x02
 672:	15 82       	std	Z+5, r1	; 0x05
 674:	14 82       	std	Z+4, r1	; 0x04
 676:	16 82       	std	Z+6, r1	; 0x06
 678:	37 96       	adiw	r30, 0x07	; 7
 67a:	80 e0       	ldi	r24, 0x00	; 0
 67c:	e5 3c       	cpi	r30, 0xC5	; 197
 67e:	f8 07       	cpc	r31, r24
 680:	a1 f7       	brne	.-24     	; 0x66a <_ZN8CRTTimerC1Ev+0x4>
 682:	83 b7       	in	r24, 0x33	; 51
 684:	88 60       	ori	r24, 0x08	; 8
 686:	83 bf       	out	0x33, r24	; 51
 688:	8b e9       	ldi	r24, 0x9B	; 155
 68a:	8c bf       	out	0x3c, r24	; 60
 68c:	83 e0       	ldi	r24, 0x03	; 3
 68e:	83 bf       	out	0x33, r24	; 51
 690:	89 b7       	in	r24, 0x39	; 57
 692:	82 60       	ori	r24, 0x02	; 2
 694:	89 bf       	out	0x39, r24	; 57
 696:	78 94       	sei
 698:	08 95       	ret

0000069a <_ZN8CRTTimer8add_taskEP14CTaskInterfacej>:
 69a:	f8 94       	cli
 69c:	ed e8       	ldi	r30, 0x8D	; 141
 69e:	f0 e0       	ldi	r31, 0x00	; 0
 6a0:	80 e0       	ldi	r24, 0x00	; 0
 6a2:	90 e0       	ldi	r25, 0x00	; 0
 6a4:	20 81       	ld	r18, Z
 6a6:	31 81       	ldd	r19, Z+1	; 0x01
 6a8:	23 2b       	or	r18, r19
 6aa:	81 f4       	brne	.+32     	; 0x6cc <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x32>
 6ac:	27 e0       	ldi	r18, 0x07	; 7
 6ae:	28 9f       	mul	r18, r24
 6b0:	f0 01       	movw	r30, r0
 6b2:	29 9f       	mul	r18, r25
 6b4:	f0 0d       	add	r31, r0
 6b6:	11 24       	eor	r1, r1
 6b8:	e3 57       	subi	r30, 0x73	; 115
 6ba:	ff 4f       	sbci	r31, 0xFF	; 255
 6bc:	71 83       	std	Z+1, r23	; 0x01
 6be:	60 83       	st	Z, r22
 6c0:	53 83       	std	Z+3, r21	; 0x03
 6c2:	42 83       	std	Z+2, r20	; 0x02
 6c4:	55 83       	std	Z+5, r21	; 0x05
 6c6:	44 83       	std	Z+4, r20	; 0x04
 6c8:	16 82       	std	Z+6, r1	; 0x06
 6ca:	07 c0       	rjmp	.+14     	; 0x6da <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0x40>
 6cc:	01 96       	adiw	r24, 0x01	; 1
 6ce:	37 96       	adiw	r30, 0x07	; 7
 6d0:	88 30       	cpi	r24, 0x08	; 8
 6d2:	91 05       	cpc	r25, r1
 6d4:	39 f7       	brne	.-50     	; 0x6a4 <_ZN8CRTTimer8add_taskEP14CTaskInterfacej+0xa>
 6d6:	8f ef       	ldi	r24, 0xFF	; 255
 6d8:	9f ef       	ldi	r25, 0xFF	; 255
 6da:	78 94       	sei
 6dc:	08 95       	ret

000006de <_ZN8CRTTimer4mainEv>:
 6de:	cf 93       	push	r28
 6e0:	df 93       	push	r29
 6e2:	c3 e9       	ldi	r28, 0x93	; 147
 6e4:	d0 e0       	ldi	r29, 0x00	; 0
 6e6:	fe 01       	movw	r30, r28
 6e8:	36 97       	sbiw	r30, 0x06	; 6
 6ea:	80 81       	ld	r24, Z
 6ec:	91 81       	ldd	r25, Z+1	; 0x01
 6ee:	00 97       	sbiw	r24, 0x00	; 0
 6f0:	59 f0       	breq	.+22     	; 0x708 <_ZN8CRTTimer4mainEv+0x2a>
 6f2:	28 81       	ld	r18, Y
 6f4:	22 23       	and	r18, r18
 6f6:	41 f0       	breq	.+16     	; 0x708 <_ZN8CRTTimer4mainEv+0x2a>
 6f8:	18 82       	st	Y, r1
 6fa:	dc 01       	movw	r26, r24
 6fc:	ed 91       	ld	r30, X+
 6fe:	fc 91       	ld	r31, X
 700:	04 80       	ldd	r0, Z+4	; 0x04
 702:	f5 81       	ldd	r31, Z+5	; 0x05
 704:	e0 2d       	mov	r30, r0
 706:	09 95       	icall
 708:	27 96       	adiw	r28, 0x07	; 7
 70a:	b0 e0       	ldi	r27, 0x00	; 0
 70c:	cb 3c       	cpi	r28, 0xCB	; 203
 70e:	db 07       	cpc	r29, r27
 710:	51 f7       	brne	.-44     	; 0x6e6 <_ZN8CRTTimer4mainEv+0x8>
 712:	df 91       	pop	r29
 714:	cf 91       	pop	r28
 716:	08 95       	ret

00000718 <_GLOBAL__sub_I_g_rt_time>:
 718:	8c e8       	ldi	r24, 0x8C	; 140
 71a:	90 e0       	ldi	r25, 0x00	; 0
 71c:	0c 94 33 03 	jmp	0x666	; 0x666 <_ZN8CRTTimerC1Ev>

00000720 <_GLOBAL__sub_I_terminal>:
 720:	85 ec       	ldi	r24, 0xC5	; 197
 722:	90 e0       	ldi	r25, 0x00	; 0
 724:	0c 94 28 03 	jmp	0x650	; 0x650 <_ZN6CUSARTC1Ev>

00000728 <_GLOBAL__sub_D_terminal>:
 728:	85 ec       	ldi	r24, 0xC5	; 197
 72a:	90 e0       	ldi	r25, 0x00	; 0
 72c:	0c 94 32 03 	jmp	0x664	; 0x664 <_ZN6CUSARTD1Ev>

00000730 <_ZdlPv>:
 730:	0c 94 35 04 	jmp	0x86a	; 0x86a <free>

00000734 <__tablejump2__>:
 734:	ee 0f       	add	r30, r30
 736:	ff 1f       	adc	r31, r31
 738:	05 90       	lpm	r0, Z+
 73a:	f4 91       	lpm	r31, Z
 73c:	e0 2d       	mov	r30, r0
 73e:	09 94       	ijmp

00000740 <malloc>:
 740:	cf 93       	push	r28
 742:	df 93       	push	r29
 744:	82 30       	cpi	r24, 0x02	; 2
 746:	91 05       	cpc	r25, r1
 748:	10 f4       	brcc	.+4      	; 0x74e <malloc+0xe>
 74a:	82 e0       	ldi	r24, 0x02	; 2
 74c:	90 e0       	ldi	r25, 0x00	; 0
 74e:	e0 91 c8 00 	lds	r30, 0x00C8
 752:	f0 91 c9 00 	lds	r31, 0x00C9
 756:	20 e0       	ldi	r18, 0x00	; 0
 758:	30 e0       	ldi	r19, 0x00	; 0
 75a:	c0 e0       	ldi	r28, 0x00	; 0
 75c:	d0 e0       	ldi	r29, 0x00	; 0
 75e:	30 97       	sbiw	r30, 0x00	; 0
 760:	11 f1       	breq	.+68     	; 0x7a6 <malloc+0x66>
 762:	40 81       	ld	r20, Z
 764:	51 81       	ldd	r21, Z+1	; 0x01
 766:	48 17       	cp	r20, r24
 768:	59 07       	cpc	r21, r25
 76a:	c0 f0       	brcs	.+48     	; 0x79c <malloc+0x5c>
 76c:	48 17       	cp	r20, r24
 76e:	59 07       	cpc	r21, r25
 770:	61 f4       	brne	.+24     	; 0x78a <malloc+0x4a>
 772:	82 81       	ldd	r24, Z+2	; 0x02
 774:	93 81       	ldd	r25, Z+3	; 0x03
 776:	20 97       	sbiw	r28, 0x00	; 0
 778:	19 f0       	breq	.+6      	; 0x780 <malloc+0x40>
 77a:	9b 83       	std	Y+3, r25	; 0x03
 77c:	8a 83       	std	Y+2, r24	; 0x02
 77e:	2b c0       	rjmp	.+86     	; 0x7d6 <malloc+0x96>
 780:	90 93 c9 00 	sts	0x00C9, r25
 784:	80 93 c8 00 	sts	0x00C8, r24
 788:	26 c0       	rjmp	.+76     	; 0x7d6 <malloc+0x96>
 78a:	21 15       	cp	r18, r1
 78c:	31 05       	cpc	r19, r1
 78e:	19 f0       	breq	.+6      	; 0x796 <malloc+0x56>
 790:	42 17       	cp	r20, r18
 792:	53 07       	cpc	r21, r19
 794:	18 f4       	brcc	.+6      	; 0x79c <malloc+0x5c>
 796:	9a 01       	movw	r18, r20
 798:	be 01       	movw	r22, r28
 79a:	df 01       	movw	r26, r30
 79c:	ef 01       	movw	r28, r30
 79e:	02 80       	ldd	r0, Z+2	; 0x02
 7a0:	f3 81       	ldd	r31, Z+3	; 0x03
 7a2:	e0 2d       	mov	r30, r0
 7a4:	dc cf       	rjmp	.-72     	; 0x75e <malloc+0x1e>
 7a6:	21 15       	cp	r18, r1
 7a8:	31 05       	cpc	r19, r1
 7aa:	09 f1       	breq	.+66     	; 0x7ee <malloc+0xae>
 7ac:	28 1b       	sub	r18, r24
 7ae:	39 0b       	sbc	r19, r25
 7b0:	24 30       	cpi	r18, 0x04	; 4
 7b2:	31 05       	cpc	r19, r1
 7b4:	90 f4       	brcc	.+36     	; 0x7da <malloc+0x9a>
 7b6:	12 96       	adiw	r26, 0x02	; 2
 7b8:	8d 91       	ld	r24, X+
 7ba:	9c 91       	ld	r25, X
 7bc:	13 97       	sbiw	r26, 0x03	; 3
 7be:	61 15       	cp	r22, r1
 7c0:	71 05       	cpc	r23, r1
 7c2:	21 f0       	breq	.+8      	; 0x7cc <malloc+0x8c>
 7c4:	fb 01       	movw	r30, r22
 7c6:	93 83       	std	Z+3, r25	; 0x03
 7c8:	82 83       	std	Z+2, r24	; 0x02
 7ca:	04 c0       	rjmp	.+8      	; 0x7d4 <malloc+0x94>
 7cc:	90 93 c9 00 	sts	0x00C9, r25
 7d0:	80 93 c8 00 	sts	0x00C8, r24
 7d4:	fd 01       	movw	r30, r26
 7d6:	32 96       	adiw	r30, 0x02	; 2
 7d8:	44 c0       	rjmp	.+136    	; 0x862 <malloc+0x122>
 7da:	fd 01       	movw	r30, r26
 7dc:	e2 0f       	add	r30, r18
 7de:	f3 1f       	adc	r31, r19
 7e0:	81 93       	st	Z+, r24
 7e2:	91 93       	st	Z+, r25
 7e4:	22 50       	subi	r18, 0x02	; 2
 7e6:	31 09       	sbc	r19, r1
 7e8:	2d 93       	st	X+, r18
 7ea:	3c 93       	st	X, r19
 7ec:	3a c0       	rjmp	.+116    	; 0x862 <malloc+0x122>
 7ee:	20 91 c6 00 	lds	r18, 0x00C6
 7f2:	30 91 c7 00 	lds	r19, 0x00C7
 7f6:	23 2b       	or	r18, r19
 7f8:	41 f4       	brne	.+16     	; 0x80a <malloc+0xca>
 7fa:	20 91 62 00 	lds	r18, 0x0062
 7fe:	30 91 63 00 	lds	r19, 0x0063
 802:	30 93 c7 00 	sts	0x00C7, r19
 806:	20 93 c6 00 	sts	0x00C6, r18
 80a:	20 91 60 00 	lds	r18, 0x0060
 80e:	30 91 61 00 	lds	r19, 0x0061
 812:	21 15       	cp	r18, r1
 814:	31 05       	cpc	r19, r1
 816:	41 f4       	brne	.+16     	; 0x828 <malloc+0xe8>
 818:	2d b7       	in	r18, 0x3d	; 61
 81a:	3e b7       	in	r19, 0x3e	; 62
 81c:	40 91 64 00 	lds	r20, 0x0064
 820:	50 91 65 00 	lds	r21, 0x0065
 824:	24 1b       	sub	r18, r20
 826:	35 0b       	sbc	r19, r21
 828:	e0 91 c6 00 	lds	r30, 0x00C6
 82c:	f0 91 c7 00 	lds	r31, 0x00C7
 830:	e2 17       	cp	r30, r18
 832:	f3 07       	cpc	r31, r19
 834:	a0 f4       	brcc	.+40     	; 0x85e <malloc+0x11e>
 836:	2e 1b       	sub	r18, r30
 838:	3f 0b       	sbc	r19, r31
 83a:	28 17       	cp	r18, r24
 83c:	39 07       	cpc	r19, r25
 83e:	78 f0       	brcs	.+30     	; 0x85e <malloc+0x11e>
 840:	ac 01       	movw	r20, r24
 842:	4e 5f       	subi	r20, 0xFE	; 254
 844:	5f 4f       	sbci	r21, 0xFF	; 255
 846:	24 17       	cp	r18, r20
 848:	35 07       	cpc	r19, r21
 84a:	48 f0       	brcs	.+18     	; 0x85e <malloc+0x11e>
 84c:	4e 0f       	add	r20, r30
 84e:	5f 1f       	adc	r21, r31
 850:	50 93 c7 00 	sts	0x00C7, r21
 854:	40 93 c6 00 	sts	0x00C6, r20
 858:	81 93       	st	Z+, r24
 85a:	91 93       	st	Z+, r25
 85c:	02 c0       	rjmp	.+4      	; 0x862 <malloc+0x122>
 85e:	e0 e0       	ldi	r30, 0x00	; 0
 860:	f0 e0       	ldi	r31, 0x00	; 0
 862:	cf 01       	movw	r24, r30
 864:	df 91       	pop	r29
 866:	cf 91       	pop	r28
 868:	08 95       	ret

0000086a <free>:
 86a:	0f 93       	push	r16
 86c:	1f 93       	push	r17
 86e:	cf 93       	push	r28
 870:	df 93       	push	r29
 872:	00 97       	sbiw	r24, 0x00	; 0
 874:	09 f4       	brne	.+2      	; 0x878 <free+0xe>
 876:	8c c0       	rjmp	.+280    	; 0x990 <free+0x126>
 878:	fc 01       	movw	r30, r24
 87a:	32 97       	sbiw	r30, 0x02	; 2
 87c:	13 82       	std	Z+3, r1	; 0x03
 87e:	12 82       	std	Z+2, r1	; 0x02
 880:	00 91 c8 00 	lds	r16, 0x00C8
 884:	10 91 c9 00 	lds	r17, 0x00C9
 888:	01 15       	cp	r16, r1
 88a:	11 05       	cpc	r17, r1
 88c:	81 f4       	brne	.+32     	; 0x8ae <free+0x44>
 88e:	20 81       	ld	r18, Z
 890:	31 81       	ldd	r19, Z+1	; 0x01
 892:	82 0f       	add	r24, r18
 894:	93 1f       	adc	r25, r19
 896:	20 91 c6 00 	lds	r18, 0x00C6
 89a:	30 91 c7 00 	lds	r19, 0x00C7
 89e:	28 17       	cp	r18, r24
 8a0:	39 07       	cpc	r19, r25
 8a2:	79 f5       	brne	.+94     	; 0x902 <free+0x98>
 8a4:	f0 93 c7 00 	sts	0x00C7, r31
 8a8:	e0 93 c6 00 	sts	0x00C6, r30
 8ac:	71 c0       	rjmp	.+226    	; 0x990 <free+0x126>
 8ae:	d8 01       	movw	r26, r16
 8b0:	40 e0       	ldi	r20, 0x00	; 0
 8b2:	50 e0       	ldi	r21, 0x00	; 0
 8b4:	ae 17       	cp	r26, r30
 8b6:	bf 07       	cpc	r27, r31
 8b8:	50 f4       	brcc	.+20     	; 0x8ce <free+0x64>
 8ba:	12 96       	adiw	r26, 0x02	; 2
 8bc:	2d 91       	ld	r18, X+
 8be:	3c 91       	ld	r19, X
 8c0:	13 97       	sbiw	r26, 0x03	; 3
 8c2:	ad 01       	movw	r20, r26
 8c4:	21 15       	cp	r18, r1
 8c6:	31 05       	cpc	r19, r1
 8c8:	09 f1       	breq	.+66     	; 0x90c <free+0xa2>
 8ca:	d9 01       	movw	r26, r18
 8cc:	f3 cf       	rjmp	.-26     	; 0x8b4 <free+0x4a>
 8ce:	9d 01       	movw	r18, r26
 8d0:	da 01       	movw	r26, r20
 8d2:	33 83       	std	Z+3, r19	; 0x03
 8d4:	22 83       	std	Z+2, r18	; 0x02
 8d6:	60 81       	ld	r22, Z
 8d8:	71 81       	ldd	r23, Z+1	; 0x01
 8da:	86 0f       	add	r24, r22
 8dc:	97 1f       	adc	r25, r23
 8de:	82 17       	cp	r24, r18
 8e0:	93 07       	cpc	r25, r19
 8e2:	69 f4       	brne	.+26     	; 0x8fe <free+0x94>
 8e4:	ec 01       	movw	r28, r24
 8e6:	28 81       	ld	r18, Y
 8e8:	39 81       	ldd	r19, Y+1	; 0x01
 8ea:	26 0f       	add	r18, r22
 8ec:	37 1f       	adc	r19, r23
 8ee:	2e 5f       	subi	r18, 0xFE	; 254
 8f0:	3f 4f       	sbci	r19, 0xFF	; 255
 8f2:	31 83       	std	Z+1, r19	; 0x01
 8f4:	20 83       	st	Z, r18
 8f6:	8a 81       	ldd	r24, Y+2	; 0x02
 8f8:	9b 81       	ldd	r25, Y+3	; 0x03
 8fa:	93 83       	std	Z+3, r25	; 0x03
 8fc:	82 83       	std	Z+2, r24	; 0x02
 8fe:	45 2b       	or	r20, r21
 900:	29 f4       	brne	.+10     	; 0x90c <free+0xa2>
 902:	f0 93 c9 00 	sts	0x00C9, r31
 906:	e0 93 c8 00 	sts	0x00C8, r30
 90a:	42 c0       	rjmp	.+132    	; 0x990 <free+0x126>
 90c:	13 96       	adiw	r26, 0x03	; 3
 90e:	fc 93       	st	X, r31
 910:	ee 93       	st	-X, r30
 912:	12 97       	sbiw	r26, 0x02	; 2
 914:	ed 01       	movw	r28, r26
 916:	49 91       	ld	r20, Y+
 918:	59 91       	ld	r21, Y+
 91a:	9e 01       	movw	r18, r28
 91c:	24 0f       	add	r18, r20
 91e:	35 1f       	adc	r19, r21
 920:	e2 17       	cp	r30, r18
 922:	f3 07       	cpc	r31, r19
 924:	71 f4       	brne	.+28     	; 0x942 <free+0xd8>
 926:	80 81       	ld	r24, Z
 928:	91 81       	ldd	r25, Z+1	; 0x01
 92a:	84 0f       	add	r24, r20
 92c:	95 1f       	adc	r25, r21
 92e:	02 96       	adiw	r24, 0x02	; 2
 930:	11 96       	adiw	r26, 0x01	; 1
 932:	9c 93       	st	X, r25
 934:	8e 93       	st	-X, r24
 936:	82 81       	ldd	r24, Z+2	; 0x02
 938:	93 81       	ldd	r25, Z+3	; 0x03
 93a:	13 96       	adiw	r26, 0x03	; 3
 93c:	9c 93       	st	X, r25
 93e:	8e 93       	st	-X, r24
 940:	12 97       	sbiw	r26, 0x02	; 2
 942:	e0 e0       	ldi	r30, 0x00	; 0
 944:	f0 e0       	ldi	r31, 0x00	; 0
 946:	d8 01       	movw	r26, r16
 948:	12 96       	adiw	r26, 0x02	; 2
 94a:	8d 91       	ld	r24, X+
 94c:	9c 91       	ld	r25, X
 94e:	13 97       	sbiw	r26, 0x03	; 3
 950:	00 97       	sbiw	r24, 0x00	; 0
 952:	19 f0       	breq	.+6      	; 0x95a <free+0xf0>
 954:	f8 01       	movw	r30, r16
 956:	8c 01       	movw	r16, r24
 958:	f6 cf       	rjmp	.-20     	; 0x946 <free+0xdc>
 95a:	8d 91       	ld	r24, X+
 95c:	9c 91       	ld	r25, X
 95e:	98 01       	movw	r18, r16
 960:	2e 5f       	subi	r18, 0xFE	; 254
 962:	3f 4f       	sbci	r19, 0xFF	; 255
 964:	82 0f       	add	r24, r18
 966:	93 1f       	adc	r25, r19
 968:	20 91 c6 00 	lds	r18, 0x00C6
 96c:	30 91 c7 00 	lds	r19, 0x00C7
 970:	28 17       	cp	r18, r24
 972:	39 07       	cpc	r19, r25
 974:	69 f4       	brne	.+26     	; 0x990 <free+0x126>
 976:	30 97       	sbiw	r30, 0x00	; 0
 978:	29 f4       	brne	.+10     	; 0x984 <free+0x11a>
 97a:	10 92 c9 00 	sts	0x00C9, r1
 97e:	10 92 c8 00 	sts	0x00C8, r1
 982:	02 c0       	rjmp	.+4      	; 0x988 <free+0x11e>
 984:	13 82       	std	Z+3, r1	; 0x03
 986:	12 82       	std	Z+2, r1	; 0x02
 988:	10 93 c7 00 	sts	0x00C7, r17
 98c:	00 93 c6 00 	sts	0x00C6, r16
 990:	df 91       	pop	r29
 992:	cf 91       	pop	r28
 994:	1f 91       	pop	r17
 996:	0f 91       	pop	r16
 998:	08 95       	ret

0000099a <__do_global_dtors>:
 99a:	10 e0       	ldi	r17, 0x00	; 0
 99c:	cd e2       	ldi	r28, 0x2D	; 45
 99e:	d0 e0       	ldi	r29, 0x00	; 0
 9a0:	04 c0       	rjmp	.+8      	; 0x9aa <__do_global_dtors+0x10>
 9a2:	fe 01       	movw	r30, r28
 9a4:	0e 94 9a 03 	call	0x734	; 0x734 <__tablejump2__>
 9a8:	21 96       	adiw	r28, 0x01	; 1
 9aa:	ce 32       	cpi	r28, 0x2E	; 46
 9ac:	d1 07       	cpc	r29, r17
 9ae:	c9 f7       	brne	.-14     	; 0x9a2 <__do_global_dtors+0x8>
 9b0:	f8 94       	cli

000009b2 <__stop_program>:
 9b2:	ff cf       	rjmp	.-2      	; 0x9b2 <__stop_program>
