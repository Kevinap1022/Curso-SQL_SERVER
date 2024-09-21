
DECLARE @valor int 
DECLARE @resultado CHAR(10)= ''
SET @valor = 20 

SET @resultado = (CASE WHEN @valor = 10 THEN 'ROJO'
					   WHEN @valor = 20 THEN 'VERDE'
					   WHEN @valor = 30 THEN 'AZUL'
				  END)
PRINT @resultado

--TURNOS
--En funcion del estado me devuelve un color 
SELECT * ,(CASE WHEN estado = 1 THEN 'VERDE'
				WHEN estado = 2 THEN 'ROJO'
				WHEN estado = 3 THEN 'AZUL'
				ELSE 'GRIS'
				END) AS ColorTurno FROM Turno

