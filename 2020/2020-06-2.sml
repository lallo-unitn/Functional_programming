fun conta(nil) = 0
    | conta(x :: xs) =  if( List.exists (fn y => x=y) xs)
                            then conta xs
                        else 1 + conta xs;

(*TEST*)

conta ["pera", "pera", "pera", "pera"]; 
conta ["red", "red", "green", "blue"]; 