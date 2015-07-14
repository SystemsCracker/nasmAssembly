section     .text
global      _start                              ;main routine init
_start:                                         ;main routine
    mov     edx,len                             ;move length of message to edx register
    mov     ecx,msg                             ;move message to ecx register
    mov     ebx,1                               ;move standard output to ebx register
    mov     eax,4                               ;move message to ebx register
    int     0x80                                ;run system call to write messasge
    mov     eax,1                               ;system call to exit
    int     0x80                                ;run system call to exit
section     .data
msg     db  'Hello, world!',0xa           
len     equ $ - msg                         
