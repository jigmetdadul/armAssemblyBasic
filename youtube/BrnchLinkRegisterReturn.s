.global _start
_start:
//Creating return functions
	MOV r0, #1
	MOV r1, #3
	BL add2
	MOV r2, #123
	
add2:
    ADD r2, r1, r0
	BX lr
	//Now, before we have seen that once we enter a branch we dont't
	// go back and start executing the next lines od code from where 
	//the branch was called
	// We can make ourfunction(branch) return to the location where it
	// was called by using BL and BX lr
	//lr -- stores the location of the the statement which was next to the function 
	// was called
	