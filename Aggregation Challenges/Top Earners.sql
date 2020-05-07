SELECT ( salary * months )AS earnings, 
       Count(*) 
FROM   employee 
GROUP  BY 1 
ORDER  BY earnings DESC 
LIMIT  1; 