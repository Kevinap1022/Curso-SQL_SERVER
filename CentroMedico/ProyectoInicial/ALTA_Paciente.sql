--EXEC ALTA_Paciente '009876543456765','Maria','Palomin','20120312','Calle 5','COL','','sdafdsfs@gmail.com','Sin observacion'
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
SET NOCOUNT ON

DECLARE @a BIGINT = 0
WHILE @a <= 15000002
	SET @a = @a + 1



--Si no existe haz lo siguiente 
IF NOT EXISTS(SELECT * FROM Paciente WHERE dni = @dni)
BEGIN
	INSERT INTO Paciente (dni,nombre,apellido,fNacimiento,domicilio,idPais,telefono,email,observacion)
	VALUES (@dni,@nombre,@apellido,@fNacimiento,@domicilio,@idpais,@tel,@email,@observacion) --insertamos los parametros 
	PRINT 'El paciente se agrego correctamente'
	RETURN
END 
ELSE
BEGIN 
	PRINT 'El paciente ya existe'
	RETURN --sale de la consulta
END 

SELECT * FROM Paciente

