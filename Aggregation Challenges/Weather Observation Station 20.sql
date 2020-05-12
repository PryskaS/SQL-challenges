SELECT Round(s.lat_n, 4) 
FROM   station s 
WHERE  (SELECT Round(Count(s.id) / 2) - 1 
        FROM   station) = (SELECT Count(s1.id) 
                           FROM   station s1 
                           WHERE  s1.lat_n > s.lat_n); 