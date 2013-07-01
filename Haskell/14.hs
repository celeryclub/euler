-- http://projecteuler.net/problem=14

numberWithLongestChainUnder :: Integer -> Integer
numberWithLongestChainUnder n = tryStartingWith 0 0 $ n - 1

tryStartingWith :: Integer -> Integer -> Integer -> Integer
tryStartingWith longestLength theOne current =
          if current > 0
          then let currentLength = lengthOfChainStartingWith current
               in if currentLength > longestLength
                  then tryStartingWith currentLength current $ current - 1
                  else tryStartingWith longestLength theOne $ current - 1
          else theOne

lengthOfChainStartingWith :: Integer -> Integer
lengthOfChainStartingWith n = countLinks n 0
  where countLinks current total =
          if current > 1 then
              if even current
              then countLinks (div current 2) $ total + 1
              else countLinks (current * 3 + 1) $ total + 1
          else total + 1

main :: IO ()
main = print $ numberWithLongestChainUnder 1000000
