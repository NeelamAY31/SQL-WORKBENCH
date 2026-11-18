CREATE DATABASE quastech;

CREATE TABLE Students (
    student_id VARCHAR(10) PRIMARY KEY,
    student_name VARCHAR(30),
    student_email VARCHAR(50),
    student_city VARCHAR(20),
    student_age INT,
    department_name VARCHAR(30),
    course_name VARCHAR(30)
);

INSERT INTO Students
(student_id, student_name, student_email, student_city, student_age, department_name, course_name)
VALUES
('STU001','Rahul Sharma','rahul@gmail.com','Mumbai',21,'Computer Science','JAVA'),
('STU002','Priya Patel','priya@gmail.com','Pune',20,'Information Technology','PYTHON'),
('STU003','Amit Verma','amit@gmail.com','Mumbai',22,'Electronics','SQL'),
('STU004','Neha Singh','neha@gmail.com','Delhi',21,'Mechanical','Web Development'),
('STU005','Rohan Gupta','rohan@gmail.com','Thane',23,'Civil','Embedded Systems'),
('STU006','Sneha Joshi','sneha@gmail.com','Nashik',20,'Electrical','Digital Electronics'),
('STU007','Karan Mehta','karan@gmail.com','Mumbai',22,'Data Science','Mechanical Design'),
('STU008','Pooja Shah','pooja@gmail.com','Surat',21,'Artificial Intelligence','Structural Engineering'),
('STU009','Vikas Yadav','vikas@gmail.com','Mumbai',24,'Cyber Security','Electrical Systems'),
('STU010','Anjali Desai','anjali@gmail.com','Pune',20,'Commerce','Data Analytics'),
('STU011','Arjun Kumar','arjun@gmail.com','Delhi',22,'Mathematics','Machine Learning'),
('STU012','Kavya Nair','kavya@gmail.com','Mumbai',21,'Physics','Cyber Security'),
('STU013','Sahil Khan','sahil@gmail.com','Thane',23,'Chemistry','Accounting'),
('STU014','Meera Iyer','meera@gmail.com','Navi Mumbai',20,'Biotechnology','Advanced Mathematics'),
('STU015','Aditya Rao','aditya@gmail.com','Mumbai',22,'Management','Applied Physics');

select * from Students;

CREATE TABLE Departments (
    department_id VARCHAR(10) PRIMARY KEY,
    department_name VARCHAR(30),
    hod VARCHAR(30)
);

INSERT INTO Departments
(department_id, department_name, hod)
VALUES
('DEP001','Computer Science','Dr. Mehta'),
('DEP002','Information Technology','Dr. Sharma'),
('DEP003','Electronics','Dr. Patil'),
('DEP004','Mechanical','Dr. Joshi'),
('DEP005','Civil','Dr. Desai'),
('DEP006','Electrical','Dr. Kulkarni'),
('DEP007','Data Science','Dr. Rao'),
('DEP008','Artificial Intelligence','Dr. Shah'),
('DEP009','Cyber Security','Dr. Khan'),
('DEP010','Commerce','Dr. Iyer'),
('DEP011','Mathematics','Dr. Verma'),
('DEP012','Physics','Dr. Gupta'),
('DEP013','Chemistry','Dr. Singh'),
('DEP014','Biotechnology','Dr. Nair'),
('DEP015','Management','Dr. Kapoor');

CREATE TABLE Courses (
    course_id VARCHAR(10) PRIMARY KEY,
    department_id VARCHAR(10),
    course_name VARCHAR(30)
);

INSERT INTO Courses
(course_id, department_id, course_name)
VALUES
('CRS001','DEP001','Java'),
('CRS002','DEP002','Python'),
('CRS003','DEP003','SQL'),
('CRS004','DEP004','Web Development'),
('CRS005','DEP005','Embedded Systems'),
('CRS006','DEP006','Digital Electronics'),
('CRS007','DEP007','Mechanical Design'),
('CRS008','DEP008','Structural Engineering'),
('CRS009','DEP009','Electrical Systems'),
('CRS010','DEP010','Data Analytics'),
('CRS011','DEP011','Machine Learning'),
('CRS012','DEP012','Cyber Security'),
('CRS013','DEP013','Accounting'),
('CRS014','DEP014','Advanced Mathematics'),
('CRS015','DEP015','Applied Physics');

CREATE TABLE Results (
    result_id VARCHAR(10) PRIMARY KEY,
    student_id VARCHAR(10),
    Math INT,
    Python INT,
    DBMS INT,
    ST INT,
    DS INT
);

INSERT INTO Results
(result_id, student_id, Math, Python, DBMS, ST, DS)
VALUES
('RES001','STU001',78,85,82,80,75),
('RES002','STU002',88,79,91,85,89),
('RES003','STU003',72,90,86,78,81),
('RES004','STU004',81,76,84,88,79),
('RES005','STU005',69,82,77,75,80),
('RES006','STU006',92,87,94,90,91),
('RES007','STU007',75,73,80,82,77),
('RES008','STU008',86,91,88,84,90),
('RES009','STU009',65,79,74,70,76),
('RES010','STU010',90,85,89,92,88),
('RES011','STU011',83,88,85,81,86),
('RES012','STU012',77,93,90,87,89),
('RES013','STU013',71,68,76,74,72),
('RES014','STU014',89,84,92,90,87),
('RES015','STU015',80,86,83,79,85);

CREATE TABLE Faculty (
    department_id VARCHAR(10),
    faculty_id VARCHAR(10) PRIMARY KEY,
    course_id VARCHAR(10),
    faculty_name VARCHAR(30)
);

INSERT INTO Faculty
(department_id, faculty_id, course_id, faculty_name)
VALUES
('DEP001','FAC001','CRS001','Amit Mehta'),
('DEP002','FAC002','CRS002','Priya Sharma'),
('DEP003','FAC003','CRS003','Rahul Patil'),
('DEP004','FAC004','CRS004','Sneha Joshi'),
('DEP005','FAC005','CRS005','Rakesh Desai'),
('DEP006','FAC006','CRS006','Neha Kulkarni'),
('DEP007','FAC007','CRS007','Vivek Rao'),
('DEP008','FAC008','CRS008','Pooja Shah'),
('DEP009','FAC009','CRS009','Imran Khan'),
('DEP010','FAC010','CRS010','Meera Iyer'),
('DEP011','FAC011','CRS011','Anil Verma'),
('DEP012','FAC012','CRS012','Kiran Gupta'),
('DEP013','FAC013','CRS013','Sonal Singh'),
('DEP014','FAC014','CRS014','Arun Nair'),
('DEP015','FAC015','CRS015','Raj Kapoor');