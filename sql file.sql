select * from orderdetails;
select * from orders;

-- basic operation


alter table orderdetails
add foreign key (orderid) references orders(orderid);

select count(*) from orderdetails;
select count(*) from orders;
select * from orders where orderid is null;
select * from orderdetails where orderid is null;

-- search for dublicates 
select orderid as id, count(*) as count
from orderdetails
group by orderid having count(*)>1 ;


-- check if all orderid are present in orders table 
SELECT od.orderid
FROM orderdetails od
LEFT JOIN orders o ON od.orderid = o.orderid
WHERE o.orderid IS NULL;
 

-- top 10 customer by total spending 

select CustomerName,sum(amount) as amount
from orderdetails od
left join orders o
on od.orderid=o.orderid
group by CustomerName
order by amount desc limit 10;


select * from orderdetails;
select * from orders;