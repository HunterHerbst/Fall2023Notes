-- calculate triangle number
triangleNumber n = go n 1 0
    where
    go n c t
        | c > n = t
        | otherwise = go n (c+1) (t+c)

-- list the factors of n
factors n = [x | x <- [1..n], n `mod` x == 0]

-- calculate the number of factors of n
numFactors n = length $ factors n

-- find the first triangle number with greater than f factors
solveProblem f = go 1 f
    where
    go c f
        | numFactors (triangleNumber c) > f = triangleNumber c
        | otherwise = go (c+1) f
