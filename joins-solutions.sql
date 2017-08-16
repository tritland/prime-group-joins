-- 1. Get all customers and their addresses.
select first_name, last_name,
addresses.street, addresses.city, addresses.state, addresses.zip 
from customers
join addresses
on customers.id = addresses.customer_id;

-- 2. Get all orders and their line items.
select * 
from orders
join line_items
ON orders.id = line_items.order_id;

-- 3. Which warehouses have cheetos?
select * from warehouse 
join warehouse_product 
on warehouse.id = warehouse_product.warehouse_id
where warehouse_product.product_id = 5; 

-- 4.Which warehouses have diet pepsi?
select * from warehouse 
join warehouse_product 
on warehouse.id = warehouse_product.warehouse_id
where warehouse_product.product_id = 6; 

-- 5.Get the number of orders for each customer. NOTE: It is OK if those without orders are not included in results.
select * from orders 
full outer join addresses
on orders.address_id = addresses.id
full outer join customers
on addresses.customer_id = customers.id;

select customers.first_name, count (total)
from orders 
full outer join addresses
on orders.address_id = addresses.id
full outer join customers
on addresses.customer_id = customers.id
group by first_name;

-- 6.How many customers do we have?




How many products do we carry?
What is the total available on-hand quantity of diet pepsi?