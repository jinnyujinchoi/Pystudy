-- 자동차 ID, AVAILABILITY('날짜 기준') --
SELECT CAR_ID,
    -- START_DATE <= '2022-10-16' --
    -- AND END_DATE >= '2022-10-16' 이면 '대여중' --
    CASE
        -- 서브케이스 --
        WHEN MAX(CASE
                    WHEN '2022-10-16' BETWEEN START_DATE AND END_DATE
                    THEN 1
                    ELSE 0
                 END) = 1
        THEN '대여중'
        ELSE '대여 가능'
    -- 케이스 종료 --
    END AS AVAILABILITY
FROM CAR_RENTAL_COMPANY_RENTAL_HISTORY
GROUP BY CAR_ID
-- 자동차 ID 기준 내림차순 --
ORDER BY CAR_ID DESC;