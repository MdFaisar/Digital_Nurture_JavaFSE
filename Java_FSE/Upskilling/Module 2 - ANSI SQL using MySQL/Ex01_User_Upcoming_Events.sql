SELECT
    u.full_name,
    e.title,
    e.city,
    e.start_date,
    e.end_date FROM users u 
    JOIN registrations r ON u.user_id = r.user_id
JOIN events e ON r.event_id = e.event_id
WHERE e.status = 'upcoming'
  AND e.city = u.city ORDER BY e.start_date ASC;
