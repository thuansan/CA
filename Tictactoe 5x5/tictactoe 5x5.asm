.data
strName1:		.space 		100
strName2:		.space 		100
line4:			.asciiz 	"\n\n\t\t\t         Player 1's name (X): "
line5:			.asciiz 	"\n\n\t\t\t         Player 2's name (O): "
message_start:               .asciiz     "THE ONE WHO PLAYS FIRST WILL BE ALTERNATIVE EACH GAME.\nIN THE FIRST GAME, PLAYER 1 WILL GO FISRT. \n"
name2:			.asciiz		"\n\t\t\t\t      TIC TAC TOE GAME"
line2:			.asciiz		"\n\t\t\t   **************************************"
message0: .asciiz"\n"
message1: .asciiz"  "
message2: .asciiz"Player 1 (X) - Player 2 (O)\n\n"
message3: .asciiz"Player "
message3_b: .asciiz " in turn: "
message4x:	.asciiz "Choose x position (1 to 5): "
message4y:	.asciiz "Choose y position (1 to 5): "
message5: .asciiz" WINS ==========================="
message6: .asciiz"\t\t\t===========GAME DRAW==========\n\n "
message8: .asciiz"\t\t\t=========================== PLAYER "
message9: .asciiz"\n\n"
message10: .asciiz ""
message11: .asciiz "The number of games: "
message12: .asciiz "Score: Player 1(X) - Player 2(O)\n"
message13: .asciiz "                 "
message14: .asciiz" - " 
message15: .asciiz "____________________________________________________"
gameMenu: .asciiz "\n\nChoose an option:\n[1] Continue Game\t[99] Quit\nOption: "
request:.asciiz "[1] Play\n[2] Undo\nOption: "
draw_all: .asciiz  "===================== FINAL RESULT IS DRAW ====================="
win_all_2: .asciiz "\t\t THE FINAL WINNER IS PLAYER 2: "
win_all_1: .asciiz "\t\t THE FINAL WINNER IS PLAYER 1: "
warning:.asciiz "During the first turn, player is not allowed to choose the central point [3,3]\n"
invalid:.asciiz "invalid position\n"
error:	.asciiz "\nNo last move. Please select again"
array: .word ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '
array2: .word ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ',' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' ', ' '
array1:.word 'X', 'O'
score: .word 0,0
totalgame: .word -1
player: .word 1
turn: .word 0
L: .asciiz "         ||  "
M: .asciiz "  |  "
R: .asciiz "  |"
space: .asciiz"      "
Box1: .asciiz          "          ._____________________________.\n         /|     |     |     |     |     |\n"
Box2: .asciiz        "\n         ||_____|_____|_____|_____|_____| \n         ||     |     |     |     |     |\n"
Box3: .asciiz        "\n         ||.____|_____|_____|_____|_____|.\n         |/_____________________________/\n\n"
.text
jal   getName
main:
la $t0,score
addi $t1,$zero,0
addi $t2,$zero,0
sw $t1,0($t0)
sw $t2,4($t0)
reset:
la $t0,array2  #reset ban co 
la $t1,array
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)
addi $t0,$t0,4
addi $t1,$t1,4
lw $t3,0($t0)
sw $t3,0($t1)

	li 		$v0, 4
	la 		$a0, line2
	syscall
		
	li 		$v0, 4
	la		$a0, name2
	syscall
		
	li 		$v0, 4
	la 		$a0, line2
	syscall
		
	li 		$v0, 4
	la 		$a0, message0
	syscall
syscall
la $t0 , totalgame
lw $t1,0($t0)
addi $t1,$t1,1
sw $t1,0($t0)
li $v0,4
la $a0, message11
syscall
move $a0,$t1
li $v0,1
syscall
li $v0,4
la $a0,message0
syscall
li $v0,4
la $a0,message12
syscall
li $v0,4
la $a0,message13
syscall
la $t0, score
lw $t1,0($t0)
addi $a0,$t1,0
li $v0,1
syscall
li $v0,4
la $a0,message14
syscall
lw $t1,4($t0)
addi $a0,$t1,0
li $v0,1
syscall 

