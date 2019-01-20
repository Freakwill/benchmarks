# Benchmarks

## Introduction

One of my friends told me at least three times that Java is the greatest computer language currently. It is fast and safe. He care about the performance of the languages very much. I think the speed of a language is indeed nonnegligible. I try to learn a new language that is fast enough and has a user-friendly grammar.

## primes

```python
# Algorithm

def primes(n):
    # sieve of Eratosthenes
    # not optimized, cost about 3 sec
    
    f = np.zeros(n+1)
    f[0::2] = 1
    i = 3
    nn = np.sqrt(n)
    while i <= nn:
        if f[i] == 0:
            j = i*i
            while j <= n:
                f[j] = 1
                j += i * 2  #i.e. j=i(i+2) not j += i, since 2|i(i+1)
        i += 2
    P = [2]
    for x in range(3, n+1, 2):
        if f[x] == 0:
            P.append(x)
 
    return P
```



### Results(/s)

| Python(numba) | Ruby  | Lua(MoonScript) | Julia | Java | Haskell | Go(compile)         | CoffeeScript |
| ------------- | ----- | --------------- | ----- | ---- | ------- | ------------------- | ------------ |
| ~0.9(~0.75)   | ~1.82 | ~2.77(~1.5)     | ~0.25 | ?    | ?       | ~180.422µs(195.411) | ~0.4         |



To my surprise, Ruby is faster than Python (without numpy)! :astonished: Julia is really fucking rapid, even faster than Python with numba. I tried my best to implement the algorithm in Java, but failed :cry:. I do not think I would learn Java currently, or C-family, their grammar is overstaffed and not user-friendly. I also do not master Haskell but I would persist in learning it. The grammar of Julia is similar to Matlab, but with many new concept that scares me.



I implemented the algorithm with Go, it perfume unbelievable well!😲 



MoonScript! Come on! You are excellent.



CoffeeScript is great!