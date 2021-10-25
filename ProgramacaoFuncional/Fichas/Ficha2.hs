-- 1.


funA :: [Double] -> Double
funA [] = 0
funA (y:ys) = y^2 + (funA ys)

{- funcA [2,3,5,1]
=
funcA (2 : [3, 5, 1])
=
2^2 + funcA (3 : [5, 1])
=
2^2 + 3^2 + funcA (5 : [1])
=
2^2 + 3^2 + 5^2 + funcA (1 : [])
=
2^2 + 3^2 + 5^2 + 1^2 + funcA []
=
2^2 + 3^2 + 5^2 + 1^2 + 0
=
4 + 9 + 25 + 1
=
39 
-}

funB :: [Int] -> [Int]
funB [] = []
funB (h:t) = 
  if mod h 2 == 0
    then h : funB t
    else funB t

{- funB [8,5,12]
funB (8 : [5, 12])
=
8 : funB (5 : [12])
=
8 : funB (12 : [])
=
8 : 12 : funB []
=
8 : 12 : []
=
[8, 12]
-}

funC (x:y:t) = funC t
funC [x] = [x]
funC [] = []

{- funC [1,2,3,4,5]
funC (1 : 2 : [3,4,5])
=
funC [3, 4, 5]
=
funC (3 : 5 : [5])
=
funC [5]
=
[5]
-}

funD l = g [] l
g acc [] = acc
g acc (h:t) = g (h:acc) t

{- funD "otrec"
=
g [] "otrec"
=
g [] ('o' ; "trec")
=
g ('o' : []) "trec"
=
g ('t' : 'o' : []) "rec"
=
g ('r' : 't' : 'o' : []) "ec"
=
g ('e' : 'r' : 't' : 'o' : []) "c"
=
g ('c' : 'e' : 'r' : 't' : 'o' : []) []
=
"certo"
-}


-- 2.

dobros :: [Float] -> [Float]
dobros [] = []
dobros (x:xs) = x * 2 : dobros xs

numOcorre :: Char -> String -> Int
numOcorre _ [] = 0
numOcorre char (stringHead: stringTail) = 
    if char == stringHead
        then 1 + numOcorre char stringTail
        else numOcorre char stringTail

positivos :: [Int] -> Bool
positivos [] = True
positivos (x:xs) = 
  if mod x 2 == 0
    then positivos xs
    else False

soPos :: [Int] -> [Int]
soPos [] = []
soPos (x:xs) = 
  if x >= 0
    then x : soPos xs
    else soPos xs

somaNeg :: [Int] -> Int
somaNeg [] = 0
somaNeg (x:xs) = 
  if x <= 0
    then x + somaNeg xs
    else somaNeg xs

tresUlt :: [a] -> [a]
tresUlt list = case list of 
  (_:x:y:z:t) -> tresUlt (x:y:z:t)
  _ -> list 

segundos :: [(a,b)] -> [b] 
segundos [] = []
segundos ((_,second):t) = second : segundos t

nosPrimeiros :: (Eq a) => a -> [(a, b)] -> Bool
nosPrimeiros _ [] = False
nosPrimeiros e ((first, _) : tail)
  | e == first = True
  | otherwise = nosPrimeiros e tail

sumTriplos :: (Num a, Num b, Num c) => [(a, b, c)] -> (a, b, c)
sumTriplos [] = (0,0,0)
sumTriplos ((a, b, c) : tail) = (a + nextA, b + nextB, c + nextC) 
  where (nextA, nextB, nextC) = sumTriplos tail