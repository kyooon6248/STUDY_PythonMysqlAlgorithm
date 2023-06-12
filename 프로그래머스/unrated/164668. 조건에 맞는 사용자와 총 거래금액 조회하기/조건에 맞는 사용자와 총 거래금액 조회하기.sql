SELECT A.WRITER_ID, B.NICKNAME, SUM(A.PRICE)
FROM USED_GOODS_BOARD A INNER JOIN USED_GOODS_USER B
ON A.WRITER_ID = B.USER_ID AND A.STATUS = "DONE"
GROUP BY A.WRITER_ID
HAVING SUM(A.PRICE) >= 700000
ORDER BY 3 ASC;