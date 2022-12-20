//How to create database//
CREATE DATABASE ORG;
SHOW DATABASES;
USE ORG;

//create table in database.
CREATE TABLE Worker(
    Worker_id INT NOT NULL PRIMARY KEY AUTO_INCREEMENT,
    First_Name CHAR(20),
    Last_Name CHAR(20),
    Salary INT(15),
    Joining_date DATETIME,
    Department CHAR(25);
);

//Insert data into Worker table.
INSERT INTO Worker(Worker_id,First_Name,Last_Name, Salary,Joining_date,Department)VALUES
(001,'Monika','Arora',100000,'14-02-20 09.00.00','Hr'),
(002,'Niharika','Verma',80000,'14-06-11 09.00.00','Admin'),
(003,'Vishal','Singhal',300000,'14-02-20 09.00.00','Hr'),
(004,'Amitabh','Singh',500000,'14-02-20 09.00.00','Admin'),
(005,'Vivek','Bhati',500000,'14-06-11 09.00.00','Admin'),
(006,'Vipul','Diwan',200000,'14-06-11 09.00.00','Account'),
(007,'Satish','Kumar',75000,'14-01-20 09.00.00','Account'),
(008,'Geetika','Chauhan',90000,'14-04-11 09.00.00','Admin');

//create another database.
CREATE TABLE Bonus(
    Worker_ref_id INT,
    Bonus_Amount INT(10),
    Bonus_Date DATETIME,
    FOREIGN KEY(Worker_id)REFERENCES Worker (Worker_id)ON DELETE CASCADE
);
 
 //Insert data into Bonus table.
 INSERT INTO Bonus()