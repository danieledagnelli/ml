fun is_valid_date(d, m) = 
    if d < 1 then false
        else if m = "January" andalso d > 31 then false
        else if m = "February" andalso d > 28 then false
        else if m = "March" andalso d > 31 then false
        else if m = "April" andalso d > 30 then false
        else if m = "May" andalso d > 31 then false
        else if m = "June" andalso d > 30 then false
        else if m = "July" andalso d > 31 then false
        else if m = "August" andalso d > 31 then false
        else if m = "September" andalso d > 30 then false
        else if m = "October" andalso d > 31 then false
        else if m = "November" andalso d > 30 then false
        else if m = "December" andalso d > 31 then false
        else true;

  
    
