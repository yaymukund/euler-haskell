mods :: Int -> [Int]
mods n = map (mod n) [1..20]

isZeros :: [Int] -> Bool
isZeros numbers = all (== 0) numbers

main = do
  -- WOW lcm makes this trivial... `foldr1 lcm [1..20]`
  let result = head (filter (isZeros . mods) [20, 40..])
  print result
