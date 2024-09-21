
--201905191250
DECLARE @fecha CHAR(12)
DECLARE @path VARCHAR(100)
DECLARE @name VARCHAR(20)--nombre de base de datos

--Convertirmos a formato año mes dia hora y minuto actual = 201905191250
SET @fecha = CONVERT(CHAR(8), GETDATE(), 112) + REPLACE(CONVERT(CHAR(5), GETDATE(), 108), ':', '')
SET @path = 'C:\BackUp\CentroMedico' + @fecha + '.bak'
SET @name = 'KevinAriasEstudio' + @fecha

BACKUP DATABASE KevinAriasEstudio
TO DISK = @path
WITH NO_COMPRESSION, NAME = @name
