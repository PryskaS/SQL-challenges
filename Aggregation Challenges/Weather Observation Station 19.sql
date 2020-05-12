SELECT Cast((Sqrt((Power((Min(lat_n)-Max(lat_n)), 2)) + (Power((Min(long_w)-Max( 
       long_w) 
       ), 2) 
       )))AS DECIMAL (7, 4)) 
FROM   station 