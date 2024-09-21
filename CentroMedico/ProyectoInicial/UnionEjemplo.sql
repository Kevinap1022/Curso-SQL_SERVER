USE KevinAriasEstudio
GO

--UNION 
--une varios resultados en una sola consulta 
SELECT * FROM Turno WHERE estado = 1
UNION 
SELECT * FROM Paciente 

--UNION CON TABLAS RELACIONADAS 
SELECT idTurno FROM Turno WHERE  estado = 3
UNION 
SELECT idPaciente FROM Paciente

--Union con tablas con campos similares 
SELECT * FROM Turno WHERE estado = 3
UNION 
SELECT * FROM Turno WHERE estado  = 1

--Union All
SELECT * FROM Turno 
UNION ALL
SELECT * FROM Turno

