-- START OF DATA FOR TABLE STUDENTS 

INSERT INTO STUDENTS (STUDENT_ID,NAME,GENDER,COMPANY_NAME)
VALUES (1,'John Wick','Male','Exxon');
INSERT INTO STUDENTS (STUDENT_ID,NAME,GENDER,COMPANY_NAME)
VALUES (2,'Shariq Asadi','Male','Kodak');
INSERT INTO STUDENTS (STUDENT_ID,NAME,GENDER,COMPANY_NAME)
VALUES (3,'Sarmad Sattar','Male','Xerox');
INSERT INTO STUDENTS (STUDENT_ID,NAME,GENDER,COMPANY_NAME)
VALUES (4,'Abdullah Jabbar','Male','Microsoft');
INSERT INTO STUDENTS (STUDENT_ID,NAME,GENDER,COMPANY_NAME)
VALUES (5,'Javeria Ashraf','Female','Unilever');
INSERT INTO STUDENTS (STUDENT_ID,NAME,GENDER,COMPANY_NAME)
VALUES (6,'Allison Muller','Female','Procter and Gamble');
INSERT INTO STUDENTS (STUDENT_ID,NAME,GENDER,COMPANY_NAME)
VALUES (7,'Shirley Chan','Female','Acterna Corp.');
INSERT INTO STUDENTS (STUDENT_ID,NAME,GENDER,COMPANY_NAME)
VALUES (8,'Micheal Chan','Male','Adobe Systems Incorporated');

-- END OF DATA FOR TABLE STUDENTS 

-- START OF DATA FOR TABLE PAYMENT_DETAILS 

INSERT INTO PAYMENT_DETAILS (CARD_NO,STUDENT_ID)
VALUES ('1001 1001 1001 1001',1);
INSERT INTO PAYMENT_DETAILS (CARD_NO,STUDENT_ID)
VALUES ('2001 2001 2001 2001',2);
INSERT INTO PAYMENT_DETAILS (CARD_NO,STUDENT_ID)
VALUES ('3001 3001 3001 3001',3);
INSERT INTO PAYMENT_DETAILS (CARD_NO,STUDENT_ID)
VALUES ('4001 4001 4001 4001',4);
INSERT INTO PAYMENT_DETAILS (CARD_NO,STUDENT_ID)
VALUES ('5001 5001 5001 5001',5);
INSERT INTO PAYMENT_DETAILS (CARD_NO,STUDENT_ID)
VALUES ('6001 6001 6001 6001',6);
INSERT INTO PAYMENT_DETAILS (CARD_NO,STUDENT_ID)
VALUES ('7001 7001 7001 7001',7);
INSERT INTO PAYMENT_DETAILS (CARD_NO,STUDENT_ID)
VALUES ('7002 7002 7002 7002',7);

-- END OF DATA FOR TABLE PAYMENT_DETAILS 

-- START OF DATA FOR TABLE COURSES 

INSERT INTO COURSES (COURSE_ID,TITLE,DURATION,COST)
VALUES (1,'ITIL',3,300);
INSERT INTO COURSES (COURSE_ID,TITLE,DURATION,COST)
VALUES (2,'PMP',2,500);
INSERT INTO COURSES (COURSE_ID,TITLE,DURATION,COST)
VALUES (3,'CCSP',1,900);
INSERT INTO COURSES (COURSE_ID,TITLE,DURATION,COST)
VALUES (4,'CISM',4,1100);
INSERT INTO COURSES (COURSE_ID,TITLE,DURATION,COST)
VALUES (5,'CCNP',2,1500);
INSERT INTO COURSES (COURSE_ID,TITLE,DURATION,COST)
VALUES (6,'CEH',5,2000);

-- END OF DATA FOR TABLE COURSES 

-- START OF DATA FOR TABLE INSTRUCTORS 

