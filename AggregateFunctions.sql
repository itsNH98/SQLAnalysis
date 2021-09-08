-- select * from startups

select count(*)
from startups;

select sum(valuation)
from startups;

select max(raised)
from startups;

select max(raised)
from startups
where stage = 'Seed';

select min(founded)
from startups;

/*
select category, round(avg(valuation),2)
from startups
group by category;
*/

/*
select category, count(*) as total
from startups
group by category
having total > 3;
*/

select location, avg(employees)
from startups
group by location
having avg(employees) > 500;


