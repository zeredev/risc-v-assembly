##----------------------------------------------------------------------------------------------------
##-- FIBO_REC: Performs the recursive version of how to calculate the fibonacci series of a number.
##-- INPUTS:
##--		Number introduced by the user and stored in a0
##-- OUTPUTS:
##--    	The result of Fibonacci(a0) 
##---------------------------------------------------------------------------------------------------- 

					.globl FIBO_REC
					
					.eqv PRINT_INT 1
					.eqv PRINT_STRING 4
					
					.text 
					
FIBO_REC:				li t0, 2
					
				  	bge a0, t0, FIBO_REC_LOOP 
					
					b exit 
					
FIBO_REC_LOOP:				addi sp, sp, -16
					sw ra, 12(sp)
					sw a0, 8(sp)
					
					addi a0, a0, -1
					jal FIBO_REC
					sw a0, 4(sp)
					
					lw a0, 8(sp)	
					addi a0, a0, -2
					jal FIBO_REC
					
					lw t2, 4(sp)
					
					add a0, a0, t2
					
					lw ra, 12(sp)
					addi sp, sp, 16
										
exit: 					li a7, PRINT_INT 
					ecall
					
					ret
					
