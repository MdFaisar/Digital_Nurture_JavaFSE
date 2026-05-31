SELECT
    e.title,
    COUNT(CASE WHEN r.resource_type = 'pdf'   THEN 1 END) AS pdfs,
    COUNT(CASE WHEN r.resource_type = 'image' THEN 1 END) AS images,
    COUNT(CASE WHEN r.resource_type = 'link'  THEN 1 END) AS links,
    COUNT(r.resource_id) AS total_resources
FROM events e
LEFT JOIN resources r ON e.event_id = r.event_id
GROUP BY e.event_id, e.title
ORDER BY e.title;
