Tuple Experiment
====
1. `quotRem` takes two Integral numbers, and returns a tuple of two integral numbers
where the first `a` is the quotient, and the second is the remainder.

2. `divMod` does the same as `quotRem`

Put on your thinking cap
======
A: We didnt need to make `divideThenAdd :: (Fractional a) => a -> a -> a` require both typeclasses since because `Fractional` is a superclass of `Num` by deriving from `Fractional`, we also have access to the functions from the `Num` typeclass.

Exercises: Will They Work?
=====
1. `max (length [1, 2, 3]) (length [8, 9, 10, 11, 12])`
A: yes it works

2. `compare (3 * 4) (3 * 5)` 
A: yes it works

3. `compare "Julie" True`
A: no, it doesnt work since we cant compare String with Bool

4. `(5 + 3) > (3 + 6)`
A: yes it works

Chapter Exercises
=====
Multiple Choice
-----
1. The Eq class
a) includes all types in Haskell
b) is the same as the Ord class
c) makes equality tests possible
d) only includes numeric types

A: C

2. The typeclass Ord
a) allows any two values to be compared
b) is a subclass of Eq
c) is a superclass of Eq
d) has no instance for Bool

A: A and maybe C?

3. Suppose the typeclass Ord has an operator >. What is the type of it?
a) Ord a => a -> a -> Bool
b) Ord a => Int -> Bool
c) Ord a => a -> Char
d) Ord a => Char -> [Char]

A: A

4. In x = divMod 16 12
a) the type of x is Integer
b) the value of x is undecidable
c) the type of x is a tuple
d) x is equal to 12 / 16

A: C

5. The typeclass Integral includes
a) Int and Integer numbers
b) integral, real, and fractional numbers
c) Schrodinger’s cat
d) only positive numbers

A: A

Does it typecheck?
----
1. 
```hs
data Person = Person Bool
printPerson :: Person -> IO ()
printPerson person = putStrLn (show person)
```
A: it does not typecheck since it is not deriving `Show` and there is no explicit implementation of `Show` for `Person`

2. 
```hs
data Mood = Blah 
          | Woot deriving Show
settleDown x = if x == Woot
               then Blah
               else x
```
A: it does not typecheck since nothing provides an `Eq` instance
3. I could not get `settleDown` to typecheck, see above
4. 
```hs
type Subject = String
type Verb = String
type Object = String

data Sentence
  = Sentence Subject Verb Object
  deriving (Eq, Show)

s1 = Sentence "dogs" "drool"

s2 = Sentence "Julie" "loves" "dogs"
```
A: yes, it does typecheck

Which will typecheck?
----
Given the below snippet, which of the following will typecheck?
```hs
data Rocks =
  Rocks String deriving (Eq, Show)
data Yeah =
  Yeah Bool deriving (Eq, Show)
data Papu =
  Papu Rocks Yeah
  deriving (Eq, Show)
```

1. `phew = Papu "chases" True"` 
A: it doesnt typecheck since it is missing the type constructors
2. `truth = Papu (Rocks "chomskydoz") (Yeah True)`
A: this does typecheck
3. 
```hs
equalityForall :: Papu -> Papu -> Bool
equalityForall p p' = p == p'
```
A: this does typecheck
4.
```hs
comparePapus :: Papu -> Papu -> Bool
comparePapus p p' = p > p'
```
A: this doesn't typecheck since `Eq` does not imply `Ord`, but `Ord` *does* imply `Eq`