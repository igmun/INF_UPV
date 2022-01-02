member :: Int -> [Int] -> Bool
member a(x:t) = not (null [y| y <- (x:t), a == y])
