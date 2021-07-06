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
        
        -- 3. ¿Qué consulta harías para obtener todas las ciudades de México con una población de más de 500,000? 
        -- Tu consulta debe organizar el resultado por población en orden descendente. (1)
 SELECT countries.name, cities.name
	FROM countries
	JOIN cities ON countries.id = cities.country_id
	WHERE cities.population > 500000 AND countries.name LIKE 'Mexico';
    
   -- 4. ¿Qué consulta ejecutarías para obtener todos los idiomas en cada país con un porcentaje superior al 89%? 
   -- Tu consulta debe organizar el resultado por porcentaje en orden descendente. (1)
	
	SELECT countries.name, languages.language, languages.percentage
	FROM countries
	LEFT JOIN languages ON countries.id = languages.country_id
	WHERE percentage > 89
	ORDER BY percentage DESC;

-- ¿Qué consulta haría para obtener todos los países con un área de superficie inferior a 501 y una población superior a 100,000? (2)

	SELECT name, surface_area, population FROM countries
	WHERE surface_area < 501 AND population > 100000;

-- 6. ¿Qué consulta harías para obtener países con solo Monarquía Constitucional con un capital superior a 200 y
--  una esperanza de vida superior a 75  años? (1)

	SELECT name, government_form, capital, life_expectancy FROM countries
	WHERE government_form LIKE 'constitutional monarchy' AND capital > 200 AND life_expectancy > 75;

-- 7. ¿Qué consulta harías para obtener todas las ciudades de Argentina dentro del distrito de Buenos Aires y tener una población superior a 500,000? 
-- La consulta debe devolver el nombre del país, el nombre de la ciudad, el distrito y la población. (2)

	SELECT countries.name AS país, cities.name AS ciudad , cities.district as distrito, cities.population as poblacion
	FROM countries
	LEFT JOIN cities ON countries.id = cities.country_id
	WHERE cities.district LIKE 'Buenos Aires' AND cities.population > 500000;
    
    SELECT *

-- 8. ¿Qué consulta harías para resumir el número de países en cada región? 
-- La consulta debe mostrar el nombre de la región y el número de países. 
-- Además, la consulta debe organizar el resultado por el número de países en orden descendente.
	select * from countries;
    
	SELECT region, count(region) AS num_paises FROM countries
	GROUP BY region 
	ORDER BY num_paises DESC;



