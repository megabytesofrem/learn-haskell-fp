What is a function?
===
A function is a mapping from a set of inputs to a set of outputs
> f(1) = A
> f(2) = B
> f(3) = C

The input set is `{1,2,3}` and the output set is `{A,B,C}`

The following is not a valid function:
> f(1) = X
> f(1) = Y 
> f(2) = Z

Given the same input, the function should return the same output to be referentially
transparent

Lambda
===
λ  x . x 
^--^
 |------ head of the lamdba

λ  x . x 
      ^-^
       |------ body of the lamdba, this is a bound variable in the head

Alpha Equivalence
===
`λx.x` == `λy.y` == `λd.d` since the names given to the variables are meaningless except in the role of this single expression

Beta Reduction
===
The process of applying a function to an argument and substituting the input expression
for *all* instances of bound variables in the body of the abstraction.

We also remove the head, since its only purpose was to bind a variable

Beta reduction of λx.x:
1. λx.x
2. (λx.x)
3. (2)
4. 2

Beta reduction of applying the identity function to another lambda:
1. (λx.x)(λy.y)
2. [x := (λy.y)]
3. λy.y
4. No argument to apply it to, so the final reduction is λy.y

Combinators
===
Combinators are lambda terms with no free variables.
* λx.x - combinator because x is the only bound variable
* λxy.x
* λxyz.xz(yz)

The following are not because there are free variables:
* λy.x - y is bound but x is free
* λx.xz - x is bound and used in body, but z is free