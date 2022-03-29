

SELECT c.company_code,c.founder,
COUNT(distinct lm.lead_manager_code) ,
COUNT(distinct sm.senior_manager_code) ,
COUNT(distinct m.manager_code) ,
COUNT(distinct e.employee_code) 
FROM Employee e,Manager m, Senior_Manager sm, Lead_Manager lm, Company c
where  e.manager_code = m.manager_code 
and m.senior_manager_code = sm.senior_manager_code
and sm.lead_manager_code = lm.lead_manager_code
and lm.company_code = c.company_code
Group by c.company_code,c.founder
order by c.company_code
