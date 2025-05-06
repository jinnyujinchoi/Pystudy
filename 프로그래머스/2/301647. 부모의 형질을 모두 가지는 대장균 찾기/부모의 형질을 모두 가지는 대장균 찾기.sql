-- ID, 형질, 부모 형질 조회 --
SELECT ID, GENOTYPE,
        -- 부모 형질 서브쿼리 --
        (SELECT GENOTYPE
         FROM ECOLI_DATA AS P
         WHERE P.ID = C.PARENT_ID        
        ) AS PARENT_GENOTYPE
FROM ECOLI_DATA AS C
-- 부모의 형질을 모두 가진 --
-- 2진수 치환 시, 형질 = 부모형질+ --
-- 자식 & 부모 = 부모(비트연산) --
WHERE GENOTYPE &
        (SELECT GENOTYPE
        FROM ECOLI_DATA AS P
        WHERE P.ID = C.PARENT_ID)
        = 
        (SELECT GENOTYPE
        FROM ECOLI_DATA AS P
        WHERE P.ID = C.PARENT_ID)
-- ID 오름차순 --
ORDER BY ID;