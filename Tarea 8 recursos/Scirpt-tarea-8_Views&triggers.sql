-- jugadores que jugaron un determinado partido y el equipo al que pertenecen

CREATE VIEW vista_detalle_partido AS
SELECT
    p.id,
    j.player_name,
    CASE
        WHEN j.player_api_id IN (p.home_player_1, p.home_player_2, p.home_player_3, p.home_player_4, p.home_player_5, p.home_player_6, p.home_player_7, p.home_player_8, p.home_player_9, p.home_player_10, p.home_player_11) THEN (SELECT team_long_name FROM Team WHERE team_api_id = p.home_team_api_id)
        WHEN j.player_api_id IN (p.away_player_1, p.away_player_2, p.away_player_3, p.away_player_4, p.away_player_5, p.away_player_6, p.away_player_7, p.away_player_8, p.away_player_9, p.away_player_10, p.away_player_11) THEN (SELECT team_long_name FROM Team WHERE team_api_id = p.away_team_api_id)
        ELSE 'Unknown team'
    END AS nombre_equipo,
    CASE
        WHEN j.player_api_id IN (p.home_player_1, p.home_player_2, p.home_player_3, p.home_player_4, p.home_player_5, p.home_player_6, p.home_player_7, p.home_player_8, p.home_player_9, p.home_player_10, p.home_player_11) THEN 'Local'
        WHEN j.player_api_id IN (p.away_player_1, p.away_player_2, p.away_player_3, p.away_player_4, p.away_player_5, p.away_player_6, p.away_player_7, p.away_player_8, p.away_player_9, p.away_player_10, p.away_player_11) THEN 'Visitante'
        ELSE 'Posición Desconocida'
    END AS posicion_equipo
FROM 
    "Match" p
JOIN 
    Player j ON j.player_api_id IN (p.home_player_1, p.home_player_2, p.home_player_3, p.home_player_4, p.home_player_5, p.home_player_6, p.home_player_7, p.home_player_8, p.home_player_9, p.home_player_10, p.home_player_11, p.away_player_1, p.away_player_2, p.away_player_3, p.away_player_4, p.away_player_5, p.away_player_6, p.away_player_7, p.away_player_8, p.away_player_9, p.away_player_10, p.away_player_11)
WHERE 
    p.id = 7738; -- ID de un partido específico


SELECT * FROM vista_detalle_partido
    
-- 