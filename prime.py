#!/usr/bin/env python3
# -*- coding: utf-8 -*-

import numpy as np

import time

 
from numba import jit

@jit(nopython=True)
def primes(n):
    # sieve of Eratosthenes
    f = np.ones(n+1)
    f[0::2] = 0
    i = 3
    nn = np.sqrt(n)
    while i <= nn:
        if f[i]:
            f[i*i::i*2]=0
        i += 2
 
    P = [2] + [x for x in range(3, n+1, 2) if f[x]]
    return P
 
t1 = time.clock()
n = 10000000   #100以内的素数
P = primes(n)

t2 = time.clock()
print(t2-t1)

# import ctypes

# t1 = time.clock()
# lib = ctypes.CDLL('prime.so')
# print(lib)
# P = lib.primes(n)
# t2 = time.clock()
# print(t2-t1)
# print(ct-ct0)