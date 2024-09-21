--obtenemos todas las especialidades medicas 
--EXEC SEL_EspecialidadesMedicas --ejecutamos 

ALTER PROC SEL_EspecialidadesMedicas --no necesitamos filtro 
AS
SET NOCOUNT ON 

--SELECT * FROM Especialidad

IF EXISTS (SELECT * FROM Especialidad)
BEGIN 
	SELECT * FROM Especialidad
END 
ELSE
BEGIN 
	SELECT 0 AS RESULTADO 
END 