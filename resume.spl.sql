-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        11.3.2-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.7.0.6850
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- resume 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `resume` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `resume`;

-- 테이블 resume.certification_form 구조 내보내기
CREATE TABLE IF NOT EXISTS `certification_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `issue_date` varchar(255) DEFAULT NULL,
  `issuing_organization` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK72j1gjuyvhurkybmmxmannrhn` (`user_id`),
  CONSTRAINT `FK72j1gjuyvhurkybmmxmannrhn` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 resume.certification_form:~1 rows (대략적) 내보내기
INSERT IGNORE INTO `certification_form` (`id`, `issue_date`, `issuing_organization`, `name`, `user_id`) VALUES
	(12, '', '', '', 17);

-- 테이블 resume.education_form 구조 내보내기
CREATE TABLE IF NOT EXISTS `education_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `degree` varchar(255) DEFAULT NULL,
  `school` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `graduation_status` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKmyikrjki7n94ag50sour5m15c` (`user_id`),
  CONSTRAINT `FKmyikrjki7n94ag50sour5m15c` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 resume.education_form:~1 rows (대략적) 내보내기
INSERT IGNORE INTO `education_form` (`id`, `degree`, `school`, `start_date`, `user_id`, `end_date`, `graduation_status`) VALUES
	(12, '', '', NULL, 17, NULL, '');

-- 테이블 resume.experience_form 구조 내보내기
CREATE TABLE IF NOT EXISTS `experience_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `company` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `employment_status` varchar(255) DEFAULT NULL,
  `end_date` varchar(255) DEFAULT NULL,
  `position` varchar(255) DEFAULT NULL,
  `role` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKbhkub0ktsl3n394saevxam8at` (`user_id`),
  CONSTRAINT `FKbhkub0ktsl3n394saevxam8at` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 resume.experience_form:~1 rows (대략적) 내보내기
INSERT IGNORE INTO `experience_form` (`id`, `company`, `description`, `employment_status`, `end_date`, `position`, `role`, `start_date`, `user_id`) VALUES
	(12, '', '', '', NULL, '', '', NULL, 17);

-- 테이블 resume.high_school_form 구조 내보내기
CREATE TABLE IF NOT EXISTS `high_school_form` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `end_date` varchar(255) DEFAULT NULL,
  `graduation_status` varchar(255) DEFAULT NULL,
  `major_field` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_date` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKn93l33eu8n952sdva3bueghmg` (`user_id`),
  CONSTRAINT `FKn93l33eu8n952sdva3bueghmg` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 resume.high_school_form:~1 rows (대략적) 내보내기
INSERT IGNORE INTO `high_school_form` (`id`, `end_date`, `graduation_status`, `major_field`, `name`, `start_date`, `user_id`) VALUES
	(12, NULL, '', '', '', NULL, 17);

-- 테이블 resume.max_length_input 구조 내보내기
CREATE TABLE IF NOT EXISTS `max_length_input` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `max_chars` varchar(255) DEFAULT NULL,
  `text` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK8h30xva9p69jqj7xj418x03mq` (`user_id`),
  CONSTRAINT `FK8h30xva9p69jqj7xj418x03mq` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 resume.max_length_input:~1 rows (대략적) 내보내기
INSERT IGNORE INTO `max_length_input` (`id`, `max_chars`, `text`, `title`, `user_id`) VALUES
	(12, '1000', '', '', 17);

-- 테이블 resume.user 구조 내보내기
CREATE TABLE IF NOT EXISTS `user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 resume.user:~2 rows (대략적) 내보내기
INSERT IGNORE INTO `user` (`id`, `email`, `name`, `password`) VALUES
	(17, 'a@a.com', '황띠', 'asd'),
	(33, 'asd@a.com', 'fw', 'asd');

-- 테이블 resume.user_info 구조 내보내기
CREATE TABLE IF NOT EXISTS `user_info` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `address` varchar(255) DEFAULT NULL,
  `detailed_address` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `profile_image_path` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK2mhstydh1kbm821up1eluakhw` (`user_id`),
  CONSTRAINT `FK2mhstydh1kbm821up1eluakhw` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 resume.user_info:~1 rows (대략적) 내보내기
INSERT IGNORE INTO `user_info` (`id`, `address`, `detailed_address`, `email`, `name`, `phone`, `user_id`, `profile_image_path`) VALUES
	(34, '', '', '', '', '', 17, NULL);

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
