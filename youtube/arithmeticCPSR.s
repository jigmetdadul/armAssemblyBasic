.global _start
_start:
     
	 MOV r0, #5
	 MOV r1, #7
	 SUB r2, r0, r1 
	 MOV r3, #0xFFFFFFFF
	 MOV r4, #1
	 SUB r5, r3, r4 //one problem that we face is that we can't differentiate 
	                //between that the number obtain is -ve or just a very large number, 
                    //To solve this we we CPSR
					//We can see BZCVI accross the CPSR, each of these character represents   
					//a flag, N: -ve, etc.
					//We make the CPSR active by adding 'S' to SUB
	 SUBS r6, r0, r1 //Here we use a special type of instruction called arithmetic with flag by adding 's' to SUB				
					
	 MOV r0, #0xFFFFFFFF
	 MOV r1, #3
	 ADDS r2, r0, r1 //Adding these two number will generate a carry 
	                 //Which will be reflected in the CPSR
					 //Now when we want to add the carry we will use ADC to add that carry
					 
     
	 ADC r2, r0, r1 //r2 = carry r0 + r1 + carry 
	 				 