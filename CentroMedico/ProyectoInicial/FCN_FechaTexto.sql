--PRINT dbo.FCN_FechaTexto ('20200504')
ALTER FUNCTION FCN_FechaTexto(@fecha DATETIME)
RETURNS VARCHAR(50)
AS
BEGIN 
	--Escribimos funcion
	DECLARE @dia VARCHAR(20)
	DECLARE @mes VARCHAR(20)
	DECLARE @fechaTexto VARCHAR(50)

	SET @dia = (CASE WHEN datepart(dw,@fecha) = 1 THEN 'Domingo ' + CONVERT(CHAR(2),datepart(dd,@fecha))
			    WHEN datepart(dw,@fecha) = 2 THEN 'Lunes ' + CONVERT(CHAR(2),datepart(dd,@fecha))
				WHEN datepart(dw,@fecha) = 3 THEN 'Martes ' + CONVERT(CHAR(2),datepart(dd,@fecha))
				WHEN datepart(dw,@fecha) = 4 THEN 'Miercoles ' + CONVERT(CHAR(2),datepart(dd,@fecha))
				WHEN datepart(dw,@fecha) = 5 THEN 'Jueves ' + CONVERT(CHAR(2),datepart(dd,@fecha))
				WHEN datepart(dw,@fecha) = 6 THEN 'Viernes ' + CONVERT(CHAR(2),datepart(dd,@fecha))
				WHEN datepart(dw,@fecha) = 7 THEN 'Sabado ' + CONVERT(CHAR(2),datepart(dd,@fecha))
			END)

	SET @mes = (CASE WHEN datepart(mm,@fecha) = 1 THEN 'Enero'
					 WHEN datepart(mm,@fecha) = 2 THEN 'Febrero'
					 WHEN datepart(mm,@fecha) = 3 THEN 'Marzo'
					 WHEN datepart(mm,@fecha) = 4 THEN 'Abril'
					 WHEN datepart(mm,@fecha) = 5 THEN 'Mayo'
					 WHEN datepart(mm,@fecha) = 6 THEN 'Junio'
					 WHEN datepart(mm,@fecha) = 7 THEN 'Julio'
					 WHEN datepart(mm,@fecha) = 8 THEN 'Agosto'
					 WHEN datepart(mm,@fecha) = 9 THEN 'Septiembre'
					 WHEN datepart(mm,@fecha) = 10 THEN 'Octubre'
					 WHEN datepart(mm,@fecha) = 11 THEN 'Noviembre'
					 WHEN datepart(mm,@fecha) = 12 THEN 'Diciembre'
				END)

SET @fechaTexto = @dia + 'de ' + @mes
RETURN @fechaTexto

END 
