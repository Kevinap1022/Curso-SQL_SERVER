USE KevinAriasEstudio
GO

--Crear Triger
CREATE TRIGGER PacientesCreados ON Paciente
AFTER INSERT AS

--si es el ultimo registro creado y es del pais de Mexico 
IF(SELECT idPais FROM inserted) = 'MEX'
   INSERT INTO LogPaciente(idPaciente,idPais, fechaAlta)
   SELECT i.idPaciente, i.idPais,GETDATE() FROM inserted i --insertamos el ultimo registro creado