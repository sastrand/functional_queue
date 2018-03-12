module Queue (empty, isEmpty, frontOf, dequeue, enqueue) where


data Queue a = Queue ([a], [a]) deriving (Show)


empty :: Queue a
empty = Queue([], [])


isEmpty :: Queue a -> Bool
isEmpty q =
    case q of 
        Queue ([], [])  -> True
        Queue (_ , xs)  -> False


frontOf :: Queue a -> Maybe a
frontOf q =
    case q of
        Queue ([], []) -> Nothing
        Queue (ins, []) -> Just $ head $ reverse ins
        Queue (ins, outs) -> Just $ head outs


dequeue :: Queue a -> (Maybe a, Queue a)
dequeue q =
    case q of 
        Queue ([], []) -> (Nothing, q)
        Queue (ins, []) -> (Just $ head $ reverse ins, 
                            Queue ([], tail $ reverse $ ins))
        Queue (ins, outs) -> (Just $ head outs, Queue (ins, tail outs))


enqueue :: a -> Queue a -> Queue a
enqueue x (Queue (ins, outs)) = Queue (x:ins, outs)
