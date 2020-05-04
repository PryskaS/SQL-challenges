SELECT c.company_code, 
       c.founder, 
       Count(DISTINCT lm.lead_manager_code), 
       Count(DISTINCT sm.senior_manager_code), 
       Count(DISTINCT m.manager_code), 
       Count(DISTINCT e.employee_code) 
FROM   company c, 
       lead_manager lm, 
       senior_manager sm, 
       manager m, 
       employee e 
WHERE  c.company_code = lm.company_code 
       AND lm.lead_manager_code = sm.lead_manager_code 
       AND sm.senior_manager_code = m.senior_manager_code 
       AND m.manager_code = e.manager_code 
GROUP  BY c.company_code, 
          c.founder 
ORDER  BY c.company_code 