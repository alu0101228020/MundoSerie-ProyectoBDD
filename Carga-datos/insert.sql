-- -----------------------------------------------------
-- Data for table GENERO
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO GENERO (nombre, descripcion) VALUES ('Acción', 'Prima la espectacularidad de las imágenes.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Animación', 'Se caracteriza por recurrir a una o más técnicas de animación.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Aventura', 'Muestra los viajes, el misterio y el riesgo.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Ciencia Ficción', ' Acción en unas coordenadas espacio-temporales imaginarias.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Comedia', 'Mayoría de escenas y situaciones humorísticas o festivas');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Drama', 'Historias serias, en las que prevalece el dialogo y la acción.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Fantasía', 'Contiene algún elemento de fantasía, por tenue que sea.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Histórico', 'Caracterizado por la ambientación en una época histórica determinada.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Suspense', 'Provoca en el espectador un sentimiento de incertidumbre o de ansiedad.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Policíaco', 'Combina acción, drama y suspense en el que se involucra al espectador en la resolución de un caso.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Romance', 'Se relata una historia de amor.');
INSERT INTO GENERO (nombre, descripcion) VALUES ('Terror', 'Se caracteriza por su voluntad de provocar en el espectador sensaciones de pavor, terror, miedo  o preocupación.');

COMMIT;

-- -----------------------------------------------------
-- Data for table SERIE
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO SERIE (fecha_estreno, titulo, idioma, sinopsis) VALUES ('2017-12-01', 'Dark', 'Alemán', 'Gira alrededor de la desaparición paranormal de dos niños en Widen.');
INSERT INTO SERIE (fecha_estreno, titulo, idioma, sinopsis) VALUES ('2021-01-08', 'Lupin', 'Francés', 'El ladrón Assane Diop se propone vengar la injusticia sufrida por su padre.');
INSERT INTO SERIE (fecha_estreno, titulo, idioma, sinopsis) VALUES ('1989-12-17', 'The Simpsons', 'Inglés', 'Narra la vida de una familia en un pueblo ficticio llamado Springfield.');
INSERT INTO SERIE (fecha_estreno, titulo, idioma, sinopsis) VALUES ('2010-10-31', 'The Walking Dead', 'Inglés', 'Narra un mundo situado en un apocalipsis zombi mundial.');
INSERT INTO SERIE (fecha_estreno, titulo, idioma, sinopsis) VALUES ('2017-05-02', 'La Casa de Papel', 'Español', 'Narra el robo a la Fábrica Nacional de Moneda y Timbre.');
INSERT INTO SERIE (fecha_estreno, titulo, idioma, sinopsis) VALUES ('2007-09-24', 'The Big Bang Theory', 'Inglés', 'Dos cerebritos que comparten piso, con la llegada de Penny, se altera la tranquila vida de ambos.');
INSERT INTO SERIE (fecha_estreno, titulo, idioma, sinopsis) VALUES ('2008-01-20', 'Breaking Bad', 'Inglés', 'Narra la vida de un profesor de química que trabaja como asesor de una empresa de drogas.');

COMMIT;

-- -----------------------------------------------------
-- Data for table SERIE_PERTENECE_GENERO
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Dark', 'Drama');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Dark', 'Suspense');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Dark', 'Fantasía');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Dark', 'Aventura');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Lupin', 'Drama');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Lupin', 'Acción');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Lupin', 'Comedia');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Lupin', 'Suspense');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('The Simpsons', 'Comedia');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('The Simpsons', 'Drama');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('The Simpsons', 'Animación');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('The Walking Dead', 'Drama');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('The Walking Dead', 'Acción');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('The Walking Dead', 'Terror');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('The Walking Dead', 'Suspense');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('The Walking Dead', 'Ciencia Ficción');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('La Casa de Papel', 'Drama');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('La Casa de Papel', 'Acción');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('The Big Bang Theory', 'Comedia');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Breaking Bad', 'Drama');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Breaking Bad', 'Acción');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Breaking Bad', 'Comedia');
INSERT INTO SERIE_PERTENECE_GENERO (titulo_serie, nombre_genero) VALUES ('Breaking Bad', 'Suspense');

COMMIT;

