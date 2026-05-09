-- Q2. Users with 3+ Consecutive Login Days
-- Tables: Logins

SELECT DISTINCT l1.user_id
FROM Logins l1
JOIN Logins l2 ON l1.user_id = l2.user_id
 AND l2.login_date = DATE_ADD(l1.login_date, INTERVAL 1 DAY)
JOIN Logins l3 ON l1.user_id = l3.user_id
 AND l3.login_date = DATE_ADD(l1.login_date, INTERVAL 2 DAY);
