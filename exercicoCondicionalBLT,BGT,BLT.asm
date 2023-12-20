.data
	msg: .asciiz "Digite um numero: "
	menor: .asciiz "O numero e menor que zero"
	maior: .asciiz "O numero e maior que zero"
	igual: .asciiz "O numero e igual a zero"
.text

	#imprimindo mensagem para o usuario
	li $v0, 4
	la $a0, msg
	syscall
	
	#ler o numero inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	beq $t0, $zero, imprimeIgual
	bgt $t0, $zero, imprimeMaior
	blt $t0, $zero, imprimeMenor
	
	imprimeIgual:
		#imprime que o numero e igual a zero
		li $v0, 4
		la $a0, igual
		syscall
		
		li $v0, 10
		syscall
		
	imprimeMaior:
		#imprime que o numero e maior que zero
		li $v0, 4
		la $a0, maior
		syscall
		
		li $v0, 10
		syscall
		
	imprimeMenor:
		#imprime que o numero e menor que zero
		li $v0, 4
		la $a0, menor
		syscall
		
		li $v0, 10
		syscall	