-- -----------------------------------------------------
-- Data for table TEMPORADA
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (1, 'Dark', 10, '2017-12-01');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (2, 'Dark', 8, '2019-06-21');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (3, 'Dark', 8, '2020-06-27');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (1, 'Lupin', 10, '2021-01-08');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (32, 'The Simpsons', 22, '2020-09-27');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (1, 'The Walking Dead', 	6, '2010-10-31');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (2, 'The Walking Dead', 	13, '2011-10-16');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (1, 'La Casa de Papel', 	15, '2017-05-02');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (2, 'La Casa de Papel', 	16, '2019-07-19');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (3, 'La Casa de Papel', 	10, '2021-09-03');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (1, 'The Big Bang Theory', 	17, '2007-09-24');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (2, 'The Big Bang Theory', 	17, '2008-09-22');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (1, 'Breaking Bad', 	7, '2008-01-20');
INSERT INTO TEMPORADA (numero_temporada, titulo_serie, cantidad_capitulos, fecha_estreno) VALUES (2, 'Breaking Bad', 	13, '2009-03-08');


COMMIT;

-- -----------------------------------------------------
-- Data for table CAPITULO
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'Dark', 1, 'Geheimnis', 51, '2017-12-01');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'Dark', 1, 'Lügen', 44, '2017-12-01');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'Dark', 1, 'Vergangenheit und Gegenwart', 45, '2017-12-01');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (4, 'Dark', 1, 'Doppelleben', 47, '2017-12-01');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'Dark', 2, 'Anfänge und Enden', 53, '2019-06-21');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'Dark', 2, 'Dunkle Materie', 54, '2019-06-21');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'Dark', 2, 'Geister', 56, '2019-06-21');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'Dark', 3, 'Dejà vu', 62, '2020-06-27');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'Dark', 3, 'Überlebende', 59, '2020-06-27');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'Dark', 3, 'Adam und Evan', 56, '2020-06-27');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'Lupin', 1, 'Le collier de la reine', 48, '2021-01-08');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'Lupin', 1, 'L’illusion', 53, '2021-01-08');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'Lupin', 1, 'Le commissaire Dumont', 43, '2021-01-08');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (4, 'Lupin', 1, 'Volte-face', 48, '2021-01-08');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (5, 'Lupin', 1, 'Étretat', 44, '2021-01-08');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'The Simpsons', 32, 'Undercover Burns', 25, '2020-09-27');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'The Simpsons', 32, 'I, Carumbus', 27, '2020-10-04');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'The Simpsons', 32, 'Now Museum, Now You Do not', 24, '2020-10-11');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (4, 'The Simpsons', 32, 'Treehouse of Horror XXXI', 25, '2020-10-18');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (5, 'The Simpsons', 32, 'Podcast News', 27, '2020-11-08');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'La Casa de Papel', 1, 'Efectuar lo acordado', 80, '2017-05-02');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'La Casa de Papel', 1, 'Imprudencias letales', 66, '2017-05-09');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'La Casa de Papel', 1, 'Errar al disparar', 63, '2017-05-16');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'La Casa de Papel', 2, 'Se acabaron las máscaras', 54, '2017-10-16');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'La Casa de Papel', 2, 'La cabeza del plan', 42, '2017-10-23');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'La Casa de Papel', 2, 'Cuestión de eficacia', 43, '2017-11-02');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'La Casa de Papel', 3, 'Hemos vuelto', 50, '2019-07-19');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'La Casa de Papel', 3, 'Aikido', 41, '2019-07-19');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'La Casa de Papel', 3, '48 metros bajo el suelo', 49, '2019-07-19');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'The Big Bang Theory', 1, 'Pilot', 23, '2007-09-24');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'The Big Bang Theory', 1, 'The Big Bran Hypothesis', 21, '2007-10-01');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'The Big Bang Theory', 1, 'The Fuzzy Boots Corollary', 22, '2007-10-08');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (4, 'The Big Bang Theory', 1, 'The Luminous Fish Effect', 21, '2007-10-15');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (5, 'The Big Bang Theory', 1, 'The Hamburger Postulate', 20, '2007-10-22');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (6, 'The Big Bang Theory', 1, 'The Middle Earth Paradigm', 21, '2007-10-29');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (7, 'The Big Bang Theory', 1, 'The Dumpling Paradox', 21, '2007-11-05');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'The Big Bang Theory', 2, 'The Bad Fish Paradigm', 22, '2008-09-22');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'The Big Bang Theory', 2, 'The Codpiece Topology', 21, '2008-09-29');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'The Big Bang Theory', 2, 'The Barbarian Sublimation', 21, '2008-10-06');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (4, 'The Big Bang Theory', 2, 'The Griffin Equivalency', 21, '2008-10-13');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (5, 'The Big Bang Theory', 2, 'The Euclid Alternative', 20, '2008-10-20');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (6, 'The Big Bang Theory', 2, 'The Cooper-Nowitzki Theorem', 21, '2008-11-03');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'Breaking Bad', 1, 'Pilot', 58, '2008-01-20');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'Breaking Bad', 1, 'Cat is in the Bag...', 48, '2008-01-27');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'Breaking Bad', 1, '...And the Bag is in the River', 48, '2008-02-10');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (4, 'Breaking Bad', 1, 'Cancer Man', 48, '2008-02-17');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (5, 'Breaking Bad', 1, 'Gray Matter', 48, '2008-02-24');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (6, 'Breaking Bad', 1, 'Crazy Handful of Nothin', 48, '2008-03-02');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (7, 'Breaking Bad', 1, 'A No-Rough-Stuff-Type Deal', 48, '2008-03-09');

INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (1, 'Breaking Bad', 2, 'Seven Thirty-Seven', 47, '2009-03-08');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (2, 'Breaking Bad', 2, 'Grilled', 46, '2009-03-15');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (3, 'Breaking Bad', 2, 'Bit by a Dead Bee', 47, '2009-03-22');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (4, 'Breaking Bad', 2, 'Down', 47, '2009-03-29');
INSERT INTO CAPITULO (numero_capitulo, titulo_serie, numero_temporada, titulo, duracion, fecha_estreno) VALUES (5, 'Breaking Bad', 2, 'Breakage', 47, '2009-04-05');

COMMIT;

-- -----------------------------------------------------
-- Data for table USUARIO
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO USUARIO (email, nombre, apellido1, apellido2) VALUES ('daniel@gmail.com', 'Daniel', 'Álvarez', 'Medina');
INSERT INTO USUARIO (email, nombre, apellido1, apellido2) VALUES ('alberto@gmail.com', 'Alberto', 'Mendoza', 'Rodríguez');
INSERT INTO USUARIO (email, nombre, apellido1, apellido2) VALUES ('jorge@gmail.com', 'Jorge', 'Hernández', 'Batista');
INSERT INTO USUARIO (email, nombre, apellido1, apellido2) VALUES ('dayana@gmail.com', 'Dayana', 'Armas', 'Alonso');
INSERT INTO USUARIO (email, nombre, apellido1, apellido2) VALUES ('acoidan@gmail.com', 'Acoidan', 'Mesa', 'Hernández');

COMMIT;

-- -----------------------------------------------------
-- Data for table ADMINISTRADOR
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO ADMINISTRADOR (sueldo, email_administrador) VALUES (2000, 'daniel@gmail.com');
INSERT INTO ADMINISTRADOR (sueldo, email_administrador) VALUES (2000, 'jorge@gmail.com');

COMMIT;

-- -----------------------------------------------------
-- Data for table CLIENTE
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO CLIENTE (suscripcion, email_cliente) VALUES ('Anual', 'alberto@gmail.com');
INSERT INTO CLIENTE (suscripcion, email_cliente) VALUES ('Mensual', 'dayana@gmail.com');
INSERT INTO CLIENTE (suscripcion, email_cliente) VALUES ('Mensual', 'acoidan@gmail.com');

COMMIT;

-- -----------------------------------------------------
-- Data for table PERSONA
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Louis Hofmann', 'Louis', 'Hofmann', '', 'Alemán', '1997-06-03');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Karoline Eichhorn', 'Karoline', 'Eichhorn', '', 'Alemán', '1965-11-09');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Lisa Vicari', 'Lisa', 'Vicari', '', 'Alemán', '1997-02-11');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Stephan Kampwirth', 'Stephan', 'Kampwirth', '', 'Alemán', '1967-03-20'); 
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Maja Schöne', 'Maja', 'Schöne', '', 'Alemán', '1976-07-15');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Andreas Pietschmann', 'Andreas', 'Pietschmann', '', 'Alemán', '1976-03-22');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Jördis Triebel', 'Jördis', 'Triebel', '', 'Alemán', '1977-10-30');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Baran bo Odar', 'Baran', 'bo Odar', '', 'Alemán', '1978-04-18');

INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Omar Sy', 'Omar', 'Sy', '', 'Francés', '1978-01-20');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Ludivine Sagnier', 'Ludivine', 'Sagnier', '', 'Francés', '1979-07-03');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Hervé Pierre', 'Hervé', 'Pierre', '', 'Francés', '1955-04-22');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('George Kay', 'George', 'Kay', '', 'Francés', '1975-07-5');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Louis Leterrier', 'Louis', 'Leterrier', '', 'Francés', '1973-06-17');

INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Dan Castellaneta', 'Daniel', 'Castellaneta', '', 'Estadounidense', '1957-10-29');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Matt Groening', 'Matthew', 'Abraham', 'Groening', 'Estadounidense', '1954-02-15');

INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Úrsula Corberó', 'Úrsula', 'Corberó', 'Delgado', 'Española', '1989-08-11');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Álex Pina', 'Álex', 'Pina', 'Calafi', 'Español', '1967-06-23');

INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Jim Parsons', 'James Joseph', 'Parsons', '', 'Estadounidense', '1973-03-24');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Mark Cendrowski', 'Mark', 'Cendrowski', '', 'Estadounidense', '1959-08-05');

INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Bryan Cranston', 'Bryan Lee', 'Cranston', '', 'Estadounidense', '1956-03-7');
INSERT INTO PERSONA (nombre_artistico, nombre, apellido1, apellido2, nacionalidad, fecha_nacimiento) VALUES ('Vince Gilligan', 'George Vince', 'Gillian', '', 'Estadounidense', '1967-02-10');

COMMIT;

-- -- -----------------------------------------------------
-- -- Data for table PERSONA_PARTICIPA_CAPITULO
-- -- -----------------------------------------------------

START TRANSACTION;
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 1,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 2,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 2,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 3,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 3,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Louis Hofmann', 'Dark', 3,  3);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 1,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 2,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 2,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 3,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 3,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Lisa Vicari', 'Dark', 3,  3);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Stephan Kampwirth', 'Dark', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Stephan Kampwirth', 'Dark', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Stephan Kampwirth', 'Dark', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Stephan Kampwirth', 'Dark', 3,  3);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Maja Schöne', 'Dark', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Maja Schöne', 'Dark', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Maja Schöne', 'Dark', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Maja Schöne', 'Dark', 2,  3);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Andreas Pietschmann', 'Dark', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Andreas Pietschmann', 'Dark', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Andreas Pietschmann', 'Dark', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Andreas Pietschmann', 'Dark', 2,  3);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jördis Triebel', 'Dark', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jördis Triebel', 'Dark', 1,  2);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 1,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 2,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 2,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 3,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 3,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Baran bo Odar', 'Dark', 3,  3);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Omar Sy', 'Lupin', 1, 1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Omar Sy', 'Lupin', 1, 2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Omar Sy', 'Lupin', 1, 3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Omar Sy', 'Lupin', 1, 4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Omar Sy', 'Lupin', 1, 5);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Ludivine Sagnier', 'Lupin', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Ludivine Sagnier', 'Lupin', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Ludivine Sagnier', 'Lupin', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Ludivine Sagnier', 'Lupin', 1,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Ludivine Sagnier', 'Lupin', 1,  5);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Hervé Pierre', 'Lupin', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Hervé Pierre', 'Lupin', 1,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Hervé Pierre', 'Lupin', 1,  5);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Guionista', 'George Kay', 'Lupin', 1, 1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Guionista', 'George Kay', 'Lupin', 1, 2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Guionista', 'George Kay', 'Lupin', 1, 4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Guionista', 'George Kay', 'Lupin', 1, 5);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Louis Leterrier', 'Lupin', 1, 1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Louis Leterrier', 'Lupin', 1, 2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Louis Leterrier', 'Lupin', 1,  4);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Doblador', 'Dan Castellaneta', 'The Simpsons', 32,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Doblador', 'Dan Castellaneta', 'The Simpsons', 32,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Doblador', 'Dan Castellaneta', 'The Simpsons', 32,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Doblador', 'Dan Castellaneta', 'The Simpsons', 32,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Doblador', 'Dan Castellaneta', 'The Simpsons', 32,  5);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Matt Groening', 'The Simpsons', 32,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Matt Groening', 'The Simpsons', 32,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Matt Groening', 'The Simpsons', 32,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Matt Groening', 'The Simpsons', 32,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Matt Groening', 'The Simpsons', 32,  5);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Úrsula Corberó', 'La Casa de Papel', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Úrsula Corberó', 'La Casa de Papel', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Úrsula Corberó', 'La Casa de Papel', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Úrsula Corberó', 'La Casa de Papel', 2,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Úrsula Corberó', 'La Casa de Papel', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Úrsula Corberó', 'La Casa de Papel', 2,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Úrsula Corberó', 'La Casa de Papel', 3,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Úrsula Corberó', 'La Casa de Papel', 3,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actriz', 'Úrsula Corberó', 'La Casa de Papel', 3,  3);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Productor', 'Álex Pina', 'La Casa de Papel', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Productor', 'Álex Pina', 'La Casa de Papel', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Productor', 'Álex Pina', 'La Casa de Papel', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Productor', 'Álex Pina', 'La Casa de Papel', 2,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Productor', 'Álex Pina', 'La Casa de Papel', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Productor', 'Álex Pina', 'La Casa de Papel', 2,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Productor', 'Álex Pina', 'La Casa de Papel', 3,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Productor', 'Álex Pina', 'La Casa de Papel', 3,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Productor', 'Álex Pina', 'La Casa de Papel', 3,  3);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 1,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 1,  5);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 1,  6);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 1,  7);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 2,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 2,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 2,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 2,  5);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Jim Parsons', 'The Big Bang Theory', 2,  6);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 1,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 1,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 1,  5);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 1,  6);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 1,  7);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 2,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 2,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 2,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 2,  5);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Mark Cendrowski', 'The Big Bang Theory', 2,  6);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 1,  1); 
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 1,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 1,  5);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 1,  6);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 1,  7);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 2,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 2,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 2,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Actor', 'Bryan Cranston', 'Breaking Bad', 2,  5);

INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 1,  1); 
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 1,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 1,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 1,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 1,  5);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 1,  6);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 1,  7);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 2,  1);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 2,  2);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 2,  3);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 2,  4);
INSERT INTO PERSONA_PARTICIPA_CAPITULO (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo) VALUES ('Director', 'Vince Gilligan', 'Breaking Bad', 2,  5);

COMMIT;

-- -----------------------------------------------------
-- Data for table CLIENTE_VALORA_CAPITULO
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO CLIENTE_VALORA_CAPITULO (email_cliente, titulo_serie, numero_temporada, numero_capitulo, puntuacion) VALUES ('alberto@gmail.com', 'Dark', 1,  1, 9);
INSERT INTO CLIENTE_VALORA_CAPITULO (email_cliente, titulo_serie, numero_temporada, numero_capitulo, puntuacion) VALUES ('acoidan@gmail.com', 'Dark', 1,  1, 8);
INSERT INTO CLIENTE_VALORA_CAPITULO (email_cliente, titulo_serie, numero_temporada, numero_capitulo, puntuacion) VALUES ('dayana@gmail.com', 'La Casa de Papel', 3, 2, 7.5);
INSERT INTO CLIENTE_VALORA_CAPITULO (email_cliente, titulo_serie, numero_temporada, numero_capitulo, puntuacion) VALUES ('acoidan@gmail.com', 'The Big Bang Theory', 1, 5, 8);

COMMIT;

-- -----------------------------------------------------
-- Data for table CLIENTE_COMENTA_SERIE
-- -----------------------------------------------------

START TRANSACTION;

INSERT INTO CLIENTE_COMENTA_SERIE (titulo_serie, email_cliente, comentario) VALUES ('Dark', 'alberto@gmail.com', 'Es un retrato de una comunidad y tiene gran trama.');
INSERT INTO CLIENTE_COMENTA_SERIE (titulo_serie, email_cliente, comentario) VALUES ('La Casa de Papel', 'dayana@gmail.com', 'Los diálogos rápidos y la edición inteligente.');
INSERT INTO CLIENTE_COMENTA_SERIE (titulo_serie, email_cliente, comentario) VALUES ('The Big Bang Theory', 'acoidan@gmail.com', 'Es divertido y los personajes son identificables.');

COMMIT;