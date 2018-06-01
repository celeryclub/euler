-- http://projecteuler.net/problem=22
-- splitBy function taken from
-- http://stackoverflow.com/questions/4503958/what-is-the-best-way-to-split-string-by-delimiter-funcionally


--import Data.Char (ord)
--ord 'A' - 64

import Data.List (elemIndex, sort)
import Data.Maybe (fromJust)

nameScoresFromString s =
  let alphabetizedNames = sort $ stripAllQuotes $ splitBy ',' s in
  sum [nameScore n * i | (i, n) <- zip [1..] alphabetizedNames]
    where
      stripAllQuotes list =
        [stripQuotesFromWord w | w <- list]
        where stripQuotesFromWord s = [c | c <- s, c /= '"']
              where nameScore n = sum [(fromJust $ elemIndex c ['A'..'Z']) + 1 | c <- n]
              where splitBy delimiter = foldr f [[]]
                              where f c l@(x:xs) | c == delimiter = []:l
                                                 | otherwise = (c:x):xs

main :: IO ()
main = do inFile <- readFile "../_data/022.txt"
          print $ nameScoresFromString inFile
