-- Table definitions for the tournament project.
--
-- Put your SQL 'create table' statements in this file; also 'create view'
-- statements if you choose to use it.
--
-- You can write comments in this file by starting them with two dashes, like
-- these lines here.


CREATE TABLE players (id SERIAL PRIMARY KEY,
											name TEXT);

CREATE TABLE matches (id SERIAL PRIMARY KEY,
											winner INTEGER REFERENCES players (id),
											loser INTEGER REFERENCES players (id));

CREATE VIEW standing AS 
											SELECT players.id, players.name, 
											SUM(CASE WHEN players.id=matches.winner THEN 1 ELSE 0 END) AS wins, 
											COUNT(matches.winner) AS matches 
											FROM players
											LEFT JOIN matches
											ON players.id=matches.winner OR players.id=matches.loser 
											GROUP BY players.id 
											ORDER BY wins DESC;