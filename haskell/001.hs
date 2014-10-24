-- http://projecteuler.net/problem=1

threeFiveSum :: Integral a => a -> a
threeFiveSum below = accumSum 0 3
    where accumSum total current =
            if current < below
              then if mod current 3 == 0 || mod current 5 == 0
                     then accumSum (total + current) $ current + 1
                     else accumSum total $ current + 1
              else total

main :: IO ()
main = print $ threeFiveSum 1000
