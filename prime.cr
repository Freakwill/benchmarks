#!/usr/bin/env crystal

def primes(n)
    # sieve of Eratosthenes
    f = Array.new(n+1) { |i| i % 2}
    i = 3
    nn = Math.sqrt(n)

    while i <= nn
        if f[i] == 1
            j = i * i
            while j <= n
                f[j] = 0
                j += 2 * i  #i.e. j=i(i+2) not j += i, since 2|i(i+1)
            end
        end
        i += 2
    end

    p = Array.new( (n -1) / 2 ) { |i| 3 + 2 * i }.select { |x| f[x] == 1 }
    p.insert(0, 2)
    return p
end
 
t1 = Time.now

n = 10000000
primes(n)

t2 = Time.now
delta = t2 - t1
puts delta
