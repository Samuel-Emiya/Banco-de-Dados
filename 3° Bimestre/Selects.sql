-- Ex.1
select 
Orders.order_id,
Orders.order_date,
Customers.first_name,
Customers.last_name,
Customers.email
from Customers join Orders on Customers.customer_id = Orders.customer_id;

-- Ex.2
select
Products.product_name,
Order_Items.quantity
from Orders join Order_Items on Orders.order_id = Order_Items.order_id join Products on Order_Items.product_id = Products.product_id where Orders.customer_id = 1;

-- Ex.3
select 
Customers.first_name,
Customers.last_name,
sum(Products.price * Order_Items.quantity)
from Customers join Orders on Customers.customer_id = Orders.customer_id 
join  Order_Items on Order_Items.order_id = Orders.order_id 
join Products on Products.product_id = Order_Items.product_id
group by Customers.customer_id, Customers.first_name, Customers.last_name;

-- Ex.4
select
Customers.first_name,
Customers.last_name
from Customers left join Orders on Customers.customer_id = Orders.customer_id where Orders.order_id is null;

-- Ex.5
select
Products.product_name,
sum(Order_Items.quantity)
from Order_Items join Products on Order_Items.product_id = Products.product_id
group by Products.product_name
order by sum(Order_Items.quantity) desc;