module Main where


class Describable a where
    describe :: a -> [Char]

data SixSided = S1 | S2 | S3 | S4 | S5 | S6 deriving (Ord)


-- This is an instance of the typeclass show and is an example of
-- polymorphism (where the same function behaves differently depending)
-- on the type provided in the argumnets
instance Show SixSided where
    show S1 = "one"
    show S2 = "two"
    show S3 = "three"
    show S4 = "four"
    show S5 = "five"
    show S6 = "six"

instance Eq SixSided where
    (==) S1 S1 = True 
    (==) S2 S2 = True 
    (==) S3 S3 = True      
    (==) S4 S4 = True 
    (==) S5 S5 = True 
    (==) S6 S6 = True 
    (==) _ _ = False
main = do
    print S1

    let x = S1
    let y = S5
    print (x==y)