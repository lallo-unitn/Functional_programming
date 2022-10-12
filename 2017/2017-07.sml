datatype FOR = For of int * (int -> int);

(*  
    int ciclofor (int x) {
        for (int i = 1; i < n; i++) {
            x = f(x);
        }
    }

eval (avente tipo FOR -> (int -> int) )

*)

fun eval(For (n,f)) = 
    fn x =>
        if(n>1) then eval(For(n-1,f))(f x)
        else x; 

(*TEST*)

val f = fn x => x * 2;
eval (For(3, f));
val g = eval (For(3, f));
g 5;