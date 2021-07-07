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
select * from film_actor
where actor_id = 5;

select fa.actor_id, concat(a.first_name," ", a.last_name) as 'Actor Name', f.title, f.description, f.release_year from film_actor as fa 
join actor as a on fa.actor_id = a.actor_id
join film f on fa.film_id = f.film_id
where fa.actor_id = 5;


-- 4. ¿Qué consulta ejecutaría para obtener todos los clientes en store_id = 1 y dentro de estas ciudades (1, 42, 312 y 459)? 
select * from store; 
select* from customer;
select * from address where address.city_id in (1,42,312,459)
join address as ad on customer.address_id = address.address_id;
-- Su consulta debe devolver el nombre, apellido, correo electrónico y dirección del cliente.

select custo.first_name, custo.last_name, custo.email, ad.address, ad.address2, city.city, co.country, ad.postal_code 
from customer as custo
join address as ad on custo.address_id = ad.address_id
join city on ad.city_id = city.city_id
join country as co on city.country_id = co.country_id
where city.city_id in (1,42,312,459) and custo.store_id = 1;

-- 5. ¿Qué consulta realizarías para obtener todas las películas con una "calificación = G" y "característica especial = detrás de escena", 
-- unidas por actor_id = 15? Su consulta debe devolver el título de la película, la descripción, el año de lanzamiento, la calificación y la función especial. 
-- Sugerencia: puede usar la función LIKE para obtener la parte 'detrás de escena'.
select f.title, f.description, f.release_year, f.rating, f.special_features
from film f 
join film_actor fa on f.film_id =  fa.film_id
where fa.actor_id = 15 and f.rating = "G" and f.special_features like '%the scenes%';

-- 6. ¿Qué consulta harías para obtener todos los actores que se unieron en el film_id = 369? Su consulta debe devolver film_id, title, actor_id y actor_name.
select f.film_id, f.title, fa.actor_id, concat(a.first_name, " ", a.last_name) as 'Actor Name'
from film f 
join film_actor fa on f.film_id = fa.film_id
join actor a on fa.actor_id = a.actor_id
where f.film_id = 369;
-- 7. ¿Qué consulta harías para obtener todas las películas dramáticas con una tarifa de alquiler de 2.99? Su consulta debe devolver 
-- el título de la película, la descripción, el año de estreno, la calificación, las características especiales y el género (categoría).

select film.film_id, film.rental_rate, film.title, film.description, film.release_year, film.rating, film.special_features, c.name
from film
join film_category fc on film.film_id = fc.film_id
join category c on fc.category_id = c.category_id
where c.category_id = 7 and f.rental_rate = '2.99';

-- 8. ¿Qué consulta harías para obtener todas las películas de acción a las que se une SANDRA KILMER? Su consulta debe devolver el título 
-- de la película, la descripción, el año de estreno, la calificación, las características especiales, el género (categoría)
-- y el nombre y apellido del actor.

select * from actor;
select * from actor where First_name = "sandra"; -- id=23

select f.title, f.description, f.release_year, f.rating, f.special_features, c.name, concat(a.first_name, " ", a.last_name) as 'Actor Name' from film f
join film_actor fa on f.film_id = fa.film_id
join actor a on a.actor_id = fa.actor_id
join  film_category fc on fc.film_id = f.film_id
join category c on fc.category_id = c.category_id
where a.actor_id=23 and c.name = 'action';
