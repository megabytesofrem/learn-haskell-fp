Chapter Exercises
=======
1. What is the type of `[[True, False], [True, True], [False, True]]`?
a) `Bool`
b) `mostly True`
c) `[a]`
d) `[[Bool]]`

A: D

2. Which of the following has the same type as `[[True, False],
[True, True], [False, True]]`?
a) `[(True, False), (True, True), (False, True)]`
b) `[[3 == 3], [6 > 5], [3 < 4]]`
c) `[3 == 3, 6 > 5, 3 < 4]`
d) `["Bool", "more Bool", "Booly Bool!"]`

A: B

3. For the following function
```hs
func :: [a] -> [a] -> [a]
func x y = x ++ y
```

a) x and y must be of the same type
b) x and y must both be lists
c) if x is a `String` then y must be a `String`
d) all of the above

A: D

4. For the `func` code above, which is a valid application of func to 
both of its arguments?
a) `func "Hello World"`
b) `func "Hello" "World"`
c) `func [1, 2, 3] "a, b, c"`
d) `func ["Hello", "World"]`

A: B

Reviewing currying
======
TODO: fill this in

