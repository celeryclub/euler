-- http://projecteuler.net/problem=6

sumSquareDifference :: Integral a => a -> a
sumSquareDifference n = accumDifference 0 0 1
  where accumDifference sumOfSquares sum current =
          if current > n
          then sum ^ 2 - sumOfSquares
          else accumDifference (sumOfSquares + current ^ 2) (sum + current) (current + 1)

main :: IO ()
main = print $ sumSquareDifference 100
