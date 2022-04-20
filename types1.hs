module Main where

halve :: Int -> Double
halve x = (fromIntegral x) /2

myhalve :: Int -> [Char] 
myhalve x = show (x `div` 2) 


combineAddress :: Int -> [Char] -> [Char] -> (String, String, String)
combineAddress houseNr street town = (show houseNr , street , town)

-- Lets rewrite combine address as nested lambda functions
cbA :: Int -> String -> String -> (Int, String, String)
cbA = \house -> (\street -> (\town -> (house, street, town)))

-- This is sort of like template programming, where we define variables
-- for types
makeTuple :: a -> b -> c -> (a, b, c)
makeTuple a b c = (a, b, c)

lmakeTuple :: a -> b -> c -> (a, b, c)
lmakeTuple = (\a -> (\b -> (\c -> (a,b,c))))
main = do 
    let x = 5

    print (halve x)
    print (myhalve 5)
    print (combineAddress 12 "housing Street" "Westham")
    print ( ((cbA 12) "House") "Paris" )

    let tmp = cbA 42
    print (tmp "Gloucester Road" "Paris")

    let addMe y = x + y 
    print (addMe 12)

    putStrLn "Make a tuple"
    print (lmakeTuple 5 5 5)