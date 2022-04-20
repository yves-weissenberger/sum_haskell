module Main where

main = do
    let x = 5
    let y = 2

    let sumSquareSquareSum a b = (\sumSquare squareSum ->
                           if sumSquare>squareSum
                           then "sumSquare"
                           else "SquareSum") (a^2 + b^2) ((a+b)^2)
    print (sumSquareSquareSum 5 5)
    print (sumSquareSquareSum (-1) 1)


    let doubledouble a = (\x -> 2*x) 2*a
    print (doubledouble 12)