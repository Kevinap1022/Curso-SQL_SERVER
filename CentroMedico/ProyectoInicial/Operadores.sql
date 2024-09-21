--operadores aritmeticos
/*

-
+
*
%
/

*/

--operadores con decimales 
--declare @numero1 decimal(9,2) = 20
--declare @numero2 decimal(9,2) = 10
--declare @resultado decimal(9,2)--total numeros antes de la coma, total de numeros despues de la coma 

--set @resultado = @numero1 % @numero2 --divide los dos y saca su residuo
--PRINT @resultado

--Concatenar dos variables

declare @texto1 varchar(15) = 'Hola';
declare @texto2 varchar(18) = 'Buenos dias kevin';
declare @result varchar(30) = @texto1 + ' ' + @texto2;
PRINT @result


/*

>
<
=
<>  = distinto 

*/

DECLARE @numero1 DECIMAL(9,2) = 40 
DECLARE @numero2 DECIMAL(9,2) = 20 

IF @numero1 <> @numero2 
BEGIN
	PRINT 'numero1 es distinto a numero2'
END

/*texto comparacion*/

DECLARE @textoComparacion VARCHAR(20) = 'Buenos dias'
DECLARE @TextoComparacion2 VARCHAR(20) ='Buenos diaz'

IF @textoComparacion < @TextoComparacion2
BEGIN
	PRINT 'primer texto es menor a texto2 por el orden alfabetico y cantidad de caracteres '
END

IF @textoComparacion <> @TextoComparacion2
BEGIN
	PRINT 'primer texto es distinto a segundo texto'
END

