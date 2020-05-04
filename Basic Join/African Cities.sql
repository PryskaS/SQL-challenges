SELECT a.name 
FROM   city a 
       INNER JOIN country b 
               ON a.countrycode = b.code 
WHERE  continent = 'Africa' 