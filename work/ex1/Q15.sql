set transform_null_equals = on;
SELECT city.city, address.address
    FROM city
    LEFT OUTER JOIN address ON city.city_id = address.city_id
    WHERE address.address = NULL;