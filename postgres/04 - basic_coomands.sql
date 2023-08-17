-- conocer los valores unicos en una columna
SELECT DISTINCT column FROM db;

-- conocer los valores unicos en una columna y ordenarlos ascendente
SELECT DISTINCT column FROM db
ORDER BY 1; # se selecciona la primera columna presente en la sentencia SELECT

-- Filtrar valores
SELECT * FROM db
WHERE column = 'value' # filtro

-- filtrar con multiples condiciones
SELECT * FROM db
WHERE column1 = 'value' OR column2 = 'value' # Se puede filtrar con AND tambien

-- Filtrar multiples valores en la misma columns
SELECT * FROM db
WHERE column IN ('value1', 'value2', 'value3')

-- agregar datos
-- Se pueden aplicar multiples operaciones como AVERAGE, MEDIAN,.....
SELECT column1, SUM(column2) FROM db
GROUP BY column1 

-- where no puede ser usado sobre funciones de agregacion por lo que se creo having
SELECT column1, SUM(column2) FROM db
GROUP BY column1
HAVING SUM(column2) > 10 # Se filtra sobre la función de agregación