module Main (main) where
import Queue (Queue(..), empty, isEmpty, dequeue, enqueue)

main :: IO()
main = 
    do 
        let q = Queue [1,2,3]
        let r = enqueue 4 q
        print r
        print $ dequeue r
        let s = empty
        let t = enqueue 8 s
        print $ isEmpty s
        print $ isEmpty t
        print t
        print $ isEmpty $ snd $ dequeue t
