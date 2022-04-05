module Main where

import Data.List



-- names = [("Ian", "Curtis"),
--          ("Bernard","Sumner"),
--          ("Peter", "Hook"),
--          ("Stephen","Morris")
--          ]

names = [1 .. 100]

main = do
    print "Sorting"

    let x  = sort names
    print x

    print "Done!"

