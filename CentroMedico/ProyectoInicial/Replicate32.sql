
--REPLICATE

DECLARE @Var1 VARCHAR(21);
SET @Var1 = 'Perez'

PRINT REPLICATE('2',3);

--LTRIM

DECLARE @Variable2 VARCHAR(21)
SET @Variable2 = '     Gilberto '
DECLARE @Variable3 VARCHAR(12) = 'Jimenez    '

SELECT LTRIM(RTRIM(@Variable2)) + RTRIM(@Variable3)




