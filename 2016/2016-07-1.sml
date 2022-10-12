datatype lambda_expr = Var of string
    | Lambda of string * lambda_expr
    | Apply of lambda_expr * lambda_expr;

fun is_free(nome : string) = 
    fn Var v => v <> nome
    | Lambda(v,e1) => if(v = nome) then false
                        else is_free(nome)(e1)
    | Apply(e1,e2) => is_free(nome)(e1) andalso is_free(nome)(e2);


(*TEST*)

is_free "a" (Var "a");

is_free "b" (Var "a");

is_free "a" (Lambda ("a", Apply((Var "a"), Var "b")));

is_free "b" (Lambda ("a", Apply((Var "a"), Var "b")));