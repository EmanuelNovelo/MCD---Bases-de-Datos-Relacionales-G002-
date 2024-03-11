#Punto 1
#devuelve los libros que fueron más solicitados

CREATE VIEW libros_on_demand AS
SELECT 
    l.id AS id_libro,
    l.titulo,
    COUNT(lu.id_libro) AS times_lended
FROM 
    libros_usuarios lu
INNER JOIN 
    libros l ON lu.id_libro = l.id
GROUP BY 
    l.id, l.titulo
ORDER BY 
    times_lended ASC;

#worked (yes)
   
#Punto 4
# devuelve que usauarios no han devuelto aun los libros que pidieron, y cuantos dias han pasasdo
  
CREATE OR REPLACE  VIEW usuarios_onhold AS
SELECT 
    u.nombre AS nombre_usuario,
    l.titulo AS nombre_libro,
    DATEDIFF('2024-04-15', lu.fecha_prestamo) AS dias_sincePrestamo
FROM 
    libros_usuarios lu
INNER JOIN 
    usuarios u ON lu.id_usuario = u.id
INNER JOIN 
    libros l ON lu.id_libro = l.id
WHERE 
    lu.fecha_retorno IS NULL
ORDER BY 
    dias_sincePrestamo DESC;


