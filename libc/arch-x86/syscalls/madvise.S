/* Generated by gensyscalls.py. Do not edit. */

#include <asm/unistd.h>
#include <linux/err.h>
#include <machine/asm.h>

ENTRY(madvise)
    pushl   %ebx
    pushl   %ecx
    pushl   %edx
    mov     16(%esp), %ebx
    mov     20(%esp), %ecx
    mov     24(%esp), %edx
    movl    $__NR_madvise, %eax
    int     $0x80
    cmpl    $-MAX_ERRNO, %eax
    jb      1f
    negl    %eax
    pushl   %eax
    call    __set_errno
    addl    $4, %esp
    orl     $-1, %eax
1:
    popl    %edx
    popl    %ecx
    popl    %ebx
    ret
END(madvise)
