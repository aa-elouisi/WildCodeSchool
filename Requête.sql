SELECT customer.first_name, customer.last_name, address.address, address.city, address.postal_code, MAX(rental.inventory_id) FROM rental
JOIN address ON address.address_id = rental.customer_id
JOIN customer ON customer.customer_id = rental.customer_id
WHERE inventory_id = (SELECT MAX(rental.inventory_id) FROM rental)
group by customer.customer_id