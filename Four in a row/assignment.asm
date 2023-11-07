.data
head: .asciiz "\n1 2 3 4 5 6 7\n"
Name1: .space 50
Name2: .space 50
message1: .asciiz "\n\t\t Player 1's Nickname (X): "
message2: .asciiz "\n\t\t Player 2's Nickname (O): "
board: .word '_', '_', '_', '_', '_', '_', '_', '_', '_','_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_', '_','_', '_', '_', '_', '_', '_', '_', '_', '_','_', '_', '_', '_', '_', '_', '_', '_'
newline: .asciiz "\n"
playerX: .word 'X'
playerO: .word 'O'
space: .asciiz " "
empty: .word '_'
turn: .asciiz "\nPlayer's turn: "
choose: .asciiz "\nChoose a column (from 1 to 7):	"
error: .asciiz "\nInvalid position! Try again\n"
gameover: .asciiz "\n\t\t Game over\n"
winner: .asciiz "\nWinner is:	"
tiegame: .asciiz "\nTIE GAME"
with: .asciiz "\nWin the game with "
pieces: .asciiz " pieces\n"
limit: .asciiz "\nBecause other player violates over 3 times\n"
remain: .asciiz "The number of remaining violations:	"
option: .asciiz "\nOption:\n"
undo: .asciiz "Undo"
.text
li $s1, 1 #turn
li $s2, 0 #solout

li $s6, 0 #piece1
li $s7, 0 #piece2

li $s3, 0 #canhcao1
li $s4, 0 #canhcao2

jal getName

main:

li $v0, 4
la $a0, head
syscall

la $s0, board
li $t1, 0

printBoard:

li $t4, 0
beq $t1, 6, out

inner_loop:

beq $t4, 7, next_row

lw $a0, ($s0)            
li $v0, 11                 
syscall
    
li $v0, 4
la $a0, space
syscall

addi $s0, $s0, 4
addi $t4, $t4, 1

j inner_loop

next_row:
la $a0, newline
li $v0, 4
syscall
addi $t1, $t1, 1
j printBoard

out:
jal checkwin

move $t0,$v1
bne $t0, $zero, over

addi $s2, $s2, 1
jal mode 

addi $s1, $s1, 1
bne $s2, 43, main

error1:

bne $s1, 1, violation2
addi $s3, $s3, 1
j tiep

violation2:
addi $s4, $s4, 1

tiep:
beq $s3 , 4, violation1_4
beq $s4 , 4, violation2_4
li $v0, 4
la $a0, error
syscall	

mode:
beq $s2, 43, tie
div $s1, $s1, 2
mfhi $s1
	
beq $s1,1,player1 
li $s1,2

player2:
li $s5, 3
sub $s5, $s5, $s4

li $v0, 4
la $a0, turn
syscall
li $v0, 4
la $a0, Name2
syscall

li $v0, 4
la $a0, remain
syscall

li $v0, 1
move $a0, $s5
syscall

li $v0, 4
la $a0, choose
syscall

li $v0, 5
syscall
move $t8, $v0

lw $t9, playerO
move $v1,$s1

j assign

continue2:
addi $s7, $s7, 1
jr $ra 

player1:
li $s5, 3
sub $s5, $s5, $s3

li $v0, 4
la $a0, turn
syscall
li $v0, 4
la $a0, Name1
syscall

li $v0, 4
la $a0, remain
syscall

li $v0, 1
move $a0, $s5
syscall

li $v0, 4
la $a0, choose
syscall

li $v0, 5
syscall
move $t8, $v0

lw $t9, playerX

li $t1,1
move $v1,$t1
j assign

continue1:
addi $s6, $s6, 1
jr $ra 

assign:

beq $t8,1,assign1
beq $t8,2,assign2
beq $t8,3,assign3
beq $t8,4,assign4
beq $t8,5,assign5
beq $t8,6,assign6
beq $t8,7,assign7

j error1

assign1:
li $s5, 168

bne $s2, 1, checktiep1
addi $s3, $s3, 1
checktiep1:
bne $s2, 2, loop1
addi $s4, $s4, 1

loop1:
subi $s5, $s5, 28
beq $s5, -28, error1 
lw $t7, playerO
lw $t6, playerX
lw $t5, board($s5)

beq $t5, $t7, loop1
beq $t5, $t6, loop1
sw $t9, board($s5)

beq $s1,1, continue1
j continue2

assign2:
li $s5, 172

bne $s2, 1, checktiep2
addi $s3, $s3, 1
checktiep2:
bne $s2, 2, loop1
addi $s4, $s4, 1

loop2:
subi $s5, $s5, 28
beq $s5, -24, error1 
lw $t7, playerO
lw $t6, playerX
lw $t5, board($s5)

