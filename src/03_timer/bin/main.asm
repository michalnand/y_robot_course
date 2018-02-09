
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
  4c:	0c 94 a3 03 	jmp	0x746	; 0x746 <__vector_19>
  50:	0c 94 56 00 	jmp	0xac	; 0xac <__bad_interrupt>

00000054 <__ctors_start>:
  54:	3b 03       	fmul	r19, r19
  56:	e7 03       	fmuls	r22, r23
  58:	eb 03       	fmulsu	r22, r19

0000005a <__ctors_end>:
  5a:	ef 03       	fmulsu	r22, r23

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
  6e:	e6 e6       	ldi	r30, 0x66	; 102
  70:	fa e0       	ldi	r31, 0x0A	; 10
  72:	02 c0       	rjmp	.+4      	; 0x78 <__do_copy_data+0x10>
  74:	05 90       	lpm	r0, Z+
  76:	0d 92       	st	X+, r0
  78:	a2 39       	cpi	r26, 0x92	; 146
  7a:	b1 07       	cpc	r27, r17
  7c:	d9 f7       	brne	.-10     	; 0x74 <__do_copy_data+0xc>

0000007e <__do_clear_bss>:
  7e:	20 e0       	ldi	r18, 0x00	; 0
  80:	a2 e9       	ldi	r26, 0x92	; 146
  82:	b0 e0       	ldi	r27, 0x00	; 0
  84:	01 c0       	rjmp	.+2      	; 0x88 <.do_clear_bss_start>

00000086 <.do_clear_bss_loop>:
  86:	1d 92       	st	X+, r1

00000088 <.do_clear_bss_start>:
  88:	a8 3d       	cpi	r26, 0xD8	; 216
  8a:	b2 07       	cpc	r27, r18
  8c:	e1 f7       	brne	.-8      	; 0x86 <.do_clear_bss_loop>

0000008e <__do_global_ctors>:
  8e:	10 e0       	ldi	r17, 0x00	; 0
  90:	cd e2       	ldi	r28, 0x2D	; 45
  92:	d0 e0       	ldi	r29, 0x00	; 0
  94:	04 c0       	rjmp	.+8      	; 0x9e <__do_global_ctors+0x10>
  96:	21 97       	sbiw	r28, 0x01	; 1
  98:	fe 01       	movw	r30, r28
  9a:	0e 94 f3 03 	call	0x7e6	; 0x7e6 <__tablejump2__>
  9e:	ca 32       	cpi	r28, 0x2A	; 42
  a0:	d1 07       	cpc	r29, r17
  a2:	c9 f7       	brne	.-14     	; 0x96 <__do_global_ctors+0x8>
  a4:	0e 94 82 00 	call	0x104	; 0x104 <main>
  a8:	0c 94 26 05 	jmp	0xa4c	; 0xa4c <__do_global_dtors>

000000ac <__bad_interrupt>:
  ac:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000b0 <_ZN5TaskAD1Ev>:
  b0:	08 95       	ret

000000b2 <_ZN5TaskBD1Ev>:
  b2:	08 95       	ret

000000b4 <_ZN5TaskAD0Ev>:
  b4:	0c 94 48 03 	jmp	0x690	; 0x690 <_ZdlPv>

000000b8 <_ZN5TaskBD0Ev>:
  b8:	0c 94 48 03 	jmp	0x690	; 0x690 <_ZdlPv>

000000bc <_ZN5TaskB4mainEv>:
  bc:	fc 01       	movw	r30, r24
  be:	83 81       	ldd	r24, Z+3	; 0x03
  c0:	94 81       	ldd	r25, Z+4	; 0x04
  c2:	00 97       	sbiw	r24, 0x00	; 0
  c4:	19 f0       	breq	.+6      	; 0xcc <_ZN5TaskB4mainEv+0x10>
  c6:	01 97       	sbiw	r24, 0x01	; 1
  c8:	39 f0       	breq	.+14     	; 0xd8 <_ZN5TaskB4mainEv+0x1c>
  ca:	08 95       	ret
  cc:	de 9a       	sbi	0x1b, 6	; 27
  ce:	81 e0       	ldi	r24, 0x01	; 1
  d0:	90 e0       	ldi	r25, 0x00	; 0
  d2:	94 83       	std	Z+4, r25	; 0x04
  d4:	83 83       	std	Z+3, r24	; 0x03
  d6:	08 95       	ret
  d8:	de 98       	cbi	0x1b, 6	; 27
  da:	14 82       	std	Z+4, r1	; 0x04
  dc:	13 82       	std	Z+3, r1	; 0x03
  de:	08 95       	ret

000000e0 <_ZN5TaskA4mainEv>:
  e0:	fc 01       	movw	r30, r24
  e2:	83 81       	ldd	r24, Z+3	; 0x03
  e4:	94 81       	ldd	r25, Z+4	; 0x04
  e6:	00 97       	sbiw	r24, 0x00	; 0
  e8:	19 f0       	breq	.+6      	; 0xf0 <_ZN5TaskA4mainEv+0x10>
  ea:	01 97       	sbiw	r24, 0x01	; 1
  ec:	39 f0       	breq	.+14     	; 0xfc <_ZN5TaskA4mainEv+0x1c>
  ee:	08 95       	ret
  f0:	dd 9a       	sbi	0x1b, 5	; 27
  f2:	81 e0       	ldi	r24, 0x01	; 1
  f4:	90 e0       	ldi	r25, 0x00	; 0
  f6:	94 83       	std	Z+4, r25	; 0x04
  f8:	83 83       	std	Z+3, r24	; 0x03
  fa:	08 95       	ret
  fc:	dd 98       	cbi	0x1b, 5	; 27
  fe:	14 82       	std	Z+4, r1	; 0x04
 100:	13 82       	std	Z+3, r1	; 0x03
 102:	08 95       	ret

00000104 <main>:
 104:	cf 93       	push	r28
 106:	df 93       	push	r29
 108:	cd b7       	in	r28, 0x3d	; 61
 10a:	de b7       	in	r29, 0x3e	; 62
 10c:	2a 97       	sbiw	r28, 0x0a	; 10
 10e:	0f b6       	in	r0, 0x3f	; 63
 110:	f8 94       	cli
 112:	de bf       	out	0x3e, r29	; 62
 114:	0f be       	out	0x3f, r0	; 63
 116:	cd bf       	out	0x3d, r28	; 61
 118:	8a e6       	ldi	r24, 0x6A	; 106
 11a:	90 e0       	ldi	r25, 0x00	; 0
 11c:	9f 83       	std	Y+7, r25	; 0x07
 11e:	8e 83       	std	Y+6, r24	; 0x06
 120:	d5 9a       	sbi	0x1a, 5	; 26
 122:	1a 86       	std	Y+10, r1	; 0x0a
 124:	19 86       	std	Y+9, r1	; 0x09
 126:	84 e7       	ldi	r24, 0x74	; 116
 128:	90 e0       	ldi	r25, 0x00	; 0
 12a:	9a 83       	std	Y+2, r25	; 0x02
 12c:	89 83       	std	Y+1, r24	; 0x01
 12e:	d6 9a       	sbi	0x1a, 6	; 26
 130:	1d 82       	std	Y+5, r1	; 0x05
 132:	1c 82       	std	Y+4, r1	; 0x04
 134:	44 e6       	ldi	r20, 0x64	; 100
 136:	50 e0       	ldi	r21, 0x00	; 0
 138:	be 01       	movw	r22, r28
 13a:	6a 5f       	subi	r22, 0xFA	; 250
 13c:	7f 4f       	sbci	r23, 0xFF	; 255
 13e:	86 e9       	ldi	r24, 0x96	; 150
 140:	90 e0       	ldi	r25, 0x00	; 0
 142:	0e 94 64 03 	call	0x6c8	; 0x6c8 <_ZN5Timer8add_taskEP4Taskj>
 146:	44 ef       	ldi	r20, 0xF4	; 244
 148:	51 e0       	ldi	r21, 0x01	; 1
 14a:	be 01       	movw	r22, r28
 14c:	6f 5f       	subi	r22, 0xFF	; 255
 14e:	7f 4f       	sbci	r23, 0xFF	; 255
 150:	86 e9       	ldi	r24, 0x96	; 150
 152:	90 e0       	ldi	r25, 0x00	; 0
 154:	0e 94 64 03 	call	0x6c8	; 0x6c8 <_ZN5Timer8add_taskEP4Taskj>
 158:	86 e9       	ldi	r24, 0x96	; 150
 15a:	90 e0       	ldi	r25, 0x00	; 0
 15c:	0e 94 86 03 	call	0x70c	; 0x70c <_ZN5Timer4mainEv>
 160:	fb cf       	rjmp	.-10     	; 0x158 <main+0x54>

