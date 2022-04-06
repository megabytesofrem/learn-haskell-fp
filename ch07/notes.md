First Class
===
* Functions are first class which means they can be used anywhere values can be used

Lexical Scoping
-----
```hs
bindExp :: Integer -> String
bindExp x =
let x = 10; y = 5 in
    "the integer was: " ++ show x
    ++ " and y was: " ++ show y
```

Lexical scoping means that the `x` passed as a parameter gets shadowed by the `x`
defined inside the scope of the `let` block.

Anonymous Functions/Lambdas
----
```hs
(\x -> x * 3) 5
```

* This defines an anonymous function which takes a single parameter `x`
* We don't give it a name, since its anonymous so we need to apply it to a value to use it


Pattern Matching
====
```hs
isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False -- _ means all else, we could also capture it with a name
```

* If we forget to handle a case, GHC will complainb and say we have a non-exhaustive pattern - this is because we reached Bottom

Pattern matching against data constructors
----
```hs
-- registeredUser1.hs
module RegisteredUser where

newtype Username =
  Username String
newtype AccountNumber =
  AccountNumber Integer

data User =
  UnregisteredUser
| RegisteredUser Username AccountNumber
```

* We can write a function to pattern match on the data constructors for it:

```hs
printUser :: User -> IO ()
printUser UnregisteredUser =
  putStrLn "UnregisteredUser"

printUser (RegisteredUser
            (Username name)
            (AccountNumber acctNum)) =
putStrLn $ name ++ " " ++ show acctNum
```

Pattern matching tuples
-----
```hs
f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f (a, b) (c, d) = ((b, d), (a, c))
```

Case Expressions
====
```hs
pal xs =
  case xs == reverse xs of
      True -> "yes"
      False -> "no"
```

Higher-order Functions
====
Higher-order functions are functions that accept other functions as arguments.
* Functions are just values so why couldn't we pass them around?

`flip` is a higher order function that flips the order of arguments
```hs
flip :: (a -> b -> c) -> b -> a -> c
flip f x y = f y x
```

Guards
======
Writing guard blocks
----
```hs
myAbs :: Integer -> Integer
myAbs x 
    | x < 0     = (-x)
    | otherwise = x


bloodNa :: Integer -> String
bloodNa x 
    | x < 135 = "too low"
    | x > 145 = "too high"
    | otherwise = "just right"
```

* Each guard has its own `=` sign, which is the value to return from the guard
* `otherwise` is the fallback pattern, it matches anything else 

Function Composition
====
```hs
(.) :: (b -> c) -> (a -> b) -> a -> c
```
1. Given a function from b to c
2. Given a function from a to c
3. Return a function a to c

* `(f . g) x = f (g x)`
* `$` is used when composing to delay function application until we have composed them

`Prelude > take 5 . reverse $ [1..10]`
`[10,9,8,7,6]`

Pointfree Style
====
Pointfree style is a style of composing functions without explicitly specifying their
arguments. 

```hs
let pointfull x = (negate . sum) x
let pointfree = negate . sum
```