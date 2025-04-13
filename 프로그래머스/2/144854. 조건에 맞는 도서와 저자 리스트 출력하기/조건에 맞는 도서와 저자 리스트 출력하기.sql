-- 카테고리 : '경제' --
-- 도서ID, 저자명, 출판일 --
SELECT B.BOOK_ID AS BOOK_ID, 
        A.AUTHOR_NAME AS AUTHOR_NAME,
        DATE_FORMAT(B.PUBLISHED_DATE, '%Y-%m-%d') AS PUBLISHED_DATE
FROM BOOK AS B
-- 조인 시작 --
JOIN AUTHOR AS A
ON B.AUTHOR_ID = A.AUTHOR_ID
-- 조건 시작 --
WHERE B.CATEGORY = '경제'
-- 출판일 기준 오름차순 정렬 --
ORDER BY B.PUBLISHED_DATE;