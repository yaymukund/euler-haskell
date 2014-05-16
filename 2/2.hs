fibonacci :: [Int]
fibonacci =
  0 : 1 : zipWith (+) fibonacci (tail fibonacci)

main = do
  let numbers = takeWhile (< 4000000) fibonacci
  (print . sum . filter even) numbers
