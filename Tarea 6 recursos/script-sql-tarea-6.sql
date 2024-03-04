--Tarea 6

--Media

SELECT AVG(home_team_goal + away_team_goal) as avg_goals
FROM "Match" m 
WHERE season = '2015/2016'

--minimo

SELECT player_api_id, MIN(overall_rating)
FROM Player_Attributes pa 
WHERE SUBSTR(date, 1, 4) = '2016';


--Máximo

WITH Ganadores AS (
  SELECT
  	league_id,
    CASE
      WHEN home_team_goal > away_team_goal THEN home_team_api_id
      WHEN away_team_goal > home_team_goal THEN away_team_api_id
    END AS EquipoGanador
  FROM "Match" m 
  WHERE season = '2015/2016' AND home_team_goal != away_team_goal
),
ConteoDeVictorias AS (
  SELECT
    league_id,
    EquipoGanador AS Equipo_id,
    COUNT(EquipoGanador) AS NumeroDeVictorias
  FROM Ganadores
  GROUP BY league_id, EquipoGanador
)
SELECT
  league_id,
  Equipo_id,
  MAX(NumeroDeVictorias) AS MaximoVictorias
FROM ConteoDeVictorias
GROUP BY league_id
ORDER BY league_id, MaximoVictorias DESC;

--cuantil

SELECT overall_rating
FROM (
  SELECT overall_rating,
         ROW_NUMBER() OVER (ORDER BY overall_rating) AS rn,
         COUNT(*) OVER () AS cnt
  FROM Player_Attributes pa 
  WHERE overall_rating IS NOT NULL
    AND SUBSTR(date, 1, 4) = '2016'
) 
WHERE rn = ROUND(0.75 * cnt)

--moda

SELECT league_id, COUNT(*) as total_partidos
FROM "Match" m 
WHERE season = '2015/2016'
GROUP BY league_id
ORDER BY total_partidos DESC;


