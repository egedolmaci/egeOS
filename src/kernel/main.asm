
ORG 0x0
BITS 16

main:
MOV si,os_boot_msg
call print
HLT

halt:
JMP halt

print:
PUSH si
PUSH ax
PUSH bx

print_loop:
LODSB
OR al,al
JZ done_print

MOV ah, 0x0E
MOV bh, 0
INT 0x10

JMP print_loop
done_print:
POP bx
POP ax
POP si

ret
os_boot_msg: DB 'OS has booted!', 0x0D, 0x0A, 0
