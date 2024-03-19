# Tarea 9

Se crea un procedure que obtiene un forecast de una serie de tiempo del precio promedio del aguacate desde 2015 hasta 2018.
Se utiliza el modelo Seasonal Naive para obtener el valor de la predicción.
El modelo Seasonal Naive funciona de manera simple, identifica el periodo similar respecto al último (generalmente el último año), y a partir de ahí devuelve el valor observado en ese periodo como el valor de forecast.

Se crean primero las tablas que contienen los precios de los aguacates, tanto de la serie de tiempo importada como de la tabla creada para almacenar las predicciones (serie de tiempo importada desde un csv, el cual se descargo de kaggle: https://www.kaggle.com/code/janiobachmann/price-of-avocados-pattern-recognition-analysis/input)

![create](./Tarea%209%20recursos/tabes_creation.png)

Se crea el procedure que identifica la fecha similar para crear un forecast a partir del último valor de precio observado en el último año. Devuelve 0 si no encuentra una fecha analoga del periodo anterior.

![procedure](./Tarea%209%20recursos/procedure.png)

Finalmente se llama el procedure para generar el forecast sobre una fecha dada, por ejemplo:

![call](./Tarea%209%20recursos/call.png)

Los resultados de ejemplo se muestran en el Select de la tabla con los forecast:

![select](./Tarea%209%20recursos/result.png)

*Se anexa el script completo

![script](./Tarea%209%20recursos/Tarea-9-script.sql)