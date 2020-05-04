SELECT n, 
       CASE 
         WHEN p IS NULL THEN 'Root' 
         WHEN n IN (SELECT p 
                    FROM   bst) THEN 'Inner' 
         ELSE 'Leaf' 
       end AS Node 
FROM   bst 
ORDER  BY n 