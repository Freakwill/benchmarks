#!/usr/bin/env node

moment = require('moment');

function primes(n){
    // sieve of Eratosthenes
    var f = new Array();
    for (var i = 0; i <= n; i++) {
        f[i] = i % 2;
    }
    nn = Math.sqrt(n);
    for (var i = 3; i <= nn; i=i+2) {
        if (f[i] == 1) {
            for (var j=i*i; j<=n; j=j+2*i) {
                f[j]=0;
            }
        }
    }
    var p = [2];
    for (var i = 3; i <= n; i=i+2) {
        if (f[i]==1) {
            p.push(i);
        }
    }
    return p
}

t1 = moment().seconds() + moment().milliseconds()/1000;
n = 10000000;   //100以内的素数
P = primes(n);
t2 = moment().seconds() + moment().milliseconds()/1000;

console.log(t2 - t1)
