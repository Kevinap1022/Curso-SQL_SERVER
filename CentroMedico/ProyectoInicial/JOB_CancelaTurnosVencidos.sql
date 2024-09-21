SELECT * FROM Turno
SELECT * FROM TurnoEstado

--cancelamos los turnos de un turno anterior a hoy
--CONVERTIMOS A AÑO, MES Y DIA

UPDATE Turno 
SET estado = 2
WHERE CONVERT(CHAR(8), fechaTurno , 112)< CONVERT(CHAR(8), GETDATE(), 112 )
AND estado = 0

SELECT * FROM Turno

