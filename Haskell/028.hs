-- http://projecteuler.net/problem=28

diagonalSumForSpiralOfSize :: (Integral a) => a -> a
diagonalSumForSpiralOfSize 0 = 0
diagonalSumForSpiralOfSize 1 = 1
diagonalSumForSpiralOfSize x = (x ^ 2) * 4 - (x - 1) * 6 + diagonalSumForSpiralOfSize (x - 2)

main :: IO ()
main = print $ diagonalSumForSpiralOfSize 1001
