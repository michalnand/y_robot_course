
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 39 00 	jmp	0x72	; 0x72 <__dtors_end>
   4:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
   8:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
   c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  10:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  14:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  18:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  1c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  20:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  24:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  28:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  2c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  30:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  34:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  38:	0c 94 68 04 	jmp	0x8d0	; 0x8d0 <__vector_14>
  3c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  40:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  44:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  48:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  4c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  50:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  54:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  58:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  5c:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  60:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>
  64:	0c 94 61 00 	jmp	0xc2	; 0xc2 <__bad_interrupt>

00000068 <__ctors_start>:
  68:	51 03       	mulsu	r21, r17
  6a:	c1 03       	fmuls	r20, r17
  6c:	d2 04       	cpc	r13, r2
  6e:	6b 06       	cpc	r6, r27

00000070 <__ctors_end>:
  70:	6f 06       	cpc	r6, r31

00000072 <__dtors_end>:
  72:	11 24       	eor	r1, r1
  74:	1f be       	out	0x3f, r1	; 63
  76:	cf ef       	ldi	r28, 0xFF	; 255
  78:	d8 e0       	ldi	r29, 0x08	; 8
  7a:	de bf       	out	0x3e, r29	; 62
  7c:	cd bf       	out	0x3d, r28	; 61

0000007e <__do_copy_data>:
  7e:	11 e0       	ldi	r17, 0x01	; 1
  80:	a0 e0       	ldi	r26, 0x00	; 0
  82:	b1 e0       	ldi	r27, 0x01	; 1
  84:	ee e8       	ldi	r30, 0x8E	; 142
  86:	fd e0       	ldi	r31, 0x0D	; 13
  88:	02 c0       	rjmp	.+4      	; 0x8e <__do_copy_data+0x10>
  8a:	05 90       	lpm	r0, Z+
  8c:	0d 92       	st	X+, r0
  8e:	ae 32       	cpi	r26, 0x2E	; 46
  90:	b1 07       	cpc	r27, r17
  92:	d9 f7       	brne	.-10     	; 0x8a <__do_copy_data+0xc>

00000094 <__do_clear_bss>:
  94:	21 e0       	ldi	r18, 0x01	; 1
  96:	ae e2       	ldi	r26, 0x2E	; 46
  98:	b1 e0       	ldi	r27, 0x01	; 1
  9a:	01 c0       	rjmp	.+2      	; 0x9e <.do_clear_bss_start>

0000009c <.do_clear_bss_loop>:
  9c:	1d 92       	st	X+, r1

0000009e <.do_clear_bss_start>:
  9e:	aa 37       	cpi	r26, 0x7A	; 122
  a0:	b2 07       	cpc	r27, r18
  a2:	e1 f7       	brne	.-8      	; 0x9c <.do_clear_bss_loop>

000000a4 <__do_global_ctors>:
  a4:	10 e0       	ldi	r17, 0x00	; 0
  a6:	c8 e3       	ldi	r28, 0x38	; 56
  a8:	d0 e0       	ldi	r29, 0x00	; 0
  aa:	04 c0       	rjmp	.+8      	; 0xb4 <__do_global_ctors+0x10>
  ac:	21 97       	sbiw	r28, 0x01	; 1
  ae:	fe 01       	movw	r30, r28
  b0:	0e 94 b4 06 	call	0xd68	; 0xd68 <__tablejump2__>
  b4:	c4 33       	cpi	r28, 0x34	; 52
  b6:	d1 07       	cpc	r29, r17
  b8:	c9 f7       	brne	.-14     	; 0xac <__do_global_ctors+0x8>
  ba:	0e 94 75 03 	call	0x6ea	; 0x6ea <main>
  be:	0c 94 ba 06 	jmp	0xd74	; 0xd74 <__do_global_dtors>

000000c2 <__bad_interrupt>:
  c2:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

000000c6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>:
  c6:	82 e3       	ldi	r24, 0x32	; 50
  c8:	00 00       	nop
  ca:	81 50       	subi	r24, 0x01	; 1
  cc:	e9 f7       	brne	.-6      	; 0xc8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4+0x2>
  ce:	08 95       	ret

000000d0 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE9write_regEhhh>:
  d0:	0f 93       	push	r16
  d2:	1f 93       	push	r17
  d4:	cf 93       	push	r28
  d6:	df 93       	push	r29
  d8:	00 d0       	rcall	.+0      	; 0xda <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE9write_regEhhh+0xa>
  da:	1f 92       	push	r1
  dc:	cd b7       	in	r28, 0x3d	; 61
  de:	de b7       	in	r29, 0x3e	; 62
  e0:	8c 01       	movw	r16, r24
  e2:	dc 01       	movw	r26, r24
  e4:	ed 91       	ld	r30, X+
  e6:	fc 91       	ld	r31, X
  e8:	01 90       	ld	r0, Z+
  ea:	f0 81       	ld	r31, Z
  ec:	e0 2d       	mov	r30, r0
  ee:	2b 83       	std	Y+3, r18	; 0x03
  f0:	4a 83       	std	Y+2, r20	; 0x02
  f2:	69 83       	std	Y+1, r22	; 0x01
  f4:	09 95       	icall
  f6:	d8 01       	movw	r26, r16
  f8:	ed 91       	ld	r30, X+
  fa:	fc 91       	ld	r31, X
  fc:	04 80       	ldd	r0, Z+4	; 0x04
  fe:	f5 81       	ldd	r31, Z+5	; 0x05
 100:	e0 2d       	mov	r30, r0
 102:	69 81       	ldd	r22, Y+1	; 0x01
 104:	c8 01       	movw	r24, r16
 106:	09 95       	icall
 108:	d8 01       	movw	r26, r16
 10a:	ed 91       	ld	r30, X+
 10c:	fc 91       	ld	r31, X
 10e:	04 80       	ldd	r0, Z+4	; 0x04
 110:	f5 81       	ldd	r31, Z+5	; 0x05
 112:	e0 2d       	mov	r30, r0
 114:	4a 81       	ldd	r20, Y+2	; 0x02
 116:	64 2f       	mov	r22, r20
 118:	c8 01       	movw	r24, r16
 11a:	09 95       	icall
 11c:	d8 01       	movw	r26, r16
 11e:	ed 91       	ld	r30, X+
 120:	fc 91       	ld	r31, X
 122:	04 80       	ldd	r0, Z+4	; 0x04
 124:	f5 81       	ldd	r31, Z+5	; 0x05
 126:	e0 2d       	mov	r30, r0
 128:	2b 81       	ldd	r18, Y+3	; 0x03
 12a:	62 2f       	mov	r22, r18
 12c:	c8 01       	movw	r24, r16
 12e:	09 95       	icall
 130:	d8 01       	movw	r26, r16
 132:	ed 91       	ld	r30, X+
 134:	fc 91       	ld	r31, X
 136:	02 80       	ldd	r0, Z+2	; 0x02
 138:	f3 81       	ldd	r31, Z+3	; 0x03
 13a:	e0 2d       	mov	r30, r0
 13c:	c8 01       	movw	r24, r16
 13e:	0f 90       	pop	r0
 140:	0f 90       	pop	r0
 142:	0f 90       	pop	r0
 144:	df 91       	pop	r29
 146:	cf 91       	pop	r28
 148:	1f 91       	pop	r17
 14a:	0f 91       	pop	r16
 14c:	09 94       	ijmp

0000014e <_ZN8CITG3200C1Ev>:
 14e:	fc 01       	movw	r30, r24
 150:	11 82       	std	Z+1, r1	; 0x01
 152:	10 82       	st	Z, r1
 154:	13 82       	std	Z+3, r1	; 0x03
 156:	12 82       	std	Z+2, r1	; 0x02
 158:	15 82       	std	Z+5, r1	; 0x05
 15a:	14 82       	std	Z+4, r1	; 0x04
 15c:	27 e0       	ldi	r18, 0x07	; 7
 15e:	45 e1       	ldi	r20, 0x15	; 21
 160:	62 ed       	ldi	r22, 0xD2	; 210
 162:	8e e2       	ldi	r24, 0x2E	; 46
 164:	91 e0       	ldi	r25, 0x01	; 1
 166:	0e 94 68 00 	call	0xd0	; 0xd0 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE9write_regEhhh>
 16a:	28 e1       	ldi	r18, 0x18	; 24
 16c:	46 e1       	ldi	r20, 0x16	; 22
 16e:	62 ed       	ldi	r22, 0xD2	; 210
 170:	8e e2       	ldi	r24, 0x2E	; 46
 172:	91 e0       	ldi	r25, 0x01	; 1
 174:	0c 94 68 00 	jmp	0xd0	; 0xd0 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE9write_regEhhh>

00000178 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5startEv>:
 178:	39 98       	cbi	0x07, 1	; 7
 17a:	38 98       	cbi	0x07, 0	; 7
 17c:	39 98       	cbi	0x07, 1	; 7
 17e:	38 9a       	sbi	0x07, 0	; 7
 180:	39 9a       	sbi	0x07, 1	; 7
 182:	38 98       	cbi	0x07, 0	; 7
 184:	0c 94 63 00 	jmp	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>

00000188 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5writeEh>:
 188:	0f 93       	push	r16
 18a:	1f 93       	push	r17
 18c:	cf 93       	push	r28
 18e:	df 93       	push	r29
 190:	1f 92       	push	r1
 192:	cd b7       	in	r28, 0x3d	; 61
 194:	de b7       	in	r29, 0x3e	; 62
 196:	06 2f       	mov	r16, r22
 198:	18 e0       	ldi	r17, 0x08	; 8
 19a:	39 9a       	sbi	0x07, 1	; 7
 19c:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 1a0:	07 ff       	sbrs	r16, 7
 1a2:	02 c0       	rjmp	.+4      	; 0x1a8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5writeEh+0x20>
 1a4:	38 98       	cbi	0x07, 0	; 7
 1a6:	01 c0       	rjmp	.+2      	; 0x1aa <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5writeEh+0x22>
 1a8:	38 9a       	sbi	0x07, 0	; 7
 1aa:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 1ae:	39 98       	cbi	0x07, 1	; 7
 1b0:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 1b4:	00 0f       	add	r16, r16
 1b6:	11 50       	subi	r17, 0x01	; 1
 1b8:	81 f7       	brne	.-32     	; 0x19a <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5writeEh+0x12>
 1ba:	39 9a       	sbi	0x07, 1	; 7
 1bc:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 1c0:	38 98       	cbi	0x07, 0	; 7
 1c2:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 1c6:	39 98       	cbi	0x07, 1	; 7
 1c8:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 1cc:	86 b1       	in	r24, 0x06	; 6
 1ce:	80 95       	com	r24
 1d0:	81 70       	andi	r24, 0x01	; 1
 1d2:	39 9a       	sbi	0x07, 1	; 7
 1d4:	89 83       	std	Y+1, r24	; 0x01
 1d6:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 1da:	89 81       	ldd	r24, Y+1	; 0x01
 1dc:	0f 90       	pop	r0
 1de:	df 91       	pop	r29
 1e0:	cf 91       	pop	r28
 1e2:	1f 91       	pop	r17
 1e4:	0f 91       	pop	r16
 1e6:	08 95       	ret

000001e8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4stopEv>:
 1e8:	39 9a       	sbi	0x07, 1	; 7
 1ea:	38 9a       	sbi	0x07, 0	; 7
 1ec:	39 98       	cbi	0x07, 1	; 7
 1ee:	38 9a       	sbi	0x07, 0	; 7
 1f0:	39 98       	cbi	0x07, 1	; 7
 1f2:	38 98       	cbi	0x07, 0	; 7
 1f4:	0c 94 63 00 	jmp	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>

