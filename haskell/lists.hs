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
elem_in_list :: (Eq a) => a -> [a] -> Bool
elem_in_list a [] = False
elem_in_list a (x:xs) = 
  if a == x then
    True
  else 
    elem a xs 

{-
-- Alternative version:
elem_in_list _ [] = False
elem_in_list a (x:xs) = a == x || (elem_in_list a xs)

-}

-- "removes" duplicates 
rm_dup :: (Eq a) => [a] -> [a]
rm_dup [] = []
rm_dup (x:xs) 
  | elem_in_list x xs = rm_dup xs
  | otherwise         = x:(rm_dup xs)


-- checks if elements in a list is given in an ascending order. Ex: [1, 2, 3]
isAsc :: [Int] -> Bool
isAsc [] = True
isAsc [x] = True
isAsc (x:y:xs) = y >= x && isAsc (y:xs) 
-- isAsc (x:xs) = True -- instead of isArc [x] = True
