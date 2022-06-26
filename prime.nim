#!/usr/bin/env nim
# nim r Programming/Others/Benchmarks/prime.nim

import std/math
import timeit

proc primes(): seq[int] =
    # sieve of Eratosthenes
    const n = 1000000
    var f: array[1..n, bool]
    for i in 1..n:
        f[i] = (i mod 2) == 1
    var i: int = 3
    var nn : int = int(floor(sqrt(float(n))))
    while i <= nn:
        if f[i]:
            var j :int = i^2
            while j<=n:
                f[j] = false
                j = j+ 2*i
        i = i + 2
 
    var P: seq[int]
    P = @[2]
    for x in countup(3, n, 2):
        if f[x]:
            P.add x
    return P
 

timeOnce("timeit"):
    discard primes()
