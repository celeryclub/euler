-- http://projecteuler.net/problem=2

fibList :: Integral a => a -> a
fibList limit = accumSum 0 1 1
    where accumSum total a b =
            if b > limit
              then total
              else if even b
                     then accumSum (total+b) b (a+b)
                     else accumSum total b (a+b)

main :: IO ()
main = print $ fibList 4000000
