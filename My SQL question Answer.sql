#Question Number_01
SELECT upper(FIRST_NAME) as STUDENT_NAME from student_table;

#Question Number_02
SELECT DISTINCT MAJOR from student_table;

#Question_03
SELECT SUBSTRING(FIRST_NAME,1,3)FROM student_table;

#Question_04
SELECT INSTR(LOWER(FIRST_NAME),'a')FROM student_table WHERE FIRST_NAME='Shivansh';

#Question_05
SELECT DISTINCT MAJOR,LENGTH(MAJOR) FROM student_table;

#Question_06
SELECT REPLACE(FIRST_NAME,'a','A')FROM STUDENT_TABLE;

#Question_07
SELECT CONCAT('FIRST_NAME','LAST_NAME')AS COMPLETE_NAME FROM student_table;

#Question_08
SELECT*FROM student_table ORDER BY FIRST_NAME,MAJOR DESC;

#Question_09
SELECT*from student_table WHERE FIRST_NAME IN ('PREM','SHIVANSH');

#Question-10
SELECT*FROM student_table WHERE FIRST_NAME NOT IN ('PREM','SHIVANSH');

#Question_11
SELECT*FROM student_table WHERE FIRST_NAME LIKE '%';

#Question_12
SELECT*FROM student_table WHERE FIRST_NAME LIKE'_a';

#Question_13
SELECT*FROM student_table WHERE GPA BETWEEN 9.00 AND 9.99;

#Question_14
SELECT Major, count(*) as TOTAL_COUNT FROM student_table WHERE MAJOR='COMPUTER SCIENCE';

#Question_15
SELECT concat('FIRST_NAME','LAST_NAME') AS FULL_NAME FROM student_table WHERE GPA BETWEEN 8.5 AND 9.5;

#Question_16
SELECT MAJOR,count(MAJOR) FROM student_table group by MAJOR ORDER BY COUNT(MAJOR) DESC;

#Question-18
SELECT*FROM student_table WHERE STUDENT_ID% 2!=0;

#Question_19
SELECT*FROM student_table WHERE STUDENT_ID %2=0;

#Question_20
SELECT student_table.FIRST_NAME,student_table.LAST_NAME,
scholarship_table.SCHOLARSHIP_AMOUNT,
scholarship_table.SCHOLARSHIP_DATE FROM student_table LEFT JOIN
scholarship_table ON student_table.STUDENT_ID;

#Question Number-21:
SELECT*FROM student_table ORDER BY GPA DESC LIMIT 5;

#Question Number-22:
SELECT*FROM student_table ORDER BY GPA DESC LIMIT 4,1;

#Question Number-23:
SELECT*FROM student_table s1 WHERE 4=(SELECT COUNT(DISTINCT (s2.GPA))FROM student_table s2 WHERE s2.GPA>=s1.GPA);

#Question Number-24:
SELECT s1.*FROM student_table s1, student_table s2 WHERE s1.GPA=s2.GPA AND s1.STUDENT_ID !=s2.STUDENT_ID;

#Question Number-25:
SELECT MAX(GPA) FROM student_table WHERE GPA NOT IN(SELECT MAX(GPA) FROM student_table);

#Question Number-26:
SELECT*FROM student_table UNION ALL SELECT*FROM student_table ORDER BY STUDENT_ID;

#Question Number-27:
SELECT STUDENT_ID FROM student_table WHERE STUDENT_ID NOT IN(SELECT STUDENT_REF_ID FROM scholarship_table);

#Question Number-29:
SELECT MAJOR, COUNT(MAJOR) AS MAJOR_COUNT FROM student_table GROUP BY MAJOR HAVING COUNT(MAJOR) <4;

#Question Number-30:
SELECT MAJOR, COUNT(MAJOR) AS ALL_MAJOR FROM student_table GROUP BY MAJOR;

#Question Number-31:
SELECT*FROM student_table WHERE STUDENT_ID=(SELECT MAX(STUDENT_ID) FROM student_table);

#Question Number-32:
SELECT*FROM student_table WHERE STUDENT_ID=(SELECT MIN(STUDENT_ID) FROM student_table);

#Question Number-33:
SELECT*FROM (SELECT*FROM student_table ORDER BY STUDENT_ID DESC LIMIT 5) AS subquery ORDER BY STUDENT_ID;

#Question Number-34:
SELECT DISTINCT GPA FROM student_table S1 WHERE 3>=(SELECT COUNT(DISTINCT GPA) FROM student_table S2 WHERE S1.GPA<=S2.GPA) ORDER BY S1.GPA DESC;

#Question Number-35:
SELECT DISTINCT GPA FROM student_table S1 WHERE 3>= (SELECT COUNT(DISTINCT GPA) FROM student_table S2 WHERE S1.GPA >= S2.GPA) ORDER BY S1.GPA;


#Question Number-37:
SELECT MAJOR, MAX(GPA) as MAXGPA FROM student_table GROUP BY MAJOR;

#Question Number-38:
SELECT FIRST_NAME, GPA FROM student_table WHERE GPA=(SELECT MAX(GPA) FROM student_table);


#Question Number-40:
CREATE TABLE Clone_Table AS SELECT*FROM student_table;

#Question Number-41:
UPDATE student_table SET GPA = 7.5 WHERE MAJOR='Computer_Science';

#Question Number-42:
SELECT MAJOR, AVG(GPA) AS AVERAGE_GPA FROM student_table GROUP BY MAJOR;

#Question Number-43:
SELECT*FROM student_table ORDER BY GPA DESC LIMIT 3;

#Question Number-44:
SELECT MAJOR, COUNT(STUDENT_ID) AS HIGH_GPA_COUNT FROM student_table WHERE GPA>7.5 GROUP BY MAJOR;

#Question Number-45:
SELECT*FROM student_table WHERE GPA=(SELECT GPA FROM student_table WHERE STUDENT_ID=201);
