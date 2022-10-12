datatype espressione = costante of int
    | variabile of string
    | somma of espressione * espressione
    | sottrazione of espressione * espressione
    | prodotto of espressione * espressione
    | divisione of espressione * espressione
    | var of string * espressione * espressione;


fun cerca(nil) _ = 0
    | cerca((x,y)::zs)(nome) = if(nome = x) then y
                                else cerca(zs)(nome)

and 

    eval(amb) = 
        fn costante n => n
            | variabile nome => cerca(amb)(nome)
            | somma (a1, a2) => (eval amb a1) + (eval amb a2)
            | sottrazione (a1, a2) => (eval (amb) ( a1)) - (eval (amb) ( a2))
            | prodotto (a1, a2) => (eval (amb) ( a1)) * (eval (amb) ( a2))
            | divisione (a1, a2) => (eval (amb) ( a1)) div (eval (amb) ( a2))
            | var (nome, a1,a2) => eval ((nome,eval amb a1)::amb) a2; 
    

        (*Var (x, e1, e2) é valutata al valore di 
        e2 dopo aver assegnato ad x il valore di e1.*)
