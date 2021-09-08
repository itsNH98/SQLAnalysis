 select *
 from met 
 limit 10;

 select count(*)
 from met;

 select count(*)
 from met
 where category like '%celery%';

 select title, medium, min(date) as old
 from met;

 select country, count(*)
 from met
 group by country
 limit 10;

 select category, count(*) as total
 from met
 group by category
 having total >100;

select medium, count(*)
from met 
where medium like '%gold%' or medium like '%silver%'
group by 1
order by 2 desc;
