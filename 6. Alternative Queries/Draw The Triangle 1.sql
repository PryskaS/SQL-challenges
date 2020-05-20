SELECT REPEAT('* ', @number := @number - 1) 
FROM   information_schema.tables, 
       (SELECT @number := 21) t 
LIMIT  20 