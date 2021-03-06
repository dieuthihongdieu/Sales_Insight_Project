/* Data anlysis Using SQL*/
-- 1. Show all customer records:
Select *
from sales.customers;

-- 2. Show total number of customers:
select count(*)
from sales.customers;

-- 3. Show transactions for Chennai market (market code for chennai is Mark001): 
Select *
from sales.transactions
where market_code = 'Mark001';

-- 4. Show distrinct product codes that were sold in chennai: 
select distinct product_code
from sales.transactions
where market_code = 'Mark001';

-- 5. Show transactions where currency is US dollars: 
select *
from sales.transactions
where currency = 'USD';

-- 6. Show transactions in 2020 join by date table: 
select * 
from       sales.transactions as t
inner join sales.date as d
on         t.order_date= d.date
where d.year = 2020;
-- 7. Show total revenue in year 2020: 
select sum(sales_amount)
from  sales.transactions as t
inner join sales.date as d
on         t.order_date= d.date
where d.year = 2020;

-- 8. Show total revenue in year 2020, January Month: 
select sum(sales_amount)
from  sales.transactions as t
inner join sales.date as d
on         t.order_date= d.date
where d.year = 2020 and d.month_name = 'January';

-- 9. Show total revenue in year 2020 in Chennai:

Select sum(sales_amount)
from sales.transactions
where market_code = 'Mark001';