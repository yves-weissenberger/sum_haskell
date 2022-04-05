module Main where


isEmpty [] = True
isEmpty _ = False

printLst myLst = if isEmpty myLst
                 then myLst
                 else do
                    print (myLst !! 0)
                    printLst (tail myLst)

main = do
    let lst = [1 .. 100]
    printLst lst
    print "DONE"
