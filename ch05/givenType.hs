module GivenType where

i :: a -> a 
i a = a

c :: a -> b -> a
c a b = a

{- Given alpha equivalence are c'' and c (see above) the same thing? -}
c'' :: b -> a -> b
c'' = c -- they are the same!

c' :: a -> b -> b
c' a b = b

r :: [a] -> [a]
r as = as

co :: (b -> c) -> (a -> b) -> a -> c
co bc ab a = bc (ab a)

a :: (a -> c) -> a -> a
a ac a = a

a' :: (a -> b) -> a -> b
a' ab a = ab a