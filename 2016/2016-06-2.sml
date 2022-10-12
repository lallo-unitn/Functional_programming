fun noduplen(nil) = 0
    | noduplen(x::xs) = if(List.exists(fn y => y=x)(xs)) then noduplen(xs)
                        else 1 + noduplen(xs);

(*TEST*)

noduplen ["pera", "pera", "pera", "pera"];
noduplen ["pera", "pera", "pera", "mela"];
noduplen ["pera", "pera", "banana", "mela"];