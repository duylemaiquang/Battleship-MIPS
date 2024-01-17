.data
board1: .space 196	
board2: .space 196
entermess: .asciiz "Enter the ship row[bow], column[bow], row[stern], column[stern]: \n"
confirm: .asciiz "Do you want to enter this (1. Yes; 2. No)?"
warnmess: .asciiz "Please input correctly!\n"
warnmess2: .asciiz "There are already a ship!\n"
boatmess: .asciiz "You are out of that boat!\n"
attackmess1: .asciiz "Enter spot to attack, Player 1(row,column): \n"
attackmess2: .asciiz "Enter spot to attack, Player 2(row,column): \n"
hitmess: .asciiz "HIT!\n"
entermess1: .asciiz "It's player 1 entering turn!\n"
entermess2: .asciiz "It's player 2 entering turn!\n"
player1w: .asciiz "Player 1 win!\n"
player2w: .asciiz "Player 2 win!\n"
player1h: .asciiz "Player 1 HIT!"
player1m: .asciiz "Player 1 MISS!"
player2h: .asciiz "Player 2 HIT!"
player2m: .asciiz "Player 2 MISS!"
upper: .asciiz "  0 1 2 3 4 5 6 "
space: .asciiz " "
newline: .asciiz "\n"
result: .asciiz "C:\\Users\\DuyLe\\Desktop\\result.txt"
resultmess: .asciiz "The game result: \n"
comma: .asciiz ", "
brack1: .asciiz " ( "
brack2: .asciiz ") "
checkmess: .asciiz "Do you want to check your board (1. Yes; 2. No)?"
.text
main:

li $t1, 0
li $t0, 0
jal setb1

li $t0, 0
jal setb2

li $v0, 13
la $a0, result
li $a1, 1
syscall
move $s0, $v0

li $v0, 15
move $a0, $s0
la $a1, resultmess
la $a2, 18
syscall

li $v0, 4
la $a0, entermess1
syscall

li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board1

la $a0, newline
li $v0, 4
syscall

#board1
li $s1, 3
li $s2, 2
li $s3, 1

li $t0, 0
li $t1, 0
li $t2, 0
jal entership1

li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board1

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership1

li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board1

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership1

li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board1

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership1

li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board1

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership1

li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board1

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership1

li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board1

la $a0, newline
li $v0, 4
syscall

#board2

li $v0, 4
la $a0, entermess2
syscall

li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board2

la $a0, newline
li $v0, 4
syscall

li $s1, 3
li $s2, 2
li $s3, 1

li $t0, 0
li $t1, 0
li $t2, 0
jal entership2

syscall
li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board2

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership2

syscall
li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board2

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership2

syscall
li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board2

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership2

syscall
li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board2

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership2

syscall
li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board2

la $a0, newline
li $v0, 4
syscall

li $t0, 0
li $t1, 0
li $t2, 0
jal entership2

syscall
li $v0, 4
la $a0, upper
syscall
la $a0, newline
li $v0, 4
syscall
li $t0, 0
li $t1, 1
li $t2, 1
jal print_board2

la $a0, newline
li $v0, 4
syscall

li $v0, 42
li $a1, 2
syscall
move $s4, $a0
li $s6, 0 #winnerindicator
jal attack

li $v0, 16
move $a0, $s0
syscall

li $v0, 10
syscall
#####
################
#####
attack:
li $t9, 1
beq $s6, $t9, winner1
li $t9, 2
beq $s6, $t9, winner2

beqz $s4, attack1
li $t9, 1
beq $s4, $t9, attack2

j attack
#####
attack1:
li $v0, 4
la $a0, attackmess1
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 5
syscall
move $t2, $v0

bltz $t1, warnattack1
bltz $t2, warnattack1

li $t7, 7
bgt $t1, $t7, warnattack1
bgt $t2, $t7, warnattack1

la $t3, ($t1)
li $t6, 28
li $t8, 4
mul $t3, $t3, $t6
mul $t8, $t2, $t8
add $t3, $t3, $t8

lw $s7, board2($t3)
bnez $s7, hit1

li $v0, 15
move $a0, $s0
la $a1, player1m
la $a2, 15
syscall

li $s4, 1
j attack
#####
hit1:
li $t9, 0
sw $t9, board2($t3)
li $v0, 4
la $a0, hitmess
syscall

li $v0, 15
move $a0, $s0
la $a1, player1h
la $a2, 14
syscall

li $t0, 0
j checkwin2
#####
attack2:
li $v0, 4
la $a0, attackmess2
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 5
syscall
move $t2, $v0

