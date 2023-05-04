SELECT a.NAME, a.DATETIME
FROM ANIMAL_INS a
LEFT JOIN ANIMAL_OUTS b
ON b.ANIMAL_ID = a.ANIMAL_ID
WHERE b.DATETIME IS NULL
ORDER BY a.DATETIME
LIMIT 3