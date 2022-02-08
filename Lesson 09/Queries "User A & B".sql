/*Queries 01*/
CREATE TABLE TEST
(
    NAME_ID    NUMBER(2)   NOT NULL,
    FIRST_NAME VARCHAR(20) NOT NULL,
    LAST_NAME  VARCHAR(20) NOT NULL,
    VALUE      NUMBER(13)  NOT NULL
);

/*User 01*/
INSERT INTO TEST
VALUES (1, 'Emanuel', 'Leutgeb', 10);

INSERT INTO TEST
VALUES (2, 'Miriam', 'Forstinger', 20);

COMMIT;

/*User 02*/
INSERT INTO TEST
VALUES (3, 'Renate', 'Leutgeb', 30);

INSERT INTO TEST
VALUES (4, 'Johann', 'Reisenauer', 40);

COMMIT;

/*Queries 02*/
/*
[2022-02-08 09:19:14] [61000][60] ORA-00060: deadlock detected while waiting for resource
[2022-02-08 09:19:14] Position: 20

alter system flush buffer_cache;
alter system flush shared_pool;
*/

/*Queries 03*/
/*
The changes are only available until there was a commit;
*/


/*Queries 04*/
/*
Yes it is feasible but it's called "dirty read" because you have an old value inside of user A.
The Oracle use the ACID principle
*/

/*Queries 05*/
/*
Without primary key you can insert both values
*/
DELETE TEST
WHERE NAME_ID = 9;

COMMIT;

ALTER TABLE TEST
ADD PRIMARY KEY (NAME_ID);

/*
With primary key you can't insert both values the second transaction will not be performed
*/

/*Queries 06*/
/*
The user B can only change the record when user A makes the "rollback" and user A didn't make a commit so the update is only locally.
*/

/*Queries 07*/
/*
The user A can read the files that are committed the user B can read and update all files and see all changes locally.
*/

/*Queries 08*/
/*
You can lock the table so nobody can make a change on the table for this transaction,
until the transaction is over
*/

/*Queries 09*/
/*
Create second user (user B) log in with that user and create the table with the foreign key after that revoke on user A that user B can't make references.
Try to insert something.
*/