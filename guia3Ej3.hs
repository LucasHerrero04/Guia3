--EJercicio 3

estanRelacionados:: Integer -> Integer -> Bool
estanRelacionados a b   | ((a == 0) || (b==0)) = False
                        | mod (-(a*a)) (a*b) == 0 = True
                        | otherwise = False
