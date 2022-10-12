datatype codice = rosso of string
    | giallo of string
    | verde of string;

fun arriva(nil)(rosso gino) = (rosso gino) :: nil
    | arriva(nil)(giallo gino) = (giallo gino) :: nil
    | arriva(nil)(verde gino) = (verde gino) :: nil

    | arriva( (rosso x)::xs )(rosso gino) = (rosso x) :: ( arriva(xs)(rosso gino) )
    | arriva( (rosso x)::xs )(giallo gino) = (rosso x) :: ( arriva(xs)(giallo gino) )
    | arriva( (rosso x)::xs )(verde gino) = (rosso x) :: ( arriva(xs)(verde gino) )

    | arriva( (giallo x)::xs )(rosso gino) = (rosso gino) :: ( (giallo x) :: xs ) 
    | arriva( (giallo x)::xs )(giallo gino) = (giallo x) :: ( arriva(xs)(giallo gino) )
    | arriva( (giallo x)::xs )(verde gino) = (giallo x) :: ( arriva(xs)(verde gino) )

    | arriva( (verde x)::xs )(rosso gino) = (rosso gino) :: ( (verde x) :: xs )
    | arriva( (verde x)::xs )(giallo gino) = (giallo gino) :: ( (verde x) :: xs )
    | arriva( (verde x)::xs )(verde gino) = (verde x) :: ( arriva(xs)(verde gino) );

    
arriva [rosso "topolino", rosso "cip", giallo "ciop", verde "paperino", verde "pluto"] (giallo "clarabella");