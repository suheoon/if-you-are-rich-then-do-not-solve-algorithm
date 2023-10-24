/**

동물 두 마리의 아이디와 이름을 조회
[조건] 입양을 간 동물
[조건] 보호기간이 가장 길었던 동물
[정렬] 보호 기간 기준 DESC

**/

SELECT AI.ANIMAL_ID, AI.NAME
FROM ANIMAL_INS AS AI JOIN ANIMAL_OUTS AS AO ON AI.ANIMAL_ID = AO.ANIMAL_ID
ORDER BY DATEDIFF(AO.DATETIME, AI.DATETIME) DESC
LIMIT 2
