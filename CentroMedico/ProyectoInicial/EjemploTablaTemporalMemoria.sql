--SCRIPT
DECLARE @turnos TABLE(
		id int IDENTITY(1,1),
		idTurno turno,
		idpaciente paciente
)
--Creamos variable idPaciente
DECLARE @idPaciente paciente --definimos el tipo de dato
SET @idPaciente = 3

--Insertamos turnos 
INSERT INTO @turnos(idTurno,idpaciente)

--campos que insertamos en tabla temporal 
SELECT turnoPaciente.idTurno, paciente.idPaciente FROM Paciente paciente
	INNER JOIN TurnoPaciente turnoPaciente
	ON turnoPaciente.idPaciente = paciente.idPaciente


--VARIABLES que hace seguimiento por el campo id de la tabla 
DECLARE @i INT, @total INT
SET @i = 1
SET @total = (SELECT COUNT(*) FROM @turnos)  --total de registros en la tabla turnos

--Recorremos tabla con blucle while 
WHILE (@i <= @total)
BEGIN 
	IF(SELECT idpaciente FROM @turnos WHERE id = @i) <> @idPaciente --Preguntamos si el primer registros de turno pertenece al paciente con un idPaciente definido 
	--conservamos registro si es igual al id Del paciente
	BEGIN
		DELETE FROM @turnos WHERE id = @i
	END
	SET @i = @i + 1
END 

SELECT * FROM Paciente paciente
INNER JOIN @turnos turno
ON turno.idpaciente = paciente.idPaciente
