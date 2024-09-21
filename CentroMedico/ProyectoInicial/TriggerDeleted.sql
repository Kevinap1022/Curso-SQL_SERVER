CREATE TRIGGER EliminarPaciente ON Paciente
FOR DELETE AS

--Si un registro fue borrado pues actualiza la tabla LogPaciente y la fechaBaja
IF EXISTS(SELECT idPaciente FROM LogPaciente
		  WHERE idPaciente = (SELECT idPaciente FROM deleted))

	UPDATE LogPaciente 
	SET fechaBaja = GETDATE()
	WHERE idPaciente = (SELECT idPaciente FROM deleted) --el ultimo eliminado

--De lo contrario crea un LogPaciente que rellene el campo de fechaBaja
ELSE
	INSERT INTO LogPaciente(idPaciente, idPais, fechaBaja)
	SELECT idPaciente, idPais, GETDATE() FROM deleted --crea registro del ultimo eliminado



