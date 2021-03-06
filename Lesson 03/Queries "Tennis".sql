/*Query 01*/
SELECT PLAYERNO, YEAR_OF_BIRTH
FROM PLAYERS
WHERE YEAR_OF_BIRTH > 1960;

/*Query 02*/
SELECT PLAYERNO, NAME, TOWN, SEX
FROM PLAYERS
WHERE TOWN != 'Stratford'
  AND SEX = 'F';

/*Query 03*/
SELECT PLAYERNO, YEAR_JOINED
FROM PLAYERS
WHERE YEAR_JOINED
          BETWEEN 1970
          AND 1980;

/*Query 04*/
SELECT PLAYERNO, NAME, YEAR_OF_BIRTH
FROM PLAYERS
WHERE (MOD(YEAR_OF_BIRTH, 4) = 0)
   OR (MOD(YEAR_OF_BIRTH, 100) = 0)
   OR MOD(YEAR_OF_BIRTH, 400) = 0;

/*Query 05*/
SELECT AMOUNT
FROM PENALTIES
WHERE AMOUNT
          BETWEEN 50
          AND 100;

/*Query 06*/
SELECT PLAYERNO, NAME, TOWN
FROM PLAYERS
WHERE TOWN != 'Douglas'
  AND TOWN != 'Stratford';

/*Query 07*/
SELECT PLAYERNO, NAME
FROM PLAYERS
WHERE NAME
          LIKE '%is%';

/*Query 08*/
SELECT LEAGUENO
FROM PLAYERS
WHERE LEAGUENO
          IS NULL;