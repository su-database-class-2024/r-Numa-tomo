SELECT store_id, address, city
    FROM store
    LEFT OUTER JOIN address ON store.address_id = address.address_id
    LEFT OUTER JOIN city ON address.city_id = city.city_id;