000001f8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh>:
 1f8:	1f 93       	push	r17
 1fa:	cf 93       	push	r28
 1fc:	df 93       	push	r29
 1fe:	16 2f       	mov	r17, r22
 200:	38 98       	cbi	0x07, 0	; 7
 202:	39 9a       	sbi	0x07, 1	; 7
 204:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 208:	d8 e0       	ldi	r29, 0x08	; 8
 20a:	c0 e0       	ldi	r28, 0x00	; 0
 20c:	cc 0f       	add	r28, r28
 20e:	39 98       	cbi	0x07, 1	; 7
 210:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 214:	30 99       	sbic	0x06, 0	; 6
 216:	c1 60       	ori	r28, 0x01	; 1
 218:	39 9a       	sbi	0x07, 1	; 7
 21a:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 21e:	d1 50       	subi	r29, 0x01	; 1
 220:	a9 f7       	brne	.-22     	; 0x20c <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh+0x14>
 222:	11 23       	and	r17, r17
 224:	11 f0       	breq	.+4      	; 0x22a <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh+0x32>
 226:	38 9a       	sbi	0x07, 0	; 7
 228:	01 c0       	rjmp	.+2      	; 0x22c <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh+0x34>
 22a:	38 98       	cbi	0x07, 0	; 7
 22c:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 230:	39 98       	cbi	0x07, 1	; 7
 232:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 236:	39 9a       	sbi	0x07, 1	; 7
 238:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 23c:	38 98       	cbi	0x07, 0	; 7
 23e:	0e 94 63 00 	call	0xc6	; 0xc6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5delayEv.isra.4>
 242:	8c 2f       	mov	r24, r28
 244:	df 91       	pop	r29
 246:	cf 91       	pop	r28
 248:	1f 91       	pop	r17
 24a:	08 95       	ret

0000024c <_ZN8CITG32004readEv>:
 24c:	cf 93       	push	r28
 24e:	df 93       	push	r29
 250:	ec 01       	movw	r28, r24
 252:	8e e2       	ldi	r24, 0x2E	; 46
 254:	91 e0       	ldi	r25, 0x01	; 1
 256:	0e 94 bc 00 	call	0x178	; 0x178 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5startEv>
 25a:	62 ed       	ldi	r22, 0xD2	; 210
 25c:	8e e2       	ldi	r24, 0x2E	; 46
 25e:	91 e0       	ldi	r25, 0x01	; 1
 260:	0e 94 c4 00 	call	0x188	; 0x188 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5writeEh>
 264:	6d e1       	ldi	r22, 0x1D	; 29
 266:	8e e2       	ldi	r24, 0x2E	; 46
 268:	91 e0       	ldi	r25, 0x01	; 1
 26a:	0e 94 c4 00 	call	0x188	; 0x188 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5writeEh>
 26e:	8e e2       	ldi	r24, 0x2E	; 46
 270:	91 e0       	ldi	r25, 0x01	; 1
 272:	0e 94 f4 00 	call	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4stopEv>
 276:	8e e2       	ldi	r24, 0x2E	; 46
 278:	91 e0       	ldi	r25, 0x01	; 1
 27a:	0e 94 bc 00 	call	0x178	; 0x178 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5startEv>
 27e:	63 ed       	ldi	r22, 0xD3	; 211
 280:	8e e2       	ldi	r24, 0x2E	; 46
 282:	91 e0       	ldi	r25, 0x01	; 1
 284:	0e 94 c4 00 	call	0x188	; 0x188 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE5writeEh>
 288:	61 e0       	ldi	r22, 0x01	; 1
 28a:	8e e2       	ldi	r24, 0x2E	; 46
 28c:	91 e0       	ldi	r25, 0x01	; 1
 28e:	0e 94 fc 00 	call	0x1f8	; 0x1f8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh>
 292:	18 82       	st	Y, r1
 294:	89 83       	std	Y+1, r24	; 0x01
 296:	61 e0       	ldi	r22, 0x01	; 1
 298:	8e e2       	ldi	r24, 0x2E	; 46
 29a:	91 e0       	ldi	r25, 0x01	; 1
 29c:	0e 94 fc 00 	call	0x1f8	; 0x1f8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh>
 2a0:	28 81       	ld	r18, Y
 2a2:	39 81       	ldd	r19, Y+1	; 0x01
 2a4:	28 2b       	or	r18, r24
 2a6:	39 83       	std	Y+1, r19	; 0x01
 2a8:	28 83       	st	Y, r18
 2aa:	61 e0       	ldi	r22, 0x01	; 1
 2ac:	8e e2       	ldi	r24, 0x2E	; 46
 2ae:	91 e0       	ldi	r25, 0x01	; 1
 2b0:	0e 94 fc 00 	call	0x1f8	; 0x1f8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh>
 2b4:	1a 82       	std	Y+2, r1	; 0x02
 2b6:	8b 83       	std	Y+3, r24	; 0x03
 2b8:	61 e0       	ldi	r22, 0x01	; 1
 2ba:	8e e2       	ldi	r24, 0x2E	; 46
 2bc:	91 e0       	ldi	r25, 0x01	; 1
 2be:	0e 94 fc 00 	call	0x1f8	; 0x1f8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh>
 2c2:	2a 81       	ldd	r18, Y+2	; 0x02
 2c4:	3b 81       	ldd	r19, Y+3	; 0x03
 2c6:	28 2b       	or	r18, r24
 2c8:	3b 83       	std	Y+3, r19	; 0x03
 2ca:	2a 83       	std	Y+2, r18	; 0x02
 2cc:	61 e0       	ldi	r22, 0x01	; 1
 2ce:	8e e2       	ldi	r24, 0x2E	; 46
 2d0:	91 e0       	ldi	r25, 0x01	; 1
 2d2:	0e 94 fc 00 	call	0x1f8	; 0x1f8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh>
 2d6:	1c 82       	std	Y+4, r1	; 0x04
 2d8:	8d 83       	std	Y+5, r24	; 0x05
 2da:	60 e0       	ldi	r22, 0x00	; 0
 2dc:	8e e2       	ldi	r24, 0x2E	; 46
 2de:	91 e0       	ldi	r25, 0x01	; 1
 2e0:	0e 94 fc 00 	call	0x1f8	; 0x1f8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4readEh>
 2e4:	2c 81       	ldd	r18, Y+4	; 0x04
 2e6:	3d 81       	ldd	r19, Y+5	; 0x05
 2e8:	28 2b       	or	r18, r24
 2ea:	3d 83       	std	Y+5, r19	; 0x05
 2ec:	2c 83       	std	Y+4, r18	; 0x04
 2ee:	8e e2       	ldi	r24, 0x2E	; 46
 2f0:	91 e0       	ldi	r25, 0x01	; 1
 2f2:	df 91       	pop	r29
 2f4:	cf 91       	pop	r28
 2f6:	0c 94 f4 00 	jmp	0x1e8	; 0x1e8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE4stopEv>

000002fa <_ZN6CUSARTC1Ev>:
 2fa:	10 92 c5 00 	sts	0x00C5, r1
 2fe:	87 e6       	ldi	r24, 0x67	; 103
 300:	80 93 c4 00 	sts	0x00C4, r24
 304:	e2 ec       	ldi	r30, 0xC2	; 194
 306:	f0 e0       	ldi	r31, 0x00	; 0
 308:	80 81       	ld	r24, Z
 30a:	86 60       	ori	r24, 0x06	; 6
 30c:	80 83       	st	Z, r24
 30e:	e1 ec       	ldi	r30, 0xC1	; 193
 310:	f0 e0       	ldi	r31, 0x00	; 0
 312:	80 81       	ld	r24, Z
 314:	88 61       	ori	r24, 0x18	; 24
 316:	80 83       	st	Z, r24
 318:	08 95       	ret

0000031a <_ZN6CUSARTD1Ev>:
 31a:	08 95       	ret

0000031c <_ZN6CUSART7putcharEc>:
 31c:	60 93 c6 00 	sts	0x00C6, r22
 320:	80 91 c0 00 	lds	r24, 0x00C0
 324:	85 fd       	sbrc	r24, 5
 326:	02 c0       	rjmp	.+4      	; 0x32c <_ZN6CUSART7putcharEc+0x10>
 328:	00 00       	nop
 32a:	fa cf       	rjmp	.-12     	; 0x320 <_ZN6CUSART7putcharEc+0x4>
 32c:	08 95       	ret

0000032e <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE15write_reg_16bitEhhj>:
 32e:	0f 93       	push	r16
 330:	1f 93       	push	r17
 332:	cf 93       	push	r28
 334:	df 93       	push	r29
 336:	00 d0       	rcall	.+0      	; 0x338 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE15write_reg_16bitEhhj+0xa>
 338:	00 d0       	rcall	.+0      	; 0x33a <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE15write_reg_16bitEhhj+0xc>
 33a:	cd b7       	in	r28, 0x3d	; 61
 33c:	de b7       	in	r29, 0x3e	; 62
 33e:	8c 01       	movw	r16, r24
 340:	dc 01       	movw	r26, r24
 342:	ed 91       	ld	r30, X+
 344:	fc 91       	ld	r31, X
 346:	01 90       	ld	r0, Z+
 348:	f0 81       	ld	r31, Z
 34a:	e0 2d       	mov	r30, r0
 34c:	2c 83       	std	Y+4, r18	; 0x04
 34e:	3b 83       	std	Y+3, r19	; 0x03
 350:	4a 83       	std	Y+2, r20	; 0x02
 352:	69 83       	std	Y+1, r22	; 0x01
 354:	09 95       	icall
 356:	d8 01       	movw	r26, r16
 358:	ed 91       	ld	r30, X+
 35a:	fc 91       	ld	r31, X
 35c:	04 80       	ldd	r0, Z+4	; 0x04
 35e:	f5 81       	ldd	r31, Z+5	; 0x05
 360:	e0 2d       	mov	r30, r0
 362:	69 81       	ldd	r22, Y+1	; 0x01
 364:	c8 01       	movw	r24, r16
 366:	09 95       	icall
 368:	d8 01       	movw	r26, r16
 36a:	ed 91       	ld	r30, X+
 36c:	fc 91       	ld	r31, X
 36e:	04 80       	ldd	r0, Z+4	; 0x04
 370:	f5 81       	ldd	r31, Z+5	; 0x05
 372:	e0 2d       	mov	r30, r0
 374:	4a 81       	ldd	r20, Y+2	; 0x02
 376:	64 2f       	mov	r22, r20
 378:	c8 01       	movw	r24, r16
 37a:	09 95       	icall
 37c:	d8 01       	movw	r26, r16
 37e:	ed 91       	ld	r30, X+
 380:	fc 91       	ld	r31, X
 382:	04 80       	ldd	r0, Z+4	; 0x04
 384:	f5 81       	ldd	r31, Z+5	; 0x05
 386:	e0 2d       	mov	r30, r0
 388:	3b 81       	ldd	r19, Y+3	; 0x03
 38a:	63 2f       	mov	r22, r19
 38c:	c8 01       	movw	r24, r16
 38e:	09 95       	icall
 390:	d8 01       	movw	r26, r16
 392:	ed 91       	ld	r30, X+
 394:	fc 91       	ld	r31, X
 396:	04 80       	ldd	r0, Z+4	; 0x04
 398:	f5 81       	ldd	r31, Z+5	; 0x05
 39a:	e0 2d       	mov	r30, r0
 39c:	2c 81       	ldd	r18, Y+4	; 0x04
 39e:	62 2f       	mov	r22, r18
 3a0:	c8 01       	movw	r24, r16
 3a2:	09 95       	icall
 3a4:	d8 01       	movw	r26, r16
 3a6:	ed 91       	ld	r30, X+
 3a8:	fc 91       	ld	r31, X
 3aa:	02 80       	ldd	r0, Z+2	; 0x02
 3ac:	f3 81       	ldd	r31, Z+3	; 0x03
 3ae:	e0 2d       	mov	r30, r0
 3b0:	c8 01       	movw	r24, r16
 3b2:	0f 90       	pop	r0
 3b4:	0f 90       	pop	r0
 3b6:	0f 90       	pop	r0
 3b8:	0f 90       	pop	r0
 3ba:	df 91       	pop	r29
 3bc:	cf 91       	pop	r28
 3be:	1f 91       	pop	r17
 3c0:	0f 91       	pop	r16
 3c2:	09 94       	ijmp

