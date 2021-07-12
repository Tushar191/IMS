-- MySQL dump 10.13  Distrib 5.1.33, for Win32 (ia32)
--
-- Host: localhost    Database: institute
-- ------------------------------------------------------
-- Server version	5.1.33-community

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `courses`
--

DROP TABLE IF EXISTS `courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `courses` (
  `course_id` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(30) NOT NULL,
  `eligibility` varchar(45) NOT NULL,
  `fee` int(6) NOT NULL,
  `duration` varchar(20) NOT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `courses`
--

LOCK TABLES `courses` WRITE;
/*!40000 ALTER TABLE `courses` DISABLE KEYS */;
INSERT INTO `courses` VALUES ('C-501','Linux','12th',10000,'60hrs.'),('C-502','Core Java','Knowledge of OOPs',10000,'60hrs.'),('C-503','Advance Java','Knowledge of HTML and OOPS',13000,'60hrs.'),('C-504','C++','12th',10000,'60hrs.'),('C-505','PHP','12th',11000,'60hrs.'),('C-506','Python','Knowledge of OOps',12000,'60hrs.'),('C-507','Web Desigining','12th',15000,'60hrs.'),('C-508','Android','Knowledge of java',16000,'60hrs.');
/*!40000 ALTER TABLE `courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datesheet`
--

DROP TABLE IF EXISTS `datesheet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `datesheet` (
  `course_id` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(30) NOT NULL,
  `date` date DEFAULT NULL,
  `time` varchar(16) DEFAULT NULL,
  `centre` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datesheet`
--

LOCK TABLES `datesheet` WRITE;
/*!40000 ALTER TABLE `datesheet` DISABLE KEYS */;
INSERT INTO `datesheet` VALUES ('C-501','Linux','2020-07-22','11:00AM','Hindu Institute of Management, Sonipat'),('C-502','Core Java','2020-07-23','11:00AM','Chandigarh University,Mohali'),('C-503','Advance Java','2020-07-24','11:00AM','Panipat Institute of Engineering and Technology,Panipat'),('C-504','C++','2020-07-28','9:00 A.m','Kurukshetra Univesity,Kurukshetra');
/*!40000 ALTER TABLE `datesheet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fee`
--

DROP TABLE IF EXISTS `fee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fee` (
  `student_id` varchar(10) NOT NULL DEFAULT '',
  `student_name` varchar(35) NOT NULL,
  `father_name` varchar(35) NOT NULL,
  `class` varchar(15) NOT NULL,
  `amount` int(7) NOT NULL,
  `date` date DEFAULT NULL,
  `amount_left` varchar(15) DEFAULT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fee`
--

LOCK TABLES `fee` WRITE;
/*!40000 ALTER TABLE `fee` DISABLE KEYS */;
INSERT INTO `fee` VALUES ('101','Tushar','Jaipal','Core java',10000,'2020-02-21','4000'),('102','Naman','Kuldeep','Core Java',8000,'2020-02-28','2000'),('108','Priyanka','Jaipal','Linux',8000,'2020-05-21','2000'),('109','Rajat','Pardeep','Linux',8000,'2020-05-21','2000');
/*!40000 ALTER TABLE `fee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `student_id` varchar(10) NOT NULL DEFAULT '',
  `student_name` varchar(30) NOT NULL,
  `father_name` varchar(30) DEFAULT NULL,
  `sex` varchar(8) NOT NULL,
  `dob` date DEFAULT NULL,
  `city` varchar(20) NOT NULL,
  `phone` int(12) NOT NULL,
  `qualification` varchar(10) NOT NULL,
  `course_name` varchar(30) NOT NULL,
  `nationality` varchar(12) NOT NULL,
  `category` varchar(10) NOT NULL,
  `caste` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`student_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES ('101','Tushar','Jaipal','male','1998-11-19','Sonipat',999111814,'12th','Core java','Indian','OBC','saini','tus@123'),('102','Naman','Pawan','Male','1996-06-03','Delhi',9092992,'Btech.','Core Java','Indian','General','Khatri','nam@123'),('103','Nisha','Anil Verma','female','1999-07-10','Sonipat',87899322,'Bsc.','Core Java','Indian','OBC','Verma','nis@123'),('104','Puneet','Pardeep','Male','1994-09-22','Sonipat',87899322,'BCA','Core Java','Indian','SC','Ghalyan','pun@123'),('105','Aman','Gobind','male','1999-03-09','sonipat',740439734,'BCA','Core java','Indian','General','chandna','ama@123'),('106','Akshay','Bijendar','male','1998-04-17','Delhi',930839332,'12th','Linux','Indian','General','sharma','aks@123'),('107','Chanchal','Ravi','female','1998-05-12','Delhi',9394393,'Btech.','Python','Indian','General','Nandal','cha@123'),('108','Priyanka','Jaipal','Female','1996-09-16','Delhi',96434374,'MCA','Python','Indian','OBC','Saini','pri@123'),('109','Rajat','Pardeep','male','1996-11-27','Panipat',9838383,'Bsc.','Linux','Indian','General','Chaudhary','raj@123');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teachers`
--

DROP TABLE IF EXISTS `teachers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teachers` (
  `teacher_id` varchar(10) NOT NULL DEFAULT '',
  `teacher_name` varchar(30) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `location` varchar(20) NOT NULL,
  `contact` int(12) NOT NULL,
  `qualification` varchar(20) DEFAULT NULL,
  `experienced` varchar(15) NOT NULL,
  `salary` int(8) NOT NULL,
  `password` varchar(20) NOT NULL,
  PRIMARY KEY (`teacher_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teachers`
--

LOCK TABLES `teachers` WRITE;
/*!40000 ALTER TABLE `teachers` DISABLE KEYS */;
INSERT INTO `teachers` VALUES ('T101','Charu','1989-04-20','Sonipat',9565547,'MCA','15yrs.',43000,'cha@123'),('T102','Aruna','1989-02-18','Sonipat',8458666,'Btech./MCA','10yrs.',35000,'aru@123'),('T103','Vaishali','1995-06-16','Delhi',78903382,'Btech.+MBA','3yrs.',32000,'vai@123'),('T104','Naveen','1995-08-28','Delhi',93839933,'Btech.','4yrs.',33000,'nav@123'),('T105','Sadia','1989-08-11','Noida',78763723,'Btech+MBA','4yrs.',36000,'sad@123'),('T106','Rahul','1988-08-10','Gurugram',99876522,'Btech.','7yrs.',42000,'rah@123'),('T107','Ajay','1992-05-14','Sonipat',87878775,'MCA','10yrs.',34000,'aja@123');
/*!40000 ALTER TABLE `teachers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `timetable`
--

DROP TABLE IF EXISTS `timetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `timetable` (
  `course_id` varchar(10) NOT NULL DEFAULT '',
  `course_name` varchar(20) DEFAULT NULL,
  `day` varchar(80) DEFAULT NULL,
  `time` varchar(30) DEFAULT NULL,
  `teacher_name` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `timetable`
--

LOCK TABLES `timetable` WRITE;
/*!40000 ALTER TABLE `timetable` DISABLE KEYS */;
INSERT INTO `timetable` VALUES ('C-501','Linux','Monday Tuesday Wednesday Thursday Friday ','12:00PM','Sadia'),('C-502','core java','Monday Wednesday Friday ','12:00AM','Aruna Kapoor'),('C-503','Advance java','Wednesday Thursday Friday ','10:00AM','Rahul '),('C-504','C++','Monday Tuesday Thursday Friday ','11:00AM','Charu');
/*!40000 ALTER TABLE `timetable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-05-22  6:57:09
