USE [KevinAriasEstudio]
GO
/****** Object:  StoredProcedure [dbo].[ALTA_Paciente]    Script Date: 9/06/2024 2:12:59 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--SELECT * FROM Paciente

--Creamos Stored procedure con sus parametros
ALTER PROC [dbo].[ALTA_Paciente](
			@dni varchar(20),
			@nombre	varchar (50),
			@apellido varchar(50),
			@fNacimiento varchar(8), --define como varchar
			@domicilio varchar(50),
			@idpais char(3),
			@tel varchar(20) = '',
			@email varchar(30),
			@observacion varchar(1000) = '' --si llega null el valor sera ' '
			)
AS

--Si no existe haz lo siguiente 
IF NOT EXISTS(SELECT * FROM Paciente WHERE dni = @dni)
BEGIN
	INSERT INTO Paciente (dni,nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
	VALUES (@dni,@nombre,@apellido,@fNacimiento,@domicilio,@idpais,@tel,@email,@observacion) --insertamos los parametros 


END 