000003c4 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE15write_reg_multiEhhPhj>:
 3c4:	cf 92       	push	r12
 3c6:	df 92       	push	r13
 3c8:	ef 92       	push	r14
 3ca:	ff 92       	push	r15
 3cc:	0f 93       	push	r16
 3ce:	1f 93       	push	r17
 3d0:	cf 93       	push	r28
 3d2:	df 93       	push	r29
 3d4:	00 d0       	rcall	.+0      	; 0x3d6 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE15write_reg_multiEhhPhj+0x12>
 3d6:	00 d0       	rcall	.+0      	; 0x3d8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE15write_reg_multiEhhPhj+0x14>
 3d8:	cd b7       	in	r28, 0x3d	; 61
 3da:	de b7       	in	r29, 0x3e	; 62
 3dc:	6c 01       	movw	r12, r24
 3de:	dc 01       	movw	r26, r24
 3e0:	ed 91       	ld	r30, X+
 3e2:	fc 91       	ld	r31, X
 3e4:	01 90       	ld	r0, Z+
 3e6:	f0 81       	ld	r31, Z
 3e8:	e0 2d       	mov	r30, r0
 3ea:	2b 83       	std	Y+3, r18	; 0x03
 3ec:	3c 83       	std	Y+4, r19	; 0x04
 3ee:	4a 83       	std	Y+2, r20	; 0x02
 3f0:	69 83       	std	Y+1, r22	; 0x01
 3f2:	09 95       	icall
 3f4:	d6 01       	movw	r26, r12
 3f6:	ed 91       	ld	r30, X+
 3f8:	fc 91       	ld	r31, X
 3fa:	04 80       	ldd	r0, Z+4	; 0x04
 3fc:	f5 81       	ldd	r31, Z+5	; 0x05
 3fe:	e0 2d       	mov	r30, r0
 400:	69 81       	ldd	r22, Y+1	; 0x01
 402:	c6 01       	movw	r24, r12
 404:	09 95       	icall
 406:	d6 01       	movw	r26, r12
 408:	ed 91       	ld	r30, X+
 40a:	fc 91       	ld	r31, X
 40c:	04 80       	ldd	r0, Z+4	; 0x04
 40e:	f5 81       	ldd	r31, Z+5	; 0x05
 410:	e0 2d       	mov	r30, r0
 412:	4a 81       	ldd	r20, Y+2	; 0x02
 414:	64 2f       	mov	r22, r20
 416:	c6 01       	movw	r24, r12
 418:	09 95       	icall
 41a:	2b 81       	ldd	r18, Y+3	; 0x03
 41c:	e2 2e       	mov	r14, r18
 41e:	3c 81       	ldd	r19, Y+4	; 0x04
 420:	f3 2e       	mov	r15, r19
 422:	0e 0d       	add	r16, r14
 424:	1f 1d       	adc	r17, r15
 426:	d6 01       	movw	r26, r12
 428:	ed 91       	ld	r30, X+
 42a:	fc 91       	ld	r31, X
 42c:	e0 16       	cp	r14, r16
 42e:	f1 06       	cpc	r15, r17
 430:	49 f0       	breq	.+18     	; 0x444 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE15write_reg_multiEhhPhj+0x80>
 432:	d7 01       	movw	r26, r14
 434:	6d 91       	ld	r22, X+
 436:	7d 01       	movw	r14, r26
 438:	04 80       	ldd	r0, Z+4	; 0x04
 43a:	f5 81       	ldd	r31, Z+5	; 0x05
 43c:	e0 2d       	mov	r30, r0
 43e:	c6 01       	movw	r24, r12
 440:	09 95       	icall
 442:	f1 cf       	rjmp	.-30     	; 0x426 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE15write_reg_multiEhhPhj+0x62>
 444:	02 80       	ldd	r0, Z+2	; 0x02
 446:	f3 81       	ldd	r31, Z+3	; 0x03
 448:	e0 2d       	mov	r30, r0
 44a:	c6 01       	movw	r24, r12
 44c:	0f 90       	pop	r0
 44e:	0f 90       	pop	r0
 450:	0f 90       	pop	r0
 452:	0f 90       	pop	r0
 454:	df 91       	pop	r29
 456:	cf 91       	pop	r28
 458:	1f 91       	pop	r17
 45a:	0f 91       	pop	r16
 45c:	ff 90       	pop	r15
 45e:	ef 90       	pop	r14
 460:	df 90       	pop	r13
 462:	cf 90       	pop	r12
 464:	09 94       	ijmp

00000466 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE8read_regEhh>:
 466:	ef 92       	push	r14
 468:	ff 92       	push	r15
 46a:	1f 93       	push	r17
 46c:	cf 93       	push	r28
 46e:	df 93       	push	r29
 470:	1f 92       	push	r1
 472:	cd b7       	in	r28, 0x3d	; 61
 474:	de b7       	in	r29, 0x3e	; 62
 476:	7c 01       	movw	r14, r24
 478:	16 2f       	mov	r17, r22
 47a:	dc 01       	movw	r26, r24
 47c:	ed 91       	ld	r30, X+
 47e:	fc 91       	ld	r31, X
 480:	01 90       	ld	r0, Z+
 482:	f0 81       	ld	r31, Z
 484:	e0 2d       	mov	r30, r0
 486:	49 83       	std	Y+1, r20	; 0x01
 488:	09 95       	icall
 48a:	d7 01       	movw	r26, r14
 48c:	ed 91       	ld	r30, X+
 48e:	fc 91       	ld	r31, X
 490:	04 80       	ldd	r0, Z+4	; 0x04
 492:	f5 81       	ldd	r31, Z+5	; 0x05
 494:	e0 2d       	mov	r30, r0
 496:	61 2f       	mov	r22, r17
 498:	c7 01       	movw	r24, r14
 49a:	09 95       	icall
 49c:	d7 01       	movw	r26, r14
 49e:	ed 91       	ld	r30, X+
 4a0:	fc 91       	ld	r31, X
 4a2:	04 80       	ldd	r0, Z+4	; 0x04
 4a4:	f5 81       	ldd	r31, Z+5	; 0x05
 4a6:	e0 2d       	mov	r30, r0
 4a8:	49 81       	ldd	r20, Y+1	; 0x01
 4aa:	64 2f       	mov	r22, r20
 4ac:	c7 01       	movw	r24, r14
 4ae:	09 95       	icall
 4b0:	d7 01       	movw	r26, r14
 4b2:	ed 91       	ld	r30, X+
 4b4:	fc 91       	ld	r31, X
 4b6:	01 90       	ld	r0, Z+
 4b8:	f0 81       	ld	r31, Z
 4ba:	e0 2d       	mov	r30, r0
 4bc:	c7 01       	movw	r24, r14
 4be:	09 95       	icall
 4c0:	d7 01       	movw	r26, r14
 4c2:	ed 91       	ld	r30, X+
 4c4:	fc 91       	ld	r31, X
 4c6:	61 2f       	mov	r22, r17
 4c8:	61 60       	ori	r22, 0x01	; 1
 4ca:	04 80       	ldd	r0, Z+4	; 0x04
 4cc:	f5 81       	ldd	r31, Z+5	; 0x05
 4ce:	e0 2d       	mov	r30, r0
 4d0:	c7 01       	movw	r24, r14
 4d2:	09 95       	icall
 4d4:	d7 01       	movw	r26, r14
 4d6:	ed 91       	ld	r30, X+
 4d8:	fc 91       	ld	r31, X
 4da:	06 80       	ldd	r0, Z+6	; 0x06
 4dc:	f7 81       	ldd	r31, Z+7	; 0x07
 4de:	e0 2d       	mov	r30, r0
 4e0:	60 e0       	ldi	r22, 0x00	; 0
 4e2:	c7 01       	movw	r24, r14
 4e4:	09 95       	icall
 4e6:	18 2f       	mov	r17, r24
 4e8:	d7 01       	movw	r26, r14
 4ea:	ed 91       	ld	r30, X+
 4ec:	fc 91       	ld	r31, X
 4ee:	02 80       	ldd	r0, Z+2	; 0x02
 4f0:	f3 81       	ldd	r31, Z+3	; 0x03
 4f2:	e0 2d       	mov	r30, r0
 4f4:	c7 01       	movw	r24, r14
 4f6:	09 95       	icall
 4f8:	81 2f       	mov	r24, r17
 4fa:	0f 90       	pop	r0
 4fc:	df 91       	pop	r29
 4fe:	cf 91       	pop	r28
 500:	1f 91       	pop	r17
 502:	ff 90       	pop	r15
 504:	ef 90       	pop	r14
 506:	08 95       	ret

00000508 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE14read_reg_16bitEhh>:
 508:	ef 92       	push	r14
 50a:	ff 92       	push	r15
 50c:	0f 93       	push	r16
 50e:	1f 93       	push	r17
 510:	cf 93       	push	r28
 512:	df 93       	push	r29
 514:	1f 92       	push	r1
 516:	cd b7       	in	r28, 0x3d	; 61
 518:	de b7       	in	r29, 0x3e	; 62
 51a:	7c 01       	movw	r14, r24
 51c:	16 2f       	mov	r17, r22
 51e:	dc 01       	movw	r26, r24
 520:	ed 91       	ld	r30, X+
 522:	fc 91       	ld	r31, X
 524:	01 90       	ld	r0, Z+
 526:	f0 81       	ld	r31, Z
 528:	e0 2d       	mov	r30, r0
 52a:	49 83       	std	Y+1, r20	; 0x01
 52c:	09 95       	icall
 52e:	d7 01       	movw	r26, r14
 530:	ed 91       	ld	r30, X+
 532:	fc 91       	ld	r31, X
 534:	04 80       	ldd	r0, Z+4	; 0x04
 536:	f5 81       	ldd	r31, Z+5	; 0x05
 538:	e0 2d       	mov	r30, r0
 53a:	61 2f       	mov	r22, r17
 53c:	c7 01       	movw	r24, r14
 53e:	09 95       	icall
 540:	d7 01       	movw	r26, r14
 542:	ed 91       	ld	r30, X+
 544:	fc 91       	ld	r31, X
 546:	04 80       	ldd	r0, Z+4	; 0x04
 548:	f5 81       	ldd	r31, Z+5	; 0x05
 54a:	e0 2d       	mov	r30, r0
 54c:	49 81       	ldd	r20, Y+1	; 0x01
 54e:	64 2f       	mov	r22, r20
 550:	c7 01       	movw	r24, r14
 552:	09 95       	icall
 554:	d7 01       	movw	r26, r14
 556:	ed 91       	ld	r30, X+
 558:	fc 91       	ld	r31, X
 55a:	01 90       	ld	r0, Z+
 55c:	f0 81       	ld	r31, Z
 55e:	e0 2d       	mov	r30, r0
 560:	c7 01       	movw	r24, r14
 562:	09 95       	icall
 564:	d7 01       	movw	r26, r14
 566:	ed 91       	ld	r30, X+
 568:	fc 91       	ld	r31, X
 56a:	61 2f       	mov	r22, r17
 56c:	61 60       	ori	r22, 0x01	; 1
 56e:	04 80       	ldd	r0, Z+4	; 0x04
 570:	f5 81       	ldd	r31, Z+5	; 0x05
 572:	e0 2d       	mov	r30, r0
 574:	c7 01       	movw	r24, r14
 576:	09 95       	icall
 578:	d7 01       	movw	r26, r14
 57a:	ed 91       	ld	r30, X+
 57c:	fc 91       	ld	r31, X
 57e:	06 80       	ldd	r0, Z+6	; 0x06
 580:	f7 81       	ldd	r31, Z+7	; 0x07
 582:	e0 2d       	mov	r30, r0
 584:	61 e0       	ldi	r22, 0x01	; 1
 586:	c7 01       	movw	r24, r14
 588:	09 95       	icall
 58a:	08 2f       	mov	r16, r24
 58c:	10 e0       	ldi	r17, 0x00	; 0
 58e:	10 2f       	mov	r17, r16
 590:	00 27       	eor	r16, r16
 592:	d7 01       	movw	r26, r14
 594:	ed 91       	ld	r30, X+
 596:	fc 91       	ld	r31, X
 598:	06 80       	ldd	r0, Z+6	; 0x06
 59a:	f7 81       	ldd	r31, Z+7	; 0x07
 59c:	e0 2d       	mov	r30, r0
 59e:	60 e0       	ldi	r22, 0x00	; 0
 5a0:	c7 01       	movw	r24, r14
 5a2:	09 95       	icall
 5a4:	08 2b       	or	r16, r24
 5a6:	d7 01       	movw	r26, r14
 5a8:	ed 91       	ld	r30, X+
 5aa:	fc 91       	ld	r31, X
 5ac:	02 80       	ldd	r0, Z+2	; 0x02
 5ae:	f3 81       	ldd	r31, Z+3	; 0x03
 5b0:	e0 2d       	mov	r30, r0
 5b2:	c7 01       	movw	r24, r14
 5b4:	09 95       	icall
 5b6:	c8 01       	movw	r24, r16
 5b8:	0f 90       	pop	r0
 5ba:	df 91       	pop	r29
 5bc:	cf 91       	pop	r28
 5be:	1f 91       	pop	r17
 5c0:	0f 91       	pop	r16
 5c2:	ff 90       	pop	r15
 5c4:	ef 90       	pop	r14
 5c6:	08 95       	ret

