lw $1, 0($0)
lw $2, 1($0)
beq $2, $0, 3
sw $2, 2($0)
sub $2, $2, $1
j 2
beq $0, $0, -1
