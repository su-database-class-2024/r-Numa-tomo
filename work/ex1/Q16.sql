SELECT category.name AS category, sum(payment.amount) AS amount
    FROM category
    LEFT OUTER JOIN film_category ON category.category_id = film_category.category_id
    LEFT OUTER JOIN film ON film_category.film_id = film.film_id
    LEFT OUTER JOIN inventory ON film.film_id = inventory.film_id
    LEFT OUTER JOIN rental ON inventory.inventory_id = rental.inventory_id
    LEFT OUTER JOIN payment ON rental.rental_id = payment.rental_id
    GROUP BY category.name
    ORDER BY amount;