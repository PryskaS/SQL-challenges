SELECT c.continent, 
       Floor(Avg(ci.population)) 
FROM   country c 
       INNER JOIN city ci 
               ON c.code = ci.countrycode 
GROUP  BY c.continent; 