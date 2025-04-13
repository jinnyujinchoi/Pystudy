-- 입양을 못 간 동물 --> OUTS에 없는 --
-- 가장 오래 보호소 : 들어온 날짜가 오래된 --
-- 3마리 -> LIMIT --
-- 이름, 보호시작일 조회 --
SELECT INS.NAME AS NAME, INS.DATETIME AS DATETIME
FROM ANIMAL_INS AS INS
-- 조인 시작 --
LEFT JOIN ANIMAL_OUTS AS OUTS
    ON INS.ANIMAL_ID = OUTS.ANIMAL_ID
-- OUTS에 없는 --
WHERE OUTS.ANIMAL_ID IS NULL
-- 보호 시작일 순 정렬 --
ORDER BY INS.DATETIME
LIMIT 3;