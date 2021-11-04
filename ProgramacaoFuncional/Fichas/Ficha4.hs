import Data.Char

-- 1.
digitAlphaStringTeste :: String
digitAlphaStringTeste = "S9tring12345"

digitAlpha :: String -> (String, String)
-- digitAlpha = digitAlphaAc ("", "")

digitAlpha (char : string) =
  (x, y)
    let (x, y) = digitAlpha string
     in if isAlpah char
          then (char : x, y)
          else (x, char : y)

digitAlphaAc :: (String, String) -> String -> (String, String)
digitAlphaAc ac [] = ac
digitAlphaAc (a, b) (char : string) =
  if isAlpha char
    then digitAlphaAc (a ++ [char], b) string
    else digitAlphaAc (a, b ++ [char]) string