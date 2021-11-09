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
takeIndexRecursiveTeste = [1, 2, 3, 4, 5]

takeIndexRecursive :: [a] -> Int -> Maybe a
takeIndexRecursive [] _ = Nothing
takeIndexRecursive (x : xs) n
  | n > 0 = takeIndexRecursive xs (n -1)
  | otherwise = Just x

-- 5.
reverseRecursiveTeste :: [Int]
reverseRecursiveTeste = [10, 20, 30]

reverseRecursive :: [a] -> [a]
reverseRecursive [] = []
reverseRecursive (x : xs) = reverseRecursive xs ++ [x]

-- 6.
takeRecursiveTeste :: [Int]
takeRecursiveTeste = [1, 2, 3, 4, 5]

takeRecursive :: Int -> [a] -> [a]
takeRecursive _ [] = []
takeRecursive n (x : xs)
  | n > 0 = x : takeRecursive (n - 1) xs
  | otherwise = []

-- 7.
dropRecursiveTeste :: [Int]
dropRecursiveTeste = [1, 2, 3, 4, 5]

dropRecursive :: Int -> [a] -> [a]
dropRecursive _ [] = []
dropRecursive n (x : xs)
  | n > 0 = dropRecursive (n - 1) xs
  | otherwise = x : dropRecursive 0 xs

-- 8.
zipRecursiveTeste1 :: [Int]
zipRecursiveTeste1 = [1, 2, 3]

zipRecursiveTeste2 :: [Int]
zipRecursiveTeste2 = [10, 20, 30, 40]

zipRecursive :: [a] -> [b] -> [(a, b)]
zipRecursive (x : xs) (y : ys) = (x, y) : zipRecursive xs ys
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
intersperseRecursive el (x : xs) = x : el : intersperseRecursive el xs

-- 11.
groupRecursiveTeste :: [Int]
groupRecursiveTeste = [1, 2, 2, 3, 4, 4, 4, 5, 4, 4]

groupRecursive :: Eq a => [a] -> [[a]]
groupRecursive [] = []
groupRecursive [x] = [[x]]
groupRecursive (x : xs) =
  let allEqual = groupRecursive xs -- IMAGINAR QUE = [[2,2], [3], [4,4,4], [5], [4,4]]
   in if x `elem` head allEqual
        then (x : head allEqual) : tail allEqual
        else [x] : allEqual

-- 12.
concatListsRecursiveTeste :: [[Int]]
concatListsRecursiveTeste = [[1], [2, 2], [3], [4, 4, 4], [5], [4]]

concatListsRecursive :: [[a]] -> [a]
concatListsRecursive [] = []
concatListsRecursive (x : xs) = x ++ concatListsRecursive xs

-- 13.
initsRecursive :: [a] -> [[a]]
initsRecursive [] = [[]]
initsRecursive list = initsRecursive (init list) ++ [list]

-- 14.
tailsRecursive :: [a] -> [[a]]
tailsRecursive [] = [[]]
tailsRecursive list = list : tailsRecursive (tail list)

-- 15.
headsRecursiveTeste :: [[Int]]
headsRecursiveTeste = [[2, 3, 4], [1, 7], [], [8, 5, 3]]

headsRecursive :: [[a]] -> [a]
headsRecursive [] = []
headsRecursive ([] : xs) = headsRecursive xs
headsRecursive (x : xs) = head x : headsRecursive xs

-- 16.
totalRecursiveTeste :: [[Int]]
totalRecursiveTeste = [[2, 3, 4], [1, 7], [], [8, 5, 3]]

totalRecursive :: [[a]] -> Int
totalRecursive [] = 0
totalRecursive (x : xs) =
  let total = totalRecursive xs
   in length x + total

-- 17.
funRecursiveTeste :: [(String, Int, Int)]
funRecursiveTeste = [("rui", 3, 2), ("maria", 5, 2), ("ana", 43, 7)]

funRecursive :: [(a, b, c)] -> [(a, c)]
funRecursive [] = []
funRecursive ((a, b, c) : xs) = (a, c) : funRecursive xs

-- 18.
colaRecursiveTeste :: [(String, Int, Int)]
colaRecursiveTeste = [("rui", 3, 2), ("maria", 5, 2), ("ana", 43, 7)]

colaRecursive :: [(String, b, c)] -> String
colaRecursive [] = ""
colaRecursive ((name, _, _) : xs) = name ++ colaRecursive xs

-- 19.
idadeRecursiveTeste :: [(String, Int)]
idadeRecursiveTeste = [("rui", 1995), ("maria", 2009), ("ana", 1947)]

idadeRecursive :: Int -> Int -> [(String, Int)] -> [String]
idadeRecursive _ _ [] = []
idadeRecursive year age ((name, dob) : xs)
  | (year - dob) >= age = name : idadeRecursive year age xs
  | otherwise = idadeRecursive year age xs

-- 20.
powerEnumFrom :: Int -> Int -> [Int]
powerEnumFrom _ 1 = [1]
powerEnumFrom base power =
  let r = powerEnumFrom base (power - 1)
   in if power <= 0
        then []
        else r ++ [base ^ (power - 1)]

-- 21.
isPrime :: Int -> Bool
isPrime n = isPrimeAuxiliar n (n - 1)

-- isPrime n = null [x | x <- [2 .. n -1], n `mod` x == 0]

