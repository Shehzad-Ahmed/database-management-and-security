data = [
  {
    "model": "STUDENTS",
    "columns": ["STUDENT_ID", "NAME", "GENDER", "COMPANY_NAME"],
    "data": [
      [1, "John Wick", "Male", "Exxon"],
      [2, "Shariq Asadi", "Male", "Kodak"],
      [3, "Sarmad Sattar", "Male", "Xerox"],
      [4, "Abdullah Jabbar", "Male", "Microsoft"],
      [5, "Javeria Ashraf", "Female", "Unilever"],
      [6, "Allison Muller", "Female", "Procter and Gamble"],
      [7, "Shirley Chan", "Female", "Acterna Corp."],
      [8, "Micheal Chan", "Male", "Adobe Systems Incorporated"],
    ]
  },
  {
    "model": "PAYMENT_DETAILS",
    "columns": ["CARD_NO", "STUDENT_ID"],
    "data": [
      ["1001 1001 1001 1001", 1],
      ["2001 2001 2001 2001", 2],
      ["3001 3001 3001 3001", 3],
      ["4001 4001 4001 4001", 4],
      ["5001 5001 5001 5001", 5],
      ["6001 6001 6001 6001", 6],
      ["7001 7001 7001 7001", 7],
      ["7002 7002 7002 7002", 7],
    ]
  },
  {
    "model": "COURSES",
    "columns": ["COURSE_ID", "TITLE", "DURATION", "COST"],
    "data": [
      [1, "ITIL", 3, 300],
      [2, "PMP", 2, 500],
      [3, "CCSP", 1, 900],
      [4, "CISM", 4, 1100],
      [5, "CCNP", 2, 1500],
      [6, "CEH", 5, 2000],
    ]
  },
  {
    "model": "INSTRUCTORS",
    "columns": ["INSTRUCTOR_ID", "NAME"],
    "data": [
      [1, "Mohammad Khan"],
      [2, "Rich Brady"],
      [3, "Paul Wolkie"],
    ]
  },
  {
    "model": "OFFERINGS",
    "columns": ["OFFERING_ID", "LOCATION", "START_DATE", "INSTRUCTOR_ID", "COURSE_ID"],
    "data": [
      [1, "LONDON", "17-DEC-20", 1, 4], # COMPLETED OFFERING
      [2, "MANCHESTER", "23-NOV-22", 2, 2], # IN-PROGRESS
      [3, "STOKE-ON-TRENT", "01-FEB-23", 2, 3], # YET TO RUN BUT NO ENROLLMENTS
      [4, "BIRMINGHAM", "23-OCT-20", 3, 1], # COMPLETED
      [5, "LONDON", "25-JAN-2023", 1, 1], # YET TO RUN
    ]
  },
  {
    "model": "ENROLLMENTS",
    "columns": ["ENROLLMENT_ID", "STUDENT_ID", "OFFERING_ID", "EVALUATION"],
    "data": [
      [1, 2, 1, 3],  # STUDENT 2 HAS FINISHED COURSE 4 WITH DURATION 4 DAYS.
      [2, 1, 2, None], # STUDENT 1 IS CURRENTLY DOING COURSE 2.
      [3, 4, 4, 5], # STUDENT 4 HAS FINISHED COURSE 1 WITH DURATION 3 DAYS.
      [4, 3, 5, None], # STUDENT 3 HAS REGISTERED BUT THE COURSE NOT STARTED.
    ]
  },
  {
    "model": "ATTENDANCE",
    "columns": ["ENROLLMENT_ID", "ATTENDANCE"],
    "data": [
      [1, "17-DEC-20"],
      [1, "18-DEC-20"],
      [1, "19-DEC-20"],
      [1, "20-DEC-20"],

      [4, "23-OCT-20"],
      [4, "24-OCT-20"],
      [4, "25-OCT-20"],
    ]
  },
  {
    "model": "EXAMINATIONS",
    "columns": ["EXAM_ID", "ENROLLMENT_ID", "PASS"],
    "data": [
      [1, 1, "20-DEC-20"],
      [2, 4, "25-OCT-20"],
    ]
  }
]