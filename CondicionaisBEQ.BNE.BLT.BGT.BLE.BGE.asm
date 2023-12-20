.data
	msg: .asciiz "Forneca um numero: "
	par: .asciiz "O numero e par "
	impar: .asciiz "O numero e impar"
.text
	#imprimindo mensagem para o usuario
	li $v0, 4
	la $a0, msg
	syscall
	
	#ler o numero
	li $v0, 5
	syscall
	
	li $t0, 2
	div $v0, $t0
	
	mfhi $t1, #possui o resto da divisão por 2
	
	beq $t1, $zero, imprimePar
	li $v0, 4
	la $a0, impar
	syscall
	
	#encerrar o programa , se não continuaria e informaria que é par
	li $v0, 10
	syscall
	
	imprimePar: 
		li $v0, 4
		la $a0, par
		syscall
	
	