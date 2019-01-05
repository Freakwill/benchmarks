#!/usr/bin/env lua


function primes(n)
    -- sieve of Eratosthenes
    f = {}
    for i= 0, n do
        if i % 2 == 0 then
            f[i] = 1
        else 
            f[i] = 0
        end
    end

    i = 3
    nn = math.sqrt(n)

    while i <= nn do
        if f[i] == 0 then
            j = i * i
            while j <= n do
                f[j] = 1
                j = j + 2 * i  -- i.e. j=i(i+2) not j += i, since 2|i(i+1)
            end
        end
        i = i + 2
    end
    
    P = {2}
    for i = 0, (n -1) / 2 -1 do
        x = 3 + 2 * i
        if f[x] == 0 then
            table.insert(P, #P+1, x)
        end
    end

    return P
 
end
 
t1 = os.clock()
n = 10000000
primes(n)

t2 = os.clock()
delta = t2 - t1
print(delta)
