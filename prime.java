public class prime
{
    public static Integer[] primes(int n)
    {
        int f[]=new int [n + 1];
        for(int i=0; i< n+1; i++)
            if(i%2 == 0) f[i]=1;
            else f[i] = 0;

    double nn = Math.sqrt(n);
    int i = 3;
    int j;
    while (i <= nn){
        if (f[i] == 0)
            {j = i * i;
            while (j <= n)
                {f[j] = 1;
                j += 2 * i;}  //i.e. j=i(i+2) not j += i, since 2|i(i+1)
            }
        i += 2;
    }

    Integer []P={2};
    List<Integer> list=new ArrayList(Arrays.asList(P));//**须定义时就进行转化**
    Integer x;
    for(i=0; i< (n -1) / 2; i++){
        {x = 3 + 2 * i;
        if (f[x] == 0) {P.add(P.size(), x);}
        }
    }

    Integer[] nP=new Integer[list.size()];
    nP = list.toArray(new Integer[0]);
    return nP;
}

    

    public static void main(String[] args)
    {

    long begintime = System.currentTimeMillis();
    primes(10000000);
    long endtime = System.currentTimeMillis();

    long costTime = endtime - begintime;

    System.out.printf("%f ",costTime);
    }
 
 
}
