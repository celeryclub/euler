-- http://projecteuler.net/problem=12

firstTriangleNumberWithOverNDivisors :: Integer -> Integer
firstTriangleNumberWithOverNDivisors n = checkTriangleNumber n 0 1

checkTriangleNumber :: Integer -> Integer -> Integer -> Integer
checkTriangleNumber requiredDevisors current thisAddend =
  let triangle = current + thisAddend
  in if (length (factorize triangle)) > fromIntegral requiredDevisors
     then triangle
     else checkTriangleNumber requiredDevisors triangle $ thisAddend + 1

factorize n = [x | x <- [1..n], n `mod` x == 0]

main :: IO ()
main = print $ firstTriangleNumberWithOverNDivisors 500
