SELECT DISTINCT city 
FROM   station 
WHERE  id IN (SELECT DISTINCT id 
              FROM   station 
              WHERE  city REGEXP '^[^aeiou]' 
                      OR city REGEXP '[^aeiou]$') 