
main :: IO()
main = do
    -- print (rev [1, 2, 3])
    print (prefixes [1, 2, 3])

-- reverses a list
rev::[a] -> [a]
rev = foldl (\x y -> y:x) []


prefixes::[a] -> [[a]]
prefixes (x:xs) = [x]:prefixes xs
prefixes [] = []