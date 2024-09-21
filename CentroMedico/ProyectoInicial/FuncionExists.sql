USE KevinAriasEstudio
GO
--If anidado
--Funcion exist

DECLARE @idPaciente int
DECLARE @idTurno int

SET @idPaciente  = 2

IF @idPaciente = 2
BEGIN 
	SET @idTurno = 12
	SELECT * FROM Paciente 
	WHERE idPaciente = @idPaciente
	PRINT @idTurno
	IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = 2)
		PRINT 'Existe la consulta'
END
