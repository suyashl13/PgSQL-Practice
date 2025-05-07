-- 
CREATE table Users (
    id uuid primary key default gen_random_uuid(),
    first_name text,
    last_name text,
    email text unique,
    created_at  
);

-- Converting data-types in p-sql
SELECT (1::integer), (1::float), (1::text), (1::boolean);

-- NUmerical Data types
select '123'::integer; -- 123
select '123.45'::float; -- 123.45

-- Double Precision
SELECT '123.45'::double precision; -- 123.45

-- Converting to VARCHAR(5);
select 'hellooow'::Varchar(5);

-- Converting into boolean
select 'true'::boolean; -- True
SELECT 'false'::boolean; -- False

select 'n'::boolean; -- False
select 'y'::boolean; -- True

select '0'::boolean; -- False
select '1'::boolean; -- True

select 'f'::boolean; -- False
select 't'::boolean; -- True

select 'no'::boolean; -- False
select 'yes'::boolean; -- True

select 'off'::boolean; -- False
select 'on'::boolean; -- True


-- Date Formatting
select ('JUN-13-2001'::DATE);
SELECT ('13-06-2001'::DATE);
SELECT ('2001-06-13'::DATE);

-- TIME without time zone
select ('12:00:00'::TIME WITHOUT TIME ZONE);

-- TIME with time zone 
select ('12:00:00 AM IST'::TIME WITH TIME ZONE);

-- INTERVAL.
select ('1 month'::INTERVAL);
select ('1 day'::INTERVAL);
select ('1 year'::INTERVAL);

SELECT ('1 D 20 H  30 M 40 S'::INTERVAL);
SELECT ('1 D 20 H 30 M 40 S'::INTERVAL);

-- Calculating interval.
SELECT ('1 D 20 H 30 M 40 S'::INTERVAL) - ('1 D':: INTERVAL);

