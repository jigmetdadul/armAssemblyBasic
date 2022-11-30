.global _start
_start:

       MOV r0, #1
	   MOV r1, #4
	   PUSH {r1,r0}// Normally the value at r0 and r1 will be overriden whe the fn functiion is called
	               // But if we want to preserve the value of the value in the register before the calling of the functino 
				   // To accomplish that we PUSH the data into the stack using PUSH statement and after returning from the 
				   // function we POP or retrieve the main data back into the register
	   BL fn
	   POP {r0,r1, r9}
	   ADD r2, r0,r1
	   B rtn
fn:
   MOV r0, #5
   MOV r1, #6
   ADD r2, r0,r1
   PUSH {r2}
   BX lr
	   
	   
rtn:

	   
	
	