#######lucas Heredia project 1

.data

ask: .asciiz "Enter F and G"  
f:.asciiz "f_ten= "
g:.asciiz "g_ten= "
h:.asciiz "h_quotient= " 
a:.asciiz"h_remainder = "
b: .asciiz"i_quotient = "
c:.asciiz"i_remainder = "
d:.asciiz"j_remainder = " 
n:.asciiz "\n"

###print first thing
.text
li  $v0,4
la $a0,ask
syscall
#################


#####print new line
li $v0,4
la $a0,n
syscall
###########

#######read f
li  $v0,5
syscall
move $t0,$v0
##########f=t0

#read g
li  $v0,5
syscall
move $t1,$v0
########## g=t1

###save g and f in $t3,$t4 
la $t3,($t0)
la $t4,($t1)
####f=$t3, g=$t4 

##counter
li $s0,0
########

##########dividing loop
loop: 
blt $t0,$t1,divided
sub $t0,$t0,$t1
addi $s0,$s0,1
j loop
divided:
########## s0 = quotient ,t0= rest

#####print string
li $v0,4
la $a0,f
syscall
###########

###print integer
li $v0,1
la $a0,($t3)
syscall
#########

#####print new line
li $v0,4
la $a0,n
syscall
###########

############################################################

#####print string
li $v0,4
la $a0,g
syscall
###########

###print integer
li $v0,1
la $a0,($t4)
syscall
#########

#####print new line
li $v0,4
la $a0,n
syscall
###########

############################################################

#####print string
li $v0,4
la $a0,h
syscall
###########

###print integer
li $v0,1
la $a0,($s0)
syscall
#########

#####print new line
li $v0,4
la $a0,n
syscall
###########

#######################################################


#####print string
li $v0,4
la $a0,a
syscall
###########


###print integer
li $v0,1
la $a0,($t0)
syscall
#########

#####print new line
li $v0,4
la $a0,n
syscall
###########

#########################################################

####t7 has addition of g+f
add $t7,$t3,$t4
########

################
###    H=$s0   ###
################

##########dividing loop
loop1: 
blt $t7,$s0,divided1
sub $t7,$t7,$s0
addi $s1,$s1,1
j loop1
divided1:
############ $t7 = rest , s1= quotient

######## s1=i quo


#####print string
li $v0,4
la $a0,b
syscall
###########

###print integer
li $v0,1
la $a0,($s1)
syscall
#########


#####print new line
li $v0,4
la $a0,n
syscall
###########

############################


#####print string
li $v0,4
la $a0,c
syscall
###########

###print integer
li $v0,1
la $a0,($t7)
syscall
#########

#####print new line
li $v0,4
la $a0,n
syscall
###########

#################$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$


#####print string
li $v0,4
la $a0,d
syscall
###########

######subtracted
sub $t8,$t3,$t4
################ f-g

#####################
loop2: 
blt $t8,$s1,divided2
sub $t8,$t8,$s1
addi $s2,$s2,1
j loop2
divided2:
###################


###print integer
li $v0,1
la $a0,($t8)
syscall
#########



