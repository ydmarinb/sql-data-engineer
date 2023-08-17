-- Combinar las filas que son encuentran en ambas bases de datos
SELECT * FROM db
INNER JOIN db1
ON db.key = db1.key -- Indicación de la llave de cruce

-- Priorizar las filas que estan en la tabla de la izquierda. Solo unir con las
-- filas de la tabla de la derecha que coincidan con las de la izquierda
SELECT * FROM db
LEFT JOIN db1
ON db.key = db1.key -- Indicación de la llave de cruce
-- Si el nombre de la clave en ambas tablas es el mismo se puede usar 
-- el comando using(key)

-- Priorizar las filas que estan en la tabla de la derecha. Solo unir con las
-- filas de la tabla de la izquierda que coincidan con las de la izquierda
SELECT * FROM db
RIGHT JOIN db1
ON db.key = db1.key -- Indicación de la llave de cruce
-- Si el nombre de la clave en ambas tablas es el mismo se puede usar 
-- el comando using(key)