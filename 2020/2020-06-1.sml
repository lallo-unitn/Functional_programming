fun sommali(n: int)(nil) = n  
    | sommali(n)(x::nil) = n
    | sommali(n)(x::xs) = hd(xs) + sommali(n)(tl(xs));

(*TEST*)

sommali 0 [1,2];
sommali 1 [1,2,3];
sommali 2 [1,2,3,4];