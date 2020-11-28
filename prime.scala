
import math.sqrt
import Array._

def primes(n:Int):Vector[Int]=
    {

    var f = (0 to n).map(i=>i %2).toArray

    val nn = math.sqrt(n)
    var i = 3
    while (i <= nn){
        if (f(i) == 1) {
            var j = i*i
            while (j<=n){
                f(j)=0
                j+= 2*i}
            }
        i += 2
    }

    var P = Vector(2)
    for(i <- 0 to (n -1) / 2-1){
        var x = 3 + 2 * i
        if (f(x) == 1) {
            P = P:+x
        }
    }

    return P
}

val startTime: Long = System.currentTimeMillis
primes(1000)
val endTime: Long = System.currentTimeMillis
val costTime = endTime - startTime
println(costTime / 1000)
