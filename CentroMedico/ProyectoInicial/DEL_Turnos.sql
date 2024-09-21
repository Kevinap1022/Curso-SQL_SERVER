USE KevinAriasEstudio
GO

--EXEC DEL_TURNO 3

/*
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
SELECT * FROM Paciente 
*/


ALTER PROC DEL_TURNO(
					@idTurno turno
					)
AS 
SET NOCOUNT ON 

if EXISTS(SELECT * FROM Turno
		  WHERE idTurno = @idTurno)
BEGIN
	DELETE FROM TurnoPaciente WHERE idTurno = @idTurno
	DELETE FROM Turno WHERE idTurno = @idTurno
END
ELSE
BEGIN
	SELECT 0 AS resultado 
END