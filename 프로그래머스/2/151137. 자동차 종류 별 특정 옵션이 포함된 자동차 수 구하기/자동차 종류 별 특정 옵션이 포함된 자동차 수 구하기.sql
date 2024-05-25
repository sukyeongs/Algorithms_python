-- 통풍시트, 열선시트, 가죽시트 중 하나 이상의 옵션이 포함된 자동차
-- 자동차 종류 별로 몇 대인지 출력
-- 자동차 수에 대한 컬럼명 CARS, 자동차 종류를 기준으로 오름차순 정렬
SELECT CAR_TYPE, COUNT(*) AS CARS
FROM CAR_RENTAL_COMPANY_CAR
WHERE OPTIONS LIKE "%가죽시트%" or OPTIONS LIKE "%열선시트%" or OPTIONS LIKE "%통풍시트%"
GROUP BY CAR_TYPE
ORDER BY CAR_TYPE