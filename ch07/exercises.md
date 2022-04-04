Exercises: Grab Bag
======
1. Which are equivalent?

- a) `mTh x y z = x * y * z`
- b) `mTh x y = \z -> x * y * z`
- c) `mTh x = \y -> \z -> x * y * z`
- d) `mTh = \x -> \y -> \z -> x * y * z`

A: They are all equivalent

2. The type of mTh (above) is `Num a => a -> a -> a -> a`. Which is the type of mTh 3?

- a) `Integer -> Integer -> Integer`
- b) `Num a => a -> a -> a -> a`
- c) `Num a => a -> a`
- d) `Num a => a -> a -> a`

A: `Num a => a -> a -> a`

Lambda Practice
----
```hs
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
```

Exercises: Variety Pack
=====
1. Given the following declarations
```hs
k (x, y) = x
k1 = k ((4-1), 10)
k2 = k ("three", (1 + 2))
k3 = k (3, True)
```
a) What is the type of k?
`k :: (a, b) -> a`

b) What is the type of k2? Is it the same type as k1 or k3?
`k2 :: String`
`k1 :: Num a => a`
`k3 :: Num a => a`

c) Of k1, k2, k3, which will return 3 as a result?
`k1` and `k3`

2. Fill in the definition of the following function
```hs
-- Remember: Tuples have the same syntax for their
-- type constructors and their data constructors.
f :: (a, b, c)
  -> (d, e, f)
  -> ((a, d), (c, f))
f (a, b, c) (d, e, f) = ((a, d), (c, f))
```

Exercises: Case Practice
======
1. The following should return x when x is greater than y.
```hs
functionC x y = 
  case x > y of
    True -> x
    False -> y
```

2. The following will add 2 to even numbers and otherwise simply return the input value.
```hs
ifEvenAdd2 n = 
  case even n of
    True -> n + 2
    False -> n
```

3. The following compares a value, x, to zero and returns an indicator for whether x is a postive number or negative number. But what if x is 0? You may need to play with the compare function a bit to find what to do.
```hs
nums x =
  case compare x 0 of
    EQ -> 0
    LT -> -1
    GT -> 1
```