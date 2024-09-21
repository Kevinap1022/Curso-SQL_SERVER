--REPLACE

DECLARE @Variable VARCHAR(20);
SET @Variable = 'Guillermo';

SELECT REPLACE(@Variable,'mo','ma') AS Reemplazo --quiero que me lo reemplace por caracteres vacios