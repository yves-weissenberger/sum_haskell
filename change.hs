module Main where


calcChange given owed = if change > 0
                        then change
                        else 0
    where change = given - owed

main = do

    print "How much money have you given?"
    given  <- getLine 
    print "How much did you owe?"
    owed  <- getLine


    print("Your change is: " ++ show (calcChange (read given :: Int)  (read owed:: Int) )  ++ "$")
