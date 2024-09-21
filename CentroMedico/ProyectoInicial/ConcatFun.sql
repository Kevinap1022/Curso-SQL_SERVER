DECLARE @Variable1 VARCHAR(29)
SET @Variable1 = '       Buenos '

DECLARE @Variable2 VARCHAR(21)
SET @Variable2 = '       Diasss '

SELECT CONCAT(LTRIM(@Variable1),' ',LTRIM(RTRIM(@Variable2)))