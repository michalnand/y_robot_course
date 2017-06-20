
bin/main.elf:     file format elf32-avr


Disassembly of section .text:

00000000 <__vectors>:
   0:	0c 94 2a 00 	jmp	0x54	; 0x54 <__ctors_end>
   4:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
   8:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
   c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  10:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  14:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  18:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  1c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  20:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  24:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  28:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  2c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  30:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  34:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  38:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  3c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  40:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  44:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  48:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  4c:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>
  50:	0c 94 34 00 	jmp	0x68	; 0x68 <__bad_interrupt>

00000054 <__ctors_end>:
  54:	11 24       	eor	r1, r1
  56:	1f be       	out	0x3f, r1	; 63
  58:	cf e5       	ldi	r28, 0x5F	; 95
  5a:	d4 e0       	ldi	r29, 0x04	; 4
  5c:	de bf       	out	0x3e, r29	; 62
  5e:	cd bf       	out	0x3d, r28	; 61
  60:	0e 94 36 00 	call	0x6c	; 0x6c <main>
  64:	0c 94 4f 00 	jmp	0x9e	; 0x9e <_exit>

00000068 <__bad_interrupt>:
  68:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

0000006c <main>:
  6c:	d5 9a       	sbi	0x1a, 5	; 26
  6e:	d6 9a       	sbi	0x1a, 6	; 26
  70:	dd 98       	cbi	0x1b, 5	; 27
  72:	de 98       	cbi	0x1b, 6	; 27
  74:	2f e3       	ldi	r18, 0x3F	; 63
  76:	8d e0       	ldi	r24, 0x0D	; 13
  78:	93 e0       	ldi	r25, 0x03	; 3
  7a:	21 50       	subi	r18, 0x01	; 1
  7c:	80 40       	sbci	r24, 0x00	; 0
  7e:	90 40       	sbci	r25, 0x00	; 0
  80:	e1 f7       	brne	.-8      	; 0x7a <main+0xe>
  82:	00 c0       	rjmp	.+0      	; 0x84 <main+0x18>
  84:	00 00       	nop
  86:	dd 9a       	sbi	0x1b, 5	; 27
  88:	de 9a       	sbi	0x1b, 6	; 27
  8a:	2f e3       	ldi	r18, 0x3F	; 63
  8c:	87 e7       	ldi	r24, 0x77	; 119
  8e:	9b e1       	ldi	r25, 0x1B	; 27
  90:	21 50       	subi	r18, 0x01	; 1
  92:	80 40       	sbci	r24, 0x00	; 0
  94:	90 40       	sbci	r25, 0x00	; 0
  96:	e1 f7       	brne	.-8      	; 0x90 <main+0x24>
  98:	00 c0       	rjmp	.+0      	; 0x9a <main+0x2e>
  9a:	00 00       	nop
  9c:	e9 cf       	rjmp	.-46     	; 0x70 <main+0x4>

0000009e <_exit>:
  9e:	f8 94       	cli

000000a0 <__stop_program>:
  a0:	ff cf       	rjmp	.-2      	; 0xa0 <__stop_program>