isPrimeAuxiliar :: Int -> Int -> Bool
isPrimeAuxiliar n 2 = True
isPrimeAuxiliar n m
  | mod n m == 0 = False
  | otherwise = isPrimeAuxiliar n (m - 1)

-- 22.
isPrefixOfTeste1 :: [Int]
isPrefixOfTeste1 = [10, 20]

isPrefixOfTeste2 :: [Int]
isPrefixOfTeste2 = [10, 20, 30]

isPrefixOfTeste3 :: [Int]
isPrefixOfTeste3 = [10, 30]

isPrefixOf :: Eq a => [a] -> [a] -> Bool
isPrefixOf (x : xs) (y : ys) = x == y && isPrefixOf xs ys
isPrefixOf (x : xs) [] = False
isPrefixOf _ _ = True

-- 23.
isSuffixOfTeste1 :: [Int]
isSuffixOfTeste1 = [20, 30]

isSuffixOfTeste2 :: [Int]
isSuffixOfTeste2 = [10, 20, 30]

isSuffixOf :: Eq a => [a] -> [a] -> Bool
isSuffixOf [] _ = True
isSuffixOf _ [] = False
isSuffixOf l1 l2 = last l1 == last l2 && isSuffixOf (init l1) (init l2)

-- 24.
isSubsequenceOfTeste1 :: [Int]
isSubsequenceOfTeste1 = [40, 20]

isSubsequenceOfTeste2 :: [Int]
isSubsequenceOfTeste2 = [10, 20, 30, 40]

isSubsequenceOf :: Eq a => [a] -> [a] -> Bool
isSubsequenceOf [] _ = True
isSubsequenceOf _ [] = False
isSubsequenceOf (x : xs) (y : ys) =
  if x == y
    then isSubsequenceOf xs ys
    else isSubsequenceOf (x : xs) ys

-- 25.
elemIndicesTeste :: [Int]
elemIndicesTeste = [1, 2, 3, 4, 3, 2, 3, 4, 5]

elemIndices :: Eq a => a -> [a] -> [Int]
elemIndices _ [] = []
elemIndices el l = elemIndicesAux el l 0

elemIndicesAux :: Eq a => a -> [a] -> Int -> [Int]
elemIndicesAux _ [] _ = []
elemIndicesAux el (x : xs) index =
  if el == x
    then index : elemIndicesAux el xs (index + 1)
    else elemIndicesAux el xs (index + 1)

-- 26. REQUER REVISAO
nubRecursiveTeste :: [Int]
nubRecursiveTeste = [1, 2, 1, 2, 3, 1, 2]

nubRecursive :: Eq a => [a] -> [a]
nubRecursive [] = []
nubRecursive (x : xs) =
  let r = nubRecursive xs
   in if x `elem` r
        then r
        else x : r

-- 27.
deleteRecursiveTeste :: [Int]
deleteRecursiveTeste = [1, 2, 1, 2, 3, 1, 2]

deleteRecursive :: Eq a => a -> [a] -> [a]
deleteRecursive _ [] = []
deleteRecursive el (x : xs)
  | x == el = xs
  | otherwise = x : deleteRecursive el xs

-- 28.
deleteFirstsRecursiveTeste1 :: [Int]
deleteFirstsRecursiveTeste1 = [1, 2, 3, 4, 5, 1]

deleteFirstsRecursiveTeste2 :: [Int]
deleteFirstsRecursiveTeste2 = [1, 5, 4]

deleteFirstsRecursive :: Eq a => [a] -> [a] -> [a]
deleteFirstsRecursive l1 [] = l1
deleteFirstsRecursive [] _ = []
deleteFirstsRecursive (x : xs) l2 =
  if x `elem` l2
    then deleteFirstsRecursive xs (deleteFirstsRecursiveDropElem x l2)
    else x : deleteFirstsRecursive xs l2

deleteFirstsRecursiveDropElem :: Eq a => a -> [a] -> [a]
deleteFirstsRecursiveDropElem _ [] = []
deleteFirstsRecursiveDropElem el (x : xs)
  | el == x = xs
  | otherwise = x : deleteFirstsRecursiveDropElem el xs

-- 29.
unionRecursive :: Eq a => [a] -> [a] -> [a]
unionRecursive l1 (y : ys) =
  if y `elem` l1
    then unionRecursive l1 ys
    else l1 ++ [y]
unionRecursive _ _ = []

-- 30.
intersectRecursiveTeste1 :: [Int]
intersectRecursiveTeste1 = [1, 1, 2, 3, 4]

intersectRecursiveTeste2 :: [Int]
intersectRecursiveTeste2 = [1, 3, 5]

intersectRecursive :: Eq a => [a] -> [a] -> [a]
intersectRecursive (x : xs) l2 =
  if x `elem` l2
    then x : intersectRecursive xs l2
    else intersectRecursive xs l2
intersectRecursive _ _ = []

-- 31.
insertRecursiveTeste :: [Int]
insertRecursiveTeste = [1, 20, 30, 40]

insertRecursive :: Ord a => a -> [a] -> [a]
insertRecursive _ [] = []
insertRecursive el (x : xs) =
  if x > el
    then el : x : xs
    else x : insertRecursive el xs

-- 32.
unwordsRecursiveTeste :: [String]
unwordsRecursiveTeste = ["Programacao", "Funcional"]

unwordsRecursive :: [String] -> String
unwordsRecursive [] = []
unwordsRecursive [x] = x
unwordsRecursive (x : xs) = x ++ " " ++ unwordsRecursive xs