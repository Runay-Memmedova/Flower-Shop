insert into customers(customer_id,first_name,last_name,adress,phone)
values('1','Ayla','Aliyeva','Tabriz kuc. 28','+994505555555');
commit;
insert into customers(customer_id,first_name,last_name,adress,phone)
values('2','Ali','Aliyev','Xiyabani kuc. 72','+994504444444');
commit;
insert into customers(customer_id,first_name,last_name,adress,phone)
values('3','Ehmed','Abdullayev','Yusif Qasmov kuc. 51','+994514527856');
commit;
insert into customers(customer_id,first_name,last_name,adress,phone)
values('4','Ayan','Pasayeva','Sarayevo kuc. 34','+994704235178');
commit;
insert into customers(customer_id,first_name,last_name,adress,phone)
values('5','Gulnar','Huseynova','Sabit Orucov kuc. 17','+994551784253');
commit;
 
 select * from customers;

insert into orders(order_id,customer_id,branch_id,order_date) values(1,1,1,to_date('20.05.2023','DD.MM.YYYY'));
commit;
insert into orders(order_id,customer_id,branch_id,order_date) values(2,2,2,to_date('21.04.2023','DD.MM.YYYY'));
commit;
insert into orders(order_id,customer_id,branch_id,order_date) values(3,5,2,to_date('17.02.2023','DD.MM.YYYY'));
commit;
insert into orders(order_id,customer_id,branch_id,order_date) values(4,1,3,to_date('05.01.2023','DD.MM.YYYY'));
commit;

select * from orders;

insert into flowers(flower_id,name,price,supplier_id) values (1,'lale',3,1);
commit;
insert into flowers(flower_id,name,price,supplier_id) values (2,'yasemen',5,2);
commit;
insert into flowers(flower_id,name,price,supplier_id) values (3,'qizilgul',8,3);
commit;
insert into flowers(flower_id,name,price,supplier_id) values (4,'nergiz',4,4);
commit;
insert into flowers(flower_id,name,price,supplier_id) values (5,'zanbaq',5,5);
commit;

select * from flowers;

insert into suppliers (supplier_id,name,address) values (1,'Anar','Mehemmed Hadi kucesi');
commit;
insert into suppliers (supplier_id,name,address) values (2,'Murad','Zerife Eliyeva kucesi');
commit;
insert into suppliers (supplier_id,name,address) values (3,'Arzu','Abbasqulu aa Bakxanov kucesi');
commit;
insert into suppliers (supplier_id,name,address) values (4,'Gunay','Abbas Mirz? ?rifzad? kucesi');
commit;
insert into suppliers (supplier_id,name,address) values (5,'Aydan','Tolstoy kucesi');
commit;

select * from suppliers;


insert into order_details(order_id,flower_id,quantity) values (1,1,3);
commit;
insert into order_details(order_id,flower_id,quantity) values (2,3,6);
commit;
insert into order_details(order_id,flower_id,quantity) values (3,5,8);
commit;
insert into order_details(order_id,flower_id,quantity) values (4,2,7);
commit;

select * from order_details;

insert into branches(branch_id,location,phone) values(1,'Sleyman V?zirov k?si','+994518567895');
commit;
insert into branches(branch_id,location,phone) values(2,'?msi B?d?lb?yli k?si','+994704562532');
commit;
insert into branches(branch_id,location,phone) values(3,'zeyir Hacb?yov k?si','+994777694215');
commit;
insert into branches(branch_id,location,phone) values(4,'zeyir Hacb?yov k?si','+994504365112');
commit;

select * from order_details;


select * from customers;
select * from orders;
select * from flowers;
select * from suppliers;
select * from order_details;
select * from branches;
