--LOWER Y UPPER 

DECLARE @VariableTexto VARCHAR(20)
SET @VariableTexto = 'BUENOS DIAS '
DECLARE @VariableTexto2 VARCHAR(21) = 'pedro'

PRINT LOWER(@VariableTexto) + UPPER(@VariableTexto2)
--Convertimos la primera letra en mayuscula y el resto en minuscula
PRINT UPPER(LEFT(@VariableTexto2,1)) + LOWER(RIGHT(@VariableTexto2,LEN(@VariableTexto2)-1)) 


--SELECT UPPER(LEFT(nombre,1))+ LOWER(RIGHT(nombre,LEN(nombre)-1)) FROM Paciente