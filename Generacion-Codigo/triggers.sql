START TRANSACTION;

DROP TRIGGER IF EXISTS trigger_verificar_email_before_insert ON USUARIO;
DROP TRIGGER IF EXISTS trigger_verificar_email_before_update ON USUARIO;
DROP TRIGGER IF EXISTS trigger_comprobar_numero_generos_before_insert ON SERIE_PERTENECE_GENERO;
DROP TRIGGER IF EXISTS trigger_comprobar_numero_generos_before_update ON SERIE_PERTENECE_GENERO;
DROP TRIGGER IF EXISTS trigger_comprobar_valoracion_capitulo_before_insert ON CLIENTE_COMENTA_SERIE;
DROP TRIGGER IF EXISTS trigger_comprobar_valoracion_capitulo_before_update ON CLIENTE_COMENTA_SERIE;
DROP TRIGGER IF EXISTS trigger_calcular_valoracion_after_insert ON CLIENTE_VALORA_CAPITULO;
DROP TRIGGER IF EXISTS trigger_calcular_valoracion_after_update ON CLIENTE_VALORA_CAPITULO;

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

CREATE TRIGGER trigger_verificar_email_before_update BEFORE UPDATE ON USUARIO
FOR EACH ROW EXECUTE PROCEDURE verificar_email();



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

CREATE TRIGGER trigger_comprobar_numero_generos_before_update BEFORE UPDATE ON SERIE_PERTENECE_GENERO
FOR EACH ROW EXECUTE PROCEDURE comprobar_numero_generos();



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

CREATE TRIGGER trigger_comprobar_valoracion_capitulo_before_update BEFORE UPDATE ON CLIENTE_COMENTA_SERIE
FOR EACH ROW EXECUTE PROCEDURE comprobar_valoracion_capitulo();



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

CREATE TRIGGER trigger_calcular_valoracion_after_update AFTER UPDATE ON CLIENTE_VALORA_CAPITULO
FOR EACH ROW EXECUTE PROCEDURE calcular_media();


COMMIT;