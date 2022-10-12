(*  Scrivere una funzione prod che
calcoli il prodotto di tutti gli
interi tra 2 numeri m ed n. (con m >= n inclusi).
Usare poi questa funzione per scrivere una funzione
Comb(n,k) la quale calcola il numero di combinazioni di n elementi 
presi k a k.
Definita dalla formula matematica: 
C(n, k) = n!/(k! \* (n − k)!)
che equivale anche a: 
C(n, k) = (n − k + 1) · (n − k + 2)· · · n/1 · 2 · · · k  *)

fun prod(m,n) = if(n <= m) then m else n * prod(m,n-1);

fun Comb(n,k) = prod(n-k+1, n) div prod(1,k);

(*TEST*)

Comb(5,3);
Comb(7,5);
Comb(9,1);