beq $t5, $t7, loop2
beq $t5, $t6, loop2
sw $t9, board($s5)

beq $s1,1, continue1
j continue2

assign3:
li $s5, 176

bne $s2, 1, checktiep3
addi $s3, $s3, 1
checktiep3:
bne $s2, 2, loop1
addi $s4, $s4, 1

loop3:
subi $s5, $s5, 28
beq $s5, -20, error1 
lw $t7, playerO
lw $t6, playerX
lw $t5, board($s5)

beq $t5, $t7, loop3
beq $t5, $t6, loop3
sw $t9, board($s5)

beq $s1,1, continue1
j continue2

assign4:
li $s5, 180

loop4:
subi $s5, $s5, 28
beq $s5, -16, error1 
lw $t7, playerO
lw $t6, playerX
lw $t5, board($s5)

beq $t5, $t7, loop4
beq $t5, $t6, loop4
sw $t9, board($s5)

beq $s1,1, continue1
j continue2

assign5:
li $s5, 184

bne $s2, 1, checktiep5
addi $s3, $s3, 1
checktiep5:
bne $s2, 2, loop1
addi $s4, $s4, 1

loop5:
subi $s5, $s5, 28
beq $s5, -12, error1 
lw $t7, playerO
lw $t6, playerX
lw $t5, board($s5)

beq $t5, $t7, loop5
beq $t5, $t6, loop5
sw $t9, board($s5)

beq $s1,1, continue1
j continue2

assign6:
li $s5, 188

bne $s2, 1, checktiep6
addi $s3, $s3, 1
checktiep6:
bne $s2, 2, loop1
addi $s4, $s4, 1

loop6:
subi $s5, $s5, 28
beq $s5, -8, error1 
lw $t7, playerO
lw $t6, playerX
lw $t5, board($s5)

beq $t5, $t7, loop6
beq $t5, $t6, loop6
sw $t9, board($s5)

beq $s1,1, continue1
j continue2

assign7:
li $s5, 192

bne $s2, 1, checktiep7
addi $s3, $s3, 1
checktiep7:
bne $s2, 2, loop1
addi $s4, $s4, 1

loop7:
subi $s5, $s5, 28
beq $s5, -4, error1 
lw $t7, playerO
lw $t6, playerX
lw $t5, board($s5)

beq $t5, $t7, loop7
beq $t5, $t6, loop7
sw $t9, board($s5)

beq $s1,1, continue1
j continue2

checkwin:
la $s0, board
li $s5, 0

row1:
beq $s5, 4, next_row2

addi $s0, $s0, 4
addi $s5, $s5, 1

lw $t5, -4($s0)
lw $t6, ($s0)
beq $t5, '_', row1

bne $t5, $t6, row1
lw $t7, 4($s0)
bne $t5, $t7, row1
lw $t8, 8($s0)
bne $t5, $t8, row1
beq $t8, '_', next_row2
beq $t8, 0, next_row2

move $v1, $s1
jr $ra 

next_row2:
la $s0, board
li $s5, 0
row2:
beq $s5, 4, next_row3

addi $s0, $s0, 4
addi $s5, $s5, 1

lw $t5, 24($s0)
lw $t6, 28($s0)
beq $t5, '_', row2

bne $t5, $t6, row2
lw $t7, 32($s0)
bne $t5, $t7, row2
lw $t8, 36($s0)
bne $t5, $t8, row2
beq $t8, '_', next_row3
beq $t8, 0, next_row3

move $v1, $s1
jr $ra

next_row3:
la $s0, board
li $s5, 0

row3:
beq $s5, 4, next_row4

addi $s0, $s0, 4
addi $s5, $s5, 1

lw $t5, 52($s0)
lw $t6, 56($s0)
beq $t5, '_', row3

bne $t5, $t6, row3
lw $t7, 60($s0)
bne $t5, $t7, row3
lw $t8, 64($s0)
bne $t5, $t8, row3
beq $t8, '_', next_row4
beq $t8, 0, next_row4

move $v1, $s1
jr $ra

next_row4:
la $s0, board
li $s5, 0

row4:
beq $s5, 4, next_row5

addi $s0, $s0, 4
addi $s5, $s5, 1

lw $t5, 80($s0)
lw $t6, 84($s0)
beq $t5, '_', row4

bne $t5, $t6, row4
lw $t7, 88($s0)
bne $t5, $t7, row4
lw $t8, 92($s0)
bne $t5, $t8, row4
beq $t8, '_', next_row5
beq $t8, 0, next_row5

move $v1, $s1
jr $ra

next_row5:
la $s0, board
li $s5, 0

row5:
beq $s5, 4, next_row6

addi $s0, $s0, 4
addi $s5, $s5, 1