000005c8 <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE14read_reg_multiEhhPhj>:
 5c8:	cf 92       	push	r12
 5ca:	df 92       	push	r13
 5cc:	ef 92       	push	r14
 5ce:	ff 92       	push	r15
 5d0:	0f 93       	push	r16
 5d2:	1f 93       	push	r17
 5d4:	cf 93       	push	r28
 5d6:	df 93       	push	r29
 5d8:	00 d0       	rcall	.+0      	; 0x5da <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE14read_reg_multiEhhPhj+0x12>
 5da:	1f 92       	push	r1
 5dc:	cd b7       	in	r28, 0x3d	; 61
 5de:	de b7       	in	r29, 0x3e	; 62
 5e0:	6c 01       	movw	r12, r24
 5e2:	f6 2e       	mov	r15, r22
 5e4:	dc 01       	movw	r26, r24
 5e6:	ed 91       	ld	r30, X+
 5e8:	fc 91       	ld	r31, X
 5ea:	01 90       	ld	r0, Z+
 5ec:	f0 81       	ld	r31, Z
 5ee:	e0 2d       	mov	r30, r0
 5f0:	2a 83       	std	Y+2, r18	; 0x02
 5f2:	3b 83       	std	Y+3, r19	; 0x03
 5f4:	49 83       	std	Y+1, r20	; 0x01
 5f6:	09 95       	icall
 5f8:	d6 01       	movw	r26, r12
 5fa:	ed 91       	ld	r30, X+
 5fc:	fc 91       	ld	r31, X
 5fe:	04 80       	ldd	r0, Z+4	; 0x04
 600:	f5 81       	ldd	r31, Z+5	; 0x05
 602:	e0 2d       	mov	r30, r0
 604:	6f 2d       	mov	r22, r15
 606:	c6 01       	movw	r24, r12
 608:	09 95       	icall
 60a:	d6 01       	movw	r26, r12
 60c:	ed 91       	ld	r30, X+
 60e:	fc 91       	ld	r31, X
 610:	04 80       	ldd	r0, Z+4	; 0x04
 612:	f5 81       	ldd	r31, Z+5	; 0x05
 614:	e0 2d       	mov	r30, r0
 616:	49 81       	ldd	r20, Y+1	; 0x01
 618:	64 2f       	mov	r22, r20
 61a:	c6 01       	movw	r24, r12
 61c:	09 95       	icall
 61e:	d6 01       	movw	r26, r12
 620:	ed 91       	ld	r30, X+
 622:	fc 91       	ld	r31, X
 624:	01 90       	ld	r0, Z+
 626:	f0 81       	ld	r31, Z
 628:	e0 2d       	mov	r30, r0
 62a:	c6 01       	movw	r24, r12
 62c:	09 95       	icall
 62e:	d6 01       	movw	r26, r12
 630:	ed 91       	ld	r30, X+
 632:	fc 91       	ld	r31, X
 634:	6f 2d       	mov	r22, r15
 636:	61 60       	ori	r22, 0x01	; 1
 638:	04 80       	ldd	r0, Z+4	; 0x04
 63a:	f5 81       	ldd	r31, Z+5	; 0x05
 63c:	e0 2d       	mov	r30, r0
 63e:	c6 01       	movw	r24, r12
 640:	09 95       	icall
 642:	2a 81       	ldd	r18, Y+2	; 0x02
 644:	e2 2e       	mov	r14, r18
 646:	3b 81       	ldd	r19, Y+3	; 0x03
 648:	f3 2e       	mov	r15, r19
 64a:	0e 0d       	add	r16, r14
 64c:	1f 1d       	adc	r17, r15
 64e:	d6 01       	movw	r26, r12
 650:	ed 91       	ld	r30, X+
 652:	fc 91       	ld	r31, X
 654:	e0 16       	cp	r14, r16
 656:	f1 06       	cpc	r15, r17
 658:	51 f0       	breq	.+20     	; 0x66e <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE14read_reg_multiEhhPhj+0xa6>
 65a:	06 80       	ldd	r0, Z+6	; 0x06
 65c:	f7 81       	ldd	r31, Z+7	; 0x07
 65e:	e0 2d       	mov	r30, r0
 660:	61 e0       	ldi	r22, 0x01	; 1
 662:	c6 01       	movw	r24, r12
 664:	09 95       	icall
 666:	f7 01       	movw	r30, r14
 668:	81 93       	st	Z+, r24
 66a:	7f 01       	movw	r14, r30
 66c:	f0 cf       	rjmp	.-32     	; 0x64e <_ZN4TI2CILh2ELh0ELh1ELh50ELh2EE14read_reg_multiEhhPhj+0x86>
 66e:	02 80       	ldd	r0, Z+2	; 0x02
 670:	f3 81       	ldd	r31, Z+3	; 0x03
 672:	e0 2d       	mov	r30, r0
 674:	c6 01       	movw	r24, r12
 676:	0f 90       	pop	r0
 678:	0f 90       	pop	r0
 67a:	0f 90       	pop	r0
 67c:	df 91       	pop	r29
 67e:	cf 91       	pop	r28
 680:	1f 91       	pop	r17
 682:	0f 91       	pop	r16
 684:	ff 90       	pop	r15
 686:	ef 90       	pop	r14
 688:	df 90       	pop	r13
 68a:	cf 90       	pop	r12
 68c:	09 94       	ijmp

0000068e <_ZN5TGpioILh2ELh1ELh1EE8set_modeEh.isra.2>:
 68e:	88 23       	and	r24, r24
 690:	21 f0       	breq	.+8      	; 0x69a <_ZN5TGpioILh2ELh1ELh1EE8set_modeEh.isra.2+0xc>
 692:	39 98       	cbi	0x07, 1	; 7
 694:	82 30       	cpi	r24, 0x02	; 2
 696:	19 f0       	breq	.+6      	; 0x69e <_ZN5TGpioILh2ELh1ELh1EE8set_modeEh.isra.2+0x10>
 698:	08 95       	ret
 69a:	39 9a       	sbi	0x07, 1	; 7
 69c:	08 95       	ret
 69e:	41 9a       	sbi	0x08, 1	; 8
 6a0:	08 95       	ret

000006a2 <_GLOBAL__sub_I_i2c>:
 6a2:	84 e0       	ldi	r24, 0x04	; 4
 6a4:	91 e0       	ldi	r25, 0x01	; 1
 6a6:	90 93 2f 01 	sts	0x012F, r25
 6aa:	80 93 2e 01 	sts	0x012E, r24
 6ae:	38 98       	cbi	0x07, 0	; 7
 6b0:	81 e0       	ldi	r24, 0x01	; 1
 6b2:	0e 94 47 03 	call	0x68e	; 0x68e <_ZN5TGpioILh2ELh1ELh1EE8set_modeEh.isra.2>
 6b6:	40 98       	cbi	0x08, 0	; 8
 6b8:	41 98       	cbi	0x08, 1	; 8
 6ba:	08 95       	ret

000006bc <_Z5blinkv>:
 6bc:	80 91 32 01 	lds	r24, 0x0132
 6c0:	90 91 33 01 	lds	r25, 0x0133
 6c4:	00 97       	sbiw	r24, 0x00	; 0
 6c6:	19 f0       	breq	.+6      	; 0x6ce <_Z5blinkv+0x12>
 6c8:	01 97       	sbiw	r24, 0x01	; 1
 6ca:	49 f0       	breq	.+18     	; 0x6de <_Z5blinkv+0x22>
 6cc:	08 95       	ret
 6ce:	2d 9a       	sbi	0x05, 5	; 5
 6d0:	81 e0       	ldi	r24, 0x01	; 1
 6d2:	90 e0       	ldi	r25, 0x00	; 0
 6d4:	90 93 33 01 	sts	0x0133, r25
 6d8:	80 93 32 01 	sts	0x0132, r24
 6dc:	08 95       	ret
 6de:	2d 98       	cbi	0x05, 5	; 5
 6e0:	10 92 33 01 	sts	0x0133, r1
 6e4:	10 92 32 01 	sts	0x0132, r1
 6e8:	08 95       	ret

