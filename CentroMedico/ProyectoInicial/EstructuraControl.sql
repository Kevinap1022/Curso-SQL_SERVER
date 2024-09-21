USE KevinAriasEstudio
GO
/*declaramos una variable con declare*/
DECLARE @idPaciente INT 
SET @idPaciente = 2

--si es igual a 7 ejecutamos acciones
IF @idPaciente = 2
	SELECT * FROM Paciente 
	WHERE idPaciente = @idPaciente


DECLARE @idPaciente_2 int
DECLARE @idTurno int
SET @idPaciente_2 = 17

IF @idPaciente_2 = 2
BEGIN
	SET @idTurno = 20
	SELECT * FROM Paciente 
	WHERE idPaciente = @idPaciente_2
	PRINT @idTurno
END
ELSE
BEGIN
	PRINT 'No se cumplio la condicion'
END

