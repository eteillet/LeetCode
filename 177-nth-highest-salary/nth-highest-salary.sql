CREATE FUNCTION getNthHighestSalary(@N INT) RETURNS INT AS
BEGIN
    RETURN (
        SELECT MAX(salary) as getNthHighestSalary
        FROM (
            SELECT salary, DENSE_RANK() OVER (ORDER BY Salary DESC) as rn
            FROM Employee
        ) CTE
        WHERE CTE.rn = @N
    );
END