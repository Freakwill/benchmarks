#!/usr/bin/env coffee

moment = require 'moment'

primes = (n) ->
    # sieve of Eratosthenes
    f = (k % 2 for k in [0..n])
    i = 3
    nn = Math.sqrt n
    for i in [3..nn] by 2
        if f[i] == 1
            for j in [i*i..n] by i*2
                f[j]=0
 
    P = [2].concat (x for x in [3..n] by 2 when f[x])
 
t1 = moment().seconds() + moment().milliseconds()/1000
n = 10000000   #100以内的素数
P = primes n
t2 = moment().seconds() + moment().milliseconds()/1000

console.log (t2 - t1)
