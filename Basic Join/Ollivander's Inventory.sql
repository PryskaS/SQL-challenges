/* OBJETIVO: quais varinhas são "boas" e baratas 
-- TABELA: id, age, coins_needed, power 
---------- order by power desc 
---------- order by age desc 
*/ 
SELECT a.id, 
       b.age, 
       a.coins_needed, 
       a.power 
FROM   wands a 
       INNER JOIN wands_property b 
               ON a.code = b.code 
-- varinhas não-malígnas: 
WHERE  b.is_evil != 1 
       -- Mínimo de moedas necessárias: 
       AND a.coins_needed = (SELECT Min(wands.coins_needed) 
                             FROM   wands 
                                    INNER JOIN wands_property 
                                            ON wands.code = wands_property.code 
                             WHERE  wands_property.age = b.age 
                                    AND wands.power = a.power) 
ORDER  BY a.power DESC, 
          b.age DESC 