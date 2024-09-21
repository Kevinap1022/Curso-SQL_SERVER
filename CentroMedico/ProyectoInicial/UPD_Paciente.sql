
--EXEC UPD_Paciente 2, '21045432', 'Alberto', 'SantaRosa', '20150222', 'calle 12Z', 'ARG', '3145546567', 'albert32@gmail.com', 'sin observacion'
USE KevinAriasEstudio
GO

CREATE PROC UPD_Paciente(
							@idPaciente INT,
							@dni VARCHAR(50),
							@nombre VARCHAR(50),
							@apellido VARCHAR(50),
							@fNacimiento DateTime,
							@domicilio VARCHAR(50),
							@idPais CHAR(3),
							@telefono VARCHAR(30),
							@email VARCHAR(30),
							@observacion VARCHAR(1000)
								)

AS 
SET NOCOUNT ON 

IF EXISTS(SELECT * FROM Paciente WHERE idPaciente = @idPaciente)
BEGIN 
	UPDATE Paciente
	SET dni = @dni,
		nombre = @nombre,
		apellido = @apellido,
		fNacimiento = @fNacimiento,
		domicilio = @domicilio,
		idPais = @idPais,
		telefono = @telefono,
		email = @email,
		observacion = @observacion
		WHERE idPaciente = @idPaciente
		
END
ELSE 
BEGIN
	SELECT 0 AS Resultado
END 

/*
SELECT * FROM Paciente
*/
