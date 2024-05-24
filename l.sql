use cc;

ALTER USER 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY '1234';
FLUSH PRIVILEGES;
drop database cc;
select * from docentes where idDocente = 1;

INSERT INTO docentes (clave, nombre)
VALUES (9831, 'Nancy Carolina Quintana'),
(3784, 'Luis German Gutierrez'),
(4983, 'Maria Trinidad Pimente Villegas'),
(7777, 'German Guzman'),
(5218, 'Fernando Jose Martinez'),
(6653, 'Evaristo Lopez Guerrero'),
(8392, 'Victor Ayala Ramirez');

insert into materias (idmateria, nombre, carrera)
values (1, 'Logica de Programacion', 'IngSisComp'),
(2, 'Fundamentos de Programacion', 'IngSisComp'),
(3, 'Programacion Orientada a Objetos', 'IngSisComp'),
(4, 'Estructura de Datos', 'IngSisComp'),
(5, 'Sistemas Operativos', 'IngSisComp'),
(6, 'Topicos Avanzados de Programacion', 'IngSisComp'),
(7, 'Lenguajes y Automatas', 'IngSisComp'),
(8, 'Fundamentos de Bases de Datos', 'IngSisComp'),
(9, 'Taller de Sistemas Operativos', 'IngSisComp'),
(10, 'Mecanica de Fluidos', 'IngSisAut'),
(11, 'Motores de combustion interna', 'IngSisAut'),
(12, 'Fundamentos de dibujo', 'IngSisAut'),
(13, 'Mecanica de materiales', 'IngSisAut'),
(14, 'Gestion del capital humano', 'IngGesEmp'),
(15, 'Mercadotecnia', 'IngGesEmp'),
(16, 'Gestion estrategica', 'IngGesEmp'),
(17, 'Estadistica Inferencial I', 'IngGesEmp')
;

insert into materias (idmateria, nombre, carrera)
values (10, 'Mecanica de Fluidos', 'IngSisAut'),
(11, 'Motores de combustion interna', 'IngSisAut'),
(12, 'Fundamentos de dibujo', 'IngSisAut'),
(13, 'Mecanica de materiales', 'IngSisAut'),
(14, 'Gestion del capital humano', 'IngGesEmp'),
(15, 'Mercadotecnia', 'IngGesEmp'),
(16, 'Gestion estrategica', 'IngGesEmp'),
(17, 'Estadistica Inferencial I', 'IngGesEmp');

-- mecanica de fluidos
-- motores de combustion interna
-- fundamentos de dibujo
-- mecanica de materiales


-- gestion del capital humano
-- Mercadotecnia
-- Gestion estrategica
-- Estadistica inferencial I



insert into software(nombre)
values ('My SQL'),
('Java NetBeans'),
('Dia'),
('JFlap'),
('Visual Studio Code');

select * from docentes;
select * from carreras;
select * from materias;
select * from software;