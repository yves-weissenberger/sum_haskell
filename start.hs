 module Main where
 import System.Environment
 
 main :: IO ()


 main = do
    args <- getArgs
    let n1 = read (args !! 0) :: Integer
    let n2 = read (args !! 1) :: Integer

    putStrLn ("Hello, " ++ show (n1+n2))
