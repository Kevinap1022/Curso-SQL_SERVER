

--WHILE @contador <= 10 
--BEGIN
--	PRINT @contador
--	SET @contador = @contador + 1

--	IF @contador = 3
--	BREAK
--END

declare @contador int = 0
--Evalua el codigo que yo tengo dentro 
BEGIN TRY
	SET @contador = 'Texto'
END TRY

--si tengo error catch hace que continue la ejecucion y muestre mensaje 
BEGIN CATCH
	PRINT 'No es posible asignar un texto a la variable @contador'
END CATCH