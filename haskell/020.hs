-- http://projecteuler.net/problem=20

import Data.List (foldl1')
import Data.Char (digitToInt)

sumOfFactorialDigits :: (Integral a, Show a) => a -> Int
sumOfFactorialDigits n = sum $ map digitToInt $ show $ factorial n
  where
    factorial :: Integral a => a -> a
    factorial n = foldl1' (*) [1 .. n]

main :: IO ()
main = print $ sumOfFactorialDigits 100
