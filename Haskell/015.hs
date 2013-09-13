-- http://projecteuler.net/problem=15

-- Hints from 
-- http://forum.projecteuler.net/viewtopic.php?f=50&t=730&sid=536a1df71c5c78440981607c88cf6a58&start=30
-- http://www.mathsisfun.com/combinatorics/combinations-permutations.html
--http://www.regentsprep.org/regents/math/algebra/apr2/LpermRep.htm

numberOfPathsThroughGridOfSize :: (Integral a) => a -> a
numberOfPathsThroughGridOfSize x = factorial (x * 2) `div` factorial x ^ 2
  where factorial n = product [1..n]

main :: IO ()
main = print $ numberOfPathsThroughGridOfSize 20