00000162 <_ZN5USARTC1Ev>:
 162:	10 bc       	out	0x20, r1	; 32
 164:	80 e4       	ldi	r24, 0x40	; 64
 166:	89 b9       	out	0x09, r24	; 9
 168:	80 b5       	in	r24, 0x20	; 32
 16a:	86 68       	ori	r24, 0x86	; 134
 16c:	80 bd       	out	0x20, r24	; 32
 16e:	8a b1       	in	r24, 0x0a	; 10
 170:	88 61       	ori	r24, 0x18	; 24
 172:	8a b9       	out	0x0a, r24	; 10
 174:	08 95       	ret

00000176 <_ZN5USARTD1Ev>:
 176:	08 95       	ret

00000178 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh>:
 178:	0f 93       	push	r16
 17a:	1f 93       	push	r17
 17c:	cf 93       	push	r28
 17e:	df 93       	push	r29
 180:	00 d0       	rcall	.+0      	; 0x182 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE9write_regEhhh+0xa>
 182:	1f 92       	push	r1
 184:	cd b7       	in	r28, 0x3d	; 61
 186:	de b7       	in	r29, 0x3e	; 62
 188:	8c 01       	movw	r16, r24
 18a:	dc 01       	movw	r26, r24
 18c:	ed 91       	ld	r30, X+
 18e:	fc 91       	ld	r31, X
 190:	01 90       	ld	r0, Z+
 192:	f0 81       	ld	r31, Z
 194:	e0 2d       	mov	r30, r0
 196:	2b 83       	std	Y+3, r18	; 0x03
 198:	4a 83       	std	Y+2, r20	; 0x02
 19a:	69 83       	std	Y+1, r22	; 0x01
 19c:	09 95       	icall
 19e:	d8 01       	movw	r26, r16
 1a0:	ed 91       	ld	r30, X+
 1a2:	fc 91       	ld	r31, X
 1a4:	04 80       	ldd	r0, Z+4	; 0x04
 1a6:	f5 81       	ldd	r31, Z+5	; 0x05
 1a8:	e0 2d       	mov	r30, r0
 1aa:	69 81       	ldd	r22, Y+1	; 0x01
 1ac:	c8 01       	movw	r24, r16
 1ae:	09 95       	icall
 1b0:	d8 01       	movw	r26, r16
 1b2:	ed 91       	ld	r30, X+
 1b4:	fc 91       	ld	r31, X
 1b6:	04 80       	ldd	r0, Z+4	; 0x04
 1b8:	f5 81       	ldd	r31, Z+5	; 0x05
 1ba:	e0 2d       	mov	r30, r0
 1bc:	4a 81       	ldd	r20, Y+2	; 0x02
 1be:	64 2f       	mov	r22, r20
 1c0:	c8 01       	movw	r24, r16
 1c2:	09 95       	icall
 1c4:	d8 01       	movw	r26, r16
 1c6:	ed 91       	ld	r30, X+
 1c8:	fc 91       	ld	r31, X
 1ca:	04 80       	ldd	r0, Z+4	; 0x04
 1cc:	f5 81       	ldd	r31, Z+5	; 0x05
 1ce:	e0 2d       	mov	r30, r0
 1d0:	2b 81       	ldd	r18, Y+3	; 0x03
 1d2:	62 2f       	mov	r22, r18
 1d4:	c8 01       	movw	r24, r16
 1d6:	09 95       	icall
 1d8:	d8 01       	movw	r26, r16
 1da:	ed 91       	ld	r30, X+
 1dc:	fc 91       	ld	r31, X
 1de:	02 80       	ldd	r0, Z+2	; 0x02
 1e0:	f3 81       	ldd	r31, Z+3	; 0x03
 1e2:	e0 2d       	mov	r30, r0
 1e4:	c8 01       	movw	r24, r16
 1e6:	0f 90       	pop	r0
 1e8:	0f 90       	pop	r0
 1ea:	0f 90       	pop	r0
 1ec:	df 91       	pop	r29
 1ee:	cf 91       	pop	r28
 1f0:	1f 91       	pop	r17
 1f2:	0f 91       	pop	r16
 1f4:	09 94       	ijmp

000001f6 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj>:
 1f6:	0f 93       	push	r16
 1f8:	1f 93       	push	r17
 1fa:	cf 93       	push	r28
 1fc:	df 93       	push	r29
 1fe:	00 d0       	rcall	.+0      	; 0x200 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xa>
 200:	00 d0       	rcall	.+0      	; 0x202 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_16bitEhhj+0xc>
 202:	cd b7       	in	r28, 0x3d	; 61
 204:	de b7       	in	r29, 0x3e	; 62
 206:	8c 01       	movw	r16, r24
 208:	dc 01       	movw	r26, r24
 20a:	ed 91       	ld	r30, X+
 20c:	fc 91       	ld	r31, X
 20e:	01 90       	ld	r0, Z+
 210:	f0 81       	ld	r31, Z
 212:	e0 2d       	mov	r30, r0
 214:	2c 83       	std	Y+4, r18	; 0x04
 216:	3b 83       	std	Y+3, r19	; 0x03
 218:	4a 83       	std	Y+2, r20	; 0x02
 21a:	69 83       	std	Y+1, r22	; 0x01
 21c:	09 95       	icall
 21e:	d8 01       	movw	r26, r16
 220:	ed 91       	ld	r30, X+
 222:	fc 91       	ld	r31, X
 224:	04 80       	ldd	r0, Z+4	; 0x04
 226:	f5 81       	ldd	r31, Z+5	; 0x05
 228:	e0 2d       	mov	r30, r0
 22a:	69 81       	ldd	r22, Y+1	; 0x01
 22c:	c8 01       	movw	r24, r16
 22e:	09 95       	icall
 230:	d8 01       	movw	r26, r16
 232:	ed 91       	ld	r30, X+
 234:	fc 91       	ld	r31, X
 236:	04 80       	ldd	r0, Z+4	; 0x04
 238:	f5 81       	ldd	r31, Z+5	; 0x05
 23a:	e0 2d       	mov	r30, r0
 23c:	4a 81       	ldd	r20, Y+2	; 0x02
 23e:	64 2f       	mov	r22, r20
 240:	c8 01       	movw	r24, r16
 242:	09 95       	icall
 244:	d8 01       	movw	r26, r16
 246:	ed 91       	ld	r30, X+
 248:	fc 91       	ld	r31, X
 24a:	04 80       	ldd	r0, Z+4	; 0x04
 24c:	f5 81       	ldd	r31, Z+5	; 0x05
 24e:	e0 2d       	mov	r30, r0
 250:	3b 81       	ldd	r19, Y+3	; 0x03
 252:	63 2f       	mov	r22, r19
 254:	c8 01       	movw	r24, r16
 256:	09 95       	icall
 258:	d8 01       	movw	r26, r16
 25a:	ed 91       	ld	r30, X+
 25c:	fc 91       	ld	r31, X
 25e:	04 80       	ldd	r0, Z+4	; 0x04
 260:	f5 81       	ldd	r31, Z+5	; 0x05
 262:	e0 2d       	mov	r30, r0
 264:	2c 81       	ldd	r18, Y+4	; 0x04
 266:	62 2f       	mov	r22, r18
 268:	c8 01       	movw	r24, r16
 26a:	09 95       	icall
 26c:	d8 01       	movw	r26, r16
 26e:	ed 91       	ld	r30, X+
 270:	fc 91       	ld	r31, X
 272:	02 80       	ldd	r0, Z+2	; 0x02
 274:	f3 81       	ldd	r31, Z+3	; 0x03
 276:	e0 2d       	mov	r30, r0
 278:	c8 01       	movw	r24, r16
 27a:	0f 90       	pop	r0
 27c:	0f 90       	pop	r0
 27e:	0f 90       	pop	r0
 280:	0f 90       	pop	r0
 282:	df 91       	pop	r29
 284:	cf 91       	pop	r28
 286:	1f 91       	pop	r17
 288:	0f 91       	pop	r16
 28a:	09 94       	ijmp

