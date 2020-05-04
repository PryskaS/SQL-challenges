SELECT CASE 
         WHEN a + b > c THEN 
           CASE 
             WHEN a = b 
                  AND b = c THEN 'Equilateral' 
             WHEN a = b 
                   OR b = c 
                   OR a = c THEN 'Isosceles' 
             WHEN a != b 
                   OR b != c 
                   OR a != c THEN 'Scalene' 
           end 
         ELSE 'Not A Triangle' 
       end 
FROM   triangles; 