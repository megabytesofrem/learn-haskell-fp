module Fibonacci where

fib :: Integral a => a -> a
fib 0 = 0
fib 1 = 1

-- add (x - 1) to the result of calling fib with (x - 2)
fib x = fib (x - 1) + fib (x - 2)