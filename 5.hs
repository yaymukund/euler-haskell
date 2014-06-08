-- 2520 is the smallest number that can be divided by each of the numbers
-- from 1 to 10 without any remainder.
--
-- What is the smallest positive number that is evenly divisible by all of
-- the numbers from 1 to 20?
mods :: Int -> [Int]
mods n = map (mod n) [1..20]

isZeros :: [Int] -> Bool
isZeros numbers = all (== 0) numbers

main = do
  -- WOW lcm makes this trivial... `foldr1 lcm [1..20]`
  let result = head (filter (isZeros . mods) [20, 40..])
  print result
