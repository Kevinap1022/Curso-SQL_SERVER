USE KevinAriasEstudio
GO

--SELECT * FROM Paciente

--Actualiza campo telefono 
BEGIN TRANSACTION 
	UPDATE Paciente
	SET telefono = '44444'
	WHERE idPaciente = 8
IF @@ROWCOUNT = 1 --Cuantos registros fueron ejecutado en la instruccion anterior 
	COMMIT TRANSACTION --Confirma transaccion 
ELSE 
	ROLLBACK TRANSACTION 


--Actualiza campo apellido si solo tengo un Perez 
BEGIN TRANSACTION 
	UPDATE Paciente
	SET apellido = 'Arias'
	WHERE apellido = 'Perez'
IF @@ROWCOUNT = 1 --Cuantos registros fueron ejecutado en la instruccion anterior 
	COMMIT TRANSACTION --Confirma transaccion si es TRUE 
ELSE 
	ROLLBACK TRANSACTION --Si es FALSE me ejecuta este 
