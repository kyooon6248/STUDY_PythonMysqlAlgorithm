SELECT FP.PRODUCT_ID, FP.PRODUCT_NAME, (FP.PRICE * FO.S_AMOUNT) AS TOTAL_SALES
    FROM FOOD_PRODUCT FP,
    (SELECT PRODUCT_ID, sum(AMOUNT) AS S_AMOUNT
        FROM FOOD_ORDER
        WHERE EXTRACT(YEAR_MONTH FROM PRODUCE_DATE) = '202205'
        GROUP BY 1) AS FO
    WHERE FP.PRODUCT_ID = FO.PRODUCT_ID
    ORDER BY TOTAL_SALES DESC, FP.PRODUCT_ID