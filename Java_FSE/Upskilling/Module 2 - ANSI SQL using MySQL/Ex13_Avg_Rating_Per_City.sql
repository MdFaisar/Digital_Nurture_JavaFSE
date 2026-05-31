SELECT
    e.city,
    ROUND(AVG(f.rating), 2) AS avg_rating,
    COUNT(f.feedback_id) AS total_feedback
FROM events e
JOIN feedback f ON e.event_id = f.event_id
GROUP BY e.city
ORDER BY avg_rating DESC;
