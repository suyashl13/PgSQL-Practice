-- Create table cities
create table cities (
    id int,
    name varchar,
    country_code varchar,
    district varchar,
    population int,
    primary key(id)
)

-- Insert records into the table.
insert into cities (id, name, country_code, district, population) values (1, 'London', 'GBR', 'London', 9000000);
insert into cities (id, name, country_code, district, population) values (2, 'Paris', 'FRA', 'Ile-de-France', 6600000);
insert into cities (id, name, country_code, district, population) values (3, 'Tokyo', 'JPN', 'Tokyo', 9000000);
insert into cities (id, name, country_code, district, population) values (4, 'Mumbai', 'IND', 'Maharashtra', 8000000);
insert into cities (id, name, country_code, district, population) values (5, 'Seoul', 'KOR', 'Seoul', 9000000);
insert into cities (id, name, country_code, district, population) values (6, 'Shanghai', 'CHN', 'Shanghai', 9000000);
insert into cities (id, name, country_code, district, population) values (7, 'Beijing', 'CHN', 'Beijing', 9000000);
insert into cities (id, name, country_code, district, population) values (8, 'Delhi', 'IND', 'Delhi', 9000000);
insert into cities (id, name, country_code, district, population) values (9, 'Jakarta', 'IDN', 'Jakarta Raya', 9000000);
insert into cities (id, name, country_code, district, population) values (10, 'Tehran', 'IRN', 'Tehran', 9000000);

-- Queries to retrieve records form the table. Demonstrating where keyword.
select name 
from public.cities c
where c.population > 1000;

-- using in keyword. (in keyword is used to check if a value is in a list of values)
select name 
from public.cities c
where c.country_code in ('GBR', 'FRA', 'JPN');

-- using not in keyword. (not in keyword is used to check if a value is not in a list of values)
select name 
from public.cities c
where c.country_code not in ('GBR', 'FRA', 'JPN');

-- using between keyword. (between keyword is used to check if a value is between two values)
select name
from public.cities c
where c.population between 1000000 and 5000000;

-- using not between keyword. (not between keyword is used to check if a value is not between two values)
select name
from public.cities c
where c.population not between 1000000 and 5000000;


-- using like keyword. (like keyword is used to check if a value is like a pattern)
select name
from public.cities c
where c.name like 'L%';

-- using not like keyword. (not like keyword is used to check if a value is not like a pattern)
select name
from public.cities c
where c.name not like 'L%';

-- using is null keyword. (is null keyword is used to check if a value is null)
select name
from public.cities c
where c.district is null;

-- using is not null keyword. (is not null keyword is used to check if a value is not null)
select name
from public.cities c
where c.district is not null;

-- using and keyword. (and keyword is used to combine two conditions)
select name
from public.cities c
where c.population > 1000000 and c.population < 5000000;

-- using or keyword. (or keyword is used to combine two conditions)
select name
from public.cities c
where c.population > 1000000 or c.population < 5000000;

-- using not keyword. (not keyword is used to negate a condition)
select name
from public.cities c
where not c.population > 1000000;

-- using like keyword with % wildcard. (like keyword is used to check if a value is like a pattern)
select name
from public.cities c
where c.name like 'L%';

-- using like keyword with _ wildcard. (like keyword is used to check if a value is like a pattern) _ can have any character
select name
from public.cities c
where c.name like 'L_n%';

-- calculated fields
select name, price * units_sold as total_revenue
from phones 
where (price * units_sold) > 1000000;

