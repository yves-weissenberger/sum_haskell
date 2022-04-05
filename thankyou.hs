module Main where


toPart recipient = "Dear " ++ recipient ++ ",\n"
bodyPart title = "Thank you for your purchase of  " ++ title ++ ",\n"
authPart author = "By " ++ author
createEmail recipient title author = toPart recipient ++
                                     bodyPart title ++
                                     authPart author

main = do
    print "Who is this email for? "
    p1 <- getLine 
    print "What book did they buy"
    b1 <- getLine 
    print "Who is the author"
    a1 <- getLine
    print (createEmail p1 b1 a1)

