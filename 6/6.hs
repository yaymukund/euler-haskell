square :: Int -> Int
square n = n*n

main = do
  let numbers = [1..100]
      sumOfSquares = sum(map square numbers)
      squareOfSum = square (sum numbers)

  print (squareOfSum - sumOfSquares)
