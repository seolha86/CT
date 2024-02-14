-- 코드를 입력하세요
-- PATIENT, DOCTOR 그리고 APPOINTMENT 테이블에서 2022년 4월 13일 취소되지 않은 흉부외과(CS) 진료 예약 내역을 조회하는 SQL문을 작성해주세요. 진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목이 출력되도록 작성해주세요. 결과는 진료예약일시를 기준으로 오름차순 정렬해주세요.

SELECT      A.APNT_NO, P.PT_NAME, PT_NO, A.MCDP_CD, D.DR_NAME, A.APNT_YMD
FROM        PATIENT P
JOIN        APPOINTMENT A USING(PT_NO)
JOIN        DOCTOR D ON A.MDDR_ID = D.DR_ID
WHERE       A.APNT_CNCL_YN = 'N' 
            AND A.APNT_CNCL_YN IS NOT NULL
            AND A.MCDP_CD = 'CS'
            AND TO_CHAR(A.APNT_YMD, 'YYYYMMDD') = '20220413'
ORDER BY    A.APNT_YMD