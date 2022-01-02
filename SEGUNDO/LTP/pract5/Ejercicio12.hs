module Arboles where
    data Tree a = Leaf a | Branch (Tree a) (Tree a)
    numleaves :: Tree a-> Int 
    numleaves (Leaf x) = 1
    numleaves (Branch a b) = numleaves a + numleaves b

    -- Ej 12
    symmetric :: Tree a -> Tree a
    symmetric (Leaf l) = (Leaf l)
    symmetric (Branch a b) = Branch (symmetric b) (symmetric b)
    -- Ej 13
    listToTree :: [a] -> Tree a
    listToTree (x:[]) = Leaf x
    listtoTree (x:xs) = Branch (Leaf x) (listToTree xs) 
    
    treeToList :: Tree a -> [a]
    treeToList (Leaf x) = x:[]
    treeToList (Branch a b) = (treeToList a ++ treeToList b)
    
    -- Ej. 14
    data BinTreeInt = Void | Node Int BinTreeInt BinTreeInt
    treeB1 = Void
    treeB2 = (Node 5 Void Void)
    treeB3 = (Node 5 (Node 3 (Node 1 Void Void) (Node 4 Void Void)) (Node 6 Void (Node 8 Void Void)))
    
    insTree :: Int -> BinTreeInt -> BinTreeInt 
    insTree x (Void) = Node x Void Void 
    insTree x (Node y left right)
        | (x > y) = Node y left (insTree x right)
        | otherwise = Node y (insTree x left) right
        
    -- Ej. 15
    creaTree :: [Int] -> BinTree 
    creaTree [x] = insTree x (Void)
    creaTree (x:xs) = insTree x (creaTree xs)
    
    -- Ej. 16
    treeElem :: Int -> BinTreeInt -> Bool
    treeElem x (Void) = False
    treeElem x (Node y left right)
        | x == y = True
        | otherwise = (treeElem x left) || (treeElem x right)
    
    
    
    
    
    
