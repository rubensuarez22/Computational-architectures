.include "servicios.asm"

.data
msg_ingreso:	.string "Ingrese un número: "
msg_mayor:	.string "El número escrito es mayor al que debes adivinar. Intenta nuevamente: "
msg_menor:	.string "El número escrito es menor al que debes adivinar.  Intenta nuevamente: "
msg_ganador:	.string "¡Felicidades! Adivinaste el número."

.text

# Aqui va el numero a adivinar
li t0, 31


loop:

	# Mostrar el mensaje para ingresar un número
	la a0, msg_ingreso
	li a7, PRINT_STRING
	ecall
	
	# Leer el número ingresado por el usuario
	li a7, READ_INT
	ecall
	mv s1, a0
	
	# Comparar el número ingresado (s1) con el número generado (s0)
	bgt s1, t0, mayor
	blt s1, t0, menor
	
	# Si los números son iguales, mostrar un mensaje de felicitación y salir
	la a0, msg_ganador
	li a7, PRINT_STRING
	ecall
	# Ir al final del codigo
	b fin
	
mayor:
	# Si el número ingresado es mayor, mostrar la pista y repetir
	la a0, msg_mayor
	li a7, PRINT_STRING
	ecall
	b loop
	
menor:
	# Si el número ingresado es menor, mostrar la pista y repetir
	la a0, msg_menor
	li a7, PRINT_STRING
	ecall
	b loop
	
# Fin del codigo
fin:
	li a7 EXIT
	ecall
	



