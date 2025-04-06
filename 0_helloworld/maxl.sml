fun maxl [m]: int = m
  | maxl (m::n::ns) = if m > n then maxl(m::ns)
                               else maxl(n::ns);