0000028c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj>:
 28c:	cf 92       	push	r12
 28e:	df 92       	push	r13
 290:	ef 92       	push	r14
 292:	ff 92       	push	r15
 294:	0f 93       	push	r16
 296:	1f 93       	push	r17
 298:	cf 93       	push	r28
 29a:	df 93       	push	r29
 29c:	00 d0       	rcall	.+0      	; 0x29e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x12>
 29e:	00 d0       	rcall	.+0      	; 0x2a0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x14>
 2a0:	cd b7       	in	r28, 0x3d	; 61
 2a2:	de b7       	in	r29, 0x3e	; 62
 2a4:	6c 01       	movw	r12, r24
 2a6:	dc 01       	movw	r26, r24
 2a8:	ed 91       	ld	r30, X+
 2aa:	fc 91       	ld	r31, X
 2ac:	01 90       	ld	r0, Z+
 2ae:	f0 81       	ld	r31, Z
 2b0:	e0 2d       	mov	r30, r0
 2b2:	2b 83       	std	Y+3, r18	; 0x03
 2b4:	3c 83       	std	Y+4, r19	; 0x04
 2b6:	4a 83       	std	Y+2, r20	; 0x02
 2b8:	69 83       	std	Y+1, r22	; 0x01
 2ba:	09 95       	icall
 2bc:	d6 01       	movw	r26, r12
 2be:	ed 91       	ld	r30, X+
 2c0:	fc 91       	ld	r31, X
 2c2:	04 80       	ldd	r0, Z+4	; 0x04
 2c4:	f5 81       	ldd	r31, Z+5	; 0x05
 2c6:	e0 2d       	mov	r30, r0
 2c8:	69 81       	ldd	r22, Y+1	; 0x01
 2ca:	c6 01       	movw	r24, r12
 2cc:	09 95       	icall
 2ce:	d6 01       	movw	r26, r12
 2d0:	ed 91       	ld	r30, X+
 2d2:	fc 91       	ld	r31, X
 2d4:	04 80       	ldd	r0, Z+4	; 0x04
 2d6:	f5 81       	ldd	r31, Z+5	; 0x05
 2d8:	e0 2d       	mov	r30, r0
 2da:	4a 81       	ldd	r20, Y+2	; 0x02
 2dc:	64 2f       	mov	r22, r20
 2de:	c6 01       	movw	r24, r12
 2e0:	09 95       	icall
 2e2:	2b 81       	ldd	r18, Y+3	; 0x03
 2e4:	e2 2e       	mov	r14, r18
 2e6:	3c 81       	ldd	r19, Y+4	; 0x04
 2e8:	f3 2e       	mov	r15, r19
 2ea:	0e 0d       	add	r16, r14
 2ec:	1f 1d       	adc	r17, r15
 2ee:	d6 01       	movw	r26, r12
 2f0:	ed 91       	ld	r30, X+
 2f2:	fc 91       	ld	r31, X
 2f4:	e0 16       	cp	r14, r16
 2f6:	f1 06       	cpc	r15, r17
 2f8:	49 f0       	breq	.+18     	; 0x30c <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x80>
 2fa:	d7 01       	movw	r26, r14
 2fc:	6d 91       	ld	r22, X+
 2fe:	7d 01       	movw	r14, r26
 300:	04 80       	ldd	r0, Z+4	; 0x04
 302:	f5 81       	ldd	r31, Z+5	; 0x05
 304:	e0 2d       	mov	r30, r0
 306:	c6 01       	movw	r24, r12
 308:	09 95       	icall
 30a:	f1 cf       	rjmp	.-30     	; 0x2ee <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE15write_reg_multiEhhPhj+0x62>
 30c:	02 80       	ldd	r0, Z+2	; 0x02
 30e:	f3 81       	ldd	r31, Z+3	; 0x03
 310:	e0 2d       	mov	r30, r0
 312:	c6 01       	movw	r24, r12
 314:	0f 90       	pop	r0
 316:	0f 90       	pop	r0
 318:	0f 90       	pop	r0
 31a:	0f 90       	pop	r0
 31c:	df 91       	pop	r29
 31e:	cf 91       	pop	r28
 320:	1f 91       	pop	r17
 322:	0f 91       	pop	r16
 324:	ff 90       	pop	r15
 326:	ef 90       	pop	r14
 328:	df 90       	pop	r13
 32a:	cf 90       	pop	r12
 32c:	09 94       	ijmp

0000032e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE8read_regEhh>:
 32e:	ef 92       	push	r14
 330:	ff 92       	push	r15
 332:	1f 93       	push	r17
 334:	cf 93       	push	r28
 336:	df 93       	push	r29
 338:	1f 92       	push	r1
 33a:	cd b7       	in	r28, 0x3d	; 61
 33c:	de b7       	in	r29, 0x3e	; 62
 33e:	7c 01       	movw	r14, r24
 340:	16 2f       	mov	r17, r22
 342:	dc 01       	movw	r26, r24
 344:	ed 91       	ld	r30, X+
 346:	fc 91       	ld	r31, X
 348:	01 90       	ld	r0, Z+
 34a:	f0 81       	ld	r31, Z
 34c:	e0 2d       	mov	r30, r0
 34e:	49 83       	std	Y+1, r20	; 0x01
 350:	09 95       	icall
 352:	d7 01       	movw	r26, r14
 354:	ed 91       	ld	r30, X+
 356:	fc 91       	ld	r31, X
 358:	04 80       	ldd	r0, Z+4	; 0x04
 35a:	f5 81       	ldd	r31, Z+5	; 0x05
 35c:	e0 2d       	mov	r30, r0
 35e:	61 2f       	mov	r22, r17
 360:	c7 01       	movw	r24, r14
 362:	09 95       	icall
 364:	d7 01       	movw	r26, r14
 366:	ed 91       	ld	r30, X+
 368:	fc 91       	ld	r31, X
 36a:	04 80       	ldd	r0, Z+4	; 0x04
 36c:	f5 81       	ldd	r31, Z+5	; 0x05
 36e:	e0 2d       	mov	r30, r0
 370:	49 81       	ldd	r20, Y+1	; 0x01
 372:	64 2f       	mov	r22, r20
 374:	c7 01       	movw	r24, r14
 376:	09 95       	icall
 378:	d7 01       	movw	r26, r14
 37a:	ed 91       	ld	r30, X+
 37c:	fc 91       	ld	r31, X
 37e:	01 90       	ld	r0, Z+
 380:	f0 81       	ld	r31, Z
 382:	e0 2d       	mov	r30, r0
 384:	c7 01       	movw	r24, r14
 386:	09 95       	icall
 388:	d7 01       	movw	r26, r14
 38a:	ed 91       	ld	r30, X+
 38c:	fc 91       	ld	r31, X
 38e:	61 2f       	mov	r22, r17
 390:	61 60       	ori	r22, 0x01	; 1
 392:	04 80       	ldd	r0, Z+4	; 0x04
 394:	f5 81       	ldd	r31, Z+5	; 0x05
 396:	e0 2d       	mov	r30, r0
 398:	c7 01       	movw	r24, r14
 39a:	09 95       	icall
 39c:	d7 01       	movw	r26, r14
 39e:	ed 91       	ld	r30, X+
 3a0:	fc 91       	ld	r31, X
 3a2:	06 80       	ldd	r0, Z+6	; 0x06
 3a4:	f7 81       	ldd	r31, Z+7	; 0x07
 3a6:	e0 2d       	mov	r30, r0
 3a8:	60 e0       	ldi	r22, 0x00	; 0
 3aa:	c7 01       	movw	r24, r14
 3ac:	09 95       	icall
 3ae:	18 2f       	mov	r17, r24
 3b0:	d7 01       	movw	r26, r14
 3b2:	ed 91       	ld	r30, X+
 3b4:	fc 91       	ld	r31, X
 3b6:	02 80       	ldd	r0, Z+2	; 0x02
 3b8:	f3 81       	ldd	r31, Z+3	; 0x03
 3ba:	e0 2d       	mov	r30, r0
 3bc:	c7 01       	movw	r24, r14
 3be:	09 95       	icall
 3c0:	81 2f       	mov	r24, r17
 3c2:	0f 90       	pop	r0
 3c4:	df 91       	pop	r29
 3c6:	cf 91       	pop	r28
 3c8:	1f 91       	pop	r17
 3ca:	ff 90       	pop	r15
 3cc:	ef 90       	pop	r14
 3ce:	08 95       	ret

