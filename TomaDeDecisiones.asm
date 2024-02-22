#Implementar toma de decisiones

	.include "servicios.asm"
	
	.data

msg_iguales: .string "iguales"
msg_dif: .string "diferentes"

	.text
	li t0, 20
	li t1, 22
	
	##..?..##
	
	beq t0, t1, iguales
	
	#Si los registros NO son iguales:
	
	la a0, msg_dif
	li a7, PRINT_STRING
	ecall
	
	b fin
	
	
	
	#Los registros son iguales	
iguales:
	la a0, msg_iguales
	li a7 PRINT_STRING
	ecall
	
	
	#Terminar
fin:
	li a7, EXIT
	ecall
	