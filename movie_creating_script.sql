create database movie;
use movie;

create table Actor(
act_id   integer not null auto_increment,
act_fname   varchar(20),
act_ltname  varchar(20),
act_gender  varchar(1),
constraint Actor_pk primary key (act_id)
);

create table director(
dir_id   integer not null auto_increment,
dir_fname  varchar(20),
dir_ltname  varchar(20),
constraint director_pk primary key(dir_id)
);

create table movie(
mov_id    integer not null auto_increment ,
mov_title  varchar(50),
mov_year   integer,
mov_time   integer,
mov_lang   varchar(50),
mov_dt_rel  date,
mov_rel_countery varchar(5),
constraint movie_pk primary key(mov_id)
);

create table movie_direction(
dir_id    integer not null,
mov_id    integer not null,
constraint movie_direction_pk primary key(dir_id, mov_id),
constraint movie_direction_fk1 foreign key(dir_id)
				references director(dir_id),
				constraint movie_direction_fk2 foreign key(mov_id)
                references movie(mov_id)
);

create table movie_cast(
act_id   integer not null,
mov_id    integer not null,
role      varchar(30),
constraint movie_cast_pk primary key(act_id, mov_id),
constraint movie_cast_fk1 foreign key(act_id)
		references actor(act_id),
        constraint movie_cast_fk2 foreign key(mov_id)
        references movie(mov_id)
);



create table reviewer(
rev_id    integer not null auto_increment,
rev_name  varchar(30),
constraint reviewer_pk primary key(rev_id)
);

create table genres(
gen_id   integer not null auto_increment,
gen_title  varchar(20),
constraint genres_pk primary key(gen_id)
);

create table movie_genres(
mov_id   integer not null,
gen_id   integer not null,
constraint movie_genres_pk primary key(mov_id, gen_id),
constraint movie_genres_fk1 foreign key(mov_id) references movie(mov_id),
constraint movie_genres_fk2 foreign key(gen_id) references genres(gen_id)
);

create table rating(
mov_id   integer not null,
rev_id   integer not null,
rev_stars  integer,
num_o_ratings  integer,
constraint rating_pk primary key(mov_id, rev_id),
constraint rating_fk1 foreign key(mov_id) references movie(mov_id),
constraint rating_fk2 foreign key(rev_id) references reviewer(rev_id)
)