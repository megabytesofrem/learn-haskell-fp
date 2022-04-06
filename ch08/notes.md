Factorial!
======
```
4! = 4 * 3 * 2 * 1
        12 * 2 * 1
            24 * 1
                24
4! = 24
```

```hs
-- This won't work. It never stops.
brokenFact1 :: Integer -> Integer
brokenFact1 n = n * brokenFact1 (n - 1)
```

* The above code is broken and wont work because there is no *base case* so the
recursive calls never stop.

```hs
factorial :: Integer -> Integer
factorial 0 = 1
factorial n = n * factorial (n - 1)
```

* This code works, since we added a base case `factorial 0 = 1`
```hs
-- Changes to
-- n = n * factorial (n - 1)

factorial 4 = 4 * factorial (4 - 1)
-- evaluate (-) applied to 4 and 1
4 * factorial 3
-- evaluate factorial applied to 3
-- expands to 3 * factorial (3 - 1)
4 * 3 * factorial (3 - 1)

-- beta reduce (-) applied to 3 and 1
4 * 3 * factorial 2
-- evaluate factorial applied to 2
4 * 3 * 2 * factorial (2 - 1)
-- evaluate (-) applied to 2 and 1
4 * 3 * 2 * factorial 1
-- evaluate factorial applied to 1
4 * 3 * 2 * 1 * factorial (1 - 1)

-- evaluate (-) applied to 1 and 1
-- we know factorial 0 = 1
-- so we evaluate that to 1

4 * 3 * 2 * 1 * 1

-- And when we evaluate
-- our multiplications
24
```

This is how we can break it down and see whats happening step by step,
we recursively calculate `n * factorial (n - 1)`, until we reach a base case of `0` in which case we return `1` and break out of the recursive loop.

Another way to look at recursion
============================
In the last chapter we looked at higher order function composition. 

* Function composition is a way of tying multiple functions together in a way such that the first function gets passed to the next function as an argument.

* This is the same thing recursive functions are doing, the first result gets passed back to the same function until it reaches a base case

* Recursion is *self referential* composition

```hs
(.)     :: (b -> c) -> (a -> b) -> a -> c
(.) f g =  \x -> f (g x)
```

While we give function composition a special name and operator it's only a way of saying;
* Given two functions, *f* and *g* as arguments to `(.)`
* When we get an argument *x* apply *g* to *x*,
* Then apply *f* to the result of *(g x)*
* To rephrase, in code: `(.) f g = \x -> f (g x)`

```hs
inc :: Num a => a -> a
inc = (+1)

-- hardcode 3 function applications of inc
three = (inc . inc . inc) 0

incTimes :: (Eq a, Num a) => a -> a -> a
incTimes 0 n = n
incTimes times n = 1 + (incTimes (times - 1) n)
```

*times* is a variable representing the number of times the incrementing function
should be applied to *n*. If we want to apply it zero times, it returns our *n* to us.

Otherwise, `incTimes` will be applied as many times as we have declared.

```hs
applyTimes 5 (+1) 5
(+1) (applyTimes 4 (+1) 5)
(+1) ((+1) (applyTimes 3 (+1) 5))
(+1) ((+1) ((+1) (applyTimes 2 (+1) 5)))
(+1) ((+1) ((+1) ((+1) (applyTimes 1 (+1) 5))))
(+1) ((+1) ((+1) ((+1) ((+1) (applyTimes 0 (+1) 5))))) -- reached base case

-- reduce to a single reducible value until we cant anymore
(+1) ((+1) ((+1) ((+1) ((+1) (5)))))
(+1) ((+1) ((+1) ((+1) (6))))
(+1) ((+1) ((+1) (7)))
(+1) ((+1) (8))
(+1) (9)

-- final result
10
```

Bottom
=======
⊥ or bottom is a term used to refer to computations that don't successfully result in a value.

This could mean that the computation either:
* resulted in an error
* or failed to terminate, eg infinite recursion

```
Prelude> let x = x in x
*** Exception: <<loop>>
```
Here GHCI detected `let x = x in x` was never gonna return and short-circuited
the infinite loop. 

Fibonacci
--------
1. Consider the base case

* Fibonacci numbers are positive integers, so a reasonable base case is zero
* However we want both 0 and 1 to be the base cases because we use the previous and next
  number to calculate the series

```hs
fib :: Integral a => a -> a
fib 0 = 0
fib 1 = 1
```

2. Consider the arguments
* We only need one input value
* The argument will also be used as arguments within the recursive function, each fibonacci number is the result of adding the previous two numbers.
```hs
fib :: Integral a => a -> a
fib 0 = 0
fib 1 = 1
fib x = (x - 1) (x - 2)

-- note: doesn't work yet
```
3. Consider the recursion
* Think about in what will this function refer to and call itself
* What needs to happen next to produce a new fibonacci number? We need to add
together `(x - 1)` and `(x - 2)` to produce a result.

```hs
fib :: Integral a => a -> a
fib 0 = 0
fib 1 = 1

-- add fib (x - 1) to the result of calling fib with (x - 2)
fib x = fib (x - 1) + fib (x - 2)
```

Result of recursion
-------
```hs
fibonacci 6 = fibonacci 5 + fibonacci 4
fibonacci 5 = fibonacci 4 + fibonacci 3
fibonacci 4 = fibonacci 3 + fibonacci 2
fibonacci 3 = fibonacci 2 + fibonacci 1
fibonacci 2 = fibonacci 1 + fibonacci 0
```

* Zero and 1 are defined as equal to zero and 1. So here the recursion stops,
and we start adding the result.

```hs
fibonacci 0 +           0
fibonacci 1 +           1
fibonacci 2 + (1 + 0 =) 1
fibonacci 3 + (1 + 1 =) 2
fibonacci 4 + (1 + 2 =) 3
fibonacci 5 = (2 + 3 =) 5
fibonacci 6 = (3 + 5 =) 8
```

