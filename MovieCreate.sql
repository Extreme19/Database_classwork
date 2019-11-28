use movie;
create table actor(
act_id	integer	not null,
act_fname	char(20)	 null,
act_lname	char(20)	 null,
act_gender	char(1)	not null,
constraint actor_pk primary key(act_id)
);


create table director(
dir_id	integer not null,
dir_fname	char(20)	 null,
dir_lname	 char(20)	 null,
constraint dir_pk	primary key(dir_id)
);

create table movie(
mov_id	integer not  null,
mov_title	char(30)	 null,
mov_year	integer 	null,
mov_time integer	 null,
mov_lang	char(50)	 null,
mov_dt_rel	date	 null,
mov_rel_country	char(10),
constraint movie_pk primary key(mov_id)
);

create table reviewer (
rev_id	integer	not null,
rev_name	char(30)	 null,
constraint reviewer_pk	primary key(rev_id)
);

create table genres(
gen_id	integer	not null,
gen_title	char(20)	 null,
constraint genres_pk	primary key(gen_id)
);

create table movie_direction(
dir_id	integer		not null,
mov_id	integer		not null,
constraint mov_dir_pk primary key(mov_id, dir_id),
constraint mov_fk1 foreign key(dir_id)	
references director(dir_id),
constraint mov_fk2	foreign key(mov_id) references	movie(mov_id)
);
create table movie_cast(
act_id	 integer	not null,
mov_id	integer	not null,
movie_role	char(30) null,
constraint mov_cast_pk primary key(mov_id, act_id),
constraint mov_cst_fk1	foreign key(act_id)
references	actor(act_id),
constraint mov_cst_fk2	foreign key(mov_id)
references	movie(mov_id)
);

create table movie_genres(
mov_id	integer	not null,
gen_id	integer	not null,
constraint mov_gen_pk primary key(mov_id, gen_id),
constraint mov_genre_fk1	foreign key(gen_id)
references	genres(gen_id),
constraint mov_genre_fk2	foreign key(mov_id)
references	movie(mov_id)
);

create table rating(
mov_id	integer	not null,
rev_id	integer	not null,
rev_stars	integer	not null,
num_o_ratings	integer	not null,
constraint rating_pk primary key(mov_id, rev_id),
constraint rating_fk1	foreign key(rev_id)
references	reviewer(rev_id),
constraint rating_fk2	foreign key(mov_id)
references	movie(mov_id)
);