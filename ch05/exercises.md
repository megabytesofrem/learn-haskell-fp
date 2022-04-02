Exercises: Type Matching
=====
* a) not = `_ :: Bool -> Bool`
* b) length = `_ :: [a] -> Int`
* c) concat = `_ :: [[a]] -> [a]`
* d) head = `_ :: [a] -> a`
* e) (<) = `_ :: Ord a => a -> a -> Bool`

Exercises: Type Arguments
===
1. `Char -> Char -> Char`
2. `Char`
3. `Num b => b`
4. `Num b => b`
5. `[Char]`
6. `Eq b => b -> [Char]`
7. `(Ord a, Num a) => a`
8. `(Ord a, Num a) => a`
9. `Integer`

Exercises: Apply Yourself
====
1.
```hs
-- Type signature of general function
(++) :: [a] -> [a] -> [a]

-- How might that change when we apply
-- it to the following value?
myConcat x = x ++ " yo"
```
A: `(++) :: [Char] -> [Char] -> [Char]`

2. 
```hs
-- General function
(*) :: Num a => a -> a -> a
-- Applied to a value
myMult x = (x / 3) * 5
```
A: `(*) :: Fractional a => a -> a -> a`

3.
```hs
take :: Int -> [a] -> [a]
myTake x = take x "hey you"
```
A: `take :: Int -> [Char] -> [Char]`

4. 
```hs
(>) :: Ord a => a -> a -> Bool
myCom x = x > (length [1..10])
```
A: `(>) :: Int -> Int -> Bool`

5.
```hs
(<) :: Ord a => a -> a -> Bool
myAlph x = x < 'z'
```
A: `(<) :: Char -> Char -> Bool`

Chapter Exercises
====
Multiple choice:
1. A value of type `[a]` is
A: a list whose elements are all of some type `a`

2. A A function of type `[[a]] -> [a]` could
A: take a list of strings as an argument

3. A function of type `[a] -> Int -> a`
A: returns one element of type a from a list

4. A function of type `(a, b) -> a`
A: takes a tuple argument and returns the first value

Determine The Type
====
1.  a) `Num a => a`
    b) `Num a => (a, [Char])`
    c) `(Integer, [Char])`
    d) `Bool`
    e) `Int`
    f) `Bool`

2. Given 
```hs
x = 5
y = x + 5
w = y * 10
```
What is the type of w?
A: `Num a => a`

3. Given
```hs
x = 5
y = x + 5
z y = y * 10
```
What is the type of z?
A: `Num a => a -> a`

4. Given
```hs
x = 5
y = x + 5
f = 4 / y
```
What is the type of f?
A: `Fractional a => a`

5. Given
```hs
x = "Julie"
y = " <3 "
z = "Haskell"
f = x ++ y ++ z
```
What is the type of f?
A: `[Char]`

Does it compile?
====
1. 
```hs
bigNum = (^) 5 $ 10
wahoo = bigNum $ 10
```
A: no it doesnt compile (the `$ 10` is invalid), and removing it fixes it

2. 
```hs
x = print
y = print "woohoo!"
z = x "hello world"
```
A: yes it does compile

3. 
```hs
a = (+)
b = 5
c = b 10
d = c 200
```
A: no it doesnt compile since `b` is not callable as a function, changing `c` to `c = a b 10` fixes it 
however

4. 
```hs
a = 12 + b
b = 10000 * c
```
A: yes it does compile