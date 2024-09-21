--Declaracion WHILE
DECLARE @Contador int = 0
WHILE @Contador <= 10
--Ejecutamos hasta que contador sea mayor a 10
BEGIN
	PRINT @Contador
	SET @Contador = @Contador + 1
END