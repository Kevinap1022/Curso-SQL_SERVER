--DECLARAMOS TABLA TEMPORAL FISICA
CREATE TABLE #tablaTemporal(
	Id int IDENTITY(1,1),
	Nombre NVARCHAR(50) NOT NULL,
	Apellido NVARCHAR(50) NOT NULL
)

INSERT INTO #tablaTemporal
VALUES('Carlos','Poveda'),
	  ('Sara','Sofia')
	  
SELECT * FROM #tablaTemporal

DROP TABLE #tablaTemporal
