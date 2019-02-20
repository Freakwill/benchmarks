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
    P = [2] + [x for x in range(3, n+1, 2) if f[x] == 0]
 
    return P
```



### Results(/s)

| Python(numba) | Ruby/Crystal(release) | Lua/MoonScript | Julia | Java(compiled) | Haskell | Go(compiled) | JS/CoffeeScript |
| ------------- | --------------------- | -------------- | ----- | -------------- | ------- | ------------ | --------------- |
| ~0.9(~0.75)   | ~1.79/~0.45(~0.1)     | ~2.77/~1.5     | ~0.25 | ~0.17(~0.15)   | ?       | ~180µs(195)  | ~.35/~0.4       |



To my surprise, Ruby is faster than Python (without numpy)! :astonished: Julia is really fucking rapid, even faster than Python with numba. I tried my best to implement the algorithm in Java, but failed :cry:. I do not think I would learn Java currently, or C-family, their grammar is overstaffed and not user-friendly. I also do not master Haskell but I would persist in learning it. The grammar of Julia is similar to Matlab, but with many new concept that scares me.



I implemented the algorithm with Go, it perfume unbelievable well!😲 😲 😲 



MoonScript! Come on! You are excellent.



CoffeeScript is great! So is JS.

---

  型号名称：	MacBook Pro

  型号标识符：	MacBookPro12,1

  处理器名称：	Intel Core i5

  处理器速度：	2.7 GHz

  处理器数目：	1

  核总数：	2

  L2 缓存（每个核）：	256 KB

  L3 缓存：	3 MB

  内存：	8 GB

  Boot ROM 版本：	MBP121.0171.B00

  SMC 版本（系统）：	2.28f7

  序列号（系统）：	C02S27C5FVH5

  硬件 UUID：	863AEEE2-6147-55E7-A37D-604FC48C662B