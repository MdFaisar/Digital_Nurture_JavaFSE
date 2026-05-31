SELECT
    e.event_id,
    e.title,
    e.city,
    e.status,
    e.start_date
FROM events e
LEFT JOIN sessions s ON e.event_id = s.event_id
WHERE s.session_id IS NULL
ORDER BY e.start_date;
