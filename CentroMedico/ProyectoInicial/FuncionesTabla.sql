USE KevinAriasEstudio
GO

--PROBAR FUNCION

--SELECT * FROM dbo.listaPaises()

--FUNCIONES DE TIPO TABLA 

CREATE FUNCTION listaPaises()
RETURNS @paises TABLE(idPais char(3), pais varchar(50)) --VALOR TIPO TABLA
AS
BEGIN 
	INSERT INTO @paises VALUES ('COL','Colombia')
	INSERT INTO @paises VALUES ('MEX','Mexico')
	INSERT INTO @paises VALUES ('ESP','España')
	INSERT INTO @paises VALUES ('PER','Peru')
	INSERT INTO @paises VALUES ('ARG','Argentina')
	RETURN 
END