000006ea <main>:
 6ea:	cf 93       	push	r28
 6ec:	df 93       	push	r29
 6ee:	00 d0       	rcall	.+0      	; 0x6f0 <main+0x6>
 6f0:	00 d0       	rcall	.+0      	; 0x6f2 <main+0x8>
 6f2:	00 d0       	rcall	.+0      	; 0x6f4 <main+0xa>
 6f4:	cd b7       	in	r28, 0x3d	; 61
 6f6:	de b7       	in	r29, 0x3e	; 62
 6f8:	ce 01       	movw	r24, r28
 6fa:	01 96       	adiw	r24, 0x01	; 1
 6fc:	0e 94 a7 00 	call	0x14e	; 0x14e <_ZN8CITG3200C1Ev>
 700:	20 e0       	ldi	r18, 0x00	; 0
 702:	42 e3       	ldi	r20, 0x32	; 50
 704:	50 e0       	ldi	r21, 0x00	; 0
 706:	6e e5       	ldi	r22, 0x5E	; 94
 708:	73 e0       	ldi	r23, 0x03	; 3
 70a:	88 e7       	ldi	r24, 0x78	; 120
 70c:	91 e0       	ldi	r25, 0x01	; 1
 70e:	0e 94 ef 03 	call	0x7de	; 0x7de <_ZN6CTimer8add_taskEPFvvEjb>
 712:	88 e1       	ldi	r24, 0x18	; 24
 714:	91 e0       	ldi	r25, 0x01	; 1
 716:	9f 93       	push	r25
 718:	8f 93       	push	r24
 71a:	89 e7       	ldi	r24, 0x79	; 121
 71c:	91 e0       	ldi	r25, 0x01	; 1
 71e:	9f 93       	push	r25
 720:	8f 93       	push	r24
 722:	0e 94 e1 05 	call	0xbc2	; 0xbc2 <_ZN9CTerminal6printfEPKcz>
 726:	0f 90       	pop	r0
 728:	0f 90       	pop	r0
 72a:	0f 90       	pop	r0
 72c:	0f 90       	pop	r0
 72e:	83 e2       	ldi	r24, 0x23	; 35
 730:	e8 2e       	mov	r14, r24
 732:	81 e0       	ldi	r24, 0x01	; 1
 734:	f8 2e       	mov	r15, r24
 736:	09 e7       	ldi	r16, 0x79	; 121
 738:	11 e0       	ldi	r17, 0x01	; 1
 73a:	ce 01       	movw	r24, r28
 73c:	01 96       	adiw	r24, 0x01	; 1
 73e:	0e 94 26 01 	call	0x24c	; 0x24c <_ZN8CITG32004readEv>
 742:	8e 81       	ldd	r24, Y+6	; 0x06
 744:	8f 93       	push	r24
 746:	8d 81       	ldd	r24, Y+5	; 0x05
 748:	8f 93       	push	r24
 74a:	8c 81       	ldd	r24, Y+4	; 0x04
 74c:	8f 93       	push	r24
 74e:	8b 81       	ldd	r24, Y+3	; 0x03
 750:	8f 93       	push	r24
 752:	8a 81       	ldd	r24, Y+2	; 0x02
 754:	8f 93       	push	r24
 756:	89 81       	ldd	r24, Y+1	; 0x01
 758:	8f 93       	push	r24
 75a:	ff 92       	push	r15
 75c:	ef 92       	push	r14
 75e:	1f 93       	push	r17
 760:	0f 93       	push	r16
 762:	0e 94 e1 05 	call	0xbc2	; 0xbc2 <_ZN9CTerminal6printfEPKcz>
 766:	44 e6       	ldi	r20, 0x64	; 100
 768:	50 e0       	ldi	r21, 0x00	; 0
 76a:	60 e0       	ldi	r22, 0x00	; 0
 76c:	70 e0       	ldi	r23, 0x00	; 0
 76e:	88 e7       	ldi	r24, 0x78	; 120
 770:	91 e0       	ldi	r25, 0x01	; 1
 772:	0e 94 34 04 	call	0x868	; 0x868 <_ZN6CTimer8delay_msEm>
 776:	0f b6       	in	r0, 0x3f	; 63
 778:	f8 94       	cli
 77a:	de bf       	out	0x3e, r29	; 62
 77c:	0f be       	out	0x3f, r0	; 63
 77e:	cd bf       	out	0x3d, r28	; 61
 780:	dc cf       	rjmp	.-72     	; 0x73a <main+0x50>

00000782 <_GLOBAL__sub_I_led1>:
 782:	25 9a       	sbi	0x04, 5	; 4
 784:	08 95       	ret

00000786 <_ZN6CTimerC1Ev>:
 786:	80 e0       	ldi	r24, 0x00	; 0
 788:	90 e0       	ldi	r25, 0x00	; 0
 78a:	fc 01       	movw	r30, r24
 78c:	23 e0       	ldi	r18, 0x03	; 3
 78e:	ee 0f       	add	r30, r30
 790:	ff 1f       	adc	r31, r31
 792:	2a 95       	dec	r18
 794:	e1 f7       	brne	.-8      	; 0x78e <_ZN6CTimerC1Ev+0x8>
 796:	ec 5c       	subi	r30, 0xCC	; 204
 798:	fe 4f       	sbci	r31, 0xFE	; 254
 79a:	11 82       	std	Z+1, r1	; 0x01
 79c:	10 82       	st	Z, r1
 79e:	13 82       	std	Z+3, r1	; 0x03
 7a0:	12 82       	std	Z+2, r1	; 0x02
 7a2:	15 82       	std	Z+5, r1	; 0x05
 7a4:	14 82       	std	Z+4, r1	; 0x04
 7a6:	16 82       	std	Z+6, r1	; 0x06
 7a8:	17 82       	std	Z+7, r1	; 0x07
 7aa:	01 96       	adiw	r24, 0x01	; 1
 7ac:	88 30       	cpi	r24, 0x08	; 8
 7ae:	91 05       	cpc	r25, r1
 7b0:	61 f7       	brne	.-40     	; 0x78a <_ZN6CTimerC1Ev+0x4>
 7b2:	10 92 74 01 	sts	0x0174, r1
 7b6:	10 92 75 01 	sts	0x0175, r1
 7ba:	10 92 76 01 	sts	0x0176, r1
 7be:	10 92 77 01 	sts	0x0177, r1
 7c2:	84 b5       	in	r24, 0x24	; 36
 7c4:	82 60       	ori	r24, 0x02	; 2
 7c6:	84 bd       	out	0x24, r24	; 36
 7c8:	89 ef       	ldi	r24, 0xF9	; 249
 7ca:	87 bd       	out	0x27, r24	; 39
 7cc:	83 e0       	ldi	r24, 0x03	; 3
 7ce:	85 bd       	out	0x25, r24	; 37
 7d0:	80 91 6e 00 	lds	r24, 0x006E
 7d4:	82 60       	ori	r24, 0x02	; 2
 7d6:	80 93 6e 00 	sts	0x006E, r24
 7da:	78 94       	sei
 7dc:	08 95       	ret

000007de <_ZN6CTimer8add_taskEPFvvEjb>:
 7de:	80 e0       	ldi	r24, 0x00	; 0
 7e0:	90 e0       	ldi	r25, 0x00	; 0
 7e2:	ef ef       	ldi	r30, 0xFF	; 255
 7e4:	dc 01       	movw	r26, r24
 7e6:	33 e0       	ldi	r19, 0x03	; 3
 7e8:	aa 0f       	add	r26, r26
 7ea:	bb 1f       	adc	r27, r27
 7ec:	3a 95       	dec	r19
 7ee:	e1 f7       	brne	.-8      	; 0x7e8 <_ZN6CTimer8add_taskEPFvvEjb+0xa>
 7f0:	ac 5c       	subi	r26, 0xCC	; 204
 7f2:	be 4f       	sbci	r27, 0xFE	; 254
 7f4:	0d 90       	ld	r0, X+
 7f6:	bc 91       	ld	r27, X
 7f8:	a0 2d       	mov	r26, r0
 7fa:	ab 2b       	or	r26, r27
 7fc:	09 f4       	brne	.+2      	; 0x800 <_ZN6CTimer8add_taskEPFvvEjb+0x22>
 7fe:	e8 2f       	mov	r30, r24
 800:	01 96       	adiw	r24, 0x01	; 1
 802:	88 30       	cpi	r24, 0x08	; 8
 804:	91 05       	cpc	r25, r1
 806:	71 f7       	brne	.-36     	; 0x7e4 <_ZN6CTimer8add_taskEPFvvEjb+0x6>
 808:	ef 3f       	cpi	r30, 0xFF	; 255
 80a:	71 f0       	breq	.+28     	; 0x828 <_ZN6CTimer8add_taskEPFvvEjb+0x4a>
 80c:	88 e0       	ldi	r24, 0x08	; 8
 80e:	e8 02       	muls	r30, r24
 810:	f0 01       	movw	r30, r0
 812:	11 24       	eor	r1, r1
 814:	ec 5c       	subi	r30, 0xCC	; 204
 816:	fe 4f       	sbci	r31, 0xFE	; 254
 818:	71 83       	std	Z+1, r23	; 0x01
 81a:	60 83       	st	Z, r22
 81c:	53 83       	std	Z+3, r21	; 0x03
 81e:	42 83       	std	Z+2, r20	; 0x02
 820:	55 83       	std	Z+5, r21	; 0x05
 822:	44 83       	std	Z+4, r20	; 0x04
 824:	16 82       	std	Z+6, r1	; 0x06
 826:	27 83       	std	Z+7, r18	; 0x07
 828:	08 95       	ret

0000082a <_ZN6CTimer8get_timeEv>:
 82a:	cf 93       	push	r28
 82c:	df 93       	push	r29
 82e:	00 d0       	rcall	.+0      	; 0x830 <_ZN6CTimer8get_timeEv+0x6>
 830:	00 d0       	rcall	.+0      	; 0x832 <_ZN6CTimer8get_timeEv+0x8>
 832:	cd b7       	in	r28, 0x3d	; 61
 834:	de b7       	in	r29, 0x3e	; 62
 836:	f8 94       	cli
 838:	80 91 74 01 	lds	r24, 0x0174
 83c:	90 91 75 01 	lds	r25, 0x0175
 840:	a0 91 76 01 	lds	r26, 0x0176
 844:	b0 91 77 01 	lds	r27, 0x0177
 848:	89 83       	std	Y+1, r24	; 0x01
 84a:	9a 83       	std	Y+2, r25	; 0x02
 84c:	ab 83       	std	Y+3, r26	; 0x03
 84e:	bc 83       	std	Y+4, r27	; 0x04
 850:	78 94       	sei
 852:	69 81       	ldd	r22, Y+1	; 0x01
 854:	7a 81       	ldd	r23, Y+2	; 0x02
 856:	8b 81       	ldd	r24, Y+3	; 0x03
 858:	9c 81       	ldd	r25, Y+4	; 0x04
 85a:	0f 90       	pop	r0
 85c:	0f 90       	pop	r0
 85e:	0f 90       	pop	r0
 860:	0f 90       	pop	r0
 862:	df 91       	pop	r29
 864:	cf 91       	pop	r28
 866:	08 95       	ret

00000868 <_ZN6CTimer8delay_msEm>:
 868:	cf 92       	push	r12
 86a:	df 92       	push	r13
 86c:	ef 92       	push	r14
 86e:	ff 92       	push	r15
 870:	0f 93       	push	r16
 872:	1f 93       	push	r17
 874:	cf 93       	push	r28
 876:	df 93       	push	r29
 878:	00 d0       	rcall	.+0      	; 0x87a <_ZN6CTimer8delay_msEm+0x12>
 87a:	00 d0       	rcall	.+0      	; 0x87c <_ZN6CTimer8delay_msEm+0x14>
 87c:	cd b7       	in	r28, 0x3d	; 61
 87e:	de b7       	in	r29, 0x3e	; 62
 880:	8c 01       	movw	r16, r24
 882:	6a 01       	movw	r12, r20
 884:	7b 01       	movw	r14, r22
 886:	0e 94 15 04 	call	0x82a	; 0x82a <_ZN6CTimer8get_timeEv>
 88a:	c6 0e       	add	r12, r22
 88c:	d7 1e       	adc	r13, r23
 88e:	e8 1e       	adc	r14, r24
 890:	f9 1e       	adc	r15, r25
 892:	c9 82       	std	Y+1, r12	; 0x01
 894:	da 82       	std	Y+2, r13	; 0x02
 896:	eb 82       	std	Y+3, r14	; 0x03
 898:	fc 82       	std	Y+4, r15	; 0x04
 89a:	c8 01       	movw	r24, r16
 89c:	0e 94 15 04 	call	0x82a	; 0x82a <_ZN6CTimer8get_timeEv>
 8a0:	c9 80       	ldd	r12, Y+1	; 0x01
 8a2:	da 80       	ldd	r13, Y+2	; 0x02
 8a4:	eb 80       	ldd	r14, Y+3	; 0x03
 8a6:	fc 80       	ldd	r15, Y+4	; 0x04
 8a8:	6c 15       	cp	r22, r12
 8aa:	7d 05       	cpc	r23, r13
 8ac:	8e 05       	cpc	r24, r14
 8ae:	9f 05       	cpc	r25, r15
 8b0:	10 f4       	brcc	.+4      	; 0x8b6 <_ZN6CTimer8delay_msEm+0x4e>
 8b2:	00 00       	nop
 8b4:	f2 cf       	rjmp	.-28     	; 0x89a <_ZN6CTimer8delay_msEm+0x32>
 8b6:	0f 90       	pop	r0
 8b8:	0f 90       	pop	r0
 8ba:	0f 90       	pop	r0
 8bc:	0f 90       	pop	r0
 8be:	df 91       	pop	r29
 8c0:	cf 91       	pop	r28
 8c2:	1f 91       	pop	r17
 8c4:	0f 91       	pop	r16
 8c6:	ff 90       	pop	r15
 8c8:	ef 90       	pop	r14
 8ca:	df 90       	pop	r13
 8cc:	cf 90       	pop	r12
 8ce:	08 95       	ret

