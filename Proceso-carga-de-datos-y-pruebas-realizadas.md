# Proceso de carga de datos y pruebas realizadas

## SELECT de las tablas

### Tabla GENERO

![SELECT GENERO](Select-tablas/select_genero.png)

### Tabla SERIE

![SELECT SERIE](Select-tablas/select_serie.png)

### Tabla SERIE_PERTENECE_GENERO

![SELECT SERIE_PERTENECE_GENERO](Select-tablas/select_serie_pertenece_genero.png)

### Tabla TEMPORADA

![SELECT TEMPORADA](Select-tablas/select_temporada.png)

### Tabla CAPITULO

![SELECT CAPITULO](Select-tablas/select_capitulo.png)

![SELECT CAPITULO](Select-tablas/select_capitulo_2.png)

### Tabla USUARIO

![SELECT USUARIO](Select-tablas/select_usuario.png)

### Tabla ADMINISTRADOR

![SELECT ADMINISTRADOR](Select-tablas/select_administrador.png)

### Tabla CLIENTE

![SELECT CLIENTE](Select-tablas/select_cliente.png)

### Tabla PERSONA

![SELECT PERSONA](Select-tablas/select_persona.png)

### Tabla PERSONA_PARTICIPA_CAPITULO

![SELECT PERSONA_PARTICIPA_CAPITULO](Select-tablas/select_persona_participa_capitulo.png)

![SELECT PERSONA_PARTICIPA_CAPITULO](Select-tablas/select_persona_participa_capitulo_2.png)

![SELECT PERSONA_PARTICIPA_CAPITULO](Select-tablas/select_persona_participa_capitulo_3.png)

![SELECT PERSONA_PARTICIPA_CAPITULO](Select-tablas/select_persona_participa_capitulo_4.png)

![SELECT PERSONA_PARTICIPA_CAPITULO](Select-tablas/select_persona_participa_capitulo_5.png)

### Tabla CLIENTE_VALORA_CAPITULO

![SELECT CLIENTE_VALORA_CAPITULO](Select-tablas/select_cliente_valora_capitulo.png)

### Tabla CLIENTE_COMENTA_SERIE

![SELECT CLIENTE_COMENTA_SERIE](Select-tablas/select_cliente_comenta_serie.png)

## Funcionamiento TRIGGERS

### TRIGGER trigger_comprobar_numero_generos_before_insert

![TRIGGER trigger_comprobar_numero_generos_before_insert](Comprobacion-triggers/trigger_comprobar_numero_generos_before_insert.png)

Se han realizado 5 inserciones sobre la tabla SERIE_PERTENECE_GENERO correctamente y a la sexta ha notificado de un error debido a que una serie no puede tener más de 5 géneros.

### TRIGGER trigger_verificar_email_before_insert

![TRIGGER trigger_verificar_email_before_insert](Comprobacion-triggers/trigger_verificar_email_before_insert.png)

Se ha realizado 1 inserción sobre la tabla USUARIO y al no tener la estructura correcta del correo electrónico, notifica de un error.

### TRIGGER trigger_comprobar_valoracion_capitulo_before_insert

![TRIGGER trigger_comprobar_valoracion_capitulo_before_insert](Comprobacion-triggers/trigger_comprobar_valoracion_capitulo_before_insert.png)

Se ha llevado a cabo 1 inserción en la tabla CLIENTE_COMENTA_SERIE y no se ha podido realizar debido a que este cliente no había comentado ningún capítulo de esta serie.

### TRIGGER trigger_calcular_valoracion_after_insert

![TRIGGER trigger_calcular_valoracion_after_insert](Comprobacion-triggers/trigger_calcular_valoracion_after_insert.png)

Inicialmente, en la tabla CLIENTE_VALORA_CAPITULO se muestra a través de los SELECT como por defecto en la serie Dark, temporada 1 y capítulo 1 no existe ninguna valoración y por lo tanto, por defecto la valoración del capítulo, que corresponde a la media de las valoraciones, es 0 en la tabla CAPITULO.

![TRIGGER trigger_calcular_valoracion_after_insert](Comprobacion-triggers/trigger_calcular_valoracion_after_insert_2.png)

Luego, se realizan 2 inserciones de 2 clientes que permiten valorar el capítulo y por lo tanto, calcular la media de la valoración del capítulo.

## Funcionamiento CHECK

### CHECK administrador_sueldo_check

![CHECK administrador_sueldo_check](Comprobacion-check/administrador_sueldo_check.png)

Se lleva a cabo una inserción en la tabla ADMINISTRADOR cuyo sueldo es 1000 y dado que es menor que el sueldo mínimo pues no se realiza.

### CHECK cliente_suscripcion_check

![CHECK cliente_suscripcion_check](Comprobacion-check/cliente_suscripcion_check.png)

Se lleva a cabo una inserción en la tabla CLIENTE se comprueba que solo se aceptan dos tipos de suscripciones 'Mensual' o 'Anual', si se introduce una suscripción distinta, notifica de un error.

### CHECK cliente_valora_capitulo_puntuacion_check

![CHECK cliente_valora_capitulo_puntuacion_check](Comprobacion-check/cliente_valora_capitulo_puntuacion_check.png)

Se lleva a cabo una inserción en la tabla CLIENTE_VALORA_CAPITULO permite que solo se acepten valoraciones entre 1 y 10, por lo tanto si se introduce un número valor a ello o menor, notifica de un error.

## Consultas y Updates

###  Consulta y Update tabla CAPITULO

En primer lugar, se muestra las valoraciones que tiene un capítulo, y tras ello se modifica la puntuación que le ha asignado un usuario en concreto.

![Consulta_update_1.png](Consultas-y-updates/consulta_update_1.png)

###  Consulta y Update tabla CLIENTE_COMENTA_SERIE

Primero se muestra el comentario que ha realizado un usuario para una serie en concreto, y posteriormente se actualiza este comentario.

![Consulta_update_2.png](Consultas-y-updates/consulta_update_2.png)

###  Consulta y Update tabla CLIENTE

Lo primero que se hace es mostrar los datos de un cliente en específico, después se modifica el tipo de suscripción de este cliente.

![Consulta_update_3.png](Consultas-y-updates/consulta_update_3.png)

###  Consulta y Update tabla ADMINSTRADOR

Ahora se muestra el sueldo que tiene un administrador en concreto, para después actualizarlo.

![Consulta_update_5.png](Consultas-y-updates/consulta_update_5.png)

###  Consulta tabla PERSONA_PARTICIPA_CAPITULO

Por último, se realiza una consulta para mostrar todas las personas que participan en la temporada 1 de la serie The Big Bang Theory.

![Consulta_update_4.png](Consultas-y-updates/consulta_update_4.png)



