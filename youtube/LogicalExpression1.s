.global _start
_start:
	MOV r0, #2
	MOV r1, #4
	AND r2, r0, r1 //The logical operations takes place in binary form 001 AND 001 = 001
	ORR r2, r0, r1 
	EOR r2, r0, r1 //takin Exclusive OR.
	//Taking negation is a little bit different 
	//We use MVN(move negative)
	//what MVN does is it moves the negation of the source to the destination
	MOV r3, #0xFF
	MVN r4, r3
	