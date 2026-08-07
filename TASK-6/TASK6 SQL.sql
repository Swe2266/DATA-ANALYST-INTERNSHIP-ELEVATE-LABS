-----CRAETING THE TABLE-------
create table onlinesale(order_id INT PRIMARY KEY,order_date DATE,revenue NUMERIC(10,2),product_id INT);

-----INSERTING THE RECORDS TO TABLE---------

Insert into onlinesale(order_id,order_date,revenue,product_id) Values
(1,'03-04-2025',1400,101),
(2,'23-07-2025',20000,102),
(3,'13-05-2026',11400,103),
(4,'03-12-2025',3500,104),
(5,'09-11-2025',20000,105),
(6,'17-06-2025',500,106),
(7,'15-01-2025',8000,107),
(8,'20-03-2025',7400,108),
(9,'09-05-2025',6000,109),
(10,'10-09-2025',1400,110),
(11,'03-10-2025',1770,111),
(12,'03-03-2025',1756,112),
(13,'7-10-2025',900,113),
(14,'14-09-2025',8500,114),
(15,'19-12-2025',200,154),
(16,'01-11-2025',1900,785),
(17,'10-05-2025',600,255),
(18,'18-01-2025',100,789),
(19,'23-02-2025',456,354),
(20,'25-07-2025',528,199);


------------DISPLAYING ALL THE RECORDS-------------------
select*from onlinesale;


------------EXTRACT THE MONTH FROM ORDER_DATA-------------------

Select order_date,Extract(MONTH from order_date) from onlinesale;

------------SUM OF THE REVENUE-------------------
Select sum(revenue)from onlinesale;

------------COUNT FOR ALL RECORDS-------------------
select count(*)from onlinesale;

------------DISTINCT COUNT FOR ORDER_ID-------------------
SELECT COUNT(DISTINCT order_id) FROM onlinesale;

------------GROUP BY YEAR-------------------
select EXTRACT(YEAR from order_date) AS YEAR,SUM(revenue) AS total_rev from onlinesale
GROUP BY EXTRACT(YEAR from order_date);

------------GROUP BY MONTH-------------------
Select EXTRACT(MONTH from order_date) As MONTH,SUM(revenue) AS tota_monthrev from onlinesale
GROUP BY extract(MONTH FROM order_date);

------------ORDER BY FOR ORDER_ID-------------------

select *from onlinesale 
ORDER BY order_id;

------------ORDER BY FOR ORDER_ID DESC-------------------

Select*from onlinesale ORDER BY order_id DESC;

------------ORDER BY FOR PRODUCT_ID-------------------

Select*from onlinesale ORDER BY product_id DESC;

-----------GROUP BY AND ORDER BY FOR PRODUCT _ID-------------------
Select extract(MONTH FROM order_date) AS MONTH,SUM(revenue) AS tot_rev from onlinesale
Group by extract(MONTH FROM order_date)
ORDER BY EXTRACT(MONTH FROM order_date);


------------------LIMIT RESULTS FRO SPECIFIC TME PERIODS----------

Select * from onlinesale
where order_date BETWEEN '03-04-2025' AND '7-10-2025'

------------- display for months------------
select *from onlinesale
where extract(month from order_date) BETWEEN 3 AND 8



-----------------------------------------------------