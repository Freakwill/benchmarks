#!/usr/bin/env julia

function primes(n)
    # sieve of Eratosthenes
    f = zeros(n)
    for i = 2:2:n
        f[i] = 1
    end

    i = 3
    nn = sqrt(n)
    while i <= nn
        if f[i] == 0
            j = i * i
            while j <= n
                f[j] = 1
                j += 2 * i  #i.e. j=i(i+2) not j += i, since 2|i(i+1)
            end
        end
        i += 2
    end
    
    P = [2]
    for x in 3:2:n
        if f[x] == 0
            append!(P, x)
        end
    end
    return P
 
end
 

n = 10000000
@time P= primes(n)

