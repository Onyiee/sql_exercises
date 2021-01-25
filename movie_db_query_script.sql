select mov_title, mov_year from movie;

select mov_year  from movie where mov_title = 'American Beauty';

select mov_title 
from movie 
where mov_year = 1999;

select mov_title
from movie
where mov_year < 1998;

 select movie.mov_title, reviewer.rev_name
 from movie join reviewer;

select rev_name from reviewer join rating
on reviewer.rev_id = rating.rev_id
where rev_stars >= 7;

select mov_title from movie join rating
on rating.mov_id = movie.mov_id
where num_o_ratings is null;

select rev_name from reviewer join rating
on rating.rev_id = reviewer.rev_id
where rev_stars is null;

select * from movie;
select * from director;
select * from movie_direction;
select mov_title, director.dir_fname, director.dir_ltname
 from movie join movie_direction
on movie.mov_id = movie_direction.mov_id
join  director on director.dir_id = movie_direction.dir_id
where mov_title = 'Eyes Wide Shut';

