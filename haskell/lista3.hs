segundos [] = []
segundos (x:xs) = (snd x):(segundos xs)

menor [] = 1e9
menor (x:xs) = min x (menor xs)

maior [] = -1e9
maior (x:xs) = max x (maior xs)

menorMaior (x) = (menor x, maior x)

enumerar' a (x:xs) = (a, x):(enumerar' (a+1) xs)
enumerar' _ [] = []

enumerar xs = enumerar' 1 xs

menores [] = []
menores (x:xs)
  | fst x < snd x = x:(menores xs)
  | otherwise = menores xs

lessThen _ [] = []
lessThen a (x:xs)
  | x < a = x:(lessThen a xs)
  | otherwise = lessThen a xs

moreThen _ [] = []
moreThen a (x:xs)
  | x < a = moreThen a xs
  | otherwise = x:(moreThen a xs)

separar a (x:xs) = (lessThen a (x:xs), moreThen a (x:xs))

ate _ [] = []
ate a (x:xs) 
  | a > 0 = x:(ate (a-1) xs)
  | otherwise = []

de _ [] = []
de a (x:xs)
  | a > 0 = de (a-1) xs
  | a == 0 = x:xs

separarEm (x:xs) a = (ate (a+1) (x:xs), de (a+1) (x:xs))

ocorrenciasDe a (x:xs)
  | a == x = 1 + ocorrenciasDe a xs
  | otherwise = ocorrenciasDe a xs

remover a ys [] = reverse ys
remover a (ys) (x:xs)
  | a == x = (remover a ys xs)
  | otherwise = remover a (x:ys) xs

nOcorrencias :: [x] -> [(x, x)]
nOcorrencias [] = []
nOcorrencias (x:xs) = (ocorrenciasDe x (x:xs), x):(nOcorrencias (remover x [] xs))
