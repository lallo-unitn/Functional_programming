fun elementi_pari(nil) = nil
    | elementi_pari(x::nil) = nil
    | elementi_pari(x::xs) = hd(xs) :: elementi_pari(tl(xs));


elementi_pari [1,5,2,10]