(SELECT city, 
        Length(city) 
 FROM   station 
 ORDER  BY Length(city) ASC, 
           city ASC 
 LIMIT  1) 
UNION 
(SELECT city, 
        Length(city) 
 FROM   station 
 ORDER  BY Length(city) DESC, 
           city ASC 
 LIMIT  1) 