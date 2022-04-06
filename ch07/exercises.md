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

Exercises: Artful Dodgy
=====
```hs
-- Types not provided,
-- try filling them in yourself.

dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10

oneIsOne :: Num a => a -> a
oneIsOne = dodgy 1

oneIsTwo :: Num c => c -> c
oneIsTwo = (flip dodgy) 2
```

Exercises: Guard Duty
=====
```hs
avgGrade :: (Fractional a, Ord a)
         => a -> Char
avgGrade x
  | otherwise = 'F'
  | y >= 0.9 = 'A'
  | y >= 0.8 = 'B'
  | y >= 0.7 = 'C'
  | y >= 0.59 = 'D'
  | y < 0.59 = 'F'
  where
    y = x / 100
```

1. If we put an `otherwise` in the top most guard, it will ignore the other guards
2. No, reordering the guards causes the order which the patterns are matched to differ
3. The following function returns:
```hs
pal xs
    | xs == reverse xs = True
    | otherwise = False
```
* A: True when xs is a palindrome
4. A list of strings, integers or any `a` that has an instance of `Eq`
5. `pal :: Eq a => [a] -> Bool`
6. The following function returns:
```hs
numbers x
  | x < 0 = -1
  | x == 0 = 0
  | x > 0 = 1
 ```
* A: An indication of whether its argument is a positive or nega-
tive number or zero
7. Numbers can take an integer or `Num` class that has an instance of `Eq`
8. `numbers :: (Ord a, Num a, Num p) => a -> p`

Chapter Exercises
=====
Multiple Choice
----
1. A polymorphic function

a) changes things into sheep when invoked
b) has multiple arguments
c) has a concrete type
d) may resolve to values of different types, depending on inputs

A: D

2. Two functions named f and g have types `Char -> String` and `String -> [String]` respectively. The composed function g . f has the type of:

a) Char -> String
b) Char -> [String]
c) [[String]]
d) Char -> String -> [String]

A: B

3. A function f has the type `Ord a => a -> a -> Bool` and we apply
it to one numeric value. What is the type now?

a) `Ord a => a -> Bool`
b) `Num -> Num -> Bool`
c) `Ord a => a -> a -> Integer`
d) `(Ord a, Num a) => a -> Bool`

A: D

4. A function with the type `(a -> b) -> c`
a) requires values of three different types
b) is a higher-order function
c) must take a tuple as its first argument
d) has its parameters in alphabetical order

A: B

5. Given the following definition of f, what is the type of `f True`?
```hs
f :: a -> a
f x = x
```
a) `f True :: Bool`
b) `f True :: String`
c) `f True :: Bool -> Bool`
d) `f True :: a`

A: A

Let's write code
=====
1. The following function returns the tens digit of an integral argument.
```hs
tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d = xLast `mod` 10
```

a) Rewrite it using `divMod`
```hs
tensDigit' :: Integral a => a -> a
tensDigit' x = d
  where 
      (xLast, _) = x `divMod` 10
      (_, d) = xLast `divMod` 10
```
b) Does the `divMod` version have the same type as the original?
A: Yes, why wouldnt it?

c) Next, let’s change it so that we’re getting the hundreds digit instead
```hs
hunsDigit :: Integral a => a -> a
hunsDigit x = d
  where
      (xLast, _) = x `divMod` 100
      (_, d) = xLast `divMod` 10
```

2. Implement the function of the type a -> a -> Bool -> a once each using a case expression and once with a guard.
```hs
-- case expression
foldBool :: a -> a -> Bool -> a
foldBool x y b = case b of
                    True -> x
                    False -> y

-- guard expression
foldBool' :: a -> a -> Bool -> a
foldBool' x y b
  | b == True = x
  | b == False = y
```

3. Fill in the definition
```hs
g :: (a -> b) -> (a -> c) -> (b, c)
g f (a,c) = (f a, c)
```