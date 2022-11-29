-- Question 4 (a)
-- Find details of all courses running in London.
SELECT DISTINCT c.COURSE_ID as "COURSE ID",
                c.TITLE as "COURSE TITLE",
                c.DURATION as "TOTAL DURATION (DAYS)",
                c.COST AS "TOTAL COST"
        FROM COURSES c INNER JOIN OFFERINGS o ON c.COURSE_ID=o.COURSE_ID
        WHERE o.LOCATION='LONDON';

-- Question 4 (b)
-- b.	Find the course that runs the greatest number of times.
SELECT  count(o.course_id) as TIMES,
        o.COURSE_ID as "COURSE ID",
        c.TITLE as "COURSE TITLE"
        FROM OFFERINGS o INNER JOIN COURSES c ON o.COURSE_ID=c.COURSE_ID
        GROUP BY o.COURSE_ID, c.TITLE
        HAVING COUNT(o.course_id)=(SELECT max(count(course_id)) as TIMES
                                    FROM OFFERINGS GROUP BY COURSE_ID
                                    );
-- Question 4 (c)
-- c.	Find the total number of attendees for each course.
SELECT  c.COURSE_ID AS ID,
        c.TITLE AS TITLE,
        COUNT(e.ENROLLMENT_ID) AS "NUMBER OF ATTENDED STUDENTS"
        FROM
        COURSES c INNER JOIN offerings o ON c.course_id = o.course_id
        INNER JOIN ENROLLMENTS e ON e.offering_id = o.offering_id
        GROUP BY c.COURSE_ID, c.TITLE ORDER BY COUNT(e.ENROLLMENT_ID) DESC;


-- Question 4 (d)
-- d.	Show details of the student names and the titles of the courses that they have attended.
SELECT  s.STUDENT_ID AS "STUDENT ID",
        s.NAME AS "STUDENT NAME",
        c.TITLE AS "COURSE TITLE"
        FROM STUDENTS s
        INNER JOIN ENROLLMENTS e ON s.STUDENT_ID = e.STUDENT_ID
        INNER JOIN OFFERINGS o ON e.OFFERING_ID = o.OFFERING_ID
        INNER JOIN COURSES c ON o.COURSE_ID = c.COURSE_ID;

-- Question 4 (e)
-- e.   List the title and cost of each course
SELECT  TITLE, COST FROM COURSES;

-- Question 4 (f)
-- f.	Add a column to your answer to 4(e) that compares the cost of the course to the average cost i.e.
--      shows the difference between the course cost and the average cost of all courses.
SELECT  TITLE, COST, (COST - (SELECT AVG(COST) FROM COURSES)) AS "AVERAGE DIFFERENCE" FROM COURSES;

-- Question 5
CREATE VIEW COURSE_OFFERINGS AS
            SELECT c.COURSE_ID AS COURSE_ID,
            o.OFFERING_ID AS OFFERING_ID,
            c.TITLE AS TITLE,
            o.LOCATION AS LOCATION,
            o.START_DATE AS START_DATE,
            c.COST AS COST,
            c.DURATION AS DURATION
            FROM COURSES c
            INNER JOIN OFFERINGS o ON c.COURSE_ID = o.COURSE_ID
            WHERE TO_TIMESTAMP(o.START_DATE, 'DD-MM-YY') BETWEEN ADD_MONTHS(SYSTIMESTAMP,-12) AND SYSTIMESTAMP;

SELECT * FROM COURSE_OFFERINGS;

-- Question 5 (b)

UPDATE COURSE_OFFERINGS SET COST=700 WHERE COURSE_ID=2;
-- Since the rows from COURSES table are repeatable in COURSE_OFFERINGS view,
-- means a course can be offered multiple times. Therefore all COLUMNS from COURSES are non-preserved in
-- COURSE_OFFERINGS view, that is why the above UPDATE operation will through error.

UPDATE COURSE_OFFERINGS SET START_DATE='24-NOV-2022' WHERE OFFERING_ID=2;
-- Since the rows from OFFERINGS table are not repeatable in COURSE_OFFERINGS view,
-- means each row in COURSES_OFFERING is mapped to a unique row from OFFERINGS.
-- Therefore all COLUMNS from OFFERINGS are preserved in COURSE_OFFERINGS view,
-- that is why the above UPDATE operation execute successfully.

INSERT INTO COURSE_OFFERINGS (COURSE_ID, OFFERING_ID, TITLE, LOCATION, START_DATE, COST, DURATION)
VALUES (11, 11, 'INTO VIEW', 'STOKEE', '29-NOV-2022', 1100, 4);
-- As discussed in above that COLUMNS from COURSES are non-preserved in COURSE_OFFERINGS view,
-- therefore INSERT operation will through an error on COURSE_OFFERINGS view.

DELETE FROM COURSE_OFFERINGS;
-- As the COURSES COURSE_ID is used as foreign key in OFFERINGS TABLE,
-- therefore DELETE operation will through an error on COURSE_OFFERINGS view.

ROLLBACK; -- To rollback the changes made by above operations on COURSE_OFFERINGS.

-- Question 5 (c).
--(i)
GRANT SELECT ON COURSE_OFFERINGS TO M034288MA;
SELECT * FROM M034288M.COURSES_OFFERINGS;
--(ii)
GRANT UPDATE ON COURSE_OFFERINGS TO M034288MA;
UPDATE M034288M.COURSE_OFFERINGS SET START_DATE='19-DEC-2022' WHERE OFFERING_ID=2;

--(iii)
REVOKE SELECT ON COURSE_OFFERINGS FROM M034288MA;
REVOKE UPDATE ON COURSE_OFFERINGS FROM M034288MA;



-- DROP ALL TABLES
DROP TABLE ATTENDANCE;
DROP TABLE PAYMENT_DETAILS;
DROP TABLE EXAMINATIONS;
DROP TABLE ENROLLMENTS;
DROP TABLE OFFERINGS;
DROP TABLE INSTRUCTORS;
DROP TABLE COURSES;
DROP TABLE STUDENTS;
