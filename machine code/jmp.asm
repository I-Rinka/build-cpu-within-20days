lui $1, 0x0000
ori $1,0x0001
lui $2,0x0000
ori $2,0x0001
loop:
add $2,$2,$1
add $3,$2,$2
j loop
add $4,$4,$1
add $5,$4,$1