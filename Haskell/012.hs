-- http://projecteuler.net/problem=12

-- Refactoring help:
-- http://forum.projecteuler.net/viewtopic.php?f=50&t=2457&hilit=012&start=15
-- http://www.haskell.org/haskellwiki/99_questions/Solutions/35

import Data.List (group, foldl1')

firstTriangleNumberWithOverNDivisors :: Integer -> Integer
firstTriangleNumberWithOverNDivisors n =
  checkTriangleNumbers n 1 2
  where
    checkTriangleNumbers :: Integral a => a -> Integer -> Integer -> Integer
    checkTriangleNumbers requiredDevisors current thisAddend =
      let triangle = current + thisAddend
      in if (numberOfFactors triangle) > fromIntegral requiredDevisors
            then triangle
            else checkTriangleNumbers requiredDevisors triangle $ thisAddend + 1
          where
            numberOfFactors :: Integer -> Int
            numberOfFactors n =
              foldl1' (*) $ map (+1) $ map length $ group $ factor n
              where
                factor :: Integer -> [Integer]
                factor 1 = []
                factor n = let divisors = dropWhile ((/= 0) . mod n) [2 .. ceiling $ sqrt $ fromIntegral n]
                           in let prime = if null divisors then n else head divisors
                              in (prime :) $ factor $ div n prime

main :: IO ()
main = print $ firstTriangleNumberWithOverNDivisors 500