#Prepare
la $t0 , player
lw $t1,0($t0)
addi $t2,$t1,1
sw $t2,0($t0)
la $t0,array
li $t2,0 
li $t3,0 
li $t4,0
la $t5,array1
li $t6,0 
li $t7,0
li $t8,0
li $t9,0
li $s7,0
li $s6,0
li $s5,-4
li $s4,0
li $s3,0
li $s0,-4

Player:

li $v0 , 4
la $a0 , message9
syscall

jal board  

jal mode 

li $v0 , 4
la $a0 , message3
syscall
li $v0 , 1
move $a0 , $v1
syscall
li $v0,4
la $a0,message3_b
syscall
li $v0,1
beq $v1,$v0,nguoi_choi_1
li $v0,4
la $a0,strName2
syscall

j nguoi_choi_2

nguoi_choi_1:

li $v0,4
la $a0,strName1
syscall

nguoi_choi_2:

	li $v0, 4
	la $a0, request
	syscall
	li $v0, 5
	syscall
	add $s4, $v0, $zero
	beq $s4, 2, Undo

li $v0 , 4
la $a0 , message4x
syscall
	li $v0,5
	syscall
	add $s1, $v0, $zero
	sgt $s0, $s1, 5
	beq $s0, 1, invalidPos
	sle $s0, $s1, $zero
	beq $s0, 1, invalidPos

li $v0 , 4
la $a0 , message4y
syscall

	li $v0,5
	syscall
	add $s2, $v0, $zero
	sgt $s0, $s2, 5
	beq $s0, 1, invalidPos
	sle $s0, $s2, $zero
	beq $s0, 1, invalidPos
	li $s0, -4
	beq $s7, 0, midCheck
	addi $s6, $s7, -1
	beq $s6, 0, midCheck
	
	notMid:
	addi $s7, $s7, 1	#turn index
	addi $s1, $s1, -1	#set them back to machine cordinates (0 to 4)
	addi $s2, $s2, -1
	mul $s1,$s1, 4		# t7 = s2*4 * boardSize + s1*4
	mul $s2,$s2, 4
	mul $s2,$s2, 5
	add $t7, $s2, $s1
	div $t1, $t1, 2
	mfhi $t1
	bne $t1,1,prev2
	add $s5, $zero, $t7	# save t7 to prevPos1
	b continue
	prev2:
	add $s0, $zero, $t7	# save t7 to prevPos2
	
continue:

li $v0,4
la $a0, message15
syscall

jal change 

move $t6,$v1

bne $t7,0,assign2
lw $t4,0($t0)
bne $t4, ' ',assign2
sw $t6,0($t0)
b again

assign2:
bne $t7,4,assign3
lw $t4,4($t0)
bne $t4, ' ',assign3
sw $t6,4($t0)
b again

assign3:
bne $t7,8,assign4
lw $t4,8($t0)
bne $t4, ' ',assign4
sw $t6,8($t0)
b again

assign4:
bne $t7,12,assign5
lw $t4,12($t0)
bne $t4, ' ',assign5
sw $t6,12($t0)
b again

assign5:
bne $t7,16,assign6
lw $t4,16($t0)
bne $t4, ' ',assign6
sw $t6,16($t0)
b again

assign6:
bne $t7,20,assign7
lw $t4,20($t0)
bne $t4, ' ',assign7
sw $t6,20($t0)
b again

assign7:
bne $t7,24,assign8
lw $t4,24($t0)
bne $t4, ' ',assign8
sw $t6,24($t0)
b again

assign8:
bne $t7,28,assign9
lw $t4,28($t0)
bne $t4, ' ',assign9
sw $t6,28($t0)
b again

assign9:
bne $t7,32,assign10
lw $t4,32($t0)
bne $t4, ' ',assign10
sw $t6,32($t0)
b again

assign10:
bne $t7,36,assign11
lw $t4,36($t0)
bne $t4, ' ',assign11
sw $t6,36($t0)
b again

assign11:
bne $t7,40,assign12
lw $t4,40($t0)
bne $t4, ' ',assign12
sw $t6,40($t0)
b again

assign12:
bne $t7,44,assign13
lw $t4,44($t0)
bne $t4, ' ',assign13
sw $t6,44($t0)
b again

assign13:
bne $t7,48,assign14
lw $t4,48($t0)
bne $t4, ' ',assign14
sw $t6,48($t0)
b again

