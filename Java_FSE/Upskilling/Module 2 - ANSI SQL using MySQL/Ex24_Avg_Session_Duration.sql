SELECT
    e.title,
    ROUND(
        AVG(TIMESTAMPDIFF(MINUTE, s.start_time, s.end_time)),
        1
    ) AS avg_duration_mins
FROM events e
JOIN sessions s ON e.event_id = s.event_id
GROUP BY e.event_id, e.title
ORDER BY avg_duration_mins DESC;
