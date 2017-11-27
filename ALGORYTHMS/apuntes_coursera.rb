STEPS TO DEVELOPING A USABLE ALGORITHM.
・Model the problem.
・Find an algorithm to solve it.
・Fast enough? Fits in memory?
・If not, figure out why.
・Find a way to address the problem.
・Iterate until satisfied.

SCIENTIFIC METHOD
Observe
Hypothesize
Predict
Verify
Validate

Principles
	Experiments must be reproducible
	Hypotheses must de able to be proven wrong

RUNNING time
T(N) = N
lg(T(N)) = b lg N + c
b = pendiente es 3
c = -33.2013
lg(T(N)) = lg (N^b)
T(N) = a N^b
a = 2^c


graficado en logaritmo podemos encontrar la pendiente
que será a N^b

3 loops solo reemplazando
sería 
~(1/6)N^3 * 3 ~ (1/2)N^3 
How to estimate a descrete sum
A) take a discrete mathematical course
B) replace the sum with an integral, and use calculus

1+2+3+...N      Sumatoria de i, desde i hasta N
								Integral de x dx, desde x=1 hasta N
								~ (1/2)N^2

1+(1/2)+(1/3)+...+1/N  Sumatoria de 1/i, desde i hasta N
											 Integral de 1/x dx, desde x=1 hasta N
											 = ln N
3-sum triple loop Sumatoria de 1, desde i hasta N 
									= Ans											 						 
									Sumatoria de Ans, desde j hasta N
									= Ans
									Sumatoria de Ans, desde k hasta N

									Integral de z dz, desde z=1 hasta N
									= Ans
									Integral de y dy, desde y=1 hasta N
									= Ans
									Integral de x dx, desde x=1 hasta N
									= Ans
									~ (1/6) N^3
int sum = 0;
for (int i = 0; i < n; i++)
    for (int j = i+1; j < n; j++)
        for (int k = 1; k < n; k = k*2)
            if (a[i] + a[j] >= a[k]) sum++;

How many array accesses ?
para mi
(1/2) N^2 + (1/2) N^2 + N/(2^(N-1)) 
solución
(1/2) N^2 * 3 lg N
= (3/2) N^2 * lg N


Resumen

algorithm													worst-case time

quick-find												M*N
quick-union												M*N
weighted QU 											N + M log N
QU + path compression  						N + M log N
weighted QU + path compression		N + M log* N	

In weighted quick-union(by size), we make the root
of the smaller tree (in terms of number of nodes)
point to the root of the larger tree. So, in this
example, the algorithm sets id[8] = 0

Problem u(3,6)

    0               8
1 2 3 4 5           7 9
                    6

   i    0  1  2  3  4  5  6  7  8  9
-------------------------------------
id[i]   0  0  0  0  0  0  7  8  8  8

Solution u(3,6)

    0               
1 2 3 4 5 8 9         
          7
          6       
with everyone (1,2,3,4,5) closer to the root
instead of making them climb up the tree

   i    0  1  2  3  4  5  6  7  8  9
-------------------------------------
id[i]   0  0  0  0  0  0  7  8  0  8










