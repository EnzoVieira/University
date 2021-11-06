-- 1.
enumFromToRecursive :: Int -> Int -> [Int]
enumFromToRecursive start finish
  | start > finish = []
  | otherwise = start : enumFromToRecursive (start + 1) finish

-- 2.
-- enumFromThenToRecursive :: Int -> Int -> Int -> [Int]
-- enumFromThenToRecursive start step finish
--   | start > finish = []
--   | otherwise = start : enumFromThenToRecursive (step - start + 1) step finish

-- 3.
concatRecursive :: [a] -> [a] -> [a]
concatRecursive [] l2 = l2
concatRecursive l1 [] = l1
concatRecursive (x : xs) l2 = x : concatRecursive xs l2

concatRecursivel1Teste :: [Int]
concatRecursivel1Teste = [1, 2, 3]

concatRecursivel2Teste :: [Int]
concatRecursivel2Teste = [10, 20, 30]

-- 4.
takeIndexRecursiveTeste :: [Int]
takeIndexRecursiveTeste = [1,2,3,4,5]

takeIndexRecursive :: [a] -> Int -> a
takeIndexRecursive (x:xs) n 
  | n > 0 = takeIndexRecursive xs (n-1)
  | otherwise = x

-- 5.
reverseRecursiveTeste :: [Int]
reverseRecursiveTeste = [10,20,30]

reverseRecursive :: [a] -> [a]
reverseRecursive [] = []
reverseRecursive (x:xs) = reverseRecursive xs ++ [x]

-- 6. 
takeRecursiveTeste :: [Int]
takeRecursiveTeste = [1,2,3,4,5]

takeRecursive :: Int -> [a] -> [a]
takeRecursive _ [] = []
takeRecursive n (x:xs)
  | n > 0 = x : takeRecursive (n - 1) xs 
  | otherwise = []

-- 7.
dropRecursiveTeste :: [Int]
dropRecursiveTeste = [1,2,3,4,5]

dropRecursive :: Int -> [a] -> [a]
dropRecursive _ [] = []
dropRecursive n (x:xs)
  | n > 0 = dropRecursive (n - 1) xs
  | otherwise = x : dropRecursive 0 xs

-- 8.
zipRecursiveTeste1 :: [Int]
zipRecursiveTeste1 = [1, 2, 3]

zipRecursiveTeste2 :: [Int]
zipRecursiveTeste2 = [10, 20, 30, 40]

zipRecursive :: [a] -> [b] -> [(a, b)]
zipRecursive (x:xs) (y:ys) = (x, y) : zipRecursive xs ys
zipRecursive _ _ = []

-- 9.
replicateRecursive :: Int -> a -> [a] 
replicateRecursive n el 
  | n > 0 = el : replicateRecursive (n - 1) el
  | otherwise = []

-- 10. 
intersperseRecursiveTeste :: [Int]
intersperseRecursiveTeste = [10, 20, 30]

intersperseRecursive :: a -> [a] -> [a] 
intersperseRecursive _ [] = []
intersperseRecursive el (x:xs) = x : el : intersperseRecursive el xs