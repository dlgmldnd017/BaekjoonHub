-- 코드를 입력하세요
SELECT
P.PRODUCT_ID, P.PRODUCT_NAME, PRICE*SUM(AMOUNT) TOTAL_SALES

FROM
FOOD_PRODUCT P JOIN FOOD_ORDER O
USING (PRODUCT_ID)

WHERE
PRODUCE_DATE LIKE '2022-05%'

GROUP BY
PRODUCT_ID

ORDER BY
TOTAL_SALES DESC, PRODUCT_ID