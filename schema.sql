--Drop Table Queries
DROP TABLE college_choice;
DROP TABLE student_choice;

-- Create Two Tables
CREATE TABLE student_choice (
  ipedsid INT PRIMARY KEY,
  NAME TEXT,
  ADDRESS TEXT, 
  CITY TEXT,
  STATE TEXT, 
  ZIP INT,
  TELEPHONE VARCHAR, 
  WEBSITE TEXT,
  TYPE INT, 
  STATUS VARCHAR, 
  POPULATION INT, 
  LATITUDE FLOAT, 
  LONGITUDE FLOAT
);

CREATE TABLE college_choice (
  IPEDSID INT PRIMARY KEY,
  ADM_RATE FLOAT,
  ACTCMMID FLOAT,
  SAT_AVG FLOAT,
  TUITIONFEE_IN FLOAT ,
  TUITIONFEE_OUT FLOAT
);


-- Query to check successful load
SELECT * FROM college_choice ;

SELECT * FROM student_choice ;

--Run following after both tables are loaded into DB

-- Join tables on college choice primery key 
SELECT student_choice.IPEDSID, student_choice.NAME, student_choice.ADDRESS, student_choice.CITY, student_choice.STATE, student_choice.TELEPHONE,student_choice.WEBSITE, student_choice.TYPE, student_choice.STATUS, student_choice.POPULATION, student_choice.LATITUDE, student_choice.LONGITUDE, college_choice.ADM_RATE, college_choice.ACTCMMID, college_choice.SAT_AVG, college_choice.TUITIONFEE_IN, college_choice.TUITIONFEE_OUT
FROM student_choice
INNER JOIN college_choice
ON student_choice.IPEDSID = college_choice.IPEDSID;

--Alternative join query
SELECT *
FROM student_choice
INNER JOIN college_choice
ON college_choice.IPEDSID = student_choice.IPEDSID;
