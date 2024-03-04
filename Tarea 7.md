# Tarea 7

Por el momento no se han reportado inconsistencias en la base de datos, sin embargo se ejecutan algunos comandos de subconsultas para reforzar lo visto en la clase.

El script completo de SQLite se anexa: ![scrip](./Tarea%207%20recursos/tarea-7-script.sql)

1. EDA de la Premier League de Inglaterra temporada 2015/2016
Podemos observar como con el uso de subconsultas obtenemos una tabla que nos devuelve cuántos partidos se jugaron durante la temporada, así como la cantidad de goles en total y en promedio por partido.

![subconsulta1](./Tarea%207%20recursos/subconsulta1.png)

2. Se utilizaron las subconsultas para obtener la temporada más reciente que se ha llevado a cabo. Se obtuvo finalmente la cantidad de goles en total que se marcaron en la temporada más reciente.

![subconsulta2](./Tarea%207%20recursos/subconsulta2.png)




*Disclaimer: En algunas tablas existen columnas con valores "raros", sin embargo, por el momento no conozco cómo se resuelve: Ej. Columna "goal" de la tabla "Match" -> "<goal><value><comment>n</comment><stats><goals>1</goals><shoton>1</shoton></stats><event_incident_typefk>406</event_incident_typefk><coordinates><value>21</value><value>7</value></coordinates><elapsed>5</elapsed><player2>38521</player2><subtype>header</subtype><player1>46469</player1><sortorder>3</sortorder><team>9825</team><id>5612107</id><n>25</n><type>goal</type><goal_type>n</goal_type></value><value><comment>n</comment><stats><goals>1</goals><shoton>1</shoton></stats><event_incident_typefk>393</event_incident_typefk><coordinates><value>19</value><value>3</value></coordinates><elapsed>79</elapsed><player2>36378</player2><subtype>shot</subtype><player1>46469</player1><sortorder>2</sortorder><team>9825</team><id>5613826</id><n>343</n><type>goal</type><goal_type>n</goal_type></value><value><comment>n</comment><stats><goals>1</goals><shoton>1</shoton></stats><event_incident_typefk>393</event_incident_typefk><coordinates><value>21</value><value>7</value></coordinates><elapsed>80</elapsed><player2>427438</player2><subtype>shot</subtype><player1>46469</player1><sortorder>2</sortorder><team>9825</team><id>5613856</id><n>358</n><type>goal</type><goal_type>n</goal_type></value><value><comment>o</comment><stats><owngoals>1</owngoals></stats><elapsed_plus>3</elapsed_plus><event_incident_typefk>115</event_incident_typefk><coordinates><value>25</value><value>2</value></coordinates><elapsed>90</elapsed><player1>24579</player1><sortorder>8</sortorder><team>10252</team><id>5614136</id><n>411</n><type>goal</type><goal_type>o</goal_type></value></goal>"
