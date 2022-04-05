module Main where


inFirstHalf num lst = elem num (take ((length lst) `div` 2) lst)

main = do

    let mylist = [1 .. 100]
    print (inFirstHalf 100 mylist)
    print (inFirstHalf 51 mylist)
    print (inFirstHalf 50 mylist)
    print (inFirstHalf 10 mylist)
