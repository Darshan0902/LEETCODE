# Write your MySQL query statement below
select user_id , CONCAT(UPPER(LEFT(name,1)),LOWER(RIGHT,-1(name,LENGTH(name)-1))) AS name FROM users ORDER BY user_id
