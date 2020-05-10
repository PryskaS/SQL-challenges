SELECT Round(long_w, 4) 
FROM   station 
WHERE  lat_n = (SELECT Max(lat_n) 
                FROM   station 
                WHERE  lat_n < 137.2344); 