import Data.List

intFromMaybe m = case m of Just i -> i
                           Nothing -> 0
    

process :: Int -> [Int] -> [Int]
process count dataList = 
   map ((+1) . intFromMaybe) $ map (\x -> elemIndex x dataList) [1..count] 

main :: IO ()
main = do
    source <- getLine
    let count = read source :: Int
    sources <- getLine
    let numbers = read <$> words sources :: [Int]
    let result = process count numbers
    putStrLn (intercalate " " $ map show result)