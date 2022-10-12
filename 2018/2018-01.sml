(*Si scriva una funzione is_bound (avente tipo string -> lambda_expr -> bool ) che riceve come argomenti una stringa (che rappresenta il nome
di una variabile / funzione) ed una Lambda-espressione, ritornando true se la variabile indicata appare come legata nell'espressione, false
altrimenti.*)

datatype lambda_expr = Var of string
    | Lambda of string * lambda_expr
    | Apply of lambda_expr * lambda_expr;

fun is_bound(v1:string)(Var v2) = v1=v2
    | is_bound(v1)(Lambda(v2,e1)) = if(v1=v2) then true 
                                    else is_bound(v1)(e1)
    | is_bound(v1)(Apply(e1,e2)) = is_bound(v1)(e1) orelse is_bound(v1)(e2);

(*TEST*)

is_bound "a" (Var "a");
is_bound "b" (Var "a");
is_bound "a" (Lambda ("a", Apply((Var "a"), Var "b")));
is_bound "b" (Lambda ("a", Apply((Var "a"), Var "b")));