module Main where
import Data.Char

main :: IO()
main = do
        x <- getLine
        main2 $ str2int x
        
main2 :: Int -> IO()
main2 1 = main3
main2 n = do
            main3
            main2 (n-1)
main3 :: IO()
main3 = do
        x <- getLine
        print $ main4 (map (map digitToInt) (words x))

        
main4 :: [[Int]] -> Int
main4 (a:b:_) = (g b) - (g a) + (sum a)


h :: [Int] -> Int
h (a:[]) = a
h as = foldl f_h 0 as where f_h b a = b * 10 + a

g (a:[]) = div (a * (a + 1)) 2
g (a:as) = f (a-1) (1+(length as)) + a * (1+(h as)) + (g as)

f 9 1 = 45
f 9 n = 45 * (10^(n-1)) + (f 9 (n-1)) * 10
f m 1 = div (m * (m + 1)) 2
f m n = (div (m * (m + 1)) 2) * (10^(n-1)) + (f 9 (n-1)) * (m+1) 

str2int :: [Char] -> Int
str2int = foldl f 0 where f b a = b * 10 + digitToInt a