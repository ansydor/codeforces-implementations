import Data.List

process :: Int -> String
process source 
    | mod source 2 == 1 = "I hate"
    | mod source 2 == 0 = "I love"

main :: IO ()
main = do
  text <- getLine
  let count = read text
  let result = intercalate " that " $ map process [1..count]
  putStrLn (result ++ " it")