module Main where
import System.Environment

main :: IO ()

main = do
    putStrLn "Tell me your name: "
    s <- getLine
    putStrLn("Your name is: " ++ s)
