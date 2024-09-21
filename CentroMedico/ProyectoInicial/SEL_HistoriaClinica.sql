
CREATE PROC SEL_HistoriaPaciente(@idpaciente paciente)

AS 
SET NOCOUNT ON

/*
SELECT * FROM Paciente 
SELECT * FROM Medico 
SELECT * FROM Historia
SELECT * FROM HistoriaPaciente 
*/



--Retorna paciente, HistoriaPaciente, historia 
SELECT * FROM Paciente P
INNER JOIN HistoriaPaciente Hp
ON Hp.idPaciente = P.idPaciente --relaciona tabla Historia Paciente con Paciente segun su Primary key
INNER JOIN Historia H
ON H.idHistoria  = HP.idHistoria

INNER JOIN MedicoEspecialidad ME
ON ME .