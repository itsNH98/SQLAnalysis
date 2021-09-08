SELECT title, score
FROM hacker_news
ORDER BY score DESC
LIMIT 5;

select sum(score)
from hacker_news;

select user, sum(score) as points
from hacker_news
group by user
having points > 200 
order by 2 desc;

SELECT (517 + 309 + 304 + 282) / 6366.0;

select user, count(*)
from hacker_news
where url = 'https://www.youtube.com/watch?v=dQw4w9WgXcQ'
group by user
order by count(*) desc;

SELECT CASE
   WHEN url LIKE '%github.com%' THEN 'GitHub'
   WHEN url LIKE '%medium.com%' THEN 'Medium'
   WHEN url LIKE '%nytimes.com%' THEN 'New York Times'
   ELSE 'Other'
  END AS 'Source',
  COUNT(*)
FROM hacker_news
GROUP BY 1;

SELECT timestamp
FROM hacker_news
LIMIT 10;

SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;


select  strftime('%H', timestamp) as 'time', 
  round(avg(score)) as 'average score',
  count(*) as 'amount'
from hacker_news
where 1 is not Null
group by 1
order by 1;



