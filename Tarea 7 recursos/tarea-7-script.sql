-- subconsultas

SELECT 
    season,
    COUNT(*) AS Total_Partidos,
    (SELECT SUM(home_team_goal + away_team_goal) 
     FROM "Match" m2
     WHERE m2.season = m1.season AND m2.league_id = m1.league_id) AS Total_Goles,
    (SELECT AVG(home_team_goal + away_team_goal) 
     FROM "Match" m3
     WHERE m3.season = m1.season AND m3.league_id = m1.league_id) AS Promedio_Goles_Por_Partido
FROM 
    "Match" m1
WHERE 
    league_id = 1729
    AND season = '2015/2016'
GROUP BY 
    season;

--subconsulta 2
   
SELECT 
    (SELECT MAX(season) FROM match) AS Temporada_Mas_Reciente,
    SUM(home_team_goal + away_team_goal) AS Total_Goles
FROM 
    "Match" m 
WHERE 
    season = (SELECT MAX(season) FROM "Match" m2);
