import Control.Monad

detect :: String -> Int
detect shape
    | shape == "Tetrahedron" = 4
    | shape == "Cube" = 6
    | shape == "Octahedron" = 8
    | shape == "Dodecahedron" = 12
    | shape == "Icosahedron" = 20

main:: IO()
main = do
    count <- readLn
    items <- replicateM count getLine
    let number = foldl (+) 0 $ (map detect items)
    putStrLn (show number)