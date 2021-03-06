#!/usr/bin/env ruby
# -*- coding: utf-8 -*-


def primes(n)
    # sieve of Eratosthenes
    f = Array.new(n+1) { |i| i % 2}
    i = 3
    nn = Math.sqrt(n)

    while i <= nn do
        if f[i] == 1
            j = i * i
            while j <= n do
                f[j] = 0
                j += 2 * i  #i.e. j=i(i+2) not j += i, since 2|i(i+1)
            end
        end
        i += 2
    end
 
    Array.new( (n -1) / 2 ) { |i| 3 + 2 * i }.each do |x|
        if f[x] == 1
            $P << x
        end
    end
 
end
 
t1 = Time.now

$P = [2]

n = 10000000
primes(n)

t2 = Time.now
delta = t2 - t1
puts delta