000003d0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_16bitEhh>:
 3d0:	ef 92       	push	r14
 3d2:	ff 92       	push	r15
 3d4:	0f 93       	push	r16
 3d6:	1f 93       	push	r17
 3d8:	cf 93       	push	r28
 3da:	df 93       	push	r29
 3dc:	1f 92       	push	r1
 3de:	cd b7       	in	r28, 0x3d	; 61
 3e0:	de b7       	in	r29, 0x3e	; 62
 3e2:	7c 01       	movw	r14, r24
 3e4:	16 2f       	mov	r17, r22
 3e6:	dc 01       	movw	r26, r24
 3e8:	ed 91       	ld	r30, X+
 3ea:	fc 91       	ld	r31, X
 3ec:	01 90       	ld	r0, Z+
 3ee:	f0 81       	ld	r31, Z
 3f0:	e0 2d       	mov	r30, r0
 3f2:	49 83       	std	Y+1, r20	; 0x01
 3f4:	09 95       	icall
 3f6:	d7 01       	movw	r26, r14
 3f8:	ed 91       	ld	r30, X+
 3fa:	fc 91       	ld	r31, X
 3fc:	04 80       	ldd	r0, Z+4	; 0x04
 3fe:	f5 81       	ldd	r31, Z+5	; 0x05
 400:	e0 2d       	mov	r30, r0
 402:	61 2f       	mov	r22, r17
 404:	c7 01       	movw	r24, r14
 406:	09 95       	icall
 408:	d7 01       	movw	r26, r14
 40a:	ed 91       	ld	r30, X+
 40c:	fc 91       	ld	r31, X
 40e:	04 80       	ldd	r0, Z+4	; 0x04
 410:	f5 81       	ldd	r31, Z+5	; 0x05
 412:	e0 2d       	mov	r30, r0
 414:	49 81       	ldd	r20, Y+1	; 0x01
 416:	64 2f       	mov	r22, r20
 418:	c7 01       	movw	r24, r14
 41a:	09 95       	icall
 41c:	d7 01       	movw	r26, r14
 41e:	ed 91       	ld	r30, X+
 420:	fc 91       	ld	r31, X
 422:	01 90       	ld	r0, Z+
 424:	f0 81       	ld	r31, Z
 426:	e0 2d       	mov	r30, r0
 428:	c7 01       	movw	r24, r14
 42a:	09 95       	icall
 42c:	d7 01       	movw	r26, r14
 42e:	ed 91       	ld	r30, X+
 430:	fc 91       	ld	r31, X
 432:	61 2f       	mov	r22, r17
 434:	61 60       	ori	r22, 0x01	; 1
 436:	04 80       	ldd	r0, Z+4	; 0x04
 438:	f5 81       	ldd	r31, Z+5	; 0x05
 43a:	e0 2d       	mov	r30, r0
 43c:	c7 01       	movw	r24, r14
 43e:	09 95       	icall
 440:	d7 01       	movw	r26, r14
 442:	ed 91       	ld	r30, X+
 444:	fc 91       	ld	r31, X
 446:	06 80       	ldd	r0, Z+6	; 0x06
 448:	f7 81       	ldd	r31, Z+7	; 0x07
 44a:	e0 2d       	mov	r30, r0
 44c:	61 e0       	ldi	r22, 0x01	; 1
 44e:	c7 01       	movw	r24, r14
 450:	09 95       	icall
 452:	08 2f       	mov	r16, r24
 454:	10 e0       	ldi	r17, 0x00	; 0
 456:	10 2f       	mov	r17, r16
 458:	00 27       	eor	r16, r16
 45a:	d7 01       	movw	r26, r14
 45c:	ed 91       	ld	r30, X+
 45e:	fc 91       	ld	r31, X
 460:	06 80       	ldd	r0, Z+6	; 0x06
 462:	f7 81       	ldd	r31, Z+7	; 0x07
 464:	e0 2d       	mov	r30, r0
 466:	60 e0       	ldi	r22, 0x00	; 0
 468:	c7 01       	movw	r24, r14
 46a:	09 95       	icall
 46c:	08 2b       	or	r16, r24
 46e:	d7 01       	movw	r26, r14
 470:	ed 91       	ld	r30, X+
 472:	fc 91       	ld	r31, X
 474:	02 80       	ldd	r0, Z+2	; 0x02
 476:	f3 81       	ldd	r31, Z+3	; 0x03
 478:	e0 2d       	mov	r30, r0
 47a:	c7 01       	movw	r24, r14
 47c:	09 95       	icall
 47e:	c8 01       	movw	r24, r16
 480:	0f 90       	pop	r0
 482:	df 91       	pop	r29
 484:	cf 91       	pop	r28
 486:	1f 91       	pop	r17
 488:	0f 91       	pop	r16
 48a:	ff 90       	pop	r15
 48c:	ef 90       	pop	r14
 48e:	08 95       	ret

00000490 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj>:
 490:	cf 92       	push	r12
 492:	df 92       	push	r13
 494:	ef 92       	push	r14
 496:	ff 92       	push	r15
 498:	0f 93       	push	r16
 49a:	1f 93       	push	r17
 49c:	cf 93       	push	r28
 49e:	df 93       	push	r29
 4a0:	00 d0       	rcall	.+0      	; 0x4a2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x12>
 4a2:	1f 92       	push	r1
 4a4:	cd b7       	in	r28, 0x3d	; 61
 4a6:	de b7       	in	r29, 0x3e	; 62
 4a8:	6c 01       	movw	r12, r24
 4aa:	f6 2e       	mov	r15, r22
 4ac:	dc 01       	movw	r26, r24
 4ae:	ed 91       	ld	r30, X+
 4b0:	fc 91       	ld	r31, X
 4b2:	01 90       	ld	r0, Z+
 4b4:	f0 81       	ld	r31, Z
 4b6:	e0 2d       	mov	r30, r0
 4b8:	2a 83       	std	Y+2, r18	; 0x02
 4ba:	3b 83       	std	Y+3, r19	; 0x03
 4bc:	49 83       	std	Y+1, r20	; 0x01
 4be:	09 95       	icall
 4c0:	d6 01       	movw	r26, r12
 4c2:	ed 91       	ld	r30, X+
 4c4:	fc 91       	ld	r31, X
 4c6:	04 80       	ldd	r0, Z+4	; 0x04
 4c8:	f5 81       	ldd	r31, Z+5	; 0x05
 4ca:	e0 2d       	mov	r30, r0
 4cc:	6f 2d       	mov	r22, r15
 4ce:	c6 01       	movw	r24, r12
 4d0:	09 95       	icall
 4d2:	d6 01       	movw	r26, r12
 4d4:	ed 91       	ld	r30, X+
 4d6:	fc 91       	ld	r31, X
 4d8:	04 80       	ldd	r0, Z+4	; 0x04
 4da:	f5 81       	ldd	r31, Z+5	; 0x05
 4dc:	e0 2d       	mov	r30, r0
 4de:	49 81       	ldd	r20, Y+1	; 0x01
 4e0:	64 2f       	mov	r22, r20
 4e2:	c6 01       	movw	r24, r12
 4e4:	09 95       	icall
 4e6:	d6 01       	movw	r26, r12
 4e8:	ed 91       	ld	r30, X+
 4ea:	fc 91       	ld	r31, X
 4ec:	01 90       	ld	r0, Z+
 4ee:	f0 81       	ld	r31, Z
 4f0:	e0 2d       	mov	r30, r0
 4f2:	c6 01       	movw	r24, r12
 4f4:	09 95       	icall
 4f6:	d6 01       	movw	r26, r12
 4f8:	ed 91       	ld	r30, X+
 4fa:	fc 91       	ld	r31, X
 4fc:	6f 2d       	mov	r22, r15
 4fe:	61 60       	ori	r22, 0x01	; 1
 500:	04 80       	ldd	r0, Z+4	; 0x04
 502:	f5 81       	ldd	r31, Z+5	; 0x05
 504:	e0 2d       	mov	r30, r0
 506:	c6 01       	movw	r24, r12
 508:	09 95       	icall
 50a:	2a 81       	ldd	r18, Y+2	; 0x02
 50c:	e2 2e       	mov	r14, r18
 50e:	3b 81       	ldd	r19, Y+3	; 0x03
 510:	f3 2e       	mov	r15, r19
 512:	0e 0d       	add	r16, r14
 514:	1f 1d       	adc	r17, r15
 516:	d6 01       	movw	r26, r12
 518:	ed 91       	ld	r30, X+
 51a:	fc 91       	ld	r31, X
 51c:	e0 16       	cp	r14, r16
 51e:	f1 06       	cpc	r15, r17
 520:	51 f0       	breq	.+20     	; 0x536 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0xa6>
 522:	06 80       	ldd	r0, Z+6	; 0x06
 524:	f7 81       	ldd	r31, Z+7	; 0x07
 526:	e0 2d       	mov	r30, r0
 528:	61 e0       	ldi	r22, 0x01	; 1
 52a:	c6 01       	movw	r24, r12
 52c:	09 95       	icall
 52e:	f7 01       	movw	r30, r14
 530:	81 93       	st	Z+, r24
 532:	7f 01       	movw	r14, r30
 534:	f0 cf       	rjmp	.-32     	; 0x516 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE14read_reg_multiEhhPhj+0x86>
 536:	02 80       	ldd	r0, Z+2	; 0x02
 538:	f3 81       	ldd	r31, Z+3	; 0x03
 53a:	e0 2d       	mov	r30, r0
 53c:	c6 01       	movw	r24, r12
 53e:	0f 90       	pop	r0
 540:	0f 90       	pop	r0
 542:	0f 90       	pop	r0
 544:	df 91       	pop	r29
 546:	cf 91       	pop	r28
 548:	1f 91       	pop	r17
 54a:	0f 91       	pop	r16
 54c:	ff 90       	pop	r15
 54e:	ef 90       	pop	r14
 550:	df 90       	pop	r13
 552:	cf 90       	pop	r12
 554:	09 94       	ijmp

