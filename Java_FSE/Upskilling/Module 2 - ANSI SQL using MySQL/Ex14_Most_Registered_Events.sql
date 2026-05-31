SELECT
    e.title,
    e.city,
    COUNT(r.registration_id) AS reg_count
FROM events e
JOIN registrations r ON e.event_id = r.event_id
GROUP BY e.event_id, e.title, e.city
ORDER BY reg_count DESC
LIMIT 3;
