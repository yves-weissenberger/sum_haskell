module Main where

myLast xs = head (reverse xs)

myLast2 [] = error "can't run on empty list"
myLast2 [x] = x
myLast2 (_:xs) = myLast2 xs


elementAt :: [a] -> Int -> a

elementAt [] _ = error "Must provide a valid list"
-- element_at 
elementAt (x:xs) pos = if pos==0
                        then x
                        else elementAt xs (pos-1)

myLength :: [a] -> Int
myLength [] = 0
myLength [x] = 1
myLength (x:xs) = 1 + myLength xs


myReverse :: [a] -> [a]
myReverse [] = []
myReverse [x] = [x]
myReverse (x:xs) = myReverse xs ++ [x]


main :: IO ()


isPrime :: Int -> Bool
isPrime 1 = True
isPrime 0 = False
isPrime i =  not (or  (map (\x -> (i `rem` x) == 0) [2..(i-1)]))


compress :: Eq a => [a] -> [a]
compress [] = []
compress [x] = [x]
compress (x:xs) = if x == head xs
                  then x : compress (tail xs)
                  else x : compress xs


dupli :: [a] -> [a]
dupli [] = []
dupli [x] = [x,x]
dupli (x:xs) = [x,x] ++ dupli xs




npeat x n = if n/=0
            then x : npeat x (n-1)
            else []


repli [] _ = []
repli (x:xs) n = npeat x n ++ repli xs n

rp [] _ = []
rp (x:xs) n = [x | _ <- [1..n]] ++ rp xs n


isPalindrome :: Eq a => [a] -> Bool
isPalindrome [x] = True
isPalindrome [] = True
isPalindrome x = and checked
                    where checked = [x!!i ==  x !! (length x - (i+1)) | i <- [0..n]]
                            where n = length x `div` 2

main = do

    print (myLast [1,2,3])
    let x = ["a", "b", "c"]
    print (myLast2 x)


    print (elementAt x 0)

    print (x !! 2)

    print (myLength x)
    print (myReverse x)
    print (isPrime 1193)
    print (compress "aabcddeffghijk")
    print (repli [1..5] 3)
    print (rp [1..5] 2)
    print (isPalindrome "aba")
    print (isPalindrome "aa")
    print (isPalindrome "abc")