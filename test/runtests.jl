# ----------------------------------------------------------------------

# ----------------------------------------------------------------------
using Test
using Mahler

# ----------------------------------------------------------------------
@test Mahler.sgn(2) == 1
@test Mahler.sgn(7) == -1

@test Mahler.fac(5)  == 120
@test Mahler.fac(20) == factorial(20)
@test Mahler.fac(20) == factorial(big(20))
@test Mahler.fac(21) == factorial(big(21))

@test Mahler.bin(4,3)    == 4
@test Mahler.bin(3,4)    == 0
@test Mahler.bin(33,4)   == binomial(33,4)
@test Mahler.bin(133,44) == binomial(big(133),big(44))
@test Mahler.bin(4.0,3)  == 4.0
@test Mahler.bin(3.0,4)  == 0.0
@test Mahler.bin(33.0,4)  ≈ Mahler.bin(33,4)
@test Mahler.bin(133.0,4) ≈ Mahler.bin(133,4)

@test Mahler.mfill((x) -> x+1, 5) == [1,2,3,4,5]

@test Mahler.mexpansion((x)->2,    5) == [2,0,0,0,0]
@test Mahler.mexpansion((x)->x,    5) == [0,1,0,0,0]
@test Mahler.mexpansion((x)->x+1,  5) == [1,1,0,0,0]
@test Mahler.mexpansion((x)->2*x+1,5) == [1,2,0,0,0]

@test Mahler.mval(  9,Mahler.mexpansion((x) ->    +1, 5)) == 1
@test Mahler.mval(  0,Mahler.mexpansion((x) -> 2*x+1, 5)) == 1
@test Mahler.mval(0.5,Mahler.mexpansion((x) -> 2*x+1, 5)) == 2
@test Mahler.mval(  1,Mahler.mexpansion((x) -> 2*x+1, 5)) == 3
@test Mahler.mval(5.5,Mahler.mexpansion((x) -> 2*x+1, 5)) == 12

@test Mahler.mval(1,Mahler.mexpansion(log1p, 10)) ≈ log1p(1) 
@test Mahler.mval(2,Mahler.mexpansion(log1p, 10)) ≈ log1p(2) 
@test Mahler.mval(9,Mahler.mexpansion(log1p, 10)) ≈ log1p(9) 

# ----------------------------------------------------------------------
