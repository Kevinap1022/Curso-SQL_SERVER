
--GET 

--SELECT GETDATE()
--SELECT GETUTCDATE()

--DATEADD

--SELECT DATEADD(day,1,GETDATE())--parametro que queremos actualizar,cantidad de dias para agregar, fecha que queremos agregar o restarle 


--DATEDIFF

--SELECT DATEDIFF(year,GETDATE(),'20170120') 
--SELECT DATEDIFF(year,GETDATE(),DATEADD(year,3,GETDATE())) 


--DATEPART

--SELECT DATEPART(year,GETDATE())		
--SELECT DATEPART(DW,GETDATE())--dayweek

--ISDATE

PRINT ISDATE('2020/02/20')

IF ISDATE('20190823') = 1
BEGIN
	PRINT 'Es una fecha valida'
END
ELSE
BEGIN
	PRINT'No es valida la fecha '
END 