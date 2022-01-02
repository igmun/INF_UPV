--Ahora podemos crear un nuevo tipo de poligono sin tener que modificar el módulo Shape2

import Shape2
    type Base = Float
    type Height = Float
    data Rectangle = Rectangle Base Height deriving Show
    
    instance Shape Rectangle where
        perimeter (Rectangle base height) = base * 2 + height * 2
        
main = do
    let p = (Pentagon 5 4)
    let c = (Circle 4)
    let r = (Rectangle 5 7)
    
    putStrLn("Perimetro de " ++ show p ++ " es " ++ show (perimeter p))
    putStrLn("Perimetro de " ++ show c ++ " es " ++ show (perimeter c))
    putStrLn("Perimetro de " ++ show c ++ " es " ++ show (perimeter r))