00000556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>:
 556:	88 23       	and	r24, r24
 558:	21 f0       	breq	.+8      	; 0x562 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0xc>
 55a:	bf 98       	cbi	0x17, 7	; 23
 55c:	82 30       	cpi	r24, 0x02	; 2
 55e:	19 f0       	breq	.+6      	; 0x566 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2+0x10>
 560:	08 95       	ret
 562:	bf 9a       	sbi	0x17, 7	; 23
 564:	08 95       	ret
 566:	c7 9a       	sbi	0x18, 7	; 24
 568:	08 95       	ret

0000056a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>:
 56a:	00 00       	nop
 56c:	00 00       	nop
 56e:	08 95       	ret

00000570 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh>:
 570:	1f 93       	push	r17
 572:	cf 93       	push	r28
 574:	df 93       	push	r29
 576:	16 2f       	mov	r17, r22
 578:	bd 98       	cbi	0x17, 5	; 23
 57a:	80 e0       	ldi	r24, 0x00	; 0
 57c:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 580:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 584:	d8 e0       	ldi	r29, 0x08	; 8
 586:	c0 e0       	ldi	r28, 0x00	; 0
 588:	cc 0f       	add	r28, r28
 58a:	81 e0       	ldi	r24, 0x01	; 1
 58c:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 590:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 594:	b5 99       	sbic	0x16, 5	; 22
 596:	c1 60       	ori	r28, 0x01	; 1
 598:	80 e0       	ldi	r24, 0x00	; 0
 59a:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 59e:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5a2:	d1 50       	subi	r29, 0x01	; 1
 5a4:	89 f7       	brne	.-30     	; 0x588 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x18>
 5a6:	11 23       	and	r17, r17
 5a8:	11 f0       	breq	.+4      	; 0x5ae <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x3e>
 5aa:	bd 9a       	sbi	0x17, 5	; 23
 5ac:	01 c0       	rjmp	.+2      	; 0x5b0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4readEh+0x40>
 5ae:	bd 98       	cbi	0x17, 5	; 23
 5b0:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5b4:	81 e0       	ldi	r24, 0x01	; 1
 5b6:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5ba:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5be:	80 e0       	ldi	r24, 0x00	; 0
 5c0:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5c4:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5c8:	bd 98       	cbi	0x17, 5	; 23
 5ca:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5ce:	8c 2f       	mov	r24, r28
 5d0:	df 91       	pop	r29
 5d2:	cf 91       	pop	r28
 5d4:	1f 91       	pop	r17
 5d6:	08 95       	ret

000005d8 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh>:
 5d8:	cf 93       	push	r28
 5da:	df 93       	push	r29
 5dc:	d6 2f       	mov	r29, r22
 5de:	c8 e0       	ldi	r28, 0x08	; 8
 5e0:	80 e0       	ldi	r24, 0x00	; 0
 5e2:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5e6:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5ea:	d7 ff       	sbrs	r29, 7
 5ec:	02 c0       	rjmp	.+4      	; 0x5f2 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1a>
 5ee:	bd 98       	cbi	0x17, 5	; 23
 5f0:	01 c0       	rjmp	.+2      	; 0x5f4 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x1c>
 5f2:	bd 9a       	sbi	0x17, 5	; 23
 5f4:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 5f8:	81 e0       	ldi	r24, 0x01	; 1
 5fa:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 5fe:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 602:	dd 0f       	add	r29, r29
 604:	c1 50       	subi	r28, 0x01	; 1
 606:	61 f7       	brne	.-40     	; 0x5e0 <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5writeEh+0x8>
 608:	80 e0       	ldi	r24, 0x00	; 0
 60a:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 60e:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 612:	bd 98       	cbi	0x17, 5	; 23
 614:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 618:	81 e0       	ldi	r24, 0x01	; 1
 61a:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 61e:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 622:	c6 b3       	in	r28, 0x16	; 22
 624:	80 e0       	ldi	r24, 0x00	; 0
 626:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 62a:	0e 94 b5 02 	call	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>
 62e:	c5 fb       	bst	r28, 5
 630:	cc 27       	eor	r28, r28
 632:	c0 f9       	bld	r28, 0
 634:	81 e0       	ldi	r24, 0x01	; 1
 636:	8c 27       	eor	r24, r28
 638:	df 91       	pop	r29
 63a:	cf 91       	pop	r28
 63c:	08 95       	ret

0000063e <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5startEv>:
 63e:	81 e0       	ldi	r24, 0x01	; 1
 640:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 644:	bd 98       	cbi	0x17, 5	; 23
 646:	81 e0       	ldi	r24, 0x01	; 1
 648:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 64c:	bd 9a       	sbi	0x17, 5	; 23
 64e:	80 e0       	ldi	r24, 0x00	; 0
 650:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 654:	bd 98       	cbi	0x17, 5	; 23
 656:	0c 94 b5 02 	jmp	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

0000065a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE4stopEv>:
 65a:	80 e0       	ldi	r24, 0x00	; 0
 65c:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 660:	bd 9a       	sbi	0x17, 5	; 23
 662:	81 e0       	ldi	r24, 0x01	; 1
 664:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 668:	bd 9a       	sbi	0x17, 5	; 23
 66a:	81 e0       	ldi	r24, 0x01	; 1
 66c:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 670:	bd 98       	cbi	0x17, 5	; 23
 672:	0c 94 b5 02 	jmp	0x56a	; 0x56a <_ZN4TI2CILh1ELh5ELh7ELh2ELh1EE5delayEv.isra.6>

00000676 <_GLOBAL__sub_I_i2c>:
 676:	8e e7       	ldi	r24, 0x7E	; 126
 678:	90 e0       	ldi	r25, 0x00	; 0
 67a:	90 93 93 00 	sts	0x0093, r25
 67e:	80 93 92 00 	sts	0x0092, r24
 682:	bd 98       	cbi	0x17, 5	; 23
 684:	81 e0       	ldi	r24, 0x01	; 1
 686:	0e 94 ab 02 	call	0x556	; 0x556 <_ZN5TGpioILh1ELh7ELh1EE8set_modeEh.isra.2>
 68a:	c5 98       	cbi	0x18, 5	; 24
 68c:	c7 98       	cbi	0x18, 7	; 24
 68e:	08 95       	ret

00000690 <_ZdlPv>:
 690:	0c 94 8e 04 	jmp	0x91c	; 0x91c <free>

00000694 <_ZN5TimerC1Ev>:
 694:	e7 e9       	ldi	r30, 0x97	; 151
 696:	f0 e0       	ldi	r31, 0x00	; 0
 698:	11 82       	std	Z+1, r1	; 0x01
 69a:	10 82       	st	Z, r1
 69c:	13 82       	std	Z+3, r1	; 0x03
 69e:	12 82       	std	Z+2, r1	; 0x02
 6a0:	15 82       	std	Z+5, r1	; 0x05
 6a2:	14 82       	std	Z+4, r1	; 0x04
 6a4:	16 82       	std	Z+6, r1	; 0x06
 6a6:	37 96       	adiw	r30, 0x07	; 7
 6a8:	80 e0       	ldi	r24, 0x00	; 0
 6aa:	ef 3c       	cpi	r30, 0xCF	; 207
 6ac:	f8 07       	cpc	r31, r24
 6ae:	a1 f7       	brne	.-24     	; 0x698 <_ZN5TimerC1Ev+0x4>
 6b0:	83 b7       	in	r24, 0x33	; 51
 6b2:	88 60       	ori	r24, 0x08	; 8
 6b4:	83 bf       	out	0x33, r24	; 51
 6b6:	8b e9       	ldi	r24, 0x9B	; 155
 6b8:	8c bf       	out	0x3c, r24	; 60
 6ba:	83 e0       	ldi	r24, 0x03	; 3
 6bc:	83 bf       	out	0x33, r24	; 51
 6be:	89 b7       	in	r24, 0x39	; 57
 6c0:	82 60       	ori	r24, 0x02	; 2
 6c2:	89 bf       	out	0x39, r24	; 57
 6c4:	78 94       	sei
 6c6:	08 95       	ret

