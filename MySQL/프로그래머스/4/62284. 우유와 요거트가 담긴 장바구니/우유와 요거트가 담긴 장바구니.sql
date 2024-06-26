SELECT CART_ID
FROM
(
    SELECT CART_ID, GROUP_CONCAT(NAME SEPARATOR ",") AS NAME
    FROM CART_PRODUCTS 
    GROUP BY CART_ID
) AS RESULT 
WHERE FIND_IN_SET("Milk", RESULT.NAME) AND FIND_IN_SET("Yogurt", RESULT.NAME)
ORDER BY CART_ID;