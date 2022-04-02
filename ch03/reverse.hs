module Reverse where

rvrs :: String -> String
-- Curry is awesome
rvrs x = firstPart ++ " " ++ middlePart ++ " " ++ lastPart
  where
    firstPart = drop 9 x
    middlePart = take 2 . drop 6 $ x
    lastPart = take 5 x