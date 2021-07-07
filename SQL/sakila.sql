use sakila
select * from customer;
-- 1. ¿Qué consulta ejecutarías para obtener todos los clientes dentro de city_id = 312?
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.
select * from customer;
select * from address;

select address from address
where city_id = 312
;
select first_name, last_name, email from customer
where address_id in (256,517)
;

select customer.first_name as nombre, customer.last_name as apellido, customer.email, address.address as direccion from customer
INNER JOIN address ON address.address_id = customer.address_id 
where address.address_id in (256,517)
and address.city_id = 312
;

-- 2. ¿Qué consulta harías para obtener todas las películas de comedia? 
-- Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación,
--  las características especiales y el género (categoría).
select * from film;
select * from film_category;
select * from category;
select * from film_category where category_id = 5;

select film.title, film.description, film.release_year, film.rating, film.special_features, category.name from film
join film_category  on film.film_id = film_category.film_id
join category on film_category.category_id = category.category_id
where category.name like "%omedy";

-- 3. ¿Qué consulta harías para obtener todas las películas unidas por actor_id = 5? 
-- Su consulta debe devolver la identificación del actor, el nombre del actor, el título de la película, la descripción y el año de lanzamiento.
select * from actor;
select * from film;
where actor_id = 5;

select fa.actor_id, concat(a.first_name, " ", a.last_name) as 'Actor Name', f.title, f.description, f.release_year from film_actor fa 
join actor a on fa.actor_id = a.actor_id
join film f on fa.film_id = f.film_id
where fa.actor_id = 5



-- 4. ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y dentro de estas ciudades (1, 42, 312 y 459)? 
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

-- 5. ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" y "característica especial = detrás de escena", 
-- unidas por actor_id = 15? Su consulta debe devolver el título de la película, la descripción, el año de lanzamiento, la calificación y la función especial. 
-- Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.

-- 6. ¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369? Su consulta debe devolver film_id, title, actor_id y actor_name.

-- 7. ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99? Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales y el género (categoría).

-- 8. ¿Qué consulta harías para obtener todas las películas de acción a las que se une SANDRA KILMER? Su consulta debe devolver el título de la película, la descripción, el año de estreno, la calificación, las características especiales, el género (categoría) y el nombre y apellido del actor.


