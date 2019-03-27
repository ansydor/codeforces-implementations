lastTuple :: (Int, Int, Int) -> Int
lastTuple (a, b, c) = c

process :: (Int, Int) -> Int
process (small, big) = 
    lastTuple $ until (\(x,y,z) -> x > y) (\(x,y,z) -> (x*3, y*2, z+1)) (small, big, 0) 
     
main :: IO ()
main = do
    [small, big] <- fmap( map read . words) getLine
    let result = process (small, big)
    putStrLn (show result)