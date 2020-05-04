SELECT (SELECT Count(city) 
        FROM   station) - (SELECT Count(DISTINCT city) 
                           FROM   station); 