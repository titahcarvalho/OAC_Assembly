.data
	pergunta: .asciiz "Qual e o seu nome: "
	saudacao: .asciiz "Olá, "
	nome: .space 25
.text	
	#impressão da pergunta
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#leitura do nome
	li $v0,8
	la $a0, nome
	la $a1, 25
	syscall
	
	#mostrar a saudação
	li $v0, 4
	la $a0, saudacao
	syscall
	
	#impressão do nome
	li $v0, 4
	la $a0, nome
	syscall