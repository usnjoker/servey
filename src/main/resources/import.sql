# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.19)
# Database: servey
# Generation Time: 2014-12-02 03:50:56 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table objective_item
# ------------------------------------------------------------

DROP TABLE IF EXISTS objective_item;

CREATE TABLE objective_item (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  question_id bigint(20) DEFAULT NULL,
  item_name varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (id),
  KEY FK_5twrjx94g66vwhs0mhn6dmnrm (question_id),
  CONSTRAINT FK_5twrjx94g66vwhs0mhn6dmnrm FOREIGN KEY (question_id) REFERENCES question (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES objective_item WRITE;
/*!40000 ALTER TABLE objective_item DISABLE KEYS */;

INSERT INTO objective_item (id, question_id, item_name)
VALUES
	(3,2,'디자인'),
	(4,2,'성능'),
	(5,2,'가격'),
	(6,2,'브랜드'),
	(7,2,'AS'),
	(8,3,'TV 광고'),
	(9,3,'신문 광고'),
	(10,3,'잡지 광고'),
	(11,3,'인터넷 광고'),
	(12,3,'지하철, 버스 광고'),
	(13,3,'기타'),
	(14,4,'판매원의 권유'),
	(15,4,'신문 기사'),
	(16,4,'TV방송에 등장'),
	(17,4,'유명 유저 사용기'),
	(18,4,'지인의 추천'),
	(19,4,'기타'),
	(20,5,'전자상가'),
	(21,5,'양판점(하이마트 등)'),
	(22,5,'TV 홈쇼핑'),
	(23,5,'인터넷 쇼핑몰'),
	(24,5,'백화점'),
	(25,5,'기타'),
	(26,6,'사은품 증정'),
	(27,6,'경품 이벤트'),
	(28,6,'5%~10% 가격할인'),
	(29,6,'적립금'),
	(30,6,'기타'),
	(31,7,'문서 작성'),
	(32,7,'인터넷'),
	(33,7,'게임'),
	(34,7,'그래픽 작업'),
	(35,7,'프리젠테이션'),
	(36,7,'기타'),
	(37,8,'크기'),
	(38,8,'무게'),
	(39,8,'배터리 지속시간'),
	(40,8,'용량'),
	(41,8,'속도'),
	(42,8,'디자인'),
	(43,8,'견고함'),
	(44,8,'AS'),
	(45,8,'기타'),
	(46,9,'네임 플레이트(개인의 이니셜을 메탈로 새겨주는 서비스)'),
	(47,9,'내가 지정한 색상의 노트북'),
	(48,9,'액세서리 부착(핸드폰 고리와 같은 장식)'),
	(49,9,'기타'),
	(50,10,'최신 제품의 전시장'),
	(51,10,'편안한 소파가 있는 쉼터'),
	(52,10,'AS센터와 상담원 연계'),
	(53,10,'기타'),
	(54,11,'처리 속도'),
	(55,11,'AS비용'),
	(56,11,'친절도'),
	(57,11,'수리센터의 접근성'),
	(58,11,'보증기간'),
	(59,11,'기타'),
	(60,12,'픽업 서비스 (AS 방문 서비스)'),
	(61,12,'지정 서비스맨의 주기적인 관리와 AS'),
	(62,12,'AS 특화 회사와 연계 (예: 컴닥터 911)'),
	(63,12,'기타');

/*!40000 ALTER TABLE objective_item ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table question
# ------------------------------------------------------------

DROP TABLE IF EXISTS question;

CREATE TABLE question (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  type varchar(50) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'OBJECTIVE_SINGLE',
  question varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  ordering int(11) NOT NULL,
  visible bit(1) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES question WRITE;
/*!40000 ALTER TABLE question DISABLE KEYS */;

INSERT INTO question (id, type, question, ordering, visible)
VALUES
	(2,'OBJECTIVE_SINGLE','노트북을 구매하신다면 어떤 요소를 고려하여 구매하실 예정이신가요?',0,00000000),
	(3,'OBJECTIVE_MULTIPLE','노트북에 관한 정보를 얻게 되는 경로는 무엇입니까? (다중 선택 가능)',1,00000000),
	(4,'OBJECTIVE_SINGLE','노트북 구매에 가장 영향을 미치는 외부적 요소는 무엇입니까?',2,00000000),
	(5,'OBJECTIVE_SINGLE','만약 노트북을 구매한다면 어떤 경로를 통해 구매하시겠습니까?',3,00000000),
	(6,'OBJECTIVE_SINGLE','제품을 구매하실 때 어떤 판매방식이 구매에 가장 영향을 미칩니까?',4,00000000),
	(7,'OBJECTIVE_MULTIPLE','노트북을 구매하신다면 어떤 기능을 주로 사용하실 건가요? (다중 선택 가능)',5,00000000),
	(8,'OBJECTIVE_MULTIPLE','노트북을 구매하신다면 상대적으로 어떤 기능이나 서비스가 필요할까요? (다중 선택 가능)',6,00000000),
	(9,'OBJECTIVE_SINGLE','노트북을 나만의 노트북으로 차별화하기 위해서 다음 중 어떤 것을 선호하시나요?',7,00000000),
	(10,'OBJECTIVE_SINGLE','노트북 체험관이 생긴다면, 어떤 컨셉의 체험관이 좋을까요?',8,00000000),
	(11,'OBJECTIVE_SINGLE','AS에서 가장 중요한 요소는 무엇이라고 생각하십니까?',9,00000000),
	(12,'OBJECTIVE_SINGLE','노트북 AS가 어떤 방안으로 개선되면 좋을까요?',10,00000000),
	(13,'SUBJECTIVE','그 밖에 이상적이라고 생각하는 노트북이 있다면 적어주세요.',11,00000000);

/*!40000 ALTER TABLE question ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table servey
# ------------------------------------------------------------

DROP TABLE IF EXISTS servey;

CREATE TABLE servey (
  id bigint(20) NOT NULL AUTO_INCREMENT,
  name varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  duration bigint(20) NOT NULL,
  answer varchar(255) CHARACTER SET utf8mb4 NOT NULL,
  created_at datetime DEFAULT NULL,
  created_by varchar(50) CHARACTER SET utf8mb4 DEFAULT NULL,
  hp varchar(255) CHARACTER SET utf8mb4 DEFAULT NULL,
  question_id bigint(20) NOT NULL,
  PRIMARY KEY (id),
  KEY FK_p7edgtxclk402xd79s2g57ibn (question_id),
  CONSTRAINT FK_p7edgtxclk402xd79s2g57ibn FOREIGN KEY (question_id) REFERENCES question (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

LOCK TABLES servey WRITE;
/*!40000 ALTER TABLE servey DISABLE KEYS */;

/*!40000 ALTER TABLE servey ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
