fun headcol []          = []
  | headcol ((x::_) :: rows ) = x :: headcol rows;

fun tailcols []         = []
  | tailcols ((_::xs) :: rows) = xs :: tailcols rows
  
  
fun transp ([]::rows)   = []
  | transp rows         = headcol rows :: transp (tailcols rows);


fun dotprod ([], []) = 0.0
  | dotprod (x::xs, y::ys) = x*y + dotprod (xs, ys);
