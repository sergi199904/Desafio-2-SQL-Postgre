/*Creacion de Base de datos*/
CREATE DATABASE desafio2_Sergio_Oyarzo_002;

CREATE TABLE IF NOT EXISTS INSCRITOS(cantidad INT, fecha DATE, fuente
VARCHAR);
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 44, '01/01/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 56, '01/01/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 39, '01/02/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 81, '01/02/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/03/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 91, '01/03/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 48, '01/04/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 45, '01/04/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 55, '01/05/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 33, '01/05/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 18, '01/06/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 12, '01/06/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 34, '01/07/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 24, '01/07/2021', 'Página' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 83, '01/08/2021', 'Blog' );
INSERT INTO INSCRITOS(cantidad, fecha, fuente)
VALUES ( 99, '01/08/2021', 'Página' );



 /*¿Cuántos registros hay?*/
 
SELECT count(*) AS total_registros FROM inscritos;

/*¿Cuántos inscritos hay en total?*/

SELECT sum(cantidad) AS total_inscritos FROM inscritos;

/*¿Cuál o cuáles son los registros de mayor antigüedad?*/

SELECT * from inscritos WHERE fecha = (SELECT fecha AS fecha_mas_antigua FROM inscritos ORDER BY fecha ASC LIMIT 1);

/*¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de
ahora en adelante)*/

SELECT fecha, sum(cantidad) FROM inscritos GROUP BY fecha ORDER BY fecha;

/*¿Cuántos inscritos hay por fuente?*/

SELECT fuente, sum(cantidad) FROM inscritos GROUP BY fuente ORDER BY fuente;

 /*¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se
inscribieron en ese día?*/

SELECT sum(cantidad), fecha FROM inscritos GROUP BY fecha ORDER By sum DESC LIMIT 1;

/*¿Qué días se inscribieron la mayor cantidad de personas utilizando el blog y cuántas
personas fueron?
*/

SELECT fecha, cantidad FROM inscritos WHERE fuente='Blog' ORDER BY cantidad DESC LIMIT 1;

 /*¿Cuántas personas en promedio se inscriben en un día? */

 SELECT AVG(cantidad), fecha AS promedio FROM inscritos GROUP BY fecha order by fecha ASC;

  /*¿Qué días se inscribieron más de 50 personas?*/

  SELECT fecha, sum(cantidad) FROM inscritos GROUP By fecha HAVING sum(cantidad) > 50 ORDER BY fecha ASC;

 /*¿Cuántas personas se registraron en promedio cada día a partir del tercer día?*/

 SELECT fecha, AVG(cantidad) FROM inscritos GROUP BY fecha HAVING (fecha >= '2021-03-01') ORDER BY fecha ASC;
