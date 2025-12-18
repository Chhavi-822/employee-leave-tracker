-- Employee Leave Management Database Schema
CREATE DATABASE LeaveTracker;
USE LeaveTracker;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    dept VARCHAR(30),
    email VARCHAR(50)
);

CREATE TABLE Leaves (
    leave_id INT PRIMARY KEY,
    emp_id INT,
    start_date DATE,
    end_date DATE,
    reason VARCHAR(100),
    status ENUM('Pending','Approved','Rejected'),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

-- Sample Data
INSERT INTO Employees VALUES 
(1,'Rahul Sharma','IT','rahul@company.com'),
(2,'Priya Singh','HR','priya@company.com'),
(3,'Amit Kumar','Finance','amit@company.com');

INSERT INTO Leaves VALUES 
(1,1,'2025-12-20','2025-12-22','Vacation','Pending'),
(2,2,'2025-12-25','2025-12-25','Sick','Approved'),
(3,1,'2025-12-28','2025-12-30','Personal','Pending');
