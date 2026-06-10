-- Write your PostgreSQL query statement below
Select email AS Email from Person Group By email having Count(*) > 1;