module Functions where

-- Curry is awesome!
shout :: String -> String
shout s = s ++ "!"

fifthLetter :: String -> Char
fifthLetter s = s !! 4

dropChars :: String -> String
dropChars s = drop 9 s

thirdLetter :: String -> Char
thirdLetter s = s !! 2

letterIndex :: Int -> Char
letterIndex x = "Curry is awesome!" !! x