000006c8 <_ZN5Timer8add_taskEP4Taskj>:
 6c8:	f8 94       	cli
 6ca:	e7 e9       	ldi	r30, 0x97	; 151
 6cc:	f0 e0       	ldi	r31, 0x00	; 0
 6ce:	80 e0       	ldi	r24, 0x00	; 0
 6d0:	90 e0       	ldi	r25, 0x00	; 0
 6d2:	20 81       	ld	r18, Z
 6d4:	31 81       	ldd	r19, Z+1	; 0x01
 6d6:	23 2b       	or	r18, r19
 6d8:	81 f4       	brne	.+32     	; 0x6fa <_ZN5Timer8add_taskEP4Taskj+0x32>
 6da:	27 e0       	ldi	r18, 0x07	; 7
 6dc:	28 9f       	mul	r18, r24
 6de:	f0 01       	movw	r30, r0
 6e0:	29 9f       	mul	r18, r25
 6e2:	f0 0d       	add	r31, r0
 6e4:	11 24       	eor	r1, r1
 6e6:	e9 56       	subi	r30, 0x69	; 105
 6e8:	ff 4f       	sbci	r31, 0xFF	; 255
 6ea:	71 83       	std	Z+1, r23	; 0x01
 6ec:	60 83       	st	Z, r22
 6ee:	53 83       	std	Z+3, r21	; 0x03
 6f0:	42 83       	std	Z+2, r20	; 0x02
 6f2:	55 83       	std	Z+5, r21	; 0x05
 6f4:	44 83       	std	Z+4, r20	; 0x04
 6f6:	16 82       	std	Z+6, r1	; 0x06
 6f8:	07 c0       	rjmp	.+14     	; 0x708 <_ZN5Timer8add_taskEP4Taskj+0x40>
 6fa:	01 96       	adiw	r24, 0x01	; 1
 6fc:	37 96       	adiw	r30, 0x07	; 7
 6fe:	88 30       	cpi	r24, 0x08	; 8
 700:	91 05       	cpc	r25, r1
 702:	39 f7       	brne	.-50     	; 0x6d2 <_ZN5Timer8add_taskEP4Taskj+0xa>
 704:	8f ef       	ldi	r24, 0xFF	; 255
 706:	9f ef       	ldi	r25, 0xFF	; 255
 708:	78 94       	sei
 70a:	08 95       	ret

0000070c <_ZN5Timer4mainEv>:
 70c:	cf 93       	push	r28
 70e:	df 93       	push	r29
 710:	cd e9       	ldi	r28, 0x9D	; 157
 712:	d0 e0       	ldi	r29, 0x00	; 0
 714:	fe 01       	movw	r30, r28
 716:	36 97       	sbiw	r30, 0x06	; 6
 718:	80 81       	ld	r24, Z
 71a:	91 81       	ldd	r25, Z+1	; 0x01
 71c:	00 97       	sbiw	r24, 0x00	; 0
 71e:	59 f0       	breq	.+22     	; 0x736 <_ZN5Timer4mainEv+0x2a>
 720:	28 81       	ld	r18, Y
 722:	22 23       	and	r18, r18
 724:	41 f0       	breq	.+16     	; 0x736 <_ZN5Timer4mainEv+0x2a>
 726:	18 82       	st	Y, r1
 728:	dc 01       	movw	r26, r24
 72a:	ed 91       	ld	r30, X+
 72c:	fc 91       	ld	r31, X
 72e:	04 80       	ldd	r0, Z+4	; 0x04
 730:	f5 81       	ldd	r31, Z+5	; 0x05
 732:	e0 2d       	mov	r30, r0
 734:	09 95       	icall
 736:	27 96       	adiw	r28, 0x07	; 7
 738:	b0 e0       	ldi	r27, 0x00	; 0
 73a:	c5 3d       	cpi	r28, 0xD5	; 213
 73c:	db 07       	cpc	r29, r27
 73e:	51 f7       	brne	.-44     	; 0x714 <_ZN5Timer4mainEv+0x8>
 740:	df 91       	pop	r29
 742:	cf 91       	pop	r28
 744:	08 95       	ret

00000746 <__vector_19>:
 746:	1f 92       	push	r1
 748:	0f 92       	push	r0
 74a:	0f b6       	in	r0, 0x3f	; 63
 74c:	0f 92       	push	r0
 74e:	11 24       	eor	r1, r1
 750:	8f 93       	push	r24
 752:	9f 93       	push	r25
 754:	af 93       	push	r26
 756:	bf 93       	push	r27
 758:	ef 93       	push	r30
 75a:	ff 93       	push	r31
 75c:	e7 e9       	ldi	r30, 0x97	; 151
 75e:	f0 e0       	ldi	r31, 0x00	; 0
 760:	ad e9       	ldi	r26, 0x9D	; 157
 762:	b0 e0       	ldi	r27, 0x00	; 0
 764:	84 81       	ldd	r24, Z+4	; 0x04
 766:	95 81       	ldd	r25, Z+5	; 0x05
 768:	00 97       	sbiw	r24, 0x00	; 0
 76a:	21 f0       	breq	.+8      	; 0x774 <__vector_19+0x2e>
 76c:	01 97       	sbiw	r24, 0x01	; 1
 76e:	95 83       	std	Z+5, r25	; 0x05
 770:	84 83       	std	Z+4, r24	; 0x04
 772:	09 c0       	rjmp	.+18     	; 0x786 <__vector_19+0x40>
 774:	82 81       	ldd	r24, Z+2	; 0x02
 776:	93 81       	ldd	r25, Z+3	; 0x03
 778:	95 83       	std	Z+5, r25	; 0x05
 77a:	84 83       	std	Z+4, r24	; 0x04
 77c:	8c 91       	ld	r24, X
 77e:	8f 3f       	cpi	r24, 0xFF	; 255
 780:	11 f0       	breq	.+4      	; 0x786 <__vector_19+0x40>
 782:	8f 5f       	subi	r24, 0xFF	; 255
 784:	8c 93       	st	X, r24
 786:	37 96       	adiw	r30, 0x07	; 7
 788:	17 96       	adiw	r26, 0x07	; 7
 78a:	80 e0       	ldi	r24, 0x00	; 0
 78c:	ef 3c       	cpi	r30, 0xCF	; 207
 78e:	f8 07       	cpc	r31, r24
 790:	49 f7       	brne	.-46     	; 0x764 <__vector_19+0x1e>
 792:	80 91 cf 00 	lds	r24, 0x00CF
 796:	90 91 d0 00 	lds	r25, 0x00D0
 79a:	a0 91 d1 00 	lds	r26, 0x00D1
 79e:	b0 91 d2 00 	lds	r27, 0x00D2
 7a2:	01 96       	adiw	r24, 0x01	; 1
 7a4:	a1 1d       	adc	r26, r1
 7a6:	b1 1d       	adc	r27, r1
 7a8:	80 93 cf 00 	sts	0x00CF, r24
 7ac:	90 93 d0 00 	sts	0x00D0, r25
 7b0:	a0 93 d1 00 	sts	0x00D1, r26
 7b4:	b0 93 d2 00 	sts	0x00D2, r27
 7b8:	ff 91       	pop	r31
 7ba:	ef 91       	pop	r30
 7bc:	bf 91       	pop	r27
 7be:	af 91       	pop	r26
 7c0:	9f 91       	pop	r25
 7c2:	8f 91       	pop	r24
 7c4:	0f 90       	pop	r0
 7c6:	0f be       	out	0x3f, r0	; 63
 7c8:	0f 90       	pop	r0
 7ca:	1f 90       	pop	r1
 7cc:	18 95       	reti

000007ce <_GLOBAL__sub_I_g_rt_time>:
 7ce:	86 e9       	ldi	r24, 0x96	; 150
 7d0:	90 e0       	ldi	r25, 0x00	; 0
 7d2:	0c 94 4a 03 	jmp	0x694	; 0x694 <_ZN5TimerC1Ev>

000007d6 <_GLOBAL__sub_I_terminal>:
 7d6:	83 ed       	ldi	r24, 0xD3	; 211
 7d8:	90 e0       	ldi	r25, 0x00	; 0
 7da:	0c 94 b1 00 	jmp	0x162	; 0x162 <_ZN5USARTC1Ev>

000007de <_GLOBAL__sub_D_terminal>:
 7de:	83 ed       	ldi	r24, 0xD3	; 211
 7e0:	90 e0       	ldi	r25, 0x00	; 0
 7e2:	0c 94 bb 00 	jmp	0x176	; 0x176 <_ZN5USARTD1Ev>

000007e6 <__tablejump2__>:
 7e6:	ee 0f       	add	r30, r30
 7e8:	ff 1f       	adc	r31, r31
 7ea:	05 90       	lpm	r0, Z+
 7ec:	f4 91       	lpm	r31, Z
 7ee:	e0 2d       	mov	r30, r0
 7f0:	09 94       	ijmp

