-- Creacion de vista: jugadores que jugaron un determinado partido y el equipo al que pertenecen

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

-- Creación de Trigger: Bitacora de registros de partidos

-- creando tabla de bitacora con el nombre de la persona que registró el partido, así como la fecha en que se registró
CREATE TABLE bitacora_matches (
    id_bitacora INTEGER PRIMARY KEY AUTOINCREMENT,
    id_match INTEGER,
    registered_by TEXT,
    register_date TIMESTAMP
);

-- creando el trigger
CREATE TRIGGER trg_bitcora_insert
AFTER INSERT ON "Match"  
FOR EACH ROW
BEGIN
    INSERT INTO bitacora_matches(id_match, registered_by, register_date)
    VALUES (NEW.id_match, 'UsuarioEjemplo', CURRENT_TIMESTAMP);
END;


--