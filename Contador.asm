#Imprimir los numeros del 1 al 10

	.include "servicios.asm"
	
	
	#INCREMENTO
	.eqv INC 1
	
	# Numero maximo de la cuenta
	.eqv N 5
	
	.text
	
	#Inicializar el contaodr a 0
	li t0, 0
bucle:
	#Incrementar el contador en una unidad
	addi t0, t0, INC
	
	#Imprimir el numero
	mv a0, t0
	li a7, PRINT_INT
	ecall
	
	#Imprimir
	li a0, ' '
	li a7, PRINT_CHAR
	ecall
	
	#Comprobar si T0  es menor que 10
	li t1, N
	blt t0,t1, bucle
	
	#Si t0 es = 10 sale del bucle	
	#Terminar
	li a7, EXIT
	ecall