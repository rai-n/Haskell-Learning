tail :: [a] -> a
tail [] = error "No end for empty lists!"
tail [x] = x
tail (_:xs) = tail xs

tail' = foldr1 (const id)

-- Prelude> const 1 2
-- 1
-- Prelude> (flip const) 1 2
-- 2
tail'' = foldr1 (flip const)

tail''' = head . reverse

tail'''' = foldl1 (curry snd)

tail''''' [] = error "No end for empty lists!"  
tail''''' x = x !! (length x -1)
