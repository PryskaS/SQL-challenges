SELECT Sum(a.population) 
FROM   city a 
       INNER JOIN country b 
               ON a.countrycode = b.code 
WHERE  b.continent = 'Asia' 