; hello world em Assembly x86 com NASM em ambiente Unix
; Autor: Philipe Matias

section .text
    global _start ; identifica seção de código para o linker

section .data
    msg db 'Game Over!', 0xb  ; define string
    len equ $ - msg           ; define tamanho da string

_start:           ; esse é o ponto de entrada do programa
    mov edx, len  ; move tamanho da string para edx
    mov ecx, msg  ; move ponteiro para string para registrador ecx
    mov ebx, 1    ; descritor de saída do unix (stdout)
    mov eax, 4    ; chamada de sistema para saída de dados (sys_write)
    int 0x80      ; interrupção para entrar em modo kernel

    mov eax, 1 ; chamada de sistema para encerrar programa
    int 0x80
