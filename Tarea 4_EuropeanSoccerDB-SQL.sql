DROP DATABASE IF EXISTS euro_soccer_db;
 
CREATE DATABASE euro_soccer_db;
 
USE euro_soccer_db;

CREATE TABLE country (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL
);

CREATE TABLE league (
	id INT PRIMARY KEY AUTO_INCREMENT,
	name VARCHAR(20) NOT NULL,
	country_id INT,
		FOREIGN KEY (country_id) REFERENCES country (id)
		ON DELETE CASCADE
);

CREATE TABLE player (
	id INT PRIMARY KEY AUTO_INCREMENT,
	birthday DATE,
	height FLOAT,
	weight FLOAT,
	player_name VARCHAR(50)
);
#comentario: player_api_id (del modelo E-R) pasa a ser el id primario
#comentario 2: player_fifa_api_id es eliminado
#Para esta tarea no se usará el player_api_id real de la base, ya que no está...
#en orden incremental. Se asumirá que es incremental y ordenada.

CREATE TABLE player_attribute (
	id INT PRIMARY KEY AUTO_INCREMENT,
	date DATE,
	overall_rating INT,
	potential INT,
	preferred_foot VARCHAR(10),
	attacking_work_rate VARCHAR(10),
	defensive_work_rate VARCHAR(10),
	finishing INT,
	short_passing INT,
	dribbling INT,
	ball_control INT,
	player_id INT,
		FOREIGN KEY (player_id) REFERENCES player (id)
		ON DELETE CASCADE
);

CREATE TABLE team (
	id INT PRIMARY KEY AUTO_INCREMENT,
	team_long_name VARCHAR(30),
	team_short_name VARCHAR(4)
);
#comentario: team_api_id (del modelo E-R) pasa a ser el id primario
#comentario 2: team_fifa_api_id es eliminado
#Para esta tarea no se usará el team_api_id real de la base, ya que no está...
#en orden incremental. Se asumirá que es incremental y ordenada.

CREATE TABLE team_attributes (
	id INT PRIMARY KEY AUTO_INCREMENT,
	date DATE,
	buildUpSpeed INT,
	buildUpSpeedClass VARCHAR(15),
	buildUpPlayDribbling INT,
	buildUpPlayDribblingClass VARCHAR(10),
	buildUpPlayPassing INT,
	buildUpPlayPassingClass VARCHAR(10),
	chanceCreationPassing INT,
	chanceCreationPassingClass VARCHAR(10),
	team_id INT,
		FOREIGN KEY (team_id) REFERENCES team (id)
		ON DELETE CASCADE
);

CREATE TABLE match_data (
	id INT PRIMARY KEY AUTO_INCREMENT,
	season VARCHAR(10),
	stage INT,
	date DATE,
	home_team_global INT,
	away_team_global INT,
	country_id INT,
		FOREIGN KEY (country_id) REFERENCES country (id)
		ON DELETE CASCADE,
	league_id INT,
		FOREIGN KEY (league_id) REFERENCES league (id)
		ON DELETE CASCADE,
	home_team_id INT,
		FOREIGN KEY (home_team_id) REFERENCES team (id)
		ON DELETE CASCADE,
	away_team_id INT,
		FOREIGN KEY (away_team_id) REFERENCES team (id)
		ON DELETE CASCADE
	
);
#comentario: match_api_id (del modelo E-R) pasa a ser el id primario
#Para esta tarea no se usará el match_api_id real de la base, ya que no está...
#en orden incremental. Se asumirá que es incremental y ordenada.


#----- INSERT 20 ELEMENTS IN TOTAL

#adding 2 countries

INSERT INTO country (name) VALUES
	('England'),
	('Germany');

INSERT INTO league (name, country_id) VALUES
	('PremierLeague',1),
	('Bundesliga',2);

INSERT INTO player (birthday, height, weight, player_name) VALUES
	('1998-12-01', 175.1, 90.3, 'Mane Novelo'),
	('1989-01-02', 189.2, 70.2, 'Juanito Pancho'),
	('1992-04-23', 181.5, 90.0, 'Victor Novelo'),
	('1995-05-14', 181.1, 75.2, 'Esteban Medina');

INSERT INTO player_attribute (date , overall_rating, potential, preferred_foot, attacking_work_rate, defensive_work_rate, finishing, short_passing, dribbling, ball_control, player_id) VALUES
	('2023-02-13',91, 95, 'left', 'high', 'low', 80, 82, 90, 92, 1),
	('2022-02-13',89, 94, 'left', 'high', 'low', 75, 79, 89, 89, 1),
	('2023-02-13',82, 83, 'right', 'medium', 'low', 80, 82, 90, 92, 2),
	('2023-02-13',91, 95, 'right', 'medium', 'high', 75, 94, 80, 84, 3),
	('2023-02-13',91, 95, 'right', 'low', 'low', 67, 72, 74, 69, 4);

INSERT INTO team (team_long_name, team_short_name) VALUES
	('Liverpool FC','LVP'),
	('Bayern Leverkusen','BLK'),
	('Manchester City','MCT'),
	('Bayern Munich', 'BYN');

INSERT INTO team_attributes (date , buildUpSpeed, buildUpSpeedClass, buildUpPlayDribbling, buildUpPlayDribblingClass, buildUpPlayPassing, buildUpPlayPassingClass, chanceCreationPassing, chanceCreationPassingClass, team_id) VALUES
	('2023-02-13', 70, 'Fast', 60, 'normal', 75, 'mixed', 55, 'risky', 1),
	('2022-02-13', 65, 'Fast', 65, 'little', 75, 'long', 60, 'normal', 1),
	('2023-02-13', 45, 'balanced', 57, 'normal', 53, 'long', 68, 'normal', 2);

INSERT INTO match_data (season, stage, date , home_team_global, away_team_global, country_id, league_id, home_team_id, away_team_id) VALUES
	('2022/2023', 1, '2023-02-13', 1,0, 1, 1, 1, 3),
	('2022/2023', 1, '2023-02-13', 2,1, 2, 2, 2, 4);


#-------------- queries para demostrar correcto funcionamiento de la base-----------

SELECT * FROM player

SELECT * FROM player 
INNER JOIN player_attribute
WHERE player_name = 'Mane Novelo'

SELECT * FROM match_data
WHERE home_team_id = 1