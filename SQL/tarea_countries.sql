select * from cities;
select * from countries;
select * from languages; 
-- ¿Qué consulta harías para obtener todos los países que hablan esloveno? 
-- Tu consulta debe devolver el nombre del país, el idioma y el porcentaje de idioma. 
-- Tu consulta debe organizar el resultado por porcentaje de idioma en orden descendente.

select lg.language, lg.percentage from languages lg
where lg.language LIKE '%lovene%'
ORDER BY lg.percentage desc;

SELECT cou.name from countries cou
where cou.id in (16,96, 107,200);
select cou.name, lg.language, lg.percentage 
from languages lg
inner join countries cou on lg.country_id = cou.id
where cou.id in (16,96,107,200) and lg.language LIKE '%lovene%'
order by lg.percentage desc;
--  ¿Qué consulta ejecutarías para mostrar el número total de ciudades para cada país? 
-- Su consulta debe devolver el nombre del país y el número total de ciudades. 
-- Tu consulta debe organizar el resultado por el número de ciudades en orden descendente. (3)

SELECT countries.name, count(cities.name)
	FROM countries
	INNER JOIN cities on countries.id = cities.country_id
	GROUP BY countries.id DESC 
        ORDER BY count(cities.name) DESC;
        
        -- ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
        -- Tu consulta debe organizar el resultado por población en orden descendente. (1)
 SELECT countries.name, cities.name
	FROM countries
	JOIN cities ON countries.id = cities.country_id
	WHERE cities.population > 500000 AND countries.name LIKE 'Mexico';



