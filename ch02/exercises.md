Comprehension Check
===
1. `let half x = x / 2`
   `let square x = x * x`

Exercises: Parentheses and Association
====
1. a) 8 + 7 * 9
   b) (8 + 7) * 9
A: yes, the parentheses force 8 + 7 to be evaluated first
2. a) `perimeter x y = (x * 2) + (y * 2)`
   b) `perimeter x y = x * 2 + y * 2`
A: no nothing changes
3. a) `f x = x / 2 + 9`
   b) `f x = x / (2 + 9)`
A: yes, the parentheses force 2 + 9 to be evaluated first

Exercises: A Head Code
====
1. `let x = 5 in x` = 5
2. `let x = 5 in x * x` = 25
3. `let x = 5; y = 6 in x * y` = 30
4. `let x = 3; y = 1000 in x + 3` = 6, y is never used

Chapter Exercises
====
1. `2 + (2 * 3) - 1`
2. `((^) 10) $ 1 + 1` *or* `(^) 10 $ (1 + 1)`
3. `(2 ^ 2) * (4 ^ 5) + 1`

Equivalent Expressions
---
1. `1 + 1` and `2` are the same
2. `10 ^ 2` and `10 + 9 * 10` are the same
4. `400 - 37` and `(-) 37 400` are not the same because `37 - 400`
5. `2 * 5 + 18` and `2 * (5 + 8)` are not the same because the `()` force `5+8` to be evaluated first