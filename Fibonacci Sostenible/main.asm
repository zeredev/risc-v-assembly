##------------------------------------------------------------------------
##-- MAIN: Entry Point for any of both Fibonacci Series
##-- The program asks the user to enter a number (n). 
##-- Once the number is introduced, the calculation of Fibonacci(n) is performed.
##-- The result printed will be Fibonacci(n).  
##------------------------------------------------------------------------
				
				.globl MAIN
				
				.eqv PRINT_INT 1 
				.eqv PRINT_STRING 4
				.eqv READ_INT 5
				.eqv EXIT 10 
				
				.data 
ask_usr_input:			.string "Introduce a number (integer): "
				
				.text
				 
				##--We ask the user for a number
MAIN:				la a0, ask_usr_input
				li a7, PRINT_STRING
				ecall 
				
				##--Using READ_INT, we get the number and store it in a0
				li a7, READ_INT
				ecall
				
				##-- We call the subroutine. 
				##-- The iterative version is set by default.
				##-- If we want to use the recursive version you have to change FIBO_ITER for FIBO_REC.
				jal FIBO_REC
				
				##-- We exit the program
				li a7, EXIT
				ecall
				 