000008d0 <__vector_14>:
 8d0:	1f 92       	push	r1
 8d2:	0f 92       	push	r0
 8d4:	0f b6       	in	r0, 0x3f	; 63
 8d6:	0f 92       	push	r0
 8d8:	11 24       	eor	r1, r1
 8da:	2f 93       	push	r18
 8dc:	3f 93       	push	r19
 8de:	4f 93       	push	r20
 8e0:	5f 93       	push	r21
 8e2:	6f 93       	push	r22
 8e4:	7f 93       	push	r23
 8e6:	8f 93       	push	r24
 8e8:	9f 93       	push	r25
 8ea:	af 93       	push	r26
 8ec:	bf 93       	push	r27
 8ee:	cf 93       	push	r28
 8f0:	df 93       	push	r29
 8f2:	ef 93       	push	r30
 8f4:	ff 93       	push	r31
 8f6:	c0 e0       	ldi	r28, 0x00	; 0
 8f8:	d0 e0       	ldi	r29, 0x00	; 0
 8fa:	ce 01       	movw	r24, r28
 8fc:	23 e0       	ldi	r18, 0x03	; 3
 8fe:	88 0f       	add	r24, r24
 900:	99 1f       	adc	r25, r25
 902:	2a 95       	dec	r18
 904:	e1 f7       	brne	.-8      	; 0x8fe <__vector_14+0x2e>
 906:	fc 01       	movw	r30, r24
 908:	ec 5c       	subi	r30, 0xCC	; 204
 90a:	fe 4f       	sbci	r31, 0xFE	; 254
 90c:	24 81       	ldd	r18, Z+4	; 0x04
 90e:	35 81       	ldd	r19, Z+5	; 0x05
 910:	23 2b       	or	r18, r19
 912:	31 f0       	breq	.+12     	; 0x920 <__stack+0x21>
 914:	84 81       	ldd	r24, Z+4	; 0x04
 916:	95 81       	ldd	r25, Z+5	; 0x05
 918:	01 97       	sbiw	r24, 0x01	; 1
 91a:	95 83       	std	Z+5, r25	; 0x05
 91c:	84 83       	std	Z+4, r24	; 0x04
 91e:	18 c0       	rjmp	.+48     	; 0x950 <__stack+0x51>
 920:	22 81       	ldd	r18, Z+2	; 0x02
 922:	33 81       	ldd	r19, Z+3	; 0x03
 924:	35 83       	std	Z+5, r19	; 0x05
 926:	24 83       	std	Z+4, r18	; 0x04
 928:	26 81       	ldd	r18, Z+6	; 0x06
 92a:	2f 3f       	cpi	r18, 0xFF	; 255
 92c:	19 f0       	breq	.+6      	; 0x934 <__stack+0x35>
 92e:	26 81       	ldd	r18, Z+6	; 0x06
 930:	2f 5f       	subi	r18, 0xFF	; 255
 932:	26 83       	std	Z+6, r18	; 0x06
 934:	fc 01       	movw	r30, r24
 936:	ec 5c       	subi	r30, 0xCC	; 204
 938:	fe 4f       	sbci	r31, 0xFE	; 254
 93a:	87 81       	ldd	r24, Z+7	; 0x07
 93c:	81 11       	cpse	r24, r1
 93e:	08 c0       	rjmp	.+16     	; 0x950 <__stack+0x51>
 940:	80 81       	ld	r24, Z
 942:	91 81       	ldd	r25, Z+1	; 0x01
 944:	89 2b       	or	r24, r25
 946:	21 f0       	breq	.+8      	; 0x950 <__stack+0x51>
 948:	01 90       	ld	r0, Z+
 94a:	f0 81       	ld	r31, Z
 94c:	e0 2d       	mov	r30, r0
 94e:	09 95       	icall
 950:	21 96       	adiw	r28, 0x01	; 1
 952:	c8 30       	cpi	r28, 0x08	; 8
 954:	d1 05       	cpc	r29, r1
 956:	89 f6       	brne	.-94     	; 0x8fa <__vector_14+0x2a>
 958:	80 91 74 01 	lds	r24, 0x0174
 95c:	90 91 75 01 	lds	r25, 0x0175
 960:	a0 91 76 01 	lds	r26, 0x0176
 964:	b0 91 77 01 	lds	r27, 0x0177
 968:	01 96       	adiw	r24, 0x01	; 1
 96a:	a1 1d       	adc	r26, r1
 96c:	b1 1d       	adc	r27, r1
 96e:	80 93 74 01 	sts	0x0174, r24
 972:	90 93 75 01 	sts	0x0175, r25
 976:	a0 93 76 01 	sts	0x0176, r26
 97a:	b0 93 77 01 	sts	0x0177, r27
 97e:	ff 91       	pop	r31
 980:	ef 91       	pop	r30
 982:	df 91       	pop	r29
 984:	cf 91       	pop	r28
 986:	bf 91       	pop	r27
 988:	af 91       	pop	r26
 98a:	9f 91       	pop	r25
 98c:	8f 91       	pop	r24
 98e:	7f 91       	pop	r23
 990:	6f 91       	pop	r22
 992:	5f 91       	pop	r21
 994:	4f 91       	pop	r20
 996:	3f 91       	pop	r19
 998:	2f 91       	pop	r18
 99a:	0f 90       	pop	r0
 99c:	0f be       	out	0x3f, r0	; 63
 99e:	0f 90       	pop	r0
 9a0:	1f 90       	pop	r1
 9a2:	18 95       	reti

000009a4 <_GLOBAL__sub_I_timer>:
 9a4:	88 e7       	ldi	r24, 0x78	; 120
 9a6:	91 e0       	ldi	r25, 0x01	; 1
 9a8:	0c 94 c3 03 	jmp	0x786	; 0x786 <_ZN6CTimerC1Ev>

000009ac <_ZN9CTerminal4putsEPc>:
 9ac:	0f 93       	push	r16
 9ae:	1f 93       	push	r17
 9b0:	cf 93       	push	r28
 9b2:	df 93       	push	r29
 9b4:	8c 01       	movw	r16, r24
 9b6:	eb 01       	movw	r28, r22
 9b8:	69 91       	ld	r22, Y+
 9ba:	66 23       	and	r22, r22
 9bc:	21 f0       	breq	.+8      	; 0x9c6 <_ZN9CTerminal4putsEPc+0x1a>
 9be:	c8 01       	movw	r24, r16
 9c0:	0e 94 8e 01 	call	0x31c	; 0x31c <_ZN6CUSART7putcharEc>
 9c4:	f9 cf       	rjmp	.-14     	; 0x9b8 <_ZN9CTerminal4putsEPc+0xc>
 9c6:	df 91       	pop	r29
 9c8:	cf 91       	pop	r28
 9ca:	1f 91       	pop	r17
 9cc:	0f 91       	pop	r16
 9ce:	08 95       	ret

000009d0 <_ZN9CTerminal4putiEl>:
 9d0:	8f 92       	push	r8
 9d2:	9f 92       	push	r9
 9d4:	af 92       	push	r10
 9d6:	bf 92       	push	r11
 9d8:	cf 92       	push	r12
 9da:	df 92       	push	r13
 9dc:	ef 92       	push	r14
 9de:	ff 92       	push	r15
 9e0:	0f 93       	push	r16
 9e2:	1f 93       	push	r17
 9e4:	cf 93       	push	r28
 9e6:	df 93       	push	r29
 9e8:	cd b7       	in	r28, 0x3d	; 61
 9ea:	de b7       	in	r29, 0x3e	; 62
 9ec:	2c 97       	sbiw	r28, 0x0c	; 12
 9ee:	0f b6       	in	r0, 0x3f	; 63
 9f0:	f8 94       	cli
 9f2:	de bf       	out	0x3e, r29	; 62
 9f4:	0f be       	out	0x3f, r0	; 63
 9f6:	cd bf       	out	0x3d, r28	; 61
 9f8:	7c 01       	movw	r14, r24
 9fa:	77 ff       	sbrs	r23, 7
 9fc:	09 c0       	rjmp	.+18     	; 0xa10 <_ZN9CTerminal4putiEl+0x40>
 9fe:	70 95       	com	r23
 a00:	60 95       	com	r22
 a02:	50 95       	com	r21
 a04:	41 95       	neg	r20
 a06:	5f 4f       	sbci	r21, 0xFF	; 255
 a08:	6f 4f       	sbci	r22, 0xFF	; 255
 a0a:	7f 4f       	sbci	r23, 0xFF	; 255
 a0c:	01 e0       	ldi	r16, 0x01	; 1
 a0e:	01 c0       	rjmp	.+2      	; 0xa12 <_ZN9CTerminal4putiEl+0x42>
 a10:	00 e0       	ldi	r16, 0x00	; 0
 a12:	1c 86       	std	Y+12, r1	; 0x0c
 a14:	1a e0       	ldi	r17, 0x0A	; 10
 a16:	9a e0       	ldi	r25, 0x0A	; 10
 a18:	89 2e       	mov	r8, r25
 a1a:	91 2c       	mov	r9, r1
 a1c:	a1 2c       	mov	r10, r1
 a1e:	b1 2c       	mov	r11, r1
 a20:	cc 24       	eor	r12, r12
 a22:	c3 94       	inc	r12
 a24:	d1 2c       	mov	r13, r1
 a26:	cc 0e       	add	r12, r28
 a28:	dd 1e       	adc	r13, r29
 a2a:	c1 0e       	add	r12, r17
 a2c:	d1 1c       	adc	r13, r1
 a2e:	cb 01       	movw	r24, r22
 a30:	ba 01       	movw	r22, r20
 a32:	a5 01       	movw	r20, r10
 a34:	94 01       	movw	r18, r8
 a36:	0e 94 95 06 	call	0xd2a	; 0xd2a <__divmodsi4>
 a3a:	94 2f       	mov	r25, r20
 a3c:	85 2f       	mov	r24, r21
 a3e:	60 5d       	subi	r22, 0xD0	; 208
 a40:	f6 01       	movw	r30, r12
 a42:	60 83       	st	Z, r22
 a44:	a9 01       	movw	r20, r18
 a46:	69 2f       	mov	r22, r25
 a48:	78 2f       	mov	r23, r24
 a4a:	8f ef       	ldi	r24, 0xFF	; 255
 a4c:	81 0f       	add	r24, r17
 a4e:	41 15       	cp	r20, r1
 a50:	51 05       	cpc	r21, r1
 a52:	61 05       	cpc	r22, r1
 a54:	71 05       	cpc	r23, r1
 a56:	11 f0       	breq	.+4      	; 0xa5c <_ZN9CTerminal4putiEl+0x8c>
 a58:	18 2f       	mov	r17, r24
 a5a:	e2 cf       	rjmp	.-60     	; 0xa20 <_ZN9CTerminal4putiEl+0x50>
 a5c:	00 23       	and	r16, r16
 a5e:	49 f0       	breq	.+18     	; 0xa72 <_ZN9CTerminal4putiEl+0xa2>
 a60:	e1 e0       	ldi	r30, 0x01	; 1
 a62:	f0 e0       	ldi	r31, 0x00	; 0
 a64:	ec 0f       	add	r30, r28
 a66:	fd 1f       	adc	r31, r29
 a68:	e8 0f       	add	r30, r24
 a6a:	f1 1d       	adc	r31, r1
 a6c:	9d e2       	ldi	r25, 0x2D	; 45
 a6e:	90 83       	st	Z, r25
 a70:	18 2f       	mov	r17, r24
 a72:	61 e0       	ldi	r22, 0x01	; 1
 a74:	70 e0       	ldi	r23, 0x00	; 0
 a76:	6c 0f       	add	r22, r28
 a78:	7d 1f       	adc	r23, r29
 a7a:	61 0f       	add	r22, r17
 a7c:	71 1d       	adc	r23, r1
 a7e:	c7 01       	movw	r24, r14
 a80:	0e 94 d6 04 	call	0x9ac	; 0x9ac <_ZN9CTerminal4putsEPc>
 a84:	2c 96       	adiw	r28, 0x0c	; 12
 a86:	0f b6       	in	r0, 0x3f	; 63
 a88:	f8 94       	cli
 a8a:	de bf       	out	0x3e, r29	; 62
 a8c:	0f be       	out	0x3f, r0	; 63
 a8e:	cd bf       	out	0x3d, r28	; 61
 a90:	df 91       	pop	r29
 a92:	cf 91       	pop	r28
 a94:	1f 91       	pop	r17
 a96:	0f 91       	pop	r16
 a98:	ff 90       	pop	r15
 a9a:	ef 90       	pop	r14
 a9c:	df 90       	pop	r13
 a9e:	cf 90       	pop	r12
 aa0:	bf 90       	pop	r11
 aa2:	af 90       	pop	r10
 aa4:	9f 90       	pop	r9
 aa6:	8f 90       	pop	r8
 aa8:	08 95       	ret

