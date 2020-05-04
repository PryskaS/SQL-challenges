SELECT Concat(name, CASE 
                      WHEN occupation = "doctor" THEN "(d)" 
                      WHEN occupation = "professor" THEN "(p)" 
                      WHEN occupation = "singer" THEN "(s)" 
                      WHEN occupation = "actor" THEN "(a)" 
                    end) 
FROM   occupations 
ORDER  BY name; 

SELECT "there are a total of", 
       Count(occupation), 
       Concat(Lower(occupation), "s.") 
FROM   occupations 
GROUP  BY occupation 
ORDER  BY Count(occupation) ASC, 
          occupation ASC; 