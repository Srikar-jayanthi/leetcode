SELECT
    r.contest_id,
    ROUND(COUNT(DISTINCT r.user_id) * 100.0 / total_users.total, 2) AS percentage
FROM
    register r,
    (SELECT COUNT(*) AS total FROM users) total_users
GROUP BY
    r.contest_id, total_users.total
ORDER BY
    percentage DESC,
    r.contest_id ASC;
