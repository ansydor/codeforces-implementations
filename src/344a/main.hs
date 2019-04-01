import Control.Monad

process :: [String] -> Int
process source = snd (foldr (\z (x, y) -> (z, if x == z then y else y+1) ) (" ", 0) source)

main :: IO()
main = do 
    count <- readLn
    inputs <- replicateM count getLine
    putStrLn (show $ process inputs)