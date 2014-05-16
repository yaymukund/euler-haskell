isDivisible :: Int -> Bool
isDivisible x =
  (x `mod` 3) == 0 || (x `mod` 5) == 0

main = do
  let numbers = [x | x <- [1..999], isDivisible x]
  print (sum numbers)