lw $t5, 108($s0)
lw $t6, 112($s0)
beq $t5, '_', row5

bne $t5, $t6, row5
lw $t7, 116($s0)
bne $t5, $t7, row5
lw $t8, 120($s0)
bne $t5, $t8, row5
beq $t8, '_', next_row6
beq $t8, 0, next_row6

move $v1, $s1
jr $ra

next_row6:
la $s0, board
li $s5, 0

row6:
beq $s5, 4, next_column1

addi $s0, $s0, 4
addi $s5, $s5, 1

lw $t5, 136($s0)
lw $t6, 140($s0)
beq $t5, '_', row6

bne $t5, $t6, row6
lw $t7, 144($s0)
bne $t5, $t7, row6
lw $t8, 148($s0)
bne $t5, $t8, row6
beq $t8, '_', next_column1
beq $t8, 0, next_column1

move $v1, $s1
jr $ra

next_column1:
la $s0, board
li $s5, 0

column1:
beq $s5, 3, next_column2

addi $s0, $s0, 28
addi $s5, $s5, 1

lw $t5, -28($s0)
lw $t6, ($s0)
beq $t5, '_', column1

bne $t5, $t6, column1
lw $t7, 28($s0)
bne $t5, $t7, column1
lw $t8, 56($s0)
bne $t5, $t8, column1
beq $t8, '_', next_column2
beq $t8, 0, next_column2

move $v1, $s1
jr $ra

next_column2:
la $s0, board
li $s5, 0

column2:
beq $s5, 3, next_column3

addi $s0, $s0, 28
addi $s5, $s5, 1

lw $t5, -24($s0)
lw $t6, 4($s0)
beq $t5, '_', column2

bne $t5, $t6, column2
lw $t7, 32($s0)
bne $t5, $t7, column2
lw $t8, 60($s0)
bne $t5, $t8, column2
beq $t8, '_', next_column3
beq $t8, 0, next_column3

move $v1, $s1
jr $ra

next_column3:
la $s0, board
li $s5, 0

column3:
beq $s5, 3, next_column4

addi $s0, $s0, 28
addi $s5, $s5, 1

lw $t5, -20($s0)
lw $t6, 8($s0)
beq $t5, '_', column3

bne $t5, $t6, column3
lw $t7, 36($s0)
bne $t5, $t7, column3
lw $t8, 64($s0)
bne $t5, $t8, column3
beq $t8, '_', next_column4
beq $t8, 0, next_column4

move $v1, $s1
jr $ra

next_column4:
la $s0, board
li $s5, 0

column4:
beq $s5, 3, next_column5

addi $s0, $s0, 28
addi $s5, $s5, 1

lw $t5, -16($s0)
lw $t6, 12($s0)
beq $t5, '_', column4

bne $t5, $t6, column4
lw $t7, 40($s0)
bne $t5, $t7, column4
lw $t8, 68($s0)
bne $t5, $t8, column4
beq $t8, '_', next_column5
beq $t8, 0, next_column5

move $v1, $s1
jr $ra

next_column5:
la $s0, board
li $s5, 0

column5:
beq $s5, 3, next_column6

addi $s0, $s0, 28
addi $s5, $s5, 1

lw $t5, -12($s0)
lw $t6, 16($s0)
beq $t5, '_', column5

bne $t5, $t6, column5
lw $t7, 44($s0)
bne $t5, $t7, column5
lw $t8, 72($s0)
bne $t5, $t8, column5
beq $t8, '_', next_column6
beq $t8, 0, next_column6

move $v1, $s1
jr $ra

next_column6:
la $s0, board
li $s5, 0

column6:
beq $s5, 3, next_column7

addi $s0, $s0, 28
addi $s5, $s5, 1

lw $t5, -8($s0)
lw $t6, 20($s0)
beq $t5, '_', column6

bne $t5, $t6, column6
lw $t7, 48($s0)
bne $t5, $t7, column6
lw $t8, 76($s0)
bne $t5, $t8, column6
beq $t8, '_', next_column7
beq $t8, 0, next_column7

move $v1, $s1
jr $ra

next_column7:
la $s0, board
li $s5, 0

column7:
beq $s5, 3, next_cross1

addi $s0, $s0, 28
addi $s5, $s5, 1

lw $t5, -4($s0)
lw $t6, 24($s0)
beq $t5, '_', column7

bne $t5, $t6, column7
lw $t7, 52($s0)
bne $t5, $t7, column7
lw $t8, 80($s0)
bne $t5, $t8, column7
beq $t8, '_', next_cross1
beq $t8, 0, next_cross1

move $v1, $s1
jr $ra

next_cross1:
la $s0, board
li $s5, 0

cross1:
beq $s5, 1, next_cross2

