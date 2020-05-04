SELECT DISTINCT city 
FROM   station 
WHERE  Lower(Substr(city, Length(city), 1)) IN ( 'a', 'e', 'i', 'o', 'u' ); 