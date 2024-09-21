
--agregamos foreign key de tabla pais y paciente 
ALTER TABLE Paciente
ADD FOREIGN KEY (idPais) REFERENCES Pais(idPais) --primero es el campo idPais de nuestra tabla 
												 --y luego el nombre de la tabla la cual referenciamos con su llave primaria 

SELECT * FROM Paciente
SELECT * FROM Pais