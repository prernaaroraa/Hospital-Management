/*
SQLyog Trial v13.1.8 (64 bit)
MySQL - 8.0.37 : Database - ips
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ips` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `ips`;

/*Table structure for table `account` */

DROP TABLE IF EXISTS `account`;

CREATE TABLE `account` (
  `accno` decimal(10,0) DEFAULT NULL,
  `cname` tinytext,
  `balance` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `account` */

insert  into `account`(`accno`,`cname`,`balance`) values 
(205,'Sohan',150000),
(202,'Raj',158000),
(11,'Manish',12500),
(12,'Satish',15500),
(13,'Sachin',12600),
(14,'sourab',15600);

/*Table structure for table `account1` */

DROP TABLE IF EXISTS `account1`;

CREATE TABLE `account1` (
  `accno` decimal(10,0) DEFAULT NULL,
  `cname` tinytext,
  `balance` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `account1` */

insert  into `account1`(`accno`,`cname`,`balance`) values 
(105,'Manish',50000),
(106,'Sachin',20000);

/*Table structure for table `appointment` */

DROP TABLE IF EXISTS `appointment`;

CREATE TABLE `appointment` (
  `Patient_Name` text,
  `Age` decimal(10,0) DEFAULT NULL,
  `Gender` text,
  `Disease` text,
  `Contact` text,
  `Doctor_Name` text,
  `Date` text,
  `Time` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `appointment` */

/*Table structure for table `bill` */

DROP TABLE IF EXISTS `bill`;

CREATE TABLE `bill` (
  `PatientId` text,
  `Patient_Name` text,
  `Room_type` text,
  `Room_Charges` decimal(10,0) DEFAULT NULL,
  `Item` text,
  `Quantity` decimal(10,0) DEFAULT NULL,
  `Item_Rate` decimal(10,0) DEFAULT NULL,
  `Doctor_Charges` decimal(10,0) DEFAULT NULL,
  `Item_Total` decimal(10,0) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bill` */

insert  into `bill`(`PatientId`,`Patient_Name`,`Room_type`,`Room_Charges`,`Item`,`Quantity`,`Item_Rate`,`Doctor_Charges`,`Item_Total`,`Total`) values 
('1','Chetan','General',2000,'Marcos,APC,Trixon,Triost',3,2000,20000,8000,30000),
('2','Ayush Parmar','ICU',2000,'Marcos,APC,Trixon,Triost',3,2000,20000,8000,30000),
('12','Anand','ICU',10000,'abc',2,2000,50000,NULL,NULL),
('12','Anand','ICU',10000,'abc',2,2000,50000,NULL,NULL),
('12','Anand','ICU',10000,'abc',2,2000,50000,NULL,NULL),
('12','Anand','ICU',10000,'abc',2,2000,50000,NULL,NULL),
('12','Anand','ICU',10000,'abc',2,2000,50000,NULL,NULL),
('12','Anand','ICU',10000,'abc',2,2000,50000,NULL,NULL),
('12','Anand','ICU',10000,'abc',2,2000,50000,NULL,NULL);

/*Table structure for table `bill2` */

DROP TABLE IF EXISTS `bill2`;

CREATE TABLE `bill2` (
  `PatientId` text,
  `Patient_Name` text,
  `Room_Type` text,
  `Room_Charge` decimal(10,0) DEFAULT NULL,
  `Item` text,
  `Quantity` decimal(10,0) DEFAULT NULL,
  `Item_Rate` decimal(10,0) DEFAULT NULL,
  `Doctor_Charges` decimal(10,0) DEFAULT NULL,
  `Item_Total` decimal(10,0) DEFAULT NULL,
  `Total` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `bill2` */

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `DoctorId` text,
  `Doctor_Name` text,
  `Mobile_No` text,
  `Age` decimal(10,0) DEFAULT NULL,
  `Gender` text,
  `Specialist` text,
  `Address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `doctor` */

insert  into `doctor`(`DoctorId`,`Doctor_Name`,`Mobile_No`,`Age`,`Gender`,`Specialist`,`Address`) values 
('12','Ravi Chouhan','7459921886',21,'male','Tyfyde','Indore'),
('12','Ravi Chouhan','7459921886',21,'male','Tyfyde','Indore'),
('13','Ravi Chouhan','7459921886',21,'male','Tyfyde','Indore');

/*Table structure for table `employe1` */

DROP TABLE IF EXISTS `employe1`;

CREATE TABLE `employe1` (
  `empno` decimal(10,0) NOT NULL,
  `ename` text,
  `salary` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`empno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employe1` */

insert  into `employe1`(`empno`,`ename`,`salary`) values 
(101,'Sachin',12000),
(102,'Manish',15000);

/*Table structure for table `employee` */

DROP TABLE IF EXISTS `employee`;

CREATE TABLE `employee` (
  `empno` decimal(7,0) DEFAULT NULL,
  `empname` text,
  `salary` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `employee` */

insert  into `employee`(`empno`,`empname`,`salary`) values 
(101,NULL,120000);

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `user` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `login` */

insert  into `login`(`user`,`password`) values 
('Abc','101'),
('xyz','102');

/*Table structure for table `patient` */

DROP TABLE IF EXISTS `patient`;

CREATE TABLE `patient` (
  `PatientId` text,
  `Name` text,
  `Mobile_No` text,
  `Age` decimal(10,0) DEFAULT NULL,
  `Gender` text,
  `Disease` text,
  `Address` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `patient` */

insert  into `patient`(`PatientId`,`Name`,`Mobile_No`,`Age`,`Gender`,`Disease`,`Address`) values 
('11','Sachin','1234567890',21,'male','fever','Indore'),
('13','Pratap','1234567890',21,'male','fever','Dewas'),
('18','Raj','1234456788',21,'male','fever','Dewas'),
(NULL,NULL,'0',0,NULL,NULL,NULL),
(NULL,NULL,'0',0,NULL,NULL,NULL),
(NULL,NULL,'0',0,NULL,NULL,NULL),
(NULL,NULL,'0',0,NULL,NULL,NULL),
(NULL,NULL,'0',0,NULL,NULL,NULL),
(NULL,NULL,'0',0,NULL,NULL,NULL),
('25','Piyush','0123345667',21,'male','fever','Dewas'),
('11','Sajal Gupta','1234567890',21,'male','fever','Dewas'),
('11','Ayush Gupta','1234567890',21,'male','fever','Indore');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `roll` decimal(10,0) DEFAULT NULL,
  `name` tinytext,
  `marks` decimal(50,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `student` */

insert  into `student`(`roll`,`name`,`marks`) values 
(101,'Manish',98),
(102,'Raj',98),
(104,'sachin',95),
(101,'Manish',98),
(102,'Shyam Bihari',88),
(104,'rSajal',-15),
(105,'Sajal Gupta',-10),
(201,'manish',78),
(202,'Sachin',67),
(203,'Raj',78),
(204,'Vedant',78),
(205,'Lokesh',101),
(101,'Manish',98),
(102,'Shyam Bihari',88),
(104,'rSajal',-15),
(105,'Sajal Gupta',-10),
(101,'Manish',98),
(102,'Shyam Bihari',88),
(104,'rSajal',-15),
(105,'Sajal Gupta',-10),
(11,'MANISH JATAV',90),
(100,'Anuj',90),
(12,'Sachin',87),
(103,'Pooja',98),
(101,'radhe Mohan',78),
(102,'Shyam Bihari',88),
(103,'Pooja',10),
(104,'rSajal',-15),
(105,'Sajal Gupta',-10),
(101,'radhe Mohan',78),
(102,'Shyam Bihari',88),
(103,'Pooja',10),
(104,'rSajal',-15),
(105,'Sajal Gupta',-10),
(101,'radhe Mohan',78),
(102,'Shyam Bihari',88),
(103,'Pooja',10),
(104,'rSajal',-15),
(105,'Sajal Gupta',-10),
(101,'radhe Mohan',78),
(102,'Shyam Bihari',88),
(103,'Pooja',10),
(104,'rSajal',-15),
(105,'Sajal Gupta',-10),
(101,'radhe Mohan',78),
(102,'Shyam Bihari',88),
(103,'Pooja',10),
(104,'rSajal',-15),
(105,'Sajal Gupta',-10),
(101,'radhe Mohan',78),
(102,'Shyam Bihari',88),
(103,'Pooja',10),
(104,'rSajal',-15),
(105,'Sajal Gupta',-10),
(19,'shubham',67),
(19,'shubham',67),
(11,'xgh',111),
(11,'xgh',111);

/*Table structure for table `student1` */

DROP TABLE IF EXISTS `student1`;

CREATE TABLE `student1` (
  `Roll` decimal(10,0) DEFAULT NULL,
  `StudentName` text,
  `Marks` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `student1` */

insert  into `student1`(`Roll`,`StudentName`,`Marks`) values 
(101,'MANISH JATAV',99),
(102,'yuvraj',65),
(104,'Shrey',8),
(102,'yuvraj',65),
(103,'yuvraj',78),
(105,'Anukul',90),
(13,'Chandra',98),
(15,'shubham',99),
(16,'Raj',90),
(12,'Sarthak',98),
(13,'Piyush',69),
(9,'SACH',89),
(0,'MANISH JATAV',95),
(114,'mahen',989),
(114,'mahen',989),
(111,'Kausal',98);

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `userinfo` */

insert  into `userinfo`(`username`,`password`) values 
('abc','101'),
('xyz','102'),
('Manish','103'),
('Nilesh','104'),
('Manish','105'),
('sachin','114'),
('sachin','114'),
(NULL,NULL),
(NULL,NULL),
(NULL,NULL),
('Chetan','112'),
(NULL,NULL),
('ABC','124'),
(NULL,NULL);

/*Table structure for table `userinfo1` */

DROP TABLE IF EXISTS `userinfo1`;

CREATE TABLE `userinfo1` (
  `username` text,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `userinfo1` */

insert  into `userinfo1`(`username`,`password`) values 
('Manish','103'),
('Sachin','104'),
('hhh','hhh'),
('Sachin','105'),
('shubham','115'),
('Satish','@125'),
('Manish','103'),
('Aditya','115');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
