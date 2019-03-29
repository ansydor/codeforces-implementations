process :: (Int, Int) -> (Int, Int)
process (x, y)
    | div x 100 > 0 = (mod x 100, y+ div x 100)
    | div x 20 > 0 = (mod x 20, y+ div x 20)
    | div x 10 > 0 = (mod x 10, y+ div x 10)
    | div x 5 > 0 = (mod x 5, y+ div x 5)
 
main :: IO ()
main = do
    number <- readLn
    let progress = until (\x -> fst x<5) process (number , 0)
    putStrLn (show (fst progress + snd progress))