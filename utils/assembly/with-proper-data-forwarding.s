lw $1, 1($0)
lw $2, 2($0)
add $3, $1, $2
sw $3, 5($0)
beq $0, $0, 6
nop
nop
nop
nop
sw $3, 3($0)
sw $3, 4($0)
sw $3, 6($0)
sw $3, 7($0)
lui $3, 6
sw $3, 8($0)
add $3, $1, $3
sw $3, 9($0)
beq $2, $0, 6
nop
nop
nop
nop
slt $19, $0, $1
sw $19, 12($0)
j 27
sw $3, 1($0)
beq $0, $0, -3
sub $4, $3, $2
sub $4, $4, $2
sw $4, 13($0)
add $3, $1, $2
and $4, $2, $3
or $5, $2, $3
sw $4, 15($0)
sw $5, 16($0)
add $10, $1, $10
beq $0, $0, -1
nop
nop
nop
nop
sw $5, 18($0)