datatype intonil = Nil | Int of int;

type ambiente = string -> intonil;

val ambientevuoto = fn _:string => Nil;

fun lega(amb : ambiente)(nome)(valore) = (
    fn n => if(n = nome)
                then (Int valore)
            else 
                amb n
) : ambiente;

((lega ambientevuoto "a"1)"a");
((lega ambientevuoto "a"1)"boh");
((lega (lega ambientevuoto "a"1)"boh"~1)"boh");
((lega (lega ambientevuoto "a"1)"boh"~1)"mah");