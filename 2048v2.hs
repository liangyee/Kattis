module Main where

import Data.Char
import Data.List

-- main :: IO ()
-- main = do
        -- x <- readFile "2048.in"
        -- process3 $ move (fst(process1 x)) (snd(process1 x))
main :: IO()
main = do
        a <- getLine
        b <- getLine
        c <- getLine
        d <- getLine
        e <- getLine
        process3 $ move (str2int e) [map str2int x|x <- map words [a,b,c,d]]

str2int :: [Char] -> Int
str2int = foldl f 0 where f b a = 10 * b + digitToInt a

-- process1 :: String -> (Int,[[Int]])
-- process1 s = (str2int a,process2 $ map str2int b) 
        -- where
            -- a = last c
            -- b = init c
            -- c = words s

-- process2 :: [Int] -> [[Int]]
-- process2 [] = []
-- process2 (a:b:c:d:e) = [a,b,c,d]:(process2 e)

merge :: [Int] -> [Int]
merge xs = merged ++ padding
    where padding = replicate (length xs - length merged) 0
          merged  = combine $ filter (/= 0) xs
          combine (x:y:xs) | x == y = x * 2 : combine xs
                           | otherwise = x  : combine (y:xs)
          combine x = x

move :: Int -> [[Int]] -> [[Int]]
move 0 = map merge
move 1 = transpose . move 0  . transpose
move 2 = map (reverse . merge . reverse)
move 3  = transpose . move 2 . transpose


process3 :: [[Int]] -> IO()
process3 (a:[]) = process4 a
process3 (a:b) = do
                process4 a
                process3 b

process4 :: [Int] -> IO()
process4 (a:[]) = putStrLn $ show a
process4 (a:b) = do
            putStr $ show a
            putChar ' '
            process4 b