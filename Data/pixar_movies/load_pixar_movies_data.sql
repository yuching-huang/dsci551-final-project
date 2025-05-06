-- DSCI551 Final Project: Pixar Films Dataset
-- Load Data to Database pixar_movies

use pixar_movies;

-- Load pixar_films
load data infile '/var/lib/mysql-files/pixar_films_updated.csv'
into table pixar_films
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load box_office
load data infile '/var/lib/mysql-files/box_office.csv'
into table box_office
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
ignore 1 rows
(
  @film, @budget, @us, @other, @world
)
set
  film = @film,
  budget = nullif(@budget, 'NA'),
  box_office_us_canada = @us,
  box_office_other = @other,
  box_office_worldwide = @world;

-- Load academy
load data infile '/var/lib/mysql-files/academy.csv'
into table academy
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load genres
load data infile '/var/lib/mysql-files/genres.csv'
into table genres
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load pixar_people
load data infile '/var/lib/mysql-files/pixar_people.csv'
into table pixar_people
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;

-- Load public_response
load data infile '/var/lib/mysql-files/public_response.csv'
into table public_response
fields terminated by ',' 
enclosed by '"'
lines terminated by '\n'
ignore 1 rows;
