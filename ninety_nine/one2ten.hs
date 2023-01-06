main :: IO ()
main = let xs = [1,2,3,4,5] in do
    print (lastEl xs )
    print (secondLastEl xs)
    print (elementAt xs 7)
    print (customLength xs)
    print (reverseList xs)
    print (isPalindrome xs) >> print (isPalindrome (xs ++ reverse xs))



-- last element of a list:
lastEl :: [a] -> a
lastEl [] = undefined
lastEl [x] = x
lastEl (x:xs) = lastEl xs


-- seccond-last element:
secondLastEl :: [a] -> a
secondLastEl xs
    | length xs > 1 = let len = length xs - 2 in xs !! len
    | otherwise = undefined


-- elementAt with list wrap-around
elementAt :: [a] -> Int -> a
elementAt xs i
    | length xs < i = elementAt xs (i - length xs)
    | otherwise = xs !! (i-1)


-- length of list
customLength :: [a] -> Int
customLength [] = 0
customLength [x] = 1
customLength (x:xs) = 1 + customLength xs

-- reverses a list
reverseList::[a] -> [a]
reverseList = foldl (flip (:)) []

-- 
isPalindrome :: (Eq e) => [e] -> Bool
isPalindrome [] = True
isPalindrome [x] = True
isPalindrome xs = let revList = reverseList xs in head revList == head xs && isPalindrome (mid xs)

mid :: [a] -> [a]
mid (x:xs) = tail $ reverseList xs
mid [] = []

-- Flatten recursively-nested lists
data NestedList a = Elem a | List [NestedList a]

flatten :: (NestedList l) => [l] -> [a]
flatten (x:xs) = 