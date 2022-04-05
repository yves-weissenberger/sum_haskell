module Main where
import Data.List
sortByName name1 name2 = if lastName1 > lastName2
                         then GT 
                         else if lastName1 < lastName2
                         then LT
                         else 
                             if (fst name1) > (fst name2)
                             then GT
                             else if (fst name1) < (fst name2)
                             then LT
                             else EQ
                    where lastName1 = snd name1
                          lastName2 = snd name2

main  = do
    let names = [("Ian", "Curtis"),
                 ("Bernard","Sumner"),
                 ("Peter", "Hook"),
                 ("Stephen","Morris"),
                 ("Albert","Sumner")
                  ]
    print (sortBy sortByName names)
