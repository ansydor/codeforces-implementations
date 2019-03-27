process :: [Int] -> String
process source = 
    let item = (length . filter (==1)) source
    in if (item > 0) then "HARD" else "EASY"
    

main :: IO ()
main = do
    source <- getLine
    let count = read source :: Int
    sources <- getLine
    let numbers = read <$> words sources :: [Int]
    let result = process numbers
    putStrLn (result)