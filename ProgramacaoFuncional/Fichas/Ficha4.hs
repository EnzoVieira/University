import Data.Char

-- 1.
digitAlphaStringTeste :: String
digitAlphaStringTeste = "S9tring12345"

digitAlpha :: String -> (String, String)
digitAlpha [] = ("", "")
digitAlpha (char : string) =
  let (x, y) = digitAlpha string
   in if isAlpha char
        then (char : x, y)
        else (x, char : y)

-- Resolvendo com acumuladores
-- digitAlpha = digitAlphaAc ("", "")

-- digitAlphaAc :: (String, String) -> String -> (String, String)
-- digitAlphaAc ac [] = ac
-- digitAlphaAc (a, b) (char : string) =
--   if isAlpha char
--     then digitAlphaAc (a ++ [char], b) string
--     else digitAlphaAc (a, b ++ [char]) string

-- 2.
nzpListaTeste :: [Int]
nzpListaTeste = [-3, 6, 0, -5, 6, 9, -2, 0, 1]

nzp :: [Int] -> (Int, Int, Int)
nzp [] = (0, 0, 0)
nzp (num : tail) =
  let (neg, zeros, pos) = nzp tail
   in if num < 0
        then (1 + neg, zeros, pos)
        else
          if num > 0
            then (neg, zeros, 1 + pos)
            else (neg, 1 + zeros, pos)