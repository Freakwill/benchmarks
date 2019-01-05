#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import numpy as np

import time
t1 = time.clock()
 
from numba import jit


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
                j += i * 2  #即 j=i(i+2) 不是 j += i, 因为 2|i(i+1)
        i += 2
 
    P = [2] + [x for x in range(3, n+1, 2) if f[x] == 0]
    return P
 
n = 10000000   #100以内的素数
P = primes(n)

t2 = time.clock()
print(t2-t1)

# import numpy as np
# a = np.arange(1, n+1)
# n_max = int(np.sqrt(n))
# is_prime = np.ones(len(a), dtype=bool)
# is_prime[0] = False
# for i in range(2, n_max) :
#     if i in a[is_prime]:
#         is_prime[(i*i-1)::i] = False
         
# # print(a[is_prime])

# ct = time.clock()
# print(ct-ct0)