assign14:
bne $t7,52,assign15
lw $t4,52($t0)
bne $t4, ' ',assign15
sw $t6,52($t0)
b again

assign15:
bne $t7,56,assign16
lw $t4,56($t0)
bne $t4, ' ',assign16
sw $t6,56($t0)
b again

assign16:
bne $t7,60,assign17
lw $t4,60($t0)
bne $t4, ' ',assign17
sw $t6,60($t0)
b again

assign17:
bne $t7,64,assign18
lw $t4,64($t0)
bne $t4, ' ',assign18
sw $t6,64($t0)
b again

assign18:
bne $t7,68,assign19
lw $t4,68($t0)
bne $t4, ' ',assign19
sw $t6,68($t0)
b again

assign19:
bne $t7,72,assign20
lw $t4,72($t0)
bne $t4, ' ',assign20
sw $t6,72($t0)
b again

assign20:
bne $t7,76,assign21
lw $t4,76($t0)
bne $t4, ' ',assign21
sw $t6,76($t0)
b again

assign21:
bne $t7,80,assign22
lw $t4,80($t0)
bne $t4, ' ',assign22
sw $t6,80($t0)
b again

assign22:
bne $t7,84,assign23
lw $t4,84($t0)
bne $t4, ' ',assign23
sw $t6,84($t0)
b again

assign23:
bne $t7,88,assign24
lw $t4,88($t0)
bne $t4, ' ',assign24
sw $t6,88($t0)
b again

assign24:
bne $t7,92,assign25
lw $t4,92($t0)
bne $t4, ' ',assign25
sw $t6,92($t0)
b again

assign25:
bne $t7,96,same
lw $t4,96($t0)
beq $t4, 'X',same
beq $t4, 'Y',same
sw $t6,96($t0)
b again

same: 
sub $t1 $t1,1

again:

jal check

move $t2,$v1

add $t1,$t1,1

beq $t2,2,Player

li $v0 , 4
la $a0 , message9
syscall

jal board	

jal player_win 

Exit: 
li $v0, 10
syscall

board: 
	la $t4,array
	
	li $v0, 4 
	la $a0, Box1
	syscall
	
	li $v0, 4
	la $a0, L
	syscall
	lb $a0, ($t4)            
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall

	li $v0, 4
	la $a0, R
	syscall
	
	li $v0, 4
	la $a0, Box2
	syscall
	
	li $v0, 4
	la $a0, L
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11                
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11                  
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                   
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11                  
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11                  
	syscall

	li $v0, 4
	la $a0, R
	syscall
	
	li $v0, 4 
	la $a0, Box2
	syscall
	
	li $v0, 4
	la $a0, L
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11                
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11              
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall

	li $v0, 4
	la $a0, R
	syscall
	
	li $v0, 4 
	la $a0, Box2
	syscall
	
	li $v0, 4
	la $a0, L
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11                
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11              
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall

	li $v0, 4
	la $a0, R
	syscall
	
	li $v0, 4 
	la $a0, Box2
	syscall
	
	li $v0, 4
	la $a0, L
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11                
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)             
	li $v0, 11              
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall
	
	li $v0, 4
	la $a0, M
	syscall
	add $t4,$t4,4
	lb $a0, ($t4)              
	li $v0, 11                 
	syscall

	li $v0, 4
	la $a0, R
	syscall
	#______
	li $v0, 4
	la $a0, Box3
	syscall
	 
	jr $ra

jr $ra 

mode:

	div $t1, $t1, 2
	mfhi $t1
	
	beq $t1,1,player1 
	li $t1,2
	move $v1,$t1
	
	jr $ra 
	
player1:

li $t1,1
move $v1,$t1

jr $ra 

midCheck:
	bne $s1, 3, notMid 
	bne $s2, 3, notMid
	li $v0, 4
	la $a0, warning
	syscall
	j Player
	
invalidPos:
	li $v0, 4
	la $a0, invalid
	syscall
	j Player
	
Undo:
		div $t1, $t1, 2
		mfhi $t1
		bne $t1,1,undo2
	 
		beq $s5, -4, noLastMove
		add $s3, $t0, $s5
		li $t4, ' '
		sw $t4, ($s3)	
		
		li $s5, -4
		j Player
	
	undo2:
		beq $s0, -4, noLastMove
		add $s3, $t0, $s0
		li $t4, ' '
		sw $t4, ($s3)
		
		li $s0, -4	
		j Player
	
