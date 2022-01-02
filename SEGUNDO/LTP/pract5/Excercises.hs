module Excercises where 
    -- Ej.1
    decBin :: Int -> [Int]
    decBin x = if x < 2 then [x]
             else (x `mod` 2) : decBin (x `div` 2)
    -- Ej.2
    binDec :: [Int] -> Int
    binDec (x:[]) = x
    binDec (x:y)  = x + binDec y * 2   
    
    -- Ej.3
    divisors :: Int ->  [Int]
    divisors n = [d| d <- [1..n], (n `mod` d) == 0]
    
    -- Ej.4
    member :: Int -> [Int] -> Bool
    member a(x:t) = not (null [y| y <- (x:t), a == y])
    
    -- Ej.5
    isPrime :: Int -> Bool
    isPrime x = length (divisors x) == 2
    
    primes :: Int -> [Int]
    primes x = [y| y <- [1..x], isPrime y]
    primes' x = take x (filter isPrime [1..]) -- Otra posible solución
    
    -- Ej.6
    selectEven :: [Int]-> [Int]
    selectEven (x:t) = [y| y <- (x:t), y `mod` 2 == 0]
    
    -- Ej.7
    selectEP :: [Int] -> [Int] 
    selectEP (x:[]) = [x]
    selectEP (x0:(x1:xs)) = x0 : (selectEP xs)
    
    -- Ej. 8
    ins :: Int -> [Int] -> [Int]
    ins x [] = [x]
    ins x (y:[])
        | x <= y = x:(y:[])
        | otherwise = y:(x:[])
        
    ins x (y:ys)
        | x <= y = x:(y:(ys))
        | otherwise = y : (ins x ys)
      
    -- map: aplica una funcion a cada elemento de una lista    
    map' :: (a -> b) -> [a] -> [b]
    map' f [] = []
    map' f (x:xs) = f x : (map f xs)
    -- filter. toma una funcion booleana p y una lista xs y devuelve la sublista cuyos elementos satisfacen p
    filter' :: (a -> Bool) -> [a] -> [a]
    filter' p [] = []
    filter' p (x:xs) = if p x then x: (filter p xs) else filter p xs
    
    -- Ej.9
    doubleAll :: [Int] -> [Int]
    doubleAll x = map (* 2) x  -- Usamos map predefinido
    
    -- Ej. 10
    map'' :: (a -> b) -> [a] -> [b]
    map'' f [] = []
    map'' f x = [f y| y <- x]
    
    
    filter'' :: (a -> Bool) -> [a] -> [a]
    filter'' f (x:xs) = [y| y <- (x:xs), f y]
    
    
    
    
    
    
    
    
