SELECT a.name AS airline, COUNT(*) AS total_flights, SUM(CASE WHEN f.cancelled THEN 1 ELSE 0 END) AS cancelled_flights, ROUND(SUM(CASE WHEN f.cancelled THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS cancelled_rate_pct
FROM flights AS f
JOIN airlines AS a
ON f.airline_id = a.airline_id
GROUP BY a.name