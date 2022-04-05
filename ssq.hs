module Main where

-- This function calls the compr function with two arguments
calc x y = compr (x^2 + y^2) ((x+y)^2)

-- This does the comparison
compr sumSq sqSum = if sumSq > sqSum
                       then "Sum of squares " ++ show sumSq
                       else "Square of sum " ++ show sqSum

main = do

    print (calc 10 (-10) )