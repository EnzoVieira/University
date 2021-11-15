import Test.HUnit

mysum :: Int -> Int -> Int
mysum x y = x + y

test1 :: Test
-- test1 = TestCase (assertEqual "for 1+2," 3 (mysum 1 2))
-- test1 = 3 ~=? mysum 1 2
test1 = "for 1+2," ~: 3 ~=? mysum 1 2

test2 :: Test
test2 = TestCase (assertEqual "for 5+5," 10 (mysum 5 5))

test3 :: Test
test3 = TestCase (assertEqual "for 100+100," 100 (mysum 100 100))

tests :: Test
tests =
  TestList
    [ TestLabel "Teste 1 (1, 2)" test1,
      TestLabel "Teste 2 (5, 5)" test2,
      TestLabel "Teste 3 (100, 100)" test3,
      "Teste 1 (1, 2)" ~: test1
    ]