.global _start
_start:
      
	  //We can do addition by following the previous concept followed in loop lecture
	  //for eg.
	  
	  MOV r0, #2;
	  MOV r1, #4;
	  CMP r0, r1
	  BLT add

	  
add: 
    ADD r2, #8
	


      //But we can do it fewer line of codes by postfix ADD, SUB, MOV etc. eg ADDLT:- means add two number is values is less than.
	  //Eg.
	  
	  MOV r0, #2;
	  MOV r1, #4;
	  MOV r2, #0;
	  CMP r0, r1
	  
	  ADDLT r2, #1
     
	
	  
     
  
	