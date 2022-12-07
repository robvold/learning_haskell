fac :: (Integral a) => a -> a
fac 0 = 1
fac x = x * fac (x-1)

main = print (fac 3)