
DECLARE @Saludo VARCHAR(20) 
SET @Saludo = 'Buenos dias Pedro'
DECLARE @Variable VARCHAR(20) = 'Mario'

PRINT LEN(@Saludo)

PRINT LEFT(@Saludo,LEN(@Variable)-1)

--EJERCICIO 

SELECT LEN(domicilio),domicilio AS CantidadCaracteres  FROM  Paciente 



