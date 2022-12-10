main = print (fac 3)

fac :: (Integral a) => a -> a
fac 0 = 1
fac x = x * fac (x-1)

-- With guard instead:
{-
fac x 
    | x <= 1    = 1
    | otherwise = x * fac (x-1)
-}
