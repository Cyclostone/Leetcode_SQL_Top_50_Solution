SELECT e2.unique_id, e1.name
FROM Employees e1
    LEFT OUTER JOIN EmployeeUNI e2
    ON e1.id = e2.id
-- Beats 45.11% of users with MySQL --