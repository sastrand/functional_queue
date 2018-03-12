module Queue (empty, isEmpty) where

data Queue a = Queue ([a], [a]) deriving (Show)

empty :: Queue a
empty = Queue([], [])

isEmpty :: Queue a -> Bool
isEmpty x =
    case x of 
        Queue ([], [])     -> True
        Queue ([], (x:_))  -> False
        Queue ((x:_), [])  -> False

-- frontOf :: Queue a -> a
-- frontOf (Queue (x:xs)) = x

-- dequeue :: Queue a -> (a, Queue a)
-- dequeue (Queue xs) = (head xs, Queue $ tail xs)

-- enqueue :: a -> Queue a -> Queue a
-- enqueue x (Queue xs) = Queue (xs ++ [x])
