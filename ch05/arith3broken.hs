module Arith3Broken where

main :: IO ()
main = do
  print . show $ 1 + 2 -- was print 1 + 2
  print 10 -- was putStrLn
  print (negate 1) -- was -1
  print ((+) 0 blah)
  where
    blah = negate 1