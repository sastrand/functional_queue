module Main (main) where
import Queue (empty, isEmpty)

main :: IO()
main = 
    do 
        let q = empty
        print $ isEmpty q

        -- let s = empty
        -- let t = enqueue 8 s
        -- print $ isEmpty s
        -- print $ isEmpty t
        -- print t
        -- print $ isEmpty $ snd $ dequeue t
