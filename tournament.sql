-- Table definitions for the tournament project.
-- Author:  Nelitza Martinez-Vega
-- Drop databse if exists.
DROP DATABASE if exists tournament;

-- Create database Tournament.
CREATE DATABASE tournament;

-- Connect to database.
\c tournament;

-- Create players table.
CREATE TABLE players(
  id_players serial PRIMARY KEY,
  name VARCHAR(80));

-- Create table matches.
CREATE TABLE matches (
  id_matches SERIAL PRIMARY KEY, 
  winners INTEGER REFERENCES players(id_players), 
  losers INTEGER REFERENCES players(id_players));
  
-- Create a view to retrieve matches.
CREATE VIEW matches_round AS (
  SELECT id_players, name, COUNT(matches.id_matches) AS game
  FROM players
  LEFT JOIN matches
  ON players.id_players = matches.winners OR players.id_players = matches.losers
  GROUP BY players.id_players);
  
-- Create view to retrieve players wins.
CREATE VIEW players_wins AS (
  SELECT id_players, name, COUNT (matches.winners) AS winnings
  FROM players
  LEFT JOIN matches
  ON players.id_players = matches.winners
  GROUP BY id_players
  ORDER BY winnings DESC);
  
-- Create billboard for standings.
CREATE VIEW billboard AS (
  SELECT matches_round.id_players, matches_round.name,
  COALESCE (players_wins.winnings,0) AS wins,
  COALESCE (matches_round.game,0) AS game
  FROM matches_round
  LEFT JOIN players_wins
  ON matches_round.id_players = players_wins.id_players
  ORDER BY wins DESC);
  
-- To prevent rematch create an Index.
CREATE UNIQUE INDEX matches_unique ON matches(
  greatest(winners, losers), 
  least (winners, losers));