-- 코드를 입력하세요

SELECT EXTRACT(HOUR FROM DATETIME) AS HOUR, COUNT(*) AS COUNT
    FROM ANIMAL_OUTS
    GROUP BY 1
    HAVING HOUR BETWEEN 9 AND 19
    ORDER BY 1