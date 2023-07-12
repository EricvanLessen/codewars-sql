'SQL Bug Fixing: Fix the QUERY - Totaling'
SELECT 
  CAST(s.transaction_date AS DATE) as day,
  d.name as department,
  COUNT(s.id) as sale_count
FROM department d
JOIN sale s ON d.id = s.department_id
GROUP BY day, d.name
ORDER BY day;