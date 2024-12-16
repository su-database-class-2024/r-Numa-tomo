SELECT country.country, COUNT(DISTINCT customer.customer_id) AS customers, sum(payment.amount) AS amounts
    FROM country
    RIGHT OUTER JOIN city ON city.country_id = country.country_id
    RIGHT OUTER JOIN address ON address.city_id = city.city_id
    RIGHT OUTER JOIN customer ON customer.address_id = address.address_id
    RIGHT OUTER JOIN payment ON payment.customer_id = customer.customer_id
    GROUP BY country.country
    ORDER BY country.country;