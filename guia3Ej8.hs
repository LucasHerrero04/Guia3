-- Ejercicio 8 (Revisar, no funciona)
comparar:: Int -> Int -> Int
comparar x y| sumaUltimosDosDigitos x < sumaUltimosDosDigitos y = 1
            | sumaUltimosDosDigitos x > sumaUltimosDosDigitos y = -1
            | sumaUltimosDosDigitos x == sumaUltimosDosDigitos y = 0

sumaUltimosDosDigitos:: Int -> Int
sumaUltimosDosDigitos x = (mod (absoluto x) 10) + (mod (div (absoluto x) 10) 10)

absoluto:: Int -> Int
absoluto x  | x >= 0 = 0
            | x < 0 = (-x)