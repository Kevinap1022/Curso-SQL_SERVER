--SELECT * FROM Paciente

--Creamos Stored procedure con sus parametros
CREATE PROC ALTA_Paciente( --ALTER
			@dni varchar(20),
			@nombre	varchar (50),
			@apellido varchar(50),
			@fNacimiento varchar(8), --define como varchar
			@domicilio varchar(50),
			@idpais char(3),
			@tel varchar(20) = '',
			@email varchar(30),
			@observacion varchar(1000) = '' --si llega null el valor sera ' '
			)
AS