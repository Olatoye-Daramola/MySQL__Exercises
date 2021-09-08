-- create database movieDB;

use movieDB;


create table movie(
	`mov_id` 			int Not Null,
    `mov_title`			Char(50) Not Null,
    `mov_year` 			int Not Null,
    `mov_time` 			int Not Null,
    `mov_lang` 			Char(50) Not Null,
    `mov_dt_rel`		date,
    `mov_rel_country` 	Char(5) not null,
    
    constraint human_PK Primary Key(mov_id)
);

create table actor(
	act_id				int not null,
    `act_fname`			char(20) not null,
    `act_lname`			char(20) not null,
    act_gender			char(1)	not null,
    
    constraint actor_PK primary key(act_id)
);

create table director(
	dir_id				int not null,
    `dir_fname`			char(20) not null,
    `dir lname`			char(20) not null,
    
    constraint director_PK primary key(dir_id)
);

create table reviewer(
	rev_id				int not null,
    `rev_name`			char(30) not null,
    
    constraint reviewer_PK primary key(rev_id)
);

create table genre(
	gen_id				int not null,
    `gen_title`			char(20),
    
    constraint genre_PK primary key(gen_id)
);

create table movie_direction(
	dir_id				int not null,
    mov_id				int not null,
    
    constraint movieDirection_Pk Primary Key(dir_id, mov_id),
    constraint dir_fk foreign Key(dir_id)
						references director(dir_id),
	constraint mov_fk foreign key(mov_id)
						references movie(mov_id)
);

create table movie_cast(
	act_id				int not null,
    mov_id				int not null,
    `role`				char(30) not null,
    
    constraint movieCast_Pk Primary Key(act_id, mov_id),
    constraint act_fk foreign Key(act_id)
						references actor(act_id),
	constraint movCast_fk foreign key(mov_id)
						references movie(mov_id)
);

create table movie_genre(
	mov_id				int not null,
    gen_id				int not null,
    
    constraint movieGenre_Pk Primary Key(mov_id, gen_id),
    constraint movGen_fk foreign Key(mov_id)
						references movie(mov_id),
	constraint gen_fk foreign key(gen_id)
						references genre(gen_id)
);

create table rating(
    mov_id				int not null,
    rev_id				int not null,
    rev_stars			int not null,
    num_o_ratings		int not null,
    
    constraint rating_Pk Primary Key(mov_id, rev_id),
    constraint movRat_fk foreign Key(mov_id)
						references movie(mov_id),
	constraint rev_fk foreign key(rev_id)
						references reviewer(rev_id)
);