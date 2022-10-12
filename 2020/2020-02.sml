fun f(nil) = true
    | f(x::xs) = if( x <= hd(xs))
                    then f(xs)
                else false;

(*TEST*)

f[1,2,2,3,4];
f[3,2,1];
f[4,12,3,44,0];