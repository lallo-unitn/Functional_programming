datatype Expr = X
    | Y
    | Avg of Expr * Expr
    | Mul of Expr * Expr;

fun compute(X)(x:int)(y:int) = x
    | compute(Y)(x:int)(y:int) = y
    | compute(Avg(e1,e2))(x:int)(y:int) = ( compute(e1)(x)(y) + compute(e2)(x)(y) ) div 2
    | compute(Mul(e1,e2))(x:int)(y:int) = compute(e1)(x)(y) * compute(e2)(x)(y);


(*TEST*)

(compute X) 4 2; (* Restitusce 4 *)
(compute Y) 4 2; (* Restitusce 2 *)
compute (Avg(X,Y)) 4 2; (* Restitusce la media tra 4 e 2 = 3 *)
compute (Mul(X,Y)) 4 2; (* Restitusce moltiplicazione tra 4 e 2 = 8 *)
compute (Avg(X,Y)) 4 (compute (Mul(X,Y)) 4 2); (* Restitusce moltiplicazione tra 4 e 2 = 8 e poi fa la media tra 8 e 4 = 6*)