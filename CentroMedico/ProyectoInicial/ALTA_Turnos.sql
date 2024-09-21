USE KevinAriasEstudio
GO

--select * from TurnoPaciente
--SELECT * FROM Turno
--select * from Paciente

--EXEC ALTA_Turno '20200215 08:15', 2,3, 'Nada'

ALTER PROC ALTA_Turno(
			@fecha CHAR(15), --20190215 12:00
			@idPaciente paciente, --definimos el tipo de dato
			@idMedico medico ,
			@observacion observacion = ''
)
AS

/*

Estado = 1(pendiente)
Estado   2(realizado)
Estado = 3(cancelado)

*/

--Si el turno no existe lo vamos a crear 

SET NOCOUNT ON 

IF NOT EXISTS(SELECT TOP 1 idTurno FROM Turno WHERE fechaTurno = @fecha)
BEGIN 
	INSERT INTO Turno(fechaTurno,estado,observacion)
	VALUES (@fecha,0,@observacion)
	
	DECLARE @auxIdTurno turno
	SET @auxIdTurno = @@IDENTITY --Variable de sistema que obtiene el ultimo registrado insertado en el insert anterior 

	INSERT INTO TurnoPaciente(idTurno,idPaciente,idMedico) --Funcion para insertar 
	VALUES (@auxIdTurno,@idPaciente,@idMedico)

	PRINT 'El turno se agrego correctamente '
	RETURN
END 
ELSE 
BEGIN 
	PRINT 'El turno ya existe'
END 
	