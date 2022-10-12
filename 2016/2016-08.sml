(*


IL QUESITO SI PRESENTA IDENTICO A QUELLO DELLA PROVA 2017-02;
UNICA DIFFERENZA STA NELLA RICHIESTA DI IMPLEMENTARE UNA FUNZIONE 
INTERSEZIONE INVECE DI UNA UNIONE


*)

type insiemediinteri = int -> bool;

val vuoto:insiemediinteri = fn n => false;

val aggiungi = 
    fn f:insiemediinteri => 
        fn x:int => 
            (fn n:int => 
                if (n = x)
                    then true
            else (f : insiemediinteri) n):insiemediinteri; (*TESTO IN RECOVERY
                  ||||||||||||||||||||                       ERRATO*)

val contiene = fn f:insiemediinteri => fn n:int => f n;

(*SOLUZIONE*)   fun intersezione(set1 : insiemediinteri)(set2 : insiemediinteri) = 
                    (fn n =>
                        (set1 n) andalso (set2 n) ) : insiemediinteri;

(*TEST*)

print("\n");
(aggiungi vuoto 1) 1;
print("\n");
(aggiungi (aggiungi vuoto 1) 2) 1;
print("\n");
(aggiungi (aggiungi vuoto 1) 2) 2;
print("\n");
(aggiungi (aggiungi vuoto 1) 2) 3;
print("\n");
print("\n");
print("\n");

val set1 = (aggiungi (aggiungi vuoto 1) 2);
val set2 = (aggiungi (aggiungi vuoto 2) 3);
val set3 = intersezione set1 set2;

print("\n");
print("\n");
print("\n");
set3 1;
print("\n");
set3 2;
print("\n");
set3 3;
print("\n");
set3 4;
print("\n");

(*TESTO ERRATO

val aggiungi = 
    fn f:insiemediinteri => 
        fn x:int => (
            fn n:int => 
                if (n = x)
                    then true
                else false):insiemediinteri;
                     |||||
*)