# Benchmarks

## Introduction

One of my friends told me at least three times that Java is the greatest computer language currently. It is fast and safe. He care about the performance of the languages very much. I think the speed of a language is indeed nonnegligible. I try to learn a new language that is fast enough and has a user-friendly grammar.

## primes

### Algorithm (Sieve of Eratosthenes)

Remark: Should contain step I and step II

```python
# Algorithm

def primes(n):
    # sieve of Eratosthenes
    # if not optimized, it will cost about 3 sec
    
    # step I
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

    # step II
    P = [2] + [x for x in range(3, n+1, 2) if f[x] == 0]
 
    return P
```



### Results(/s)

| Python(numba)3.6/3.7  | Ruby/Crystal(release) | Lua/MoonScript | Julia | Java(compiled) | Haskell | Go(compiled) | JS/CoffeeScript |Nim |
| --------------------- | --------------------- | -------------- | ----- | -------------- | ------- | ------------ | --------------- | ---|
| ~0.9(0.75)/~0.88(0.6) | ~1.79/~0.45(0.1)      | ~2.77/~1.5     | ~0.25 | ~0.17(0.15)    | ?       | ~180µs(195)  | ~.35/~0.4       | ~0.037 |



To my surprise, Ruby is faster than Python (without numpy)! :astonished: Julia is really fucking rapid, even faster than Python with numba. It is fastest among interpreting languages. I tried my best to implement the algorithm in Java, but failed :cry:. I do not think I would learn Java currently, or C-family, their grammar is overstaffed and not user-friendly. I also do not master Haskell but I would persist in learning it. The grammar of Julia is similar to Matlab, but with many new concept that scares me.



I implemented the algorithm with Go, it perfume unbelievable well!😲 😲 😲 



MoonScript! Come on! You are excellent.



CoffeeScript is great! So is JS.

Nim is also fast enough.

---

  Name：	MacBook Pro

  Iden：	MacBookPro12,1

  CPU：	Intel Core i5

  speed：	2.7 GHz

  number：	1

  number of cores：	2

  L2 cache（per core）：	256 KB

  L3 cache：	3 MB

  memory：	8 GB

  Boot ROM version：	MBP121.0171.B00

  SMC version（system）：	2.28f7

  seq No（system）：	C02S27C5FVH5

  hardware UUID：	863AEEE2-6147-55E7-A37D-604FC48C662B