noLastMove:
	li $v0, 4
	la $a0, error
	syscall
	j Player
	
change: 

beq $t1,1,Label
lw $t6,4($t5)
move $v1,$t6

jr $ra 

Label:
lw $t6,($t5)
move $v1,$t6

jr $ra 

check: 

winning_condition1:
lw $t7, 0($t0)
lw $t8, 4($t0)
beq $t7, ' ', winning_condition2
bne $t7, $t8, winning_condition2
lw $t9, 8($t0)
bne $t8, $t9, winning_condition2
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition2:
lw $t7, 0($t0)
lw $t8, 20($t0)
beq $t7, ' ', winning_condition3
bne $t7, $t8, winning_condition3
lw $t9, 40($t0)
bne $t8, $t9, winning_condition3
li $t2, 1
move $v1, $t2

jr $ra

winning_condition3:
lw $t7, 0($t0)
lw $t8, 24($t0)
beq $t7, ' ', winning_condition4
bne $t7, $t8, winning_condition4
lw $t9, 48($t0)
bne $t8, $t9, winning_condition4
li $t2, 1
move $v1,$t2

jr $ra 

winning_condition4:
lw $t7, 4($t0)
lw $t8, 24($t0)
beq $t7, ' ', winning_condition5
bne $t7, $t8, winning_condition5
lw $t9, 44($t0)
bne $t8, $t9, winning_condition5
li $t2, 1
move $v1, $t2

jr $ra

winning_condition5:
lw $t7, 4($t0)
lw $t8, 8($t0)
beq $t7, ' ', winning_condition6
bne $t7, $t8, winning_condition6
lw $t9, 12($t0)
bne $t8, $t9, winning_condition6
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition6:
lw $t7, 8($t0)
lw $t8, 28($t0)
beq $t7, ' ', winning_condition7
bne $t7,$t8, winning_condition7
lw $t9, 48($t0)
bne $t8,$t9, winning_condition7
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition7:
lw $t7, 8($t0)
lw $t8, 24($t0)
beq $t7, ' ', winning_condition8
bne $t7, $t8, winning_condition8
lw $t9, 40($t0)
bne $t8, $t9, winning_condition8
li $t2, 1
move $v1, $t2

jr $ra

