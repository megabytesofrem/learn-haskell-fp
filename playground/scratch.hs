module Scratch where

--- 1
--- 11
--- 111
--- 1111
--- etc

genPattern :: Int -> IO ()
genPattern n = mapM_ (putStrLn . ones 0) [1 .. n]
  where
    ones n acc
      -- generate n many 1s in a sequence
      | acc <= n = []
      | otherwise = '1' : ones n (acc - 1)
