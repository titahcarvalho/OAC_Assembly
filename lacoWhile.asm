.data
	msg: .asciiz "Digite um numero: "
	espaco: .byte ' ' 
.text
	#imprimindo mensagem para o usuario
	li $v0, 4
	la $a0, msg
	syscall
	
	#ler o numero inteiro
	li $v0, 5
	syscall
	
	move $t0, $v0
	
	move $t1, $zero
	
	laco:
		bgt $t1, $t0, caifora
		#imprimir o $t1
		li $v0, 1
		move $a0,$t1
		syscall
		
		#imprime o espa�o em branco
		li $v0, 4
		la $a0, espaco
		syscall
	
		addi $t1, $t1, 1
		j laco
	caifora:
	