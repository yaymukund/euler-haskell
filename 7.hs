-- By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we
-- can see that the 6th prime is 13.
--
-- What is the 10 001st prime number?
primes = 2 : filter isPrime [3,5..]

-- http://stackoverflow.com/a/1140825/1207223
isPrime :: Int -> Bool
isPrime n = isPrime' n primes
  where isPrime' n (x:xs)
          | x*x > n        = True
          | n `mod` x == 0 = False
          | otherwise      = isPrime' n xs

main = do
  print (primes !! 10000)
