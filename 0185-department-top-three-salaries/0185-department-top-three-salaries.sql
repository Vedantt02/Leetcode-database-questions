# Write your MySQL query statement below
WITH ranked_salary AS
(
    SELECT
        e.name,
        e.salary,
        e.departmentId,
        DENSE_RANK() OVER(
            PARTITION BY departmentId
            ORDER BY salary DESC
        ) AS salary_rank
    FROM Employee e
)

SELECT
    d.name AS Department,
    r.name AS Employee,
    r.salary AS Salary
FROM ranked_salary r
JOIN Department d
ON r.departmentId = d.id
WHERE salary_rank <= 3;