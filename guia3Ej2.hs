
--Ejercicio 2a
absoluto:: Int -> Int
absoluto n  | n < 0 = -n
            | n >= 0 = n

-- Ejercicio 2b
maxAbs:: Int -> Int -> Int
maxAbs x y  | absoluto(x) >= absoluto(y) = absoluto(x)
            | absoluto(y) >= absoluto(x) = absoluto(y)

-- Ejercicio 2c
max3:: Int -> Int -> Int -> Int
max3 x y z  | ((x >= y) && (x >= z)) = x
            | ((y >= x) && (y >= z)) = y
            | otherwise = z

-- Ejercicio 2d.1
algunoEs0:: Float -> Float -> Bool
algunoEs0 x y   | (x==0) || (y == 0) = True
                | otherwise = False

-- Ejercicio 2d.2 (hay que cambiarlo para usar pattern matching)
algunoEs02:: Float -> Float -> Bool
algunoEs02 x y   | (x==0) || (y == 0) = True
                | otherwise = False

-- Ejercicio 2e.1
ambosSon0:: Float -> Float -> Bool
ambosSon0 x y   | (x==0) && (y == 0) = True
                | otherwise = False

-- Ejercicio 2e.2 (hay que cambiarlo para usar pattern matching)
ambosSon02:: Float -> Float -> Bool
ambosSon02 x y  | (x==0) && (y == 0) = True
                | otherwise = False

-- Ejercicio 2f
mismoIntervalo:: Float -> Float -> Bool
mismoIntervalo x y  | (x <= 3) && (y <= 3) = True
                    | ((x > 3) && (x <= 7)) && ((y > 3) && (y <= 7)) = True
                    | (x > 7) && (y > 7) = True
                    | otherwise = False

-- Ejercicio 2g
sumaDistintos:: Int ->  Int -> Int -> Int
sumaDistintos x y z |(x /= y) && (x /= z) && (y /= z) = x + y + z
                    |(x == y) && (x /= z) = x + z
                    |(x == z) && (x /= y) = x + y
                    |(y == z) && (y /= x) = x + y
                    | otherwise = x

-- Ejercicio 2h
esMultiploDe:: Int -> Int -> Bool
esMultiploDe x y    | mod x y == 0 = True
                    | otherwise = False

-- Ejercicio 2i
digitoUnidades:: Int -> Int
digitoUnidades x = mod (absoluto x) 10

-- Ejercicio 2j
digitoDecenas:: Int -> Int
digitoDecenas x = div (mod (absoluto x) 100) 10