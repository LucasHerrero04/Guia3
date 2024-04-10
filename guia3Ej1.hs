
-- Ejercicio 1a
f:: Int -> Int
f n | n == 1 = 8
    | n == 4 = 131
    | n == 16 = 16

-- Ejercicio 1b
g:: Int -> Int
g n | n == 8 = 16
    | n == 16 = 4
    | n == 131 = 1

-- Ejercicio 1c
h:: Int -> Int
h n = f(g(n))

h2:: Int -> Int
h2 n = g(f(n))