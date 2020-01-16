/*1. Write a query in SQL to find the name and year of the movies.*/
use movie;
select mov_title, mov_year
from movie;

/*•2.   Write a query in SQL to find the year when the movie American Beauty released.*/
select mov_year
from movie
where mov_title = "American Beauty";


/*3.  Write a query in SQL to find the movie which was released in the year 1999*/
select mov_title
from movie
where mov_year = 1999;


/*•4.  Write a query in SQL to find the movies which was released before 1998*/
select mov_title
from movie
where mov_year < 1998;


/*•5.  Write a query in SQL to return the name of all reviewers and name of 
movies together in a single list*/
select   concat(rev_name, "  ... ",mov_title) as reviewers_in_Single_List
from reviewer join movie;

#repetition



/*6.  Write a query in SQL to find the name of all reviewers who have rated 7 or more
 stars to their rating*/
select distinct rev_name,rev_stars
from reviewer join rating
where rating.rev_stars in
(
select rev_stars
from rating
where rev_stars > 7
);



/*•7.  Write a query in SQL to find the titles of all movies that have no ratings.*/
select mov_title, rating.num_o_ratings
from movie, rating 
where rating.num_o_ratings not in
(
select num_o_ratings
from rating
);



/*•8.   Write a query in SQL to find the name of all reviewers who have rated their
 ratings with a NULL value*/

select rev_name
from reviewer,rating
where rating.num_o_ratings in (
select num_o_ratings
from rating
where num_o_ratings = null);



/*9.  Write a query in SQL to find the name of movie and director (first and last names)
 who directed a movie that casted a role for 'Eyes Wide Shut'.*/
select concat(dir_fname,"  ",dir_lname) as director, movie.mov_title
from director , movie
where dir_id in (
select dir_id
from movie_direction
where mov_id in(
select mov_id
from movie
where mov_title in (
select mov_title
from movie
 where mov_title= "Eyes wide shut"
)));
 