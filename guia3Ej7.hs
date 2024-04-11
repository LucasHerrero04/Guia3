distanciaManhattan:: (Float,Float,Float) -> (Float,Float,Float) -> Float
distanciaManhattan (a,b,c)(x,y,z) = absoluto(a-x) + absoluto(b-y) + absoluto(c-z)

absoluto:: Float -> Float
absoluto x  | x >= 0 = 0
            | x < 0 = (-x)