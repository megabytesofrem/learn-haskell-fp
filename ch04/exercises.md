Exercises: Mood Swing
====
```hs
data Mood = Blah | Woot deriving Show
```

1. Mood
2. `Blah` or `Woot`
3. The function returns a specific data constructor, when it should return the type constructor `Mood` instead

Exercises: Find the Mistakes
====
1. `not True && true`, second `True` is lowercase
2. `not (x = 6)`, used `=` instead of `==`
3. `(1 * 2) > 5`, works fine
4. `[Merry] > [Happy]`, strings were not quoted
5. `[1, 2, 3] ++ "look at me!"`, `[1, 2, 3]` should be characters not integers

Chapter Exercises
====
```hs
awesome = ["Papuchon", "curry", ":)"]
also = ["Quake", "The Simons"]
allAwesome = [awesome, also]
```

1. `length :: [a] -> Integer`
2. 
    a) 5
    b) 3
    c) 2
    d) 5
3. The second one fails since `length` has type `length :: Foldable t => t a -> Int` and `/` only works on `Fractional` values
4. Using \`div\` fixes it since it allows integer division
5. `True`
6. `False`
7. 
    a) True
    b) 4
    c) 5
    d) False
    e) doesnt work, gives an error

Match function names to types
=====
1. `Show a => a -> String`
2. `Eq a => a -> a -> Bool`
3. `(a, b) -> a`
4. `(+) :: Num a => a -> a -> a`