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