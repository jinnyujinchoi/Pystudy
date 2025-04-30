-- ID 출력(3세대에서) --
-- 1세대(A), 2세대(B), 3세대(C) --
SELECT C.ID AS ID
FROM ECOLI_DATA AS C
-- 3세대 -> 셀프 조인 --
JOIN ECOLI_DATA AS B
ON C.PARENT_ID = B.ID
-- 셀프 조인을 두 번 해보자 --
JOIN ECOLI_DATA AS A
ON B.PARENT_ID = A.ID
-- 3번 갔을 때 NULL 인 --
WHERE A.PARENT_ID IS NULL
-- 오름차순 정렬 --
ORDER BY ID
