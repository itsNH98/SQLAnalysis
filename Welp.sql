SELECT * 
FROM places;
 
SELECT * 
FROM reviews;

select * 
from places 
where price_point = '$' or price_point = '$$';

select places.name, places.average_rating,
  reviews.username, reviews.rating, reviews.review_date, reviews.note
from places
inner join reviews
  on places.id = reviews.place_id;

select places.name, places.average_rating,
  reviews.username, reviews.rating, reviews.review_date, reviews.note
from places
left join reviews
  on places.id = reviews.place_id;

SELECT places.id, places.name
FROM places 
LEFT JOIN reviews 
   ON places.id = reviews.place_id
WHERE reviews.place_id IS NULL;

with reviews20 as (
select *
from reviews
where strftime("%Y", review_date) = '2020'
)
select *
from reviews20
join places
on reviews20.place_id = places.id;

select reviews.username, count(*)
from reviews
inner join places
  on places.id = reviews.place_id
where reviews.rating < places.average_rating
group by 1
order by 2 desc
limit 1;