bltz $t1, warnattack2
bltz $t2, warnattack2

li $t7, 7
bgt $t1, $t7, warnattack2
bgt $t2, $t7, warnattack2

la $t3, ($t1)
li $t6, 28
li $t8, 4
mul $t3, $t3, $t6
mul $t8, $t2, $t8
add $t3, $t3, $t8

lw $s7, board1($t3)
bnez $s7, hit2

li $v0, 15
move $a0, $s0
la $a1, player2m
la $a2, 15
syscall

li $s4, 0
j attack
#####
hit2:
li $t9, 0
sw $t9, board1($t3)
li $v0, 4
la $a0, hitmess
syscall

li $v0, 15
move $a0, $s0
la $a1, player2h
la $a2, 14
syscall

li $t0, 0
j checkwin1
#####
checkwin1:
beq $t0, 196, winner2
lw $t6, board1($t0)
addi $t0, $t0, 4
beqz $t6, checkwin1

li $s4, 0
j attack
#####
checkwin2:
beq $t0, 196, winner1
lw $t6, board2($t0)
addi $t0, $t0, 4
beqz $t6, checkwin2

li $s4, 1
j attack
#####
winner1:
li $v0, 4
la $a0, player1w
syscall
j exit
#####
winner2:
li $v0, 4
la $a0, player2w
syscall
j exit
#####
warnattack1:
li $v0, 4
la $a0, warnmess
syscall
j attack1
####
warnattack2:
li $v0, 4
la $a0, warnmess
syscall
j attack2
####
entership1:
li $v0, 4
la $a0, entermess
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 5
syscall
move $t2, $v0

li $v0, 5
syscall
move $t3, $v0

li $v0, 5
syscall
move $t4, $v0

li $t5, 1
li $t6, 2

li $v0, 4
la $a0, confirm
syscall
li $v0, 5
syscall
beq $v0, $t5, checkinput
beq $v0, $t6, entership1

j warnenter
#####
warnenter:
li $v0, 4
la $a0, warnmess
syscall

j entership1
#####
warnenter2:
li $v0, 4
la $a0, warnmess2
syscall

j entership1
#####
checkinput:
bltz $t1, warnenter
bltz $t2, warnenter
bltz $t3, warnenter
bltz $t4, warnenter

li $t7, 7
bgt $t1, $t7, warnenter
bgt $t2, $t7, warnenter
bgt $t3, $t7, warnenter
bgt $t4, $t7, warnenter

li $t6, 1
li $t7, 5

j checkxea
#####
checkxea:
bne $t1, $t3, checkyeb
sub $t5, $t2, $t4
abs $t5, $t5
addi $t5, $t5, 1

li $t6, 2
li $t7, 4

blt $t5, $t6, warnenter
bgt $t5, $t7, warnenter

j checkxea2
#####
checkxea2:
la $t7, ($t1)
li $t6, 28
li $t8, 4
li $t9, 1
mul $t7, $t7, $t6
mul $t8, $t2, $t8
add $t7, $t7, $t8
la $s6, ($t5)
bgt $t2, $t4, checkol1.2 #y>b
j checkol1.1
#####
checkol1.1: #y<b(go right)
beqz $s6, checkboat1
lw $s5, board1($t7)
beq $s5, $t9, warnenter2
addi $t7, $t7, 4
subi $s6, $s6, 1
j checkol1.1
#####
checkol1.2: #y>b (go left)
beqz $s6, checkboat2
lw $s5, board1($t7)
beq $s5, $t9, warnenter2
addi $t7, $t7, -4
subi $s6, $s6, 1
j checkol1.2
#####
checkyeb:
bne $t2, $t4, warnenter
sub $t5, $t1, $t3
abs $t5, $t5
addi $t5, $t5, 1

li $t6, 2
li $t7, 4

blt $t5, $t6, warnenter
bgt $t5, $t7, warnenter

j checkyeb2
####
checkyeb2:
la $t7, ($t2)
li $t6, 28
li $t8, 4
li $t9, 1
mul $t7, $t7, $t8
mul $t6, $t1, $t6
add $t7, $t7, $t6
la $s6, ($t5)
bgt $t1, $t3, checkol2.2 #x>a

