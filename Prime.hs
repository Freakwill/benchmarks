module Prime
where 

import Data.List
import Data.Array


setFalse :: [Int] -> (Array Int Bool) -> (Array Int Bool)
setFalse [] a = a
setFalse s a = let n = (length a)-1 in listArray (0, n) [if k `elem` s then False else a!k | k <- [0..n]]

setfalseComp :: (Array Int Bool) -> Int -> (Array Int Bool)
setfalseComp l p = if l!p then (setFalse (let p2 = p^2 in [p2, p2+2*p..((length l)-1)]) l) else l

odds :: Int -> (Array Int Bool)
odds n = listArray (0,n) [x `mod` 2 == 1| x<- [0..n]]

primes :: (Array Int Bool)
primes = foldl' setfalseComp (odds 100000) [3, 5..(floor (sqrt 100000))]

main :: IO ()
main = do
    print (primes ! 100000)
