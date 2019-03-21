import Data.List

scaleLeft :: Int -> Int -> Int -> String
scaleLeft size position shift | ((position - shift) - 1) <= 0 =  intercalate " " $ map show $ [1 .. position - 1]
scaleLeft size position shift =  "<< " ++ ( intercalate " " $ map show $ [position - shift .. position -1] )

scaleRight :: Int -> Int -> Int -> String
scaleRight size position shift | position + shift >= size =  intercalate " " $ map show $ [position + 1 .. size]
scaleRight size position shift = (intercalate " " $ map show $ [position + 1 .. position + shift] ) ++ " >>"

scale :: Int -> Int -> Int -> String
scale size position shift = (scaleLeft size position shift) ++ " (" ++ (show position) ++ ") "  ++ (scaleRight size position shift)

main :: IO ()
main = do
  [size, position, shift] <- fmap (map read . words) getLine
  let result = scale size position shift
  print result
