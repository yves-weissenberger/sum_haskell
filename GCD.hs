module Main where
import GHC.Base (VecElem(Int16ElemRep))



getInt = do
    read <$> getLine



main = do
    putStrLn "Give me a number"
    num1 <- getInt
    putStrLn "Give me another number"
    num2 <- getInt

    let myGCD a b = if remainder==0
                    then b
                    else myGCD b remainder
                where remainder = a `mod` b
    print (myGCD num1 num2)
