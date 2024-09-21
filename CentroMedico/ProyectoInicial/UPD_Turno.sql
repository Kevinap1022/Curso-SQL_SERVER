--EXEC UPD_Turno 15, 3 , 'cancelada'

--Actualizamos estado de Turno  y observacion
--Colocamos parametros con tipo de dato
ALTER PROC UPD_Turno(
						@idTurno turno,
						@estado tinyint,
						@observacion observacion)
AS 
SET NOCOUNT ON

--Actualizamos Turno 
--si existe el turno que yo quiero modificar 
IF EXISTS(SELECT * FROM Turno WHERE idTurno = @idTurno)
	UPDATE Turno
	SET estado = @estado,
	    observacion = @observacion
		WHERE idTurno = @idTurno
ELSE
SELECT 0 AS resultado

--SELECT * FROM Turno

