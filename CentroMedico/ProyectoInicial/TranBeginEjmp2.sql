USE KevinAriasEstudio
GO
SELECT * FROM Turno
SELECT * FROM TurnoPaciente
--Elimina si el estado = 0 solo esta en un registro
BEGIN TRANSACTION
	DELETE FROM Turno
	WHERE estado = 0
IF @@ROWCOUNT = 1
	COMMIT
ELSE
	ROLLBACK TRANSACTION 
