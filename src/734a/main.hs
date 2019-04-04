winner :: Int -> String
winner a
    | a > 0 = "Anton"
    | a < 0 = "Danik"
    | otherwise = "Friendship"

process :: [Char] -> String
process source =
    let count = sum $ map(\x -> if x == 'A' then 1 else -1) source
    in winner count

main :: IO()
main = do
    number <- getLine
    source <- getLine
    let result = process source
    putStrLn result 