winning_condition8:
lw $t7, 40($t0)
lw $t8, 44($t0)
beq $t7, ' ', winning_condition9
bne $t7, $t8, winning_condition9
lw $t9, 48($t0)
bne $t8, $t9, winning_condition9
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition9:
lw $t7, 20($t0)
lw $t8, 24($t0)
beq $t7, ' ', winning_condition10
bne $t7, $t8, winning_condition10
lw $t9, 28($t0)
bne $t8, $t9, winning_condition10
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition10:
lw $t7, 24($t0)
lw $t8, 28($t0)
beq $t7, ' ', winning_condition11
bne $t7, $t8, winning_condition11
lw $t9, 32($t0)
bne $t8, $t9, winning_condition11
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition11:
lw $t7, 44($t0)
lw $t8, 48($t0)
beq $t7, ' ', winning_condition12
bne $t7, $t8, winning_condition12
lw $t9, 52($t0)
bne $t8, $t9, winning_condition12
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition12:
lw $t7, 12($t0)
lw $t8, 32($t0)
beq $t7, ' ', winning_condition13
bne $t7, $t8, winning_condition13
lw $t9, 52($t0)
bne $t8, $t9, winning_condition13
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition13:
lw $t7, 8($t0)
lw $t8, 12($t0)
beq $t7, ' ', winning_condition14
bne $t7, $t8, winning_condition14
lw $t9, 16($t0)
bne $t8, $t9, winning_condition14
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition14:
lw $t7, 28($t0)
lw $t8, 32($t0)
beq $t7, ' ', winning_condition15
bne $t7, $t8, winning_condition15
lw $t9, 36($t0)
bne $t8, $t9, winning_condition15
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition15:
lw $t7, 48($t0)
lw $t8, 52($t0)
beq $t7, ' ', winning_condition16
bne $t7, $t8, winning_condition16
lw $t9, 56($t0)
bne $t8, $t9, winning_condition16
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition16:
lw $t7, 16($t0)
lw $t8, 36($t0)
beq $t7, ' ', winning_condition17
bne $t7, $t8, winning_condition17
lw $t9, 56($t0)
bne $t8, $t9, winning_condition17
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition17:
lw $t7, 8($t0)
lw $t8, 32($t0)
beq $t7, ' ', winning_condition18
bne $t7, $t8, winning_condition18
lw $t9, 56($t0)
bne $t8, $t9, winning_condition18
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition18:
lw $t7, 4($t0)
lw $t8, 28($t0)
beq $t7, ' ', winning_condition19
bne $t7, $t8, winning_condition19
lw $t9, 52($t0)
bne $t8, $t9, winning_condition19
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition19:
lw $t7, 12($t0)
lw $t8, 28($t0)
beq $t7, ' ', winning_condition20
bne $t7, $t8, winning_condition20
lw $t9, 44($t0)
bne $t8, $t9, winning_condition20
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition20:
lw $t7, 16($t0)
lw $t8, 32($t0)
beq $t7, ' ', winning_condition21
bne $t7, $t8, winning_condition21
lw $t9, 48($t0)
bne $t8, $t9, winning_condition21
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition21:
lw $t7, 20($t0)
lw $t8, 40($t0)
beq $t7, ' ', winning_condition22
bne $t7, $t8, winning_condition22
lw $t9, 60($t0)
bne $t8, $t9, winning_condition22
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition22:
lw $t7, 24($t0)
lw $t8, 44($t0)
beq $t7, ' ', winning_condition23
bne $t7, $t8, winning_condition23
lw $t9, 64($t0)
bne $t8, $t9, winning_condition23
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition23:
lw $t7, 28($t0)
lw $t8, 48($t0)
beq $t7, ' ', winning_condition24
bne $t7, $t8, winning_condition24
lw $t9, 68($t0)
bne $t8, $t9, winning_condition24
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition24:
lw $t7, 32($t0)
lw $t8, 52($t0)
beq $t7, ' ', winning_condition25
bne $t7, $t8, winning_condition25
lw $t9, 72($t0)
bne $t8, $t9, winning_condition25
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition25:
lw $t7, 36($t0)
lw $t8, 56($t0)
beq $t7, ' ', winning_condition26
bne $t7, $t8, winning_condition26
lw $t9, 76($t0)
bne $t8, $t9, winning_condition26
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition26:
lw $t7, 60($t0)
lw $t8, 64($t0)
beq $t7, ' ', winning_condition27
bne $t7, $t8, winning_condition27
lw $t9, 68($t0)
bne $t8, $t9, winning_condition27
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition27:
lw $t7, 64($t0)
lw $t8, 68($t0)
beq $t7, ' ', winning_condition28
bne $t7, $t8, winning_condition28
lw $t9, 72($t0)
bne $t8, $t9, winning_condition28
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition28:
lw $t7, 68($t0)
lw $t8, 72($t0)
beq $t7, ' ', winning_condition29
bne $t7, $t8, winning_condition29
lw $t9, 76($t0)
bne $t8, $t9, winning_condition29
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition29:
lw $t7, 20($t0)
lw $t8, 44($t0)
beq $t7, ' ', winning_condition30
bne $t7, $t8, winning_condition30
lw $t9, 68($t0)
bne $t8, $t9, winning_condition30
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition30:
lw $t7, 28($t0)
lw $t8, 44($t0)
beq $t7, ' ', winning_condition31
bne $t7, $t8, winning_condition31
lw $t9, 60($t0)
bne $t8, $t9, winning_condition31
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition31:
lw $t7, 24($t0)
lw $t8, 48($t0)
beq $t7, ' ', winning_condition32
bne $t7, $t8, winning_condition32
lw $t9, 72($t0)
bne $t8, $t9, winning_condition32
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition32:
lw $t7, 32($t0)
lw $t8, 48($t0)
beq $t7, ' ', winning_condition33
bne $t7, $t8, winning_condition33
lw $t9, 64($t0)
bne $t8, $t9, winning_condition33
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition33:
lw $t7, 28($t0)
lw $t8, 52($t0)
beq $t7, ' ', winning_condition34
bne $t7, $t8, winning_condition34
lw $t9, 76($t0)
bne $t8, $t9, winning_condition34
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition34:
lw $t7, 36($t0)
lw $t8, 52($t0)
beq $t7, ' ', winning_condition35
bne $t7, $t8, winning_condition35
lw $t9, 68($t0)
bne $t8, $t9, winning_condition35
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition35:
lw $t7, 40($t0)
lw $t8, 60($t0)
beq $t7, ' ', winning_condition36
bne $t7, $t8, winning_condition36
lw $t9, 80($t0)
bne $t8, $t9, winning_condition36
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition36:
lw $t7, 44($t0)
lw $t8, 64($t0)
beq $t7, ' ', winning_condition37
bne $t7, $t8, winning_condition37
lw $t9, 84($t0)
bne $t8, $t9, winning_condition37
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition37:
lw $t7, 48($t0)
lw $t8, 68($t0)
beq $t7, ' ', winning_condition38
bne $t7, $t8, winning_condition38
lw $t9, 88($t0)
bne $t8, $t9, winning_condition38
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition38:
lw $t7, 52($t0)
lw $t8, 72($t0)
beq $t7, ' ', winning_condition39
bne $t7, $t8, winning_condition39
lw $t9, 92($t0)
bne $t8, $t9, winning_condition39
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition39:
lw $t7, 56($t0)
lw $t8, 76($t0)
beq $t7, ' ', winning_condition40
bne $t7, $t8, winning_condition40
lw $t9, 96($t0)
bne $t8, $t9, winning_condition40
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition40:
lw $t7, 80($t0)
lw $t8, 84($t0)
beq $t7, ' ', winning_condition41
bne $t7, $t8, winning_condition41
lw $t9, 88($t0)
bne $t8, $t9, winning_condition41
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition41:
lw $t7, 84($t0)
lw $t8, 88($t0)
beq $t7, ' ', winning_condition42
bne $t7, $t8, winning_condition42
lw $t9, 92($t0)
bne $t8, $t9, winning_condition42
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition42:
lw $t7, 88($t0)
lw $t8, 92($t0)
beq $t7, ' ', winning_condition43
bne $t7, $t8, winning_condition43
lw $t9, 96($t0)
bne $t8, $t9, winning_condition43
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition43:
lw $t7, 40($t0)
lw $t8, 64($t0)
beq $t7, ' ', winning_condition44
bne $t7, $t8, winning_condition44
lw $t9, 88($t0)
bne $t8, $t9, winning_condition44
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition44:
lw $t7, 48($t0)
lw $t8, 64($t0)
beq $t7, ' ', winning_condition45
bne $t7, $t8, winning_condition45
lw $t9, 80($t0)
bne $t8, $t9, winning_condition45
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition45:
lw $t7, 44($t0)
lw $t8, 68($t0)
beq $t7, ' ', winning_condition46
bne $t7, $t8, winning_condition46
lw $t9, 92($t0)
bne $t8, $t9, winning_condition46
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition46:
lw $t7, 52($t0)
lw $t8, 68($t0)
beq $t7, ' ', winning_condition47
bne $t7, $t8, winning_condition47
lw $t9, 84($t0)
bne $t8, $t9, winning_condition47
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition47:
lw $t7, 56($t0)
lw $t8, 72($t0)
beq $t7, ' ', winning_condition48
bne $t7, $t8, winning_condition48
lw $t9, 88($t0)
bne $t8, $t9, winning_condition48
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition48:
lw $t7, 48($t0)
lw $t8, 72($t0)
beq $t7, ' ', winning_condition49
bne $t7, $t8, winning_condition49
lw $t9, 96($t0)
bne $t8, $t9, winning_condition49
li $t2, 1
move $v1, $t2

