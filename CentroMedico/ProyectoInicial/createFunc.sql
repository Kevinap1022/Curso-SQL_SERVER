
--SELECT dbo.nombreFuncion(300) AS Resultado
CREATE FUNCTION nombreFuncion(@var int)--parametros
RETURNS INT							   --especificamos tipo de dato que retornara

AS

BEGIN --Definimos bloque de codigo 
	SET @var = @var * 5
	RETURN @var
END