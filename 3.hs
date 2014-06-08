-- The prime factors of 13195 are 5, 7, 13 and 29.
--
-- What is the largest prime factor of the number 600851475143 ?
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
