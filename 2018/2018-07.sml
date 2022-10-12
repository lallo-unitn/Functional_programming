(*
    int ITER (int x) {
        for (int i = 1; i < n; i++) {
            x = f(x);
        }
    }
*)

datatype ITER = Iter of int * (int -> int);

fun eval(Iter(n,f)) = fn x => if(n > 0) then eval(Iter(n-1,f)) (f(x))
                                        else x;