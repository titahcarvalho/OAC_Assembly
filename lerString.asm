.data
	pergunta: .asciiz "Qual e o seu nome: "
	saudacao: .asciiz "Ol�, "
	nome: .space 25
.text	
	#impress�o da pergunta
	li $v0, 4
	la $a0, pergunta
	syscall
	
	#leitura do nome
	li $v0,8
	la $a0, nome
	la $a1, 25
	syscall
	
	#mostrar a sauda��o
	li $v0, 4
	la $a0, saudacao
	syscall
	
	#impress�o do nome
	li $v0, 4
	la $a0, nome
	syscall