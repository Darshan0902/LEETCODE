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
SELECT customer_id, COUNT(*) AS count_no_trans
FROM Visits
WHERE visit_id NOT IN (SELECT visit_id FROM Transactions)
GROUP BY customer_id;

```

# 9) 1661. Average Time of Process per Machine : 

```
# Write your MySQL query statement below
select
machine_id
, round(sum(if(activity_type = 'start', -1, 1) *timestamp)/count(distinct process_id),3) as processing_time
from activity
group by machine_id

```

# 10) 577. Employee Bonus :

```
# Write your MySQL query statement below
select e.name, b.bonus
from employee e left join bonus b on e.empid = b.empid
where b.bonus <1000 or bonus is null

```

# 11.) 1280. Students and Examinations : 

```

# Write your MySQL query statement below
SELECT s.student_id, s.student_name, sub.subject_name, COUNT(e.subject_name) AS attended_exams
FROM Students s
CROSS JOIN Subjects sub
LEFT JOIN Examinations e ON s.student_id = e.student_id AND sub.subject_name = e.subject_name
GROUP BY s.student_id, s.student_name, sub.subject_name
ORDER BY s.student_id, sub.subject_name;

```

# 12.) 1633. Percentage of Users Attended a Contest : 

```
# Write your MySQL query statement below
with total_user as (
    select 
        count(*) as cnt
    from
        Users 
)
select
    contest_id, round((count(user_id)*100/t.cnt),2) as percentage
from 
    Register r, total_user t
group by  contest_id
order by percentage desc, contest_id

```

# 13.) 570. Managers with at Least 5 Direct Reports : 

```
select name from employee where id in
(select managerId from employee group by managerId
having (count(distinct id)>=5))
```




# 14.) 1934. Confirmation Rate
```

# Write your MySQL query statement below
SELECT a.user_id, round(ifnull(avg(action = 'confirmed'), 0),2) as confirmation_rate
FROM Signups a
LEFT JOIN Confirmations b
ON a.user_id = b.user_id
GROUP BY a.user_id

```
# 15.) 620. Not Boring Movies : 

```

# Write your MySQL query statement below
SELECT * FROM cinema WHERE (id % 2 = 1) AND (description != "boring") ORDER BY rating DESC;



```

# 16.)  1251. Average Selling Price : 

```

# Write your MySQL query statement below
SELECT 
    p.product_id,
    ROUND(COALESCE(SUM(p.price * us.units) / NULLIF(SUM(us.units), 0), 0), 2) AS average_price
FROM 
    Prices p
LEFT JOIN 
    UnitsSold us ON p.product_id = us.product_id
                AND us.purchase_date BETWEEN p.start_date AND p.end_date
GROUP BY 
    p.product_id;




```


#17.) 1075. Project Employees I : 


```



```