j checkol2.1
####
checkol2.1: #(x<a) 
beqz $s6, checkboat3
lw $s5, board1($t7)
beq $s5, $t9, warnenter2
addi $t7, $t7, 28
subi $s6, $s6, 1
j checkol2.1
####
checkol2.2: #(x>a)
beqz $s6, checkboat4
lw $s5, board1($t7)
beq $s5, $t9, warnenter2
addi $t7, $t7, -28
subi $s6, $s6, 1
j checkol2.2
####
checkboat1:
li $s7, 2
beq $t5, $s7, checkboat1.1
li $s7, 3
beq $t5, $s7, checkboat1.2
li $s7, 4
beq $t5, $s7, checkboat1.3

j exit
#####
checkboat1.1:
beqz $s1, occuboat

j preinsert1
#####
checkboat1.2:
beqz $s2, occuboat

j preinsert1
#####
checkboat1.3:
beqz $s3, occuboat

j preinsert1
#####
preinsert1:
la $t7, ($t2)
li $t6, 28
li $t8, 4
li $t9, 1
li $s5, 1
mul $t7, $t7, $t8
mul $t6, $t1, $t6
add $t7, $t7, $t6
la $s6, ($t5)
bgt $t2, $t4, insert1.2 #y>b

j insert1.1
####
insert1.1:
beqz $s6, preboatcount
sw $s5, board1($t7)
addi $t7, $t7, 4
subi $s6, $s6, 1

j insert1.1
####
insert1.2:
beqz $s6, preboatcount
sw $s5, board1($t7)
addi $t7, $t7, -4
subi $s6, $s6, 1

j insert1.2
####
preboatcount:
li $t9, 2
beq $t9, $t5, boatcount1
li $t9, 3
beq $t9, $t5, boatcount2
li $t9, 4
beq $t9, $t5, boatcount3
j exit
####
boatcount1:
subi $s1, $s1, 1
j exit
####
boatcount2:
subi $s2, $s2, 1
j exit
####
boatcount3:
subi $s3, $s3, 1
j exit
####
preinsert2:
la $t7, ($t2)
li $t6, 28
li $t8, 4
li $t9, 1
li $s5, 1
mul $t7, $t7, $t8
mul $t6, $t1, $t6
add $t7, $t7, $t6
la $s6, ($t5)
bgt $t1, $t3, insert2.2 #x>a

j insert2.1
####
insert2.1:
beqz $s6, preboatcount
sw $s5, board1($t7)
addi $t7, $t7, 28
subi $s6, $s6, 1

j insert2.1
####
insert2.2:
beqz $s6, preboatcount
sw $s5, board1($t7)
addi $t7, $t7, -28
subi $s6, $s6, 1

j insert2.2
####
checkboat2:
li $s7, 2
beq $t5, $s7, checkboat2.1
li $s7, 3
beq $t5, $s7, checkboat2.2
li $s7, 4
beq $t5, $s7, checkboat2.3

j exit
#####
checkboat2.1:
beqz $s1, occuboat

j preinsert1
#####
checkboat2.2:
beqz $s2, occuboat

j preinsert1
#####
checkboat2.3:
beqz $s3, occuboat

j preinsert1
#####
checkboat3:
li $s7, 2
beq $t5, $s7, checkboat3.1
li $s7, 3
beq $t5, $s7, checkboat3.2
li $s7, 4
beq $t5, $s7, checkboat3.3

j exit
#####
checkboat3.1:
beqz $s1, occuboat

j preinsert2
#####
checkboat3.2:
beqz $s2, occuboat

j preinsert2
#####
checkboat3.3:
beqz $s3, occuboat

j preinsert2
#####
checkboat4:
li $s7, 2
beq $t5, $s7, checkboat4.1
li $s7, 3
beq $t5, $s7, checkboat4.2
li $s7, 4
beq $t5, $s7, checkboat4.3

j exit
#####
checkboat4.1:
beqz $s1, occuboat

j preinsert2
#####
checkboat4.2:
beqz $s2, occuboat

j preinsert2
#####
checkboat4.3:
beqz $s3, occuboat

j preinsert2
#####
occuboat:
li $v0, 4
la $a0, boatmess
syscall
j entership1
#####
################################################
#####
entership2:
li $v0, 4
la $a0, entermess
syscall

li $v0, 5
syscall
move $t1, $v0

li $v0, 5
syscall
move $t2, $v0

li $v0, 5
syscall
move $t3, $v0

li $v0, 5
syscall
move $t4, $v0

li $t5, 1
li $t6, 2

li $v0, 4
la $a0, confirm
syscall
li $v0, 5
syscall
beq $v0, $t5, checkinputb2
beq $v0, $t6, entership2

j warnenterb2
#####
warnenterb2:
li $v0, 4
la $a0, warnmess
syscall

