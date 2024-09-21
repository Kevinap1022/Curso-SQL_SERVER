--ejecutamos stored procedure
--EXEC SEL_HistoriaPaciente 3
--Parametros para stored procedured
ALTER PROC SEL_HistoriaPaciente(@idpaciente paciente)

AS
SET NOCOUNT ON 

/*

SELECT * FROM Historia
SELECT * FROM HistoriaPaciente

*/

--si existe la consulta ejecutamos la misma consulta 
IF EXISTS(  
			SELECT * FROM Paciente paciente
			INNER JOIN HistoriaPaciente historiaPaciente ON historiaPaciente.idPaciente = paciente.idPaciente --obtenemos registros de historia de Paciente
			INNER JOIN Historia historia ON historia.idHistoria = historiaPaciente.idHistoria --obtenemos historia  
			INNER JOIN MedicoEspecialidad medicoEspecialidad ON medicoEspecialidad.idMedico = historiaPaciente.idMedico --obtenemos medico con especialidad
			INNER JOIN Medico medico ON medico.idMedico = medicoEspecialidad.idMedico --obtenemos medico
			WHERE paciente.idPaciente = @idpaciente

		)
BEGIN
			SELECT * FROM Paciente paciente
			INNER JOIN HistoriaPaciente historiaPaciente ON historiaPaciente.idPaciente = paciente.idPaciente --obtenemos registros de historia de Paciente
			INNER JOIN Historia historia ON historia.idHistoria = historiaPaciente.idHistoria --obtenemos historia  
			INNER JOIN MedicoEspecialidad medicoEspecialidad ON medicoEspecialidad.idMedico = historiaPaciente.idMedico --obtenemos medico con especialidad
			INNER JOIN Medico medico ON medico.idMedico = medicoEspecialidad.idMedico --obtenemos medico
			WHERE paciente.idPaciente = @idpaciente
END
ELSE 
BEGIN
	PRINT 'No existen historias clinicas para el paciente '
	SELECT 0 AS Resultado --decimos que no tiene registros 
END