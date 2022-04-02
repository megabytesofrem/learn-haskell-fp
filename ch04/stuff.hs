module Stuff where

isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = reverse x == x

myAbs :: Integer -> Integer
myAbs x =
  if x >= 0
    then x
    else - x

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f ab cd = ((snd ab, snd cd), (fst ab, fst cd))