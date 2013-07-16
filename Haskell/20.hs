-- http://projecteuler.net/problem=20

import Data.Char (digitToInt)

sumOfFactorialDigits :: (Integral a, Show a) => a -> Int
sumOfFactorialDigits n = sum $ map digitToInt $ show $ factorial n
  where
    factorial :: Integral a => a -> a
    factorial n = accumSum 1 n
      where
        accumSum :: Integral a => a -> a -> a
        accumSum total current =
            if current > 0
              then accumSum (total * current) $ current - 1
              else total

main :: IO ()
main = print $ sumOfFactorialDigits 100
