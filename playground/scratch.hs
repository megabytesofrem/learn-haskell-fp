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

-- 1111
-- 2222
-- 3333

genPattern2 :: Int -> [String]
genPattern2 n = map (concat . (replicate 5 . show)) (loop 1 n 1)
  where
    loop n acc m
        -- m is used as a temporary to just print
        | acc <= n = []
        | otherwise = m : loop n (acc -1) (m + 1)

printPattern2 :: Int -> IO ()
printPattern2 n = mapM_ putStrLn $ genPattern2 n