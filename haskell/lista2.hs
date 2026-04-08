pertence a [] = False
pertence a (x:xs) = if x == a then True else pertence a xs

intercessao :: [int] -> [int] -> [int]
intercessao (x:xs) (y:ys) = if x == y then (x) ++ intercessao xs ys else intercessao (x:xs) ys
intercessao' x (y:ys) = x 
