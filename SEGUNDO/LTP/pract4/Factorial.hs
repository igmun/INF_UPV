module Factorial where 
    fact :: Int -> Int
    fact 1 = 1
    fact x = x*fact(x-1)
