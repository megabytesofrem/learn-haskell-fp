module Lambdas where

-- a) Rewrite f using lambdas
addOneIfOdd n = case odd n of
  True -> f n
  False -> n
 where
  f = \n -> n + 1

-- b) Rewrite the following using lambda
addFive = \x y -> (if x > y then y else x) + 5

-- c) Rewrite the following so it doesn't use lambda syntax
mflip f x y = f y x