INSERT INTO INSTRUCTORS (INSTRUCTOR_ID,NAME)
VALUES (1,'Mohammad Khan');
INSERT INTO INSTRUCTORS (INSTRUCTOR_ID,NAME)
VALUES (2,'Rich Brady');
INSERT INTO INSTRUCTORS (INSTRUCTOR_ID,NAME)
VALUES (3,'Paul Wolkie');

-- END OF DATA FOR TABLE INSTRUCTORS 

-- START OF DATA FOR TABLE OFFERINGS 

INSERT INTO OFFERINGS (OFFERING_ID,LOCATION,START_DATE,INSTRUCTOR_ID,COURSE_ID)
VALUES (1,'LONDON','17-DEC-20',1,4);
INSERT INTO OFFERINGS (OFFERING_ID,LOCATION,START_DATE,INSTRUCTOR_ID,COURSE_ID)
VALUES (2,'MANCHESTER','23-NOV-22',2,2);
INSERT INTO OFFERINGS (OFFERING_ID,LOCATION,START_DATE,INSTRUCTOR_ID,COURSE_ID)
VALUES (3,'STOKE-ON-TRENT','01-FEB-23',2,3);
INSERT INTO OFFERINGS (OFFERING_ID,LOCATION,START_DATE,INSTRUCTOR_ID,COURSE_ID)
VALUES (4,'BIRMINGHAM','23-OCT-20',3,1);
INSERT INTO OFFERINGS (OFFERING_ID,LOCATION,START_DATE,INSTRUCTOR_ID,COURSE_ID)
VALUES (5,'LONDON','25-JAN-2023',1,1);

-- END OF DATA FOR TABLE OFFERINGS 

-- START OF DATA FOR TABLE ENROLLMENTS 

INSERT INTO ENROLLMENTS (ENROLLMENT_ID,STUDENT_ID,OFFERING_ID,EVALUATION)
VALUES (1,2,1,3);
INSERT INTO ENROLLMENTS (ENROLLMENT_ID,STUDENT_ID,OFFERING_ID,EVALUATION)
VALUES (2,1,2,NULL);
INSERT INTO ENROLLMENTS (ENROLLMENT_ID,STUDENT_ID,OFFERING_ID,EVALUATION)
VALUES (3,4,4,5);
INSERT INTO ENROLLMENTS (ENROLLMENT_ID,STUDENT_ID,OFFERING_ID,EVALUATION)
VALUES (4,3,5,NULL);

-- END OF DATA FOR TABLE ENROLLMENTS 

-- START OF DATA FOR TABLE ATTENDANCE 

INSERT INTO ATTENDANCE (ENROLLMENT_ID,ATTENDANCE)
VALUES (1,'17-DEC-20');
INSERT INTO ATTENDANCE (ENROLLMENT_ID,ATTENDANCE)
VALUES (1,'18-DEC-20');
INSERT INTO ATTENDANCE (ENROLLMENT_ID,ATTENDANCE)
VALUES (1,'19-DEC-20');
INSERT INTO ATTENDANCE (ENROLLMENT_ID,ATTENDANCE)
VALUES (1,'20-DEC-20');
INSERT INTO ATTENDANCE (ENROLLMENT_ID,ATTENDANCE)
VALUES (4,'23-OCT-20');
INSERT INTO ATTENDANCE (ENROLLMENT_ID,ATTENDANCE)
VALUES (4,'24-OCT-20');
INSERT INTO ATTENDANCE (ENROLLMENT_ID,ATTENDANCE)
VALUES (4,'25-OCT-20');

-- END OF DATA FOR TABLE ATTENDANCE 

-- START OF DATA FOR TABLE EXAMINATIONS 

INSERT INTO EXAMINATIONS (EXAM_ID,ENROLLMENT_ID,PASS)
VALUES (1,1,'t');
INSERT INTO EXAMINATIONS (EXAM_ID,ENROLLMENT_ID,PASS)
VALUES (2,4,'t');

-- END OF DATA FOR TABLE EXAMINATIONS 
