fun hist(nil) _ = 0
    | hist(x::xs)(c:real,d:real) = 
        if(x < c+d andalso x > c-d) 
            then 1 + hist(xs)(c,d)
        else hist(xs)(c,d);

hist [0.1, 0.5, 1.0, 3.0, 2.5] (1.0, 0.5);