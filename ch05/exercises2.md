Type variable or specific type constructor?
=====
1. 
```hs
f :: Num a => a -> b -> Int -> Int
--            [0] [1]   [2]    [3]
```
A: constrained polymorphic (Num) ([0]), fully polymorphic ([1]), and concrete ([2] and [3]).

2. 
```hs
f :: zed -> Zed -> Blah
--   [0]    [1]     [2]
```
A: fully polymorphic ([0]), concrete ([1] and [2])

3. 
```hs
f :: Enum b => a -> b -> C
--   [0]      [1]  [2]  [3]
```
A: constrained polymorphic (Enum) ([0]), fully polymorphic ([1] and [2]), and concrete ([3])

4. 
```hs
f :: f -> g -> C
--  [0]  [1]  [2]
```
A: fully polymorphic ([0] and [1]), concrete type ([2])

Given a type, write the function
====
Only one version will typecheck

1. 
```hs
i :: a -> a 
i a = a
```

2. 
```hs
c :: a -> b -> a
c a b = a
```

3. 
```hs
{- Given alpha equivalence are c'' and c (see above) the same thing? -}

c'' :: b -> a -> b
c'' = c -- they are the same
```

4. 
```hs
c' :: a -> b -> b
c' a b = b
```

5. 
```hs
r :: [a] -> [a]
r as = as
```

6. 
```hs
co :: (b -> c) -> (a -> b) -> a -> c
co bc ab a = bc (ab a)
```

7. 
```hs
a :: (a -> c) -> a -> a
a ac a = a
```

8. 
```hs
a' :: (a -> b) -> a -> b
a' ab a = ab a
```