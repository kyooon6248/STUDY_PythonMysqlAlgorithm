SELECT a.AUTHOR_ID, a.AUTHOR_NAME, b.CATEGORY, SUM(b.PRICE * bs.SALES) AS TOTAL_SALES
    FROM BOOK b
    JOIN AUTHOR a ON b.AUTHOR_ID = a.AUTHOR_ID
    JOIN BOOK_SALES bs ON b.BOOK_ID = bs.BOOK_ID
    WHERE extract(year_month from bs.SALES_DATE) = '202201' 
    GROUP BY a.AUTHOR_ID, b.CATEGORY
    ORDER BY 1, 3 DESC
;