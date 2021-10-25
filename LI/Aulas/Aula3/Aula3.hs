type Nome = String

type Coordenada = (Int, Int)

data Movimento = N | S | E | W

data PosicaoPessoa = Pos Nome Coordenada deriving (Show, Eq)

posicao :: PosicaoPessoa -> [Movimento] -> PosicaoPessoa
posicao p [] = p
posicao pessoa (mov : movs) = posicao (moveOne pessoa mov) movs

posicoesM :: [PosicaoPessoa] -> Movimento -> [PosicaoPessoa]
posicoesM [] _ = []
posicoesM (pessoa : pessoas) mov = moveOne pessoa mov : posicoesM pessoas mov

posicoesMs :: [PosicaoPessoa] -> [Movimento] -> [PosicaoPessoa]
posicoesMs ps [] = ps
posicoesMs [] _ = []
posicoesMs (pessoa : pessoas) movs = moveMany pessoa movs : posicoesMs pessoas movs

posicoesN :: [PosicaoPessoa] -> [Nome]
posicoesN [] = []
posicoesN (Pos nome (posX, posY) : xs)
  | posY == maxPosition = nome : posicoesN xs
  | otherwise = posicoesN xs
  where
    maxPosition = maxNorth (Pos nome (posX, posY) : xs)

maxNorth :: [PosicaoPessoa] -> Int
maxNorth [] = -1
maxNorth ((Pos _ (_, posY)) : xs)
  | posY > maxNum = posY
  | otherwise = maxNum
  where
    maxNum = maxNorth xs

moveOne :: PosicaoPessoa -> Movimento -> PosicaoPessoa
moveOne (Pos nome (posX, posY)) N = Pos nome (posX, posY + 1)
moveOne (Pos nome (posX, posY)) S = Pos nome (posX, posY - 1)
moveOne (Pos nome (posX, posY)) E = Pos nome (posX + 1, posY)
moveOne (Pos nome (posX, posY)) W = Pos nome (posX - 1, posY)

moveMany :: PosicaoPessoa -> [Movimento] -> PosicaoPessoa
moveMany p [] = p
moveMany pessoa (mov : movs) = moveMany (moveOne pessoa mov) movs

procuraElem :: Eq a => a -> [a] -> Int
procuraElem _ [] = -1
procuraElem e (x : xs)
  | e == x = 0
  | otherwise = 1 + procuraElem e xs

substituiElem :: [a] -> Int -> a -> [a]
substituiElem [] _ _ = []
substituiElem (x : xs) index elem
  | index == 0 = elem : substituiElem xs (index - 1) elem
  | otherwise = x : substituiElem xs (index - 1) elem
