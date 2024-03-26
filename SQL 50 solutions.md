# 1) 1757. Recyclable and Low Fat Products
```
# Write your MySQL query statement below 
SELECT product_id FROM Products where low_fats = 'Y' and recyclable = 'Y'

```

# 2) 584. Find Customer Referee : 

```
# Write your MySQL query statement below
select name from Customer
where referee_id != 2 or referee_id is null

```

# 3) 595. Big Countries : 

```
# Write your MySQL query statement below
select name , population , area from World where area >= 3000000 or population >= 25000000

```

# 4) 1148. Article Views I : 

```
# Write your MySQL query statement below
select distinct(author_id) as id from Views where author_id = viewer_id
ORDER BY author_id ASC
```

# 5) 1683. Invalid Tweets :

```
# Write your MySQL query statement below
select tweet_id from Tweets where char_length(content) > 15

```

# 6) 1378. Replace Employee ID With The Unique Identifier : 

```
select unique_id ,name
from employees as emp
left join employeeUNI as uni
on uni.id = emp.id

```

# 7) 1068. Product Sales Analysis I : 

```

# Write your MySQL query statement below
select product_name,year,price from Product,Sales 
where Product.product_id = Sales.product_id



```

# 8) Customer Who Visited but Did Not Make Any Transactions : 

```
# Write your MySQL query statement below
SELECT v.customer_id, COUNT(t.visit_id) AS count_no_trans
FROM Visits v
LEFT JOIN Transactions t ON v.visit_id = t.visit_id
GROUP BY v.customer_id
HAVING COUNT(t.visit_id) = 0

```
