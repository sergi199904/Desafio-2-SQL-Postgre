# Desafio-2-SQL-Postgre
Desafío 2 - Consultas Agrupadas En este desafío validaremos nuestros conocimientos de Consultas Agrupadas.

Descripción
Aplicando los conceptos y herramientas aprendidas hasta ahora, crea las consultas que
contesten las siguientes preguntas:
● ¿Cuántos registros hay?
● ¿Cuántos inscritos hay en total?
● ¿Cuál o cuáles son los registros de mayor antigüedad?
HINT: ocupar subconsultas
● ¿Cuántos inscritos hay por día? (entendiendo un día como una fecha distinta de
ahora en adelante)
● ¿Cuántos inscritos hay por fuente?
● ¿Qué día se inscribieron la mayor cantidad de personas y cuántas personas se
inscribieron en ese día?
● ¿Qué días se inscribieron la mayor cantidad de personas utilizando el blog y cuántas
personas fueron?
HINT: si hay más de un registro, tomar el primero
● ¿Cuántas personas en promedio se inscriben en un día?
● ¿Qué días se inscribieron más de 50 personas?
● ¿Cuántas personas se registraron en promedio cada día a partir del tercer día?
HINT: ingresa manualmente la fecha del tercer día

Utilizando el siguiente set de datos:
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

