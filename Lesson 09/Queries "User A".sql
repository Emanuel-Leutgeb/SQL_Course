/*Queries 02*/
/*User 01*/
SET TRANSACTION NAME 'queries02UserA';

UPDATE TEST
SET FIRST_NAME = 'Johann'
WHERE NAME_ID = 4;

UPDATE TEST
SET FIRST_NAME = 'Emanuel'
WHERE NAME_ID = 1;

COMMIT;
--or...
ROLLBACK;

/*Queries 03*/
/*User 01*/
INSERT INTO TEST
VALUES (5, 'Sandra', 'Forstinger', 50);

INSERT INTO TEST
VALUES (6, 'Mario', 'Forstinger', 60);

SELECT *
FROM TEST;

COMMIT;

SELECT *
FROM TEST;

/*Queries 04*/
/*User 01*/
SET TRANSACTION NAME 'queries04UserA';

SELECT LAST_NAME
FROM TEST
WHERE NAME_ID = 2;

SELECT *
FROM TEST;

UPDATE TEST
SET LAST_NAME = 'Forstinger'
WHERE NAME_ID = 2;

COMMIT;

SELECT *
FROM TEST;

/*Queries 05*/
/*User 01*/
SET TRANSACTION NAME 'queries05UserA';

INSERT INTO TEST
VALUES (9, 'Rebekka', 'Leutgeb', 90);

--

COMMIT;

/*Queries 06*/
/*User 01*/
SET TRANSACTION NAME 'queries06UserA';

UPDATE TEST
SET LAST_NAME = 'Leutgeb'
WHERE NAME_ID = 2;

ROLLBACK;

UPDATE TEST
SET LAST_NAME = 'Forstinger Leutgeb'
WHERE NAME_ID = 2;

SELECT *
FROM TEST;

--

ROLLBACK;

/*Queries 07*/
/*User 01*/
SET TRANSACTION NAME 'queries07UserA';

SELECT *
FROM TEST
WHERE NAME_ID = 1;

SELECT *
FROM TEST
WHERE NAME_ID = 2;

SELECT *
FROM TEST
WHERE NAME_ID = 3;

--

COMMIT;

/*Queries 08*/
/*User 01*/
SET TRANSACTION NAME 'queries08_01UserA'; --Without table lock

SELECT LAST_NAME
FROM TEST
WHERE VALUE = 20;

UPDATE TEST
SET LAST_NAME = 'Forstinger'
WHERE VALUE = 20;

COMMIT;

SELECT *
FROM TEST;

--

SET TRANSACTION NAME 'queries08_02UserA'; --With table lock

LOCK TABLE TEST
   IN EXCLUSIVE MODE
   NOWAIT;

SELECT LAST_NAME
FROM TEST
WHERE VALUE = 20;

UPDATE TEST
SET LAST_NAME = 'Leutgeb'
WHERE VALUE = 20;

COMMIT;

SELECT *
FROM TEST;

/*Queries 09*/
/*User 01*/
CREATE TABLE USER_A
(
    ID NUMBER(2) PRIMARY KEY
);
COMMIT;

--

INSERT INTO USER_A
VALUES (01);
INSERT INTO USER_A
VALUES (02);
INSERT INTO USER_A
VALUES (03);
INSERT INTO USER_A
VALUES (04);
INSERT INTO USER_A
VALUES (05);
COMMIT;

--
CREATE USER USER_B IDENTIFIED BY passme;

REVOKE REFERENCES
    ON USER_A
    FROM ELEUTGEB;


SET TRANSACTION NAME 'queries09UserA';
