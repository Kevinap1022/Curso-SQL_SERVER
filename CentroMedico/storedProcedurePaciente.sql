USE [KevinAriasEstudio]
GO
/****** Object:  StoredProcedure [dbo].[SP_ejemplo]    Script Date: 10/05/2024 8:25:00 a. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROC [dbo].[SP_ejemplo](
			@idPaciente int 

)
AS
--AQUI VA todos los script que quiera ejecutar dentro del store Procedure

DECLARE @ordenamiento CHAR(1) 
--SET @ordenamiento = 'A'
DECLARE @valorOrdenamiento CHAR(1)

SET @valorOrdenamiento = @ordenamiento
PRINT @valorordenamiento



SELECT apellido,nombre,idPais,observacion,
	(SELECT ps.Pais FROM Pais ps WHERE ps.idPais = pa.idPais ) descPais
	FROM Paciente pa WHERE idPaciente= @idPaciente
--esta instruccion es separada 
