##----------------------------------------------------------------------------------------------------
##-- FIBO_ITER: Performs the iterative version of how to calculate the fibonacci series of a number 
##-- INPUTS:
##--		Number introduced by the user and stored in a0
##-- OUTPUTS:
##--    	The result of Fibonacci(a0) 
##----------------------------------------------------------------------------------------------------

					.globl FIBO_ITER
					
					.eqv PRINT_INT 1
					.eqv PRINT_STRING 4
					
					.text 
					
FIBO_ITER:				mv t0, zero   ##-- Fib_f
					li t1, 1      ##-- Fib_s
					li t2, 2 
					
					beq a0, zero, show_result ##-- If x == 0 return Fib_f
					beq a0, t1, show_result  ##-- If x == 1 return Fib_f
					
loop:					blt a0, t2, show_result_other
				      	add t3, t0, t1
					mv t0, t1
					mv t1, t3
					addi  a0, a0, -1
					j loop
					
show_result_other:			mv a0, t1
					
show_result:				li a7, PRINT_INT 
					ecall 
					
					ret 
					
							
				
											
				