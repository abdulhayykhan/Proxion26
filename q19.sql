-- Q19. Longest Login Streak Per User
-- Tables: Logins

SELECT user_id, MAX(streak) AS longest_streak
FROM (
    SELECT user_id,
        COUNT(*) AS streak
    FROM (
        SELECT user_id,
            login_date,
            DATE_SUB(login_date,
                INTERVAL ROW_NUMBER() OVER (
                    PARTITION BY user_id ORDER BY login_date
                ) DAY
            ) AS grp
        FROM (SELECT DISTINCT user_id, login_date FROM Logins) AS d
    ) AS grouped
    GROUP BY user_id, grp
) AS streaks
GROUP BY user_id;
