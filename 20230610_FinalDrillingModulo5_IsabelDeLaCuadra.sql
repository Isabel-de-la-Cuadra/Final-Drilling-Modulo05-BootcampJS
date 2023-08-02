-- 4. Construye las siguientes consultas:
-- Aquellas usadas para insertar, modificar y eliminar un Customer, Staff y Actor.

-- Insertar en customer 
INSERT INTO customer (store_id, first_name, last_name, email, address_id, active)
VALUES (1, 'Juan', 'Díaz', 'juandiaz@mail.com', 5, 1);

-- Modificar en customer 
UPDATE customer SET active = 0 WHERE customer_id = 600;

-- Borrar en customer 
DELETE FROM customer WHERE customer_id = 600;

-- Insertar en staff 
INSERT INTO staff (first_name, last_name, address_id, store_id, username, "password")
VALUES ('Juan', 'Díaz', 605, 1, 'Juan', '8cb2237d0679ca88db6464eac60da96345513964');

-- Modificar en staff 
UPDATE staff SET address_id = 604 WHERE staff_id = 3;

-- Borrar en staff 
DELETE FROM staff WHERE staff_id = 3;

-- Insertar en actor 
INSERT INTO actor (first_name, last_name)
VALUES ('Juan', 'Díaz');

-- Modificar en actor 
UPDATE actor SET first_name = 'Joan' WHERE actor_id = 201;

-- Borrar en actor 
DELETE FROM actor WHERE actor_id = 201;

-- Listar todas las “rental” con los datos del “customer” dado un año y mes.
select * 
from rental r  
inner join customer c on c.customer_id = r.customer_id  
where extract (year from rental_date) = 2005
and extract (month from rental_date) = 6;

-- Listar Número, Fecha (payment_date) y Total (amount) de todas las “payment”.
select p.payment_id as "Número", p.payment_date as "Fecha", p.amount as "Total"
from payment p; 

-- Listar todas las “film” del año 2006 que contengan un (rental_rate) mayor a 4.0.
select *
from film f 
where release_year = 2006
and rental_rate > 4.0;
