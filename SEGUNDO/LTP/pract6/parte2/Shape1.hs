module Shape1 where
    type Side    = Float
    type Apothem = Float
    type Radius  = Float
    type Height  = Float
    type Volume  = Float
    data Shape   = Pentagon Side Apothem | Circle Radius deriving (Eq, Show)

    perimeter :: Shape -> Float
    perimeter (Pentagon s a) = 5 * s 
    perimeter (Circle r)     = 2 * pi * r
    
    area :: Shape -> Float
    area (Pentagon s a) = (5 * s * a / 2)
    area (Circle r) = pi * r**2
    
    volumePrism :: Shape -> Height -> Volume
    volumePrism base height = (area base) * height
    
    surfacePrism :: Shape -> Height -> Float
    surfacePrism base height = (area (base) * 2 + (perimeter base) * height)
    
