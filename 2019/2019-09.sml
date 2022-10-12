fun f filename = 
    let
      val file = TextIO.openIn(filename)
      val str = TextIO.inputAll(file)
      fun retno_blank(nil) = nil
        | retno_blank(x::xs) =   if(x = #" " orelse
                                    x = #"\n" orelse
                                    x = #"\t"
                                ) then retno_blank(xs)
                                else Char.toString(x) :: retno_blank(xs);
    in
      TextIO.closeIn(file);
      retno_blank(explode(str))
    end;