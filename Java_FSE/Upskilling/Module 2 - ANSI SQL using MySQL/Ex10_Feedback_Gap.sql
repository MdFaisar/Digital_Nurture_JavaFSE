SELECT
    e.event_id,
    e.title,
    e.city,
    e.status,
    COUNT(r.registration_id) AS registrations
FROM events e
JOIN registrations r ON e.event_id = r.event_id
WHERE e.event_id NOT IN (
    SELECT DISTINCT event_id FROM feedback
)
GROUP BY e.event_id, e.title, e.city, e.status;
