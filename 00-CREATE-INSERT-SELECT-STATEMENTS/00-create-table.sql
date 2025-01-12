-- QUERY TO CREATE A TABLE
CREATE TABLE population (
	name varchar(50),
	code varchar(40) UNIQUE,
	createdAt timestamp DEFAULT NOW() 
);