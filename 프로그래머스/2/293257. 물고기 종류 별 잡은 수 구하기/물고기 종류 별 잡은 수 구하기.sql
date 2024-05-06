-- 코드를 작성해주세요
-- FISH_NAME_INFO에서 물고기의 종류 별 물고기의 이름과 잡은 수를 출력하는 SQL문을 작성해주세요. 물고기의 이름 컬럼명은 FISH_NAME, 잡은 수 컬럼명은 FISH_COUNT로 해주세요. 결과는 잡은 수 기준으로 내림차순 정렬해주세요.

SELECT  COUNT(*) AS FISH_COUNT
        , FISH_NAME
FROM    FISH_INFO
JOIN    FISH_NAME_INFO USING(FISH_TYPE)
GROUP BY    FISH_NAME
ORDER BY    1 DESC