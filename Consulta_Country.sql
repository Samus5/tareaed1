-- 1 . ¿Cuál es la esperanza de vida máxima?

Select LifeExpectancy, max(LifeExpectancy)
from Country
Group by LifeExpectancy;

-- 2. Saca la lista de las capitales de todos los paises

Select Name, Capital
From Country;

-- 3. Saca la lista de las capitales europeas

Select name, Capital, Code2
From Country
where Continent = 'Europe';

-- 4. Saca las lista de las capitales africanas y norteamericanas



Select name, Capital, Code2
From Country
Where Continent = 'North America';
Select name, Capital, Code2
From Country
Where Continent = 'Africa';

-- 5. Halla la población media

Select avg (population) avg_population
from country;

-- 6. Saca los países con mayor y menor esperanza de vida

Select Name, LifeExpectancy
From country
order by LifeExpectancy Desc
limit 1;

Select Name, LifeExpectancy From Country
where LifeExpectancy = (Select Min(LifeExpectancy) From Country)
Order by Name;

-- 7. Saca una lista de continentes ordenadas por la esperanza de vida media de forma descendente.

Select Name, LifeExpectancy
From country
order by LifeExpectancy Desc;

-- 8. Cuál es la mayor esperanza de vida (Dos formas de hacerlo, con una variable y de una forma nueva, usar una select como tabla)

Select Name, LifeExpectancy
From country
order by LifeExpectancy Desc
limit 1;

-- 9. Sacar el país con mayor extensión de terreno

Select name, SurfaceArea
From Country
where SurfaceArea = (Select Max(SurfaceArea) From Country)
Order by Name;

-- 10. Cuántas regiones distintas tenemos

Select Distinct Region, count(Region) Region_Contador
From Country
Group by Region;


-- 11. Saca el nombre local de todos los países

Select LocalName,name
From Country;

-- 12. Saca el nombre local de todos los países Europeos y asiáticos

--  Europeos

Select LocalName,name
From Country
where Continent = 'Europe';

-- Asiáticos

Select LocalName,name
From Country
where Continent = 'Asia';

-- 13. Saca las distintas formas de gobierno.

Select Distinct GovernmentForm
From Country;

-- 14. ¿Qué forma de gobierno tienen, España, Francia, China? Saca los países ordenados por forma de gobierno.

-- Forma de Gobierno de España

Select name, GovernmentForm
From country
Where Name = 'Spain';
-- Forma de Gobierno de Francia

Select name, GovernmentForm
From country
Where Name = 'France';

-- Forma de Gobierno de China

Select name, GovernmentForm
From country
Where Name = 'China';

-- 15. Saca todos los países islámicos.

-- Completar

Select*
From Country
where Region = 'Northern Africa';
-- 16. Saca el país que antes se independizó.

Select name, IndepYear
From Country
where IndepYear = (Select min(IndepYear)from Country)
order by name;

-- 17. Cuál es el país con menor extensión.

Select Name, SurfaceArea
From Country
where SurfaceArea = (Select min(SurfaceArea)from Country)
order by name;

-- 18. Cuál es el país con mayor población.

Select name, population
From country
where population = (Select max(population) from Country)
order by name;