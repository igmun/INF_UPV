module Ejercicio2 where 
import qualified Circle
import qualified Triangle 
main = do
    putStrLn("Area del Circulo " ++ show(Circle.area 2))
    putStrLn("Area del Triangulo " ++ show(Triangle.area 4.0 5.0))
    
