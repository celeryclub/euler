-- http://projecteuler.net/problem=16

import Data.Char (digitToInt)

sumOfPower :: (Num a, Integral b, Show a) => a -> b -> Int
sumOfPower n power = foldl (+) 0 $ map digitToInt $ show $ n ^ power

main :: IO ()
main = print $ sumOfPower 2 1000
