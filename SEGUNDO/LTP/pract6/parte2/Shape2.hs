module Shape2 where 
    type Side = Float
    type Apothem = Float
    type Radius = Float
    type Height = Float
    type Volume = Float
    
    class (Eq a, Show a) => Shape a where -- Obligamos a las instancias Shape a ser Eq y Show
        perimeter :: a -> Float
        area :: a -> Float
        volumePrism :: Shape -> Height -> Volume
        surfacePrism :: Shape -> Height -> Float
    data Pentagon = Pentagon Side Apothem deriving Show
    data Circle = Circle Radius deriving Show 
    
    instance Shape Pentagon where
        perimeter (Pentagon side _) = 5 * side 
        area (Pentagon s a) = (5 * s * a / 2)
        volumePrism base height = (area base) * height
    instance Shape Circle where 
        perimeter (Circle r) = 2 * pi * r
        area (Circle r) = pi * r **2
        volumePrism base height = (area base) * height
        
        
    instance Eq Pentagon where 
        (Pentagon s a) == (Pentagon s2 a2) = s == s2 && a = a2   
    instance Eq Circle where 
        (Circle r) == (circle r2) = r == r2   
    instance Show Pentagon where
        show (Pentagon side apo) = ("Rectangle (side = " ++ (show side) ++ ", apothema = " ++ (show apo) ++ ")")
    instance Show Circle where
        show (Circle r) = ("Circle r = " ++ (show r))
    