j entership2
#####
warnenter2b2:
li $v0, 4
la $a0, warnmess2
syscall

j entership1
#####
checkinputb2:
bltz $t1, warnenterb2
bltz $t2, warnenterb2
bltz $t3, warnenterb2
bltz $t4, warnenterb2

li $t7, 7
bgt $t1, $t7, warnenterb2
bgt $t2, $t7, warnenterb2
bgt $t3, $t7, warnenterb2
bgt $t4, $t7, warnenterb2

li $t6, 1
li $t7, 5

j checkxeab2
#####
checkxeab2:
bne $t1, $t3, checkyebb2
sub $t5, $t2, $t4
abs $t5, $t5
addi $t5, $t5, 1

li $t6, 2
li $t7, 4

blt $t5, $t6, warnenterb2
bgt $t5, $t7, warnenterb2

j checkxea2b2
#####
checkxea2b2:
la $t7, ($t1)
li $t6, 28
li $t8, 4
li $t9, 1
mul $t7, $t7, $t6
mul $t8, $t2, $t8
add $t7, $t7, $t8
la $s6, ($t5)
bgt $t2, $t4, checkol1.2b2 #y>b
j checkol1.1b2
#####
checkol1.1b2: #y<b(go right)
beqz $s6, checkboat1b2
lw $s5, board2($t7)
beq $s5, $t9, warnenter2b2
addi $t7, $t7, 4
subi $s6, $s6, 1
j checkol1.1b2
#####
checkol1.2b2: #y>b (go left)
beqz $s6, checkboat2b2
lw $s5, board2($t7)
beq $s5, $t9, warnenter2b2
addi $t7, $t7, -4
subi $s6, $s6, 1
j checkol1.2b2
#####
checkyebb2:
bne $t2, $t4, warnenterb2
sub $t5, $t1, $t3
abs $t5, $t5
addi $t5, $t5, 1

li $t6, 2
li $t7, 4

blt $t5, $t6, warnenterb2
bgt $t5, $t7, warnenterb2

j checkyeb2b2
####
checkyeb2b2:
la $t7, ($t2)
li $t6, 28
li $t8, 4
li $t9, 1
mul $t7, $t7, $t8
mul $t6, $t1, $t6
add $t7, $t7, $t6
la $s6, ($t5)
bgt $t1, $t3, checkol2.2b2 #x>a

j checkol2.1b2
####
checkol2.1b2: #(x<a) 
beqz $s6, checkboat3b2
lw $s5, board2($t7)
beq $s5, $t9, warnenter2b2
addi $t7, $t7, 28
subi $s6, $s6, 1
j checkol2.1b2
####
checkol2.2b2: #(x>a)
beqz $s6, checkboat4b2
lw $s5, board2($t7)
beq $s5, $t9, warnenter2b2
addi $t7, $t7, -28
subi $s6, $s6, 1
j checkol2.2b2
####
checkboat1b2:
li $s7, 2
beq $t5, $s7, checkboat1.1b2
li $s7, 3
beq $t5, $s7, checkboat1.2b2
li $s7, 4
beq $t5, $s7, checkboat1.3b2

j exit
#####
checkboat1.1b2:
beqz $s1, occuboatb2

j preinsert1b2
#####
checkboat1.2b2:
beqz $s2, occuboatb2

j preinsert1b2
#####
checkboat1.3b2:
beqz $s3, occuboatb2

j preinsert1b2
#####
preinsert1b2:
la $t7, ($t2)
li $t6, 28
li $t8, 4
li $t9, 1
li $s5, 1
mul $t7, $t7, $t8
mul $t6, $t1, $t6
add $t7, $t7, $t6
la $s6, ($t5)
bgt $t2, $t4, insert1.2b2 #y>b

j insert1.1b2
####
insert1.1b2:
beqz $s6, preboatcountb2
sw $s5, board2($t7)
addi $t7, $t7, 4
subi $s6, $s6, 1

j insert1.1b2
####
insert1.2b2:
beqz $s6, preboatcountb2
sw $s5, board2($t7)
addi $t7, $t7, -4
subi $s6, $s6, 1

j insert1.2b2
####
preboatcountb2:
li $t9, 2
beq $t9, $t5, boatcount1b2
li $t9, 3
beq $t9, $t5, boatcount2b2
li $t9, 4
beq $t9, $t5, boatcount3b2
j exit
####
boatcount1b2:
subi $s1, $s1, 1
j exit
####
boatcount2b2:
subi $s2, $s2, 1
j exit
####
boatcount3b2:
subi $s3, $s3, 1
j exit
####
preinsert2b2:
la $t7, ($t2)
li $t6, 28
li $t8, 4
li $t9, 1
li $s5, 1
mul $t7, $t7, $t8
mul $t6, $t1, $t6
add $t7, $t7, $t6
la $s6, ($t5)
bgt $t1, $t3, insert2.2b2 #x>a

