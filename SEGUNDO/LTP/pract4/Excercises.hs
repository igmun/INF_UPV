module Excercises where
    import Data.Char
    import Factorial
    
    -- Ej.1
    numCbetw2 :: Char -> Char -> Int
    numCbetw2 x y
        | x == y = 0
        | otherwise = abs ((ord y) - (ord x) - 1)
    -- Ej.2  
    addRange :: Int -> Int -> Int
    addRange x y = if x == y then x else
                   if x < y then x + addRange (x + 1) y 
                   else y + addRange x (y + 1)
    -- Ej.3
    max' x y
        | x > y = x
        | otherwise = y
    -- Ej.4
    leapyear :: Int -> Bool
    leapyear x
        | (x `mod` 400) == 0 = True
        | (x `mod` 100) == 0 = False
        | (x `mod` 4) == 0 = True
        
    -- Ej.5
    daysAmonth :: Int -> Int -> Int
    daysAmonth m y 
        | m == 2 && leapyear y = 29
        | m == 2 = 28
        | m == 4 || m == 6 || m == 9 || m == 11 = 30
        | otherwise = 31
    -- Ej.6
    remainder :: Int -> Int -> Int 
    remainder c d
        | c < d = c
        | c == d = 0
        | otherwise = remainder (c - d) d
        
    -- Ej.7
    sumFacts :: Int -> Int
    sumFacts n 
        | n == 0 = fact n
        | otherwise = ((fact n) + (sumFacts (n - 1)))
        
    
    
    
    
    
    
