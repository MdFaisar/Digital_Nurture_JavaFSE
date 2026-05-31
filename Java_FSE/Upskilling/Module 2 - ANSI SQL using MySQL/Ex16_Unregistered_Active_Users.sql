SELECT
    u.user_id,
    u.full_name,
    u.email,
    u.city,
    u.registration_date
FROM users u
WHERE u.registration_date >= CURDATE() - INTERVAL 30 DAY
  AND u.user_id NOT IN (
    SELECT DISTINCT user_id FROM registrations
);
