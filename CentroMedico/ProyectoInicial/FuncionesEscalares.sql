--USE KevinAriasEstudio
--GO


--SELECT dbo.Concatenar('Lopez','Roberto')

--CREATE FUNCTION NombreFun(@var INT)
--RETURNS INT

--AS

--BEGIN
--	SET @var = @var * 5
--	RETURNS @var
--END

--CREATE FUNCTION Concatenar (
--			@apellido VARCHAR(50),
--			@nombre VARCHAR(50)
--			)
--RETURNS varchar(100)

--AS 
--BEGIN 
--	DECLARE @resultado VARCHAR(100)
--	SET @resultado = @apellido + ',' +' ' + @nombre
--	RETURN @resultado
--END

--SELECT dbo.ObtenerPais(1)

CREATE FUNCTION ObtenerPais(@idpaciente paciente)
RETURNS VARCHAR(50) --retornamos descripcion del pais
AS 
BEGIN 
	DECLARE @Pais VARCHAR(50)
	SET @Pais = (SELECT PA.Pais FROM Paciente P
					INNER JOIN Pais PA
					ON PA.idPais = P.idPais
					WHERE idPaciente =  @idpaciente)
		RETURN @Pais
END