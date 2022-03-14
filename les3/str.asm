global _start

section .data

msg db 'asd', 0xa, 0
msgl equ $-msg

section .text

_start:
            mov     eax, 4
            mov     ecx, msg
            mov     ebx, 1
            mov     edx, msgl

            int     0x80

            mov     eax, 1
            mov     ebx, 0

            int     0x80
