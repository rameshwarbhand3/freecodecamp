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
 INSERT INTO Bonus(Worker_ref_id,Bonus_Amount,Bonus_Date)VALUES
 (001,5000,'16-02-20'),(002,3000,'16-06-11'),(003,4000,'16-02-2020'),
 (004,4500,'16-02-20'),(005,3500,'16-06-11');

 //create table Title.
 CREATE TABLE Title(
    Worker_ref_id INT,
    Worker_Title CHAR(25);
    AFFECTED FROM DATETIME,
    FOREIGN KEY(Worker_ref_id) REFERENCES Worker(Worker_id) ON DELETE CASCADE
 );

 //Insert into Title  table
 INSERT INTO Title(Worker_ref_id,Worker_Title,AFFECTED_FROM)VALUES
 (001,'Manager','2016-02-20 00:00:00'),
 (002,'Executive','2010-06-11 00:00:00'),
 (008,'Executive','2016-06-11 00:00:00'),
 (005,'Manager','2016-06-11 00:00:00'),
 (004,'Asst.Manager','2016-06-11 00:00:00'),
 (007,'Executive','2016-06-11 00:00:00'),
 (006,'Lead','2016-06-11 00:00:00'),
 (003,'Lead','2016-06-11 00:00:00');