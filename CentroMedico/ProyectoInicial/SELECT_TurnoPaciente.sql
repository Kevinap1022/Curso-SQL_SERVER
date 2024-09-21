
--EXEC SELECT_TurnoPaciente 2

--Parametros que va a tener el stored procedured 
--Por medio del id obtenemos al turno del paciente
CREATE PROC SELECT_TurnoPaciente(
						@idPaciente paciente
)
AS
SET NOCOUNT ON

--Conectamos tabla de TurnoPaciente, Medico, turno obteniendo el turno de paciente y medico 
SELECT * FROM Paciente paciente
INNER JOIN TurnoPaciente turnoPaciente ON turnoPaciente.idPaciente = paciente.idPaciente
INNER JOIN Turno turno ON turno.idTurno = TurnoPaciente.idTurno
INNER JOIN MedicoEspecialidad medicoEspecialidad ON medicoEspecialidad.idMedico = turnoPaciente.idMedico
AND turnoPaciente.idPaciente = @idPaciente


