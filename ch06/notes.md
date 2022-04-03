Typeclasses
====
Typeclasses are similar to interfaces from Java, or traits from Rust.

* Typeclass inheritance is only **additive**

Eq
----
Equality is implemented with the typeclass `Eq`. Eq is defined like
```hs
class Eq a where
    (==) :: a -> a -> Bool
    (/=) :: a -> a -> Bool
```

Instances of `Eq` are defined for
* Int
* Float
* Double
* Char
* String
* Bool
* Tuples
etc

Polymorphic Datatypes
----
```hs
data Identity a =
  Identity a

instance Eq a => (Identity a) where
  (==) (Identity v) (Identity v') = v == v'
```

We need the `Eq a =>` when working with polymorphic datatypes since there is no way to assume that `a` has an `Eq` instance derived by default. 

Num
-----
```hs
class Num a where
  (+) :: a -> a -> a
  (*) :: a -> a -> a
  (-) :: a -> a -> a
  negate :: a -> a
  abs :: a -> a
  signum :: a -> a
  fromInteger :: Integer -> a
```

And some of its instances:
```hs
instance Num Integer
instance Num Int
instance Num Float
instance Num Double
```

Fractional
---
Num is a superclass of Fractional. The typeclass requires its argument `a` to also have
a valid instance of `Num`

```hs
class (Num a) => Fractional a where
  (/) :: a -> a -> a
  recip :: a -> a
  fromRational :: Rational -> a
```

Ord
====
```hs
class Eq a => Ord a where
  compare :: a -> a -> Ordering
  (<) :: a -> a -> Bool
  (>=) :: a -> a -> Bool
  (>) :: a -> a -> Bool
  (<=) :: a -> a -> Bool
  max :: a -> a -> a
  min :: a -> a -> a
```
* `min` and `max` can be used to get the minimum and maximum of any specific value
* `class Eq a => Ord a` means `Ord` implies `Eq`


Deriving
----
When you derive an instance, Haskell tries to auto-generate a instance based on
the way the datatype is defined but if you write your own instance - you can specify your own behavior.

Writing an Ord instance
----
```hs
data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun
  deriving (Eq, Show)

-- implement Ord ourself to make Fri always greater
instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT
  compare _   Fri = LT
  compare _  _    = EQ
```

Enum
====
Enum covers types that are enumerable.

* `succ` returns the successor
* `pred` returns the predecessor
* `enumFromTo` returns a list from start to finish
* `enumFromThenTwo` is the same but takes a step and increments by that step each time

Show
=====
Show is a typeclass that provides the creation of human-readable representations of
data structures as a string.

Show has instances defined for most core types
```hs
instance Show a => Show [a]
instance Show Ordering
instance Show a => Show (Maybe a)
instance Show Integer
instance Show Int
instance Show Char
instance Show Bool
instance Show ()
instance Show Float
instance Show Double
```

We can define our own instance of `Show`:
```hs
data Mood = Blah

instance Show Mood where
  show _ = "Blah"
```