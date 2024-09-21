USE KevinAriasEstudio
GO

--select * from Medico
--SELECT * FROM Especialidad
--select * from Paciente
--SELECT * FROM MedicoEspecialidad

--EXEC ALTA_Medicos 'Jaime','Rodriguez',1,'Medico Disponible'

ALTER PROC  ALTA_Medicos(
			@nombre VARCHAR(50), --20190215 12:00
			@apellido VARCHAR(20), --definimos el tipo de dato
			@idEspecialidad INT ,
			@descripcion VARCHAR(50)
			)
AS


--Si el medico  no existe lo vamos a crear 

SET NOCOUNT ON 

IF NOT EXISTS(SELECT TOP 1 idMedico FROM Medico WHERE @nombre = nombre)
BEGIN 
	INSERT INTO Medico(Nombre,Apellido)
	VALUES (@nombre,@apellido)
	
	DECLARE @auxIdMedico int
	SET @auxIdMedico = @@IDENTITY

	INSERT INTO MedicoEspecialidad(idMedico,idEspecialidad,Descripcion) 
	VALUES (@auxIdMedico,@idEspecialidad,@descripcion)

	PRINT 'El medico se agrego correctamente  '
	RETURN
END 
ELSE 
BEGIN 
	PRINT 'El medico ya existe'
END 
	