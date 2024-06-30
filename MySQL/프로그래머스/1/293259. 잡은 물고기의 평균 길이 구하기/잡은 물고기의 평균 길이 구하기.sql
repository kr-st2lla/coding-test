# SELECT ROUND(AVG(CASE WHEN LENGTH IS NULL THEN 10 ELSE LENGTH END), 2) AS AVERAGE_LENGTH
# FROM FISH_INFO

SELECT ROUND(AVG(IFNULL(LENGTH, 10)), 2) AS AVERAGE_LENGTH
FROM FISH_INFO