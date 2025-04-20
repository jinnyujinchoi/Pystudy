-- 자동차 종류 별로 몇 대인지(CARS) --
-- 그룹으로 묶은 컬럼도 추가! --
SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
-- '통풍,열선,가죽' 이 포함된 --
-- 셋 중 하나라도 포함 == 합계 > 0 --
WHERE OPTIONS LIKE '%통풍시트%'
    OR OPTIONS LIKE '%가죽시트%'
    OR OPTIONS LIKE '%열선시트%'
-- GROUP으로 묶어주기 --
GROUP BY CAR_TYPE
-- 종류 기준 오름차순 --
ORDER BY CAR_TYPE;
