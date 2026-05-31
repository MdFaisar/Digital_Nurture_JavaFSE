SELECT
    e.title,
    e.city,
    COUNT(DISTINCT r.registration_id) AS total_registrations,
    ROUND(AVG(f.rating), 2) AS avg_rating
FROM events e
LEFT JOIN registrations r ON e.event_id = r.event_id
LEFT JOIN feedback f ON e.event_id = f.event_id
WHERE e.status = 'completed'
GROUP BY e.event_id, e.title, e.city
ORDER BY e.title;
