#!/usr/bin/env moon

import insert from table

primes = (n=100) ->
    -- sieve of Eratosthenes
    f = {i, i % 2 for i= 0, n}

    i = 3
    nn = math.sqrt n

    while i <= nn
        if f[i] == 1
            j = i * i
            while j <= n
                f[j] = 0
                j += 2 * i  -- i.e. j=i(i+2) not j += i, since 2|i(i+1)
        i += 2
    

    P = {2}
    N = 1
    for x = 3, n, 2
        if f[x] == 1
            N += 1
            insert P, N, x

    return P
 
t1 = os.clock!
n = 10000000
p = primes n
-- print a for a in *p

t2 = os.clock!
delta = t2 - t1
print delta
