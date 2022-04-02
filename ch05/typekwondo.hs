module Typekwondo where
import Control.Arrow ((>>>))

f :: Int -> String
f = undefined
g :: String -> Char
g = undefined


-- 1.
-- need to get from int -> char
h :: Int -> Char
h = g . f

--  2.
data A
data B
data C

q :: A -> B
q = undefined
w :: B -> C
w = undefined

-- need to get from A -> C
e :: A -> C
e = w . q

-- 3. 
data X
data Y
data Z
xz :: X -> Z
xz = undefined
yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform (x,y) = (xz x, yz y)

-- 4.
munge :: (x -> y) -- x to y
    -> (y -> (w, z)) -- y -> (w,z)
    -> x -- x
    -> w
munge fxy fwz x = fwz >>> fst $ fxy x