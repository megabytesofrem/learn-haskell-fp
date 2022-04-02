Char/String
===
- `Char` is a single character type.
- `String` is the same as `[Char]` - that is, a list of characters

NB: - `Data.Text` is used to represent text because it supports Unicode and is faster
than `String` which is slow with large amounts of text

Operations
===
- `s1 ++ s2` is used to concatenate a list of `a` things eg strings or integers, *not* increment a variable like C++/Java.
- `concat [[a]]` takes a list of a list of `a` and flattens the list, and returns it.

List operations
====
- `!!` index into a list, lists start at 0
- `:` (cons) builds a list
- `head` returns the head/first element of a list
- `tail` returns the list with the head chopped off
- `take n` takes `n` elements from the list, and returns the rest of it
- `drop n` removes `n` elements from the list, and returns the rest of it