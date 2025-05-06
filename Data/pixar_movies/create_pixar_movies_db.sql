-- DSCI551 Final Project: Pixar Films Dataset
-- Create Database and Tables

create database if not exists pixar_movies;
use pixar_movies;

drop table if exists box_office;
drop table if exists academy;
drop table if exists genres;
drop table if exists pixar_people;
drop table if exists public_response;
drop table if exists pixar_films;

-- Table: pixar_films
create table pixar_films (
    film varchar(30) primary key,
    release_date date,
    run_time int,
    film_rating enum('G', 'PG', 'PG-13', 'R'),
    plot text
);

-- Table: box_office
create table box_office (
    film varchar(30) primary key,
    budget int,
    box_office_us_canada int,
    box_office_other int,
    box_office_worldwide int,
    foreign key (film) references pixar_films(film)
);

-- Table: academy
create table academy (
    film varchar(30),
    award_type text,
    status text,
    foreign key (film) references pixar_films(film)
);

-- Table: genres
create table genres (
    film varchar(30),
    category enum('Genre', 'Subgenre'),
    value text,
    foreign key (film) references pixar_films(film)
);

-- Table: pixar_people
create table pixar_people (
    film varchar(30),
    role_type text,
    name varchar(50),
    foreign key (film) references pixar_films(film)
);

-- Table: public_response
create table public_response (
    film varchar(30),
    rotten_tomatoes_score int,
    rotten_tomatoes_counts int,
    metacritic_score int,
    metacritic_counts int,
    cinema_score text,
    imdb_score decimal(2,1),
    imdb_counts int,
    foreign key (film) references pixar_films(film)
);
