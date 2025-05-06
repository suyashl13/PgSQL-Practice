-- All products with price greater than all toys;
SELECT price
from products
where price > all (
	select price from products p2 
	where department = 'Toys'
);

-- Any products with price greater than any toys;
SELECT price
from products
where price > any (
    select price from products p2 
    where department = 'Toys'
);

-- Some products with price greater than some toys;
SELECT price
from products
where price > some (
    select price from products p2 
    where department = 'Toys'
);

-- Select Without From (Works when query returns only one value);
SELECT (
    select price from products p2 
    where department = 'Toys'
    limit 1;
)

