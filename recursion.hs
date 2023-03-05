module R
( R.replicate
, R.even
, R.odd
) where

replicate :: Int -> a -> [a]
replicate r v =
    if r <= 0
        then []
        else v : R.replicate (r - 1) v

even :: Int -> Bool
even n =
    if n == 0
        then True
        else R.odd (n - 1)

odd :: Int -> Bool
odd n =
    if n == 0
        then False
        else R.even (n - 1)
