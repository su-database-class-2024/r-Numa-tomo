SELECT film_id, title, rating
    FROM film
    WHERE rating = 'PG' OR rating = 'G'
    LIMIT 5;