-- 1
enumFromToRecursive :: Int -> Int -> [Int]
enumFromToRecursive start finish
  | start > finish = []
  | otherwise = start : enumFromToRecursive (start + 1) finish

-- 2
-- enumFromThenToRecursive :: Int -> Int -> Int -> [Int]
-- enumFromThenToRecursive start step finish
--   | start > finish = []
--   | otherwise = start : enumFromThenToRecursive (step - start + 1) step finish

-- 3
concatRecursive :: [a] -> [a] -> [a]
concatRecursive [] l2 = l2
concatRecursive l1 [] = l1
concatRecursive (x : xs) l2 = x : concatRecursive xs l2

concatRecursivel1 :: [Int]
concatRecursivel1 = [1, 2, 3]

concatRecursivel2 :: [Int]
concatRecursivel2 = [10, 20, 30]
