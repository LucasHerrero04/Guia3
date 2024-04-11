-- Ejercicio 4a
prodInt:: (Float , Float) -> (Float, Float) -> Float
prodInt x y = (fst x * fst y) + (snd x * snd y)

-- Ejercicio 4b
todoMenor::  (Float, Float) -> (Float , Float) -> Bool
todoMenor x y   | (fst x < fst y) && (snd x < snd y) = True
                | otherwise = False

-- Ejercicio 4c
distanciaPuntos:: (Float , Float) -> (Float, Float) -> Float
distanciaPuntos x y = ((fst y - fst x)**2+(snd y - snd x)**2)**(1/2)

-- Ejercicio 4d
sumaTerna:: (Int,Int,Int) -> Int
sumaTerna (x,y,z) = x + y + z

-- Ejercicio 4e
sumarSoloMultiplos:: (Int,Int,Int) -> Int-> Int
sumarSoloMultiplos (x,y,z) n    | ((mod x n == 0) && (mod y n == 0) && (mod z n == 0)) = x+y+z
                                | (mod x n == 0) && (mod y n == 0) = x+y
                                | (mod x n == 0) && (mod z n == 0) = x+z
                                | (mod y n == 0) && (mod z n == 0) = y+z
                                | (mod x n == 0) = x
                                | (mod y n == 0) = y
                                | (mod z n == 0) = z
                                | otherwise = 0

-- Ejercicio 4e.2
sumarSoloMultiplos2:: (Int,Int,Int) -> Int-> Int
sumarSoloMultiplos2 (x,y,z) n = esMultiplo x n + esMultiplo y n + esMultiplo z n
esMultiplo:: Int -> Int -> Int
esMultiplo x n  | mod x n == 0 = x
                | otherwise = 0

-- Ejercicio 4f
posPrimerPar:: (Int,Int,Int) -> Int
posPrimerPar(x,y,z) | esMultiplo x 2 == x = 1
                    | esMultiplo y 2 == y = 2
                    | esMultiplo z 2 == z = 3
                    | otherwise = 4

-- Ejercicio 4g
crearPar:: Char -> Char -> (Char,Char)
crearPar a b = (a,b)

-- Ejercicio 4h
invertir:: (String,String) -> (String,String)
invertir (a,b) = (b,a)