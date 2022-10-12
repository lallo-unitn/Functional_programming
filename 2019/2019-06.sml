(*C
dovrà dare in output:
val it = [2, 3, 8, ~1, 26, 35]: int list*)

fun f(nil) = nil
    |f(x::xs) = if(x>=0) then ((x*x)-1) :: f(xs)
                else ((x*x)+1) :: f(xs);

(*TEST*)

f [~1,2,3,0,~5,6];