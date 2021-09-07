CREATE TABLE friends (
   id INTEGER,
   name TEXT,
   birthday DATE
);

insert into friends (id, name, birthday)
values (1, 'Ororo Munroe', '1940-05-30');
insert into friends (id, name, birthday)
values (2, 'Nic', '2001-01-01');
insert into friends (id, name, birthday)
values (3, 'Felix', '2002-02-02');

UPDATE friends
SET name = 'Ororo Munroe'
WHERE id = 1;

alter table friends
add column email text;

update friends 
set email = "storm@codecademy.com"
where id = 1;


update friends 
set email = "bigdog1"
where id = 2;


update friends 
set email = "bigdog2"
where id = 3;

delete from friends 
where id = 1;

select * 
from friends;


