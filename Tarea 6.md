# Tarea 6

Se muestran los hallazgos de la tarea 6, donde se ejecutaron comandos de agregación para calcular:
- Media
- mínimo
- máximo
- cuantil != mediana
- moda

1. Media: Se obtiene la media de goles por partido en la temporada 2015/2016, en todas las ligas

![media](./Tarea%206%20recursos/media.png)

2. Mínimo: Se obtiene una tabla de los jugadores con menor "Global", para el año 2016

![minimo](./Tarea%206%20recursos/minimo.png)

3. Máximo: Se obtiene una tabla con los equipos que más veces han ganado en la temporada 2015/2016, por liga

![maximo](./Tarea%206%20recursos/maximo.png)

4. Cuantil: Se obtiene el cuantil 75 que describe qué potencial, máximo, tienen el 75% de los jugadores, para el año 2016

![cuantil](./Tarea%206%20recursos/cuantil.png)

5. Moda: Se obtiene la liga o ligas en las que se disputaron más partidos en la temporada 2015/2016

![moda](./Tarea%206%20recursos/moda.png)

Se reportan también las *dificultades* presentadas:

El principal reto, en lo personal, fue el uso de subconsultas y creaciones de tablas adicionales, ya que no las había utilizado en el pasado, más que siguiendo al profesor en las clases. Para obtener los equipos más ganadores, por ejemplo, cree 2 tablas llamadas "Ganadores" y "ConteodeVictorias", la segunda la cree como tabla adicional de la primera, y "Ganadores" la cree como tabla adicional de la tabla de Partidos disputados. 
Para el caso de las subconsultas, las tuve que emplear ya que sqlite no tiene funciones de "cuantil" disponibles, por lo que cree una tabla que primero contara y ordenara las observaciones, para asi obtener el percentil 75 / cuartil 3.
Otros detalles menores fueron que no existía como tal una función de "moda", así que para ese apartado solo ordené en orden descendente.
Finalmente, para casi todos los puntos anteriores, me hubiera gustado que en lugar de league_id o Equipo_id, por ejemplo, en efecto viniera el nombre de la liga o el nombre del equipo, para ello debí haber realizado un Join con las demás tablas respectivas de mi base de datos, sin embargo para esta tarea no los utilicé, por ahora.


Se anexa finalmente liga al script completo de SQLite
![script](./Tarea%206%20recursos/script-sql-tarea-6.sql)