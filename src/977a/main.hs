oneStep :: Int -> Int
oneStep item | mod item 10 == 0 = div item 10
oneStep item = item - 1

process :: (Int, Int) -> Int
process (number, count) = 
    foldl (\x y -> oneStep x) number [1..count]

main :: IO ()
main = do
  [number, count] <- fmap (map read . words) getLine
  let result = process (number, count)
  putStrLn (show result)