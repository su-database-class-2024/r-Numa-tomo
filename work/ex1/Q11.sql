SELECT country_id, COUNT(country_id) AS city_num
    FROM city
    GROUP BY country_id
    HAVING COUNT(country_id) >= 20
    ORDER BY COUNT(country_id) DESC, country_id DESC;