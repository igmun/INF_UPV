module Power where
    power :: Int -> Int -> Int
    power _ 0 = 1
    power x n = x * power x (n-1)
    
    power' _ 0 = 1
    power' x n
        | even n = power' (x * x) (div n 2)
        | otherwise = x * power' (x * x) (div n 2)