jr $ra 

winning_condition49:

lw $t3,0($t0)
bne $t3,' ',next1
b end

next1:
lw $t3,4($t0)
bne $t3,' ',next2
b end

next2:
lw $t3,8($t0)
bne $t3,' ',next3
b end

next3:
lw $t3,12($t0)
bne $t3,' ',next4
b end

next4:
lw $t3,16($t0)
bne $t3,' ',next5
b end

next5:
lw $t3,20($t0)
bne $t3,' ',next6
b end

next6:
lw $t3,24($t0)
bne $t3,' ',next7
b end

next7:
lw $t3,28($t0)
bne $t3,' ',next8
b end

next8:
lw $t3,32($t0)
bne $t3,' ',next9
b end

next9:
lw $t3,36($t0)
bne $t3,' ',next10
b end

next10:
lw $t3,40($t0)
bne $t3,' ',next11
b end

next11:
lw $t3,44($t0)
bne $t3,' ',next12
b end

next12:
lw $t3,48($t0)
bne $t3,' ',next13
b end

next13:
lw $t3,52($t0)
bne $t3,' ',next14
b end

next14:
lw $t3,56($t0)
bne $t3,' ',next15
b end

next15:
lw $t3,60($t0)
bne $t3,' ',next16
b end

next16:
lw $t3,64($t0)
bne $t3,' ',next17
b end

