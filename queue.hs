module Queue (empty, isEmpty, dequeue, enqueue) where

data Queue a = Queue ([a], [a]) deriving (Show)

empty :: Queue a
empty = Queue([], [])


isEmpty :: Queue a -> Bool
isEmpty q =
    case q of 
        Queue ([], [])  -> True
        Queue ([], xs)  -> False
        Queue (xs, [])  -> False

-- frontOf :: Queue a -> a
-- frontOf (Queue (x:xs)) = x

dequeue :: Queue a -> (Maybe a, Queue a)
dequeue q =
    case q of 
        Queue ([], []) -> (Nothing, q)
        Queue (ins, []) -> (Just $ head $ reverse ins, Queue ([], tail $ reverse $ ins))
        Queue (ins, outs) -> (Just $ head outs, Queue (ins, tail outs))


enqueue :: a -> Queue a -> Queue a
enqueue x (Queue (ins, outs)) = Queue (x:ins, outs)
