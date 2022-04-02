-- Comprehension Check: 2
squarePi n = 3.14 * (n * n)

-- Comprehension Check: 3
squarePi' n = pi * (n * n)

waxOn = x * 5
  where
    z = 7
    y = z + 8
    x = y ^ 2

waxOff x = triple x
triple x = x * 3