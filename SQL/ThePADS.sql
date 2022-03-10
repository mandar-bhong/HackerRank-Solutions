SELECT CONCAT(Name, '(', LEFT (Occupation, 1),')') 
FROM OCCUPATIONS
Order by Name ;


SELECT CONCAT('There are a total of ',COUNT(Occupation),' ',LOWER(Occupation) ,'s.')
FROM OCCUPATIONS
Group by Occupation
Order by COUNT(Occupation),Occupation;
