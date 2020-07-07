lw  $t0, 0($t0)
lw  $t1, 1($t0)
lw  $t2, 2($t0)
add $t3, $t0, $t2
add $t2, $t2, $t3
add $t3, $t3, $t0
beq $t3, $t1, 1
j   4
sw  $t2, 3($t0)
j   0 