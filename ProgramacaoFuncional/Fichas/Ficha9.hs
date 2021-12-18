import System.Random
import Data.List -- delete

-- 1. a)
bingoAux :: [Int] -> IO ()
bingoAux [] = putStrLn "Sem mais número para sortear!"
bingoAux l = do
    x <- getChar
    posicaoAleatoria <- randomRIO (0, (length l) - 1)
    putStrLn (show (l !! posicaoAleatoria))
    bingoAux (delete (l !! posicaoAleatoria) l)

bingo :: IO ()
bingo = bingoAux [1 .. 90]

-- b)
geraChave :: IO Int
geraChave = do
    chave <- randomRIO (0 :: Int, 9999)
    return chave

-- Esta função, caso o número sorteado for 2 por exemplo
-- ela, irá transformar esse número em "0002"
uniformeInt :: Int -> String
uniformeInt n = do
    (replicate dif '0') ++ (show n)
    where
        comp = length (show n)
        dif = 4 - comp

compara :: String -> String -> [(Char, Int)]
compara [] _ = []
compara chute chave = comparaAux 0
    where
        comparaAux 4 = []
        comparaAux n = 
            if elemChute == elemChave
                then (elemChute, 1) : comparaAux (n+1)
                else if elemChute `elem` chave
                    then (elemChute, 0) : comparaAux (n+1)
                    else (elemChute, -1) : comparaAux (n+1)
            where
                elemChute = chute !! n
                elemChave = chave !! n

-- [('0',-1),('2',0),('1',1),('3',1)]
formataResposta :: [(Char, Int)] -> IO ()
formataResposta [] = putStrLn "Tente novamente"
formataResposta ((char, n):xs) = do
    putStrLn ("O número " ++ show char ++ " " ++ aux)
    formataResposta xs
    where 
        aux
            | n == 1 = "está correto!"
            | n == 0 = "está na posição incorreta!"
            | otherwise = "está incorreto!"
            -- if n == 1 
            --     then "está correto!" 
            --     else if n == 0
            --         then "na posição incorreta!"
            --         else "não está correto!"

mastermind :: IO ()
mastermind = do
    chave <- geraChave
    masterMindAux chave
    where 
        masterMindAux chaveAleatoria = do
            chaveEmString <- return $ uniformeInt chaveAleatoria
            chute <- getLine

            putStrLn (show (compara chute chaveEmString))
            masterMindAux chaveAleatoria