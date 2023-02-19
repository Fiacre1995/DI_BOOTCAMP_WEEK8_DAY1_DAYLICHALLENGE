-- Database: Hollywood

-- DROP DATABASE IF EXISTS "Hollywood";

CREATE DATABASE "Hollywood"
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'French_France.1252'
    LC_CTYPE = 'French_France.1252'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
	
	-- create table --
	CREATE TABLE actors(
		 actor_id SERIAL PRIMARY KEY,
		 first_name VARCHAR (50) NOT NULL,
		 last_name VARCHAR (100) NOT NULL,
		 age DATE NOT NULL,
		 number_oscars SMALLINT NOT NULL
	);
	
	-- Ajouter des données a la table --
	
	INSERT INTO actors (first_name, last_name, age, number_oscars)
	VALUES('Matt','Damon','08/10/1970', 5),
		  ('George','Clooney','06/05/1961', 2);
		  
	SELECT COUNT(*) FROM actors
