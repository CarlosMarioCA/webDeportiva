---1. Lugares donde se puede practicar deporte.
SELECT nombre,ciudad FROM lugar;

---2. Premios a los que se puede aspirar.
SELECT titulo_obtenido,descripcion FROM premio;

---3. La Meta de la persona relacionada con el documento 1010.
SELECT descripcion FROM meta WHERE usuario_identificacion=1010;

--4. Descripcion de el o los titulo(s) obtenido(s) por el usuario con documento 1011.
SELECT descripcion titulo_obtenido FROM premio WHERE usuario_identificacion=1011;

---5. Fecha Programada de el evento con codigo 10013 y si está confirmado.
SELECT fecha_programada,estado FROM evento WHERE lugar_codigo=10013;

---6. Numero, fecha y descripción del entrenamiento de la persona con identificación 1016.
SELECT numero,descripcion,fecha FROM entrenamiento WHERE usuario_identificacion=1016;

---7. 
SELECT * FROM (SELECT * FROM usuario,entrenamiento WHERE idenficacion=usuario_identificacion);

---8. Indica los lugares confirmados donde serán los eventos, la fecha y si están confirmados o no.
SELECT  evento.codigo_evento, lugar.descripcion,lugar.ciudad, evento.fecha_programada, evento.estado FROM lugar INNER JOIN evento ON codigo=lugar_codigo;

---9.  Listado de Premios que han sido otorgados y a que personas.
SELECT usuario.identificacion, usuario.nombre, premio.descripcion,premio.titulo_obtenido  FROM usuario INNER JOIN premio ON identificacion=usuario_identificacion;