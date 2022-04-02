module Parametricity where

--- impossible because the only thing we can do w/ this type signature is return a
impossibleFunc :: a -> a
--impossibleFunc a = 3
impossibleFunc a = a

f :: a -> a -> a 
f x y = x

g :: a -> a -> a
g x y = y

-- this is the only implementation possible
h :: a -> b -> b
h x y = y