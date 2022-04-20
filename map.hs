module Main where
import Data.Binary.Get (isEmpty)
import System.Posix.Internals (puts)

mmap f [] = []
mmap f (x:xs) = f x : mmap f xs

mreduce f (x:xs) = f x + mreduce f xs
mreduce f [] = error "Can't call head on an empty list, dummy!"  


timestwo x = 2*x


isEmpty2 [] = True
isEmpty2 _ = False 

printlist [] = print "Done"

printlist (x:xs) = if isEmpty2 xs
                   then print x
                   else do
                       print x
                       printlist xs


main = do
    let res = map timestwo [1..10]
    print "After doubling list elements are"
    printlist res
    let myemptylist = []
    print "Their sum is"
    print (mreduce (\x->x) res)

    print (mreduce myemptylist)
