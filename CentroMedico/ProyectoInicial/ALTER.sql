
--Modificar estructura de un campo
--Agregar campo a tabla de pacientes
ALTER TABLE Paciente 
ADD estado SMALLINT

--SELECT * FROM Paciente

--cambiar ese tipo de dato de campo estado
ALTER TABLE Paciente
ALTER COLUMN estado BIT


--Eliminar estado de la tabla paciente 
ALTER TABLE Paciente
DROP COLUMN estado

