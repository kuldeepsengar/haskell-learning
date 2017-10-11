module Lib
    (   factorial,
        calcBmis,
        maximum'
    ) where

factorial  :: (Integral a) => a -> a
factorial 0 = 1
factorial n = n * factorial (n-1)

calcBmis :: (RealFloat a) => [(a,a)] -> [a]
calcBmis xs = [bmi w h | (w,h) <- xs]
        where bmi weight height = weight / height ^ 2

maximum' :: (Ord a) => [a] -> a
maximum' [] = error "Maximum of empty list"
maximum' [x] = x
maximum' (x:xs)
    | x > maxTail = x
    | otherwise = maxTail
    where maxTail = maximum' xs
