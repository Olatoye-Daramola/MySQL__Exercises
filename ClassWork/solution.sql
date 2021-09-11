-- SOLUTION TO ASSIGNMENT

-- 1 --
select mov_title as 'Movie Name', mov_year as 'Movie Year'
from movie;

-- 2 --
select mov_title as 'Movie Name', mov_year as 'Movie Year'
from movie
where mov_title = 'American Beauty';

-- 3 --
select mov_title as 'Movie Name', mov_year as 'Movie Year'
from movie
where mov_year = 1999;

-- 4 --
select mov_title as 'Movie Name', mov_year as 'Movie Year'
from movie
where mov_year < 1998;

-- 5 --
select mov_title as 'Movie Name', rev_name as 'Reviewer';


-- 6 --
select rev_name as 'Reviewer', rev_stars as 'Stars'
from reviewer, rating
where reviewer.rev_id = rating.rev_id
having rev_name <> 'NULL'
and rev_stars > 7;

-- 7 --

-- 8 --

-- 9 --
select rev_name as 'Reviewer', rev_stars as 'Stars'
from reviewer, rating
where reviewer.rev_id = rating.rev_id
having rev_name <> 'NULL'
and rev_stars = 0;
