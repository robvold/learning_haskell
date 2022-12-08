
import Data.List


sum_guards :: [Int] -> Int
sum_guards list
    | list == []    = 0
    | otherwise     = let 
                        x = head list
                        xs = tail list
                      in 
                        x + sum_guards xs
                        

sum_pattern_matching :: [Int] -> Int
sum_pattern_matching []     = 0
sum_pattern_matching (x:xs) = x + sum_pattern_matching xs

main :: IO()
main = do 
    print (sum_pattern_matching [1, 2, 3, 4])
    print (sum_guards [1, 2, 3, 4])

-- elem :: (Eq a) => a -> [a] -> Bool