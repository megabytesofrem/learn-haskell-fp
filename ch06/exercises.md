Tuple Experiment
====
1. `quotRem` takes two Integral numbers, and returns a tuple of two integral numbers
where the first `a` is the quotient, and the second is the remainder.

2. `divMod` does the same as `quotRem`

Put on your thinking cap
======
A: We didnt need to make `divideThenAdd :: (Fractional a) => a -> a -> a` require both typeclasses since because `Fractional` is a superclass of `Num` by deriving from `Fractional`, we also have access to the functions from the `Num` typeclass.