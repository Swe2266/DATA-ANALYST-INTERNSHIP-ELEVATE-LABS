-------------CREATING THE TABLE-----------
Create table ecomm(customerid SERIAL PRIMARY KEY,
customername varchar(100),city varchar(50),email varchar(100),products varchar(100));

-------------INSERTING THE VALUES TO THE TABLE-----------
INSERT INTO ecomm (customername, city, email, products)VALUES
('Swetha', 'Chennai', 'swetha@gmail.com', 'Dress'),
('Priya', 'Coimbatore', 'priya@gmail.com', 'Shoes'),
('Rahul', 'Bangalore', 'rahul@gmail.com', 'Laptop'),
('Anitha', 'Madurai', 'anitha@gmail.com', 'Mobile'),
('Kiran', 'Hyderabad', 'kiran@gmail.com', 'Watch');

-------------DISPLAY THE RECORDS-----------
select*from ecomm;

select customername,city from ecomm;

-------------WHERE CLAUSE-----------
select *from ecomm where city='Chennai'; 

-------------ORDER BY CLAUSE -----------
select *from ecomm ORDER BY products;

select *from ecomm ORDER BY customername DESC;

select COUNT(*) from ecomm;-------------COUNT-----------

-------------UPDATE THE VALUES-----------
UPDATE ecomm set products='Washing machine' WHERE customername='Priya';

select*from ecomm;

-------------GROUP BY CLAUSE-----------
SELECT city,Count(*) AS totalcustomers from ecomm GROUP BY city;
 
 -------------ALTER THE TABLE-----------
ALTER TABLE ecomm
ADD COLUMN price NUMERIC(10,2);
-------------UPDATE THE VALUES-----------
UPDATE ecomm
SET price = 2000
WHERE customername = 'Swetha';
UPDATE ecomm
SET price = 44000
WHERE customername = 'Rahul';
UPDATE ecomm
SET price = 2500
WHERE customername = 'Swetha';
UPDATE ecomm
SET price = 16000
WHERE customername = 'Anitha';
UPDATE ecomm
SET price = 4000
WHERE customername = 'Kiran';
UPDATE ecomm
SET price = 12000
WHERE customername = 'Priya';
select*from ecomm;

-------------AGGREGATE FUNCTIONS ---------------
SELECT SUM(price) AS total_price ------SUM 
FROM ecomm;

SELECT AVG(price) AS average_price   ------AVERAGE
FROM ecomm;

 -------------CREATING THE TABLE-----------
create table customs(customerid serial primary key,customername varchar(100),city varchar(100));
insert into customs(customername,city) values
('swe','chennai'),
('sute','NYC'),
('Tej','bangalore');
select *from customs;

-------------CREATING THE TABLE-----------
create table orders(customerid serial primary key,orderid int,products varchar(100));
insert into orders(orderid,products) values
(101,'TV'),
(102,'Dress'),
('103','PC');
select *from orders;

-------------INNER JOINS-----------
select
customs.customername,
customs.city,
orders.products
from customs
INNER JOIN orders 
on customs.customerid=orders.customerid;

-------------LEFT JOINS-----------

select
c.customername,
o.products
from customs c
LEFT JOIN orders o
on c.customerid=o.customerid;

-------------RIGHT JOINS-----------

select
c.customername,
c.city,
o.products
from customs c
RIGHT JOIN orders o
on c.customerid=o.customerid;


-------------SUB QUERIES-----------
select*from ecomm where price>
(select avg(price)from ecomm);


-------------CREATING THE VIEW-----------
CREATE VIEW customer_order_views AS
SELECT
    c.customerid,
    c.customername,
    c.city,
    o.orderid,
    o.products
FROM customs c
INNER JOIN orders o
ON c.customerid = o.customerid;

SELECT * FROM customer_order_views;-------------DISPLAY THE VIEWS--------------

CREATE VIEW chennai_customers AS
SELECT *
FROM customs
WHERE city = 'NYC';

-------------CREATING THE INDEX-----------

CREATE INDEX idx_customer1
ON customs(customerid);
SELECT indexname
FROM pg_indexes
WHERE tablename = 'customs';