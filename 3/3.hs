firstDivisor :: Int -> Int
firstDivisor n =
  head (filter divisible [2..n])
  where
    divisible i = n `mod` i == 0

largestPrimeFactor :: Int -> Int
largestPrimeFactor n
  | divisor == n = n
  | otherwise    = max (largestPrimeFactor divisor) (largestPrimeFactor dividend)
  where
    divisor = firstDivisor n
    dividend = n `div` divisor
