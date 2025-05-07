-- Create table `products`.
create table products (
	id serial primary key,
	name varchar(40),
	category varchar(40),
	price int,
	weight float
);

-- Insert a record in products.
INSERT INTO public.products
(id, "name", category, price, weight)
VALUES(nextval('products_id_seq'::regclass), 'Phone', 'Electronics', NULL, 0.9);

-- Select All Records.
select * 
from products;

-- There are null values. Before we add a not null constraints we need to deal with already null values present in table.
-- UPDATE THE NULL VALUES TO SOME NUT NULL VALUES IN [price] column.
update products
set price = 999 where price isnull;

-- Now Add NOT NULL Constraint using alter table query.
alter table products
alter column price
set not null; -- Added not null Constraint :)

alter table products
alter column department
set not null; -- Added not null Constraint :)

alter table products
alter column name
set not null; -- Added not null Constraint :)

-- Adding constraints while creating table
create table products (
	id serial primary key,
	name varchar(40) not null,
	category varchar(40) not null,
	price int not null,
	weight float
);

-- Adding Unique constraint.
alter table products
alter column name
set unique;

-- or 
alter table products
add constraint name_unique unique(name);

-- Multi column Unique constraint.
alter table products
add constraint name_category_unique unique(name, category);

-- Adding Check constraint.
alter table products
add constraint price_check check(price > 0);

-- or
ALTER TABLE products
alter COLUMN price 
SET CHECK (price > 0);

-- Checks with multiple column
alter table products
add constraint price_weight_check check(price > 0 and weight > 0);