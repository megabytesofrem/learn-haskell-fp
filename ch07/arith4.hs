module Arith4 where

roundTrip :: (Show a, Read b) => a -> b
roundTrip a = read (show a)

main = do
    print ((roundTrip 4) :: Int) -- need (() :: Int) since its not known which instance of Show to use
    print (id 4)

-- 5) Next, write a pointfree version of roundTrip. (n.b., This refers to
-- the function definition, not to its application in main.)

roundTripPF :: (Show a, Read a) => a -> a
roundTripPF = read . show