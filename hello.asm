.data 
hello: .asciiz "Ola mundo"

.text
la $a0, hello

addi $v0, $zero, 4
syscall 