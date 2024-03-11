# Tarea 8

Se crean Vistas y Disparadores de práctica

El scrip original se encuentra en el enlace
[script](./Tarea%208%20recursos/Scirpt-tarea-8_Views&triggers.sql)  

1. *Vista "Jugadores y equipos del partido"*

Esta vista essirve para conocer qué jugadores (y de qué equipos), participaron en un partido determinado. La vista es particularmente útil ya que en la tabla de "Match" o partidos, los jugaadores y los equipos local y visitante, vienen con sus respectivos id's, por lo que en ocsaiones lo que más nos puede interesar es saber su nombre y equipo al que pertenecen. 

Se anexa imágenes.

![imagen1](./Tarea%208%20recursos/view.png)

El resultado se ve así:
![imagen2](./Tarea%208%20recursos/view_example.png)

2. *Triggers*

Se crea un trigger que actualiza una tabla llamada "bitacora_matches", esto con el fin de que cada vez que se haga un registro de un partido en la tabla "Match", en la bitacora se registre el id del partido que se ingresó, el usuario de la persona y la fecha en que se creó el registro. De esta forma se llevará un control de lso partidos que se registran, para aclaraciones o dudas. 

Se anexa imágen del script.

![imagen3](./Tarea%208%20recursos/trigger.png)