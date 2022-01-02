isPrime :: Int -> Bool
isPrime a = length (divisors a) == 2
-- Implementamos el metodo divisors del ejercicio3
divisors :: Int ->  [Int]
divisors n = [x | x <- [1..n] , (n `mod` x) == 0]
