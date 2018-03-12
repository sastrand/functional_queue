module Main (main) where
import Queue (empty, isEmpty, dequeue, enqueue)

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
        print $ dequeue u

