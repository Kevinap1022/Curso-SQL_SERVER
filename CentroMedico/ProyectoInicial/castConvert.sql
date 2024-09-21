--CAST 
DECLARE @numero MONEY
SET @numero = 500.50
--PRINT @numero


--trabaja con select
--SELECT CAST(@numero as INT)
--SELECT CAST(idPaciente as money) AS Convertido FROM Paciente


--CONVERT

DECLARE @fecha DATETIME
SET @fecha = GETDATE()  --fecha actual 

PRINT CONVERT(CHAR(20), @fecha, 112) --puedo decir que formato quiero devolver

 --SELECT CONVERT(INT, @numero)
 --PRINT CONVERT(INT, @numero) --podemos hacer un print tambien 


 --comparacion 
 --SELECT DATEDIFF(year,CONVERT(CHAR(20), @fecha, 112),DATEADD(year,5,GETDATE())) 
