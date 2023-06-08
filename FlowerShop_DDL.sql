create table customers(
customer_id number primary key ,
first_name varchar2(20) not null,
last_name varchar2(20) not null,
adress varchar2(50),
phone varchar2(50));


create table orders(
order_id number primary key,
customer_id number ,
constraint fk_orders_customer_id foreign key (customer_id) references  customers(customer_id),
branch_id number, constraint fk_orders_branch_id foreign key (branch_id) references   branches(branch_id),
order_date date not null);


create table flowers (
flower_id number primary key,
name varchar(100) not null,
price float not null,
supplier_id number ,
constraint fk_flowers_supplier_id foreign key (supplier_id) references  suppliers (supplier_id)
);


Create table Suppliers (
Supplier_id number primary key,
name varchar(50),
address varchar (50));


create table order_details (
order_id number not null,
flower_id number not null,
constraint fk_order_details_flower_id foreign key(flower_id) references flowers(flower_id),
quantity number  check (quantity>0));


create table branches(
branch_id number primary key,
location varchar(50),
phone varchar(50));