000007f2 <malloc>:
 7f2:	cf 93       	push	r28
 7f4:	df 93       	push	r29
 7f6:	82 30       	cpi	r24, 0x02	; 2
 7f8:	91 05       	cpc	r25, r1
 7fa:	10 f4       	brcc	.+4      	; 0x800 <malloc+0xe>
 7fc:	82 e0       	ldi	r24, 0x02	; 2
 7fe:	90 e0       	ldi	r25, 0x00	; 0
 800:	e0 91 d6 00 	lds	r30, 0x00D6
 804:	f0 91 d7 00 	lds	r31, 0x00D7
 808:	20 e0       	ldi	r18, 0x00	; 0
 80a:	30 e0       	ldi	r19, 0x00	; 0
 80c:	c0 e0       	ldi	r28, 0x00	; 0
 80e:	d0 e0       	ldi	r29, 0x00	; 0
 810:	30 97       	sbiw	r30, 0x00	; 0
 812:	11 f1       	breq	.+68     	; 0x858 <malloc+0x66>
 814:	40 81       	ld	r20, Z
 816:	51 81       	ldd	r21, Z+1	; 0x01
 818:	48 17       	cp	r20, r24
 81a:	59 07       	cpc	r21, r25
 81c:	c0 f0       	brcs	.+48     	; 0x84e <malloc+0x5c>
 81e:	48 17       	cp	r20, r24
 820:	59 07       	cpc	r21, r25
 822:	61 f4       	brne	.+24     	; 0x83c <malloc+0x4a>
 824:	82 81       	ldd	r24, Z+2	; 0x02
 826:	93 81       	ldd	r25, Z+3	; 0x03
 828:	20 97       	sbiw	r28, 0x00	; 0
 82a:	19 f0       	breq	.+6      	; 0x832 <malloc+0x40>
 82c:	9b 83       	std	Y+3, r25	; 0x03
 82e:	8a 83       	std	Y+2, r24	; 0x02
 830:	2b c0       	rjmp	.+86     	; 0x888 <malloc+0x96>
 832:	90 93 d7 00 	sts	0x00D7, r25
 836:	80 93 d6 00 	sts	0x00D6, r24
 83a:	26 c0       	rjmp	.+76     	; 0x888 <malloc+0x96>
 83c:	21 15       	cp	r18, r1
 83e:	31 05       	cpc	r19, r1
 840:	19 f0       	breq	.+6      	; 0x848 <malloc+0x56>
 842:	42 17       	cp	r20, r18
 844:	53 07       	cpc	r21, r19
 846:	18 f4       	brcc	.+6      	; 0x84e <malloc+0x5c>
 848:	9a 01       	movw	r18, r20
 84a:	be 01       	movw	r22, r28
 84c:	df 01       	movw	r26, r30
 84e:	ef 01       	movw	r28, r30
 850:	02 80       	ldd	r0, Z+2	; 0x02
 852:	f3 81       	ldd	r31, Z+3	; 0x03
 854:	e0 2d       	mov	r30, r0
 856:	dc cf       	rjmp	.-72     	; 0x810 <malloc+0x1e>
 858:	21 15       	cp	r18, r1
 85a:	31 05       	cpc	r19, r1
 85c:	09 f1       	breq	.+66     	; 0x8a0 <malloc+0xae>
 85e:	28 1b       	sub	r18, r24
 860:	39 0b       	sbc	r19, r25
 862:	24 30       	cpi	r18, 0x04	; 4
 864:	31 05       	cpc	r19, r1
 866:	90 f4       	brcc	.+36     	; 0x88c <malloc+0x9a>
 868:	12 96       	adiw	r26, 0x02	; 2
 86a:	8d 91       	ld	r24, X+
 86c:	9c 91       	ld	r25, X
 86e:	13 97       	sbiw	r26, 0x03	; 3
 870:	61 15       	cp	r22, r1
 872:	71 05       	cpc	r23, r1
 874:	21 f0       	breq	.+8      	; 0x87e <malloc+0x8c>
 876:	fb 01       	movw	r30, r22
 878:	93 83       	std	Z+3, r25	; 0x03
 87a:	82 83       	std	Z+2, r24	; 0x02
 87c:	04 c0       	rjmp	.+8      	; 0x886 <malloc+0x94>
 87e:	90 93 d7 00 	sts	0x00D7, r25
 882:	80 93 d6 00 	sts	0x00D6, r24
 886:	fd 01       	movw	r30, r26
 888:	32 96       	adiw	r30, 0x02	; 2
 88a:	44 c0       	rjmp	.+136    	; 0x914 <malloc+0x122>
 88c:	fd 01       	movw	r30, r26
 88e:	e2 0f       	add	r30, r18
 890:	f3 1f       	adc	r31, r19
 892:	81 93       	st	Z+, r24
 894:	91 93       	st	Z+, r25
 896:	22 50       	subi	r18, 0x02	; 2
 898:	31 09       	sbc	r19, r1
 89a:	2d 93       	st	X+, r18
 89c:	3c 93       	st	X, r19
 89e:	3a c0       	rjmp	.+116    	; 0x914 <malloc+0x122>
 8a0:	20 91 d4 00 	lds	r18, 0x00D4
 8a4:	30 91 d5 00 	lds	r19, 0x00D5
 8a8:	23 2b       	or	r18, r19
 8aa:	41 f4       	brne	.+16     	; 0x8bc <malloc+0xca>
 8ac:	20 91 62 00 	lds	r18, 0x0062
 8b0:	30 91 63 00 	lds	r19, 0x0063
 8b4:	30 93 d5 00 	sts	0x00D5, r19
 8b8:	20 93 d4 00 	sts	0x00D4, r18
 8bc:	20 91 60 00 	lds	r18, 0x0060
 8c0:	30 91 61 00 	lds	r19, 0x0061
 8c4:	21 15       	cp	r18, r1
 8c6:	31 05       	cpc	r19, r1
 8c8:	41 f4       	brne	.+16     	; 0x8da <malloc+0xe8>
 8ca:	2d b7       	in	r18, 0x3d	; 61
 8cc:	3e b7       	in	r19, 0x3e	; 62
 8ce:	40 91 64 00 	lds	r20, 0x0064
 8d2:	50 91 65 00 	lds	r21, 0x0065
 8d6:	24 1b       	sub	r18, r20
 8d8:	35 0b       	sbc	r19, r21
 8da:	e0 91 d4 00 	lds	r30, 0x00D4
 8de:	f0 91 d5 00 	lds	r31, 0x00D5
 8e2:	e2 17       	cp	r30, r18
 8e4:	f3 07       	cpc	r31, r19
 8e6:	a0 f4       	brcc	.+40     	; 0x910 <malloc+0x11e>
 8e8:	2e 1b       	sub	r18, r30
 8ea:	3f 0b       	sbc	r19, r31
 8ec:	28 17       	cp	r18, r24
 8ee:	39 07       	cpc	r19, r25
 8f0:	78 f0       	brcs	.+30     	; 0x910 <malloc+0x11e>
 8f2:	ac 01       	movw	r20, r24
 8f4:	4e 5f       	subi	r20, 0xFE	; 254
 8f6:	5f 4f       	sbci	r21, 0xFF	; 255
 8f8:	24 17       	cp	r18, r20
 8fa:	35 07       	cpc	r19, r21
 8fc:	48 f0       	brcs	.+18     	; 0x910 <malloc+0x11e>
 8fe:	4e 0f       	add	r20, r30
 900:	5f 1f       	adc	r21, r31
 902:	50 93 d5 00 	sts	0x00D5, r21
 906:	40 93 d4 00 	sts	0x00D4, r20
 90a:	81 93       	st	Z+, r24
 90c:	91 93       	st	Z+, r25
 90e:	02 c0       	rjmp	.+4      	; 0x914 <malloc+0x122>
 910:	e0 e0       	ldi	r30, 0x00	; 0
 912:	f0 e0       	ldi	r31, 0x00	; 0
 914:	cf 01       	movw	r24, r30
 916:	df 91       	pop	r29
 918:	cf 91       	pop	r28
 91a:	08 95       	ret

