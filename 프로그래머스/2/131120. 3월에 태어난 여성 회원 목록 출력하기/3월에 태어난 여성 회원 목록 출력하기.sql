-- ID, 이름, 성별, 생년월일 조회 --
SELECT MEMBER_ID, MEMBER_NAME, GENDER,
        DATE_FORMAT(DATE_OF_BIRTH, '%Y-%m-%d') AS DATE_OF_BIRTH
FROM MEMBER_PROFILE
-- 생일이 3월인 --
WHERE MONTH(DATE_OF_BIRTH) = 03
    -- 성별이 여자 --
    AND GENDER = 'W'
    -- 전화번호는 IS NOT NULL --
    AND TLNO IS NOT NULL
-- ID 기준 오름차순 --
ORDER BY MEMBER_ID;