module Main where


prediction beta x = [ slope * xi + bias  | xi <- x]
                    where slope = head beta
                          bias = beta !! 1

err target pred = [(x-y)^2| (x,y) <- zip target pred]

totErr target pred = sum [(x-y)^2| (x,y) <- zip target pred]


grad :: [Double] -> [Double] -> [Double] -> Double
grad beta x y =   normC * sum [2*xi * (yi - (xi*slope + bias)) | (xi,yi) <- zip x y]
                    where slope = beta !! 0
                          bias = beta !! 1
                          normC = (1/ fromIntegral (length x))

optimizer :: [Double] -> [Double] -> [Double] -> Int -> [Double]
optimizer beta x y iterN = if ( (totErr y (prediction beta x))<0.0001 || (iterN>2000))
                     then beta
                     else optimizer upDbeta x y (iterN + 1)
                        where upDbeta = [beta !! 0 + 0.01*(grad beta x y), beta !! 1]
main = do
    let x = [ fromIntegral i / 100 | i<- [1..100] ]

    let y = [2*xi + 5 | xi <- x]
    let beta = [0.1,5]
    print( totErr (prediction beta x) y)
    print( "grad:", grad beta x y)
    let final_beta = optimizer beta x y 0
    print final_beta
    print( totErr (prediction final_beta x) y)
