fun pos d = neg (d-2.0) + 1.0/d
and neg d = if d>0.0 then pos (d-2.0) - 1.0/d
                     else 0.0
