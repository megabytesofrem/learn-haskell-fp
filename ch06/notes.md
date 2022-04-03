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