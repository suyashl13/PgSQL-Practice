-- Basic example of UNION
SELECT * 
FROM products
where category = 'Electronics'
union
SELECT * 
FROM products
where category = 'Toys'
order by category;

-- Basic example of INTERSECT. 
-- This will be empty set because there is no intersection meaning there is no product that is in both categories.
SELECT * 
FROM products
where category = 'Electronics'
intersect 
SELECT * 
FROM products
where category = 'Toys'
order by category;

