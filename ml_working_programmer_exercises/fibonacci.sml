fun nextfib (prev, curr :int) = (curr, prev+curr);
  
fun fibpair (n) =
  if n=1 then (0, 1) else nextfib (fibpair(n-1));
