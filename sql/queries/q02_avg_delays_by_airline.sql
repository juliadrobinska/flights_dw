SELECT a.name AS airline, AVG(f.dep_delay_min) AS avg_dep_delay, AVG(f.arr_delay_min) AS avg_arr_delay
FROM flights AS f
JOIN airlines AS a
ON f.airline_id = a.airline_id
WHERE f.cancelled = FALSE
GROUP BY a.name
ORDER BY avg_dep_delay DESC, avg_arr_delay DESC

git add sql/queries/q02_avg_delays_by_airline.sql
git commit -m "Add average delays by airline analysis query"
git push
