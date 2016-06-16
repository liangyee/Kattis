module Main where

import Data.Char
str2int :: [Char] -> Int
str2int = foldl f 0 where f b a = b * 10 + digitToInt a

main = do
    x <- getLine
    print $ f (str2int x) 2

f :: Int -> Int -> Int  
f 1 _ = 0
f 2 _ = 1
f m n = 1 + (f (div m a) a)
        where
            a = g m n
            
            
g m n   | (mod m 2) == 0 = 2
        | (mod n 2) == 0 = g m (n+1)
        | (n*n) > m = m
        | otherwise = if (mod m n) == 0 then n else g m (n+2)