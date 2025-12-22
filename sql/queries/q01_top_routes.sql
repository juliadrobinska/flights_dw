SELECT COUNT(*) AS count_flights, ao.name AS origin_airport, ad.name AS destination_airport
FROM flights AS f
JOIN airports AS ao
ON f.origin_airport_id = ao.airport_id
JOIN airports AS ad
ON f.dest_airport_id = ad.airport_id
GROUP BY ao.name, ad.name
ORDER BY count_flights DESC