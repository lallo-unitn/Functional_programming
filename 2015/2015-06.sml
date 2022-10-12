datatype naturale = zero | successivo of naturale;

val rec somma = fn zero => (fn n => n)
    | successivo a => (fn n => successivo (somma a n));

fun prodotto(zero) _ = zero
    | prodotto(successivo n1)(n2) = 
        somma n2 (prodotto n1 n2);

(*TEST*)

prodotto (successivo (successivo (successivo zero))) (successivo (successivo (successivo zero)));