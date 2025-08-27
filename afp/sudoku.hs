module Sudoku where

import Data.List
import Data.List.Split


type Grid = Matrix Value
type Matrix a = [Row a] 
type Row a = [a]
type Value = Char

boxsize :: Int
boxsize = 3

-- Example of an sudoku board:
easy :: Grid
easy = ["2....1.38",
        "........5",
        ".7...6...",
        ".......13",
        ".981..257",
        "31....8..",
        "9..8...2.",
        ".5..69784",
        "4..25...."]


blank :: Grid
blank = replicate 9 $ concat $ replicate 9 "."

-- Checks if stuff is correct

rows :: Matrix a -> [Row a]
rows m = m
-- rows = id -- Possible to use the identity function

cols :: Matrix a -> [Row a]
cols = transpose -- Test: implement your own transpose

-- boxs :: Matrix a -> [Row a]
-- boxs m = map (chunksOf 3) m

test :: Row a -> Row a
test a = chunksOf 3 [1,2,3,4]
