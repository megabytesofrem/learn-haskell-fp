Equivalence Exercises
====
1. λxy.xz
A: λmn.mz

2. λxy.xxy
A: λa.λ(b.aab)

3. λxyz.xz
A: λtos.st

Chapter Exercises
===
Combinators
1. λx.xxx = yes
2. λxy.zx = no, z is a free variable
3. λxyz.xy(zx) = yes
4. λxyz.xy(zxy) = yes
5. λxy.xy(zxy) = no, z is a free variable

Normal form or diverge?
1. λx.xxx = normal form
2. (λz.zz)(λy.yy) = diverge
3. (λx.xxx)z = normal form

Beta reduce
1. λ(abc.cba)zz(λwv.w) = z
> [a := z]
> (λbc.cbz)z(λwv.w)
> [b := z]
> (λc.czz)(λwv.w)
> [c := (λwv.w)]
> (λwv.w)(z)z
> (λv.z)(z)
> z

2. (λx.λy.xyy)(λa.a)b = bb
> [x := (λa.a)]
> (λy.(λa.a)yy)b
> [y := (λa.a)]
> (λa.a)(b)(b)
> bb