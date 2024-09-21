USE KevinAriasEstudio
GO


--Obtenemos los registros de la tabla de la izquierda(primera en el select)
--Solamente los que estan en la tabla de la derecha que coincidan con el ON
SELECT * FROM Paciente paciente
LEFT JOIN TurnoPaciente turnoPaciente
ON turnoPaciente.idPaciente = paciente.idPaciente

--Obtenemos los registros de la tabla de la derecha(segunda en el select)
--Solamente los que estan en la tabla de la izquierda que coincidan con el ON
SELECT * FROM Paciente paciente
right JOIN TurnoPaciente turnoPaciente
ON turnoPaciente.idPaciente = paciente.idPaciente


--En el campo izquierdo colocamos la tabla a la cual le queremos consultar los datos 
SELECT * FROM MedicoEspecialidad medico
LEFT JOIN Especialidad especialidad
ON especialidad.IdEspecialidad = medico.idEspecialidad

