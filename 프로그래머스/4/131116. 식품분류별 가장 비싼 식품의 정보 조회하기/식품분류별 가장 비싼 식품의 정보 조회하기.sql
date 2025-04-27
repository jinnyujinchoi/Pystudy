-- 일단 첫 쿼리에서 분류, 가격, 이름 조회 --
SELECT CATEGORY, PRICE AS MAX_PRICE, PRODUCT_NAME
FROM FOOD_PRODUCT
-- 그런데 (분류, 가격)이 서브 쿼리에 있는 --
WHERE (CATEGORY, PRICE) IN (
    -- 서브 쿼리 --
    -- 분류, 최대가격 뽑아내자 --
    SELECT CATEGORY, MAX(PRICE)
    FROM FOOD_PRODUCT
    -- 분류 IN (과자, ...) --
    WHERE CATEGORY IN ('과자', '국', '김치', '식용유')
    -- 분류별로 그룹 묶기 --
    GROUP BY CATEGORY
    )
ORDER BY MAX_PRICE DESC

-- 가격 순으로 정렬 --