-- Para unir dos tablas por filas
SELECT * FROM db1
UNION 
SELECT * FROM db2

-- Para pivotear una tabla
SELECT * 
FROM CROSSTAB(
'SELECT column1, column2, SUM(column3)
    FROM db
    GROUP BY column1, column2
    ORDER BY column1, column2
'
) AS ct (column1 text, 'columns cross 2' int, 'columns cross 3' int)