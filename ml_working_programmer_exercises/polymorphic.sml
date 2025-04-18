op=;


infix mem;
fun (x mem []) = false
  | (x mem (y::l)) = (x=y) orelse (x mem l);

fun newmem (x, xs) = if x mem xs then xs else x::xs;


fun setof       []      = []
  | setof (x::xs)       = newmem (x, setof xs);


fun union ([], ys)      = ys
  | union (x::xs, ys)   = newmem (x, union(xs, ys));


fun inter ([], ys)      = []
  | inter(x::xs, ys)    = if x mem ys then x::inter(xs, ys)
                                      else inter(xs, ys);

infix subs;
fun ([] subs ys)        = true
  |  ((x::xs) subs ys)   = (x mem ys) andalso (xs subs ys);
