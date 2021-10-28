-- 1.

perimetroCirc :: Float -> Float
perimetroCirc r = 2 * r * pi

dist :: (Float, Float) -> (Float, Float) -> Float
dist (x1, y1) (x2, y2) = sqrt ((x2 - x1) ^ 2 + (y2 - y1) ^ 2)

primUlt :: [a] -> (a, a)
primUlt l = (head l, last l)

multiplo :: Int -> Int -> Bool
multiplo m n = m `mod` n == 0

truncarImpar :: [a] -> [a]
truncarImpar l
  | length l `mod` 2 == 0 = l
  | otherwise = tail l

max2 :: Int -> Int -> Int
max2 x y
  | x > y = x
  | otherwise = x

max3 :: Int -> Int -> Int -> Int
max3 x y z
  | x > y && x > z = x
  | y > x && y > z = y
  | z > x && z > y = z
  | otherwise = x

-- 2.
nRaizes :: (Num p, Ord a, Num a) => a -> a -> a -> p
nRaizes a b c
  | delta == 0 = 1
  | delta < 0 = error "Nenhuma raiz real"
  | otherwise = 2
  where
    delta = b ^ 2 - 4 * a * c

raizes :: (Integral a, Floating a) => a -> a -> a -> [a]
raizes a b c
  | nraizes == 1 = [(- b) `div` (2 * a)]
  | otherwise = [(- b + sqrt delta) `div` (2 * a), (- b - sqrt delta) `div` (2 * a)]
  where
    nraizes = nRaizes a b c
    delta = b ^ 2 - 4 * a * c