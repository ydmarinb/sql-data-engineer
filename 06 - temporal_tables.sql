-- cuando se requiere realizar multiples operaciones sobre una tabla
-- que puede hacer el codigo poco leible. Se recomienda utilizar sub tablas
-- para simplificar al lectura

WITH 

-- tabla temporal 1
temporal_table1 AS (
    SELECT * FROM db
    WHERE column = 'value'
),

-- tabla temporal 2
temporal_table2 AS (
    SELECT * FROM db1
    WHERE column = 'value'
)

-- consulta resultante
SELECT * FROM temporal_table1
INNER JOIN temporal_table2
USING(key)