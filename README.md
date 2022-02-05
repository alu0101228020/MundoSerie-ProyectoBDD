# PROYECTO FINAL DE LA ASIGNATURA ADMINISTRACIÓN Y DISEÑO DE BASE DE DATOS

En este proyecto se ha desarrollado una base de datos sobre una plataforma de valoraciones de series y se ha decidido llevar a cabo su implementación mediante **PostgreSQL** como Servicio Gestor de la Base de Datos. Mundo Serie permite a los usuarios adquirir información y compartir sus impresiones acerca de las series que se encuentran en las distintas plataformas de streaming, así como realizar valoraciones y recomendaciones de dichas series. Por lo tanto, crearemos una base de datos donde se almacenará la información relativa a series, actores, directores, guionistas, los usuarios de la aplicación y sus opiniones.

## Componentes del equipo:

 *  **Daniel Álvarez Medina - [ alu0101216126@ull.edu.es ](alu0101216126@ull.edu.es)**
 *  **Alberto Mendoza Rodríguez - [ alu0101217741@ull.edu.es ](alu0101217741@ull.edu.es)**
 *  **Dayana Armas Alonso - [ alu0101228020@ull.edu.es ](alu0101228020@ull.edu.es)**
 *  **Jorge Hernández Batista - [ alu0101214627@ull.edu.es ](alu0101214627@ull.edu.es)**
 *  **Acoidán Mesa Hernández - [ alu0101206479@ull.edu.es ](alu0101206479@ull.edu.es)**

## Índice de documentos

  * [Requisitos]()
  * [Modelo Conceptual (ER/E)]()
  * [Modelo Lógico Relacional]()
  * [Modelo Lógico Objeto-Relacional (UML)]()
  * [Generación de Código (Scripts)]()
  * [Carga de datos]()

## Descripción de la GENERACIÓN DE CÓDIGO DE COMPONENTES Y PROCEDIMIENTOS

En primer lugar, se lleva a cabo la creación de la tabla SERIE que contiene como clave primaria el título.

```sql
-- -----------------------------------------------------
-- Table SERIE
-- -----------------------------------------------------
 
CREATE TABLE IF NOT EXISTS SERIE (
  titulo VARCHAR(45) NOT NULL,
  fecha_estreno DATE NULL,
  idioma VARCHAR(15) NOT NULL,
  sinopsis VARCHAR(400) NULL,
  valoracion INT NULL,
  PRIMARY KEY (titulo));
```

Luego, se lleva a cabo la creación de la tabla GENERO que contiene como clave primaria el nombre.

```sql
-- -----------------------------------------------------
-- Table GENERO
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS GENERO (
  nombre VARCHAR(20) NOT NULL,
  descripcion VARCHAR(400) NULL,
  PRIMARY KEY (nombre));
```

Se realiza la creación de la tabla TEMPORADA que contiene como clave primaria el número de temporada y el título de la serie.

```sql
-- -----------------------------------------------------
-- Table TEMPORADA
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS TEMPORADA (
  numero_temporada INT NOT NULL,
  titulo_serie VARCHAR(45) NOT NULL,
  cantidad_capitulos INT NOT NULL,
  fecha_estreno DATE NULL,
  PRIMARY KEY (numero_temporada, titulo_serie),
  CONSTRAINT fk_TEMPORADA_SERIE1
    FOREIGN KEY (titulo_serie)
    REFERENCES SERIE (titulo)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
```

Luego, se lleva a cabo la creación de la tabla CAPITULO que contiene como clave primaria el número del capítulo, el título de la serie y el número de temporada. Además, en esta tabla se tiene en cuenta como atributo el campo por defecto de valoracion que inicialmente se muestra a 0 dado que a través de un disparador, se actualizará para realizar la media de valoraciones que existen en un mismo capítulo.

