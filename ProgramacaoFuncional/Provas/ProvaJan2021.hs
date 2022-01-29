module ProvaJan2021 where

type MSet a = [(a, Int)]

calcula :: MSet a -> ([a], Int)
calcula = foldr (\x acc -> (fst x : fst acc, snd x + snd acc)) ([], 0)

data BTree a = Empty | Node a (BTree a) (BTree a)

a1 :: BTree Int
a1 = Node 5 (Node 3 Empty Empty) (Node 7 Empty (Node 9 Empty Empty))

remove :: Ord a => a -> BTree a -> BTree a
remove _ Empty = Empty
remove i (Node r e d)
    | i == r = Empty
    | otherwise = Node r (remove i e) (remove i d)

instance Show a => Show (BTree a) where
    show Empty = "*"
    show (Node r e d) = "(" ++ show e ++ " <- " ++ show r ++ " -> " ++ show d ++ ")"

type Nome = String
data FileSystem = File Nome | Dir Nome [FileSystem]

fs1 = Dir "usr" 
    [Dir "xxx" 
        [File "abc.txt", 
        File "readme", 
        Dir "PF" [File "exemplo.hs"]],
        Dir "yyy" [], 
        Dir "zzz" [Dir "tmp" [], File "teste.c"]
        ]

fichs :: FileSystem -> [Nome]
fichs (File nome) = [nome]
fichs (Dir nome []) = [nome]
fichs (Dir nome l) = nome : fichsAux l
    where 
        fichsAux :: [FileSystem] -> [Nome]
        fichsAux [] = []
        fichsAux ((File nome) : xs) = nome : fichsAux xs
        fichsAux ((Dir nome []) : xs) = nome : fichsAux xs
        fichsAux ((Dir nome l) : xs) = nome : fichsAux (l ++ xs)

dirFiles :: FileSystem -> [Nome] -> Maybe [Nome]
dirFiles fs [] = Nothing
dirFiles fs (x:xs)