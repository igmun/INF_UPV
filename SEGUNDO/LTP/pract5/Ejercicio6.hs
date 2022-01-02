selectEven :: [Int] -> [Int]
selectEven list = [x| (x,y) <- zip list[0..], mod y 2 == 0]
