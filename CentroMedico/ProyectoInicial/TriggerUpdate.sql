CREATE TRIGGER PacientesModificados ON Paciente
AFTER UPDATE AS

--Si un registro fue modificado pues actualiza la tabla LogPaciente y la fechaModificacion
IF EXISTS(SELECT idPaciente FROM LogPaciente
		  WHERE idPaciente = (SELECT idPaciente FROM inserted))
	UPDATE LogPaciente 
	SET fechaModificacion = GETDATE()
	WHERE idPaciente = (SELECT idPaciente FROM inserted)
--De lo contrario crea un LogPaciente con el ultimo registro insertado
ELSE
	INSERT INTO LogPaciente(idPaciente, idPais, fechaModificacion)
	SELECT idPaciente, idPais, GETDATE() FROM inserted


