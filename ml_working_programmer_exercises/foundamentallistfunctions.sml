(*check if list is null*)
fun null [] = true
  | null (_::_) = false;


(*return head of the list*)
fun hd (x::_) = x;

(*return tail of the list*)
fun tl (_::xs) = xs;

fun prod [] = 1
  | prod (n::ns) = n * (prod ns);


fun nlength [] = 0
  | nlength (x::xs) = 1 + length xs;


local
  fun addlen (n, []) = n
    | addlen (n, x::l) = addlen (n+1, l)
in
  fun lentgh l = addlen(0, l)
end;


(* return first i elements *)
fun take ([], i) = []
  | take (x::xs, i) = if i>0 then x::take(xs, i-1)
                            else [];


(* recursive take *)
fun rtake ([], _, taken) = taken
  | rtake (x::xs, i, taken) =
          if i>0 then rtake(xs, i-1, x::taken)
                      else taken;


(*remove first i elements from a list*)
fun drop ([], _) = []
  | drop (x::xs, i) = if i > 0 then drop (xs, i-1)
                               else x::xs;



(*return ith element*)
fun  nth(x::xs, l) = if l = 0 then x
                    else nth(xs, l-1);
