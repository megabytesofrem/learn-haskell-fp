Normal form
===
Expressions are in *normal form* when have reached an irreducable form. 
1 + 2 is a reducible expression, while 2 is no longer reducible.

Cannot be reduced further
- 1
- "hello"

Can be reduced further
- 1 + 1
- 2 * 3 + 1

NOTE: Evaluation is simplification

Haskell uses weak head normal form (WHNF), which means not everything will get reduced
to its irreducible form immediately so

`(\f -> (1, 2 + f)) 2`
reduces to the following:
`(1, 2 + 2)`

Let and where
===
- Let introduces an expression so it can be used whereever you have an expression
- Where is a declaration and is bound to a surrounding syntactic construct

```hs
printInc n = print plusTwo
  where plusTwo = n + 2

-- let
printInc2 n = 
  let plusTwo = n + 2
  in print plusTwo
```