00000aaa <_ZN9CTerminal5putuiEm>:
 aaa:	8f 92       	push	r8
 aac:	9f 92       	push	r9
 aae:	af 92       	push	r10
 ab0:	bf 92       	push	r11
 ab2:	cf 92       	push	r12
 ab4:	df 92       	push	r13
 ab6:	ef 92       	push	r14
 ab8:	ff 92       	push	r15
 aba:	1f 93       	push	r17
 abc:	cf 93       	push	r28
 abe:	df 93       	push	r29
 ac0:	cd b7       	in	r28, 0x3d	; 61
 ac2:	de b7       	in	r29, 0x3e	; 62
 ac4:	2c 97       	sbiw	r28, 0x0c	; 12
 ac6:	0f b6       	in	r0, 0x3f	; 63
 ac8:	f8 94       	cli
 aca:	de bf       	out	0x3e, r29	; 62
 acc:	0f be       	out	0x3f, r0	; 63
 ace:	cd bf       	out	0x3d, r28	; 61
 ad0:	6c 01       	movw	r12, r24
 ad2:	1c 86       	std	Y+12, r1	; 0x0c
 ad4:	1a e0       	ldi	r17, 0x0A	; 10
 ad6:	9a e0       	ldi	r25, 0x0A	; 10
 ad8:	89 2e       	mov	r8, r25
 ada:	91 2c       	mov	r9, r1
 adc:	a1 2c       	mov	r10, r1
 ade:	b1 2c       	mov	r11, r1
 ae0:	ee 24       	eor	r14, r14
 ae2:	e3 94       	inc	r14
 ae4:	f1 2c       	mov	r15, r1
 ae6:	ec 0e       	add	r14, r28
 ae8:	fd 1e       	adc	r15, r29
 aea:	e1 0e       	add	r14, r17
 aec:	f1 1c       	adc	r15, r1
 aee:	cb 01       	movw	r24, r22
 af0:	ba 01       	movw	r22, r20
 af2:	a5 01       	movw	r20, r10
 af4:	94 01       	movw	r18, r8
 af6:	0e 94 73 06 	call	0xce6	; 0xce6 <__udivmodsi4>
 afa:	94 2f       	mov	r25, r20
 afc:	85 2f       	mov	r24, r21
 afe:	60 5d       	subi	r22, 0xD0	; 208
 b00:	f7 01       	movw	r30, r14
 b02:	60 83       	st	Z, r22
 b04:	a9 01       	movw	r20, r18
 b06:	69 2f       	mov	r22, r25
 b08:	78 2f       	mov	r23, r24
 b0a:	11 50       	subi	r17, 0x01	; 1
 b0c:	41 15       	cp	r20, r1
 b0e:	51 05       	cpc	r21, r1
 b10:	61 05       	cpc	r22, r1
 b12:	71 05       	cpc	r23, r1
 b14:	29 f7       	brne	.-54     	; 0xae0 <_ZN9CTerminal5putuiEm+0x36>
 b16:	b7 01       	movw	r22, r14
 b18:	c6 01       	movw	r24, r12
 b1a:	0e 94 d6 04 	call	0x9ac	; 0x9ac <_ZN9CTerminal4putsEPc>
 b1e:	2c 96       	adiw	r28, 0x0c	; 12
 b20:	0f b6       	in	r0, 0x3f	; 63
 b22:	f8 94       	cli
 b24:	de bf       	out	0x3e, r29	; 62
 b26:	0f be       	out	0x3f, r0	; 63
 b28:	cd bf       	out	0x3d, r28	; 61
 b2a:	df 91       	pop	r29
 b2c:	cf 91       	pop	r28
 b2e:	1f 91       	pop	r17
 b30:	ff 90       	pop	r15
 b32:	ef 90       	pop	r14
 b34:	df 90       	pop	r13
 b36:	cf 90       	pop	r12
 b38:	bf 90       	pop	r11
 b3a:	af 90       	pop	r10
 b3c:	9f 90       	pop	r9
 b3e:	8f 90       	pop	r8
 b40:	08 95       	ret

00000b42 <_ZN9CTerminal4putxEm>:
 b42:	ef 92       	push	r14
 b44:	ff 92       	push	r15
 b46:	cf 93       	push	r28
 b48:	df 93       	push	r29
 b4a:	cd b7       	in	r28, 0x3d	; 61
 b4c:	de b7       	in	r29, 0x3e	; 62
 b4e:	2c 97       	sbiw	r28, 0x0c	; 12
 b50:	0f b6       	in	r0, 0x3f	; 63
 b52:	f8 94       	cli
 b54:	de bf       	out	0x3e, r29	; 62
 b56:	0f be       	out	0x3f, r0	; 63
 b58:	cd bf       	out	0x3d, r28	; 61
 b5a:	fc 01       	movw	r30, r24
 b5c:	1c 86       	std	Y+12, r1	; 0x0c
 b5e:	2a e0       	ldi	r18, 0x0A	; 10
 b60:	94 2f       	mov	r25, r20
 b62:	9f 70       	andi	r25, 0x0F	; 15
 b64:	e2 2e       	mov	r14, r18
 b66:	f1 2c       	mov	r15, r1
 b68:	a1 e0       	ldi	r26, 0x01	; 1
 b6a:	b0 e0       	ldi	r27, 0x00	; 0
 b6c:	ac 0f       	add	r26, r28
 b6e:	bd 1f       	adc	r27, r29
 b70:	ae 0d       	add	r26, r14
 b72:	bf 1d       	adc	r27, r15
 b74:	9a 30       	cpi	r25, 0x0A	; 10
 b76:	14 f4       	brge	.+4      	; 0xb7c <_ZN9CTerminal4putxEm+0x3a>
 b78:	90 5d       	subi	r25, 0xD0	; 208
 b7a:	01 c0       	rjmp	.+2      	; 0xb7e <_ZN9CTerminal4putxEm+0x3c>
 b7c:	99 5a       	subi	r25, 0xA9	; 169
 b7e:	9c 93       	st	X, r25
 b80:	84 e0       	ldi	r24, 0x04	; 4
 b82:	76 95       	lsr	r23
 b84:	67 95       	ror	r22
 b86:	57 95       	ror	r21
 b88:	47 95       	ror	r20
 b8a:	8a 95       	dec	r24
 b8c:	d1 f7       	brne	.-12     	; 0xb82 <_ZN9CTerminal4putxEm+0x40>
 b8e:	21 50       	subi	r18, 0x01	; 1
 b90:	41 15       	cp	r20, r1
 b92:	51 05       	cpc	r21, r1
 b94:	61 05       	cpc	r22, r1
 b96:	71 05       	cpc	r23, r1
 b98:	19 f7       	brne	.-58     	; 0xb60 <_ZN9CTerminal4putxEm+0x1e>
 b9a:	61 e0       	ldi	r22, 0x01	; 1
 b9c:	70 e0       	ldi	r23, 0x00	; 0
 b9e:	6c 0f       	add	r22, r28
 ba0:	7d 1f       	adc	r23, r29
 ba2:	6e 0d       	add	r22, r14
 ba4:	7f 1d       	adc	r23, r15
 ba6:	cf 01       	movw	r24, r30
 ba8:	0e 94 d6 04 	call	0x9ac	; 0x9ac <_ZN9CTerminal4putsEPc>
 bac:	2c 96       	adiw	r28, 0x0c	; 12
 bae:	0f b6       	in	r0, 0x3f	; 63
 bb0:	f8 94       	cli
 bb2:	de bf       	out	0x3e, r29	; 62
 bb4:	0f be       	out	0x3f, r0	; 63
 bb6:	cd bf       	out	0x3d, r28	; 61
 bb8:	df 91       	pop	r29
 bba:	cf 91       	pop	r28
 bbc:	ff 90       	pop	r15
 bbe:	ef 90       	pop	r14
 bc0:	08 95       	ret

