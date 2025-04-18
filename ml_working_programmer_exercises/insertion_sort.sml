fun ins (x, []) : real list = [x]
 | ins (x, y::ys) =
  if (x <= y) then x::y::ys
    else y::ins(x,ys);


fun insort [] = []
  | insort (x::xs) = ins(x, insort xs);


insort [10.1, 1.0, 2.0, 30.0];
