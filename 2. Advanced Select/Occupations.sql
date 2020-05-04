SET @r1=0, @r2=0, @r3=0, @r4=0; 

SELECT Min(doctor), 
       Min(professor), 
       Min(singer), 
       Min(actor) 
FROM  (SELECT CASE 
                WHEN occupation = 'Doctor' THEN ( @r1 := @r1 + 1 ) 
                WHEN occupation = 'Professor' THEN ( @r2 := @r2 + 1 ) 
                WHEN occupation = 'Singer' THEN ( @r3 := @r3 + 1 ) 
                WHEN occupation = 'Actor' THEN ( @r4 := @r4 + 1 ) 
              end AS RowNumber, 
              CASE 
                WHEN occupation = 'Doctor' THEN name 
              end AS Doctor, 
              CASE 
                WHEN occupation = 'Professor' THEN name 
              end AS Professor, 
              CASE 
                WHEN occupation = 'Singer' THEN name 
              end AS Singer, 
              CASE 
                WHEN occupation = 'Actor' THEN name 
              end AS Actor 
       FROM   occupations 
       ORDER  BY name) Temp 
GROUP  BY rownumber 