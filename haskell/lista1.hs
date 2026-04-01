maior a b = 
  if a > b 
  then a
  else b

maior3 a b c = maior (maior a b) c

ehTriangulo a b c = 
  if (maior3 a b c) >= (a + b + c)-(maior3 a b c) 
  then False 
  else True

tipoTriangulo a b c = 
  if a == b && b == c 
  then "equilatero" 
  else 
    if a == b || b == c 
    then "isoceles" 
    else "escaleno"

triangulo a b c = 
  if ehTriangulo a b c 
  then tipoTriangulo a b c 
  else "nao eh um triangulo"

conceito a = 
  if a >= 9 
  then "A" 
  else 
    if a >= 8 
    then "B" 
    else 
      if a >= 7 
      then "C"
      else "D"

bissexto a = 
  if mod a 100 == 0 
  then 
    if mod a 400 == 0 
    then True 
    else False 
  else 
    if mod a 4 == 0 
    then True 
    else False

somaPares 2 = 2
somaPares a = 
  if mod a 2 == 0 
  then a + somaPares (a - 2) 
  else somaPares (a - 1)

somaPot2m m 1 = 2 * m + m
somaPot2m m n = (2^^n) * m + (somaPot2m m (n-1))

primo n = 
  if null[ x | x <- [2..floor(sqrt(fromIntegral n))], mod n x == 0] 
  then True
  else False

nCollatz 1 = 1
nCollatz a = 
  if mod a 2 == 0 
  then 1 + nCollatz (div a 2) 
  else 1 + nCollatz (a*3+1)

seriePI :: Int -> Double
seriePI 1 = 4.0 / 1.0
seriePI n = 
  if mod (2*n) 4 == 0
  then (-4.0)/fromIntegral(2*n-1) + seriePI (n-1)
  else 4.0/fromIntegral(2*n-1) + seriePI (n-1)

check 100 = abs (pi - seriePI 100) < 0.1 
check 1000 = abs (pi - seriePI 1001) < 0.001
