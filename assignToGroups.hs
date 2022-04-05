module Main where

import System.Directory 


main = do
    files <- getDirectoryContents "."
    let groups = cycle [1 .. 10]
    let dispatch = zip files groups
    print dispatch