```sql
-- -----------------------------------------------------
-- Table CAPITULO
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS CAPITULO (
  numero_capitulo INT NOT NULL,
  titulo_serie VARCHAR(45) NOT NULL,
  numero_temporada INT NOT NULL,
  titulo VARCHAR(45) NOT NULL,
  duracion INT NULL,
  fecha_estreno DATE NULL,
  valoracion FLOAT NULL DEFAULT 0,
  PRIMARY KEY (numero_capitulo, titulo_serie, numero_temporada),
  CONSTRAINT fk_CAPITULO_TEMPORADA1
    FOREIGN KEY (numero_temporada , titulo_serie)
    REFERENCES TEMPORADA (numero_temporada , titulo_serie)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
```

Seguidamente, se lleva a cabo la creación de la tabla USUARIO que contiene como clave primaria el email.

```sql
-- -----------------------------------------------------
-- Table USUARIO
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS USUARIO (
  email VARCHAR(100) NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  apellido1 VARCHAR(45) NOT NULL,
  apellido2 VARCHAR(45) NULL,
  PRIMARY KEY (email));
```

A continuación, se lleva a cabo la creación de la tabla PERSONA que contiene como clave primaria el nombre artístico.

```sql
-- -----------------------------------------------------
-- Table PERSONA
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS PERSONA (
  nombre_artistico VARCHAR(50) NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  apellido1 VARCHAR(45) NOT NULL,
  apellido2 VARCHAR(45) NULL,
  nacionalidad VARCHAR(15) NULL,
  fecha_nacimiento DATE NULL,
  PRIMARY KEY (nombre_artistico));
```

Luego, se realiza la tabla SERIE_PERTENECE_GENERO que representa la relación entre serie y género dado que una serie pertenece a uno o hasta 5 géneros.

```sql
-- -----------------------------------------------------
-- Table SERIE_PERTENECE_GENERO
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS SERIE_PERTENECE_GENERO (
  titulo_serie VARCHAR(45) NOT NULL,
  nombre_genero VARCHAR(20) NOT NULL,
  PRIMARY KEY (titulo_serie, nombre_genero),
  CONSTRAINT fk_SERIE_PERTENECE_GENERO_GENERO1
    FOREIGN KEY (nombre_genero)
    REFERENCES GENERO (nombre)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_SERIE_PERTENECE_GENERO_SERIE1
    FOREIGN KEY (titulo_serie)
    REFERENCES SERIE (titulo)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
```

Luego, creamos la tabla PERSONA_PARTICIPA_CAPITULO que representa la relación entre persona y capítulo ya que una persona que realiza un rol participa en un capítulo.

```sql
-- -----------------------------------------------------
-- Table PERSONA_PARTICIPA_CAPITULO
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS PERSONA_PARTICIPA_CAPITULO (
  rol VARCHAR(45) NOT NULL,
  nombre_artistico VARCHAR(50) NOT NULL,
  titulo_serie VARCHAR(45) NOT NULL,
  numero_temporada INT NOT NULL,
  numero_capitulo INT NOT NULL,
  PRIMARY KEY (rol, nombre_artistico, titulo_serie, numero_temporada, numero_capitulo),
  CONSTRAINT fk_PERSONA_PARTICIPA_CAPITULO_PERSONA1
    FOREIGN KEY (nombre_artistico)
    REFERENCES PERSONA (nombre_artistico)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_PERSONA_PARTICIPA_CAPITULO_CAPITULO1
    FOREIGN KEY (numero_temporada, titulo_serie, numero_capitulo)
    REFERENCES CAPITULO (numero_temporada , titulo_serie , numero_capitulo)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
```

A continuación, creamos la tabla ADMINISTRADOR donde se representa un **CHECK** que establece que el sueldo mínimo de un administrador debe ser mayor que 1050.00. Además, contiene como clave primaria el email que está relacionado con la tabla USUARIO.