0000091c <free>:
 91c:	0f 93       	push	r16
 91e:	1f 93       	push	r17
 920:	cf 93       	push	r28
 922:	df 93       	push	r29
 924:	00 97       	sbiw	r24, 0x00	; 0
 926:	09 f4       	brne	.+2      	; 0x92a <free+0xe>
 928:	8c c0       	rjmp	.+280    	; 0xa42 <free+0x126>
 92a:	fc 01       	movw	r30, r24
 92c:	32 97       	sbiw	r30, 0x02	; 2
 92e:	13 82       	std	Z+3, r1	; 0x03
 930:	12 82       	std	Z+2, r1	; 0x02
 932:	00 91 d6 00 	lds	r16, 0x00D6
 936:	10 91 d7 00 	lds	r17, 0x00D7
 93a:	01 15       	cp	r16, r1
 93c:	11 05       	cpc	r17, r1
 93e:	81 f4       	brne	.+32     	; 0x960 <free+0x44>
 940:	20 81       	ld	r18, Z
 942:	31 81       	ldd	r19, Z+1	; 0x01
 944:	82 0f       	add	r24, r18
 946:	93 1f       	adc	r25, r19
 948:	20 91 d4 00 	lds	r18, 0x00D4
 94c:	30 91 d5 00 	lds	r19, 0x00D5
 950:	28 17       	cp	r18, r24
 952:	39 07       	cpc	r19, r25
 954:	79 f5       	brne	.+94     	; 0x9b4 <free+0x98>
 956:	f0 93 d5 00 	sts	0x00D5, r31
 95a:	e0 93 d4 00 	sts	0x00D4, r30
 95e:	71 c0       	rjmp	.+226    	; 0xa42 <free+0x126>
 960:	d8 01       	movw	r26, r16
 962:	40 e0       	ldi	r20, 0x00	; 0
 964:	50 e0       	ldi	r21, 0x00	; 0
 966:	ae 17       	cp	r26, r30
 968:	bf 07       	cpc	r27, r31
 96a:	50 f4       	brcc	.+20     	; 0x980 <free+0x64>
 96c:	12 96       	adiw	r26, 0x02	; 2
 96e:	2d 91       	ld	r18, X+
 970:	3c 91       	ld	r19, X
 972:	13 97       	sbiw	r26, 0x03	; 3
 974:	ad 01       	movw	r20, r26
 976:	21 15       	cp	r18, r1
 978:	31 05       	cpc	r19, r1
 97a:	09 f1       	breq	.+66     	; 0x9be <free+0xa2>
 97c:	d9 01       	movw	r26, r18
 97e:	f3 cf       	rjmp	.-26     	; 0x966 <free+0x4a>
 980:	9d 01       	movw	r18, r26
 982:	da 01       	movw	r26, r20
 984:	33 83       	std	Z+3, r19	; 0x03
 986:	22 83       	std	Z+2, r18	; 0x02
 988:	60 81       	ld	r22, Z
 98a:	71 81       	ldd	r23, Z+1	; 0x01
 98c:	86 0f       	add	r24, r22
 98e:	97 1f       	adc	r25, r23
 990:	82 17       	cp	r24, r18
 992:	93 07       	cpc	r25, r19
 994:	69 f4       	brne	.+26     	; 0x9b0 <free+0x94>
 996:	ec 01       	movw	r28, r24
 998:	28 81       	ld	r18, Y
 99a:	39 81       	ldd	r19, Y+1	; 0x01
 99c:	26 0f       	add	r18, r22
 99e:	37 1f       	adc	r19, r23
 9a0:	2e 5f       	subi	r18, 0xFE	; 254
 9a2:	3f 4f       	sbci	r19, 0xFF	; 255
 9a4:	31 83       	std	Z+1, r19	; 0x01
 9a6:	20 83       	st	Z, r18
 9a8:	8a 81       	ldd	r24, Y+2	; 0x02
 9aa:	9b 81       	ldd	r25, Y+3	; 0x03
 9ac:	93 83       	std	Z+3, r25	; 0x03
 9ae:	82 83       	std	Z+2, r24	; 0x02
 9b0:	45 2b       	or	r20, r21
 9b2:	29 f4       	brne	.+10     	; 0x9be <free+0xa2>
 9b4:	f0 93 d7 00 	sts	0x00D7, r31
 9b8:	e0 93 d6 00 	sts	0x00D6, r30
 9bc:	42 c0       	rjmp	.+132    	; 0xa42 <free+0x126>
 9be:	13 96       	adiw	r26, 0x03	; 3
 9c0:	fc 93       	st	X, r31
 9c2:	ee 93       	st	-X, r30
 9c4:	12 97       	sbiw	r26, 0x02	; 2
 9c6:	ed 01       	movw	r28, r26
 9c8:	49 91       	ld	r20, Y+
 9ca:	59 91       	ld	r21, Y+
 9cc:	9e 01       	movw	r18, r28
 9ce:	24 0f       	add	r18, r20
 9d0:	35 1f       	adc	r19, r21
 9d2:	e2 17       	cp	r30, r18
 9d4:	f3 07       	cpc	r31, r19
 9d6:	71 f4       	brne	.+28     	; 0x9f4 <free+0xd8>
 9d8:	80 81       	ld	r24, Z
 9da:	91 81       	ldd	r25, Z+1	; 0x01
 9dc:	84 0f       	add	r24, r20
 9de:	95 1f       	adc	r25, r21
 9e0:	02 96       	adiw	r24, 0x02	; 2
 9e2:	11 96       	adiw	r26, 0x01	; 1
 9e4:	9c 93       	st	X, r25
 9e6:	8e 93       	st	-X, r24
 9e8:	82 81       	ldd	r24, Z+2	; 0x02
 9ea:	93 81       	ldd	r25, Z+3	; 0x03
 9ec:	13 96       	adiw	r26, 0x03	; 3
 9ee:	9c 93       	st	X, r25
 9f0:	8e 93       	st	-X, r24
 9f2:	12 97       	sbiw	r26, 0x02	; 2
 9f4:	e0 e0       	ldi	r30, 0x00	; 0
 9f6:	f0 e0       	ldi	r31, 0x00	; 0
 9f8:	d8 01       	movw	r26, r16
 9fa:	12 96       	adiw	r26, 0x02	; 2
 9fc:	8d 91       	ld	r24, X+
 9fe:	9c 91       	ld	r25, X
 a00:	13 97       	sbiw	r26, 0x03	; 3
 a02:	00 97       	sbiw	r24, 0x00	; 0
 a04:	19 f0       	breq	.+6      	; 0xa0c <free+0xf0>
 a06:	f8 01       	movw	r30, r16
 a08:	8c 01       	movw	r16, r24
 a0a:	f6 cf       	rjmp	.-20     	; 0x9f8 <free+0xdc>
 a0c:	8d 91       	ld	r24, X+
 a0e:	9c 91       	ld	r25, X
 a10:	98 01       	movw	r18, r16
 a12:	2e 5f       	subi	r18, 0xFE	; 254
 a14:	3f 4f       	sbci	r19, 0xFF	; 255
 a16:	82 0f       	add	r24, r18
 a18:	93 1f       	adc	r25, r19
 a1a:	20 91 d4 00 	lds	r18, 0x00D4
 a1e:	30 91 d5 00 	lds	r19, 0x00D5
 a22:	28 17       	cp	r18, r24
 a24:	39 07       	cpc	r19, r25
 a26:	69 f4       	brne	.+26     	; 0xa42 <free+0x126>
 a28:	30 97       	sbiw	r30, 0x00	; 0
 a2a:	29 f4       	brne	.+10     	; 0xa36 <free+0x11a>
 a2c:	10 92 d7 00 	sts	0x00D7, r1
 a30:	10 92 d6 00 	sts	0x00D6, r1
 a34:	02 c0       	rjmp	.+4      	; 0xa3a <free+0x11e>
 a36:	13 82       	std	Z+3, r1	; 0x03
 a38:	12 82       	std	Z+2, r1	; 0x02
 a3a:	10 93 d5 00 	sts	0x00D5, r17
 a3e:	00 93 d4 00 	sts	0x00D4, r16
 a42:	df 91       	pop	r29
 a44:	cf 91       	pop	r28
 a46:	1f 91       	pop	r17
 a48:	0f 91       	pop	r16
 a4a:	08 95       	ret

00000a4c <__do_global_dtors>:
 a4c:	10 e0       	ldi	r17, 0x00	; 0
 a4e:	cd e2       	ldi	r28, 0x2D	; 45
 a50:	d0 e0       	ldi	r29, 0x00	; 0
 a52:	04 c0       	rjmp	.+8      	; 0xa5c <__do_global_dtors+0x10>
 a54:	fe 01       	movw	r30, r28
 a56:	0e 94 f3 03 	call	0x7e6	; 0x7e6 <__tablejump2__>
 a5a:	21 96       	adiw	r28, 0x01	; 1
 a5c:	ce 32       	cpi	r28, 0x2E	; 46
 a5e:	d1 07       	cpc	r29, r17
 a60:	c9 f7       	brne	.-14     	; 0xa54 <__do_global_dtors+0x8>
 a62:	f8 94       	cli

00000a64 <__stop_program>:
 a64:	ff cf       	rjmp	.-2      	; 0xa64 <__stop_program>
