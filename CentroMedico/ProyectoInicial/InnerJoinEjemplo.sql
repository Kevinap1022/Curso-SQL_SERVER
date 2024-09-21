USE KevinAriasEstudio
GO

--INNER JOIN 
SELECT * FROM Paciente
SELECT * FROM TurnoPaciente

SELECT * FROM Paciente P --alias de primer tabla 
INNER JOIN TurnoPaciente T --nombre de tabla que queremos vincular con paciente, alias de segunda tabla
ON T.idPaciente = P.idPaciente --Conectamos campos con ON, colocamos alias 

--LEFT JOIN 
SELECT * FROM Paciente p
LEFT JOIN TurnoPaciente t
ON t.idPaciente = p.idPaciente


--RIGHT JOIN 
SELECT * FROM Paciente p
RIGHT JOIN TurnoPaciente t
ON t.idPaciente = p.idPaciente


