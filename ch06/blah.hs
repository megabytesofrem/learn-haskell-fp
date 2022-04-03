module Blah where

data Trivial = Trivial'

-- define a typeclass instance for comparing two trivials
instance Eq Trivial where
  Trivial' == Trivial' = True

data DayOfWeek = Mon | Tue | Weds | Thu | Fri | Sat | Sun

data Date = Date DayOfWeek Int

instance Eq DayOfWeek where
  (==) Mon Mon = True
  (==) Tue Tue = True
  (==) Weds Weds = True
  (==) Thu Thu = True
  (==) Fri Fri = True
  (==) Sat Sat = True
  (==) Sun Sun = True
  (==) _ _ = False

instance Eq Date where
  (==)
    (Date day month)
    (Date day' month') =
      day == day' && month == month'
