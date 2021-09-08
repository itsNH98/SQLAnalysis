select * from transactions limit 10;

select sum(money_in)
from transactions;

select sum(money_out)
from transactions;

select sum(money_in)
from transactions
where currency = 'BIT';

select max(money_in)
from transactions;

select max(money_out)
from transactions;

select avg(money_in)
from transactions
where currency = 'ETH';

select date, round(avg(money_in),2) as inflow, round(avg(money_out),2) as outflow
from transactions 
group by date;