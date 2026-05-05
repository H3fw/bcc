pertence a [] = False
pertence a (x:xs) = if x == a then True else pertence a xs

intercessao [] (y:ys) = [];
intercessao (x:xs) (y:ys) = if pertence x (y:ys) then (x:(intercessao (xs) (y:ys))) else intercessao (xs) (y:ys)

inverso [] = []
inverso (x:xs) = inverso xs ++ [x]

tamanho [] = 0
tamanho (x:xs) = 1 + tamanho xs

nUltimos a [] = []
nUltimos a (x:xs) = if a < 1 then []
  else if tamanho (x:xs) <= a then (x:xs)
    else nUltimos a xs

soma [] (y:ys) = []
soma (x:xs) [] = []
soma (x:xs) (y:ys) = [x+y] ++ soma xs ys

pot2 x = [2 ^^ a | a <- [1..x]]
 
intercalacao (x:xs) [] = (x:xs)
intercalacao [] (y:ys) = (y:ys)
intercalacao (x:xs) (y:ys) = if y < x then [y] ++ (intercalacao (x:xs) ys) else [x] ++ (intercalacao xs (y:ys))

menor (x:[]) = x
menor (x:xs) = if x < (head xs) then menor (x:drop 1 (xs)) else menor(xs) 

removerElem _ [] = []
removerElem a (x:xs) = if x == a then xs else [x] ++ (removerElem a xs)

isOrdered (x:[]) = True
isOrdered (x:xs) = if x <= head xs then isOrdered xs else False

ordenar [] = []
ordenar xs  = m : ordenar (removerElem m xs)
  where m = menor xs

seqCollatz 1 = [1]
seqCollatz x = if even x 
  then x : seqCollatz (div x 2)
  else x : seqCollatz (3 * x + 1)

ins a (x:xs) = 
  if a > x then x:(ins a xs) 
    else 
      if a == x 
        then x:xs else a:x:xs

enesimo::Integer -> [Integer] -> Integer
enesimo 1 (x:xs) = x
enesimo a (x:xs) = enesimo (a-1) (xs)

repetir:: Integer -> Integer -> [Integer]
repetir 0 _ = []
repetir a b = b:(repetir (a-1) b)

digitoParaChar :: Int -> Char
digitoParaChar d = chr (d + ord '0')
