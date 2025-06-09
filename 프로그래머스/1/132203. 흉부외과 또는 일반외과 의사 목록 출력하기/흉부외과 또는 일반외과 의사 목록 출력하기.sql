-- 이름, ID, 진료과, 고용일자 조회 --
SELECT DR_NAME,
    DR_ID,
    MCDP_CD,
    DATE_FORMAT(HIRE_YMD, '%Y-%m-%d') AS HIRE_YMD
FROM DOCTOR
-- 흉부외과 혹은 일반외과 --
WHERE MCDP_CD IN ('CS', 'GS')
-- 고용일자, 이름 오름차순 --
ORDER BY HIRE_YMD DESC, DR_NAME;