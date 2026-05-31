SELECT
    e.event_id,
    e.title,
    e.city,
    e.status
FROM events e
LEFT JOIN resources r ON e.event_id = r.event_id
WHERE r.resource_id IS NULL
ORDER BY e.event_id;
