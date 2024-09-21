
DECLARE @PrimerVariable VARCHAR(40)
DECLARE @SegundaVariable VARCHAR(20)
SET @PrimerVariable = 'Pedro'
SET @SegundaVariable = 'Guzman'

--fucnction left
PRINT LEFT(@PrimerVariable,2)
--obtenemos iniciales de nombre
PRINT LEFT(@PrimerVariable, 1) + LEFT(@SegundaVariable,1)
--FUNCTION RIGHT
PRINT RIGHT(@PrimerVariable, 1)

SELECT LEFT(nombre,1) + LEFT(apellido,1) AS Iniciales FROM Paciente


