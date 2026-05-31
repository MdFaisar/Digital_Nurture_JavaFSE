SELECT
    e.title,
    COUNT(s.session_id) AS total_sessions
FROM events e
JOIN sessions s ON e.event_id = s.event_id
GROUP BY e.event_id, e.title
HAVING COUNT(s.session_id) = (
    SELECT MAX(cnt)
    FROM (
        SELECT COUNT(session_id) AS cnt
        FROM sessions
        GROUP BY event_id
    ) AS t
)
ORDER BY e.title;
