declare @contador int = 0

WHILE @contador <= 10
BEGIN
	PRINT @contador
	SET @contador = @contador + 1
	IF @contador = 3
		BREAK
END 
PRINT 'Sigue ejecutando'



