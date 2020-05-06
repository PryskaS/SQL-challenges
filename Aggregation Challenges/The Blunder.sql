SELECT Ceil(Avg(salary) - Avg(REPLACE(salary, '0', ''))) 
FROM   employees; 