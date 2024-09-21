
SELECT * FROM PacientesTurnosPendientes

CREATE VIEW PacientesTurnosPendientes AS
--Sentencia donde vamos a almacenar los pacientes y turnos 
SELECT paciente.idPaciente, paciente.nombre, paciente.apellido, turno.idTurno, turno.estado 
FROM Paciente paciente
INNER JOIN TurnoPaciente turnoPaciente ON turnoPaciente.idPaciente = paciente.idPaciente
INNER JOIN Turno turno ON turno.idTurno = turnoPaciente.idTurno 
WHERE ISNULL(turno.estado, 1) = 1

SELECT * FROM VistaPruebaTurnosPendientes
