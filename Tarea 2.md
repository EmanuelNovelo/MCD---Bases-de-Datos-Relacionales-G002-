# Tarea 2 
## Instrucciones 

1. [8 puntos] Convierte tu base de datos no estructurada en un modelo de E-R, representándolo como un diagrama de E-R. Usa nodos con figuras correctas y aristas claramente señaladas con los números correspondientes para las relaciones. 
2. [2 puntos] Muestra el dominio de los atributos 
3. Subir esta descripción en un archivo md o PDF, nombrado claramente (tarea 2 o algo por el estilo)

## Tarea Resuelta

El diagrama de E-R se anexa debajo:
![European Soccer DB - E-R](https://github.com/EmanuelNovelo/MCD---Bases-de-Datos-Relacionales-G002-/blob/main/Tarea%202%20-%20E-R_EuropeanSoccer-DB%20IMAGEN.svg)

### Punto 3

Se describe el diagrama de E-R de la base European Soccer DataBase

El diagrama explica la relacion entre 7 datasets
Contiene las entidades (o datasets - representadas por rectangulos), los atributos (o columnas -  representados por óvalos) y los dominios (o data Type - representados por hexágonos)
A su vez los elementos están conectados por Relaciones (representadas por rombos)

Las relaciones entre entidades se explican en resumen de la siguiente forma:

country:
Descripción: Se enumeran los países que incluye la base
- 1 a 1 league; las ligas solo se juegan en 1 país a la vez, y en esta base cada país solo tiene 1 liga
- 1 a N match; En un país se juegan varios partidos, cada partido solo se puede jugar en 1 país a la vez

league:
Descripción: Se enumeran las ligas por país que se incluyen en la base
- 1 a N match; en una liga se pueden jugar varios partidos, cada partido solo se puede jugar en 1 país a la vez

match:
Descripción: Se muestran los partidos por temporada y liga que hubo en un periodo de años. Así como la información detallada de cada juego

player:
Descripción: Se muestran las características básicas de los jugadores, no cambian en el tiempo
- N a 1 match; muchos jugadores juegan en 1 partido
- 1 a N player_attributes; 1 jugador posee diferentes atributos en diferentes momentos del tiempo, posee ciertos atributos dependiendo del momento N

player_attributes:
Descripción: Atributos físicos y técnicos de los jugadores, cambian en el tiempo
- N a 1 match; muchos jugadores juegan en 1 partido / no se incluye en diagrama* (duda a realizarse en Clase)

team:
Descripción: Se muestran las características básicas de los equipos, no cambian en el tiempo
- N a 1 match; muchos (2) equipos juegan en 1 partido
- 1 a N team_attributes; 1 equipo posee diferentes atributos en diferentes momentos del tiempo, posee ciertos atributos dependiendo del momento N

team_attributes:
Descripción: Atributos tácticos y técnicos de los equipos, cambian en el tiempo
- N a 1 match; muchos (2) equipos juegan en 1 partido / no se incluye en diagrama* (duda a realizarse en Clase)
