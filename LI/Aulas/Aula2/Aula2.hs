{- |
Module : Exemplo
Description : Módulo Haskell contendo exemplos de funções recursivas
Copyright : Alguém <alguem@algures.com>;
            Outro alguém <outro@algures.com>
Este módulo contém definições Haskell para o cálculo de funções
recursivas simples (obs: isto é apenas uma descrição mais
longa do módulo para efeitos de documentação...).
-}
module Exemplo where

import GHC.Integer ()

{- | A função `fact` calcula o factorial (@fact n@ retorna o factorial
de de um inteiro @n@).
Alternativamente, a função poderia ser definida da seguinte forma:

@
fact n = if n>0
then n*fact (n-1)
else 1
@

== Exemplos de utilização:
>>> fact 5
120
>>> fact 0
1

== Propriedades:
prop> fact 0 = 1
prop> n>0 => fact n = n * fact (n-1)
-}
fact ::
  -- | argumento assume-se não negativo
  Integer ->
  -- | resultado
  Integer
fact 0 = 1
fact n = n * fact (n -1)

{- | A função `fib` retorna o @n@-ésimo elemento da sequência de Fibonacci
Algumas características que distinguem a função `fib` da `fact`:

* o padrão de recursividade é binário;

* dispõe de dois casos base.

== Exemplos de utilização:
>>> fib 4
3

>>> fib 10
55
-}
fib :: Integer -> Integer
fib 0 = 0
fib 1 = 1
fib n = fib (n -1) + fib (n -2)