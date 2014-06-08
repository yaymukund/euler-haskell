-- The sum of the primes below 10 is 2 + 3 + 5 + 7 = 17.
--
-- Find the sum of all the primes below two million.

-- http://stackoverflow.com/a/1140825/1207223
primes = 2 : filter isPrime [3,5..]

isPrime :: Int -> Bool
isPrime n = isPrime' n primes
  where isPrime' n (x:xs)
          | x*x > n        = True
          | n `mod` x == 0 = False
          | otherwise      = isPrime' n xs

main = do
  let result = sum (takeWhile (< 2000000) primes)
  print result
