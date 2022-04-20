module Main where

import Data.List

-- lets implement map

isEmpty x = x==[] 
mymap f (x:xs) = if (null xs)
                then []
                else 
                f x : (mymap f xs)

-- mymap f (x:xs) = if null xs then [] else f x : (mymap f xs)
                       
mylength (x:xs) = 1 + mylength xs
mylength [] = 0

mytake xs n = (head xs) : (mytake (tail xs) (n-1))
mytake xs 0 = []

myfilter :: (a->Bool) -> [a] -> [a]
myfilter f (x:xs) = if f x
                    then x : myfilter f xs
                    else myfilter f xs
myfilter f [] = []

timestwo x = 2*x
main :: IO ()
main = do
    let x = [1,2,3,4]
    print (mymap timestwo x)


    print (filter (\x -> x>2) x)
