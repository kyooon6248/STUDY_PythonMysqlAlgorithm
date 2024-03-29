SELECT F.FLAVOR
    FROM FIRST_HALF F
    ,(SELECT FLAVOR, sum(TOTAL_ORDER) AS JTOTAL
        FROM JULY 
        GROUP BY 1) J
    WHERE F.FLAVOR = J.FLAVOR
    GROUP BY F.FLAVOR
    ORDER BY (F.TOTAL_ORDER + J.JTOTAL) DESC
    LIMIT 3;