.global _start
_start:
        
		MOV r0, #10
		MOV r0, #1 // multiply 10 by 2
		MOV r1, r0, LSL #1 // shifts r0 data to r1 and then multiplies it by 2
		MOV r2, r1, LSR #1 //shifts r1 to r2 and then divides r2 by 2
		ROR r3, #1 // Rotation 
		
	
	
	