```sql
-- -----------------------------------------------------
-- Table ADMINISTRADOR
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS ADMINISTRADOR (
  sueldo FLOAT CHECK (sueldo >= 1050.00) NOT NULL,
  email_administrador VARCHAR(100) NOT NULL,
  PRIMARY KEY (email_administrador),
  CONSTRAINT fk_ADMINISTRADOR_USUARIO1
    FOREIGN KEY (email_administrador)
    REFERENCES USUARIO (email)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
```

Además, creamos la tabla CLIENTE donde se representa un **CHECK** que establece que la suscripción del cliente debe ser 'Mensual' o 'Anual'. También, contiene como clave primaria el email que está relacionado con la tabla USUARIO.

```sql
-- -----------------------------------------------------
-- Table CLIENTE
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS CLIENTE (
  suscripcion VARCHAR(45) CHECK (suscripcion = 'Mensual' OR suscripcion = 'Anual') NOT NULL,
  email_cliente VARCHAR(100) NOT NULL,
  PRIMARY KEY (email_cliente),
  CONSTRAINT fk_CLIENTE_USUARIO1
    FOREIGN KEY (email_cliente)
    REFERENCES USUARIO (email)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
```

Seguidamente, se crea la tabla CLIENTE_COMENTA_SERIE que tiene como clave primaria el email del cliente y el título de la serie ya que un cliente puede comentar una serie.

```sql
-- -----------------------------------------------------
-- Table CLIENTE_COMENTA_SERIE
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS CLIENTE_COMENTA_SERIE (
  fecha TIMESTAMP NOT NULL,
  titulo_serie VARCHAR(45) NOT NULL,
  email_cliente VARCHAR(100) NOT NULL,
  comentario VARCHAR(400) NOT NULL,
  PRIMARY KEY (fecha, titulo_serie, email_cliente),
  CONSTRAINT fk_CLIENTE_COMENTA_SERIE_CLIENTE1
    FOREIGN KEY (email_cliente)
    REFERENCES CLIENTE (email_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_CLIENTE_COMENTA_SERIE_SERIE1
    FOREIGN KEY (titulo_serie)
    REFERENCES SERIE (titulo)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
```

Finalmente, se crea la tabla CLIENTE_VALORA_CAPITULO que tiene como clave primaria el email del cliente, el título de la serie, el número de temporada y el número del capítulo. Además, contiene un **CHECK** que permite limitar la puntuación entre 1 y 10 realiza un cliente sobre un capítulo.

```sql
-- -----------------------------------------------------
-- Table CLIENTE_VALORA_CAPITULO
-- -----------------------------------------------------

CREATE TABLE IF NOT EXISTS CLIENTE_VALORA_CAPITULO (
  fecha TIMESTAMP NOT NULL,
  email_cliente VARCHAR(100) NOT NULL,
  titulo_serie VARCHAR(45) NOT NULL,
  numero_temporada INT NOT NULL,
  numero_capitulo INT NOT NULL,
  puntuacion FLOAT CHECK (puntuacion >= 1 AND puntuacion <= 10) NOT NULL,
  PRIMARY KEY (email_cliente, titulo_serie, numero_temporada, numero_capitulo),
  CONSTRAINT fk_CLIENTE_VALORA_CAPITULO_CLIENTE1
    FOREIGN KEY (email_cliente)
    REFERENCES CLIENTE (email_cliente)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT fk_CLIENTE_VALORA_CAPITULO_CAPITULO1
    FOREIGN KEY (numero_capitulo , titulo_serie , numero_temporada)
    REFERENCES CAPITULO (numero_capitulo , titulo_serie , numero_temporada)
    ON DELETE CASCADE
    ON UPDATE CASCADE);
```

En el caso de los **disparadores**, creamos los siguientes:

```sql
/* Create function 'verificar_email' */
CREATE OR REPLACE FUNCTION verificar_email() RETURNS TRIGGER AS $verificar_email$
   BEGIN
      IF NEW.email !~ '^[A-Za-z0-9._%-]+@[A-Za-z0-9.-]+[.][A-Za-z]+$' THEN
        RAISE EXCEPTION 'El email introducido no es válido, la estructura debe ser "ejemplo@dominio.com"';
      END IF;

      RETURN NEW;
   END;
$verificar_email$ LANGUAGE plpgsql;

/* Create trigger with function verificar_email() */
CREATE TRIGGER trigger_verificar_email_before_insert BEFORE INSERT ON USUARIO
FOR EACH ROW EXECUTE PROCEDURE verificar_email();
```

Este disparador permite verificar el email del usuario para que tenga una estructura de correo válida.

```sql
/* Create function 'comprobar_numero_generos' */
CREATE OR REPLACE FUNCTION comprobar_numero_generos() RETURNS TRIGGER AS $comprobar_numero_generos$
   BEGIN
      IF (SELECT COUNT(*) FROM SERIE_PERTENECE_GENERO WHERE titulo_serie = NEW.titulo_serie) = 5 THEN
        RAISE EXCEPTION 'No se puede introducir el género deseado en la serie debido a que la serie puede tener como máximo 5 géneros';
      END IF;

      RETURN NEW;
   END;
$comprobar_numero_generos$ LANGUAGE plpgsql;



/* Create trigger with function comprobar_numero_generos() */
CREATE TRIGGER trigger_comprobar_numero_generos_before_insert BEFORE INSERT ON SERIE_PERTENECE_GENERO
FOR EACH ROW EXECUTE PROCEDURE comprobar_numero_generos();
```

Este disparador permite comprobar el número de géneros que se tiene por serie. Dado que cada serie solo podrá tener como máximo 5 géneros.

```sql
/* Create function 'comprobar_valoracion_capitulo' */

CREATE OR REPLACE FUNCTION comprobar_valoracion_capitulo() RETURNS TRIGGER AS $comprobar_valoracion_capitulo$
   BEGIN
      IF NOT EXISTS (SELECT * FROM CLIENTE_VALORA_CAPITULO WHERE email_cliente = NEW.email_cliente AND titulo_serie = NEW.titulo_serie) THEN
        RAISE EXCEPTION 'El cliente no puede comentar la serie porque no ha valorado ningún capítulo.';
      END IF;

      RETURN NEW;
   END;
$comprobar_valoracion_capitulo$ LANGUAGE plpgsql;

/* Create trigger with function comprobar_valoracion_capitulo() */
CREATE TRIGGER trigger_comprobar_valoracion_capitulo_before_insert BEFORE INSERT ON CLIENTE_COMENTA_SERIE
FOR EACH ROW EXECUTE PROCEDURE comprobar_valoracion_capitulo();
```

Este disparador permite comprobar si el cliente puede o no comentar la serie, dado que para poder comentarla antes tendría que haber valorado algún capítulo.

```sql
/* Create function 'calcular_media' */
CREATE OR REPLACE FUNCTION calcular_media() RETURNS TRIGGER AS $calcular_media$
   BEGIN
      -- Calcula la valoración del capitulo en función de las valoraciones de los clientes
      UPDATE CAPITULO SET valoracion = (SELECT AVG(puntuacion) FROM CLIENTE_VALORA_CAPITULO WHERE titulo_serie = NEW.titulo_serie AND numero_temporada = NEW.numero_temporada AND numero_capitulo = NEW.numero_capitulo) 
        WHERE titulo_serie = NEW.titulo_serie AND numero_temporada = NEW.numero_temporada AND numero_capitulo = NEW.numero_capitulo;
      
       RETURN NEW;
   END;
$calcular_media$ LANGUAGE plpgsql;

/* Create trigger with function calcular_media() */
CREATE TRIGGER trigger_calcular_valoracion_after_insert AFTER INSERT ON CLIENTE_VALORA_CAPITULO
FOR EACH ROW EXECUTE PROCEDURE calcular_media();
```

Este disparador permite calcular la media de valoraciones por capítulo. Para ello, se realiza la media de todas las puntuaciones que existen por cada capítulo.