addi $s0, $s0, 24
addi $s5, $s5, 1

lw $t5, -12($s0)
lw $t6, 12($s0)
beq $t5, '_', cross1

bne $t5, $t6, cross1
lw $t7, 36($s0)
bne $t5, $t7, cross1
lw $t8, 40($s0)
bne $t5, $t8, cross1
beq $t8, '_', next_cross2
beq $t8, 0, next_cross2

move $v1, $s1
jr $ra

next_cross2:
la $s0, board
li $s5, 0

cross2:
beq $s5, 2, next_cross3

addi $s0, $s0, 24
addi $s5, $s5, 1

lw $t5, -8($s0)
lw $t6, 16($s0)
beq $t5, '_', cross2

bne $t5, $t6, cross2
lw $t7, 40($s0)
bne $t5, $t7, cross2
lw $t8, 64($s0)
bne $t5, $t8, cross2
beq $t8, '_', next_cross3
beq $t8, 0, next_cross3

move $v1, $s1
jr $ra

next_cross3:
la $s0, board
li $s5, 0

cross3:
beq $s5, 3, next_cross4

addi $s0, $s0, 24
addi $s5, $s5, 1

lw $t5, -4($s0)
lw $t6, 20($s0)
beq $t5, '_', cross3

bne $t5, $t6, cross3
lw $t7, 44($s0)
bne $t5, $t7, cross3
lw $t8, 68($s0)
bne $t5, $t8, cross3
beq $t8, '_', next_cross4
beq $t8, 0, next_cross4

move $v1, $s1
jr $ra

next_cross4:
la $s0, board
li $s5, 0

cross4:
beq $s5, 3, next_cross5

addi $s0, $s0, 24
addi $s5, $s5, 1

lw $t5, ($s0)
lw $t6, 24($s0)
beq $t5, '_', cross4

bne $t5, $t6, cross4
lw $t7, 48($s0)
bne $t5, $t7, cross4
lw $t8, 72($s0)
bne $t5, $t8, cross4
beq $t8, '_', next_cross5
beq $t8, 0, next_cross5

move $v1, $s1
jr $ra

next_cross5:
la $s0, board
li $s5, 0

cross5:
beq $s5, 2, next_cross6

addi $s0, $s0, 24
addi $s5, $s5, 1

lw $t5, 28($s0)
lw $t6, 52($s0)
beq $t5, '_', cross5

bne $t5, $t6, cross5
lw $t7, 76($s0)
bne $t5, $t7, cross5
lw $t8, 100($s0)
bne $t5, $t8, cross5
beq $t8, '_', next_cross6
beq $t8, 0, next_cross6

move $v1, $s1
jr $ra

next_cross6:
la $s0, board
li $s5, 0

cross6:
beq $s5, 1, end

addi $s0, $s0, 24
addi $s5, $s5, 1

lw $t5, 56($s0)
lw $t6, 80($s0)
beq $t5, '_', cross6

bne $t5, $t6, cross6
lw $t7, 104($s0)
bne $t5, $t7, cross6
lw $t8, 128($s0)
bne $t5, $t8, cross6
beq $t8, '_', end
beq $t8, 0, end

move $v1, $s1
jr $ra

end:
li $v1, 0
jr $ra

exit:
li $v0, 4
la $a0, gameover
syscall

li $v0, 10
syscall

tie:
li $v0, 4
la $a0, tiegame
syscall

li $v0, 10
syscall

over:
beq $t0,2,Xwin

li $v0 , 4
la $a0 , winner
syscall

li $v0 , 4
la $a0 , Name2
syscall

li $v0 , 4
la $a0 , with
syscall
li $v0, 1
move $a0, $s7
syscall
li $v0 , 4
la $a0 , pieces
syscall
j exit

Xwin:
li $v0 , 4
la $a0 , winner
syscall

li $v0 , 4
la $a0 , Name1
syscall

li $v0 , 4
la $a0 , with
syscall
li $v0, 1
move $a0, $s6
syscall
li $v0 , 4
la $a0 , pieces
syscall
j exit

violation1_4:

li $v0 , 4
la $a0 , winner
syscall

li $v0 , 4
la $a0 , Name2
syscall
li $v0 , 4
la $a0 , limit
syscall
j exit
violation2_4:

li $v0 , 4
la $a0 , winner
syscall

li $v0 , 4
la $a0 , Name1
syscall
li $v0 , 4
la $a0 , limit
syscall
j exit



getName:
li $v0, 4
la $a0, message1
syscall
#taking string as input
la $a0 , Name1
li $a1 , 1024
li $v0 , 8
syscall
li $v0, 4
la $a0, message2
syscall
#taking string as input
la $a0 , Name2
li $a1 , 1024
li $v0 , 8
syscall   	
jr $ra

