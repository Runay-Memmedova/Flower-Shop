--Reporting
--1.Customer Reports
--Total Customers: A report to display the total number of customers.
select count(customer_id) as total_customer from customers;
--Customers per Branch: A report to display the number of customers who have placed orders at each branch.
select branch_id,count(customer_id) as total_customer from customers c join branches b on c.phone =b.phone group by branch_id ;


--Order Reports
--Orders per Customer: A report to display the number of orders placed by each customer
select c.first_name,count(order_id) as total_order from customers c join orders o on c.customer_id=o.customer_id group by c.first_name;
--Orders per Branch: A report to display the number of orders processed by each branch.
select b.branch_id,count(order_id) as total_order from orders o join branches b on o.branch_id =b.branch_id group by  b.branch_id;
--Orders per Day: A report to show the number of orders placed on each date.
select order_date, count(order_id) as order_number from orders group by order_date;


--Flower Reports
--Most Popular Flowers: A report to display the flowers that have been ordered the most.
select f.name,max(od.quantity)from flowers f join order_details od on f.flower_id=od.flower_id  group by f.name order by max(od.quantity) desc FETCH NEXT 1 ROWS ONLY;
--Flowers per Supplier: A report to show the number of different flowers provided by each supplier.
select s.supplier_id,count(f.flower_id) as total_number from flowers f join suppliers s on f.supplier_id=s.supplier_id group by s.supplier_id;


--Supplier Reports
--Suppliers per Flower: A report to show the supplier(s) for each type of flower.
select f.name,s.name from suppliers s join flowers f on s.supplier_id=f.supplier_id group by f.name,s.name;


--Branch Reports
--Most Active Branches: A report to show the branches with the most orders processed.
select o.order_id, max(quantity)
from orders o join order_details od on o.order_id=od.order_id 
join  branches b on b.branch_id=o.branch_id
group by o.order_id order by  max(quantity) desc FETCH NEXT 2 ROWS ONLY;
