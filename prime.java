public class prime
{
    public static int[] primes(int n)
    {
        int f[]=new int [n + 1];
        for(int i=0; i<= n; i++){
            f[i]=i %2;}

    double nn = Math.sqrt(n);
    int i = 3;
    int j;
    while (i <= nn){
        if (f[i] == 1) {
            for(j=i*i; j<= n; j+= 2*i){
                f[j]=0;}
        }
        i += 2;
    }

    int P[]=new int [n];
    P[0] = 2;
    int x;
    int k=0;
    for(i=0; i< (n -1) / 2; i++){
        x = 3 + 2 * i;
        if (f[x] == 1) {
            P[k]=x;k ++;
        }
    }

    return P;
}


    public static void main(String[] args)
    {

    double begintime = System.currentTimeMillis();
    primes(10000000);
    double endtime = System.currentTimeMillis();

    double costTime = endtime - begintime;

    System.out.printf("%f", costTime / 1000);
    }
 
 
}
