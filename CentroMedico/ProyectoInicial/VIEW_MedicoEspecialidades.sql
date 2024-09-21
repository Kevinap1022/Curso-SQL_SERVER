SELECT * FROM VIEW_MedicoEspecialidades

CREATE VIEW VIEW_MedicoEspecialidades AS

--Obtenemos medicos en la tabla medicoEspecialidad
SELECT medico.idMedico, medico.Nombre, medico.Apellido, medicoEspecialidad.idEspecialidad, medicoEspecialidad.Descripcion 
FROM Medico medico
INNER JOIN MedicoEspecialidad medicoEspecialidad
ON medicoEspecialidad.idMedico = medico.idMedico
