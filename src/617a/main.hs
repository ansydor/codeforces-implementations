main :: IO()
main = do
    number <- readLn
    let count = ((div number 5) + (if mod number 5 == 0 then 0 else 1))
    putStrLn (show count)