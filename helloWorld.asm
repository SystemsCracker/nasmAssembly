section     .text
global      _start                              ;main declaration

_start:                                         ;main routine

    mov     edx,len                             ;message length
    mov     ecx,msg                             ;message to write
    mov     ebx,1                               ;pipe to standard out
    mov     eax,4                               ;system call to write to eax
    int     0x80                                ;run system call to write messasge

    mov     eax,1                               ;system call to exit
    int     0x80                                ;run system call to exit

section     .data

msg     db  'Hello, world!',0xa           
len     equ $ - msg                         
