-- print3.hs
module Print3 where

myGreeting :: String
myGreeting = "hello" ++ " world!"

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where
    secondGreeting = concat [hello, " ", world]

-- area d = pi * (r * r)
-- r = d / 2

-- area d = pi * (r * r)
--   where r = d / 2