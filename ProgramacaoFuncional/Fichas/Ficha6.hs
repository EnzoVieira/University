module Ficha6 where

data BTree a = 
    Empty |
    Node a (BTree a) (BTree a)
    deriving Show

arvore :: BTree Int
arvore = 
    Node 4
        (Node 1 
            (Node 2 Empty Empty) 
            (Node 3 Empty Empty))

        (Node 5 
            (Node 0 
                (Node 2 Empty Empty) 
                (Node 2 Empty Empty))
            (Node 6 Empty Empty))

a1 :: BTree Int
a1 = 
    Node 4
        (Node 1 Empty Empty)
        (Node 5 Empty Empty)

a2 :: BTree Int
a2 = 
    Node 8
        (Node 2 Empty Empty)
        (Node 10 Empty Empty)

at :: BTree (Int, String, Bool)
at = 
    Node (4, "string1", True)
        (Node (1, "string2", False) Empty Empty)
        (Node (5, "string3", True) Empty Empty)

arvoreProcura :: BTree Int
arvoreProcura = 
    Node 10
        (Node 9 
            (Node 8 Empty Empty) 
            (Node 9 Empty Empty))

        (Node 11
            (Node 10
                (Node 10 Empty Empty) 
                (Node 11 Empty Empty))
            (Node 12 Empty Empty))

-- 1.
-- a)
altura :: BTree a -> Int
altura Empty = 0
altura (Node r e d) = 1 + max (altura e) (altura d)

-- b)
contaNodos :: BTree a -> Int
contaNodos Empty = 0
contaNodos (Node _ e d) = 1 + contaNodos e + contaNodos d

-- c)
folhas :: BTree a -> Int
folhas Empty = 0
folhas (Node _ Empty Empty) = 1
folhas (Node _ e d) = folhas e + folhas d

-- d)
prune :: Int -> BTree a -> BTree a
prune _ Empty = Empty
prune 0 (Node r e d) = Node r Empty Empty
prune n (Node r e d) = Node r (prune (n-1) e) (prune (n-1) d)

-- e)
path :: [Bool] -> BTree a -> [a]
path _ Empty = []
path [] (Node r _ _) = [r]
path (x:xs) (Node r e d)
    | not x = r : path xs e
    | otherwise = r : path xs d

-- f)
mirror :: BTree a -> BTree a
mirror Empty = Empty
mirror (Node r e d) = Node r (mirror d) (mirror e)

-- g)
zipWithBT :: (a -> b -> c) -> BTree a -> BTree b -> BTree c
zipWithBT f (Node r1 e1 d1) (Node r2 e2 d2) = Node (f r1 r2) (zipWithBT f e1 e2) (zipWithBT f d1 d2)
zipWithBT _ _ _ = Empty

-- h)
unzipBT :: BTree (a, b, c) -> (BTree a, BTree b, BTree c)
unzipBT Empty = (Empty, Empty, Empty)
unzipBT (Node (a, b, c) e d) = (Node a ae ad, Node b be bd, Node c ce cd)
    where (ae, be, ce) = unzipBT e
          (ad, bd, cd) = unzipBT d

-- 2.
-- a)
minimo :: Ord a => BTree a -> a
minimo (Node r Empty _) = r
minimo (Node _ e _) = minimo e