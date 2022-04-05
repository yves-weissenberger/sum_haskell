module Main where

subset start end lst = take len (drop start lst)
    where len = end - start + 1

main = do

    print (subset 5 10 [0 .. 50])
