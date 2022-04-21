module Main where
import Data.Semigroup 

type R = Double 
type G = Double 
type B = Double 
data Color = Color R G B deriving (Show)

tuplify :: [a] -> (a,a,a)
tuplify [x,y,z] = (x,y,z)
tuplify _ = error "Only length 3 tuples allowed"

mixColors :: Color -> Color -> Color
mixColors (Color xr xg xb) (Color yr yg yb) = Color ((xr + yr) / 2) 
                                                    ((xg + yg) / 2)
                                                    ((xb + yb) / 2)
                                                    
instance Semigroup Color where
    (<>) x y = mixColors x y
myAny :: (a -> Bool) -> [a] -> Bool
myAny f = (foldl (||)  False) . map f 

instance Semigroup Integer where
    (<>) x y = x + y

main = do

    let mylist = [1,2,3]
    let y = myAny (\x-> (x>5))
    print(y mylist)

    let c1 = Color 1 1 1
    let c2 = Color 255 255 255

    print c1
    print (c1 <> c2)


    print (512312 `elem` [1..])