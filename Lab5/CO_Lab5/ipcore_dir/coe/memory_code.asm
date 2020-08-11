lw  $at, 100($zero)  
lw  $v0, 112($zero) 
lw  $a0, 104($zero)
add $v1, $at, $v0   
add $v0, $v1, $v0    
add $v1, $v1, $at      
beq $v1, $a0, 4 
j   16             
sw  $v0, 108($zero)    
j   0                
