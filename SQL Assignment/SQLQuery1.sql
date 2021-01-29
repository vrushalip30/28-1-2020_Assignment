--Q1)Create a table Product as per the following specifications. 
create database SqlAssignment
use  SqlAssignment

create table Product(ProductID int not null identity(1,1) primary key,
Description varchar(30) not null UNIQUE,SetQty int not null  default 1 ,check(SetQty =1 OR
SetQty =5 OR SetQty =10 ),Rate decimal(10,2)
check (Rate >=51 AND Rate <=5000))

--Q2)Insert 20 records in the above Product table 
insert into Product (Description,Rate) values ('Asus',52)
insert into Product (Description,Rate,SetQty) values ('Dell',56,10)
insert into Product values ('Lenovo',5,100)
insert into Product (Description,Rate) values ('MIcromax',100)
insert into Product values ('Reach',5,100)
insert into Product values ('Acer',10,100)
insert into Product (Description,Rate) values ('Honor',3000)
insert into Product values ('MSI',5,1100)
insert into Product values ('Apple',10,1567)
insert into Product values ('Avita',1,1234)
insert into Product values ('Deeq',5,5000)
insert into Product values ('HCL',10,4789)
insert into Product values ('HP',1,190)
insert into Product values ('LG',5,2000)
insert into Product values ('iBall',10,5672)
insert into Product values ('Microsoft',1,2087)
insert into Product values ('RDP',5,1090)
insert into Product values ('Panasonic',10,4000)
insert into Product values ('Samsung',1,3456)
insert into Product values ('Toshiba',5,400)
insert into Product values ('Xiaomi',10,896)

--Q3)Update all the rates with 10% rate hike.
update Product Set Rate=Rate * 1.1

--Q4)Delete last record by providing the ProductID. 
delete from Product where ProductID=29

--Q5)Alter the above table and add the following column. 
Alter table Product Add MarginCode char(1) check(MarginCode='A' OR 
MarginCode='B' OR MarginCode=NUll)

--Q6)Update few records to set MarginCode to A and some records MarginCode to B 
update Product  set MarginCode='A'
where Rate < 1200

update Product  set MarginCode='B'
where Rate  >= 1200

--Q7)Update all the SetQty to 10 for all Items which have MarginCode A and whose original SetQty is 1. 
update Product set SetQty=10 where MarginCode='A' And SetQty=1

select * from Product
