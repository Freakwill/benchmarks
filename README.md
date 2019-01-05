# Benchmarks

## Introduction

One of my friends told me at least three times that Java is the greatest computer language currently. It is fast and safe. He care about the performance of the languages very much. I think the speed of a language is indeed nonnegligible. I try to learn a new language that is fast enough and has a user-friendly grammar.

## primes

```python
def primes(n):
    # sieve of Eratosthenes
    
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

| Python(numba) | Ruby  | Lua   | Julia | Java | Haskell |
| ------------- | ----- | ----- | ----- | ---- | ------- |
| 3.9(~0.88)    | ~1.92 | ~2.77 | 0.25  | ?    | ?       |



To my surprise, Ruby is faster than Python! :astonished: Julia is really fucking rapid, even faster than Python with numba. I tried my best to implement the algorithm in Java, but failed :cry:. I also do not master Haskell.
