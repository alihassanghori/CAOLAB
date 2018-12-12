.data 
discs: .asciiz "Enter no of disks = "
moves: .asciiz "Total Number of moves = "
.text
la $t0, 2
la $t2, 0
la $t4, 1
la $a0, discs
li $v0, 4
syscall
li $v0, 5
syscall
move $t1, $v0

tower:
mul $t2, $t4, $t0
addi $t4, $t2, 0
subi $t1, $t1, 1
bnez $t1,tower

subi $t4, $t4, 1
la $a0, moves
li $v0, 4
syscall
move $a0, $t4
li $v0, 1
syscall
