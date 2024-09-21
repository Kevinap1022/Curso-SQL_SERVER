--Dos consultas diferentes con la misma cantidad de campos
--une varios resultados en una sola consulta 
SELECT * FROM Turno WHERE estado = 3
UNION
SELECT * FROM Turno WHERE estado = 1