next17:
lw $t3,68($t0)
bne $t3,' ',next18
b end

next18:
lw $t3,72($t0)
bne $t3,' ',next19
b end

next19:
lw $t3,76($t0)
bne $t3,' ',next20
b end

next20:
lw $t3,80($t0)
bne $t3,' ',next21
b end

next21:
lw $t3,84($t0)
bne $t3,' ',next22
b end

next22:
lw $t3,88($t0)
bne $t3,' ',next23
b end

next23:
lw $t3,92($t0)
bne $t3,' ',next24
b end

next24:
lw $t3,96($t0)
bne $t3,' ',next25
b end

next25:
li $v1,0

jr $ra

end:
li $v1,2

jr $ra 

player_win:

li $v0 , 4
la $a0 , message9
syscall

beq $t2,1,print

li $v0 , 4
la $a0 , message6
syscall

j MenuNewGame

jr $ra 

print:

li $v0 , 4
la $a0 , message8
syscall

sub $t1,$t1,1

li $v0,1
move $a0,$t1
syscall
#Score____________________
addi $s1,$zero,1
beq $t1,$s1,L1
la $t0,score
lw $t1,4($t0)
addi $t1,$t1,1
sw $t1,4($t0)
j Score_exit

L1:

la $t0,score
lw $t1,0($t0)
addi $t1,$t1,1
sw $t1,0($t0)

Score_exit:
#________________________________

li $v0 , 4
la $a0 , message5
syscall

li $v0 , 4
la $a0 , message0
syscall
MenuNewGame:
		li $v0,4
		la $a0,gameMenu
		syscall
		li $v0,5
		syscall
		bne $v0,99,reset
		la $t0,score
		lw $t1,0($t0)
		lw $t2,4($t0)
		bne $t1,$t2,Not_Draw
		li $v0,4
		la $a0,draw_all
		syscall
j L_QUIT 
Not_Draw:          
		blt $t1,$t2,win_2
 		 	li $v0,4
			la $a0,win_all_1
			syscall
			li $v0,4
			la $a0,strName1
			syscall
		j L_QUIT                       
 win_2:                
 		li $v0,4
		la $a0,win_all_2
		syscall
		li $v0,4
		la $a0,strName2
		syscall
 L_QUIT:              
 		li $v0,10
		syscall
	jr $ra 
##################### Getting Name Started

.globl getName

	getName:
	li 		$v0, 4
	la 		$a0, message_start
	syscall
	li 		$v0, 4
	la 		$a0, line2
	syscall	
	li 		$v0, 4
	la 		$a0, line4
	syscall
#taking string as input
    	la 		$a0 , strName1
    	li 		$a1 , 1024
    	li 		$v0 , 8
    	syscall
	
    	li 		$v0, 4
	la 		$a0, line2
	syscall	

	li 		$v0, 4
	la 		$a0, line5
	syscall

		#taking string as input
    	la 		$a0 , strName2
    	li 		$a1 , 1024
    	li 		$v0 , 8
    	syscall    	

	li 		$v0, 4
	la 		$a0, message0
	syscall
		
	jr 		$ra

##################### End Of Getting Name
