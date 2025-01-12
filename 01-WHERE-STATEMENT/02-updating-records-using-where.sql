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


-- Update records in the table.
update public.cities
set population = 1000000
where id = 1;

-- Updating multiple columns  records.
update public.cities
set population = 1000000, name = 'New York'
where id = 1;

-- Updating records using a subquery.
update public.cities
set population = (select population from public.cities where id = 1)
where id = 2;

-- Updating records using a subquery with multiple columns.
update public.cities
set population = (select population from public.cities where id = 1),
name = (select name from public.cities where id = 1)
where id = 2;

-- Updating records using a subquery with multiple columns and multiple rows.
update public.cities
set population = (select population from public.cities where id = 1),
name = (select name from public.cities where id = 1)
where id in (2, 3);

-- Updating records using a subquery with multiple columns and multiple rows.
update public.cities
set population = (select population from public.cities where id = 1),
name = (select name from public.cities where id = 1)
where id in (2, 3);

-- Updating records using a subquery with multiple columns and multiple rows.
update public.cities
set population = (select population from public.cities where id = 1),
name = (select name from public.cities where id = 1)
where id in (2, 3);