/*Query 01*/
SELECT YEAR_JOINED, COUNT(*)
FROM PLAYERS
GROUP BY YEAR_JOINED;

/*Query 02*/
SELECT PLAYERNO, COUNT(*), AVG(AMOUNT)
FROM PENALTIES
GROUP BY PLAYERNO;

/*Query 03*/
SELECT PLAYERNO, COUNT(*)
FROM PENALTIES
WHERE EXTRACT(YEAR FROM TO_DATE(PEN_DATE, 'DD-MM-YYYY')) < 1983
GROUP BY PLAYERNO;

/*Query 04*/
SELECT TOWN, COUNT(*)
FROM PLAYERS
GROUP BY TOWN
HAVING COUNT(*) > 4;

/*Query 05*/
SELECT PLAYERNO, SUM(AMOUNT)
FROM PENALTIES
GROUP BY PLAYERNO
HAVING SUM(AMOUNT) > 150;

/*Query 06*/
SELECT NAME, INITIALS, PENALTIES.PLAYERNO
FROM PENALTIES,
     PLAYERS
WHERE PLAYERS.PLAYERNO = PENALTIES.PLAYERNO
GROUP BY NAME, INITIALS, PENALTIES.PLAYERNO
HAVING COUNT(PENALTIES.PLAYERNO) > 1;

/*Query 07*/
SELECT EXTRACT(YEAR FROM TO_DATE(PEN_DATE, 'DD-MM-YYYY'))
FROM PENALTIES
GROUP BY EXTRACT(YEAR FROM TO_DATE(PEN_DATE, 'DD-MM-YYYY'))
HAVING COUNT(*) = 2;

/*Query 08*/
SELECT NAME, INITIALS, PENALTIES.PLAYERNO
FROM PENALTIES,
     PLAYERS
WHERE AMOUNT > 40
  AND PLAYERS.PLAYERNO = PENALTIES.PLAYERNO
GROUP BY NAME, INITIALS, PENALTIES.PLAYERNO
HAVING COUNT(*) >= 2;

/*Query 09*/
select name, initials
from penalties,
     players
where players.playerno = penalties.playerno
group by name, initials
having sum(penalties.amount) >= all
       (select sum(amount)
        from penalties
        group by playerno);

/*Query 10*/
select extract(YEAR from TO_DATE(pen_date, 'DD-MM-YYYY')), count(*)
from penalties
group by pen_date
having count(*) >= all
       (select count(*)
        from penalties
        group by pen_date);

/*Query 11*/
select playerno, teamno, won, lost
from matches
order by lost desc;
