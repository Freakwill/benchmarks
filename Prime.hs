module Prime
where 

import Data.List

set :: [a] -> Int -> a -> [a]
set [] n b = []
set (a:as) 0 b = b:as
set (a:as) n b = a : (set as (n - 1) b)


setfalse :: [Int] -> [Bool] -> [Bool]
setfalse [] a = a
setfalse (i:is) a = set (setfalse is a) i False


-- isPrime :: Int -> [Bool]
-- isPrime 1 = [True, True]
-- isPrime 2 = [False, False, True]
-- isPrime n = let f = [if (x `mod` 2 == 0) then False else True | x <- [0..n]] in
--  foldl removeComp f (slice 3 (floor (sqrt n)) 2) 

removeComp :: [Bool] -> Int -> [Bool]
removeComp l p = if l!!p then (setfalse (let p2 = p^2 in [p2, p2+2*p..n]) l) else l
  where n = (length l) - 1


-- primes :: Int -> [Int]
-- primes 4 = [0, 1, 2, 3]
-- primes n = filter (!! (isPrime n)) [0..n]

main :: IO ()
main = do
   print (let ps = (foldl' removeComp [if (x `mod` 2 == 0) then False else True | x <- [0..10000]] [3, 5..(floor (sqrt 10000))]) in
     filter (\k -> ps !! k) [0..10000])

