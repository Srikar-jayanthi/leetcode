/* Write your PL/SQL query statement below */
SELECT d.name AS Department,e.name AS Employee,e.salary AS Salary
FROM
Employee e
JOIN
Department d
ON e.departmentId=d.id
WHERE e.salary=(SELECT MAX(salary)FROM
Employee WHERE departmentID=d.id);