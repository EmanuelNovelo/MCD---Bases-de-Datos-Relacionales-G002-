# datasets creation & insert

# time-series dataset
#CREATE TABLE IF NOT EXISTS avocado_prices (
#    Date DATE PRIMARY KEY,
#    AveragePrice DECIMAL(10, 2)
#);

#SELECT * FROM avocado_prices LIMIT 10; # Muestra los primeros 10 registros

# forecast dataset
#CREATE TABLE seasonal_naive_forecast (
#    forecast_date DATE,
#    forecast_value DECIMAL(10, 2)
#);

# Seasonal Naive - time series model

DROP PROCEDURE IF EXISTS SeasonalNaive;

DELIMITER $$

CREATE PROCEDURE SeasonalNaive(IN target_date DATE)
BEGIN
	# se declara variables
    DECLARE last_year DECIMAL(10, 2);
    
    # Se obtiene el valor análogo al periodo (año) anterior
    SELECT AveragePrice INTO last_year
    FROM avocado_prices
    WHERE DATE(Date) = DATE_SUB(target_date, INTERVAL 1 YEAR);
    
    # Se inserta forecast en tabla creada
    INSERT INTO seasonal_naive_forecast (forecast_date, forecast_value)
    VALUES (target_date, last_year);
END $$

DELIMITER ;



## Process Call

CALL SeasonalNaive('2019-02-11');

SELECT * FROM seasonal_naive_forecast snf 