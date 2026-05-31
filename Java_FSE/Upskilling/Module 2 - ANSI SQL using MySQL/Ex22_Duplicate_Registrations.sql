SELECT
    u.full_name,
    e.title AS event_name,
    COUNT(r.registration_id) AS reg_count
FROM registrations r
JOIN users u ON r.user_id = u.user_id
JOIN events e ON r.event_id = e.event_id
GROUP BY r.user_id, r.event_id, u.full_name, e.title
HAVING COUNT(r.registration_id) > 1
ORDER BY reg_count DESC;
