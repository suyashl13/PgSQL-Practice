-- Create table users.
create table users (
	id int,
	first_name varchar, 
	last_name varchar,
	email varchar,
	primary key(id)
)

-- Insert records into the table.
insert into users (id, first_name, last_name, email) values (1, 'John', 'Doe', 
'L5A7F@example.com');

-- Concat a string. Using ||
select u.first_name || ' ' || u.last_name  as full_name
from users u;

-- Concat a string. Using concat function.
select concat(u.first_name, ' ', u.last_name) as full_name
from users u;

-- Concat a string. Using concat_ws function. Concat with separator. in this case, ' '.
select concat_ws(' ', u.first_name, u.last_name) as full_name
from users u;

