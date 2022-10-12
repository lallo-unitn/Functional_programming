(*ESEMPIO di esecuzione
Dato il file "text2.txt" che contiene:
abcdef
Eseguendo il comando use "esercizio.sml";
dovrà essere prodotto il seguente risultato:
val it = ["b","d","f"]: string list*)

fun f filename = 
    let
      val file = TextIO.openIn(filename);
      val str = TextIO.inputAll(file);
      fun cerca_pari(nil) = nil
        | cerca_pari(x::nil) = nil
        | cerca_pari(x::xs)  =  if(x = #" " orelse
                                   x = #"\t" orelse
                                   x = #"\n") 
                                    then cerca_pari(xs)
                                else Char.toString(hd(xs)) :: cerca_pari(tl(xs));  
    in
      TextIO.closeIn file;
      cerca_pari(explode str)
    end;