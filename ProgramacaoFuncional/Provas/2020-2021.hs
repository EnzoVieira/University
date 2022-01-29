import Data.Maybe

----------------------------------------------------------------------------------------------------
-- Ex1
----------------------------------------------------------------------------------------------------
(\\) :: Eq a => [a] -> [a] -> [a] 
(\\) [] _ = []
(\\) (h:t) ls = 
  if h `elem` ls 
  then t \\ remove h ls
  else h : (t \\ ls)
  where 
    remove _ [] = []
    remove x (h:t) = if x == h then t else h : remove x t

----------------------------------------------------------------------------------------------------
-- Ex2
----------------------------------------------------------------------------------------------------
type MSet a = [(a,Int)]

-- a)
removeMSet :: Eq a => a -> [(a,Int)] -> [(a,Int)]
removeMSet x = filter ((/= x) . fst)

-- b)
calcula :: MSet a -> ([a],Int)
calcula = foldr (\(e,n) (es, ns) -> (e : es, n + ns)) ([], 0)

----------------------------------------------------------------------------------------------------
-- Ex3
----------------------------------------------------------------------------------------------------
partes :: String -> Char -> [String]
partes ls e = foldr (\char acc -> if char == e then [] : acc else (char : head acc) : tail acc) [] ls

----------------------------------------------------------------------------------------------------
-- Ex4
----------------------------------------------------------------------------------------------------
data BTree a = Empty | Node a (BTree a) (BTree a)

-- a)
remove :: Ord a => a -> BTree a -> BTree a
remove _ Empty = error "Can't remove element from empty list"
remove e (Node a left right)
  | e > a = Node a left (remove e right)
  | e < a = Node a (remove e left) right
  | otherwise = addTreeToMin left right
  where
    addTreeToMin tree Empty = tree
    addTreeToMin tree (Node a left right) = Node a (addTreeToMin tree left) right

-- b)
instance Show a => Show (BTree a) where
  show Empty = "*" 
  show (Node a left right) = concat ["(", show left, " <-", show a, "-> ", show right, ")"]

----------------------------------------------------------------------------------------------------
-- Ex5
----------------------------------------------------------------------------------------------------
sortOn :: Ord b => (a -> b) -> [a] -> [a]
sortOn _ [] = []
sortOn f (h:t) = sortOn f mins ++ h : sortOn f maxs
  where (mins,maxs) = foldr (\e (mins,maxs) -> if f e > f h then (mins, e : maxs) else (e : mins, maxs)) ([],[]) t

----------------------------------------------------------------------------------------------------
-- Ex6
----------------------------------------------------------------------------------------------------
data FileSystem = File Nome | Dir Nome [FileSystem]
type Nome = String

fs1 :: FileSystem
fs1 = Dir "usr" [Dir "xxx" [File "abc.txt", File "readme", Dir "PF" [File "exemplo.hs"]], Dir "yyy" [],  Dir "zzz" [Dir "tmp" [], File "teste.c"]]

-- a)
fichs :: FileSystem -> [Nome]
fichs (File name) = [name]
fichs (Dir _ ls) = concatMap fichs ls