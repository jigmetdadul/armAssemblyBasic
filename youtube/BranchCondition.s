.global _start
_start:

       MOV r0, #5
	   MOV r1, #2
	   
	   CMP r0, r1
	   BGT greater //Branch greater than, r0-r1, if answer is -ve r0 is less
	               //if it is +ve the r0 will be greater, the CPSR is used as a flag to the result
	   
	   BAL default//Branch Always, will be executed no matter what, BNE, BLT, BLE, BGE, BEQ
	   

greater:
       MOV r12, r1
	   
default:
       MOV r12, #1	   
	   
	   
	
	