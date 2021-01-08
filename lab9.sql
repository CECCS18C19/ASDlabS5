use sys;
#1 
CREATE TABLE Employee(
    code CHAR(6) PRIMARY KEY,
    name VARCHAR(80),
    dob date,
    designation VARCHAR(100),
    salary FLOAT
);
INSERT INTO Employee (code, name, dob, designation, salary)
VALUES
('gm0121','Monica','2000-10-05','General Manager',50000.25),
('pm2918','Phoebe','1998-11-15','Product Manager',50000.50),
('cl0123','Joey','1992-02-06','Clerk',25000),
('cl1234','Chandler','2001-02-05','Clerk',15000.75);

#2
SELECT * FROM Employee ORDER BY name DESC

#3
CREATE TABLE Deposit(
	BAccNo INT PRIMARY KEY NOT NULL,
    branch_name CHAR(20),
    Amount DECIMAL(7,2) NOT NULL
    );
INSERT INTO Deposit(BAccNo,branch_name,Amount)
VALUES
(10023,'Calicut',50000.25),
(19302,'Thrissur',60000.50),
(10123,'Kannur',25000),
(11123,'Calicut',45000),
(12345,'Calicut',75000.75);

#4
SELECT branch_name,COUNT(BAccNo),SUM(Amount)
FROM Deposit GROUP BY branch_name;