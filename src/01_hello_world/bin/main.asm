
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
  64:	0c 94 3c 00 	jmp	0x78	; 0x78 <_exit>

00000068 <__bad_interrupt>:
  68:	0c 94 00 00 	jmp	0	; 0x0 <__vectors>

0000006c <main>:
  6c:	80 e4       	ldi	r24, 0x40	; 64
  6e:	8a bb       	out	0x1a, r24	; 26
  70:	de 98       	cbi	0x1b, 6	; 27
  72:	de 98       	cbi	0x1b, 6	; 27
  74:	de 9a       	sbi	0x1b, 6	; 27
  76:	fd cf       	rjmp	.-6      	; 0x72 <main+0x6>

00000078 <_exit>:
  78:	f8 94       	cli

0000007a <__stop_program>:
  7a:	ff cf       	rjmp	.-2      	; 0x7a <__stop_program>