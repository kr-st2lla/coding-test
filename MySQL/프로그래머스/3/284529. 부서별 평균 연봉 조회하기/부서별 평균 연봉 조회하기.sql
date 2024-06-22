SELECT RESULT.DEPT_ID, RESULT.DEPT_NAME_EN, RESULT.AVG_SAL
FROM (
    SELECT D.DEPT_ID, D.DEPT_NAME_EN, ROUND(AVG(E.SAL)) AS AVG_SAL
    FROM HR_EMPLOYEES AS E INNER JOIN HR_DEPARTMENT AS D ON E.DEPT_ID = D.DEPT_ID
    GROUP BY D.DEPT_ID
) AS RESULT
ORDER BY RESULT.AVG_SAL DESC;