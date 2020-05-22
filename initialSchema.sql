create database dew_training_db;
use dew_training_db;

CREATE TABLE `application_properties` (
  `application_property_id` int(11) NOT NULL AUTO_INCREMENT,
  `property_name` varchar(45) NOT NULL,
  `property_value` varchar(500) NOT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`application_property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `users` (
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `gender` tinyint(1) NOT NULL,
  `DOB` date NOT NULL,
  `mobile` varchar(20) DEFAULT NULL,
  `is_active` bit(1) NOT NULL DEFAULT b'1',
  `address` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(50) NOT NULL,
  `pincode` varchar(6) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `user_type` int(11) DEFAULT NULL,
  `created_on` datetime NOT NULL,
  `created_by` varchar(30) NOT NULL,
  `modified_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `modified_by` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


CREATE TABLE `user_profile` (
	`user_profile_id` int(20) NOT NULL AUTO_INCREMENT,
	`user_id` int(10) NOT NULL,
	`course_name` varchar(10) NOT NULL,
    `course_specialization` varchar(30) NOT NULL,
	`course_year` int NOT NULL,
    `education_type` varchar(100) NOT NULL,
    `course_marks` int NOT NULL,
    `college` varchar(100) NOT NULL,
    `board_name_1` varchar(20) NOT NULL,
    `board_marks_1` int NOT NULL,
    `board_year_1` int NOT NULL,
    `board_medium_1` varchar(20) NOT NULL,
    `board_name_2` varchar(20) NOT NULL,
    `board_marks_2` int NOT NULL,
    `board_year_2` int NOT NULL,
    `board_medium_2` varchar(20) NOT NULL,
	`work_preference` tinyint(1) NOT NULL,
    `start_time` tinyint(1) NOT NULL,
    `location` varchar(50) NOT NULL,
    `company_name` varchar(50) ,
    `start_date` varchar(10),
    `end_date` varchar(10),
    `project_details` varchar(1000),
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
    PRIMARY KEY (`user_profile_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;

    
    CREATE TABLE `job_profile` (
	`job_profile_id` int(20) NOT NULL AUTO_INCREMENT,
	`user_id` int(10) NOT NULL,
    `bio` varchar(200) NOT NULL,
    `industry` varchar(50) NOT NULL,
    `functional_area` varchar(50) NOT NULL,
    `role` varchar(50) NOT NULL,
    `work_location` varchar(50) NOT NULL,
    `job_type` tinyint(1) NOT NULL,
    `employ_type` tinyint(1) NOT NULL,
    `skills` varchar(200) NOT NULL,
    `marital` varchar(10) NOT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
    PRIMARY KEY (`job_profile_id`)
    ) ENGINE=InnoDB DEFAULT CHARSET=utf8;
    