(*Si scriva una funzione conta (avente tipo ''a list -> int ) che riceve
come argomento una lista di ''a l. La funzione conta ritorna il numero di
elementi della lista senza considerare i duplicati.*)

fun conta(nil) = 0
    | conta(x::xs) = if(List.exists(fn y => x=y) xs) then conta(xs)
                        else 1 + conta(xs);

print("\n");
conta ["pera", "pera", "pera", "pera"];
print("\n");
conta ["red", "red", "green", "blue"];
print("\n");
conta ["red"];
print("\n");
conta [];
print("\n");
conta [1,2,4,5,6,0,1,4,5];
print("\n");
conta [true, false, true, false];
print("\n");
conta [#"A",#"a",#"B",#"b"];
print("\n");