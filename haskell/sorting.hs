import Data.List
import Data.Ord

type Horse = (String, Int)
sortHorseList :: [Horse] -> [Horse]
sortHorseList = sortOn snd



main :: IO ()
main = let xs = [("Thunder",125),("Lightning",115),("Bolt",135)] in do
    print (sortHorseList xs)