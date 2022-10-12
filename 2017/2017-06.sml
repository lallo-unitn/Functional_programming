(*Si scriva una funzione sommali (avente tipo int -> int list -> int ) che riceve come argomento un intero n ed una lista di interi l. La funzione
sommali somma ad n gli elementi di l che hanno posizione multipla di 3 (se la lista contiene meno di 3 elementi, sommali ritorna n).*)

fun sommali(n : int)(nil) = n
    | sommali(n)(x::nil) = n
    | sommali(n)(x::y::nil) = n
    | sommali(n)(x::y::zs) = hd(zs) + sommali(n)(tl(zs));

(*TEST*)

sommali 0 [1,2,3];
sommali 1 [1,2,3];
sommali 2 [1,2,3,4,5,6];