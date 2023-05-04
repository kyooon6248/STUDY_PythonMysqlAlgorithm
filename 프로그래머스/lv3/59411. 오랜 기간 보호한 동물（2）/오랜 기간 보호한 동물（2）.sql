SELECT a.ANIMAL_ID, a.NAME
    FROM ANIMAL_INS a
    LEFT JOIN ANIMAL_OUTS b
        ON a.ANIMAL_ID = b.ANIMAL_ID
    WHERE b.DATETIME IS NOT NULL
    ORDER BY b.DATETIME - a.DATETIME DESC
    LIMIT 2