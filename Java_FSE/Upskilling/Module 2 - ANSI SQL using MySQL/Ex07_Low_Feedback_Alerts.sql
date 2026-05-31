SELECT
    u.full_name,
    u.email,
    e.title AS event_name,
    f.rating,
    f.comments,
    f.feedback_date
FROM feedback f
JOIN users u ON f.user_id = u.user_id
JOIN events e ON f.event_id = e.event_id
WHERE f.rating < 3
ORDER BY f.feedback_date DESC;