00000bc2 <_ZN9CTerminal6printfEPKcz>:
 bc2:	af 92       	push	r10
 bc4:	bf 92       	push	r11
 bc6:	cf 92       	push	r12
 bc8:	df 92       	push	r13
 bca:	ef 92       	push	r14
 bcc:	ff 92       	push	r15
 bce:	0f 93       	push	r16
 bd0:	1f 93       	push	r17
 bd2:	cf 93       	push	r28
 bd4:	df 93       	push	r29
 bd6:	cd b7       	in	r28, 0x3d	; 61
 bd8:	de b7       	in	r29, 0x3e	; 62
 bda:	ed 84       	ldd	r14, Y+13	; 0x0d
 bdc:	fe 84       	ldd	r15, Y+14	; 0x0e
 bde:	8e 01       	movw	r16, r28
 be0:	0f 5e       	subi	r16, 0xEF	; 239
 be2:	1f 4f       	sbci	r17, 0xFF	; 255
 be4:	c1 2c       	mov	r12, r1
 be6:	d1 2c       	mov	r13, r1
 be8:	ef 85       	ldd	r30, Y+15	; 0x0f
 bea:	f8 89       	ldd	r31, Y+16	; 0x10
 bec:	ec 0d       	add	r30, r12
 bee:	fd 1d       	adc	r31, r13
 bf0:	60 81       	ld	r22, Z
 bf2:	66 23       	and	r22, r22
 bf4:	09 f4       	brne	.+2      	; 0xbf8 <_ZN9CTerminal6printfEPKcz+0x36>
 bf6:	64 c0       	rjmp	.+200    	; 0xcc0 <_ZN9CTerminal6printfEPKcz+0xfe>
 bf8:	65 32       	cpi	r22, 0x25	; 37
 bfa:	39 f0       	breq	.+14     	; 0xc0a <_ZN9CTerminal6printfEPKcz+0x48>
 bfc:	c7 01       	movw	r24, r14
 bfe:	0e 94 8e 01 	call	0x31c	; 0x31c <_ZN6CUSART7putcharEc>
 c02:	8f ef       	ldi	r24, 0xFF	; 255
 c04:	c8 1a       	sub	r12, r24
 c06:	d8 0a       	sbc	r13, r24
 c08:	ef cf       	rjmp	.-34     	; 0xbe8 <_ZN9CTerminal6printfEPKcz+0x26>
 c0a:	81 81       	ldd	r24, Z+1	; 0x01
 c0c:	89 36       	cpi	r24, 0x69	; 105
 c0e:	11 f1       	breq	.+68     	; 0xc54 <_ZN9CTerminal6printfEPKcz+0x92>
 c10:	84 f4       	brge	.+32     	; 0xc32 <_ZN9CTerminal6printfEPKcz+0x70>
 c12:	85 32       	cpi	r24, 0x25	; 37
 c14:	09 f4       	brne	.+2      	; 0xc18 <_ZN9CTerminal6printfEPKcz+0x56>
 c16:	4c c0       	rjmp	.+152    	; 0xcb0 <_ZN9CTerminal6printfEPKcz+0xee>
 c18:	83 36       	cpi	r24, 0x63	; 99
 c1a:	09 f0       	breq	.+2      	; 0xc1e <_ZN9CTerminal6printfEPKcz+0x5c>
 c1c:	4d c0       	rjmp	.+154    	; 0xcb8 <_ZN9CTerminal6printfEPKcz+0xf6>
 c1e:	58 01       	movw	r10, r16
 c20:	f2 e0       	ldi	r31, 0x02	; 2
 c22:	af 0e       	add	r10, r31
 c24:	b1 1c       	adc	r11, r1
 c26:	f8 01       	movw	r30, r16
 c28:	60 81       	ld	r22, Z
 c2a:	c7 01       	movw	r24, r14
 c2c:	0e 94 8e 01 	call	0x31c	; 0x31c <_ZN6CUSART7putcharEc>
 c30:	2e c0       	rjmp	.+92     	; 0xc8e <_ZN9CTerminal6printfEPKcz+0xcc>
 c32:	85 37       	cpi	r24, 0x75	; 117
 c34:	f1 f0       	breq	.+60     	; 0xc72 <_ZN9CTerminal6printfEPKcz+0xb0>
 c36:	88 37       	cpi	r24, 0x78	; 120
 c38:	61 f1       	breq	.+88     	; 0xc92 <_ZN9CTerminal6printfEPKcz+0xd0>
 c3a:	83 37       	cpi	r24, 0x73	; 115
 c3c:	e9 f5       	brne	.+122    	; 0xcb8 <_ZN9CTerminal6printfEPKcz+0xf6>
 c3e:	58 01       	movw	r10, r16
 c40:	f2 e0       	ldi	r31, 0x02	; 2
 c42:	af 0e       	add	r10, r31
 c44:	b1 1c       	adc	r11, r1
 c46:	f8 01       	movw	r30, r16
 c48:	60 81       	ld	r22, Z
 c4a:	71 81       	ldd	r23, Z+1	; 0x01
 c4c:	c7 01       	movw	r24, r14
 c4e:	0e 94 d6 04 	call	0x9ac	; 0x9ac <_ZN9CTerminal4putsEPc>
 c52:	1d c0       	rjmp	.+58     	; 0xc8e <_ZN9CTerminal6printfEPKcz+0xcc>
 c54:	58 01       	movw	r10, r16
 c56:	92 e0       	ldi	r25, 0x02	; 2
 c58:	a9 0e       	add	r10, r25
 c5a:	b1 1c       	adc	r11, r1
 c5c:	f8 01       	movw	r30, r16
 c5e:	40 81       	ld	r20, Z
 c60:	51 81       	ldd	r21, Z+1	; 0x01
 c62:	05 2e       	mov	r0, r21
 c64:	00 0c       	add	r0, r0
 c66:	66 0b       	sbc	r22, r22
 c68:	77 0b       	sbc	r23, r23
 c6a:	c7 01       	movw	r24, r14
 c6c:	0e 94 e8 04 	call	0x9d0	; 0x9d0 <_ZN9CTerminal4putiEl>
 c70:	0e c0       	rjmp	.+28     	; 0xc8e <_ZN9CTerminal6printfEPKcz+0xcc>
 c72:	58 01       	movw	r10, r16
 c74:	f2 e0       	ldi	r31, 0x02	; 2
 c76:	af 0e       	add	r10, r31
 c78:	b1 1c       	adc	r11, r1
 c7a:	f8 01       	movw	r30, r16
 c7c:	40 81       	ld	r20, Z
 c7e:	51 81       	ldd	r21, Z+1	; 0x01
 c80:	05 2e       	mov	r0, r21
 c82:	00 0c       	add	r0, r0
 c84:	66 0b       	sbc	r22, r22
 c86:	77 0b       	sbc	r23, r23
 c88:	c7 01       	movw	r24, r14
 c8a:	0e 94 55 05 	call	0xaaa	; 0xaaa <_ZN9CTerminal5putuiEm>
 c8e:	85 01       	movw	r16, r10
 c90:	13 c0       	rjmp	.+38     	; 0xcb8 <_ZN9CTerminal6printfEPKcz+0xf6>
 c92:	58 01       	movw	r10, r16
 c94:	f2 e0       	ldi	r31, 0x02	; 2
 c96:	af 0e       	add	r10, r31
 c98:	b1 1c       	adc	r11, r1
 c9a:	f8 01       	movw	r30, r16
 c9c:	40 81       	ld	r20, Z
 c9e:	51 81       	ldd	r21, Z+1	; 0x01
 ca0:	05 2e       	mov	r0, r21
 ca2:	00 0c       	add	r0, r0
 ca4:	66 0b       	sbc	r22, r22
 ca6:	77 0b       	sbc	r23, r23
 ca8:	c7 01       	movw	r24, r14
 caa:	0e 94 a1 05 	call	0xb42	; 0xb42 <_ZN9CTerminal4putxEm>
 cae:	ef cf       	rjmp	.-34     	; 0xc8e <_ZN9CTerminal6printfEPKcz+0xcc>
 cb0:	65 e2       	ldi	r22, 0x25	; 37
 cb2:	c7 01       	movw	r24, r14
 cb4:	0e 94 8e 01 	call	0x31c	; 0x31c <_ZN6CUSART7putcharEc>
 cb8:	f2 e0       	ldi	r31, 0x02	; 2
 cba:	cf 0e       	add	r12, r31
 cbc:	d1 1c       	adc	r13, r1
 cbe:	94 cf       	rjmp	.-216    	; 0xbe8 <_ZN9CTerminal6printfEPKcz+0x26>
 cc0:	df 91       	pop	r29
 cc2:	cf 91       	pop	r28
 cc4:	1f 91       	pop	r17
 cc6:	0f 91       	pop	r16
 cc8:	ff 90       	pop	r15
 cca:	ef 90       	pop	r14
 ccc:	df 90       	pop	r13
 cce:	cf 90       	pop	r12
 cd0:	bf 90       	pop	r11
 cd2:	af 90       	pop	r10
 cd4:	08 95       	ret

00000cd6 <_GLOBAL__sub_I_terminal>:
 cd6:	89 e7       	ldi	r24, 0x79	; 121
 cd8:	91 e0       	ldi	r25, 0x01	; 1
 cda:	0c 94 7d 01 	jmp	0x2fa	; 0x2fa <_ZN6CUSARTC1Ev>

00000cde <_GLOBAL__sub_D_terminal>:
 cde:	89 e7       	ldi	r24, 0x79	; 121
 ce0:	91 e0       	ldi	r25, 0x01	; 1
 ce2:	0c 94 8d 01 	jmp	0x31a	; 0x31a <_ZN6CUSARTD1Ev>

00000ce6 <__udivmodsi4>:
 ce6:	a1 e2       	ldi	r26, 0x21	; 33
 ce8:	1a 2e       	mov	r1, r26
 cea:	aa 1b       	sub	r26, r26
 cec:	bb 1b       	sub	r27, r27
 cee:	fd 01       	movw	r30, r26
 cf0:	0d c0       	rjmp	.+26     	; 0xd0c <__udivmodsi4_ep>

00000cf2 <__udivmodsi4_loop>:
 cf2:	aa 1f       	adc	r26, r26
 cf4:	bb 1f       	adc	r27, r27
 cf6:	ee 1f       	adc	r30, r30
 cf8:	ff 1f       	adc	r31, r31
 cfa:	a2 17       	cp	r26, r18
 cfc:	b3 07       	cpc	r27, r19
 cfe:	e4 07       	cpc	r30, r20
 d00:	f5 07       	cpc	r31, r21
 d02:	20 f0       	brcs	.+8      	; 0xd0c <__udivmodsi4_ep>
 d04:	a2 1b       	sub	r26, r18
 d06:	b3 0b       	sbc	r27, r19
 d08:	e4 0b       	sbc	r30, r20
 d0a:	f5 0b       	sbc	r31, r21

00000d0c <__udivmodsi4_ep>:
 d0c:	66 1f       	adc	r22, r22
 d0e:	77 1f       	adc	r23, r23
 d10:	88 1f       	adc	r24, r24
 d12:	99 1f       	adc	r25, r25
 d14:	1a 94       	dec	r1
 d16:	69 f7       	brne	.-38     	; 0xcf2 <__udivmodsi4_loop>
 d18:	60 95       	com	r22
 d1a:	70 95       	com	r23
 d1c:	80 95       	com	r24
 d1e:	90 95       	com	r25
 d20:	9b 01       	movw	r18, r22
 d22:	ac 01       	movw	r20, r24
 d24:	bd 01       	movw	r22, r26
 d26:	cf 01       	movw	r24, r30
 d28:	08 95       	ret

00000d2a <__divmodsi4>:
 d2a:	05 2e       	mov	r0, r21
 d2c:	97 fb       	bst	r25, 7
 d2e:	1e f4       	brtc	.+6      	; 0xd36 <__divmodsi4+0xc>
 d30:	00 94       	com	r0
 d32:	0e 94 ac 06 	call	0xd58	; 0xd58 <__negsi2>
 d36:	57 fd       	sbrc	r21, 7
 d38:	07 d0       	rcall	.+14     	; 0xd48 <__divmodsi4_neg2>
 d3a:	0e 94 73 06 	call	0xce6	; 0xce6 <__udivmodsi4>
 d3e:	07 fc       	sbrc	r0, 7
 d40:	03 d0       	rcall	.+6      	; 0xd48 <__divmodsi4_neg2>
 d42:	4e f4       	brtc	.+18     	; 0xd56 <__divmodsi4_exit>
 d44:	0c 94 ac 06 	jmp	0xd58	; 0xd58 <__negsi2>

00000d48 <__divmodsi4_neg2>:
 d48:	50 95       	com	r21
 d4a:	40 95       	com	r20
 d4c:	30 95       	com	r19
 d4e:	21 95       	neg	r18
 d50:	3f 4f       	sbci	r19, 0xFF	; 255
 d52:	4f 4f       	sbci	r20, 0xFF	; 255
 d54:	5f 4f       	sbci	r21, 0xFF	; 255

00000d56 <__divmodsi4_exit>:
 d56:	08 95       	ret

00000d58 <__negsi2>:
 d58:	90 95       	com	r25
 d5a:	80 95       	com	r24
 d5c:	70 95       	com	r23
 d5e:	61 95       	neg	r22
 d60:	7f 4f       	sbci	r23, 0xFF	; 255
 d62:	8f 4f       	sbci	r24, 0xFF	; 255
 d64:	9f 4f       	sbci	r25, 0xFF	; 255
 d66:	08 95       	ret

00000d68 <__tablejump2__>:
 d68:	ee 0f       	add	r30, r30
 d6a:	ff 1f       	adc	r31, r31
 d6c:	05 90       	lpm	r0, Z+
 d6e:	f4 91       	lpm	r31, Z
 d70:	e0 2d       	mov	r30, r0
 d72:	09 94       	ijmp

00000d74 <__do_global_dtors>:
 d74:	10 e0       	ldi	r17, 0x00	; 0
 d76:	c8 e3       	ldi	r28, 0x38	; 56
 d78:	d0 e0       	ldi	r29, 0x00	; 0
 d7a:	04 c0       	rjmp	.+8      	; 0xd84 <__do_global_dtors+0x10>
 d7c:	fe 01       	movw	r30, r28
 d7e:	0e 94 b4 06 	call	0xd68	; 0xd68 <__tablejump2__>
 d82:	21 96       	adiw	r28, 0x01	; 1
 d84:	c9 33       	cpi	r28, 0x39	; 57
 d86:	d1 07       	cpc	r29, r17
 d88:	c9 f7       	brne	.-14     	; 0xd7c <__do_global_dtors+0x8>
 d8a:	f8 94       	cli

00000d8c <__stop_program>:
 d8c:	ff cf       	rjmp	.-2      	; 0xd8c <__stop_program>
