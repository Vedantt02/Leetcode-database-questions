# Write your MySQL query statement below
# Write your MySQL query statement below
SELECT name from SalesPerson 
Where sales_id not in (
    SELECT o.sales_id from Orders o
    JOIN Company c on o.com_id = c.com_id
    Where c.name = 'RED'
);