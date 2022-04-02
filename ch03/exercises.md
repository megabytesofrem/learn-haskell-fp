Exercises: Scope
===
1. yes, `y` is in scope for `z`
> Prelude> let x = 5
> Prelude> let y = 7
> Prelude> let z = x * y

2. no, because `h` is not defined anywhere
> Prelude> let f = 3
> Prelude> let g = 6 * f + h

3. no, because `d` is not defined anywhere
```hs
area d = pi * (r * r)
r = d / 2
```

4. yes, because `d` is defined in the function as a parameter and `r` is defined in the `where`
```hs
area d = pi * (r * r)
  where r = d / 2
```

Syntax Errors
===
1. `(++) [1, 2, 3] [4, 5, 6]`
2. `"<3" ++ " Haskell"`
3. `concat ["<3", " Haskell"]`

Chapter Exercises
====

Reading Syntax
----
1. 
    a) yes, it is written correctly
    b) no, the `++` need to be in brackets since they're used as a prefix function
    c) yes, it is written correctly
    d) no, there is a `"` missing before the closing bracket
    e) no, it is supposed to be `"hello" !! 4`
    f) yes, it is written correctly
    g) no, the `4` should not be part of the string
    h) yes, it is written correctly

2.  a) `[6,12,18]`
    b) `rainbow`
    c) `10`
    d) `Jules`
    e) `[2,3,5,6,8,9]`


Building Functions
-----
1.  a) `"Curry is awesome" ++ "!"`
    b) `"Curry is awesome!" !! 4`
    c) `drop 9 "Curry is awesome!"`
