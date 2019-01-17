package main

import (
"fmt"
"time"
"math"
)

func primes(n int) []int{
    var f [10000000+1]int;
    var i int;
    for i=0; i< n+1; i++{
        if i%2 == 0 {
            f[i] = 0;
        } else {
            f[i] = 1;
        }
    }

    nn := int(math.Floor(math.Sqrt(float64(n))));
    i = 3;
    var j int;
    for i=0; i < nn; i +=2 {
        if f[i] == 1 {
            for j = i * i; j <= n; j+= 2*i {
                f[j] = 0;
                j += 2 * i;
                }  //i.e. j=i(i+2) not j += i, since 2|i(i+1)
            }
    }

    var P []int = make([]int, n)
    P = append(P, 2);
    var x int;
    for i=0; i< (n -1) / 2; i++ {
        x = 3 + 2 * i;
        if f[x] == 1 {
            P = append(P, x);
        }
    }
    return P;
}

func main() {
    t1 := time.Now()
    primes(10000000);
    t2 := time.Now()
    fmt.Println(t2.Sub(t1) /1000)
}

