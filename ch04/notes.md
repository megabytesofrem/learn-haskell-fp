Breakdown of a Datatype
=====
```hs
data Bool = False | True
--    [1]    [2] [3] [4]
```
1. Type constructor for the datatype
2. Data constructor for the value `False`
3. Pipe indicates a sum type
4. Data constructor for the value `True`

Nullary Constructors
====
Nullary data constructors are data constructors which have constant values aka 
they dont take any arguments

Sum Types
====
Sum types indicate a type that may have more than one possible value eg a `Bool`
may be `True` OR `False`.

Numeric Types
====
- Integral numbers: whole numbers
    1. `Int`: fixed precision integer
    2. `Integer`: supports arbritrarily large or small numbers

- Fractional: floating point/decimal values
    1. `Float`: single precision floating point
    2. `Double`: double precision floating point
    3. `Rational`: represents a ratio of two integers
    4. `Scientific`: space efficient and almost arbritary precision, numbers in scientific notation

- `minBound` can be used to get the minimum bounds (lowest value) of a integer
- `maxBound` can be used to get the maximum bounds (highest value) of a integer

Lists
====
List operations
----
- `!!` index into a list, lists start at 0
- `:` (cons) builds a list
- `head` returns the head/first element of a list
- `tail` returns the list with the head chopped off
- `take n` takes `n` elements from the list, and returns the rest of it
- `drop n` removes `n` elements from the list, and returns the rest of it

Polymorphism
====
`id :: a -> a` is parametrically polymorphic since `id` works for any type since it doesnt
use any information specific to a given type or set of types.

`isEqual :: Eq a => a -> a -> Bool` is a constrained/bounded polymorphic type since it requires that the type have a typeclass instance defined for `Eq`.