-- import Data.List

main :: IO()
main = do
  -- print (sum_pattern_matching [1, 2, 3, 4])
  -- print (sum_guards [1, 2, 3, 4])
  -- print (elem_in_list 7 [])
  -- print (rm_dup [2, 2, 3, 2, 3, 1])
  print (isAsc [1, 2, 3, 2])

{-
-- sum elements in list
sum_guards :: [Int] -> Int
sum_guards list
    | list == []    = 0
    | otherwise     = let 
                        x = head list
                        xs = tail list
                      in 
                        x + sum_guards xs
                        
-- sum elements in list
sum_pattern_matching :: [Int] -> Int
sum_pattern_matching []     = 0
sum_pattern_matching (x:xs) = x + sum_pattern_matching xs
-}


-- checks if element is in list
elemInList :: (Eq a) => a -> [a] -> Bool
elemInList a [] = False
elemInList a (x:xs) =
  if a == x then
    True
  else
    elemInList a xs

{-
-- Alternative version:
elemInList _ [] = False
elemInList a (x:xs) = a == x || (elemInList a xs)

-}

-- "removes" duplicates 
rmDup :: (Eq a) => [a] -> [a]
rmDup [] = []
rmDup (x:xs)
  | elemInList x xs = rmDup xs
  | otherwise         = x:rmDup xs


-- checks if elements in a list is given in an ascending order. Ex: [1, 2, 3]
isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) = y >= x && isAsc (y:xs)
-- isAsc (x:xs) = True -- instead of isArc [x] = True
