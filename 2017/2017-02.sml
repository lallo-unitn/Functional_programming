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

(*SOLUZIONE*)   fun unione(set1 : insiemediinteri)(set2 : insiemediinteri) = 
                    (fn n =>
                        (set1 n) orelse (set2 n) ) : insiemediinteri;

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
val set2 = (aggiungi (aggiungi vuoto 3) 4);
val set3 = unione set1 set2;

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
set3 5;

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