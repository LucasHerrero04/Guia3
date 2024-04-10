-- Ejercicio 4b
todoMenor::  (Float, Float) -> (Float , Float) -> Bool
todoMenor x y   | (fst x < fst y) && (snd x < snd y) = True
                | otherwise = False