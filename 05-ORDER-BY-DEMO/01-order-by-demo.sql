-- Sort by price, if price is same then sort by weight
select * 
from products p
order by price, weight;

-- Limit and offset
select * 
from products p
order by price, weight
limit 10 
offset 5;