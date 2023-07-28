-- --------------------------------------------------------
-- 호스트:                          127.0.0.1
-- 서버 버전:                        11.2.0-MariaDB - mariadb.org binary distribution
-- 서버 OS:                        Win64
-- HeidiSQL 버전:                  12.3.0.6589
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- test 데이터베이스 구조 내보내기
CREATE DATABASE IF NOT EXISTS `test` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `test`;

-- 테이블 test.board 구조 내보내기
CREATE TABLE IF NOT EXISTS `board` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '식별번호',
  `id` varchar(50) NOT NULL COMMENT '아이디',
  `pw` varchar(50) NOT NULL COMMENT '비밀번호',
  PRIMARY KEY (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 test.board:~8 rows (대략적) 내보내기
INSERT INTO `board` (`uid`, `id`, `pw`) VALUES
	(1, 'abc', 'def'),
	(2, 'abc', 'dddd'),
	(3, 'abc', 'hhh'),
	(4, '33214', 'asdad'),
	(5, '12333', '12333'),
	(6, 'aasd', 'asdasd'),
	(7, 'ë§íë°©', 'asd1112'),
	(8, '한글', 'jhgjgj'),
	(9, 'asd', 'asd');

-- 테이블 test.write_board 구조 내보내기
CREATE TABLE IF NOT EXISTS `write_board` (
  `b_Id` int(11) NOT NULL AUTO_INCREMENT,
  `b_Title` varchar(255) NOT NULL,
  `b_Detail` varchar(255) NOT NULL,
  `b_Regdate` datetime NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`b_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- 테이블 데이터 test.write_board:~19 rows (대략적) 내보내기
INSERT INTO `write_board` (`b_Id`, `b_Title`, `b_Detail`, `b_Regdate`) VALUES
	(1, 'abc', 'def', '2023-07-18 11:12:42'),
	(2, 'ê¸ì ëª©ìëë¤', 'ë´ì©ìëë¤', '2023-07-18 12:15:53'),
	(3, 'ì¤ëì ë ì¨', 'ë¹ê° ë§ì´ ì´', '2023-07-18 12:33:00'),
	(4, '오늘의 날씨', '비가 많이 옴', '2023-07-18 12:33:52'),
	(5, '값', '3000원', '2023-07-18 17:48:31'),
	(6, '', '', '2023-07-19 10:31:27'),
	(7, '', '', '2023-07-19 10:54:53'),
	(8, '제목', '내용', '2023-07-20 10:21:08'),
	(9, '1113', '1113', '2023-07-21 13:15:51'),
	(10, '', '', '2023-07-25 11:25:32'),
	(11, '', '', '2023-07-25 11:25:32'),
	(12, '', '', '2023-07-25 11:31:26'),
	(13, '', '', '2023-07-25 12:13:30'),
	(14, '', '', '2023-07-25 12:27:43'),
	(15, '', '', '2023-07-25 12:27:43'),
	(16, 'ss', '<p>asd</p>', '2023-07-27 13:01:30'),
	(17, '안녕하세ㅛㅇ', '<p><strong>ㄴㅇㄹㄴㅇㄹㄴㅇ<em>ㄴㅇㄹㄴㅇㄹㄴㅇㄹ</em></strong></p><p><br></p><p><em>ㄴㅇㄹㄴㅇㄹㄴㅇㄹ</em></p>', '2023-07-27 13:06:57'),
	(18, '', '<p><br></p>', '2023-07-28 12:22:36'),
	(19, '', '<p><br></p>', '2023-07-28 12:55:56'),
	(20, '', '<p><br></p>', '2023-07-28 15:38:51');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
