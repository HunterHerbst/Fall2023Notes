-- Example Recursive functions in Haskell

-- count function that counts up to 100
count 100 = [] -- base case
count n = n : count (n+1) -- recursive function

-- generate the n-th fibonacci number
fib 0 = 0 -- base case
fib 1 = 1 -- base case
fib n = fib (n-1) + fib (n-2) -- recursive function

-- generate list of fibonacci numbers that are less than n
-- 'go' is just a local function name, could be anything not already used
fibList n = go n 1 1
    where
    go n f s
        | (f+s) > n = []
        | otherwise = (f+s) : go n s (f+s)

-- check if number is prime
isPrime n = ip n [2..(isqrt(n-1))] -- runs ip from 2 to floor of sqrt of n-1
    where
    ip _ [] = True -- empty list is prime technically
    ip n (x:xs) -- x:xs separates the head from the tail of the list, allowing you to use them separately
        | n `mod` x == 0 = False -- if the number is divisible by another number, it's not prime
        | otherwise = ip n xs -- recurse

-- helper function to get sqrt rounded down to nearest integral
isqrt :: Integral i => i -> i
isqrt = floor . sqrt . fromIntegral