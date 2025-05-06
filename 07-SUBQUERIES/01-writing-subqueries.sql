-- Writing subqueries in from.
select * 
from (select max(prds.price) from products prds) as p

-- Find the average no. of orders for all customers.
select avg(co.customer_orders)
from (select count(*) as customer_orders
from orders o group by o.customer_id) as co;

-- Using subqueries in joins. Explain great usage cas as well.
select *
from orders o
where o.order_id in (select order_id from order_items oi where oi.product_id = 1);
-- Explanation
-- We are selecting all orders where the order_id is in the list of order_ids where the product_id is 1.

-- Find the average no. of orders for all customers.
select avg(co.customer_orders)
from (select count(*) as customer_orders
from orders o group by o.customer_id) as co;

-- SubQuery in Where Clause
select *
from orders o
where o.order_id in (select order_id from order_items oi where oi.product_id = 1);

-- Subquery using not in clause
select *
from orders o
where o.order_id not in (select order_id from order_items oi where oi.product_id = 1);