j insert2.1b2
####
insert2.1b2:
beqz $s6, preboatcountb2
sw $s5, board2($t7)
addi $t7, $t7, 28
subi $s6, $s6, 1

j insert2.1b2
####
insert2.2b2:
beqz $s6, preboatcountb2
sw $s5, board2($t7)
addi $t7, $t7, -28
subi $s6, $s6, 1

j insert2.2b2
####
checkboat2b2:
li $s7, 2
beq $t5, $s7, checkboat2.1b2
li $s7, 3
beq $t5, $s7, checkboat2.2b2
li $s7, 4
beq $t5, $s7, checkboat2.3b2

j exit
#####
checkboat2.1b2:
beqz $s1, occuboatb2

j preinsert1b2
#####
checkboat2.2b2:
beqz $s2, occuboatb2

j preinsert1b2
#####
checkboat2.3b2:
beqz $s3, occuboatb2

j preinsert1b2
#####
checkboat3b2:
li $s7, 2
beq $t5, $s7, checkboat3.1b2
li $s7, 3
beq $t5, $s7, checkboat3.2b2
li $s7, 4
beq $t5, $s7, checkboat3.3b2

j exit
#####
checkboat3.1b2:
beqz $s1, occuboatb2

j preinsert2b2
#####
checkboat3.2b2:
beqz $s2, occuboatb2

j preinsert2b2
#####
checkboat3.3b2:
beqz $s3, occuboatb2

j preinsert2b2
#####
checkboat4b2:
li $s7, 2
beq $t5, $s7, checkboat4.1b2
li $s7, 3
beq $t5, $s7, checkboat4.2b2
li $s7, 4
beq $t5, $s7, checkboat4.3b2

j exit
#####
checkboat4.1b2:
beqz $s1, occuboatb2

j preinsert2b2
#####
checkboat4.2b2:
beqz $s2, occuboatb2

j preinsert2b2
#####
checkboat4.3b2:
beqz $s3, occuboatb2

j preinsert2b2
#####
occuboatb2:
li $v0, 4
la $a0, boatmess
syscall
j entership2
#####
###################################
#####
setb1:
beq $t0, 196, exit
sw $t1, board1($t0)
addi $t0, $t0, 4

j setb1
####
setb2:
beq $t0, 196, exit
sw $t1, board2($t0)
addi $t0, $t0, 4

j setb2
####
print_board1:
beq $t0, 196, exit
beq $t2, 1, printfirst
li $v0, 1
lw $a0, board1($t0)
syscall
j check7
####
check7:
bgt $t1, 6, go_el
la $a0, space
li $v0, 4
syscall
addi $t1, $t1, 1
addi $t0, $t0 ,4
j print_board1
####
go_el:
beq $t2, 8, exit
li $t1, 1
la $a0, newline
li $v0, 4
syscall
li $v0, 1
la $a0, ($t2)
subi $a0, $a0, 1
syscall
addi $t2, $t2, 1
la $a0, space
li $v0, 4
syscall
addi $t0, $t0 ,4
j print_board1
#####
printfirst:
li $v0, 1
la $a0, ($t2)
subi $a0, $a0, 1
syscall
addi $t2, $t2, 1
la $a0, space
li $v0, 4
syscall
j print_board1
######
print_board2:
beq $t0, 196, exit
beq $t2, 1, printfirst_2
li $v0, 1
lw $a0, board2($t0)
syscall
j check7_2
#####
check7_2:
bgt $t1, 6, go_el_2
la $a0, space
li $v0, 4
syscall
addi $t1, $t1, 1
addi $t0, $t0 ,4
j print_board2
####
go_el_2:
beq $t2, 8, exit
li $t1, 1
la $a0, newline
li $v0, 4
syscall
li $v0, 1
la $a0, ($t2)
subi $a0, $a0, 1
syscall
addi $t2, $t2, 1
la $a0, space
li $v0, 4
syscall
addi $t0, $t0 ,4
j print_board2
####
printfirst_2:
li $v0, 1
la $a0, ($t2)
subi $a0, $a0, 1
syscall
addi $t2, $t2, 1
la $a0, space
li $v0, 4
syscall
j print_board2
####
exit:
jr $ra
