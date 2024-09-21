
--CREAR TABLA TEMPORAL EN MEMORIA 
--especificamos campos entre parentesis
DECLARE @miTabla TABLE(

	id int IDENTITY(1,1),
	pais VARCHAR(50)

) 

--insertamos valores
INSERT INTO @miTabla VALUES('Argentina')
INSERT INTO @miTabla VALUES('Colombia')
INSERT INTO @miTabla VALUES('Ecuador')
INSERT INTO @miTabla VALUES('Monterreal')
INSERT INTO @miTabla VALUES('Mexico')

SELECT  * FROM @miTabla
