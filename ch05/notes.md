Function Type
=====
Arrow `(->)` is the type constructor for functions in Haskell.
>`data (->) a b`

- The type constructor has two arguments, one input `a` and one output `b`.
- The function type has no data constructors
- Functions *are* values

- The arrow is an infix operator with two parameters, and associates to the right (although function application is left associative)

>`fst :: (a, b) -> a`
* The function `fst` has the type `(a, b)`
* The function type `(->)` has two parameters: `(a, b)` and the result `a`
* `a` being returned is the same `a` from the tuple, since nothing happens between the input and output

Type Constraints
====
A type signature may have multiple typeclass constraints on it
```hs
(Num a, Num b) => a -> b -> b
-- Both a and b *must* have instances of the Num typeclass

-- or

(Ord a, Num a) => a -> a -> Ordering
-- a *must* have instances of both Ord and Num
```

- Nothing to the left of the typeclass arrow (`=>`) show up at the term level

Currying
====
All functions in Haskell take only one argument and return one result

- Each arrow in a signature represents one argument and one result, with the final type being the final result

Eg:
> add :: Int -> Int -> Int
can be read as
> add :: Int -> (Int -> Int)

Partial Application
----
A function can be partially applied when it is called without all of its arguments

```hs
addStuff :: Integer -> Integer -> Integer
addStuff a b = a + b + 5

-- partially apply
addTen = addStuff 5

-- addTen :: Integer -> Integer
addTen 5
```

Uncurrying
----
Haskell is curried by default but you can uncurry by putting the arguments as a tuple

Sectioning
====
Sectioninng refers to partially applying infix operators and lets you choose if you're a pplying the operator to the first or second argument.

```hs
let celebrate = (++ " woot!")
celebrate "naptime"
```