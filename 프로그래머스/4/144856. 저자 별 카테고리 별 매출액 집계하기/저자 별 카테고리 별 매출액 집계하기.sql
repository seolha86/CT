-- 코드를 입력하세요
-- 2022년 1월의 도서 판매 데이터를 기준으로 저자 별, 카테고리 별 매출액(TOTAL_SALES = 판매량 * 판매가) 을 구하여, 저자 ID(AUTHOR_ID), 저자명(AUTHOR_NAME), 카테고리(CATEGORY), 매출액(SALES) 리스트를 출력하는 SQL문을 작성해주세요.
-- 결과는 저자 ID를 오름차순으로, 저자 ID가 같다면 카테고리를 내림차순 정렬해주세요.
SELECT      AUTHOR_ID, AUTHOR_NAME, CATEGORY, SUM(SALES * PRICE) AS TOTAL_SALES
FROM        BOOK_SALES BS
JOIN        BOOK B      USING(BOOK_ID)
JOIN        AUTHOR A    USING(AUTHOR_ID)
WHERE       TO_CHAR(SALES_DATE, 'MM') = '01'
GROUP BY    AUTHOR_ID, AUTHOR_NAME, CATEGORY
ORDER BY    1, 3 DESC