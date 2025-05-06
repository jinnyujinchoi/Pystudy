-- 첨부파일 경로 조회, 조회수가 가장 높은 --
SELECT 
    CONCAT('/home/grep/src/',
             B.BOARD_ID, '/',
              F.FILE_ID, F.FILE_NAME, F.FILE_EXT
             ) AS FILE_PATH
FROM USED_GOODS_BOARD AS B
-- 조인 실행 --
JOIN USED_GOODS_FILE AS F
ON B.BOARD_ID = F.BOARD_ID
-- 조회수가 가장 높은 --
WHERE B.VIEWS =
    -- 가장 높은 조회수 찾는 서브쿼리 --
    (SELECT MAX(VIEWS)
    FROM USED_GOODS_BOARD)
-- FILE_ID 내림차순 --
ORDER BY F.FILE_ID DESC