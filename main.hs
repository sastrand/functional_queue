module Main (main) where

import Queue (Queue(..), empty, isEmpty, frontOf, dequeue, enqueue)

main :: IO()
main = 
    do 
        let q = empty
        print $ isEmpty q
        let r = enqueue 7 q
        print $ isEmpty r
        print $ dequeue r
        print $ dequeue $ snd $ dequeue r

        putStrLn "<><>"

        let s = empty
        let t = enqueue 8 s
        print $ isEmpty s
        print $ isEmpty t
        print t
        print $ isEmpty $ snd $ dequeue t

        putStrLn "<><>"

        let u = enqueue 3 $ enqueue 2 $ enqueue 1 empty
        let v = enqueue 4 $ snd $ dequeue u
        print $ isEmpty v
        print $ frontOf v

        putStrLn "<><>"

        let w = enqueue "Haskell" $ enqueue "Hello, " empty
        print w

        putStrLn "<><>"
        let x = empty
        let y = empty
        print $ enqueue 7 x == enqueue 7 y
