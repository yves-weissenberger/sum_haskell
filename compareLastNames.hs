module Main where
import Data.List
sortByName name1 name2 = if (compr /= EQ)
                         then compr 
                         else 
                         (compare (fst name1) (fst name2))

                    where compr = (compare lastName1  lastName2)
                          lastName1 = snd name1
                          lastName2 = snd name2

main  = do
    let names = [("Ian", "Curtis"),
                 ("Bernard","Sumner"),
                 ("Peter", "Hook"),
                 ("Stephen","Morris"),
                 ("Albert","Sumner")
                  ]
    print (sortBy sortByName names)
