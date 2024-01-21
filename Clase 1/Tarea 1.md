# Tarea 1 
## Instrucciones 

1. --crear un reposotorio publico en github--
2. --compartir el repositorio en el teaqms--
3. describir una base de datos y sus relaciones de manera no estructurada (puede ser un parrafo, lista, esquema) con la que trabajar durante el semestre. Agrega el tipo de dato que supones tendra cada uno de tus atributos
4. investigar diferentes SGBD, elegir alguno y describirlo. Citar adecuadamente. Plagio invalida tarea
5. subir esta descripcion en un archivo MD o PDF claramente (ponerle de nombre tarea 1 o algo asi)


## Tarea resuelta: 

3. La base de datos que elegí es "European Soccer Database". Esta base contiene informacion de miles de partidos de las ligas top de Europa, desde 2008 hasta 2016. También contiene estadísticas de cada jugador basadas en el videojeugo FIFA. La información de los partidos abarca desde los resultados, goles, hasta las alineaciones medidas en coordenadas.
La base de datos se encuentra en sqlite y pesa aproximadamente 313MB. 
La base esta conformada por 7 datasets relacionados, desde los paises de las ligas hasta información detallada de los equipos y de los jugadores. 

A grandes rasgos se describe el contenido de los datasets:
* Country: Lista de paises en la base
* League: Lista de ligas registradas en la base con su respectivo país
* Match: informacion detallada de más de 25,000 partidos entre 2008 y 2016, información de fechas, resultados, equipos, alineaciones; en total 115 columnas
* Player: Informacion de los identificadores basicos de cada jugador
* Player_attributes: información detallada de las características físicas y técnicas de cada jugador en fechas de corte determinadas. 42 columnas
* Team: Informacion de los identificadores basicos de cada equipo
* Team_attributes: Información detallada de las caracteríticas de juego y estilo táctico de cada equipo en fechas de corte determinadas. 25 columnas

Los tipos de datos dentro de esta base se componen por 136 columnas de tipo Integer, 33 columnas de tipo string y 30 columnas de tipo decimal (en total 199 columnas unicas dentro de los 7 datasets)

4. Algunos de los SGBDs más ampliamente usados son:
- MySQL
- PostgreSQL
- Microsoft SQL Server
- Oracle Database
- SQLite
- Entre otros...

Para este curso elegiré SQLite, ya que aunque el maestro nos recomendó utilizar MySQL, la base que elegí de mi interés se encuentra en SQlite.

A continuación se describe SQLite.

SQLite es un sistema de gestión de base de datos de dominio público creado por Richard Hip en el año 2000, que no almacena la información en un servidor terciario, sino dentro del mismo sistema del computador (disco duro) o srevidor que se esté utilizando (Esto a diferencia de por ejemplo MySQL, que se almacena en un servidor terciario que es compartido y puede ser accesado de forma simultánea por diversos usarios). 
SQLite es una alternativa muy prática para el manejo de datos de gran escala y de uso individual. 
SQLite por supuesto funciona con los query's en lenguaje SQL y posee conmpatibilidad también con dispositivos móbiles. 
Una de las grandes ventajas de SQLite (que seguramente no tenga importancia para la finalidad co la que lo usaré) es que SQLite es de dominio público, es decir que no tiene licencia por lo que cualquiera puede integrarlo dentro de sus propios productos o servicios sin ningún problema legal, a diferencia por ejemplo de MySQL que no es de dominio público.

Referencias páginas web: 
https://docs.python.org/es/3.8/library/sqlite3.html
https://sg.com.mx/revista/17/sqlite-la-base-datos-embebida
