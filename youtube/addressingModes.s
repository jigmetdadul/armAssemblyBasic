.global _start
_start:
       LDR r0, =list
	   LDR r1, [r0]
	   LDR r3, [r0, #4]! //post increment
	   LDR r4, [r0], #4. //Pre increment
	

.data
list:
     .word 4, 5, 6, 7
	
	