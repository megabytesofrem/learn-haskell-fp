module EqInstances where

data TisAnInteger = TisAn Integer

data TwoIntegers = Two Integer Integer

data StringOrInt
  = TisAnInt Int
  | TisAString String

data Pair a
  = Pair a a

data Tuple a b
  = Tuple a b

data Which a
  = ThisOne a
  | ThatOne a

data EitherOr a b
  = Hello a
  | Goodbye b

-- Eq instances
instance Eq TisAnInteger where
  TisAn a == TisAn b = a == b

instance Eq TwoIntegers where
  (Two a b) == (Two a' b') = a == a' && b == b'

instance Eq StringOrInt where
  TisAnInt i == TisAnInt i' = i == i'
  TisAString s == TisAString s' = s == s'
  _ == _ = False

instance Eq a => Eq (Pair a) where
  Pair a b == Pair a' b' = a == a' && b == b'

instance (Eq a, Eq b) => Eq (Tuple a b) where
  Tuple a b == Tuple a' b' = a == a' && b == b'

instance Eq a => Eq (Which a) where
  ThisOne a == ThisOne a' = a == a'
  ThatOne b == ThatOne b' = b == b'
  _ == _ = False

instance (Eq a, Eq b) => Eq (EitherOr a b) where
  Hello a == Hello b = a == b
  Goodbye a == Goodbye b = a == b
  _ == _ = False