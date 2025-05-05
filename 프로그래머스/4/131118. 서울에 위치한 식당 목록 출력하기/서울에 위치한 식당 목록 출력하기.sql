-- ID, 이름, 종류, 즐겨찾기, 주소, 평균 점수 조회 --
SELECT I.REST_ID, I.REST_NAME, I.FOOD_TYPE,
        I.FAVORITES, I.ADDRESS,
        -- 평균점수는 셋째 자리에서 반올림 --
        ROUND(AVG(R.REVIEW_SCORE), 2) AS SCORE
FROM REST_INFO I
JOIN REST_REVIEW R
ON I.REST_ID = R.REST_ID
-- 서울에 위치한 --
WHERE ADDRESS LIKE '서울%'
-- GROUP BY 묶어주기 --
GROUP BY I.REST_ID
-- 평균점수 내림차순, 즐겨찾기 내림차순 --
ORDER BY SCORE DESC, I.FAVORITES DESC;