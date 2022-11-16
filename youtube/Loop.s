.global _start
.equ endlist, 0xaaaaaaaa
_start:
     LDR r0, =list
	 LDR r3, =endlist
	 LDR r1, [r0]
	 ADD r2, r2, r1
	 //The way that arm handles string is a bit weird, So when we have that immediate value
	 // or literals they can be only be a fixed size, that is 2 hex values. So we are gonna use constants to deal with using .EQU
loop:
     LDR r1, [r0, #4]!
	 CMP r1, r3
	 BEQ exit
	 ADD r2, r2, r1
	 BAL loop
exit: 

.data
list:
    .word 1,2,3,4,5,6,7,8,9,10
	