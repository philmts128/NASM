; -----------------------------------
; Hello world em assembly x64 com NASM em Unix
; Autor: Philippe Matias
; -----------------------------------

section .data
    msg db 'Game Over!', 10 ;nossa mensagem a ser impressa

section .text
    global _start ;ponto de entrada do programa

_start:
    mov rax, 1      ; chamada de sistem para escrita da mensagem (sys_write) 
    mov rdi, 1      ; descritor da chamada de sistema, que para output é 1 
    mov rsi, msg    ; endereço da string 
    mov rdx, 10     ; tamanho da string: 10 bytes
    syscall         ; realiza chamada de sistema chamando o kernel

    mov rax, 60     ; encerra o progrma
    xor rdi, rdi
    syscall
