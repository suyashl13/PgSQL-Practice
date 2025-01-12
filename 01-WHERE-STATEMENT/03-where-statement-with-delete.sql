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

-- Delete records from the table.
delete from public.cities
where id = 1;

-- Delete records from the table using a subquery.
delete from public.cities
where id in (2, 3);

-- Delete all records from the table.
delete from public.cities;