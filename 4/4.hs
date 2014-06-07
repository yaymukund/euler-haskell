-- My inefficient solution.
digits :: Int -> [Int]
digits n
  | n < 10    = [n]
  | otherwise = digit : digits rest
  where (rest, digit) = n `divMod` 10

isPalindrome :: Int -> Bool
isPalindrome n = s == reverse s where s = digits n

main = do
  let numbers = [ x*y | x <- [100..999], y <- [x..999]]
  (print . maximum . filter isPalindrome) numbers
