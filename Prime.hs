module Prime
where 

set :: [a] -> Int -> a -> [a]
set [] n b = []
set (a:as) 0 b = b:as
set (a:as) n b = a : (set as (n - 1) b)

slice :: Int -> Int -> Int -> [Int]
slice start end step = if (end < start) then [] else (start : (slice (start + step) end step))


setfalse :: [Int] -> [Bool] -> [Bool]
setfalse [] a = a
setfalse (i:is) a = set (setfalse is a) i False

isEven ::Int -> Bool 
isEven x = x `mod` 2 == 0

isPrime :: Int -> [Bool]
isPrime 1 = [True, True]
isPrime 2 = [False, False, True]
isPrime n = foldl (\l -> \p-> (isPrime_ l p n)) f (slice 3 (floor (sqrt n)) 2)
    where f = [if (isEven x) then False else True | x <- [0..n]]

isPrime_ :: [Bool] -> Int -> Int -> [Bool]
isPrime_ l p n = if l!!p then (setfalse (slice (p^2) n (2*p)) l) else l


primes :: Int -> [Int]
primes 4 = [0, 1, 2, 3]
primes n = takeWhile (\k->(isPrime n)!!k) [0..n]

main :: IO ()
main = do 
   putStrLn "The primes <= n:"  
   print ""

